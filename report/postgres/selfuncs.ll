Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/selfuncs?download=true
inline.NumInlined: 290
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@get_actual_variable_endpoint:bb.a
  %i.s = icmp sgt i32 %i.r, 100
  br i1 %i.s, label %..thread.loopexit_crit_edge56, label %bb.k, !llvm.loop !81

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef %6) #12, !inline_history !82
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not46 = icmp eq ptr %i.y, null
  br i1 %.not46, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.z = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.aa = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.20) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 7258, ptr noundef nonnull @__func__.get_actual_variable_endpoint) #12
  unreachable

bb.g:                                             ; preds = %.loopexit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.ac = load i8, ptr %i.ab, align 8, !range !5, !noundef !6
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.af = load ptr, ptr %i.ae, align 8
  call void @index_deform_tuple(ptr noundef nonnull %i.y, ptr noundef %i.af, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %i.ag = load i8, ptr %i.c, align 16, !range !5, !noundef !6
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.al) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 7274, ptr noundef nonnull @__func__.get_actual_variable_endpoint) #12
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.an = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %7, ptr @CurrentMemoryContext, align 8
  %i.ao = load i64, ptr %i.b, align 16
  %i.ap = sext i16 %4 to i32
  %i.aq = call i64 @datumCopy(i64 noundef %i.ao, i1 noundef zeroext %5, i32 noundef %i.ap) #12
  store i64 %i.aq, ptr %8, align 8
  store ptr %i.an, ptr @CurrentMemoryContext, align 8
  br label %.thread

bb.k:                                             ; preds = %bb.d, %bb.c
  %.234 = phi i32 [ %i.n, %bb.d ], [ %.03254, %bb.c ]
  %.2 = phi i32 [ %i.r, %bb.d ], [ %.03155, %bb.c ]
  %i.ar = call ptr @index_getnext_tid(ptr noundef %i.f, i32 noundef %2) #12 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %.thread, label %.lr.ph

..thread.loopexit_crit_edge56:                    ; preds = %bb.d
  br label %.thread, !llvm.loop !81

.thread:                                          ; preds = %bb.k, %bb.a, %..thread.loopexit_crit_edge56, %bb.j, %bb.g
  %.237 = phi i1 [ true, %bb.j ], [ false, %bb.g ], [ false, %bb.a ], [ false, %..thread.loopexit_crit_edge56 ], [ false, %bb.k ]
  %i.as = load i32, ptr %i.a, align 4             ; 2 uses
  %.not47 = icmp eq i32 %i.as, 0
  br i1 %.not47, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  call void @ReleaseBuffer(i32 noundef %i.as) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  call void @index_endscan(ptr noundef %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  ret i1 %.237
}

declare void @ExecDropSingleTupleTableSlot(ptr noundef) local_unnamed_addr #2

