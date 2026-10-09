Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pml_ob1_comm?download=true
inline.NumInlined: 32
inline.NumDeleted: 15
begin_hunk_0_@mca_pml_ob1_comm_proc_construct:bb.a

; Function Attrs: nounwind uwtable
define internal void @mca_pml_ob1_comm_proc_destruct(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.f = phi ptr [ %i.h, %.lr.ph.i ], [ %i.e, %bb.a ]
  %.07.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.d, %bb.a ]
  tail call void %i.f(ptr noundef nonnull %i.a) #7, !inline_history !2
  %i.g = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %.not6.i7 = icmp eq ptr %i.m, null
  br i1 %.not6.i7, label %opal_obj_run_destructors.exit11, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %opal_obj_run_destructors.exit, %.lr.ph.i8
  %i.n = phi ptr [ %i.p, %.lr.ph.i8 ], [ %i.m, %opal_obj_run_destructors.exit ]
  %.07.i9 = phi ptr [ %i.o, %.lr.ph.i8 ], [ %i.l, %opal_obj_run_destructors.exit ]
  tail call void %i.n(ptr noundef nonnull %i.i) #7, !inline_history !2
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i9, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33   ; 2 uses
  %.not.i10 = icmp eq ptr %i.p, null
  br i1 %.not.i10, label %opal_obj_run_destructors.exit11, label %.lr.ph.i8, !llvm.loop !3

opal_obj_run_destructors.exit11:                  ; preds = %.lr.ph.i8, %opal_obj_run_destructors.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %opal_obj_run_destructors.exit11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load i8, ptr @opal_uses_threads, align 1, !tbaa !37, !range !38, !noundef !39
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.v = atomicrmw volatile add ptr %i.s, i32 -1 monotonic, align 4
  %i.w = add i32 %i.v, -1
  br label %opal_thread_add_fetch_32.exit

bb.d:                                             ; preds = %bb.b
  %i.x = load volatile i32, ptr %i.s, align 4, !tbaa !25
  %i.y = add nsw i32 %i.x, -1
  store volatile i32 %i.y, ptr %i.s, align 4, !tbaa !25
  %i.z = load volatile i32, ptr %i.s, align 4, !tbaa !25
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.w, %bb.c ], [ %i.z, %bb.d ]
  %i.aa = icmp eq i32 %.0.i, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !23  ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33 ; 2 uses
  %.not6.i12 = icmp eq ptr %i.af, null
  br i1 %.not6.i12, label %opal_obj_run_destructors.exit16, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.e, %.lr.ph.i13
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i13 ], [ %i.af, %bb.e ]
  %.07.i14 = phi ptr [ %i.ah, %.lr.ph.i13 ], [ %i.ae, %bb.e ]
  tail call void %i.ag(ptr noundef nonnull %i.ab) #7, !inline_history !2
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i14, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 2 uses
  %.not.i15 = icmp eq ptr %i.ai, null
  br i1 %.not.i15, label %opal_obj_run_destructors.exit16.loopexit, label %.lr.ph.i13, !llvm.loop !3

opal_obj_run_destructors.exit16.loopexit:         ; preds = %.lr.ph.i13
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !23
  br label %opal_obj_run_destructors.exit16

opal_obj_run_destructors.exit16:                  ; preds = %opal_obj_run_destructors.exit16.loopexit, %bb.e
  %i.aj = phi ptr [ %.pre, %opal_obj_run_destructors.exit16.loopexit ], [ %i.ab, %bb.e ]
  tail call void @free(ptr noundef %i.aj) #7
  store ptr null, ptr %i.q, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %opal_obj_run_destructors.exit16, %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mca_pml_ob1_comm_construct(ptr noundef initializes((88, 96)) %0) #0 {
