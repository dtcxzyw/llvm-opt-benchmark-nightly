Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_log?download=true
inline.NumInlined: 50
inline.NumDeleted: 9
begin_hunk_0_@PMIx_Log:bb.a
bb.a:
  %4 = alloca %struct.pmix_cb_t, align 8          ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = load i32, ptr @pmix_globals, align 8, !tbaa !8
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_base_framework, i64 76), align 4, !tbaa !37 ; 3 uses
  %or.cond = icmp ult i32 %i.c, 64
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @pmix_util_print_name_args(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #12
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.c, ptr noundef nonnull @.str, ptr noundef %i.i) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.j = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !42
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_cb_t_class, i64 32), align 8, !tbaa !43
  %.not = icmp eq i32 %i.j, %i.k
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_cb_t_class) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store ptr @pmix_cb_t_class, ptr %i.l, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 1, ptr %i.m, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, i8 0, i64 64, i1 false)
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_cb_t_class, i64 40), align 8, !tbaa !47 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 2 uses
  %.not6.i = icmp eq ptr %i.p, null
  br i1 %.not6.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.q = phi ptr [ %i.s, %.lr.ph.i ], [ %i.p, %bb.g ]
  %.07.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.o, %bb.g ]
  call void %i.q(ptr noundef nonnull %4) #12, !inline_history !49
  %i.r = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !50

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.g
  %i.t = call i32 @PMIx_Log_nb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull @opcbfunc, ptr noundef nonnull %4) ; 3 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %pmix_obj_run_constructors.exit
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 400 ; 3 uses
  %i.w = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.v) #12 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 488 ; 2 uses
  %i.y = load volatile i8, ptr %i.x, align 8, !tbaa !52, !range !68, !noundef !69
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 440
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %i.ab = call i32 @pthread_cond_wait(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.v) #12 ; 0 uses
  %i.ac = load volatile i8, ptr %i.x, align 8, !tbaa !52, !range !68, !noundef !69
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.i, %bb.h
  fence acquire
  %i.ae = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.v) #12 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 500
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !71 ; 3 uses
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !72 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !48 ; 2 uses
  %.not6.i14 = icmp eq ptr %i.ak, null
  br i1 %.not6.i14, label %pmix_obj_run_destructors.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %._crit_edge, %.lr.ph.i15
  %i.al = phi ptr [ %i.an, %.lr.ph.i15 ], [ %i.ak, %._crit_edge ]
  %.07.i16 = phi ptr [ %i.am, %.lr.ph.i15 ], [ %i.aj, %._crit_edge ]
  call void %i.al(ptr noundef nonnull %4) #12, !inline_history !73
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i16, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48 ; 2 uses
  %.not.i17 = icmp eq ptr %i.an, null
  br i1 %.not.i17, label %pmix_obj_run_destructors.exit, label %.lr.ph.i15, !llvm.loop !74

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i15, %._crit_edge
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_base_framework, i64 76), align 4, !tbaa !37 ; 3 uses
  %or.cond3 = icmp ult i32 %i.ao, 64
  br i1 %or.cond3, label %bb.k, label %bb.m

bb.j:                                             ; preds = %pmix_obj_run_constructors.exit
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !72 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48 ; 2 uses
  %.not6.i18 = icmp eq ptr %i.as, null
  br i1 %.not6.i18, label %pmix_obj_run_destructors.exit22, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.j, %.lr.ph.i19
  %i.at = phi ptr [ %i.av, %.lr.ph.i19 ], [ %i.as, %bb.j ]
  %.07.i20 = phi ptr [ %i.au, %.lr.ph.i19 ], [ %i.ar, %bb.j ]
  call void %i.at(ptr noundef nonnull %4) #12, !inline_history !73
  %i.au = getelementptr inbounds nuw i8, ptr %.07.i20, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  %.not.i21 = icmp eq ptr %i.av, null
  br i1 %.not.i21, label %pmix_obj_run_destructors.exit22, label %.lr.ph.i19, !llvm.loop !74

pmix_obj_run_destructors.exit22:                  ; preds = %.lr.ph.i19, %bb.j
  %i.aw = icmp eq i32 %i.t, -157
  %spec.store.select = select i1 %i.aw, i32 0, i32 %i.t
  br label %bb.m

bb.k:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.ax = zext nneg i32 %i.ao to i64
  %i.ay = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !40
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ao, ptr noundef nonnull @.str.1) #12
  br label %bb.m

