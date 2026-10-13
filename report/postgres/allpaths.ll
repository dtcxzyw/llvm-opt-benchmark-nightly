Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/allpaths?download=true
inline.NumInlined: 95
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@subquery_is_pushdown_safe:bb.a
  %.not31 = icmp eq ptr %i.db, null               ; 2 uses
  br i1 %i.da, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %check_output_expressions.exit
  br i1 %.not31, label %compare_tlist_datatypes.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = tail call fastcc zeroext i1 @recurse_pushdown_safe(ptr noundef nonnull %i.db, ptr noundef %1, ptr noundef %2)
  br i1 %i.dc, label %compare_tlist_datatypes.exit, label %bb.aj

bb.aa:                                            ; preds = %check_output_expressions.exit
  br i1 %.not31, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dg = load ptr, ptr %i.df, align 8            ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.di = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i.i32 = icmp eq ptr %i.di, null
  br i1 %.not.i.i32, label %list_head.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  br label %list_head.exit.i

list_head.exit.i:                                 ; preds = %bb.ac, %bb.ab
  %i.dl = phi ptr [ %i.dk, %bb.ac ], [ null, %bb.ab ] ; 3 uses
  %.not.i33 = icmp eq ptr %i.dg, null
  br i1 %.not.i33, label %.critedge.i, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %list_head.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.do = getelementptr i8, ptr %i.di, i64 4
  %i.dp = getelementptr i8, ptr %i.di, i64 16
  %i.dq = load i32, ptr %i.dm, align 4            ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph30.i, label %.critedge.i

.lr.ph30.i:                                       ; preds = %.lr.ph.i34, %bb.ah
  %i.ds = phi i32 [ %i.er, %bb.ah ], [ %i.dq, %.lr.ph.i34 ]
  %indvars.iv.i35 = phi i64 [ %indvars.iv.next.i38, %bb.ah ], [ 0, %.lr.ph.i34 ] ; 2 uses
  %.02329.i = phi ptr [ %.1.i, %bb.ah ], [ %i.dl, %.lr.ph.i34 ] ; 4 uses
  %i.dt = load ptr, ptr %i.dn, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv.i35
  %i.dv = load ptr, ptr %i.du, align 8            ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 42
  %i.dx = load i8, ptr %i.dw, align 2, !range !5, !noundef !6
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.ah, label %bb.ad

.critedge.i:                                      ; preds = %bb.ah, %.lr.ph.i34, %list_head.exit.i
  %.0.lcssa.i = phi ptr [ %i.dl, %list_head.exit.i ], [ %i.dl, %.lr.ph.i34 ], [ %.1.i, %bb.ah ]
  %.not19.i = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not19.i, label %compare_tlist_datatypes.exit, label %bb.ai

bb.ad:                                            ; preds = %.lr.ph30.i
  %i.dz = icmp eq ptr %.02329.i, null
  br i1 %i.dz, label %.split.i, label %bb.ae

.split.i:                                         ; preds = %bb.ad
  %i.ea = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.eb = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 4386, ptr noundef nonnull @__func__.compare_tlist_datatypes) #11
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = tail call i32 @exprType(ptr noundef %i.ed) #11
  %i.ef = load i32, ptr %.02329.i, align 8
  %.not20.i = icmp eq i32 %i.ee, %i.ef
  br i1 %.not20.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eg = load ptr, ptr %2, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ei = load i16, ptr %i.eh, align 8
  %i.ej = sext i16 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = or i8 %i.el, 16
  store i8 %i.em, ptr %i.ek, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.val.i36 = load i32, ptr %i.do, align 4
  %.val21.i = load ptr, ptr %i.dp, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %.02329.i, i64 8 ; 2 uses
  %i.eo = sext i32 %.val.i36 to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %.val21.i, i64 %i.eo
  %i.eq = icmp ult ptr %i.en, %i.ep
  %..i.i = select i1 %i.eq, ptr %i.en, ptr null
  %.pre.i37 = load i32, ptr %i.dm, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph30.i
  %i.er = phi i32 [ %.pre.i37, %bb.ag ], [ %i.ds, %.lr.ph30.i ] ; 2 uses
  %.1.i = phi ptr [ %..i.i, %bb.ag ], [ %.02329.i, %.lr.ph30.i ] ; 2 uses
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next.i38, %i.es
  br i1 %i.et, label %.lr.ph30.i, label %.critedge.i

bb.ai:                                            ; preds = %.critedge.i
  %i.eu = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ev = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 4392, ptr noundef nonnull @__func__.compare_tlist_datatypes) #11
  unreachable

