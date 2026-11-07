Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pml_ob1_sendreq?download=true
inline.NumInlined: 227
inline.NumDeleted: 83
begin_hunk_0_@mca_pml_ob1_send_request_copy_in_out:bb.a
  %i.m = select i1 %i.j, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  store i32 0, ptr %i.n, align 4, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  tail call void @qsort(ptr noundef nonnull %i.o, i64 noundef 0, i64 noundef 24, ptr noundef nonnull @mca_pml_ob1_com_btl_comp) #11
  br label %._crit_edge.i

.lr.ph:                                           ; preds = %bb.b
  %i.p = load i64, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.q = icmp eq i64 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !68   ; 3 uses
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !241
  %i.x = fpext float %i.w to double
  %i.y = and i64 %.val, 2147483647
  br label %mca_bml_base_btl_array_get_next.exit.us

mca_bml_base_btl_array_get_next.exit.us:          ; preds = %mca_bml_base_btl_array_get_next.exit.us, %.lr.ph.split.us
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %mca_bml_base_btl_array_get_next.exit.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.031.us = phi double [ %i.aa, %mca_bml_base_btl_array_get_next.exit.us ], [ 0.000000e+00, %.lr.ph.split.us ]
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %indvars.iv39
  store ptr %i.u, ptr %i.z, align 8, !tbaa !172
  %i.aa = fadd double %.031.us, %i.x              ; 2 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 4 uses
  %i.ab = icmp samesign ult i64 %indvars.iv.next40, %i.y
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 228), align 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next40, %i.ad
  %i.af = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %i.af, label %mca_bml_base_btl_array_get_next.exit.us, label %._crit_edge, !llvm.loop !239

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ag = and i64 %.val, 2147483647
  %.pre = load i64, ptr %i.r, align 8, !tbaa !190
  br label %mca_bml_base_btl_array_get_next.exit

mca_bml_base_btl_array_get_next.exit:             ; preds = %.lr.ph.split, %mca_bml_base_btl_array_get_next.exit
  %i.ah = phi i64 [ %.pre, %.lr.ph.split ], [ %..i, %mca_bml_base_btl_array_get_next.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %mca_bml_base_btl_array_get_next.exit ] ; 2 uses
  %.031 = phi double [ 0.000000e+00, %.lr.ph.split ], [ %i.ap, %mca_bml_base_btl_array_get_next.exit ]
  %i.ai = add i64 %i.ah, 1                        ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.p
  %..i = select i1 %i.aj, i64 0, i64 %i.ai        ; 2 uses
  store i64 %..i, ptr %i.r, align 8, !tbaa !190
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.ah ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %indvars.iv
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !172
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !241
  %i.ao = fpext float %i.an to double
  %i.ap = fadd double %.031, %i.ao                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.aq = icmp samesign ult i64 %indvars.iv.next, %i.ag
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 228), align 4
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  %i.au = select i1 %i.aq, i1 %i.at, i1 false
  br i1 %i.au, label %mca_bml_base_btl_array_get_next.exit, label %._crit_edge, !llvm.loop !239

._crit_edge:                                      ; preds = %mca_bml_base_btl_array_get_next.exit, %mca_bml_base_btl_array_get_next.exit.us
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv.next40, %mca_bml_base_btl_array_get_next.exit.us ], [ %indvars.iv.next, %mca_bml_base_btl_array_get_next.exit ] ; 4 uses
  %.0.lcssa = phi double [ %i.aa, %mca_bml_base_btl_array_get_next.exit.us ], [ %i.ap, %mca_bml_base_btl_array_get_next.exit ]
  %i.av = trunc nuw nsw i64 %indvars.iv.next.lcssa.sink to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.ay = icmp eq i64 %indvars.iv.next.lcssa.sink, 1
  br i1 %i.ay, label %bb.c, label %.lr.ph.i, !prof !191

bb.c:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i64 %2, ptr %i.az, align 8, !tbaa !192
  br label %mca_pml_ob1_calc_weighted_length.exit

