inline.NumInlined: 200
inline.NumDeleted: 32
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@eval_const_expressions_mutator:bb.a

bb.fv:                                            ; preds = %bb.fu
  %i.afo = getelementptr inbounds nuw i8, ptr %.tr1002, i64 16
  %i.afp = load i32, ptr %i.afo, align 8
  tail call void @record_plan_type_dependency(ptr noundef nonnull %i.afl, i32 noundef %i.afp) #7
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu, %bb.ft
  %i.afq = getelementptr inbounds nuw i8, ptr %.tr1002, i64 16
  %i.afr = load i32, ptr %i.afq, align 8
  %i.afs = getelementptr inbounds nuw i8, ptr %.tr1002, i64 20
  %i.aft = load i32, ptr %i.afs, align 4
  %i.afu = getelementptr inbounds nuw i8, ptr %.tr1002, i64 24
  %i.afv = load i32, ptr %i.afu, align 8
  %i.afw = getelementptr inbounds nuw i8, ptr %.tr1002, i64 28
  %i.afx = load i32, ptr %i.afw, align 4
  %i.afy = getelementptr inbounds nuw i8, ptr %.tr1002, i64 32
  %i.afz = load i32, ptr %i.afy, align 8
  %i.aga = tail call ptr @applyRelabelType(ptr noundef %i.afe, i32 noundef %i.afr, i32 noundef %i.aft, i32 noundef %i.afv, i32 noundef %i.afx, i32 noundef %i.afz, i1 noundef zeroext true) #7
  br label %common.ret1360

bb.fx:                                            ; preds = %bb.fs
  %i.agb = tail call noundef ptr @palloc0(i64 noundef 40) #7 ; 8 uses
  store i32 55, ptr %i.agb, align 4
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  store ptr %i.afe, ptr %i.agc, align 8
  %i.agd = load i32, ptr %i.afh, align 8
  %i.age = getelementptr inbounds nuw i8, ptr %i.agb, i64 16
  store i32 %i.agd, ptr %i.age, align 8
  %i.agf = getelementptr inbounds nuw i8, ptr %.tr1002, i64 20
  %i.agg = load i32, ptr %i.agf, align 4
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agb, i64 20
  store i32 %i.agg, ptr %i.agh, align 4
  %i.agi = getelementptr inbounds nuw i8, ptr %.tr1002, i64 24
  %i.agj = load i32, ptr %i.agi, align 8
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agb, i64 24
  store i32 %i.agj, ptr %i.agk, align 8
  %i.agl = getelementptr inbounds nuw i8, ptr %.tr1002, i64 28
  %i.agm = load i32, ptr %i.agl, align 4
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agb, i64 28
  store i32 %i.agm, ptr %i.agn, align 4
  %i.ago = getelementptr inbounds nuw i8, ptr %.tr1002, i64 32
  %i.agp = load i32, ptr %i.ago, align 8
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agb, i64 32
  store i32 %i.agp, ptr %i.agq, align 8
  br label %common.ret1360

bb.fy:                                            ; preds = %bb.b
  %i.agr = load i8, ptr %i.p, align 8, !range !5, !noundef !6
  %i.ags = trunc nuw i8 %i.agr to i1
  br i1 %i.ags, label %tailrecurse.backedge, label %.thread883

bb.fz:                                            ; preds = %bb.b
  %i.agt = getelementptr inbounds nuw i8, ptr %.tr1002, i64 8
  %i.agu = load ptr, ptr %i.agt, align 8
  %i.agv = tail call ptr @eval_const_expressions_mutator(ptr noundef %i.agu, ptr noundef %1) ; 6 uses
  %i.agw = tail call noundef ptr @palloc0(i64 noundef 32) #7 ; 14 uses
  store i32 30, ptr %i.agw, align 4
  %i.agx = getelementptr inbounds nuw i8, ptr %.tr1002, i64 16
  %i.agy = load i32, ptr %i.agx, align 8
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agw, i64 16
  store i32 %i.agy, ptr %i.agz, align 8
  %i.aha = getelementptr inbounds nuw i8, ptr %.tr1002, i64 20
  %i.ahb = load i32, ptr %i.aha, align 4          ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agw, i64 20 ; 2 uses
  store i32 %i.ahb, ptr %i.ahc, align 4
  %i.ahd = getelementptr inbounds nuw i8, ptr %.tr1002, i64 24
  %i.ahe = load i32, ptr %i.ahd, align 8
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agw, i64 24
  store i32 %i.ahe, ptr %i.ahf, align 8
  %.not806 = icmp eq ptr %i.agv, null
  br i1 %.not806, label %.thread953, label %bb.ga

