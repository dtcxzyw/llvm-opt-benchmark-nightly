Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/setrefs?download=true
inline.NumInlined: 129
inline.NumDeleted: 21
begin_hunk_0_@set_mergeappend_references:bb.a
  %i.bq = tail call i32 @bms_next_member(ptr noundef %i.bo, i32 noundef -1) #6 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, -1
  br i1 %i.br, label %.lr.ph.i41, label %offset_relid_set.exit43

.lr.ph.i41:                                       ; preds = %.preheader.i39, %.lr.ph.i41
  %i.bs = phi i32 [ %i.bv, %.lr.ph.i41 ], [ %i.bq, %.preheader.i39 ] ; 2 uses
  %.0812.i42 = phi ptr [ %i.bu, %.lr.ph.i41 ], [ null, %.preheader.i39 ]
  %i.bt = add i32 %i.bs, %2
  %i.bu = tail call ptr @bms_add_member(ptr noundef %.0812.i42, i32 noundef %i.bt) #6 ; 2 uses
  %i.bv = tail call i32 @bms_next_member(ptr noundef %i.bo, i32 noundef %i.bs) #6 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %.lr.ph.i41, label %offset_relid_set.exit43, !llvm.loop !1

offset_relid_set.exit43:                          ; preds = %.lr.ph.i41, %list_length.exit.thread, %.preheader.i39
  %.09.i40 = phi ptr [ %i.bo, %list_length.exit.thread ], [ null, %.preheader.i39 ], [ %i.bu, %.lr.ph.i41 ]
  store ptr %.09.i40, ptr %i.bn, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8            ; 2 uses
  %i.bz = icmp sgt i32 %i.by, -1
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %offset_relid_set.exit43
  %i.ca = tail call fastcc i32 @register_partpruneinfo(ptr noundef %0, i32 noundef %i.by, i32 noundef %2)
  store i32 %i.ca, ptr %i.bx, align 8
  br label %bb.h