.lr.ph.i:                                         ; preds = %._crit_edge
  tail call void @qsort(ptr noundef nonnull %i.ax, i64 noundef %indvars.iv.next.lcssa.sink, i64 noundef 24, ptr noundef nonnull @mca_pml_ob1_com_btl_comp) #11
  %i.ba = uitofp i64 %2 to double
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.02733.i = phi i64 [ %2, %.lr.ph.i ], [ %.128.i, %bb.h ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %indvars.iv.i ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !172 ; 2 uses
  %.not.i = icmp eq i64 %.02733.i, 0
  br i1 %.not.i, label %bb.h, label %bb.e, !prof !72

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !76
  %i.bh = icmp ugt i64 %.02733.i, %i.bg
  br i1 %i.bh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !241
  %i.bk = fpext float %i.bj to double
  %i.bl = fdiv double %i.bk, %.0.lcssa
  %i.bm = fmul double %i.bl, %i.ba
  %i.bn = fptoui double %i.bm to i64
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %.02733.i)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %spec.select.i = phi i64 [ %i.bo, %bb.f ], [ %.02733.i, %bb.e ] ; 2 uses
  %i.bp = sub i64 %.02733.i, %spec.select.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.128.i = phi i64 [ %i.bp, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %.1.i = phi i64 [ %spec.select.i, %bb.g ], [ 0, %bb.d ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.1.i, ptr %i.bq, align 8, !tbaa !192
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv.next.lcssa.sink
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !240

._crit_edge.i:                                    ; preds = %bb.h, %.thread
  %.027.lcssa.i = phi i64 [ %2, %.thread ], [ %.128.i, %bb.h ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !192
  %i.bt = add i64 %i.bs, %.027.lcssa.i
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !192
  br label %mca_pml_ob1_calc_weighted_length.exit

mca_pml_ob1_calc_weighted_length.exit:            ; preds = %bb.c, %._crit_edge.i
  %i.bu = load i8, ptr @opal_uses_threads, align 1, !tbaa !31, !range !32, !noundef !33
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.i, label %bb.j, !prof !34

bb.i:                                             ; preds = %mca_pml_ob1_calc_weighted_length.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bx = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bw) #11 ; 0 uses
  %.pre42 = load i8, ptr @opal_uses_threads, align 1, !tbaa !31, !range !32
  %i.by = trunc nuw i8 %.pre42 to i1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %mca_pml_ob1_calc_weighted_length.exit
  %i.bz = phi i1 [ %i.by, %bb.i ], [ false, %mca_pml_ob1_calc_weighted_length.exit ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.cc = load volatile ptr, ptr %i.cb, align 8, !tbaa !36
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store volatile ptr %i.cc, ptr %i.cd, align 8, !tbaa !36
  %i.ce = load volatile ptr, ptr %i.cb, align 8, !tbaa !36
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store volatile ptr %i.f, ptr %i.cf, align 8, !tbaa !37
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store volatile ptr %i.ca, ptr %i.cg, align 8, !tbaa !37
  store volatile ptr %i.f, ptr %i.cb, align 8, !tbaa !36
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ci = load volatile i64, ptr %i.ch, align 8, !tbaa !29
  %i.cj = add i64 %i.ci, 1
  store volatile i64 %i.cj, ptr %i.ch, align 8, !tbaa !29
  br i1 %i.bz, label %bb.k, label %bb.l, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cl = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ck) #11 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @mca_pml_ob1_send_request_schedule_once(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 11 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !31, !range !32, !noundef !33
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.g = load volatile i32, ptr %i.f, align 4, !tbaa !38
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 208), align 16, !tbaa !244
  %.not = icmp slt i32 %i.g, %i.h
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !31, !range !32, !noundef !33
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %.thread.i, !prof !34

.thread.i:                                        ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.l = load volatile ptr, ptr %i.k, align 8, !tbaa !35 ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 672
  %2 = icmp eq ptr %1, %i.l
  %..i4.i = select i1 %2, ptr null, ptr %i.l
  br label %get_send_range.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.n = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.m) #11 ; 0 uses
  %.pre.i.a = load i8, ptr @opal_uses_threads, align 1, !tbaa !31
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %4 = load volatile ptr, ptr %3, align 8, !tbaa !35 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 672
  %5 = icmp eq ptr %i.o, %4
  %..i.i = select i1 %5, ptr null, ptr %4         ; 2 uses
  %6 = trunc nuw i8 %.pre.i.a to i1
  br i1 %6, label %bb.e, label %get_send_range.exit, !prof !191

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.m) #11 ; 0 uses
  br label %get_send_range.exit

get_send_range.exit:                              ; preds = %.thread.i, %bb.d, %bb.e
  %i.q = phi ptr [ %..i4.i, %.thread.i ], [ %..i.i, %bb.e ], [ %..i.i, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !88   ; 4 uses
  %.not93 = icmp eq ptr %i.s, null
  br i1 %.not93, label %bb.m, label %bb.f

bb.f:                                             ; preds = %get_send_range.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !185  ; 2 uses
  %.not94 = icmp eq ptr %i.u, null
  br i1 %.not94, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !182
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val = load ptr, ptr %i.x, align 8, !tbaa !64  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 264
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !173
  %i.aa = tail call i32 %i.z(ptr noundef %.val, ptr noundef nonnull %i.u) #11, !inline_history !12 ; 0 uses
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !88  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  store ptr null, ptr %i.ac, align 8, !tbaa !185
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = phi ptr [ %i.ab, %bb.g ], [ %i.s, %bb.f ] ; 5 uses
  %i.ae = load i8, ptr @opal_uses_threads, align 1, !tbaa !31, !range !32, !noundef !33
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 328), align 8, !tbaa !104 ; 3 uses
  br i1 %i.af, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.08.i.i.i = inttoptr i64 %i.ag to ptr          ; 2 uses
  store volatile ptr %.08.i.i.i, ptr %i.ah, align 8, !tbaa !37
  fence release
  %i.ai = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.aj = cmpxchg volatile ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 328), i64 %i.ag, i64 %i.ai acquire monotonic, align 8 ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %opal_lifo_push_atomic.exit.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i

opal_atomic_compare_exchange_strong_ptr.exit.i.i.i: ; preds = %bb.i, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i
  %i.al = phi { i64, i1 } [ %i.an, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i ], [ %i.aj, %bb.i ]
  %i.am = extractvalue { i64, i1 } %i.al, 0       ; 2 uses
  %.0.i.i.i = inttoptr i64 %i.am to ptr           ; 2 uses
  store volatile ptr %.0.i.i.i, ptr %i.ah, align 8, !tbaa !37
  fence release
  %i.an = cmpxchg volatile ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 328), i64 %i.am, i64 %i.ai acquire monotonic, align 8 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %opal_lifo_push_atomic.exit.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i

opal_lifo_push_atomic.exit.i.i:                   ; preds = %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i, %bb.i
  %.0.lcssa.i.i.i = phi ptr [ %.08.i.i.i, %bb.i ], [ %.0.i.i.i, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i ]
  %i.ap = icmp ne ptr %.0.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 336)
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 408), align 8
  %.not.i.i = icmp eq i64 %i.aq, 0
  %or.cond = select i1 %i.ap, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %opal_free_list_return.exit, label %bb.j

bb.j:                                             ; preds = %opal_lifo_push_atomic.exit.i.i
  %i.ar = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 552), align 8, !tbaa !176
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %opal_free_list_return.exit, label %opal_free_list_return_mt.exit.sink.split.i

bb.k:                                             ; preds = %bb.h
  %i.as = inttoptr i64 %i.ag to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  store volatile ptr %i.as, ptr %i.at, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i32 0, ptr %i.au, align 8, !tbaa !177
  %i.av = ptrtoint ptr %i.ad to i64
  store volatile i64 %i.av, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 328), align 8, !tbaa !104
  %i.aw = load volatile ptr, ptr %i.at, align 8, !tbaa !37
  %i.ax = icmp ne ptr %i.aw, getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 336)
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 408), align 8
  %.not.i4.i = icmp eq i64 %i.ay, 0
  %or.cond138 = select i1 %i.ax, i1 true, i1 %.not.i4.i
  br i1 %or.cond138, label %opal_free_list_return.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 552), align 8, !tbaa !176
  %.not.i.i5.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i5.i, label %opal_free_list_return.exit, label %opal_free_list_return_mt.exit.sink.split.i

