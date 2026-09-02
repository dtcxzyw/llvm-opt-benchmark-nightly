Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/jsonfuncs?download=true
inline.NumInlined: 240
inline.NumDeleted: 44
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@populate_composite:bb.a
  call void @hash_destroy(ptr noundef %i.bm) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %update_cached_tupdesc.exit
  %.1 = phi i64 [ %i.cc, %bb.w ], [ 0, %update_cached_tupdesc.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = icmp ne i32 %1, %i.ce
  %i.cg = icmp ne i32 %1, 2249
  %or.cond = and i1 %i.cg, %i.cf
  br i1 %or.cond, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %5, align 1, !range !7, !noundef !8
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = call zeroext i1 @domain_check_safe(i64 noundef %.1, i1 noundef zeroext %i.ci, i32 noundef %1, ptr noundef nonnull %i.cj, ptr noundef %2, ptr noundef %6) #13
  br i1 %i.ck, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %5, align 1
  br label %bb.aa

.critedge:                                        ; preds = %bb.t, %JsValueToJsObject.exit
  store i8 1, ptr %5, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.y, %.critedge, %bb.z
  %.131 = phi i64 [ 0, %.critedge ], [ 0, %bb.z ], [ %.1, %bb.y ], [ %.1, %bb.x ]
  ret i64 %.131
}

