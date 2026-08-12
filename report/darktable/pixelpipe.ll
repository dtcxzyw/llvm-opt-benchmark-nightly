inline.NumInlined: 235
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 32
begin_hunk_0_@dt_dev_pixelpipe_create_nodes:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.at, i8 0, i64 40, i1 false)
  %i.au = load ptr, ptr %i.t, align 16, !tbaa !108
  tail call void @dt_iop_init_pipe(ptr noundef %i.au, ptr noundef nonnull %0, ptr noundef nonnull %i.t) #23
  %i.av = load ptr, ptr %i.d, align 16, !tbaa !218
  %i.aw = tail call ptr @g_list_append(ptr noundef %i.av, ptr noundef nonnull %i.t) #23
  store ptr %i.aw, ptr %i.d, align 16, !tbaa !218
  %i.ax = getelementptr inbounds nuw i8, ptr %.05563, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !248 ; 2 uses
  %.not61 = icmp eq ptr %i.ay, null
  br i1 %.not61, label %._crit_edge, label %bb.h
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

declare ptr @dt_ioppr_iop_order_copy_deep(ptr noundef) local_unnamed_addr #3

declare ptr @g_list_copy(ptr noundef) local_unnamed_addr #3

declare ptr @g_hash_table_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @g_direct_hash(ptr noundef) #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @g_direct_equal(ptr noundef, ptr noundef) #13

declare void @dt_iop_init_pipe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @dt_dev_pixelpipe_synch_all(ptr noundef %0, ptr nofree noundef captures(none) initializes((2496, 2504)) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %3 = alloca %struct.timeval, align 16           ; 4 uses
  %4 = alloca %struct.timeval, align 16           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !57
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit.thread, label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit.thread:                   ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2496
  store ptr null, ptr %i.d, align 16, !tbaa !249
  br label %bb.c

dt_get_debug_wtime.exit:                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.e = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #23 ; 0 uses
  %i.f = load <2 x i64>, ptr %4, align 16, !tbaa !28
  %i.g = add nsw <2 x i64> %i.f, <i64 -1290608000, i64 0>
  %i.h = sitofp <2 x i64> %i.g to <2 x double>    ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 1
  %i.j = fmul reassoc nnan nsz arcp contract afn double %i.i, f0x3EB0C6F7A0B5ED8D
  %i.k = extractelement <2 x double> %i.h, i64 0
  %i.l = fadd reassoc nsz arcp contract afn double %i.j, %i.k ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !57
  %i.m = and i32 %.pre, 2097152
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2496
  store ptr null, ptr %i.o, align 16, !tbaa !249
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %dt_get_debug_wtime.exit
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.73, ptr noundef nonnull %0, ptr noundef null, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74)
  br label %bb.c

bb.c:                                             ; preds = %dt_get_debug_wtime.exit.thread, %bb.b, %dt_get_debug_wtime.exit
  %i.p = phi double [ 0.000000e+00, %dt_get_debug_wtime.exit.thread ], [ %i.l, %bb.b ], [ %i.l, %dt_get_debug_wtime.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %.03441 = load ptr, ptr %i.q, align 8, !tbaa !105 ; 2 uses
  %.not3542 = icmp eq ptr %.03441, null
  br i1 %.not3542, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !57
  %.not.i38 = icmp eq i32 %i.r, 0
  br i1 %.not.i38, label %dt_get_debug_wtime.exit39.thread, label %dt_get_debug_wtime.exit39

dt_get_debug_wtime.exit39:                        ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.s = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #23 ; 0 uses
  %i.t = load <2 x i64>, ptr %3, align 16, !tbaa !28
  %i.u = add nsw <2 x i64> %i.t, <i64 -1290608000, i64 0>
  %i.v = sitofp <2 x i64> %i.u to <2 x double>    ; 2 uses
  %i.w = extractelement <2 x double> %i.v, i64 1
  %i.x = fmul reassoc nnan nsz arcp contract afn double %i.w, f0x3EB0C6F7A0B5ED8D
  %i.y = extractelement <2 x double> %i.v, i64 0
  %i.z = fadd reassoc nsz arcp contract afn double %i.x, %i.y ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.pre49 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !57
  %i.aa = and i32 %.pre49, 2097152
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %dt_get_debug_wtime.exit39.thread, label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.03443 = phi ptr [ %.034, %.lr.ph ], [ %.03441, %bb.c ] ; 2 uses
  %i.ac = load ptr, ptr %.03443, align 8, !tbaa !106 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  store i64 0, ptr %i.ad, align 8, !tbaa !245
  %i.ae = load ptr, ptr %i.ac, align 16, !tbaa !108 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 676
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !250
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i32 %i.ag, ptr %i.ah, align 16, !tbaa !126
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 688
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !251
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 776
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !252
  tail call void @dt_iop_commit_params(ptr noundef %i.ae, ptr noundef %i.aj, ptr noundef %i.al, ptr noundef nonnull %0, ptr noundef nonnull %i.ac) #23
  %i.am = getelementptr inbounds nuw i8, ptr %.03443, i64 8
  %.034 = load ptr, ptr %i.am, align 8, !tbaa !105 ; 2 uses
  %.not35 = icmp eq ptr %.034, null
  br i1 %.not35, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %dt_get_debug_wtime.exit39
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.75, ptr noundef nonnull %0, ptr noundef null, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74)
  br label %dt_get_debug_wtime.exit39.thread