bb.a:
  %i.a = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !25
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 32), align 8, !tbaa !29
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_list_t_class) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr @opal_list_t_class, ptr %i.c, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store volatile i32 1, ptr %i.d, align 8, !tbaa !31
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 40), align 8, !tbaa !32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %.not6.i = icmp eq ptr %i.f, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %i.i, %.lr.ph.i ], [ %i.f, %bb.c ]
  %.07.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.e, %bb.c ]
  tail call void %i.g(ptr noundef nonnull %i.c) #7, !inline_history !0
  %i.h = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.c
  %i.j = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !25
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 32), align 8, !tbaa !29
  %.not13 = icmp eq i32 %i.j, %i.k
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %opal_obj_run_constructors.exit
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_mutex_t_class) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %opal_obj_run_constructors.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr @opal_mutex_t_class, ptr %i.l, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store volatile i32 1, ptr %i.m, align 8, !tbaa !31
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 40), align 8, !tbaa !32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %.not6.i15 = icmp eq ptr %i.o, null
  br i1 %.not6.i15, label %opal_obj_run_constructors.exit19, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.e, %.lr.ph.i16
  %i.p = phi ptr [ %i.r, %.lr.ph.i16 ], [ %i.o, %bb.e ]
  %.07.i17 = phi ptr [ %i.q, %.lr.ph.i16 ], [ %i.n, %bb.e ]
  tail call void %i.p(ptr noundef nonnull %i.l) #7, !inline_history !0
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i17, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33   ; 2 uses
  %.not.i18 = icmp eq ptr %i.r, null
  br i1 %.not.i18, label %opal_obj_run_constructors.exit19, label %.lr.ph.i16, !llvm.loop !1

opal_obj_run_constructors.exit19:                 ; preds = %.lr.ph.i16, %bb.e
  %i.s = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !25
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 32), align 8, !tbaa !29
  %.not14 = icmp eq i32 %i.s, %i.t
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %opal_obj_run_constructors.exit19
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_mutex_t_class) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %opal_obj_run_constructors.exit19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr @opal_mutex_t_class, ptr %i.u, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store volatile i32 1, ptr %i.v, align 8, !tbaa !31
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 40), align 8, !tbaa !32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33   ; 2 uses
  %.not6.i20 = icmp eq ptr %i.x, null
  br i1 %.not6.i20, label %opal_obj_run_constructors.exit24, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %bb.g, %.lr.ph.i21
  %i.y = phi ptr [ %i.aa, %.lr.ph.i21 ], [ %i.x, %bb.g ]
  %.07.i22 = phi ptr [ %i.z, %.lr.ph.i21 ], [ %i.w, %bb.g ]
  tail call void %i.y(ptr noundef nonnull %i.u) #7, !inline_history !0
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i22, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %.not.i23 = icmp eq ptr %i.aa, null
  br i1 %.not.i23, label %opal_obj_run_constructors.exit24, label %.lr.ph.i21, !llvm.loop !1

opal_obj_run_constructors.exit24:                 ; preds = %.lr.ph.i21, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store volatile i32 0, ptr %i.ab, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mca_pml_ob1_comm_destruct(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  %.not34 = icmp eq i64 %i.d, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre35 = load ptr, ptr %i.a, align 8, !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.e = phi ptr [ %.pre35, %._crit_edge.loopexit ], [ %i.b, %.preheader ]
  tail call void @free(ptr noundef %i.e) #7
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.033 = phi i64 [ %i.af, %bb.f ], [ 0, %.preheader ] ; 5 uses
  %1 = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.033 ; 2 uses
  %i.g = load volatile ptr, ptr %i.f, align 8, !tbaa !52
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load volatile ptr, ptr %i.f, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load i8, ptr @opal_uses_threads, align 1, !tbaa !37, !range !38, !noundef !39
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.i, i32 -1 monotonic, align 4
  %i.m = add i32 %i.l, -1
  br label %opal_thread_add_fetch_32.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load volatile i32, ptr %i.i, align 4, !tbaa !25
  %i.o = add nsw i32 %i.n, -1
  store volatile i32 %i.o, ptr %i.i, align 4, !tbaa !25
  %i.p = load volatile i32, ptr %i.i, align 4, !tbaa !25
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.m, %bb.c ], [ %i.p, %bb.d ]
  %i.q = icmp eq i32 %.0.i, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %opal_thread_add_fetch_32.exit
  %2 = load ptr, ptr %i.a, align 8, !tbaa !44     ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.033
  %i.s = load volatile ptr, ptr %i.r, align 8, !tbaa !52 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33   ; 2 uses
  %.not6.i = icmp eq ptr %i.w, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.x = phi ptr [ %i.z, %.lr.ph.i ], [ %i.w, %bb.e ]
  %.07.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.v, %bb.e ]
  tail call void %i.x(ptr noundef nonnull %i.s) #7, !inline_history !2
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33   ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !3

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre.a = load ptr, ptr %i.a, align 8, !tbaa !44
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.e
  %i.aa = phi ptr [ %.pre.a, %opal_obj_run_destructors.exit.loopexit ], [ %2, %bb.e ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.033
  %i.ac = load volatile ptr, ptr %i.ab, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.ac) #7
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.033
  store volatile ptr null, ptr %i.ae, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit
  %i.af = add nuw i64 %.033, 1                    ; 2 uses
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !45
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !50