declare ptr @SearchSysCache1(i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @getBaseTypeAndTypmod(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @getTypeInputInfo(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @fmgr_info_cxt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ReleaseSysCache(ptr noundef) local_unnamed_addr #2

declare void @escape_json_with_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @escape_json(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @InputFunctionCallSafe(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @initArrayResult(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @populate_array_dim_jsonb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.JsonbValue, align 8         ; 11 uses
  %4 = alloca %struct.JsValue, align 8            ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  tail call void @check_stack_depth() #13
  %i.e = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.e, 18
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4
  %i.g = and i32 %i.f, 1342177280
  %or.cond = icmp eq i32 %i.g, 1073741824
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = add i32 %2, -1
  tail call fastcc void @populate_array_report_expected_array(ptr noundef nonnull %0, i32 noundef %i.h)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call ptr @JsonbIteratorInit(ptr noundef nonnull %i.d) #13
  store ptr %i.i, ptr %i.b, align 8
  %i.j = call i32 @JsonbIteratorNext(ptr noundef nonnull %i.b, ptr noundef nonnull %3, i1 noundef zeroext true) #13 ; 0 uses
  %i.k = call i32 @JsonbIteratorNext(ptr noundef nonnull %i.b, ptr noundef nonnull %3, i1 noundef zeroext true) #13 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %populate_array_assign_ndims.exit.thread

bb.e:                                             ; preds = %bb.d
  switch i32 %i.k, label %._crit_edge [
    i32 5, label %bb.h
    i32 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %3, align 8
  %.not28 = icmp eq i32 %i.o, 18
  br i1 %.not28, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 1073741824
  %.not29 = icmp eq i32 %i.s, 0
  br i1 %.not29, label %bb.h, label %populate_array_assign_ndims.exit.thread.thread

populate_array_assign_ndims.exit.thread.thread:   ; preds = %bb.g
  store i8 0, ptr %4, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.t, align 8
  br label %.lr.ph

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f
  %i.u = icmp sgt i32 %2, 0
  br i1 %i.u, label %bb.i, label %populate_array_assign_ndims.exit

bb.i:                                             ; preds = %bb.h
  store i32 %2, ptr %i.l, align 8
  %i.v = zext nneg i32 %2 to i64                  ; 4 uses
  %i.w = call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.v) #13
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  store ptr %i.w, ptr %i.x, align 8
  %i.y = call ptr @palloc0_mul(i64 noundef 4, i64 noundef %i.v) #13
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.y, ptr %i.z, align 8
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.aa = icmp ult i32 %2, 4
  br i1 %i.aa, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %i.v, 2147483644
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.3, %bb.j ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.j ]
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i
  store i32 -1, ptr %i.ac, align 4
  %i.ad = load ptr, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 -1, ptr %i.af, align 4
  %i.ag = load ptr, ptr %i.x, align 8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 -1, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.x, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 -1, ptr %i.al, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa, label %bb.j, !llvm.loop !1

populate_array_assign_ndims.exit:                 ; preds = %bb.h
  call fastcc void @populate_array_report_expected_array(ptr noundef nonnull %0, i32 noundef %2)
  br label %.loopexit

populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %populate_array_assign_ndims.exit.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa, %bb.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i.3, %populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod35 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod35)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.k ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.am = load ptr, ptr %i.x, align 8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i.epil
  store i32 -1, ptr %i.an, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %populate_array_assign_ndims.exit.thread, label %bb.k, !llvm.loop !47

populate_array_assign_ndims.exit.thread:          ; preds = %populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa, %bb.k, %bb.d
  store i8 0, ptr %4, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.ao, align 8
  %i.ap = icmp eq i32 %i.k, 3
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %populate_array_assign_ndims.exit.thread.thread, %populate_array_assign_ndims.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = add i32 %2, -1
  %i.aw = sext i32 %i.av to i64
  %5 = add i32 %2, 1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.r
  %i.ax = load i32, ptr %i.l, align 8             ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 1
  %.not30 = icmp slt i32 %2, %i.ax
  %or.cond31 = or i1 %i.ay, %.not30
  br i1 %or.cond31, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.az = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = load ptr, ptr %i.ar, align 8
  %i.bg = load ptr, ptr %i.as, align 8
  %i.bh = call fastcc i64 @populate_record_field(ptr noundef %i.ba, i32 noundef %i.bc, i32 noundef %i.be, ptr noundef null, ptr noundef %i.bf, i64 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef %i.bg, i1 noundef zeroext false), !inline_history !2
  %i.bi = load ptr, ptr %i.as, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %populate_array_element.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = icmp eq i32 %i.bj, 468
  br i1 %i.bk, label %bb.o, label %populate_array_element.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = load i8, ptr %i.bl, align 4, !range !7, !noundef !8
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %populate_array_element.exit, label %populate_array_element.exit.thread

populate_array_element.exit.thread:               ; preds = %bb.m, %bb.n, %bb.o
  %i.bo = load ptr, ptr %0, align 8
  %i.bp = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = load ptr, ptr %i.aq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.at, align 8
  %i.bv = call ptr @accumArrayResult(ptr noundef %i.bo, i64 noundef %i.bh, i1 noundef zeroext %i.bq, i32 noundef %i.bt, ptr noundef %i.bu) #13, !inline_history !2 ; 0 uses
  %i.bw = load ptr, ptr %i.au, align 8
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.aw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.r

populate_array_element.exit:                      ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit

bb.p:                                             ; preds = %bb.l
  %i.ca = call fastcc zeroext i1 @populate_array_dim_jsonb(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %5)
  br i1 %i.ca, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cb = call fastcc zeroext i1 @populate_array_check_dimension(ptr noundef nonnull %0, i32 noundef %2)
  br i1 %i.cb, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %populate_array_element.exit.thread, %bb.q
  %i.cc = call i32 @JsonbIteratorNext(ptr noundef nonnull %i.b, ptr noundef nonnull %3, i1 noundef zeroext true) #13
  %i.cd = icmp eq i32 %i.cc, 3
  br i1 %i.cd, label %bb.l, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.r, %bb.e, %populate_array_assign_ndims.exit.thread
  %i.ce = call i32 @JsonbIteratorNext(ptr noundef nonnull %i.b, ptr noundef nonnull %3, i1 noundef zeroext true) #13 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.p, %populate_array_element.exit, %populate_array_assign_ndims.exit, %._crit_edge, %bb.c
  %.022 = phi i1 [ false, %bb.c ], [ false, %populate_array_assign_ndims.exit ], [ true, %._crit_edge ], [ false, %populate_array_element.exit ], [ false, %bb.p ], [ false, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i1 %.022
}

declare i64 @makeMdArrayResult(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 24) i32 @populate_array_object_start(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load i32, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %i.c, 0
  br i1 %i.i, label %bb.c, label %populate_array_assign_ndims.exit.thread.sink.split

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %i.f, align 8
  %i.j = zext nneg i32 %i.c to i64                ; 4 uses
  %i.k = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.j) #13
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 6 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = tail call ptr @palloc0_mul(i64 noundef 4, i64 noundef %i.j) #13
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.m, ptr %i.n, align 8
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.o = icmp ult i32 %i.c, 4
  br i1 %i.o, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.j, 2147483644
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.3, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.d ]
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  store i32 -1, ptr %i.q, align 4
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 -1, ptr %i.t, align 4
  %i.u = load ptr, ptr %i.l, align 8
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 -1, ptr %i.w, align 4
  %i.x = load ptr, ptr %i.l, align 8
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 -1, ptr %i.z, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1

bb.e:                                             ; preds = %bb.a
  %i.aa = icmp slt i32 %i.c, %i.g
  br i1 %i.aa, label %populate_array_assign_ndims.exit.thread.sink.split, label %populate_array_assign_ndims.exit.thread

populate_array_assign_ndims.exit.thread.sink.split: ; preds = %bb.e, %bb.b
  tail call fastcc void @populate_array_report_expected_array(ptr noundef nonnull %i.e, i32 noundef %i.c)
  br label %populate_array_assign_ndims.exit.thread

populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %populate_array_assign_ndims.exit.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa, %bb.c
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.3, %populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.epil
  store i32 -1, ptr %i.ac, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %populate_array_assign_ndims.exit.thread, label %bb.f, !llvm.loop !49

populate_array_assign_ndims.exit.thread:          ; preds = %populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa, %bb.f, %populate_array_assign_ndims.exit.thread.sink.split, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 23, %populate_array_assign_ndims.exit.thread.sink.split ], [ 0, %bb.f ], [ 0, %populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 24) i32 @populate_array_array_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %populate_array_assign_ndims.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = add i32 %i.e, 1                          ; 4 uses
  %i.j = icmp ult i32 %i.e, 2147483647
  br i1 %i.j, label %bb.c, label %populate_array_assign_ndims.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.i, ptr %i.f, align 8
  %i.k = zext nneg i32 %i.i to i64                ; 4 uses
  %i.l = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.k) #13
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 6 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = tail call ptr @palloc0_mul(i64 noundef 4, i64 noundef %i.k) #13
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.n, ptr %i.o, align 8
  %xtraiter = and i64 %i.k, 3                     ; 3 uses
  %i.p = icmp ult i32 %i.i, 4
  br i1 %i.p, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.k, 2147483644
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.3, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.d ]
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  store i32 -1, ptr %i.r, align 4
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 -1, ptr %i.u, align 4
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 -1, ptr %i.x, align 4
  %i.y = load ptr, ptr %i.m, align 8
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 -1, ptr %i.aa, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1

populate_array_assign_ndims.exit:                 ; preds = %bb.b
  tail call fastcc void @populate_array_report_expected_array(ptr noundef nonnull %i.b, i32 noundef %i.i)
  br label %bb.h

populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %populate_array_assign_ndims.exit.thread.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa, %bb.c
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.3, %populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ab = load ptr, ptr %i.m, align 8
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.epil
  store i32 -1, ptr %i.ac, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %populate_array_assign_ndims.exit.thread.loopexit, label %bb.e, !llvm.loop !50

populate_array_assign_ndims.exit.thread.loopexit: ; preds = %bb.e, %populate_array_assign_ndims.exit.thread.loopexit.unr-lcssa
end_hunk_0
