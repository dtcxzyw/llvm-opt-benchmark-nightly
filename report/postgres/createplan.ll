Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/createplan?download=true
inline.NumInlined: 326
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@create_indexscan_plan:bb.a
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %.lr.ph154 ], [ 0, %.lr.ph150 ] ; 3 uses
  %i.el = load ptr, ptr %i.eh, align 8
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv163
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = load ptr, ptr %i.ei, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %indvars.iv163
  %i.eq = load i8, ptr %i.ep, align 1, !range !5, !noundef !6
  %i.er = xor i8 %i.eq, 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 42
  store i8 %i.er, ptr %i.es, align 2
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.et = load i32, ptr %i.eg, align 4
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next164, %i.eu
  br i1 %i.ev, label %.lr.ph154, label %.critedge114.loopexit

.critedge114.loopexit:                            ; preds = %.lr.ph154
  %.pre170 = load ptr, ptr %i.ee, align 8
  br label %.critedge114

.critedge114:                                     ; preds = %.critedge114.loopexit, %.lr.ph150, %bb.v
  %i.ew = phi ptr [ %.pre170, %.critedge114.loopexit ], [ %i.ef, %.lr.ph150 ], [ null, %bb.v ]
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = tail call noundef ptr @palloc0(i64 noundef 160) #10 ; 12 uses
  store i32 360, ptr %i.ez, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  store ptr %2, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 56
  store ptr %.2, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i8 0, i64 16, i1 false)
  store i32 %i.h, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
  store i32 %i.l, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 120
  store ptr %.032.lcssa.i, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 128
  store ptr %.0126, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 136
  store ptr %.us-phi.i, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 144
  store ptr %i.ew, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 152
  store i32 %i.ey, ptr %i.fj, align 8
  br label %bb.w

.critedge116:                                     ; preds = %.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fl = load i32, ptr %i.fk, align 8
  %i.fm = tail call noundef ptr @palloc0(i64 noundef 168) #10 ; 13 uses
  store i32 359, ptr %i.fm, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  store ptr %2, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  store ptr %.2, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i8 0, i64 16, i1 false)
  store i32 %i.h, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 112
  store i32 %i.l, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 120
  store ptr %.032.lcssa.i, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 128
  store ptr %.0126, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 136
  store ptr %.us-phi.i, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fm, i64 144
  store ptr %.099, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 152
  store ptr %.196, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fm, i64 160
  store i32 %i.fl, ptr %i.fx, align 8
  br label %bb.w