bb.h:                                             ; preds = %.thread, %offset_relid_set.exit43, %bb.g
  %.1 = phi ptr [ %i.u, %.thread ], [ %1, %bb.g ], [ %1, %offset_relid_set.exit43 ]
  ret ptr %.1
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #3

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @fix_scan_expr_mutator(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse.backedge
  %.tr63 = phi ptr [ %0, %.lr.ph ], [ %.tr.be, %tailrecurse.backedge ] ; 11 uses
  %i.c = load i32, ptr %.tr63, align 4            ; 2 uses
  switch i32 %i.c, label %bb.o [
    i32 6, label %bb.c
    i32 8, label %bb.g
    i32 9, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @palloc(i64 noundef 56) #6 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(56) %.tr63, i64 56, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add i32 %i.i, %i.f
  store i32 %i.j, ptr %i.e, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %.not45 = icmp eq i32 %i.l, 0
  br i1 %.not45, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add i32 %i.n, %i.l
  store i32 %i.o, ptr %i.k, align 8
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %1, align 8
  %i.q = tail call fastcc ptr @fix_param_node(ptr noundef %i.p, ptr noundef %.tr63)
  br label %.loopexit

bb.h:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 592
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.tr63, i64 40
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %.thread, label %list_length.exit.i

list_length.exit.i:                               ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.j, label %.thread

bb.j:                                             ; preds = %list_length.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %i.v, i64 16
  %.val.i = load ptr, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %.val.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.tr63, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.i
  %i.ah = phi i32 [ %i.aa, %.lr.ph.i ], [ %i.at, %bb.m ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %i.ai = load ptr, ptr %i.ae, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = load i32, ptr %i.af, align 4
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load ptr, ptr %i.ag, align 8
  %i.as = tail call zeroext i1 @equal(ptr noundef %i.aq, ptr noundef %i.ar) #6
  br i1 %i.as, label %find_minmax_agg_replacement_param.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l
  %.pre.i = load i32, ptr %i.z, align 4
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %bb.k
  %i.at = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.ah, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next.i, %i.au
  br i1 %i.av, label %bb.k, label %.thread, !llvm.loop !0

find_minmax_agg_replacement_param.exit:           ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not.not = icmp eq ptr %i.ax, null
  br i1 %.not.not, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m, %find_minmax_agg_replacement_param.exit, %bb.i, %bb.h, %list_length.exit.i, %bb.j
  %.pr = load i32, ptr %.tr63, align 4
  br label %bb.o

bb.n:                                             ; preds = %find_minmax_agg_replacement_param.exit
  %i.ay = tail call ptr @copyObjectImpl(ptr noundef nonnull %i.ax) #6
  br label %.loopexit

bb.o:                                             ; preds = %.thread, %bb.b
  %i.az = phi i32 [ %.pr, %.thread ], [ %i.c, %bb.b ]
  switch i32 %i.az, label %bb.v [
    i32 58, label %bb.p
    i32 335, label %bb.q
    i32 24, label %.lr.ph.i47
  ]

bb.p:                                             ; preds = %bb.o
  %i.ba = tail call ptr @copyObjectImpl(ptr noundef nonnull %.tr63) #6 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 4
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr63, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.q, %fix_alternative_subplan.exit
  %.tr.be = phi ptr [ %i.bh, %bb.q ], [ %.125.i, %fix_alternative_subplan.exit ] ; 2 uses
  %i.bi = icmp eq ptr %.tr.be, null
  br i1 %i.bi, label %.loopexit, label %bb.b

.lr.ph.i47:                                       ; preds = %bb.o
  %i.bj = load ptr, ptr %1, align 8               ; 2 uses
  %i.bk = load double, ptr %i.b, align 8
  %i.bl = getelementptr i8, ptr %.tr63, i64 8
  %.val = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 704
  br label %.lr.ph10.i

.lr.ph10.i:                                       ; preds = %.lr.ph.i47, %bb.u
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i49, %bb.u ], [ 0, %.lr.ph.i47 ] ; 2 uses
  %.02419.i = phi ptr [ %.125.i, %bb.u ], [ null, %.lr.ph.i47 ] ; 3 uses
  %.02328.i = phi double [ %.1.i, %bb.u ], [ 0.000000e+00, %.lr.ph.i47 ] ; 2 uses
  %i.bp = load ptr, ptr %i.bn, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i48
  %i.br = load ptr, ptr %i.bq, align 8            ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.bt = load double, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bv, double %i.bt) ; 2 uses
  %i.bx = icmp eq ptr %.02419.i, null
  br i1 %i.bx, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph10.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02419.i, i64 80
  %i.cb = load i32, ptr %i.ca, align 8            ; 2 uses
  %i.cc = icmp slt i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = icmp ne i32 %i.bz, %i.cb
  %i.ce = fcmp ugt double %i.bw, %.02328.i
  %or.cond.i = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %or.cond.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.lr.ph10.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.125.i = phi ptr [ %i.br, %bb.t ], [ %.02419.i, %bb.s ] ; 3 uses
  %.1.i = phi double [ %i.bw, %bb.t ], [ %.02328.i, %bb.s ]
  %i.cf = load ptr, ptr %i.bo, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = add i32 %i.ch, -1
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.cf, i64 %i.cj
  store i8 1, ptr %i.ck, align 1
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %i.cl = load i32, ptr %i.bm, align 4
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next.i49, %i.cm
  br i1 %i.cn, label %.lr.ph10.i, label %fix_alternative_subplan.exit

fix_alternative_subplan.exit:                     ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 712
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.125.i, i64 24
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = add i32 %i.cr, -1
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %i.cp, i64 %i.ct
  store i8 1, ptr %i.cu, align 1
  br label %tailrecurse.backedge

bb.v:                                             ; preds = %bb.o
  %i.cv = load ptr, ptr %1, align 8
  tail call fastcc void @fix_expr_common(ptr noundef %i.cv, ptr noundef %.tr63)
  %i.cw = tail call ptr @expression_tree_mutator_impl(ptr noundef nonnull %.tr63, ptr noundef nonnull @fix_scan_expr_mutator, ptr noundef nonnull %1) #6
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.a, %bb.n, %bb.e, %bb.f, %bb.v, %bb.p, %bb.g
  %.1 = phi ptr [ %i.ay, %bb.n ], [ %i.cw, %bb.v ], [ %i.q, %bb.g ], [ %i.ba, %bb.p ], [ %i.d, %bb.e ], [ %i.d, %bb.f ], [ null, %bb.a ], [ null, %tailrecurse.backedge ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @fix_scan_expr_walker(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  tail call fastcc void @fix_expr_common(ptr noundef %i.b, ptr noundef %0)
  %i.c = tail call zeroext i1 @expression_tree_walker_impl(ptr noundef nonnull %0, ptr noundef nonnull @fix_scan_expr_walker, ptr noundef nonnull %1) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @fix_param_node(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = ashr i32 %i.e, 16                        ; 3 uses
  %i.g = and i32 %i.e, 65535                      ; 3 uses
  %i.h = icmp slt i32 %i.f, 1
  br i1 %i.h, label %list_length.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %list_length.exit.thread, label %list_length.exit

list_length.exit:                                 ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %list_length.exit.thread, label %bb.d

list_length.exit.thread:                          ; preds = %bb.c, %list_length.exit, %bb.b
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.o = load i32, ptr %i.d, align 4
  %i.p = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.o) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2207, ptr noundef nonnull @__func__.fix_param_node) #6
  unreachable

bb.d:                                             ; preds = %list_length.exit
  %i.q = getelementptr i8, ptr %i.j, i64 16
  %.val18 = load ptr, ptr %i.q, align 8
  %i.r = zext nneg i32 %i.f to i64
  %i.s = getelementptr [8 x i8], ptr %.val18, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = icmp eq i32 %i.g, 0
  %.not.i19 = icmp eq ptr %i.u, null
  %or.cond = select i1 %i.v, i1 true, i1 %.not.i19
  br i1 %or.cond, label %list_length.exit20.thread, label %list_length.exit20

list_length.exit20:                               ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp sgt i32 %i.g, %i.x
  br i1 %i.y, label %list_length.exit20.thread, label %bb.e

list_length.exit20.thread:                        ; preds = %list_length.exit20, %bb.d
  %i.z = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.aa = load i32, ptr %i.d, align 4
  %i.ab = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.aa) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2210, ptr noundef nonnull @__func__.fix_param_node) #6
  unreachable