bb.g:                                             ; preds = %bb.a, %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33 ; 2 uses
  %.not6.i18 = icmp eq ptr %i.am, null
  br i1 %.not6.i18, label %opal_obj_run_destructors.exit22, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.g, %.lr.ph.i19
  %i.an = phi ptr [ %i.ap, %.lr.ph.i19 ], [ %i.am, %bb.g ]
  %.07.i20 = phi ptr [ %i.ao, %.lr.ph.i19 ], [ %i.al, %bb.g ]
  tail call void %i.an(ptr noundef nonnull %i.ai) #7, !inline_history !2
  %i.ao = getelementptr inbounds nuw i8, ptr %.07.i20, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 2 uses
  %.not.i21 = icmp eq ptr %i.ap, null
  br i1 %.not.i21, label %opal_obj_run_destructors.exit22, label %.lr.ph.i19, !llvm.loop !3

opal_obj_run_destructors.exit22:                  ; preds = %.lr.ph.i19, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !35 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33 ; 2 uses
  %.not6.i23 = icmp eq ptr %i.au, null
  br i1 %.not6.i23, label %opal_obj_run_destructors.exit27, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %opal_obj_run_destructors.exit22, %.lr.ph.i24
  %i.av = phi ptr [ %i.ax, %.lr.ph.i24 ], [ %i.au, %opal_obj_run_destructors.exit22 ]
  %.07.i25 = phi ptr [ %i.aw, %.lr.ph.i24 ], [ %i.at, %opal_obj_run_destructors.exit22 ]
  tail call void %i.av(ptr noundef nonnull %i.aq) #7, !inline_history !2
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i25, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33 ; 2 uses
  %.not.i26 = icmp eq ptr %i.ax, null
  br i1 %.not.i26, label %opal_obj_run_destructors.exit27, label %.lr.ph.i24, !llvm.loop !3

opal_obj_run_destructors.exit27:                  ; preds = %.lr.ph.i24, %opal_obj_run_destructors.exit22
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !35 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !33 ; 2 uses
  %.not6.i28 = icmp eq ptr %i.bc, null
  br i1 %.not6.i28, label %opal_obj_run_destructors.exit32, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %opal_obj_run_destructors.exit27, %.lr.ph.i29
  %i.bd = phi ptr [ %i.bf, %.lr.ph.i29 ], [ %i.bc, %opal_obj_run_destructors.exit27 ]
  %.07.i30 = phi ptr [ %i.be, %.lr.ph.i29 ], [ %i.bb, %opal_obj_run_destructors.exit27 ]
  tail call void %i.bd(ptr noundef nonnull %i.ay) #7, !inline_history !2
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i30, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !33 ; 2 uses
  %.not.i31 = icmp eq ptr %i.bf, null
  br i1 %.not.i31, label %opal_obj_run_destructors.exit32, label %.lr.ph.i29, !llvm.loop !3

