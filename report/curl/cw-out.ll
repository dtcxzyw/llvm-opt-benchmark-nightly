Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/cw-out?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
begin_hunk_0_@Curl_cw_out_done:bb.a
  %i.h = load i32, ptr %i.g, align 8, !tbaa !86
  %i.i = icmp sgt i32 %i.h, 0
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.k = icmp sgt i32 %i.j, 0
  %or.cond = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !86
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  tail call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %i.l = tail call i32 @Curl_cw_pause_flush(ptr noundef %0) #5 ; 2 uses
  %.not19 = icmp eq i32 %i.l, 0
  br i1 %.not19, label %bb.i, label %cw_out_flush.exit

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8               ; 2 uses
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %bb.j, label %cw_out_flush.exit

bb.j:                                             ; preds = %bb.i
  %i.p = and i8 %i.n, 1
  %.not13.i = icmp eq i8 %i.p, 0
  br i1 %.not13.i, label %bb.k, label %cw_out_flush.exit

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.r = tail call fastcc i32 @cw_out_flush_chain(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.q) ; 3 uses
  %.not14.i = icmp eq i32 %i.r, 0
  br i1 %.not14.i, label %cw_out_flush.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = load i8, ptr %i.m, align 8
  %i.t = or i8 %i.s, 2
  store i8 %i.t, ptr %i.m, align 8
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.u, null
  br i1 %.not5.i.i, label %cw_out_flush.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %i.v = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.u, %bb.l ] ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @curlx_dyn_free(ptr noundef nonnull %i.x) #5
  %i.y = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  tail call void %i.y(ptr noundef nonnull %i.v) #5, !inline_history !2
  store ptr %i.w, ptr %i.q, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %cw_out_flush.exit, label %.lr.ph.i.i, !llvm.loop !1