opal_free_list_return_mt.exit.sink.split.i:       ; preds = %bb.l, %bb.j
  %i.ba = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 556), align 4, !tbaa !178
  %i.bb = add nsw i32 %i.ba, 1
  store volatile i32 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 556), align 4, !tbaa !178
  br label %opal_free_list_return.exit

opal_free_list_return.exit:                       ; preds = %opal_lifo_push_atomic.exit.i.i, %bb.j, %bb.k, %bb.l, %opal_free_list_return_mt.exit.sink.split.i
  store ptr null, ptr %i.r, align 8, !tbaa !88
  br label %bb.m

bb.m:                                             ; preds = %opal_free_list_return.exit, %get_send_range.exit
  %.not95155204 = icmp eq ptr %i.q, null
  br i1 %.not95155204, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %.thread
  %.078158 = phi i32 [ 0, %.lr.ph ], [ %.1, %.thread ]
  %.079157 = phi ptr [ %i.q, %.lr.ph ], [ %.3, %.thread ] ; 21 uses
  %.081156 = phi i64 [ 0, %.lr.ph ], [ %.384, %.thread ]
  %i.bl = load i8, ptr %i.c, align 8, !tbaa !31, !range !32, !noundef !33
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %.critedge2, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = load volatile i32, ptr %i.bc, align 4, !tbaa !38
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 208), align 16, !tbaa !244
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.bq = getelementptr inbounds nuw i8, ptr %.079157, i64 64 ; 7 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !40 ; 7 uses
  %i.bs = icmp eq i64 %.081156, %i.br
  %i.bt = add nsw i32 %.078158, 1
  %.1 = select i1 %i.bs, i32 %i.bt, i32 0         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.079157, i64 76 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !38 ; 2 uses
  %i.bw = icmp eq i32 %.1, %i.bv
  br i1 %i.bw, label %.thread134, label %.preheader, !prof !34

.preheader:                                       ; preds = %.critedge2
  %i.bx = getelementptr inbounds nuw i8, ptr %.079157, i64 72 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.079157, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %.079157, i64 56 ; 7 uses
  br label %bb.p

.thread134:                                       ; preds = %.critedge2
  call fastcc void @add_request_to_send_pending(ptr noundef nonnull %0, i32 noundef 1, i1 noundef zeroext true)
  br label %.critedge.sink.split

bb.p:                                             ; preds = %.preheader, %bb.ad
  %i.ca = phi i32 [ %.pre, %bb.ad ], [ %i.bv, %.preheader ]
  %.076 = phi i64 [ %i.dh, %bb.ad ], [ 0, %.preheader ]
  %.promoted = load i32, ptr %i.bx, align 8, !tbaa !38
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %i.cb = phi i32 [ %spec.store.select, %bb.q ], [ %.promoted, %bb.p ] ; 2 uses
  %i.cc = add nsw i32 %i.cb, 1                    ; 2 uses
  %i.cd = icmp eq i32 %i.cc, %i.ca
  %spec.store.select = select i1 %i.cd, i32 0, i32 %i.cc ; 2 uses
  %i.ce = sext i32 %i.cb to i64
  %i.cf = getelementptr inbounds [24 x i8], ptr %i.by, i64 %i.ce ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !192 ; 2 uses
  %.not96 = icmp eq i64 %i.ch, 0
  br i1 %.not96, label %bb.q, label %bb.r, !llvm.loop !242

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 7 uses
  store i32 %spec.store.select, ptr %i.bx, align 8, !tbaa !38
  %i.cj = load ptr, ptr %i.cf, align 8, !tbaa !172 ; 5 uses
  %i.ck = add i64 %i.ch, %.076                    ; 5 uses
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !192
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 5 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !64 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !245 ; 2 uses
  %.not97 = icmp eq i64 %i.co, 0
  br i1 %.not97, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = load i32, ptr %i.bf, align 4, !tbaa !246
  %i.cq = and i32 %i.cp, 4194304
  %.not98 = icmp eq i32 %i.cq, 0
  br i1 %.not98, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 288
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !247 ; 2 uses
  %.not99 = icmp eq i64 %i.cs, 0
  br i1 %.not99, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.0.in = phi i64 [ %i.co, %bb.u ], [ %i.cs, %bb.t ]
  %.0 = add i64 %.0.in, -32                       ; 3 uses
  %i.ct = icmp ugt i64 %i.ck, %.0
  br i1 %i.ct, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i64 %.0, ptr %i.a, align 8, !tbaa !40
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.r
  %i.cu = phi i64 [ %i.ck, %bb.v ], [ %.0, %bb.w ], [ %i.ck, %bb.r ] ; 3 uses
  %i.cv = load i64, ptr %i.bz, align 8, !tbaa !40 ; 6 uses
  store i64 %i.cv, ptr %i.b, align 8, !tbaa !40
  %i.cw = load i64, ptr %i.be, align 8, !tbaa !69 ; 4 uses
  %.not.i = icmp ugt i64 %i.cw, %i.cv
  br i1 %.not.i, label %bb.z, label %bb.y, !prof !72

bb.y:                                             ; preds = %bb.x
  %i.cx = load i32, ptr %i.bf, align 4, !tbaa !70
  %i.cy = or i32 %i.cx, 134217728
  store i32 %i.cy, ptr %i.bf, align 4, !tbaa !70
  store i64 %i.cw, ptr %i.bg, align 8, !tbaa !71
  store i64 %i.cw, ptr %i.b, align 8, !tbaa !40
  br label %opal_convertor_set_position.exit

bb.z:                                             ; preds = %bb.x
  %i.cz = load i64, ptr %i.bg, align 8, !tbaa !71
  %i.da = icmp eq i64 %i.cv, %i.cz
  br i1 %i.da, label %opal_convertor_set_position.exit, label %bb.aa, !prof !72