dt_get_debug_wtime.exit39.thread:                 ; preds = %._crit_edge, %bb.d, %dt_get_debug_wtime.exit39
  %i.an = phi double [ %i.z, %dt_get_debug_wtime.exit39 ], [ %i.z, %bb.d ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !219 ; 2 uses
  %.not.i40 = icmp eq ptr %i.aq, null
  br i1 %.not.i40, label %bb.f, label %bb.e

bb.e:                                             ; preds = %dt_get_debug_wtime.exit39.thread
  tail call void @free(ptr noundef nonnull %i.aq) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %dt_get_debug_wtime.exit39.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ao, i8 0, i64 40, i1 false)
  %.011.i = load ptr, ptr %i.q, align 16, !tbaa !105 ; 2 uses
  %.not1012.i = icmp eq ptr %.011.i, null
  br i1 %.not1012.i, label %dt_dev_clear_scharr_mask.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.013.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.011.i, %bb.f ] ; 2 uses
  %i.ar = load ptr, ptr %.013.i, align 8, !tbaa !106 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 528 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !220
  tail call void @free(ptr noundef %i.at) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.as, i8 0, i64 48, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 576 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !221
  tail call void @free(ptr noundef %i.av) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.au, i8 0, i64 48, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %.0.i = load ptr, ptr %i.aw, align 8, !tbaa !105 ; 2 uses
  %.not10.i = icmp eq ptr %.0.i, null
  br i1 %.not10.i, label %dt_dev_clear_scharr_mask.exit, label %.lr.ph.i

dt_dev_clear_scharr_mask.exit:                    ; preds = %.lr.ph.i, %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 0, ptr %i.ax, align 8, !tbaa !101
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2048 ; 2 uses
  %.03344 = load ptr, ptr %i.ay, align 8, !tbaa !105 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 16, !tbaa !253
  %i.bb = icmp sgt i32 %i.ba, 0
  %i.bc = icmp ne ptr %.03344, null
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %.lr.ph47, label %._crit_edge48

._crit_edge48:                                    ; preds = %.lr.ph47, %dt_dev_clear_scharr_mask.exit
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !57
  %i.bf = and i32 %i.be, 2097152
  %.not37 = icmp eq i32 %i.bf, 0
  br i1 %.not37, label %bb.h, label %bb.g

.lr.ph47:                                         ; preds = %dt_dev_clear_scharr_mask.exit, %.lr.ph47
  %.03346 = phi ptr [ %.033, %.lr.ph47 ], [ %.03344, %dt_dev_clear_scharr_mask.exit ] ; 2 uses
  %.045 = phi i32 [ %i.bh, %.lr.ph47 ], [ 0, %dt_dev_clear_scharr_mask.exit ]
  %.033.val = load ptr, ptr %.03346, align 8, !tbaa !106
  tail call fastcc void @_dev_pixelpipe_synch(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.033.val)
  %i.bg = getelementptr inbounds nuw i8, ptr %.03346, i64 8
  %i.bh = add nuw nsw i32 %.045, 1                ; 2 uses
  %.033 = load ptr, ptr %i.bg, align 8, !tbaa !105 ; 2 uses
  %i.bi = load i32, ptr %i.az, align 16, !tbaa !253
  %i.bj = icmp slt i32 %i.bh, %i.bi
  %i.bk = icmp ne ptr %.033, null
  %i.bl = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %i.bl, label %.lr.ph47, label %._crit_edge48