bb.e:                                             ; preds = %list_length.exit20
  %i.ac = getelementptr i8, ptr %i.u, i64 16
  %.val = load ptr, ptr %i.ac, align 8
  %i.ad = zext nneg i32 %i.g to i64
  %i.ae = getelementptr [8 x i8], ptr %.val, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sink = phi ptr [ %i.ag, %bb.e ], [ %1, %bb.a ]
  %i.ah = tail call ptr @copyObjectImpl(ptr noundef %.sink) #6
  ret ptr %i.ah
}

declare ptr @expression_tree_mutator_impl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind uwtable
define internal ptr @fix_upper_expr_mutator(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse.backedge
  %.tr80 = phi ptr [ %0, %.lr.ph ], [ %.tr.be, %tailrecurse.backedge ] ; 13 uses
  %i.f = load i32, ptr %.tr80, align 4            ; 3 uses
  %i.g = load ptr, ptr %i.b, align 8              ; 5 uses
  switch i32 %i.f, label %bb.h [
    i32 6, label %bb.c
    i32 335, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %i.k = load i32, ptr %i.d, align 8
  %i.l = tail call fastcc ptr @search_indexed_tlist_for_var(ptr noundef %.tr80, ptr noundef %i.g, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.k) ; 2 uses
  %.not56 = icmp eq ptr %i.l, null
  br i1 %.not56, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.n = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3392, ptr noundef nonnull @__func__.fix_upper_expr_mutator) #6
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.p = load i8, ptr %i.o, align 4, !range !6, !noundef !7
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.c, align 8
  %i.s = load i32, ptr %i.d, align 8
  %.val57 = load ptr, ptr %i.g, align 8
  %i.t = tail call fastcc ptr @search_indexed_tlist_for_phv(ptr noundef %.tr80, ptr %.val57, i32 noundef %i.r, i32 noundef %i.s) ; 2 uses
  %.not55 = icmp eq ptr %i.t, null
  br i1 %.not55, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.tr80, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.g, %fix_alternative_subplan.exit
  %.tr.be = phi ptr [ %i.v, %bb.g ], [ %.125.i, %fix_alternative_subplan.exit ] ; 2 uses
  %i.w = icmp eq ptr %.tr.be, null
  br i1 %i.w, label %.loopexit, label %bb.b

bb.h:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  %i.y = load i8, ptr %i.x, align 1, !range !6, !noundef !7
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.i, label %search_indexed_tlist_for_non_var.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i32 %i.f, 7
  br i1 %i.aa, label %.thread100, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %i.c, align 8
  %i.ac = load ptr, ptr %i.g, align 8
  %i.ad = tail call ptr @tlist_member(ptr noundef nonnull %.tr80, ptr noundef %i.ac) #6 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %.search_indexed_tlist_for_non_var.exit.thread_crit_edge, label %search_indexed_tlist_for_non_var.exit

.search_indexed_tlist_for_non_var.exit.thread_crit_edge: ; preds = %bb.j
  %.pre = load i32, ptr %.tr80, align 4
  br label %search_indexed_tlist_for_non_var.exit.thread

search_indexed_tlist_for_non_var.exit:            ; preds = %bb.j
  %i.ae = tail call ptr @makeVarFromTargetEntry(i32 noundef %i.ab, ptr noundef nonnull %i.ad) #6 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  store i16 0, ptr %i.ag, align 4
  br label %.loopexit

search_indexed_tlist_for_non_var.exit.thread:     ; preds = %.search_indexed_tlist_for_non_var.exit.thread_crit_edge, %bb.h
  %i.ah = phi i32 [ %.pre, %.search_indexed_tlist_for_non_var.exit.thread_crit_edge ], [ %i.f, %bb.h ] ; 2 uses
  switch i32 %i.ah, label %bb.s [
    i32 8, label %bb.k
    i32 9, label %bb.l
  ]

bb.k:                                             ; preds = %search_indexed_tlist_for_non_var.exit.thread
  %i.ai = load ptr, ptr %1, align 8
  %i.aj = tail call fastcc ptr @fix_param_node(ptr noundef %i.ai, ptr noundef %.tr80)
  br label %.loopexit

bb.l:                                             ; preds = %search_indexed_tlist_for_non_var.exit.thread
  %i.ak = load ptr, ptr %1, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 592
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %.not.i58 = icmp eq ptr %i.am, null
  br i1 %.not.i58, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.tr80, i64 40
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %.thread, label %list_length.exit.i

list_length.exit.i:                               ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.n, label %.thread

bb.n:                                             ; preds = %list_length.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.n
  %i.av = getelementptr i8, ptr %i.ao, i64 16
  %.val.i = load ptr, ptr %i.av, align 8
  %i.aw = load ptr, ptr %.val.i, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr80, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i
  %i.ba = phi i32 [ %i.at, %.lr.ph.i ], [ %i.bm, %bb.q ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %i.bb = load ptr, ptr %i.ax, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = load i32, ptr %i.ay, align 4
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.az, align 8
  %i.bl = tail call zeroext i1 @equal(ptr noundef %i.bj, ptr noundef %i.bk) #6
  br i1 %i.bl, label %find_minmax_agg_replacement_param.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.p
  %.pre.i = load i32, ptr %i.as, align 4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i, %bb.o
  %i.bm = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.ba, %bb.o ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next.i, %i.bn
  br i1 %i.bo, label %bb.o, label %.thread, !llvm.loop !0

find_minmax_agg_replacement_param.exit:           ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not54 = icmp eq ptr %i.bq, null
  br i1 %.not54, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.q, %find_minmax_agg_replacement_param.exit, %bb.m, %bb.l, %list_length.exit.i, %bb.n
  %.pr = load i32, ptr %.tr80, align 4
  br label %bb.s

bb.r:                                             ; preds = %find_minmax_agg_replacement_param.exit
  %i.br = tail call ptr @copyObjectImpl(ptr noundef nonnull %i.bq) #6
  br label %.loopexit

bb.s:                                             ; preds = %.thread, %search_indexed_tlist_for_non_var.exit.thread
  %i.bs = phi i32 [ %.pr, %.thread ], [ %i.ah, %search_indexed_tlist_for_non_var.exit.thread ]
  %i.bt = icmp eq i32 %i.bs, 24
  br i1 %i.bt, label %.lr.ph.i60, label %.thread100

.lr.ph.i60:                                       ; preds = %bb.s
  %i.bu = load ptr, ptr %1, align 8               ; 2 uses
  %i.bv = load double, ptr %i.e, align 8
  %i.bw = getelementptr i8, ptr %.tr80, i64 8
  %.val = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 704
  br label %.lr.ph10.i

.lr.ph10.i:                                       ; preds = %.lr.ph.i60, %bb.w
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i62, %bb.w ], [ 0, %.lr.ph.i60 ] ; 2 uses
  %.02419.i = phi ptr [ %.125.i, %bb.w ], [ null, %.lr.ph.i60 ] ; 3 uses
  %.02328.i = phi double [ %.1.i, %bb.w ], [ 0.000000e+00, %.lr.ph.i60 ] ; 2 uses
  %i.ca = load ptr, ptr %i.by, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.i61
  %i.cc = load ptr, ptr %i.cb, align 8            ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.ce = load double, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.cg = load double, ptr %i.cf, align 8
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.cg, double %i.ce) ; 2 uses
  %i.ci = icmp eq ptr %.02419.i, null
  br i1 %i.ci, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph10.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.ck = load i32, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.02419.i, i64 80
  %i.cm = load i32, ptr %i.cl, align 8            ; 2 uses
  %i.cn = icmp slt i32 %i.ck, %i.cm
  br i1 %i.cn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = icmp ne i32 %i.ck, %i.cm
  %i.cp = fcmp ugt double %i.ch, %.02328.i
  %or.cond.i = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph10.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.125.i = phi ptr [ %i.cc, %bb.v ], [ %.02419.i, %bb.u ] ; 3 uses
  %.1.i = phi double [ %i.ch, %bb.v ], [ %.02328.i, %bb.u ]
  %i.cq = load ptr, ptr %i.bz, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = add i32 %i.cs, -1
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cu
  store i8 1, ptr %i.cv, align 1
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %i.cw = load i32, ptr %i.bx, align 4
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next.i62, %i.cx
  br i1 %i.cy, label %.lr.ph10.i, label %fix_alternative_subplan.exit