bb.aa:                                            ; preds = %bb.z
  %i.db = load i32, ptr %i.bf, align 4, !tbaa !70 ; 3 uses
  %i.dc = and i32 %i.db, -134217729
  store i32 %i.dc, ptr %i.bf, align 4, !tbaa !70
  %i.dd = and i32 %i.db, 32
  %.not17.i = icmp eq i32 %i.dd, 0
  %i.de = and i32 %i.db, 786432
  %.not18.i = icmp eq i32 %i.de, 0
  %or.cond.i = or i1 %.not17.i, %.not18.i
  br i1 %or.cond.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.cv, ptr %i.bg, align 8, !tbaa !71
  br label %opal_convertor_set_position.exit

bb.ac:                                            ; preds = %bb.aa
  %i.df = call i32 @opal_convertor_set_position_nocheck(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.b) #11 ; 0 uses
  %.pre170.a = load i64, ptr %i.b, align 8, !tbaa !40
  %.pre171.a = load i64, ptr %i.a, align 8, !tbaa !40
  %.pre172 = load ptr, ptr %i.cl, align 8, !tbaa !64
  br label %opal_convertor_set_position.exit

opal_convertor_set_position.exit:                 ; preds = %bb.y, %bb.z, %bb.ab, %bb.ac
  %i.dg = phi ptr [ %i.cm, %bb.y ], [ %i.cm, %bb.z ], [ %i.cm, %bb.ab ], [ %.pre172, %bb.ac ] ; 2 uses
  %i.dh = phi i64 [ %i.cu, %bb.y ], [ %i.cu, %bb.z ], [ %i.cu, %bb.ab ], [ %.pre171.a, %bb.ac ] ; 2 uses
  %i.di = phi i64 [ %i.cw, %bb.y ], [ %i.cv, %bb.z ], [ %i.cv, %bb.ab ], [ %.pre170.a, %bb.ac ]
  store i64 %i.di, ptr %i.bz, align 8, !tbaa !40
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 184
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !179
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !99
  %i.dn = call ptr %i.dk(ptr noundef %i.dg, ptr noundef %i.dm, ptr noundef nonnull %i.bd, i8 noundef zeroext -1, i64 noundef 32, ptr noundef nonnull %i.a, i32 noundef 70) #11, !inline_history !11 ; 10 uses
  %.not.i104 = icmp eq ptr %i.dn, null
  br i1 %.not.i104, label %.thread, label %mca_bml_base_prepare_src.exit, !prof !34

mca_bml_base_prepare_src.exit:                    ; preds = %opal_convertor_set_position.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 88
  store ptr %i.cj, ptr %i.do, align 8, !tbaa !162
  %i.dp = load i64, ptr %i.a, align 8             ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.ad, label %bb.ae, !prof !248

bb.ad:                                            ; preds = %mca_bml_base_prepare_src.exit
  %.val103 = load ptr, ptr %i.cl, align 8, !tbaa !64 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.val103, i64 176
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !108
  %i.dt = call i32 %i.ds(ptr noundef %.val103, ptr noundef nonnull %i.dn) #11, !inline_history !5 ; 0 uses
  %i.du = load i64, ptr %i.ci, align 8, !tbaa !192
  %i.dv = sub i64 %i.du, %i.dh
  store i64 %i.dv, ptr %i.ci, align 8, !tbaa !192
  %.pre = load i32, ptr %i.bu, align 4, !tbaa !38
  br label %bb.p

bb.ae:                                            ; preds = %mca_bml_base_prepare_src.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 72 ; 2 uses
  store ptr @mca_pml_ob1_frag_completion, ptr %i.dw, align 8, !tbaa !149
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 80
  store ptr %0, ptr %i.dx, align 8, !tbaa !150
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !103
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !104 ; 5 uses
  %i.eb = load i64, ptr %i.bz, align 8, !tbaa !40
  %i.ec = load i64, ptr %i.bh, align 8, !tbaa !104
  store i8 70, ptr %i.ea, align 1, !tbaa !111
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 0, ptr %i.ed, align 1, !tbaa !112
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %i.eb, ptr %i.ee, align 8, !tbaa !250
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %0, ptr %i.ef, align 8, !tbaa !104
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store i64 %i.ec, ptr %i.eg, align 8, !tbaa !104
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dn, i64 96 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !196 ; 2 uses
  %i.ej = and i32 %i.ei, 8
  %.not100 = icmp eq i32 %i.ej, 0
  br i1 %.not100, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = and i32 %i.ei, -7
  %i.el = or disjoint i32 %i.ek, 4
  store i32 %i.el, ptr %i.eh, align 8, !tbaa !196
  store ptr @mca_pml_ob1_copy_frag_completion, ptr %i.dw, align 8, !tbaa !149
  %i.em = load i64, ptr %i.ci, align 8, !tbaa !192
  %i.en = sub i64 %i.em, %i.dp
  store i64 %i.en, ptr %i.ci, align 8, !tbaa !192
  %i.eo = load i64, ptr %i.a, align 8, !tbaa !40  ; 3 uses
  %i.ep = load i64, ptr %i.bq, align 8, !tbaa !40 ; 2 uses
  %i.eq = sub i64 %i.ep, %i.eo
  store i64 %i.eq, ptr %i.bq, align 8, !tbaa !40
  %i.er = load i64, ptr %i.bz, align 8, !tbaa !40
  %i.es = add i64 %i.er, %i.eo
  store i64 %i.es, ptr %i.bz, align 8, !tbaa !40
  %i.et = load i8, ptr @opal_uses_threads, align 1, !tbaa !31, !range !32, !noundef !33
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %opal_thread_add_fetch_32.exit, label %opal_thread_add_fetch_32.exit.thread, !prof !34

opal_thread_add_fetch_32.exit:                    ; preds = %bb.af
  %i.ev = atomicrmw volatile add ptr %i.bc, i32 1 monotonic, align 4 ; 0 uses
  %i.ew = load i64, ptr %i.bq, align 8, !tbaa !40
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.ag, label %.thread, !llvm.loop !243

