Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pl_exec?download=true
inline.NumInlined: 363
inline.NumDeleted: 86
begin_hunk_0_@exec_eval_datum:bb.a
  store i64 %i.ai, ptr %4, align 8
  store i8 0, ptr %5, align 1
  store ptr %i.v, ptr @CurrentMemoryContext, align 8
  br label %bb.x

bb.i:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %4, align 8
  store i8 1, ptr %5, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load i32, ptr %i.am, align 8
  store i32 %i.an, ptr %2, align 4
  store i32 -1, ptr %3, align 4
  br label %bb.x

bb.k:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 52
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 5
  %i.ar = icmp eq i32 %i.aq, 0                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.at = ptrtoint ptr %i.as to i64
  %storemerge80 = select i1 %i.ar, i64 0, i64 %i.at
  %storemerge = zext i1 %i.ar to i8
  store i64 %storemerge80, ptr %4, align 8
  store i8 %storemerge, ptr %5, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load i32, ptr %i.au, align 8            ; 2 uses
  %.not81 = icmp eq i32 %i.av, 2249
  br i1 %.not81, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.av, ptr %2, align 4
  store i32 -1, ptr %3, align 4
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.aj, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 60
  %i.ay = load i32, ptr %i.ax, align 4
  store i32 %i.ay, ptr %2, align 4
  %i.az = load ptr, ptr %i.aj, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load i32, ptr %i.ba, align 8
  store i32 %i.bb, ptr %3, align 4
  br label %bb.x

bb.n:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @instantiate_empty_record_variable(ptr noundef nonnull %0, ptr noundef nonnull %i.bi)
  %i.bm = load ptr, ptr %i.bj, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi ptr [ %i.bm, %bb.o ], [ %i.bk, %bb.n ] ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.0, i64 80 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8
  %.not = icmp eq i64 %i.bo, %i.bq
  br i1 %.not, label %bb.t, label %bb.q, !prof !8

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = tail call zeroext i1 @expanded_record_lookup_field(ptr noundef nonnull %.0, ptr noundef %i.bs, ptr noundef nonnull %i.bt) #10
  br i1 %i.bu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #11 ; 0 uses
  %i.bw = tail call i32 @errcode(i32 noundef 50360452) #10 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load ptr, ptr %i.br, align 8
  %i.ca = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16, ptr noundef %i.by, ptr noundef %i.bz) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 5513, ptr noundef nonnull @__func__.exec_eval_datum) #10
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cb = load i64, ptr %i.bp, align 8
  store i64 %i.cb, ptr %i.bn, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ce = load i32, ptr %i.cd, align 4
  store i32 %i.ce, ptr %2, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cg = load i32, ptr %i.cf, align 8
  store i32 %i.cg, ptr %3, align 4
  %i.ch = load i32, ptr %i.cc, align 8            ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0, i64 52
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = and i32 %i.cj, 4
  %.not.i = icmp ne i32 %i.ck, 0
  %i.cl = icmp sgt i32 %i.ch, 0
  %or.cond.i = and i1 %i.cl, %.not.i
  br i1 %or.cond.i, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %.0, i64 104
  %i.cn = load i32, ptr %i.cm, align 8
  %.not13.i = icmp sgt i32 %i.ch, %i.cn
  br i1 %.not13.i, label %.critedge.i, label %bb.v, !prof !9

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %.0, i64 96
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = add nsw i32 %i.ch, -1
  %i.cr = zext nneg i32 %i.cq to i64              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !range !5, !noundef !6
  store i8 %i.ct, ptr %5, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.0, i64 88
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cr
  %i.cx = load i64, ptr %i.cw, align 8
  br label %expanded_record_get_field.exit

.critedge.i:                                      ; preds = %bb.u, %bb.t
  %i.cy = tail call i64 @expanded_record_fetch_field(ptr noundef nonnull %.0, i32 noundef %i.ch, ptr noundef %5) #10
  br label %expanded_record_get_field.exit

expanded_record_get_field.exit:                   ; preds = %bb.v, %.critedge.i
  %.0.i = phi i64 [ %i.cx, %bb.v ], [ %i.cy, %.critedge.i ]
  store i64 %.0.i, ptr %4, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  %i.cz = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #11 ; 0 uses
  %i.da = load i32, ptr %1, align 4
  %i.db = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i32 noundef %i.da) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 5529, ptr noundef nonnull @__func__.exec_eval_datum) #10
  unreachable

bb.x:                                             ; preds = %bb.j, %bb.m, %bb.l, %expanded_record_get_field.exit, %bb.h, %bb.c
  ret void
}