fix_alternative_subplan.exit:                     ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bu, i64 712
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %.125.i, i64 24
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = add i32 %i.dc, -1
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.da, i64 %i.de
  store i8 1, ptr %i.df, align 1
  br label %tailrecurse.backedge

.thread100:                                       ; preds = %bb.i, %bb.s
  %i.dg = load ptr, ptr %1, align 8
  tail call fastcc void @fix_expr_common(ptr noundef %i.dg, ptr noundef %.tr80)
  %i.dh = tail call ptr @expression_tree_mutator_impl(ptr noundef nonnull %.tr80, ptr noundef nonnull @fix_upper_expr_mutator, ptr noundef nonnull %1) #6
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.f, %bb.a, %bb.r, %search_indexed_tlist_for_non_var.exit, %bb.c, %.thread100, %bb.k
  %.2 = phi ptr [ %i.br, %bb.r ], [ %i.ae, %search_indexed_tlist_for_non_var.exit ], [ %i.l, %bb.c ], [ %i.dh, %.thread100 ], [ %i.aj, %bb.k ], [ null, %bb.a ], [ null, %tailrecurse.backedge ], [ %i.t, %bb.f ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @search_indexed_tlist_for_var(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %.in = phi i32 [ %i.h, %bb.k ], [ %i.f, %bb.a ] ; 2 uses
  %.pn40 = phi ptr [ %.03241, %bb.k ], [ %1, %bb.a ] ; 7 uses
  %.03241 = getelementptr inbounds nuw i8, ptr %.pn40, i64 16 ; 2 uses
  %i.h = add nsw i32 %.in, -1
  %i.i = load i32, ptr %.03241, align 8
  %i.j = icmp eq i32 %i.i, %i.b
  br i1 %i.j, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.pn40, i64 20
  %i.l = load i16, ptr %i.k, align 4
  %i.m = icmp eq i16 %i.l, %i.d
  br i1 %i.m, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @palloc(i64 noundef 56) #6 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.o = icmp slt i16 %i.d, 1
  br i1 %i.o, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %4, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.pn40, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call zeroext i1 @bms_is_subset(ptr noundef %i.q, ptr noundef %i.s) #6
  br i1 %i.t, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.pn40, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call zeroext i1 @bms_is_subset(ptr noundef %i.v, ptr noundef %i.x) #6
  br i1 %i.y, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.pn40, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call zeroext i1 @bms_equal(ptr noundef %i.aa, ptr noundef %i.ac) #6
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ae = zext nneg i16 %i.d to i32
  %i.af = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call ptr @bmsToString(ptr noundef %i.ah) #6
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn40, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call ptr @bmsToString(ptr noundef %i.ak) #6
  %i.am = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, ptr noundef %i.ai, ptr noundef %i.al, i32 noundef %i.b, i32 noundef %i.ae) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2987, ptr noundef nonnull @__func__.search_indexed_tlist_for_var) #6
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %2, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn40, i64 22
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i16 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = add i32 %i.as, %3
  store i32 %i.at, ptr %i.ar, align 8
  br label %.loopexit