opal_thread_add_fetch_32.exit.thread:             ; preds = %bb.af
  %i.ey = load volatile i32, ptr %i.bc, align 4, !tbaa !38
  %i.ez = add nsw i32 %i.ey, 1
  store volatile i32 %i.ez, ptr %i.bc, align 4, !tbaa !38
  %i.fa = load volatile i32, ptr %i.bc, align 4, !tbaa !38 ; 0 uses
  %i.fb = icmp eq i64 %i.ep, %i.eo
  br i1 %i.fb, label %.thread132.a, label %.thread, !llvm.loop !243

bb.ag:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.fc = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bi) #11 ; 0 uses
  %.pre.i109 = load i8, ptr @opal_uses_threads, align 1, !tbaa !31, !range !32
  %i.fd = trunc nuw i8 %.pre.i109 to i1
  br label %.thread132.a

.thread132.a:                                     ; preds = %opal_thread_add_fetch_32.exit.thread, %bb.ag
  %i.fe = phi i1 [ false, %opal_thread_add_fetch_32.exit.thread ], [ %i.fd, %bb.ag ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.079157, i64 16 ; 5 uses
  %i.fg = load volatile ptr, ptr %i.ff, align 8, !tbaa !37
  %i.fh = getelementptr inbounds nuw i8, ptr %.079157, i64 24 ; 3 uses
  %i.fi = load volatile ptr, ptr %i.fh, align 8, !tbaa !36
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store volatile ptr %i.fg, ptr %i.fj, align 8, !tbaa !37
  %i.fk = load volatile ptr, ptr %i.fh, align 8, !tbaa !36
  %i.fl = load volatile ptr, ptr %i.ff, align 8, !tbaa !37
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store volatile ptr %i.fk, ptr %i.fm, align 8, !tbaa !36
  %i.fn = load volatile i64, ptr %i.bj, align 8, !tbaa !29
  %i.fo = add i64 %i.fn, -1
  store volatile i64 %i.fo, ptr %i.bj, align 8, !tbaa !29
  %i.fp = load volatile ptr, ptr %i.fh, align 8, !tbaa !36 ; 0 uses
  %i.fq = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1736), align 8, !tbaa !104 ; 2 uses
  %.08.i.i.i.i = inttoptr i64 %i.fq to ptr        ; 2 uses
  store volatile ptr %.08.i.i.i.i, ptr %i.ff, align 8, !tbaa !37
  br i1 %i.fe, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %.thread132.a
  fence release
  %i.fr = ptrtoint ptr %.079157 to i64            ; 2 uses
  %i.fs = cmpxchg volatile ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1736), i64 %i.fq, i64 %i.fr acquire monotonic, align 8 ; 2 uses
  %i.ft = extractvalue { i64, i1 } %i.fs, 1
  br i1 %i.ft, label %opal_lifo_push_atomic.exit.i.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i

opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i: ; preds = %bb.ah, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i
  %i.fu = phi { i64, i1 } [ %i.fw, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i ], [ %i.fs, %bb.ah ]
  %i.fv = extractvalue { i64, i1 } %i.fu, 0       ; 2 uses
  %.0.i.i.i.i = inttoptr i64 %i.fv to ptr         ; 2 uses
  store volatile ptr %.0.i.i.i.i, ptr %i.ff, align 8, !tbaa !37
  fence release
  %i.fw = cmpxchg volatile ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1736), i64 %i.fv, i64 %i.fr acquire monotonic, align 8 ; 2 uses
  %i.fx = extractvalue { i64, i1 } %i.fw, 1
  br i1 %i.fx, label %opal_lifo_push_atomic.exit.i.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i

opal_lifo_push_atomic.exit.i.i.i:                 ; preds = %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i, %bb.ah
  %.0.lcssa.i.i.i.i = phi ptr [ %.08.i.i.i.i, %bb.ah ], [ %.0.i.i.i.i, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i ]
  %i.fy = icmp ne ptr %.0.lcssa.i.i.i.i, getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1744)
  %i.fz = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1816), align 8
  %.not.i.i.i107 = icmp eq i64 %i.fz, 0
  %or.cond.i108 = select i1 %i.fy, i1 true, i1 %.not.i.i.i107
  br i1 %or.cond.i108, label %opal_free_list_return.exit.i, label %bb.ai

bb.ai:                                            ; preds = %opal_lifo_push_atomic.exit.i.i.i
  %i.ga = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1960), align 8, !tbaa !176
  %.not.i.i.i.i = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i.i.i, label %opal_free_list_return.exit.i, label %opal_free_list_return_mt.exit.sink.split.i.i

bb.aj:                                            ; preds = %.thread132.a
  %i.gb = getelementptr inbounds nuw i8, ptr %.079157, i64 32
  store i32 0, ptr %i.gb, align 8, !tbaa !177
  %i.gc = ptrtoint ptr %.079157 to i64
  store volatile i64 %i.gc, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1736), align 8, !tbaa !104
  %i.gd = load volatile ptr, ptr %i.ff, align 8, !tbaa !37
  %i.ge = icmp ne ptr %i.gd, getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1744)
  %i.gf = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1816), align 8
  %.not.i4.i.i = icmp eq i64 %i.gf, 0
  %or.cond7.i = select i1 %i.ge, i1 true, i1 %.not.i4.i.i
  br i1 %or.cond7.i, label %opal_free_list_return.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gg = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1960), align 8, !tbaa !176
  %.not.i.i5.i.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i.i5.i.i, label %opal_free_list_return.exit.i, label %opal_free_list_return_mt.exit.sink.split.i.i

opal_free_list_return_mt.exit.sink.split.i.i:     ; preds = %bb.ak, %bb.ai
  %i.gh = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1964), align 4, !tbaa !178
  %i.gi = add nsw i32 %i.gh, 1
  store volatile i32 %i.gi, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1964), align 4, !tbaa !178
  br label %opal_free_list_return.exit.i

opal_free_list_return.exit.i:                     ; preds = %opal_free_list_return_mt.exit.sink.split.i.i, %bb.ak, %bb.aj, %bb.ai, %opal_lifo_push_atomic.exit.i.i.i
  %i.gj = load volatile ptr, ptr %i.bk, align 8, !tbaa !35 ; 2 uses
  %i.gk = load i8, ptr @opal_uses_threads, align 1, !tbaa !31, !range !32, !noundef !33
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.al, label %get_next_send_range.exit, !prof !34