.thread953:                                       ; preds = %bb.fz
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  store ptr null, ptr %i.ahg, align 8
  br label %common.ret1360

bb.ga:                                            ; preds = %bb.fz
  %i.ahh = load i32, ptr %i.agv, align 4
  %i.ahi = icmp eq i32 %i.ahh, 30
  br i1 %i.ahi, label %bb.gb, label %.thread956

.thread956:                                       ; preds = %bb.ga
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  store ptr %i.agv, ptr %i.ahj, align 8
  br label %bb.ge

bb.gb:                                            ; preds = %bb.ga
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  %i.ahl = load ptr, ptr %i.ahk, align 8          ; 3 uses
  %i.ahm = icmp eq i32 %i.ahb, 2
  br i1 %i.ahm, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.agv, i64 20
  %i.aho = load i32, ptr %i.ahn, align 4
  store i32 %i.aho, ptr %i.ahc, align 4
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gb, %bb.gc
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  store ptr %i.ahl, ptr %i.ahp, align 8
  %.not807 = icmp eq ptr %i.ahl, null
  br i1 %.not807, label %common.ret1360, label %bb.ge

bb.ge:                                            ; preds = %.thread956, %bb.gd
  %.0710959 = phi ptr [ %i.agv, %.thread956 ], [ %i.ahl, %bb.gd ]
  %i.ahq = load i32, ptr %.0710959, align 4
  %i.ahr = icmp eq i32 %i.ahq, 7
  br i1 %i.ahr, label %bb.gf, label %common.ret1360

bb.gf:                                            ; preds = %bb.ge
  %i.ahs = tail call i32 @exprType(ptr noundef nonnull %i.agw) #7
  %i.aht = tail call i32 @exprTypmod(ptr noundef nonnull %i.agw) #7
  %i.ahu = tail call i32 @exprCollation(ptr noundef nonnull %i.agw) #7
  %i.ahv = tail call ptr @evaluate_expr(ptr noundef nonnull %i.agw, i32 noundef %i.ahs, i32 noundef %i.aht, i32 noundef %i.ahu)
  br label %common.ret1360

.thread883:                                       ; preds = %bb.bz, %bb.b, %bb.fy
  %i.ahw = tail call ptr @expression_tree_mutator_impl(ptr noundef nonnull %.tr1002, ptr noundef nonnull @eval_const_expressions_mutator, ptr noundef %1) #7
  br label %common.ret1360
}