cw_out_flush.exit:                                ; preds = %.lr.ph.i.i, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.a
  %.0 = phi i32 [ %i.l, %bb.h ], [ 0, %bb.a ], [ 0, %bb.j ], [ 23, %bb.i ], [ 0, %bb.k ], [ %i.r, %bb.l ], [ %i.r, %.lr.ph.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cw_out_do_write(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 1, 4) %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !87
  %.not51 = icmp eq i32 %i.e, %2
  br i1 %.not51, label %.thread73, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc i32 @cw_out_flush_chain(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.b) ; 2 uses
  %.not52 = icmp eq i32 %i.f, 0
  br i1 %.not52, label %bb.d, label %.thread62

bb.d:                                             ; preds = %bb.c
  %.pr.pre = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.g = icmp eq ptr %.pr.pre, null
  br i1 %i.g, label %.thread, label %.thread73

.thread73:                                        ; preds = %bb.b, %bb.d
  %i.h = tail call fastcc i32 @cw_out_append(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) ; 2 uses
  %.not55 = icmp eq i32 %i.h, 0
  br i1 %.not55, label %bb.e, label %.thread62

bb.e:                                             ; preds = %.thread73
  %i.i = tail call fastcc i32 @cw_out_flush_chain(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.b)
  br label %bb.j

.thread:                                          ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.j = call fastcc i32 @cw_out_ptr_flush(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %i.a) ; 2 uses
  switch i32 %i.j, label %bb.i [
    i32 81, label %bb.f
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %.thread, %.thread
  %i.k = load i64, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  %i.l = icmp ult i64 %i.k, %4
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %i.k
  %i.n = sub nuw i64 %4, %i.k
  %i.o = tail call fastcc i32 @cw_out_append(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.m, i64 noundef %i.n) ; 2 uses
  %.not54 = icmp eq i32 %i.o, 0
  br i1 %.not54, label %bb.h, label %.thread58

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %.thread58

.thread58:                                        ; preds = %bb.h, %bb.g
  %.1.ph = phi i32 [ %i.o, %bb.g ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.j

bb.i:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %cw_out_bufs_free.exit

bb.j:                                             ; preds = %.thread58, %bb.e
  %.2 = phi i32 [ %i.i, %bb.e ], [ %.1.ph, %.thread58 ] ; 2 uses
  %.not56 = icmp eq i32 %.2, 0
  br i1 %.not56, label %cw_out_bufs_free.exit, label %.thread62

.thread62:                                        ; preds = %.thread73, %bb.c, %bb.j
  %.265 = phi i32 [ %.2, %bb.j ], [ %i.h, %.thread73 ], [ %i.f, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = or i8 %i.q, 2
  store i8 %i.r, ptr %i.p, align 8
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not5.i = icmp eq ptr %i.s, null
  br i1 %.not5.i, label %cw_out_bufs_free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread62, %.lr.ph.i
  %i.t = phi ptr [ %i.u, %.lr.ph.i ], [ %i.s, %.thread62 ] ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  tail call void @curlx_dyn_free(ptr noundef nonnull %i.v) #5
  %i.w = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  tail call void %i.w(ptr noundef nonnull %i.t) #5, !inline_history !0
  store ptr %i.u, ptr %i.b, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %cw_out_bufs_free.exit, label %.lr.ph.i, !llvm.loop !1

cw_out_bufs_free.exit:                            ; preds = %.lr.ph.i, %.thread62, %bb.i, %bb.j
  %.142 = phi i32 [ %i.j, %bb.i ], [ 0, %bb.j ], [ %.265, %.thread62 ], [ %.265, %.lr.ph.i ]
  ret i32 %.142
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cw_out_flush_chain(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !89     ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 1
  %.not29 = icmp eq i8 %i.e, 0
  br i1 %.not29, label %.preheader43, label %.thread

.preheader43:                                     ; preds = %bb.b, %bb.d
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not30 = icmp eq ptr %i.f, null
  br i1 %.not30, label %bb.e, label %.preheader

.preheader:                                       ; preds = %.preheader43, %.preheader
  %i.g = phi ptr [ %i.h, %.preheader ], [ %i.f, %.preheader43 ] ; 2 uses
  %.0 = phi ptr [ %i.g, %.preheader ], [ %i.b, %.preheader43 ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %.not33 = icmp eq ptr %i.h, null
  br i1 %.not33, label %bb.c, label %.preheader, !llvm.loop !90

bb.c:                                             ; preds = %.preheader
  %i.i = tail call fastcc i32 @cw_out_flush_chain(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0) ; 2 uses
  %.not34 = icmp eq i32 %i.i, 0
  br i1 %.not34, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %.0, align 8, !tbaa !89
  %.not35 = icmp eq ptr %i.j, null
  br i1 %.not35, label %.preheader43, label %.thread, !llvm.loop !91

bb.e:                                             ; preds = %.preheader43
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %i.l = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.k) #5
  %.not.i = icmp eq i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !87   ; 2 uses
  br i1 %.not.i, label %3, label %._crit_edge.i

3:                                                ; preds = %bb.e
  %4 = icmp eq i32 %i.n, 2
  br i1 %4, label %._crit_edge.i, label %cw_out_buf_flush.exit.thread

._crit_edge.i:                                    ; preds = %3, %bb.e
  %5 = phi i32 [ 2, %3 ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.o = tail call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.k) #5
  %i.p = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.k) #5
  %i.q = call fastcc i32 @cw_out_ptr_flush(ptr noundef %0, ptr noundef %1, i32 noundef %5, ptr noundef %i.o, i64 noundef %i.p, ptr noundef %i.a) ; 2 uses
  switch i32 %i.q, label %cw_out_buf_flush.exit.thread40 [
    i32 81, label %bb.f
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %._crit_edge.i, %._crit_edge.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  %.not27.i = icmp eq i64 %i.r, 0
  br i1 %.not27.i, label %cw_out_buf_flush.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.k) #5
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @curlx_dyn_free(ptr noundef nonnull %i.k) #5
  br label %cw_out_buf_flush.exit

bb.i:                                             ; preds = %bb.g
  %i.u = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.k) #5
  %i.v = sub i64 %i.u, %i.r
  %i.w = tail call i32 @curlx_dyn_tail(ptr noundef nonnull %i.k, i64 noundef %i.v) #5 ; 2 uses
  %.not28.i = icmp eq i32 %i.w, 0
  br i1 %.not28.i, label %cw_out_buf_flush.exit, label %cw_out_buf_flush.exit.thread40

cw_out_buf_flush.exit.thread40:                   ; preds = %bb.i, %._crit_edge.i
  %.122.ph.i.ph = phi i32 [ %i.q, %._crit_edge.i ], [ %i.w, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %.thread

cw_out_buf_flush.exit:                            ; preds = %bb.f, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %cw_out_buf_flush.exit.thread

cw_out_buf_flush.exit.thread:                     ; preds = %3, %cw_out_buf_flush.exit
  %i.x = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.k) #5
  %.not32 = icmp eq i64 %i.x, 0
  br i1 %.not32, label %bb.j, label %.thread

bb.j:                                             ; preds = %cw_out_buf_flush.exit.thread
  tail call void @curlx_dyn_free(ptr noundef nonnull %i.k) #5
  %i.y = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  tail call void %i.y(ptr noundef nonnull %i.b) #5, !inline_history !92
  store ptr null, ptr %2, align 8, !tbaa !89
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %cw_out_buf_flush.exit.thread40, %cw_out_buf_flush.exit.thread, %bb.j, %bb.b, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %cw_out_buf_flush.exit.thread ], [ 0, %bb.b ], [ %.122.ph.i.ph, %cw_out_buf_flush.exit.thread40 ], [ 0, %bb.j ], [ %i.i, %bb.c ], [ 0, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cw_out_append(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 1, 4) %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.b = load i64, ptr %i.a, align 1
  %i.c = and i64 %i.b, 536870912
  %.not33 = icmp eq i64 %i.c, 0
  br i1 %.not33, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84   ; 2 uses
  %.not34 = icmp eq ptr %i.e, null
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !86
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.j = icmp sgt i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !86
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.056.i = load ptr, ptr %i.k, align 8, !tbaa !89 ; 2 uses
  %.not7.i = icmp eq ptr %.056.i, null
  br i1 %.not7.i, label %cw_out_bufs_len.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.059.i = phi ptr [ %.05.i, %.lr.ph.i ], [ %.056.i, %bb.f ] ; 2 uses
  %.08.i = phi i64 [ %i.n, %.lr.ph.i ], [ 0, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %.059.i, i64 8
  %i.m = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.l) #5
  %i.n = add i64 %i.m, %.08.i                     ; 2 uses
  %.05.i = load ptr, ptr %.059.i, align 8, !tbaa !89 ; 2 uses
  %.not.i = icmp eq ptr %.05.i, null
  br i1 %.not.i, label %cw_out_bufs_len.exit, label %.lr.ph.i, !llvm.loop !93

cw_out_bufs_len.exit:                             ; preds = %.lr.ph.i, %bb.f
  %.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.n, %.lr.ph.i ]
  tail call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, i64 noundef %4, i64 noundef %.0.lcssa.i, i32 noundef 67108864) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %cw_out_bufs_len.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.056.i37 = load ptr, ptr %i.o, align 8, !tbaa !89 ; 2 uses
  %.not7.i38 = icmp eq ptr %.056.i37, null
  br i1 %.not7.i38, label %cw_out_bufs_len.exit45, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %bb.g, %.lr.ph.i39
  %.059.i40 = phi ptr [ %.05.i42, %.lr.ph.i39 ], [ %.056.i37, %bb.g ] ; 2 uses
  %.08.i41 = phi i64 [ %i.r, %.lr.ph.i39 ], [ 0, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %.059.i40, i64 8
  %i.q = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.p) #5
  %i.r = add i64 %i.q, %.08.i41                   ; 2 uses
  %.05.i42 = load ptr, ptr %.059.i40, align 8, !tbaa !89 ; 2 uses
  %.not.i43 = icmp eq ptr %.05.i42, null
  br i1 %.not.i43, label %cw_out_bufs_len.exit45, label %.lr.ph.i39, !llvm.loop !93

cw_out_bufs_len.exit45:                           ; preds = %.lr.ph.i39, %bb.g
  %.0.lcssa.i44 = phi i64 [ 0, %bb.g ], [ %i.r, %.lr.ph.i39 ]
  %i.s = add i64 %.0.lcssa.i44, %4
  %i.t = icmp ugt i64 %i.s, 67108864
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %cw_out_bufs_len.exit45
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.4) #5
  br label %bb.m