compare_tlist_datatypes.exit:                     ; preds = %.critedge.i, %bb.y, %bb.z
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aa, %bb.z, %bb.d, %bb.a, %bb.b, %compare_tlist_datatypes.exit
  %.0 = phi i1 [ false, %bb.z ], [ false, %bb.a ], [ true, %compare_tlist_datatypes.exit ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.aa ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @subquery_push_qual(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @recurse_push_qual(ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.h = tail call ptr @ReplaceVarsFromTargetList(ptr noundef %3, i32 noundef %2, i32 noundef 0, ptr noundef %1, ptr noundef %i.d, i32 noundef %i.f, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.g) #11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i8, ptr %i.i, align 8, !range !5, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = load ptr, ptr %i.l, align 8
  %.not21 = icmp eq ptr %i.m, null
  br i1 %.not21, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = load ptr, ptr %i.n, align 8
  %.not22 = icmp eq ptr %i.o, null
  br i1 %.not22, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = load ptr, ptr %i.p, align 8
  %.not23 = icmp eq ptr %i.q, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr @make_and_qual(ptr noundef %i.s, ptr noundef %i.h) #11
  store ptr %i.t, ptr %i.r, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call ptr @make_and_qual(ptr noundef %i.x, ptr noundef %i.h) #11
  %i.z = load ptr, ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.y, ptr %i.aa, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b
  ret void
}

declare i32 @bms_membership(ptr noundef) local_unnamed_addr #2

declare ptr @choose_plan_name(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @subquery_planner(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @fetch_upper_rel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @set_subquery_size_estimates(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @convert_subquery_pathkeys(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @create_subqueryscan_path(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @recurse_pushdown_safe(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.e, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.u, %bb.e ]   ; 6 uses
  %i.a = load i32, ptr %.tr, align 4
  switch i32 %i.a, label %bb.f [
    i32 65, label %bb.b
    i32 150, label %bb.c
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -1
  %i.g = getelementptr i8, ptr %i.c, i64 16
  %.val = load ptr, ptr %i.g, align 8
  %i.h = sext i32 %i.f to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call fastcc zeroext i1 @subquery_is_pushdown_safe(ptr noundef %i.l, ptr noundef %1, ptr noundef %2)
  br label %bb.g

bb.c:                                             ; preds = %tailrecurse
  %i.n = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call fastcc zeroext i1 @recurse_pushdown_safe(ptr noundef %i.r, ptr noundef %1, ptr noundef %2)
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  br label %tailrecurse

bb.f:                                             ; preds = %tailrecurse
  %i.v = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.w = load i32, ptr %.tr, align 4
  %i.x = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i32 noundef %i.w) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 4231, ptr noundef nonnull @__func__.recurse_pushdown_safe) #11
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.1 = phi i1 [ %i.m, %bb.b ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.1
}

declare ptr @flatten_group_exprs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @expression_returns_set(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @contain_volatile_functions(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @targetIsInSortList(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @contain_subplans(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @contain_leaked_vars(ptr noundef) local_unnamed_addr #2

declare ptr @pull_var_clause(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @setop_has_grouping(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr8 = phi ptr [ %i.j, %tailrecurse ], [ %0, %bb.a ] ; 4 uses
  %i.b = load i32, ptr %.tr8, align 4
  %i.c = icmp eq i32 %i.b, 150
  br i1 %i.c, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.tr8, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr8, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call fastcc zeroext i1 @setop_has_grouping(ptr noundef %i.g)
  br i1 %i.h, label %._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.tr8, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %tailrecurse, %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.b ], [ false, %tailrecurse ], [ false, %.lr.ph ]
  ret i1 %.0
}

declare zeroext i1 @expression_has_grouping_conflict(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @pushdown_var_grouping_eqop(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %subquery_column_grouping_eqop.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8              ; 4 uses
  %i.e = zext nneg i16 %i.d to i32
  %i.f = icmp slt i16 %i.d, 1
  br i1 %i.f, label %subquery_column_grouping_eqop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %subquery_column_grouping_eqop.exit, label %list_length.exit.i

list_length.exit.i:                               ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp slt i32 %i.j, %i.e
  br i1 %i.k, label %subquery_column_grouping_eqop.exit, label %bb.d

bb.d:                                             ; preds = %list_length.exit.i
  %i.l = getelementptr i8, ptr %i.h, i64 16
  %.val.i = load ptr, ptr %i.l, align 8
  %i.m = zext nneg i16 %i.d to i64
  %i.n = getelementptr [8 x i8], ptr %.val.i, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph114.i, label %._crit_edge.i

.lr.ph114.i:                                      ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load i32, ptr %i.v, align 8
  %wide.trip.count.i = zext nneg i32 %i.t to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph114.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph114.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %.not69.i = icmp eq i32 %i.ac, %i.y
  br i1 %.not69.i, label %.split.i, label %bb.e

.split.i:                                         ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load i32, ptr %i.ad, align 4
  br label %subquery_column_grouping_eqop.exit

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.ag = load i8, ptr %i.af, align 1, !range !5, !noundef !6
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %.thread97.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.not70.i = icmp eq ptr %i.aj, null
  br i1 %.not70.i, label %.thread97.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not72128.i = icmp sgt i32 %i.al, 0
  br i1 %.not72128.i, label %.lr.ph130.i, label %subquery_column_grouping_eqop.exit

.lr.ph130.i:                                      ; preds = %.preheader.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load ptr, ptr %i.am, align 8
end_hunk_0