bb.g:                                             ; preds = %._crit_edge48
  %i.bm = fsub reassoc nsz arcp contract afn double %i.an, %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bn = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #23 ; 0 uses
  %i.bo = load i64, ptr %2, align 8, !tbaa !254
  %i.bp = add nsw i64 %i.bo, -1290608000
  %i.bq = sitofp reassoc nsz arcp contract afn i64 %i.bp to double
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !256
  %i.bt = sitofp reassoc nsz arcp contract afn i64 %i.bs to double
  %i.bu = fmul reassoc nnan nsz arcp contract afn double %i.bt, f0x3EB0C6F7A0B5ED8D
  %5 = fadd reassoc nsz arcp contract afn double %i.bu, %i.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %6 = fsub reassoc nsz arcp contract afn double %5, %i.an
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.76, ptr noundef nonnull %0, ptr noundef null, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, double noundef %i.bm, double noundef %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge48
  %i.bv = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #23 ; 0 uses
  ret void
}

declare void @dt_iop_commit_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_dev_pixelpipe_synch(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.c = load i32, ptr %i.b, align 16, !tbaa !257
  %i.d = tail call i32 @dt_image_is_rawprepare_supported(ptr noundef nonnull %i.a) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.013 = load ptr, ptr %i.e, align 16, !tbaa !105 ; 2 uses
  %.not14 = icmp eq ptr %.013, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2496
  %i.h = icmp eq i32 %i.d, 0                      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2904
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ag, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.ag
  %.015 = phi ptr [ %.013, %.lr.ph ], [ %.0, %bb.ag ] ; 2 uses
  %i.m = load ptr, ptr %.015, align 8, !tbaa !106 ; 19 uses
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !108 ; 2 uses
  %i.o = load ptr, ptr %.0.val, align 8, !tbaa !258
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.f, align 8, !tbaa !260  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 10 uses
  store i32 %i.q, ptr %i.r, align 16, !tbaa !126
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !261
  %i.u = tail call i32 %i.t() #23
  %i.v = and i32 %i.u, 65536
  %.not84 = icmp eq i32 %i.v, 0
  br i1 %.not84, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not85 = icmp eq i32 %i.q, 0
  br i1 %.not85, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.m, align 16, !tbaa !108
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.w, %bb.e ], [ null, %bb.d ]
  store ptr %i.x, ptr %i.g, align 16, !tbaa !249
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.y = load ptr, ptr %i.m, align 16, !tbaa !108
  %i.z = getelementptr i8, ptr %i.y, i64 952
  %.val109 = load ptr, ptr %i.z, align 8, !tbaa !262
  %i.aa = getelementptr inbounds nuw i8, ptr %.val109, i64 496
  %i.ab = tail call i32 @g_strcmp0(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.125) #23
  %.not.i.not = icmp eq i32 %i.ab, 0
  br i1 %.not.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.m, align 16, !tbaa !108
  %i.ad = getelementptr i8, ptr %i.ac, i64 952
  %.val108 = load ptr, ptr %i.ad, align 8, !tbaa !262
  %i.ae = getelementptr inbounds nuw i8, ptr %.val108, i64 496
  %i.af = tail call i32 @g_strcmp0(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.126) #23
  %.not.i110.not = icmp eq i32 %i.af, 0
  br i1 %.not.i110.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = icmp ne i32 %i.q, 0                     ; 2 uses
  %or.cond = select i1 %i.h, i1 true, i1 %i.ag
  br i1 %or.cond, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %or.cond3 = select i1 %i.h, i1 %i.ag, i1 false
  br i1 %or.cond3, label %bb.k, label %thread-pre-split

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.r, align 16, !tbaa !126
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.m, align 16, !tbaa !108
  %i.ai = getelementptr i8, ptr %i.ah, i64 952
  %.val107 = load ptr, ptr %i.ai, align 8, !tbaa !262
  %i.aj = getelementptr inbounds nuw i8, ptr %.val107, i64 496
  %i.ak = tail call i32 @g_strcmp0(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.133) #23
  %.not.i111.not = icmp eq i32 %i.ak, 0
  br i1 %.not.i111.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.m, align 16, !tbaa !108
  %i.am = getelementptr i8, ptr %i.al, i64 952
  %.val106 = load ptr, ptr %i.am, align 8, !tbaa !262
  %i.an = getelementptr inbounds nuw i8, ptr %.val106, i64 496
  %i.ao = tail call i32 @g_strcmp0(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.134) #23
  %.not.i112.not = icmp eq i32 %i.ao, 0
  br i1 %.not.i112.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.m, align 16, !tbaa !108
  %i.aq = getelementptr i8, ptr %i.ap, i64 952
  %.val105 = load ptr, ptr %i.aq, align 8, !tbaa !262
  %i.ar = getelementptr inbounds nuw i8, ptr %.val105, i64 496
  %i.as = tail call i32 @g_strcmp0(ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.135) #23
  %.not.i113.not = icmp eq i32 %i.as, 0
  %i.at = icmp ne i32 %i.q, 0
  %i.au = select i1 %.not.i113.not, i1 %i.h, i1 false
  %or.cond16 = select i1 %i.au, i1 %i.at, i1 false
  br i1 %or.cond16, label %bb.p, label %thread-pre-split