bb.k:                                             ; preds = %bb.b, %.lr.ph
  %i.au = icmp samesign ugt i32 %.in, 1
  br i1 %i.au, label %.lr.ph, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %bb.k, %bb.a, %bb.i, %bb.j
  %.033 = phi ptr [ %i.n, %bb.i ], [ %i.n, %bb.j ], [ null, %bb.a ], [ null, %bb.k ]
  ret ptr %.033
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @search_indexed_tlist_for_phv(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree readonly captures(address_is_null) %.0.val, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph18, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
end_hunk_0
begin_hunk_1_@fix_join_expr_mutator:bb.a
bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3223, ptr noundef nonnull @__func__.fix_join_expr_mutator) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.tr127, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %.not102 = icmp eq i32 %i.r, %i.m
  br i1 %.not102, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.t = load i32, ptr %i.q, align 4
  %i.u = load i32, ptr %i.l, align 8
  %i.v = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.t, i32 noundef %i.u) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3226, ptr noundef nonnull @__func__.fix_join_expr_mutator) #6
  unreachable

bb.j:                                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not103 = icmp eq ptr %.pre, null
  br i1 %.not103, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.h, %bb.j
  %i.w = phi ptr [ %.pre, %bb.j ], [ %i.j, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.y = load i32, ptr %i.x, align 4
  %i.z = load i32, ptr %i.c, align 8
  %i.aa = tail call fastcc ptr @search_indexed_tlist_for_var(ptr noundef %.tr127, ptr noundef nonnull %i.w, i32 noundef -2, i32 noundef %i.y, i32 noundef %i.z) ; 2 uses
  %.not104 = icmp eq ptr %i.aa, null
  br i1 %.not104, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.thread, %bb.j
  %i.ab = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not105 = icmp eq ptr %i.ab, null
  br i1 %.not105, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = load i32, ptr %i.c, align 8
  %i.af = tail call fastcc ptr @search_indexed_tlist_for_var(ptr noundef %.tr127, ptr noundef nonnull %i.ab, i32 noundef -1, i32 noundef %i.ad, i32 noundef %i.ae) ; 2 uses
  %.not106 = icmp eq ptr %i.af, null
  br i1 %.not106, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr127, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.al = tail call noundef ptr @palloc(i64 noundef 56) #6 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(56) %.tr127, i64 56, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = add i32 %i.ap, %i.an
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %.not107 = icmp eq i32 %i.as, 0
  br i1 %.not107, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load i32, ptr %i.am, align 4
  %i.au = add i32 %i.at, %i.as
  store i32 %i.au, ptr %i.ar, align 8
  br label %.loopexit

bb.p:                                             ; preds = %bb.m
  %i.av = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.aw = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3264, ptr noundef nonnull @__func__.fix_join_expr_mutator) #6
  unreachable