declare i64 @DirectFunctionCall1Coll(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @namein(ptr noundef) #2

declare ptr @get_namespace_name(i32 noundef) local_unnamed_addr #2

declare ptr @construct_md_array(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i8 noundef signext) local_unnamed_addr #2

declare ptr @GetCommandTagName(i32 noundef) local_unnamed_addr #2

declare ptr @BlessTupleDesc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_tuple_from_row(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load i32, ptr %2, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = sext i32 %i.c to i64                     ; 2 uses
  %i.k = shl nsw i64 %i.j, 3
  %i.l = tail call ptr @MemoryContextAllocZero(ptr noundef %i.i, i64 noundef %i.k) #10 ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @MemoryContextAlloc(ptr noundef %i.o, i64 noundef %i.j) #10 ; 3 uses
  %i.q = icmp sgt i32 %i.c, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %wide.trip.count = zext nneg i32 %i.c to i64
  %.pre36 = load i32, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %select.unfold
  %3 = phi i32 [ %.pre36, %.lr.ph ], [ %4, %select.unfold ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %select.unfold ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.t = sext i32 %3 to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = getelementptr i8, ptr %2, i64 %i.u
  %i.w = getelementptr [100 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = getelementptr i8, ptr %i.w, i64 123
  %i.y = load i8, ptr %i.x, align 1, !range !5, !noundef !6
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  store i8 1, ptr %i.aa, align 1
  %.pre = load i32, ptr %2, align 8
  br label %select.unfold

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.r, align 8
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  call void @exec_eval_datum(ptr noundef %0, ptr noundef %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.ai, ptr noundef %i.aj)
  %i.ak = load i32, ptr %i.a, align 4
  %i.al = load i32, ptr %2, align 8               ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = getelementptr i8, ptr %2, i64 %i.an
  %i.ap = getelementptr [100 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = getelementptr i8, ptr %i.ap, i64 100
  %i.ar = load i32, ptr %i.aq, align 4
  %.not32 = icmp eq i32 %i.ak, %i.ar
  br i1 %.not32, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

select.unfold:                                    ; preds = %bb.e, %bb.d
  %4 = phi i32 [ %i.al, %bb.e ], [ %.pre, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !35

._crit_edge:                                      ; preds = %select.unfold, %bb.b
  %i.as = tail call ptr @heap_form_tuple(ptr noundef nonnull %2, ptr noundef %i.l, ptr noundef %i.p) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a, %._crit_edge
  %.2 = phi ptr [ %i.as, %._crit_edge ], [ null, %bb.f ], [ null, %bb.a ]
  ret ptr %.2
}

declare ptr @MemoryContextAllocZero(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @heap_form_tuple(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @HeapTupleHeaderGetDatum(ptr noundef) local_unnamed_addr #2

declare i64 @expanded_record_fetch_field(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @exec_init_tuple_store(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 403
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #11 ; 0 uses
  %i.f = tail call i32 @errcode(i32 noundef 1088) #10 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 3714, ptr noundef nonnull @__func__.exec_init_tuple_store) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = and i32 %i.i, 2
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef nonnull @.str.2) #11 ; 0 uses
  %i.o = tail call i32 @errcode(i32 noundef 1088) #10 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 3720, ptr noundef nonnull @__func__.exec_init_tuple_store) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.r, ptr @CurrentMemoryContext, align 8
  %i.t = load ptr, ptr @CurrentResourceOwner, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8
  store ptr %i.v, ptr @CurrentResourceOwner, align 8
  %i.w = and i32 %i.i, 4
  %i.x = icmp ne i32 %i.w, 0
  %i.y = load i32, ptr @work_mem, align 4
  %i.z = tail call ptr @tuplestore_begin_heap(i1 noundef zeroext %i.x, i1 noundef zeroext false, i32 noundef %i.y) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.z, ptr %i.aa, align 8
  store ptr %i.t, ptr @CurrentResourceOwner, align 8
  store ptr %i.s, ptr @CurrentMemoryContext, align 8
  %i.ab = load ptr, ptr %i.k, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ab, ptr %i.ac, align 8
  ret void
}

declare i64 @MakeExpandedObjectReadOnlyInternal(i64 noundef) local_unnamed_addr #2

declare void @tuplestore_putvalues(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @deconstruct_expanded_record(ptr noundef) local_unnamed_addr #2

declare void @tuplestore_puttuple(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @tuplestore_begin_heap(i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i64 @tuplestore_tuple_count(ptr noundef) local_unnamed_addr #2

declare ptr @CreateDestReceiver(i32 noundef) local_unnamed_addr #2

declare void @SetTuplestoreDestReceiverParams(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @convert_value_to_string(ptr %.200.val.40.val, i64 noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %.200.val.40.val, ptr @CurrentMemoryContext, align 8
  call void @getTypeOutputInfo(i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %i.d = load i32, ptr %i.a, align 4
  %i.e = call ptr @OidOutputFunctionCall(i32 noundef %i.d, i64 noundef %0) #10
  store ptr %i.c, ptr @CurrentMemoryContext, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %i.e
}

declare ptr @MemoryContextStrdup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @exec_eval_using_params(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %.critedge, label %list_length.exit

list_length.exit:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %get_stmt_mcontext.exit

bb.b:                                             ; preds = %list_length.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.k, ptr noundef nonnull @.str.41, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #10 ; 2 uses
  store ptr %i.l, ptr %i.g, align 8
  br label %get_stmt_mcontext.exit

get_stmt_mcontext.exit:                           ; preds = %list_length.exit, %bb.b
  %i.m = phi ptr [ %i.l, %bb.b ], [ %i.h, %list_length.exit ] ; 2 uses
  %i.n = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.m, ptr @CurrentMemoryContext, align 8
  %i.o = tail call ptr @makeParamList(i32 noundef %i.f) #10 ; 3 uses
  store ptr %i.n, ptr @CurrentMemoryContext, align 8
  %i.p = load i32, ptr %i.e, align 4
  %.not38 = icmp sgt i32 %i.p, 0
  br i1 %.not38, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %get_stmt_mcontext.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %exec_eval_cleanup.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %exec_eval_cleanup.exit ] ; 3 uses
  %i.u = load ptr, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i16 1, ptr %i.y, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 3 uses
  %i.ab = call fastcc i64 @exec_eval_expr(ptr noundef nonnull %0, ptr noundef %i.w, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, ptr noundef %i.a)
  store i64 %i.ab, ptr %i.x, align 8
  %i.ac = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.m, ptr @CurrentMemoryContext, align 8
  %i.ad = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 705
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store i32 25, ptr %i.aa, align 4
  %i.af = load i8, ptr %i.z, align 8, !range !5, !noundef !6
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load i64, ptr %i.x, align 8
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = call ptr @cstring_to_text(ptr noundef %i.ai) #10
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %i.x, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.al = load i8, ptr %i.z, align 8, !range !5, !noundef !6
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %bb.g
end_hunk_0