bb.w:                                             ; preds = %.critedge116, %.critedge114
  %.0 = phi ptr [ %i.ez, %.critedge114 ], [ %i.fm, %.critedge116 ] ; 8 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fz = load i32, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.fz, ptr %i.ga, align 4
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gc = load double, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store double %i.gc, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gf = load double, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store double %i.gf, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gi = load double, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store double %i.gi, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gn = load i32, ptr %i.gm, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %.0, i64 32
  store i32 %i.gn, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gq = load i8, ptr %i.gp, align 8, !range !5, !noundef !6
  %i.gr = getelementptr inbounds nuw i8, ptr %.0, i64 36
  store i8 %i.gq, ptr %i.gr, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.gt = load i8, ptr %i.gs, align 1, !range !5, !noundef !6
  %i.gu = getelementptr inbounds nuw i8, ptr %.0, i64 37
  store i8 %i.gt, ptr %i.gu, align 1
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @order_qual_clauses(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.QualCost, align 8           ; 4 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %list_length.exit.thread, label %list_length.exit

list_length.exit:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %list_length.exit.thread, label %bb.b

bb.b:                                             ; preds = %list_length.exit
  %i.d = zext nneg i32 %i.b to i64
  %i.e = mul nuw nsw i64 %i.d, 24
  %i.f = tail call ptr @palloc(i64 noundef %i.e) #10 ; 5 uses
  %i.g = load i32, ptr %i.a, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.lr.ph79.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

.lr.ph79.preheader:                               ; preds = %bb.g, %bb.b
  %smax = call i32 @llvm.smax.i32(i32 %i.b, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph79

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @cost_qual_eval_node(ptr noundef nonnull %2, ptr noundef %i.m, ptr noundef %0) #10
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load double, ptr %i.j, align 8           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store double %i.o, ptr %i.p, align 8
  %i.q = load i32, ptr %i.m, align 4
  %i.r = icmp eq i32 %i.q, 334
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 21
  %i.t = load i8, ptr %i.s, align 1, !range !5, !noundef !6
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load double, ptr @cpu_operator_cost, align 8
  %i.w = fmul double %i.v, 1.000000e+01
  %i.x = fcmp olt double %i.o, %i.w
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.z = load i32, ptr %i.y, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f
  %.sink = phi i32 [ 0, %bb.e ], [ %i.z, %bb.f ], [ 0, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 %.sink, ptr %i.aa, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %bb.c, label %.lr.ph79.preheader, !llvm.loop !43

.lr.ph82.preheader:                               ; preds = %.thread
  %wide.trip.count93 = zext nneg i32 %i.b to i64
  br label %.lr.ph82

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.thread
  %indvars.iv86 = phi i64 [ 1, %.lr.ph79.preheader ], [ %indvars.iv.next87, %.thread ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv86 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.af = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph79, %bb.k
  %indvars.iv88 = phi i64 [ %indvars.iv86, %.lr.ph79 ], [ %indvars.iv.next89, %bb.k ] ; 5 uses
  %i.ag = getelementptr [24 x i8], ptr %i.f, i64 %indvars.iv88 ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = getelementptr i8, ptr %i.ag, i64 -8
  %i.aj = load i32, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp ugt i32 %.sroa.5.0.copyload, %i.aj
  br i1 %i.ak, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = icmp eq i32 %.sroa.5.0.copyload, %i.aj
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.ag, i64 -16
  %i.an = load double, ptr %i.am, align 8
  %i.ao = fcmp ult double %.sroa.4.0.copyload, %i.an
  br i1 %i.ao, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, -1
  %i.ap = icmp sgt i64 %indvars.iv88, 1
  br i1 %i.ap, label %bb.h, label %.thread, !llvm.loop !44

.thread:                                          ; preds = %bb.h, %bb.j, %bb.k
  %.0.lcssa = phi i64 [ %indvars.iv88, %bb.h ], [ %indvars.iv88, %bb.j ], [ 0, %bb.k ]
  %i.aq = getelementptr inbounds [24 x i8], ptr %i.f, i64 %.0.lcssa ; 3 uses
  store ptr %.sroa.0.0.copyload, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store double %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx9, align 8
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x i32> %i.af, ptr %.sroa.5.0..sroa_idx11, align 8
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph82.preheader, label %.lr.ph79, !llvm.loop !45

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %.lr.ph82
  %indvars.iv89 = phi i64 [ 0, %.lr.ph82.preheader ], [ %indvars.iv.next90, %.lr.ph82 ] ; 2 uses
  %.06681 = phi ptr [ null, %.lr.ph82.preheader ], [ %i.at, %.lr.ph82 ]
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv89
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call ptr @lappend(ptr noundef %.06681, ptr noundef %i.as) #10 ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count93
  br i1 %exitcond94.not, label %list_length.exit.thread, label %.lr.ph82, !llvm.loop !46

list_length.exit.thread:                          ; preds = %.lr.ph82, %bb.a, %list_length.exit
  %.069 = phi ptr [ %1, %list_length.exit ], [ null, %bb.a ], [ %i.at, %.lr.ph82 ]
  ret ptr %.069
}

declare ptr @extract_actual_clauses(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @cost_qual_eval_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bms_nonempty_difference(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bms_is_subset(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bms_is_member(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bms_add_member(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @makeTargetEntry(ptr noundef, i16 noundef signext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @replace_nestloop_params_mutator(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %common.ret29, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4
  switch i32 %i.b, label %bb.i [
    i32 6, label %bb.c
    i32 335, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %common.ret29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i1 @bms_is_member(i32 noundef %i.d, ptr noundef %i.g) #10
  br i1 %i.h, label %bb.e, label %common.ret29

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @replace_nestloop_param_var(ptr noundef nonnull %1, ptr noundef nonnull %0) #10
  br label %common.ret29

bb.f:                                             ; preds = %bb.b
  %i.j = tail call ptr @find_placeholder_info(ptr noundef %1, ptr noundef nonnull %0) #10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call zeroext i1 @bms_is_subset(ptr noundef %i.l, ptr noundef %i.n) #10
  br i1 %i.o, label %bb.h, label %bb.g

common.ret29:                                     ; preds = %bb.h, %bb.e, %bb.d, %bb.c, %bb.a, %bb.i, %bb.g
  %common.ret29.op = phi ptr [ %i.p, %bb.g ], [ %i.u, %bb.h ], [ %i.v, %bb.i ], [ null, %bb.a ], [ %0, %bb.c ], [ %i.i, %bb.e ], [ %0, %bb.d ]
  ret ptr %common.ret29.op

bb.g:                                             ; preds = %bb.f
  %i.p = tail call noundef ptr @palloc0(i64 noundef 40) #10 ; 4 uses
  store i32 335, ptr %i.p, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call ptr @replace_nestloop_params_mutator(ptr noundef %i.r, ptr noundef nonnull %1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.s, ptr %i.t, align 8
  br label %common.ret29

bb.h:                                             ; preds = %bb.f
  %i.u = tail call ptr @replace_nestloop_param_placeholdervar(ptr noundef nonnull %1, ptr noundef nonnull %0) #10
  br label %common.ret29

bb.i:                                             ; preds = %bb.b
  %i.v = tail call ptr @expression_tree_mutator_impl(ptr noundef nonnull %0, ptr noundef nonnull @replace_nestloop_params_mutator, ptr noundef %1) #10
  br label %common.ret29
}

declare ptr @replace_nestloop_param_var(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @find_placeholder_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @replace_nestloop_param_placeholdervar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @expression_tree_mutator_impl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @is_redundant_with_indexclauses(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @contain_mutable_functions(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @predicate_implied_by(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #2

declare i32 @exprType(ptr noundef) local_unnamed_addr #2

declare i32 @get_opfamily_member_for_cmptype(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lappend_oid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @fix_indexqual_clause(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @replace_nestloop_params_mutator(ptr noundef %3, ptr noundef %0) ; 7 uses
  %i.b = load i32, ptr %i.a, align 4
  switch i32 %i.b, label %bb.j [
    i32 17, label %bb.b
    i32 37, label %bb.c
    i32 20, label %bb.h
    i32 52, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val46 = load ptr, ptr %i.e, align 8
  %i.f = load ptr, ptr %.val46, align 8
  %i.g = tail call fastcc ptr @fix_indexqual_operand(ptr noundef %i.f, ptr noundef %1, i32 noundef %2)
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %.val45 = load ptr, ptr %i.i, align 8
  store ptr %i.g, ptr %.val45, align 8
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.not = icmp eq ptr %i.k, null
  %.not43 = icmp eq ptr %4, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %brmerge = select i1 %.not43, i1 true, i1 %.not
  br i1 %brmerge, label %.thread, label %.split.split

.split.split:                                     ; preds = %bb.c, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.c ] ; 5 uses
  %i.p = load i32, ptr %i.m, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.split.split
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  br label %bb.e

bb.e:                                             ; preds = %.split.split, %bb.d
  %i.u = phi ptr [ %i.t, %bb.d ], [ null, %.split.split ] ; 3 uses
  %i.v = load i32, ptr %i.l, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv, %i.w
  br i1 %i.x, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.z = icmp ne ptr %i.u, null
  %i.aa = icmp ne ptr %i.y, null
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.u, align 8
  %i.ae = load i32, ptr %i.ac, align 8
  %i.af = tail call fastcc ptr @fix_indexqual_operand(ptr noundef %i.ad, ptr noundef %1, i32 noundef %i.ae)
  store ptr %i.af, ptr %i.u, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %.split.split, !llvm.loop !47

bb.h:                                             ; preds = %bb.a
end_hunk_0