bb.m:                                             ; preds = %pmix_obj_run_destructors.exit, %bb.k, %bb.l, %bb.a, %pmix_obj_run_destructors.exit22
  %.0 = phi i32 [ %spec.store.select, %pmix_obj_run_destructors.exit22 ], [ -31, %bb.a ], [ %i.ag, %bb.l ], [ %i.ag, %bb.k ], [ %i.ag, %pmix_obj_run_destructors.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @pmix_util_print_name_args(ptr noundef) local_unnamed_addr #2

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @PMIx_Log_nb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !75
  store i64 %3, ptr %i.b, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i8 16, ptr %i.c, align 1, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i64 0, ptr %i.d, align 8, !tbaa !75
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 408), align 8, !tbaa !77 ; 3 uses
  %or.cond = icmp ult i32 %i.e, 64
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.e, ptr noundef nonnull @.str.3) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = load i32, ptr @pmix_globals, align 8, !tbaa !8
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.ej, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i64 %1, 0
  %i.n = icmp eq ptr %0, null
  %or.cond3 = or i1 %i.n, %i.m
  br i1 %or.cond3, label %bb.ej, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq ptr %2, null
  %.not394 = icmp eq i64 %3, 0
  %or.cond445 = or i1 %.not, %.not394
  br i1 %or.cond445, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.k
  %.0393 = phi i64 [ %i.y, %bb.k ], [ 0, %bb.f ]  ; 2 uses
  %.0213392 = phi ptr [ %.1, %bb.k ], [ null, %bb.f ] ; 3 uses
  %i.o = getelementptr inbounds nuw [552 x i8], ptr %2, i64 %.0393 ; 4 uses
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(16) @.str.4, i64 noundef 511) #13
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.r = tail call i32 @PMIx_Info_true(ptr noundef nonnull %i.o) #12
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i64 @time(ptr noundef null) #12
  store i64 %i.t, ptr %i.d, align 8, !tbaa !75
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph
  %i.u = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(16) @.str.2, i64 noundef 511) #13
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 528
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.j, %bb.i
  %.1 = phi ptr [ %.0213392, %bb.h ], [ %.0213392, %bb.g ], [ %i.x, %bb.j ], [ %.0213392, %bb.i ] ; 2 uses
  %i.y = add nuw i64 %.0393, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !78

.loopexit:                                        ; preds = %bb.k, %bb.f
  %.2 = phi ptr [ null, %bb.f ], [ %.1, %bb.k ]
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 328), align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !80
  %i.ac = and i32 %i.ab, 268435458
  %or.cond264 = icmp eq i32 %i.ac, 0
  br i1 %or.cond264, label %bb.l, label %bb.ef

bb.l:                                             ; preds = %.loopexit
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 1648), align 8, !tbaa !85, !range !68, !noundef !69
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.m, label %bb.ej

bb.m:                                             ; preds = %bb.l
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_shift_caddy_t_class, i64 56), align 8, !tbaa !86
  %i.ag = tail call noalias noundef ptr @malloc(i64 noundef %i.af) #14 ; 73 uses
  %i.ah = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !42
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_shift_caddy_t_class, i64 32), align 8, !tbaa !43
  %.not.i = icmp eq i32 %i.ah, %i.ai
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_shift_caddy_t_class) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not22.i = icmp eq ptr %i.ag, null
  br i1 %.not22.i, label %pmix_obj_new_tma.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.ag, ptr noundef null) #12 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr @pmix_shift_caddy_t_class, ptr %i.ak, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i32 1, ptr %i.al, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_shift_caddy_t_class, i64 40), align 8, !tbaa !47 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ap, null
  br i1 %.not6.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %i.aq = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.ap, %bb.p ]
  %.07.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.ao, %bb.p ]
  tail call void %i.aq(ptr noundef nonnull %i.ag) #12, !inline_history !87
  %i.ar = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i, !llvm.loop !50

pmix_obj_new_tma.exit:                            ; preds = %.lr.ph.i.i, %bb.o, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 648
  store ptr %4, ptr %i.at, align 8, !tbaa !76
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 656
  store ptr %5, ptr %i.au, align 8, !tbaa !88
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 56), align 8, !tbaa !86
  %i.aw = tail call noalias noundef ptr @malloc(i64 noundef %i.av) #14 ; 69 uses
  %i.ax = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !42
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 32), align 8, !tbaa !43
  %.not.i278 = icmp eq i32 %i.ax, %i.ay
  br i1 %.not.i278, label %bb.r, label %bb.q