opal_obj_run_destructors.exit32:                  ; preds = %.lr.ph.i29, %opal_obj_run_destructors.exit27
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define range(i32 -2, 1) i32 @mca_pml_ob1_comm_init_size(ptr nofree noundef writeonly captures(none) initializes((216, 224)) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias ptr @calloc(i64 noundef %1, i64 noundef 8) #8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.a, ptr %i.b, align 8, !tbaa !44
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %1, ptr %i.d, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @mca_pml_ob1_peer_create(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1_comm_proc_t_class, i64 56), align 8, !tbaa !54
  %i.b = tail call noalias ptr @malloc(i64 noundef %i.a) #9 ; 15 uses
  %i.c = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !25
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1_comm_proc_t_class, i64 32), align 8, !tbaa !29
  %.not.i = icmp eq i32 %i.c, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opal_class_initialize(ptr noundef nonnull @mca_pml_ob1_comm_proc_t_class) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not9.i = icmp eq ptr %i.b, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @mca_pml_ob1_comm_proc_t_class, ptr %i.b, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store volatile i32 1, ptr %i.e, align 8, !tbaa !31
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1_comm_proc_t_class, i64 40), align 8, !tbaa !32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.g, null
  br i1 %.not6.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.h = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.g, %bb.d ]
  %.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.f, %bb.d ]
  tail call void %i.h(ptr noundef nonnull %i.b) #7, !inline_history !53
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_new.exit:                                ; preds = %.lr.ph.i.i, %bb.c, %bb.d
  %i.k = getelementptr i8, ptr %0, i64 272
  %.val = load ptr, ptr %i.k, align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.n = sext i32 %2 to i64                       ; 4 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !79   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 4 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %bb.e, label %ompi_comm_peer_lookup.exit, !prof !40

bb.e:                                             ; preds = %opal_obj_new.exit
  %i.s = lshr i64 %i.q, 1
  %i.t = and i64 %i.s, 32767
  %i.u = and i64 %i.q, -65536
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %i.t, %i.u
  %i.v = tail call ptr @ompi_proc_for_name(i64 %.sroa.0.0.insert.insert.i.i.i.i.i) #7 ; 5 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.n
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = cmpxchg volatile ptr %i.x, i64 %i.q, i64 %i.y acquire monotonic, align 8
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %bb.f, label %ompi_comm_peer_lookup.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.ac = load i8, ptr @opal_uses_threads, align 1, !tbaa !37, !range !38, !noundef !39
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %bb.h, !prof !40

bb.g:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.ab, i32 1 monotonic, align 4 ; 0 uses
  br label %ompi_comm_peer_lookup.exit

bb.h:                                             ; preds = %bb.f
  %i.af = load volatile i32, ptr %i.ab, align 4, !tbaa !25
  %i.ag = add nsw i32 %i.af, 1
  store volatile i32 %i.ag, ptr %i.ab, align 4, !tbaa !25
  %i.ah = load volatile i32, ptr %i.ab, align 4, !tbaa !25 ; 0 uses
  br label %ompi_comm_peer_lookup.exit

ompi_comm_peer_lookup.exit:                       ; preds = %opal_obj_new.exit, %bb.e, %bb.g, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.p, %opal_obj_new.exit ], [ %i.v, %bb.h ], [ %i.v, %bb.g ], [ %i.v, %bb.e ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.0.i.i.i.i, ptr %i.ai, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !80
  %i.al = and i32 %i.ak, 65536
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %ompi_comm_peer_lookup.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.an = load i32, ptr %i.am, align 8, !tbaa !81
  %i.ao = trunc i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %ompi_comm_peer_lookup.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 4 uses
  %i.ar = load i8, ptr @opal_uses_threads, align 1, !tbaa !37, !range !38, !noundef !39
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %bb.l, !prof !40

bb.k:                                             ; preds = %bb.j
  %i.at = atomicrmw volatile add ptr %i.aq, i32 1 monotonic, align 4 ; 0 uses
  fence release
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.n
  %i.ax = ptrtoint ptr %i.b to i64
  %i.ay = cmpxchg volatile ptr %i.aw, i64 0, i64 %i.ax acquire monotonic, align 8 ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %opal_thread_compare_exchange_strong_ptr.exit.thread, label %opal_thread_compare_exchange_strong_ptr.exit

bb.l:                                             ; preds = %bb.j
  %i.ba = load volatile i32, ptr %i.aq, align 4, !tbaa !25
  %i.bb = add nsw i32 %i.ba, 1
  store volatile i32 %i.bb, ptr %i.aq, align 4, !tbaa !25
  %i.bc = load volatile i32, ptr %i.aq, align 4, !tbaa !25 ; 0 uses
  fence release
end_hunk_0