bb.q:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not96 = icmp eq ptr %i.ax, null
  br i1 %.not96, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i8, ptr %i.ay, align 4, !range !6, !noundef !7
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bb = load i32, ptr %i.c, align 8
  %.val109 = load ptr, ptr %i.ax, align 8
  %i.bc = tail call fastcc ptr @search_indexed_tlist_for_phv(ptr noundef %.tr127, ptr %.val109, i32 noundef -2, i32 noundef %i.bb) ; 2 uses
  %.not97 = icmp eq ptr %i.bc, null
  br i1 %.not97, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.bd = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not98 = icmp eq ptr %i.bd, null
  br i1 %.not98, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bf = load i8, ptr %i.be, align 4, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bh = load i32, ptr %i.c, align 8
  %.val108 = load ptr, ptr %i.bd, align 8
  %i.bi = tail call fastcc ptr @search_indexed_tlist_for_phv(ptr noundef %.tr127, ptr %.val108, i32 noundef -1, i32 noundef %i.bh) ; 2 uses
  %.not99 = icmp eq ptr %i.bi, null
  br i1 %.not99, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr127, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.w, %fix_alternative_subplan.exit
  %.tr.be = phi ptr [ %i.bk, %bb.w ], [ %.125.i, %fix_alternative_subplan.exit ] ; 2 uses
  %i.bl = icmp eq ptr %.tr.be, null
  br i1 %i.bl, label %.loopexit, label %bb.b

bb.x:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %search_indexed_tlist_for_non_var.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 13
  %i.bo = load i8, ptr %i.bn, align 1, !range !6, !noundef !7
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = icmp ne i32 %i.f, 7
  %or.cond.not = and i1 %i.bq, %i.bp
  br i1 %or.cond.not, label %bb.z, label %search_indexed_tlist_for_non_var.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.br = load ptr, ptr %i.bm, align 8
  %i.bs = tail call ptr @tlist_member(ptr noundef nonnull %.tr127, ptr noundef %i.br) #6 ; 2 uses
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %search_indexed_tlist_for_non_var.exit.thread, label %search_indexed_tlist_for_non_var.exit

search_indexed_tlist_for_non_var.exit:            ; preds = %bb.z
  %i.bt = tail call ptr @makeVarFromTargetEntry(i32 noundef -2, ptr noundef nonnull %i.bs) #6 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store i32 0, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 44
  store i16 0, ptr %i.bv, align 4
  br label %.loopexit

search_indexed_tlist_for_non_var.exit.thread:     ; preds = %bb.z, %bb.y, %bb.x
  %i.bw = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not94 = icmp eq ptr %i.bw, null
  br i1 %.not94, label %search_indexed_tlist_for_non_var.exit112.thread, label %bb.aa

bb.aa:                                            ; preds = %search_indexed_tlist_for_non_var.exit.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 13
  %i.by = load i8, ptr %i.bx, align 1, !range !6, !noundef !7
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.ab, label %search_indexed_tlist_for_non_var.exit112.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ca = load i32, ptr %.tr127, align 4
  %i.cb = icmp eq i32 %i.ca, 7
  br i1 %i.cb, label %search_indexed_tlist_for_non_var.exit112.thread.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = tail call ptr @tlist_member(ptr noundef nonnull %.tr127, ptr noundef %i.cc) #6 ; 2 uses
  %.not.i110 = icmp eq ptr %i.cd, null
  br i1 %.not.i110, label %search_indexed_tlist_for_non_var.exit112.thread, label %search_indexed_tlist_for_non_var.exit112