bb.q:                                             ; preds = %pmix_obj_new_tma.exit
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_buffer_t_class) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %pmix_obj_new_tma.exit
  %.not22.i279 = icmp eq ptr %i.aw, null
  br i1 %.not22.i279, label %pmix_obj_new_tma.exit284, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.aw, ptr noundef null) #12 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr @pmix_buffer_t_class, ptr %i.ba, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store i32 1, ptr %i.bb, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 40), align 8, !tbaa !47 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48 ; 2 uses
  %.not6.i.i280 = icmp eq ptr %i.bf, null
  br i1 %.not6.i.i280, label %pmix_obj_new_tma.exit284, label %.lr.ph.i.i281

.lr.ph.i.i281:                                    ; preds = %bb.s, %.lr.ph.i.i281
  %i.bg = phi ptr [ %i.bi, %.lr.ph.i.i281 ], [ %i.bf, %bb.s ]
  %.07.i.i282 = phi ptr [ %i.bh, %.lr.ph.i.i281 ], [ %i.be, %bb.s ]
  tail call void %i.bg(ptr noundef nonnull %i.aw) #12, !inline_history !87
  %i.bh = getelementptr inbounds nuw i8, ptr %.07.i.i282, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not.i.i283 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i283, label %pmix_obj_new_tma.exit284, label %.lr.ph.i.i281, !llvm.loop !50

pmix_obj_new_tma.exit284:                         ; preds = %.lr.ph.i.i281, %bb.r, %bb.s
  %i.bj = load i32, ptr @pmix_bfrops_base_output, align 4, !tbaa !42 ; 3 uses
  %or.cond5 = icmp ult i32 %i.bj, 64
  br i1 %or.cond5, label %bb.t, label %bb.v

bb.t:                                             ; preds = %pmix_obj_new_tma.exit284
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !40
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bp = load ptr, ptr @pmix_client_globals, align 8, !tbaa !90
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !95
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 480
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !96
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !100
  %i.bv = tail call ptr @PMIx_Data_type_string(i16 noundef zeroext 34) #12
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.bj, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 209, ptr noundef %i.bu, ptr noundef %i.bv) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %pmix_obj_new_tma.exit284
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 120 ; 12 uses
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !102 ; 2 uses
  %i.by = icmp eq i8 %i.bx, 0
  %i.bz = load ptr, ptr @pmix_client_globals, align 8, !tbaa !90
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 120
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !95 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 472
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !103 ; 2 uses
  br i1 %i.by, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 %i.cd, ptr %i.bw, align 8, !tbaa !102
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ce = icmp eq i8 %i.bx, %i.cd
  br i1 %i.ce, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 480
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !96
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !104
  %i.cj = call i32 %i.ci(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.c, i32 noundef 1, i16 noundef zeroext 34) #12 ; 3 uses
  switch i32 %i.cj, label %.thread [
    i32 0, label %bb.aj
    i32 -2, label %bb.z
  ]

.thread:                                          ; preds = %bb.x, %bb.y
  %.0214367 = phi i32 [ %i.cj, %bb.y ], [ -22, %bb.x ] ; 2 uses
  %i.ck = call ptr @PMIx_Error_string(i32 noundef %.0214367) #12
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %i.ck, ptr noundef nonnull @.str.6, i32 noundef 211) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread
  %.0214368 = phi i32 [ %i.cj, %bb.y ], [ %.0214367, %.thread ] ; 3 uses
  %i.cl = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.aw) #12
  %i.cm = icmp eq i32 %i.cl, 35
  br i1 %i.cm, label %bb.aa, label %pmix_obj_update.exit277

bb.aa:                                            ; preds = %bb.z
  %i.cn = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.cn, align 4, !tbaa !42
  call void @perror(ptr noundef nonnull @.str.9) #16
  call void @abort() #17
  unreachable

pmix_obj_update.exit277:                          ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !46
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !46
  %i.cr = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.aw) #12 ; 0 uses
  %i.cs = icmp eq i32 %i.cq, 0
  br i1 %i.cs, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %pmix_obj_update.exit277
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !45
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !72 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !48 ; 2 uses
  %.not6.i = icmp eq ptr %i.cx, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %.lr.ph.i
  %i.cy = phi ptr [ %i.da, %.lr.ph.i ], [ %i.cx, %bb.ab ]
  %.07.i = phi ptr [ %i.cz, %.lr.ph.i ], [ %i.cw, %bb.ab ]
  call void %i.cy(ptr noundef nonnull %i.aw) #12, !inline_history !73
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !48 ; 2 uses
  %.not.i285 = icmp eq ptr %i.da, null
  br i1 %.not.i285, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !74

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !105 ; 2 uses
  %.not262 = icmp eq ptr %i.dc, null
end_hunk_0