bb.al:                                            ; preds = %opal_free_list_return.exit.i
  %i.gm = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bi) #11 ; 0 uses
  br label %get_next_send_range.exit

get_next_send_range.exit:                         ; preds = %opal_free_list_return.exit.i, %bb.al
  %i.gn = icmp eq ptr %7, %i.gj
  br i1 %i.gn, label %.critedge.sink.split, label %.thread, !llvm.loop !243

bb.am:                                            ; preds = %bb.ae
  %i.go = getelementptr inbounds nuw i8, ptr %i.dn, i64 88
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.gq = load ptr, ptr %i.cl, align 8, !tbaa !64 ; 2 uses
  store ptr %i.cj, ptr %i.go, align 8, !tbaa !162
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 192
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !163
  %i.gt = load ptr, ptr %i.gp, align 8, !tbaa !99
  %i.gu = call i32 %i.gs(ptr noundef %i.gq, ptr noundef %i.gt, ptr noundef nonnull %i.dn, i8 noundef zeroext 70) #11, !inline_history !7 ; 2 uses
  %i.gv = icmp eq i32 %i.gu, -4
  %i.gw = icmp sgt i32 %i.gu, -1
  %i.gx = or i1 %i.gv, %i.gw
  br i1 %i.gx, label %bb.an, label %bb.au, !prof !72

bb.an:                                            ; preds = %bb.am
  %i.gy = load i64, ptr %i.a, align 8, !tbaa !40
  %i.gz = load i64, ptr %i.ci, align 8, !tbaa !192
  %i.ha = sub i64 %i.gz, %i.gy
  store i64 %i.ha, ptr %i.ci, align 8, !tbaa !192
  %i.hb = load i64, ptr %i.a, align 8, !tbaa !40  ; 3 uses
  %i.hc = load i64, ptr %i.bq, align 8, !tbaa !40 ; 2 uses
  %i.hd = sub i64 %i.hc, %i.hb
  store i64 %i.hd, ptr %i.bq, align 8, !tbaa !40
  %i.he = load i64, ptr %i.bz, align 8, !tbaa !40
  %i.hf = add i64 %i.he, %i.hb
  store i64 %i.hf, ptr %i.bz, align 8, !tbaa !40
  %i.hg = load i8, ptr @opal_uses_threads, align 1, !tbaa !31, !range !32, !noundef !33
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %opal_thread_add_fetch_32.exit111, label %opal_thread_add_fetch_32.exit111.thread, !prof !34

opal_thread_add_fetch_32.exit111:                 ; preds = %bb.an
  %i.hi = atomicrmw volatile add ptr %i.bc, i32 1 monotonic, align 4 ; 0 uses
  %i.hj = load i64, ptr %i.bq, align 8, !tbaa !40
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.ao, label %.thread

opal_thread_add_fetch_32.exit111.thread:          ; preds = %bb.an
  %i.hl = load volatile i32, ptr %i.bc, align 4, !tbaa !38
  %i.hm = add nsw i32 %i.hl, 1
  store volatile i32 %i.hm, ptr %i.bc, align 4, !tbaa !38
  %i.hn = load volatile i32, ptr %i.bc, align 4, !tbaa !38 ; 0 uses
  %i.ho = icmp eq i64 %i.hc, %i.hb
  br i1 %i.ho, label %.thread133, label %.thread

bb.ao:                                            ; preds = %opal_thread_add_fetch_32.exit111
  %i.hp = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bi) #11 ; 0 uses
  %.pre.i126 = load i8, ptr @opal_uses_threads, align 1, !tbaa !31, !range !32
  %i.hq = trunc nuw i8 %.pre.i126 to i1
  br label %.thread133

.thread133:                                       ; preds = %opal_thread_add_fetch_32.exit111.thread, %bb.ao
  %i.hr = phi i1 [ false, %opal_thread_add_fetch_32.exit111.thread ], [ %i.hq, %bb.ao ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.079157, i64 16 ; 5 uses
  %i.ht = load volatile ptr, ptr %i.hs, align 8, !tbaa !37
  %i.hu = getelementptr inbounds nuw i8, ptr %.079157, i64 24 ; 3 uses
  %i.hv = load volatile ptr, ptr %i.hu, align 8, !tbaa !36
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store volatile ptr %i.ht, ptr %i.hw, align 8, !tbaa !37
  %i.hx = load volatile ptr, ptr %i.hu, align 8, !tbaa !36
  %i.hy = load volatile ptr, ptr %i.hs, align 8, !tbaa !37
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  store volatile ptr %i.hx, ptr %i.hz, align 8, !tbaa !36
  %i.ia = load volatile i64, ptr %i.bj, align 8, !tbaa !29
  %i.ib = add i64 %i.ia, -1
  store volatile i64 %i.ib, ptr %i.bj, align 8, !tbaa !29
  %i.ic = load volatile ptr, ptr %i.hu, align 8, !tbaa !36 ; 0 uses
  %i.id = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1736), align 8, !tbaa !104 ; 2 uses
  %.08.i.i.i.i112 = inttoptr i64 %i.id to ptr     ; 2 uses
  store volatile ptr %.08.i.i.i.i112, ptr %i.hs, align 8, !tbaa !37
  br i1 %i.hr, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %.thread133
  fence release
  %i.ie = ptrtoint ptr %.079157 to i64            ; 2 uses
  %i.if = cmpxchg volatile ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1736), i64 %i.id, i64 %i.ie acquire monotonic, align 8 ; 2 uses
  %i.ig = extractvalue { i64, i1 } %i.if, 1
  br i1 %i.ig, label %opal_lifo_push_atomic.exit.i.i.i121, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i119

opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i119: ; preds = %bb.ap, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i119
  %i.ih = phi { i64, i1 } [ %i.ij, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i119 ], [ %i.if, %bb.ap ]
  %i.ii = extractvalue { i64, i1 } %i.ih, 0       ; 2 uses
  %.0.i.i.i.i120 = inttoptr i64 %i.ii to ptr      ; 2 uses
  store volatile ptr %.0.i.i.i.i120, ptr %i.hs, align 8, !tbaa !37
  fence release
  %i.ij = cmpxchg volatile ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1736), i64 %i.ii, i64 %i.ie acquire monotonic, align 8 ; 2 uses
  %i.ik = extractvalue { i64, i1 } %i.ij, 1
  br i1 %i.ik, label %opal_lifo_push_atomic.exit.i.i.i121, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i119