search_indexed_tlist_for_non_var.exit112:         ; preds = %bb.ac
  %i.ce = tail call ptr @makeVarFromTargetEntry(i32 noundef -1, ptr noundef nonnull %i.cd) #6 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store i32 0, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 44
  store i16 0, ptr %i.cg, align 4
  br label %.loopexit

search_indexed_tlist_for_non_var.exit112.thread:  ; preds = %bb.ac, %bb.aa, %search_indexed_tlist_for_non_var.exit.thread
  %.pr = load i32, ptr %.tr127, align 4
  switch i32 %.pr, label %search_indexed_tlist_for_non_var.exit112.thread.thread [
    i32 8, label %bb.ad
    i32 24, label %.lr.ph.i
  ]

bb.ad:                                            ; preds = %search_indexed_tlist_for_non_var.exit112.thread
  %i.ch = load ptr, ptr %1, align 8
  %i.ci = tail call fastcc ptr @fix_param_node(ptr noundef %i.ch, ptr noundef %.tr127)
  br label %.loopexit

.lr.ph.i:                                         ; preds = %search_indexed_tlist_for_non_var.exit112.thread
  %i.cj = load ptr, ptr %1, align 8               ; 2 uses
  %i.ck = load double, ptr %i.e, align 8
  %i.cl = getelementptr i8, ptr %.tr127, i64 8
  %.val = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 704
  br label %.lr.ph10.i

.lr.ph10.i:                                       ; preds = %.lr.ph.i, %bb.ah
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ah ], [ 0, %.lr.ph.i ] ; 2 uses
  %.02419.i = phi ptr [ %.125.i, %bb.ah ], [ null, %.lr.ph.i ] ; 3 uses
  %.02328.i = phi double [ %.1.i, %bb.ah ], [ 0.000000e+00, %.lr.ph.i ] ; 2 uses
  %i.cp = load ptr, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.i
  %i.cr = load ptr, ptr %i.cq, align 8            ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 88
  %i.ct = load double, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.cv = load double, ptr %i.cu, align 8
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.cv, double %i.ct) ; 2 uses
  %i.cx = icmp eq ptr %.02419.i, null
  br i1 %i.cx, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph10.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  %i.cz = load i32, ptr %i.cy, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.02419.i, i64 80
  %i.db = load i32, ptr %i.da, align 8            ; 2 uses
  %i.dc = icmp slt i32 %i.cz, %i.db
  br i1 %i.dc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dd = icmp ne i32 %i.cz, %i.db
  %i.de = fcmp ugt double %i.cw, %.02328.i
  %or.cond.i = select i1 %i.dd, i1 true, i1 %i.de
  br i1 %or.cond.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.lr.ph10.i
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.125.i = phi ptr [ %i.cr, %bb.ag ], [ %.02419.i, %bb.af ] ; 3 uses
  %.1.i = phi double [ %i.cw, %bb.ag ], [ %.02328.i, %bb.af ]
  %i.df = load ptr, ptr %i.co, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = add i32 %i.dh, -1
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds i8, ptr %i.df, i64 %i.dj
  store i8 1, ptr %i.dk, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dl = load i32, ptr %i.cm, align 4
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next.i, %i.dm
  br i1 %i.dn, label %.lr.ph10.i, label %fix_alternative_subplan.exit

fix_alternative_subplan.exit:                     ; preds = %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %i.cj, i64 712
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.125.i, i64 24
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = add i32 %i.dr, -1
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %i.dp, i64 %i.dt
  store i8 1, ptr %i.du, align 1
  br label %tailrecurse.backedge