; Function Attrs: nounwind uwtable
define dso_local void @convert_saop_to_hashed_saop(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @convert_saop_to_hashed_saop_walker(ptr noundef %0, ptr poison) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @convert_saop_to_hashed_saop_walker(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4
  %i.e = icmp eq i32 %i.d, 20
  br i1 %i.e, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val37 = load ptr, ptr %i.h, align 8           ; 2 uses
  %i.i = load ptr, ptr %.val37, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val37, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 7
  br i1 %i.m, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = load i8, ptr %i.n, align 8, !range !5, !noundef !6
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.critedge.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i8, ptr %i.q, align 4, !range !5, !noundef !6
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i32 @exprType(ptr noundef %i.i) #7
  %i.w = call zeroext i1 @get_op_hash_functions_ext(i32 noundef %i.u, i32 noundef %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  br i1 %i.w, label %bb.h, label %.critedge.thread

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.a, align 4
  %i.y = load i32, ptr %i.b, align 4
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = call i32 @ArrayGetNItems(i32 noundef %i.ae, ptr noundef nonnull %i.af) #7
  %i.ah = icmp sgt i32 %i.ag, 8
  br i1 %i.ah, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ai = load i32, ptr %i.a, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ai, ptr %2, align 4
  br label %.critedge

bb.k:                                             ; preds = %bb.f
  %i.aj = tail call i32 @get_negator(i32 noundef %i.u) #7 ; 3 uses
  %.not36 = icmp eq i32 %i.aj, 0
  br i1 %.not36, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call i32 @exprType(ptr noundef %i.i) #7
  %i.al = call zeroext i1 @get_op_hash_functions_ext(i32 noundef %i.aj, i32 noundef %i.ak, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  br i1 %i.al, label %bb.m, label %.critedge.thread

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr %i.a, align 4
  %i.an = load i32, ptr %i.b, align 4
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %.critedge.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = call i32 @ArrayGetNItems(i32 noundef %i.at, ptr noundef nonnull %i.au) #7
  %i.aw = icmp sgt i32 %i.av, 8
  br i1 %i.aw, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %i.a, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = call i32 @get_opcode(i32 noundef %i.aj) #7
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.az, ptr %3, align 8
  br label %.critedge

.critedge.thread:                                 ; preds = %bb.c, %bb.m, %bb.l, %bb.k, %bb.h, %bb.g, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.p

.critedge:                                        ; preds = %bb.n, %bb.o, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.q

bb.p:                                             ; preds = %.critedge.thread, %bb.b
  %i.ba = call zeroext i1 @expression_tree_walker_impl(ptr noundef nonnull %0, ptr noundef nonnull @convert_saop_to_hashed_saop_walker, ptr noundef null) #7
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.a, %bb.p
  %.3 = phi i1 [ false, %.critedge ], [ %i.ba, %bb.p ], [ false, %bb.a ]
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @estimate_expression_value(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.eval_const_expressions_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.f, align 8
  %i.g = call ptr @eval_const_expressions_mutator(ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @var_is_nonnullable(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i32, ptr %i.f, align 4
  %.not42 = icmp eq i32 %i.g, 0
  br i1 %.not42, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i16, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp slt i16 %i.i, 0
  br i1 %i.j, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i16 %i.i, 0
  br i1 %i.k, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %2, label %bb.w [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.o
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = tail call ptr @find_base_rel(ptr noundef %0, i32 noundef %i.m) #7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i16, ptr %i.h, align 8
  %i.r = sext i16 %i.q to i32
  %i.s = tail call zeroext i1 @bms_is_member(i32 noundef %i.r, ptr noundef %i.p) #7
  br label %bb.x

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not46 = icmp eq ptr %i.u, null
  br i1 %.not46, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = add i32 %i.ac, -1
  %i.ae = getelementptr i8, ptr %i.aa, i64 16
  %.val49 = load ptr, ptr %i.ae, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink53 = phi i32 [ %i.ad, %bb.j ], [ %i.w, %bb.i ]
  %.val49.sink = phi ptr [ %.val49, %bb.j ], [ %i.u, %bb.i ]
  %i.af = sext i32 %.sink53 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.val49.sink, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 8
  %.not47 = icmp eq i32 %i.aj, 0
  br i1 %.not47, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !range !5, !noundef !6
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 33
  %i.ao = load i8, ptr %i.an, align 1
  %.not48 = icmp eq i8 %i.ao, 112
  br i1 %.not48, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = tail call ptr @find_relation_notnullatts(ptr noundef nonnull %0, i32 noundef %i.aq) #7
  %i.as = load i16, ptr %i.h, align 8
  %i.at = sext i16 %i.as to i32
  %i.au = tail call zeroext i1 @bms_is_member(i32 noundef %i.at, ptr noundef %i.ar) #7
  br label %bb.x

bb.o:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not43 = icmp eq ptr %i.aw, null
  br i1 %.not43, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add i32 %i.be, -1
  %i.bg = getelementptr i8, ptr %i.bc, i64 16
  %.val = load ptr, ptr %i.bg, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink54 = phi i32 [ %i.bf, %bb.q ], [ %i.ay, %bb.p ]
  %.val.sink = phi ptr [ %.val, %bb.q ], [ %i.aw, %bb.p ]
  %i.bh = sext i32 %.sink54 to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %.val.sink, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8            ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load i32, ptr %i.bk, align 8
  %.not44 = icmp eq i32 %i.bl, 0
  br i1 %.not44, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bn = load i8, ptr %i.bm, align 8, !range !5, !noundef !6
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = tail call zeroext i1 @has_subclass(i32 noundef %i.bq) #7
  br i1 %i.br, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 33
  %i.bt = load i8, ptr %i.bs, align 1
  %.not45 = icmp eq i8 %i.bt, 112
  br i1 %.not45, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = tail call ptr @table_open(i32 noundef %i.bv, i32 noundef 0) #7 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load i16, ptr %i.h, align 8
  %i.ca = sext i16 %i.bz to i64
  %i.cb = getelementptr [8 x i8], ptr %i.by, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 31
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = icmp eq i8 %i.cd, 118
  tail call void @table_close(ptr noundef %i.bw, i32 noundef 0) #7
end_hunk_0