bb.o:                                             ; preds = %bb.m, %bb.l
  %.old = icmp ne i32 %i.q, 0
  %or.cond5.old = select i1 %i.h, i1 %.old, i1 false
  br i1 %or.cond5.old, label %bb.p, label %thread-pre-split

bb.p:                                             ; preds = %bb.n, %bb.o
  store i32 0, ptr %i.r, align 16, !tbaa !126
  br label %bb.q

thread-pre-split:                                 ; preds = %bb.j, %bb.o, %bb.n
  %.pr = load i32, ptr %i.r, align 16, !tbaa !126
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split, %bb.p, %bb.k
  %i.av = phi i32 [ %.pr, %thread-pre-split ], [ 0, %bb.p ], [ 0, %bb.k ] ; 2 uses
  %i.aw = load i32, ptr %i.f, align 8, !tbaa !260
  %.not91 = icmp eq i32 %i.av, %i.aw
  br i1 %.not91, label %bb.t, label %bb.r

.thread:                                          ; preds = %bb.i
  store i32 1, ptr %i.r, align 16, !tbaa !126
  %i.ax = load i32, ptr %i.f, align 8, !tbaa !260
  %.not911 = icmp eq i32 %i.ax, 1
  br i1 %.not911, label %.thread10, label %.thread2

bb.r:                                             ; preds = %bb.q
  %.not92 = icmp eq i32 %i.av, 0                  ; 2 uses
  %spec.select = select i1 %.not92, ptr @.str.138, ptr @.str.136
  %spec.select24 = select i1 %.not92, ptr @.str.139, ptr @.str.137
  br label %.thread2

.thread2:                                         ; preds = %bb.r, %.thread
  %.str.136.sink = phi ptr [ %spec.select, %bb.r ], [ @.str.136, %.thread ]
  %.str.137.sink = phi ptr [ %spec.select24, %bb.r ], [ @.str.137, %.thread ]
  %i.ay = load ptr, ptr %i.m, align 16, !tbaa !108
  %i.az = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.136.sink, i32 noundef 5) #23
  %i.ba = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.137.sink, i32 noundef 5) #23
  tail call void @dt_iop_set_module_trouble_message(ptr noundef %i.ay, ptr noundef %i.az, ptr noundef %i.ba, ptr noundef null) #23
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !57
  %i.bc = and i32 %i.bb, 33554432
  %.not93 = icmp eq i32 %i.bc, 0
  br i1 %.not93, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread2
  %i.bd = load ptr, ptr %i.m, align 16, !tbaa !108
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !245
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.140, ptr noundef %0, ptr noundef %i.bd, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.141, i32 noundef %i.c, i64 noundef %i.bf)
  br label %bb.t

bb.t:                                             ; preds = %.thread2, %bb.s, %bb.q
  %.not94 = icmp eq i32 %i.q, 0
  br i1 %.not94, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = load i32, ptr %i.i, align 4, !tbaa !263
  %i.bh = icmp eq i32 %i.bg, 2147483647
  br i1 %i.bh, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.r, align 16, !tbaa !126
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !57
  %i.bj = and i32 %i.bi, 35651584
  %.not95 = icmp eq i32 %i.bj, 0
  br i1 %.not95, label %.thread8, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = load ptr, ptr %i.m, align 16, !tbaa !108
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.142, ptr noundef %0, ptr noundef %i.bk, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.143)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u, %bb.t
end_hunk_0