opal_lifo_push_atomic.exit.i.i.i121:              ; preds = %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i119, %bb.ap
  %.0.lcssa.i.i.i.i122 = phi ptr [ %.08.i.i.i.i112, %bb.ap ], [ %.0.i.i.i.i120, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i119 ]
  %i.il = icmp ne ptr %.0.lcssa.i.i.i.i122, getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1744)
  %i.im = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1816), align 8
  %.not.i.i.i123 = icmp eq i64 %i.im, 0
  %or.cond.i124 = select i1 %i.il, i1 true, i1 %.not.i.i.i123
  br i1 %or.cond.i124, label %opal_free_list_return.exit.i117, label %bb.aq

bb.aq:                                            ; preds = %opal_lifo_push_atomic.exit.i.i.i121
  %i.in = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1960), align 8, !tbaa !176
  %.not.i.i.i.i125 = icmp eq i32 %i.in, 0
  br i1 %.not.i.i.i.i125, label %opal_free_list_return.exit.i117, label %opal_free_list_return_mt.exit.sink.split.i.i116

bb.ar:                                            ; preds = %.thread133
  %i.io = getelementptr inbounds nuw i8, ptr %.079157, i64 32
  store i32 0, ptr %i.io, align 8, !tbaa !177
  %i.ip = ptrtoint ptr %.079157 to i64
  store volatile i64 %i.ip, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1736), align 8, !tbaa !104
  %i.iq = load volatile ptr, ptr %i.hs, align 8, !tbaa !37
  %i.ir = icmp ne ptr %i.iq, getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1744)
  %i.is = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1816), align 8
  %.not.i4.i.i113 = icmp eq i64 %i.is, 0
  %or.cond7.i114 = select i1 %i.ir, i1 true, i1 %.not.i4.i.i113
  br i1 %or.cond7.i114, label %opal_free_list_return.exit.i117, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.it = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1960), align 8, !tbaa !176
  %.not.i.i5.i.i115 = icmp eq i32 %i.it, 0
  br i1 %.not.i.i5.i.i115, label %opal_free_list_return.exit.i117, label %opal_free_list_return_mt.exit.sink.split.i.i116

opal_free_list_return_mt.exit.sink.split.i.i116:  ; preds = %bb.as, %bb.aq
  %i.iu = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1964), align 4, !tbaa !178
  %i.iv = add nsw i32 %i.iu, 1
  store volatile i32 %i.iv, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 1964), align 4, !tbaa !178
  br label %opal_free_list_return.exit.i117

opal_free_list_return.exit.i117:                  ; preds = %opal_free_list_return_mt.exit.sink.split.i.i116, %bb.as, %bb.ar, %bb.aq, %opal_lifo_push_atomic.exit.i.i.i121
  %i.iw = load volatile ptr, ptr %i.bk, align 8, !tbaa !35 ; 2 uses
  %i.ix = load i8, ptr @opal_uses_threads, align 1, !tbaa !31, !range !32, !noundef !33
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.at, label %get_next_send_range.exit127, !prof !34

bb.at:                                            ; preds = %opal_free_list_return.exit.i117
  %i.iz = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bi) #11 ; 0 uses
  br label %get_next_send_range.exit127

get_next_send_range.exit127:                      ; preds = %opal_free_list_return.exit.i117, %bb.at
  %i.ja = icmp eq ptr %7, %i.iw
  br i1 %i.ja, label %.critedge.sink.split, label %.thread

bb.au:                                            ; preds = %bb.am
  %.val102 = load ptr, ptr %i.cl, align 8, !tbaa !64 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.val102, i64 176
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !108
  %i.jd = call i32 %i.jc(ptr noundef %.val102, ptr noundef nonnull %i.dn) #11, !inline_history !5 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %opal_convertor_set_position.exit, %get_next_send_range.exit127, %get_next_send_range.exit, %opal_thread_add_fetch_32.exit111.thread, %opal_thread_add_fetch_32.exit.thread, %bb.au, %opal_thread_add_fetch_32.exit111, %opal_thread_add_fetch_32.exit
  %.384 = phi i64 [ %i.br, %opal_thread_add_fetch_32.exit111.thread ], [ %i.br, %opal_thread_add_fetch_32.exit ], [ %i.br, %opal_thread_add_fetch_32.exit.thread ], [ 0, %get_next_send_range.exit ], [ 0, %get_next_send_range.exit127 ], [ %i.br, %opal_thread_add_fetch_32.exit111 ], [ %i.br, %bb.au ], [ %i.br, %opal_convertor_set_position.exit ]
  %.3 = phi ptr [ %.079157, %opal_thread_add_fetch_32.exit111.thread ], [ %.079157, %opal_thread_add_fetch_32.exit ], [ %.079157, %opal_thread_add_fetch_32.exit.thread ], [ %i.gj, %get_next_send_range.exit ], [ %i.iw, %get_next_send_range.exit127 ], [ %.079157, %opal_thread_add_fetch_32.exit111 ], [ %.079157, %bb.au ], [ %.079157, %opal_convertor_set_position.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not95 = icmp eq ptr %.3, null
  br i1 %.not95, label %.critedge, label %bb.n

.critedge.sink.split:                             ; preds = %get_next_send_range.exit127, %get_next_send_range.exit, %.thread134
  %.287.ph = phi i32 [ -2, %.thread134 ], [ 0, %get_next_send_range.exit ], [ 0, %get_next_send_range.exit127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.o, %.critedge.sink.split, %bb.m, %bb.b
  %.287 = phi i32 [ 0, %bb.b ], [ %.287.ph, %.critedge.sink.split ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %.thread ]
  ret i32 %.287
}

; Function Attrs: nounwind uwtable
define internal void @mca_pml_ob1_frag_completion(ptr nofree noundef readnone captures(address) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162  ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @mca_pml_ob1_output, align 4, !tbaa !38
  %i.f = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef %i.e, i32 noundef 1) #11
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.mca_pml_ob1_frag_completion, i32 noundef %3) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = icmp eq i32 %3, -12
  %i.h = select i1 %i.g, i32 75, i32 %3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %i.h, ptr %i.i, align 8, !tbaa !164
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  tail call fastcc void @mca_bml_base_btl_array_remove(ptr noundef nonnull %i.l, ptr noundef %0)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  %i.n = load i64, ptr %i.m, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %i.p = load volatile i64, ptr %i.o, align 8, !tbaa !40
  %i.q = sub i64 %i.n, %i.p
  br label %mca_pml_ob1_compute_segment_length_base.exit

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !165  ; 5 uses
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %mca_pml_ob1_compute_segment_length_base.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.u, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.v = and i64 %i.u, 3                          ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 4, i64 %i.v
  %n.vec = sub i64 %i.u, %i.x                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi38 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %index
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %index
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %wide.vec = load <4 x i64>, ptr %i.aa, align 8, !tbaa !148
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec39 = load <4 x i64>, ptr %i.ab, align 8, !tbaa !148
  %strided.vec40 = shufflevector <4 x i64> %wide.vec39, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ac = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.ad = add <2 x i64> %strided.vec40, %vec.phi38 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ad, %i.ac
  %i.af = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.i.preheader42