bb.i:                                             ; preds = %cw_out_bufs_len.exit45
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !18   ; 3 uses
  %.not35 = icmp eq ptr %i.u, null
  br i1 %.not35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !87
  %i.x = icmp ne i32 %i.w, %2
  %i.y = icmp eq i32 %2, 3
  %or.cond4 = or i1 %i.y, %i.x
  br i1 %or.cond4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !24
  %i.aa = tail call ptr %i.z(i64 noundef 1, i64 noundef 48) #5, !inline_history !94 ; 6 uses
  %.not.i46 = icmp eq ptr %i.aa, null
  br i1 %.not.i46, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 %2, ptr %i.ab, align 8, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  tail call void @curlx_dyn_init(ptr noundef nonnull %i.ac, i64 noundef 67108864) #5
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !18
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !23
  store ptr %i.aa, ptr %i.o, align 8, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.j
  %i.ae = phi ptr [ %i.aa, %.thread ], [ %i.u, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = tail call i32 @curlx_dyn_addn(ptr noundef nonnull %i.af, ptr noundef %3, i64 noundef %4) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.h
  %.1 = phi i32 [ 100, %bb.h ], [ %i.ag, %bb.l ], [ 27, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cw_out_ptr_flush(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 2
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %cw_get_writefunc.exit.thread [
    i32 1, label %cw_get_writefunc.exit
    i32 2, label %cw_get_writefunc.exit
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  br i1 %.not.i, label %bb.d, label %.preheader.thread

bb.d:                                             ; preds = %bb.c
  %.not19.i = icmp eq ptr %i.h, null
  br i1 %.not19.i, label %cw_get_writefunc.exit.thread, label %cw_get_writefunc.exit.thread111

cw_get_writefunc.exit:                            ; preds = %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 448
  %.sink20.i = load ptr, ptr %i.k, align 8, !tbaa !24 ; 3 uses
  %.not40 = icmp eq ptr %i.j, null
  br i1 %.not40, label %cw_get_writefunc.exit.thread, label %bb.e

cw_get_writefunc.exit.thread111:                  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 464
  %.sink20.i116 = load ptr, ptr %i.n, align 8, !tbaa !24
  %.not40117 = icmp eq ptr %i.m, null
  br i1 %.not40117, label %cw_get_writefunc.exit.thread, label %.preheader.thread

cw_get_writefunc.exit.thread:                     ; preds = %bb.d, %cw_get_writefunc.exit.thread111, %bb.b, %cw_get_writefunc.exit
  store i64 %4, ptr %5, align 8, !tbaa !88
  br label %.critedge

bb.e:                                             ; preds = %cw_get_writefunc.exit
  store i64 0, ptr %5, align 8, !tbaa !88
  %i.o = icmp eq i32 %2, 2
  br i1 %i.o, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not4165 = icmp eq i64 %4, 0
  br i1 %.not4165, label %.critedge, label %.lr.ph

.preheader.thread:                                ; preds = %bb.c, %cw_get_writefunc.exit.thread111
  %.sink20.i116158 = phi ptr [ %.sink20.i116, %cw_get_writefunc.exit.thread111 ], [ %i.h, %bb.c ]
  %i.p = phi ptr [ %i.m, %cw_get_writefunc.exit.thread111 ], [ %i.f, %bb.c ]
  store i64 0, ptr %5, align 8, !tbaa !88
end_hunk_0