search_indexed_tlist_for_non_var.exit112.thread.thread: ; preds = %bb.ab, %search_indexed_tlist_for_non_var.exit112.thread
  %i.dv = load ptr, ptr %1, align 8
  tail call fastcc void @fix_expr_common(ptr noundef %i.dv, ptr noundef %.tr127)
  %i.dw = tail call ptr @expression_tree_mutator_impl(ptr noundef nonnull %.tr127, ptr noundef nonnull @fix_join_expr_mutator, ptr noundef nonnull %1) #6
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.v, %bb.s, %bb.a, %search_indexed_tlist_for_non_var.exit112, %search_indexed_tlist_for_non_var.exit, %.thread, %bb.l, %bb.o, %bb.n, %search_indexed_tlist_for_non_var.exit112.thread.thread, %bb.ad
  %.2 = phi ptr [ %i.aa, %.thread ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.bt, %search_indexed_tlist_for_non_var.exit ], [ %i.ci, %bb.ad ], [ %i.ce, %search_indexed_tlist_for_non_var.exit112 ], [ %i.dw, %search_indexed_tlist_for_non_var.exit112.thread.thread ], [ %i.af, %bb.l ], [ null, %bb.a ], [ %i.bi, %bb.v ], [ null, %tailrecurse.backedge ], [ %i.bc, %bb.s ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @register_partpruneinfo(ptr noundef %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.fix_scan_expr_context, align 8 ; 9 uses
  %4 = alloca %struct.fix_scan_expr_context, align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val = load ptr, ptr %i.e, align 8
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = icmp eq i32 %2, 0                        ; 3 uses
  br i1 %i.k, label %offset_relid_set.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.l = tail call i32 @bms_next_member(ptr noundef %i.j, i32 noundef -1) #6 ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %.lr.ph.i, label %offset_relid_set.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.n = phi i32 [ %i.q, %.lr.ph.i ], [ %i.l, %.preheader.i ] ; 2 uses
  %.0812.i = phi ptr [ %i.p, %.lr.ph.i ], [ null, %.preheader.i ]
  %i.o = add i32 %i.n, %2
  %i.p = tail call ptr @bms_add_member(ptr noundef %.0812.i, i32 noundef %i.o) #6 ; 2 uses
  %i.q = tail call i32 @bms_next_member(ptr noundef %i.j, i32 noundef %i.n) #6 ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %.lr.ph.i, label %offset_relid_set.exit, !llvm.loop !1

offset_relid_set.exit:                            ; preds = %.lr.ph.i, %bb.a, %.preheader.i
  %.09.i = phi ptr [ %i.j, %bb.a ], [ null, %.preheader.i ], [ %i.p, %.lr.ph.i ]
  store ptr %.09.i, ptr %i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.critedge, label %.lr.ph76

.lr.ph76:                                         ; preds = %offset_relid_set.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.ae = load i32, ptr %i.u, align 4
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph95, label %.critedge

.lr.ph95:                                         ; preds = %.lr.ph76, %.critedge58
  %indvars.iv8294 = phi i64 [ %indvars.iv.next83, %.critedge58 ], [ 0, %.lr.ph76 ] ; 2 uses
  %i.ag = load ptr, ptr %i.v, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv8294
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %.not53 = icmp eq ptr %i.ai, null
  br i1 %.not53, label %.critedge58, label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph95
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.al = load i32, ptr %i.aj, align 4
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph93, label %.critedge58

.critedge:                                        ; preds = %.critedge58, %.lr.ph76, %offset_relid_set.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call ptr @lappend(ptr noundef %i.ao, ptr noundef %i.h) #6 ; 3 uses
  store ptr %i.ap, ptr %i.an, align 8
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %list_length.exit, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = add i32 %i.ar, -1
  br label %list_length.exit

list_length.exit:                                 ; preds = %.critedge, %bb.b
  %i.at = phi i32 [ %i.as, %bb.b ], [ -1, %.critedge ]
  ret i32 %i.at

.lr.ph93:                                         ; preds = %.lr.ph73, %._crit_edge
  %indvars.iv7992 = phi i64 [ %indvars.iv.next80, %._crit_edge ], [ 0, %.lr.ph73 ] ; 2 uses
  %i.au = load ptr, ptr %i.ak, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv7992
  %i.aw = load ptr, ptr %i.av, align 8            ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = add i32 %i.ay, %2
  store i32 %i.az, ptr %i.ax, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 56 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store ptr %0, ptr %4, align 8
  store i32 %2, ptr %i.w, align 8
  store double 1.000000e+00, ptr %i.x, align 8
  br i1 %i.k, label %bb.c, label %fix_scan_expr.exit

bb.c:                                             ; preds = %.lr.ph93
  %i.bc = load ptr, ptr %i.y, align 8
  %.not11.i = icmp eq ptr %i.bc, null
  br i1 %.not11.i, label %bb.d, label %fix_scan_expr.exit

bb.d:                                             ; preds = %bb.c
  %i.bd = load ptr, ptr %i.a, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 160
  %i.bf = load i32, ptr %i.be, align 8
  %.not12.i = icmp eq i32 %i.bf, 0
  br i1 %.not12.i, label %bb.e, label %fix_scan_expr.exit

bb.e:                                             ; preds = %bb.d
  %i.bg = load ptr, ptr %i.z, align 8
  %.not13.i = icmp eq ptr %i.bg, null
  br i1 %.not13.i, label %bb.f, label %fix_scan_expr.exit

bb.f:                                             ; preds = %bb.e
  %i.bh = load i8, ptr %i.aa, align 8, !range !6, !noundef !7
end_hunk_1