.lr.ph.i.preheader42:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.af, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader42, %.lr.ph.i
  %.09.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader42 ]
  %.078.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %.078.i.ph, %.lr.ph.i.preheader42 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.078.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !148
  %i.aj = add i64 %i.ai, %.09.i                   ; 2 uses
  %i.ak = add nuw i64 %.078.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ak, %i.u
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !252

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.al = add i64 %i.aj, -32
  br label %mca_pml_ob1_compute_segment_length_base.exit

mca_pml_ob1_compute_segment_length_base.exit:     ; preds = %._crit_edge.loopexit.i, %bb.e, %bb.d
  %.0 = phi i64 [ %i.q, %bb.d ], [ -32, %bb.e ], [ %i.al, %._crit_edge.loopexit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 572 ; 4 uses
  %i.an = load i8, ptr @opal_uses_threads, align 1, !tbaa !31, !range !32, !noundef !33
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.f, label %bb.g, !prof !34

bb.f:                                             ; preds = %mca_pml_ob1_compute_segment_length_base.exit
  %i.ap = atomicrmw volatile add ptr %i.am, i32 -1 monotonic, align 4 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 2 uses
  %i.ar = atomicrmw volatile add ptr %i.aq, i64 %.0 monotonic, align 8 ; 0 uses
  br label %opal_thread_add_fetch_size_t.exit

bb.g:                                             ; preds = %mca_pml_ob1_compute_segment_length_base.exit
  %i.as = load volatile i32, ptr %i.am, align 4, !tbaa !38
  %i.at = add nsw i32 %i.as, -1
  store volatile i32 %i.at, ptr %i.am, align 4, !tbaa !38
  %i.au = load volatile i32, ptr %i.am, align 4, !tbaa !38 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 4 uses
  %i.aw = load volatile i64, ptr %i.av, align 8, !tbaa !40
  %i.ax = add i64 %i.aw, %.0
  store volatile i64 %i.ax, ptr %i.av, align 8, !tbaa !40
  %i.ay = load volatile i64, ptr %i.av, align 8, !tbaa !40 ; 0 uses
  br label %opal_thread_add_fetch_size_t.exit

opal_thread_add_fetch_size_t.exit:                ; preds = %bb.f, %bb.g
  %i.az = phi ptr [ %i.aq, %bb.f ], [ %i.av, %bb.g ] ; 2 uses
  fence acquire
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.bb = load volatile i32, ptr %i.ba, align 8, !tbaa !38
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.h, label %opal_thread_add_fetch_size_t.exit._crit_edge

opal_thread_add_fetch_size_t.exit._crit_edge:     ; preds = %opal_thread_add_fetch_size_t.exit
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !31, !range !32
  br label %bb.l

bb.h:                                             ; preds = %opal_thread_add_fetch_size_t.exit
  %i.bd = load volatile i64, ptr %i.az, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !57
  %.not.i26 = icmp ult i64 %i.bd, %i.bf
  %.pre32 = load i8, ptr @opal_uses_threads, align 1, !tbaa !31, !range !32 ; 3 uses
  br i1 %.not.i26, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 564 ; 4 uses
  %i.bh = trunc nuw i8 %.pre32 to i1
  br i1 %i.bh, label %bb.j, label %bb.k, !prof !34

bb.j:                                             ; preds = %bb.i
  %i.bi = atomicrmw volatile add ptr %i.bg, i32 1 monotonic, align 4
  %i.bj = add i32 %i.bi, 1
  br label %lock_send_request.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bk = load volatile i32, ptr %i.bg, align 4, !tbaa !38
  %i.bl = add nsw i32 %i.bk, 1
  store volatile i32 %i.bl, ptr %i.bg, align 4, !tbaa !38
  %i.bm = load volatile i32, ptr %i.bg, align 4, !tbaa !38
  br label %lock_send_request.exit.i

lock_send_request.exit.i:                         ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i32 [ %i.bj, %bb.j ], [ %i.bm, %bb.k ]
  %i.bn = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.bn, label %mca_pml_ob1_send_request_schedule.exit.sink.split, label %bb.l

bb.l:                                             ; preds = %opal_thread_add_fetch_size_t.exit._crit_edge, %lock_send_request.exit.i, %bb.h
  %i.bo = phi i8 [ %.pre, %opal_thread_add_fetch_size_t.exit._crit_edge ], [ %.pre32, %lock_send_request.exit.i ], [ %.pre32, %bb.h ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 564 ; 12 uses
  %i.bq = trunc nuw i8 %i.bo to i1
  br i1 %i.bq, label %bb.m, label %bb.n, !prof !34

bb.m:                                             ; preds = %bb.l
  %i.br = atomicrmw volatile add ptr %i.bp, i32 1 monotonic, align 4
end_hunk_0