declare void @table_close(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @MemoryContextDelete(ptr noundef) local_unnamed_addr #2

declare ptr @GlobalVisTestFor(ptr noundef) local_unnamed_addr #2

declare ptr @index_beginscan(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @index_rescan(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @index_getnext_tid(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @visibilitymap_get_status(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @index_fetch_heap(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @index_deform_tuple(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ReleaseBuffer(i32 noundef) local_unnamed_addr #2

declare void @index_endscan(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @gincost_pattern(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -32768, 32768) %1, i32 noundef %2, i64 noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.FmgrInfo, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store ptr null, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = sext i32 %1 to i64                       ; 8 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4
  call void @get_op_opfamily_properties(i32 noundef %2, i32 noundef %i.m, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.k
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.k
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = call i32 @get_opfamily_proc(i32 noundef %i.p, i32 noundef %i.t, i32 noundef %i.t, i16 noundef signext 3) #12 ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.w = add nsw i32 %1, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = call ptr @get_rel_name(i32 noundef %i.y) #12
  %i.aa = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.23, i32 noundef 3, i32 noundef %i.w, ptr noundef %i.z) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 8408, ptr noundef nonnull @__func__.gincost_pattern) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.k
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %.not42 = icmp eq i32 %i.ae, 0
  %. = select i1 %.not42, i32 100, i32 %i.ae
  call void @fmgr_info(i32 noundef %i.u, ptr noundef nonnull %5) #12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.k
  %i.ai = load ptr, ptr %i.ah, align 8
  call void @set_fn_opclass_options(ptr noundef nonnull %5, ptr noundef %i.ai) #12
  %i.aj = ptrtoint ptr %i.d to i64
  %i.ak = load i32, ptr %i.a, align 4
  %i.al = and i32 %i.ak, 65535
  %i.am = zext nneg i32 %i.al to i64
  %i.an = ptrtoint ptr %i.e to i64
  %i.ao = ptrtoint ptr %i.f to i64
  %i.ap = ptrtoint ptr %i.g to i64
  %i.aq = ptrtoint ptr %i.h to i64
  %i.ar = call i64 @FunctionCall7Coll(ptr noundef nonnull %5, i32 noundef %., i64 noundef %3, i64 noundef %i.aj, i64 noundef %i.am, i64 noundef %i.an, i64 noundef %i.ao, i64 noundef %i.ap, i64 noundef %i.aq) #12 ; 0 uses
  %i.as = load i32, ptr %i.d, align 4             ; 7 uses
  %i.at = icmp sgt i32 %i.as, 0                   ; 2 uses
  %i.au = load i32, ptr %i.h, align 4             ; 2 uses
  %i.av = icmp ne i32 %i.au, 0
  %or.cond.not = select i1 %i.at, i1 true, i1 %i.av ; 2 uses
  br i1 %or.cond.not, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.c
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aw = load ptr, ptr %i.e, align 8             ; 4 uses
  %.not43 = icmp eq ptr %i.aw, null
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  br i1 %.not43, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.promoted = load double, ptr %i.az, align 8    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.as to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ba = icmp eq i32 %i.as, 1
  br i1 %i.ba, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %6 = load <2 x double>, ptr %i.ay, align 8      ; 2 uses
  %xtraiter58 = and i32 %i.as, 7                  ; 3 uses
  %i.bb = icmp ult i32 %i.as, 8
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter64 = and i32 %i.as, 2147483640
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.split.us.new
  %i.bc = phi <2 x double> [ %6, %.lr.ph.split.us.new ], [ %i.bk, %bb.d ]
  %niter65 = phi i32 [ 0, %.lr.ph.split.us.new ], [ %niter65.next.7, %bb.d ]
  %i.bd = fadd <2 x double> %i.bc, splat (double 1.000000e+00)
  %i.be = fadd <2 x double> %i.bd, splat (double 1.000000e+00)
  %i.bf = fadd <2 x double> %i.be, splat (double 1.000000e+00)
  %i.bg = fadd <2 x double> %i.bf, splat (double 1.000000e+00)
  %i.bh = fadd <2 x double> %i.bg, splat (double 1.000000e+00)
  %i.bi = fadd <2 x double> %i.bh, splat (double 1.000000e+00)
  %i.bj = fadd <2 x double> %i.bi, splat (double 1.000000e+00)
  %i.bk = fadd <2 x double> %i.bj, splat (double 1.000000e+00) ; 3 uses
  %niter65.next.7 = add nuw nsw i32 %niter65, 8   ; 2 uses
  %niter65.ncmp.7 = icmp eq i32 %niter65.next.7, %unroll_iter64
  br i1 %niter65.ncmp.7, label %._crit_edge.split.us.unr-lcssa, label %bb.d, !llvm.loop !83

._crit_edge.split.us.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod61.not = icmp eq i32 %xtraiter58, 0
  br i1 %lcmp.mod61.not, label %._crit_edge.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.unr-lcssa, %.lr.ph.split.us
  %.epil.init60 = phi <2 x double> [ %6, %.lr.ph.split.us ], [ %i.bk, %._crit_edge.split.us.unr-lcssa ]
  %lcmp.mod63 = icmp ne i32 %xtraiter58, 0
  call void @llvm.assume(i1 %lcmp.mod63)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %i.bl = phi <2 x double> [ %.epil.init60, %.epil.preheader ], [ %i.bm, %bb.e ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.bm = fadd <2 x double> %i.bl, splat (double 1.000000e+00) ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter58
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.us, label %bb.e, !llvm.loop !84

._crit_edge.split.us:                             ; preds = %bb.e, %._crit_edge.split.us.unr-lcssa
  %.lcssa = phi <2 x double> [ %i.bk, %._crit_edge.split.us.unr-lcssa ], [ %i.bm, %bb.e ]
  store <2 x double> %.lcssa, ptr %i.ay, align 8
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %bb.j, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %i.bn = phi double [ %.promoted, %.lr.ph.split.preheader.new ], [ %i.ce, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv
  %i.bp = load i8, ptr %i.bo, align 1, !range !5, !noundef !6
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split
  %i.br = load double, ptr %i.ax, align 8
  %i.bs = fadd double %i.br, 1.000000e+02
  store double %i.bs, ptr %i.ax, align 8
  br label %.lr.ph.split.1

bb.g:                                             ; preds = %.lr.ph.split
  %i.bt = load double, ptr %i.ay, align 8
  %i.bu = fadd double %i.bt, 1.000000e+00
  store double %i.bu, ptr %i.ay, align 8
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.g, %bb.f
  %i.bv = fadd double %i.bn, 1.000000e+00         ; 2 uses
  store double %i.bv, ptr %i.az, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !range !5, !noundef !6
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.1
  %i.ca = load double, ptr %i.ay, align 8
  %i.cb = fadd double %i.ca, 1.000000e+00
  store double %i.cb, ptr %i.ay, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.1
  %i.cc = load double, ptr %i.ax, align 8
  %i.cd = fadd double %i.cc, 1.000000e+02
  store double %i.cd, ptr %i.ax, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ce = fadd double %i.bv, 1.000000e+00         ; 3 uses
  store double %i.ce, ptr %i.az, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !83

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi double [ %.promoted, %.lr.ph.split.preheader ], [ %i.ce, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod57 = trunc i32 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod57)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv.epil.init
  %i.cg = load i8, ptr %i.cf, align 1, !range !5, !noundef !6
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.epil.preheader
  %i.ci = load double, ptr %i.ay, align 8
  %i.cj = fadd double %i.ci, 1.000000e+00
  store double %i.cj, ptr %i.ay, align 8
  br label %._crit_edge.loopexit.epilog-lcssa

bb.l:                                             ; preds = %.lr.ph.split.epil.preheader
  %i.ck = load double, ptr %i.ax, align 8
  %i.cl = fadd double %i.ck, 1.000000e+02
  store double %i.cl, ptr %i.ax, align 8
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.l, %bb.k
  %i.cm = fadd double %.epil.init, 1.000000e+00
  store double %i.cm, ptr %i.az, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %._crit_edge.split.us, %.preheader
  switch i32 %i.au, label %bb.o [
    i32 0, label %bb.m
    i32 1, label %bb.n
  ]

bb.m:                                             ; preds = %._crit_edge
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.k
  store i8 1, ptr %i.co, align 1
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %i.k
  store i8 1, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.cs = load <2 x double>, ptr %i.cr, align 8
  %i.ct = fadd <2 x double> %i.cs, splat (double 1.000000e+00)
  store <2 x double> %i.ct, ptr %i.cr, align 8
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.cu = getelementptr inbounds i8, ptr %4, i64 %i.k
  store i8 1, ptr %i.cu, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i1 %or.cond.not
}

declare i32 @get_opfamily_proc(i32 noundef, i32 noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @get_rel_name(i32 noundef) local_unnamed_addr #2

declare void @set_fn_opclass_options(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FunctionCall7Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { cold nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !7}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"llvm.loop.mustprogress"}
end_hunk_0
