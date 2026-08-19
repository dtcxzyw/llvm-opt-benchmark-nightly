inline.NumInlined: 116
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@recordDependencyOn

declare ptr @construct_array_builtin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @LookupFuncName(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @NameListToString(ptr noundef) local_unnamed_addr #2

declare ptr @func_signature_string(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_func_rettype(i32 noundef) local_unnamed_addr #2

declare signext i8 @func_volatile(i32 noundef) local_unnamed_addr #2

declare i32 @get_opclass_oid(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @get_opclass_input_type(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @IsBinaryCoercible(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @GetDefaultOpClass(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @get_func_name(i32 noundef) local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_rels_with_domain(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca [2 x %struct.ScanKeyData], align 16 ; 5 uses
  %i.a = tail call ptr @format_type_be(i32 noundef %0) #9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  tail call void @check_stack_depth() #9
  %i.b = tail call ptr @table_open(i32 noundef 2608, i32 noundef 1) #9 ; 2 uses
  call void @ScanKeyInit(ptr noundef nonnull %1, i16 noundef signext 4, i16 noundef zeroext 3, i32 noundef 184, i64 noundef 1247) #9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = zext i32 %0 to i64
  call void @ScanKeyInit(ptr noundef nonnull %i.c, i16 noundef signext 5, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.d) #9
  %i.e = call ptr @systable_beginscan(ptr noundef %i.b, i32 noundef 2674, i1 noundef zeroext true, ptr noundef null, i32 noundef 2, ptr noundef nonnull %1) #9 ; 3 uses
  %i.f = call ptr @systable_getnext(ptr noundef %i.e) #9 ; 2 uses
  %.not108 = icmp eq ptr %i.f, null
  br i1 %.not108, label %._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.a, %bb.o
  %i.g = phi ptr [ %i.cp, %bb.o ], [ %i.f, %bb.a ]
  %.069109 = phi ptr [ %.473, %bb.o ], [ null, %bb.a ] ; 10 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.j = load i8, ptr %i.i, align 2
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 %i.k ; 5 uses
  %i.m = load i32, ptr %i.l, align 4
  switch i32 %i.m, label %bb.o [
    i32 1247, label %bb.b
    i32 1259, label %bb.e
  ], !llvm.loop !20

bb.b:                                             ; preds = %.lr.ph110
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = call signext i8 @get_typtype(i32 noundef %i.o) #9
  %i.q = icmp eq i8 %i.p, 100
  %i.r = load i32, ptr %i.n, align 4              ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = call fastcc ptr @get_rels_with_domain(i32 noundef %i.r)
  %i.t = call ptr @list_concat(ptr noundef %.069109, ptr noundef %i.s) #9
  br label %bb.o, !llvm.loop !20

bb.d:                                             ; preds = %bb.b
  call void @find_composite_type_dependencies(i32 noundef %i.r, ptr noundef null, ptr noundef %i.a) #9
  br label %bb.o, !llvm.loop !20

bb.e:                                             ; preds = %.lr.ph110
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %bb.o, label %.preheader, !llvm.loop !20

.preheader:                                       ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.069109, i64 16
  %.not81 = icmp eq ptr %.069109, null
  br i1 %.not81, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %.069109, i64 4
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph101, label %.loopexit

.lr.ph101:                                        ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ac = load ptr, ptr %i.x, align 8
  %i.ad = load i32, ptr %i.ab, align 4
  %wide.trip.count = zext nneg i32 %i.z to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph101, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph101 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load i32, ptr %i.ah, align 8
  %.not83 = icmp eq i32 %i.ai, %i.ad
  br i1 %.not83, label %.critedge89, label %bb.f

.loopexit:                                        ; preds = %bb.f, %.lr.ph, %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = call ptr @relation_open(i32 noundef %i.ak, i32 noundef 5) #9 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %.not84 = icmp eq i32 %i.ap, 0
  br i1 %.not84, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  call void @find_composite_type_dependencies(i32 noundef %i.ap, ptr noundef null, ptr noundef %i.a) #9
  %.pre = load ptr, ptr %i.am, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.aq = phi ptr [ %.pre, %bb.h ], [ %i.an, %.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 119
  %i.as = load i8, ptr %i.ar, align 1
  switch i8 %i.as, label %bb.j [
    i8 114, label %.thread
    i8 109, label %.thread
  ]

.thread:                                          ; preds = %bb.i, %bb.i
  %i.at = call ptr @palloc(i64 noundef 24) #9     ; 5 uses
  store ptr %i.al, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.am, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.ax = load i16, ptr %i.aw, align 4
  %i.ay = sext i16 %i.ax to i64
  %i.az = call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.ay) #9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = call ptr @lappend(ptr noundef %.069109, ptr noundef nonnull %i.at) #9
  %.pre112 = load i32, ptr %i.u, align 4
  br label %.critedge89

bb.j:                                             ; preds = %bb.i
  call void @relation_close(ptr noundef nonnull %i.al, i32 noundef 5) #9
  br label %bb.o

.critedge89:                                      ; preds = %bb.g, %.thread
  %i.bc = phi i32 [ %.pre112, %.thread ], [ %i.v, %bb.g ] ; 2 uses
  %.372 = phi ptr [ %i.bb, %.thread ], [ %.069109, %bb.g ] ; 4 uses
  %.4 = phi ptr [ %i.at, %.thread ], [ %i.af, %bb.g ] ; 3 uses
  %i.bd = load ptr, ptr %.4, align 8              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 120
  %i.bh = load i16, ptr %i.bg, align 4
  %i.bi = sext i16 %i.bh to i32
  %i.bj = icmp sgt i32 %i.bc, %i.bi
  br i1 %i.bj, label %bb.o, label %bb.k, !llvm.loop !20

bb.k:                                             ; preds = %.critedge89
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = add i32 %i.bc, -1
  %i.bn = load i32, ptr %i.bl, align 8
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 3
  %i.bq = getelementptr i8, ptr %i.bl, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 32
  %i.bs = sext i32 %i.bm to i64
  %i.bt = getelementptr inbounds [100 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 91
  %i.bv = load i8, ptr %i.bu, align 1, !range !6, !noundef !7
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.o, label %bb.l, !llvm.loop !20

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 68
  %i.by = load i32, ptr %i.bx, align 4
  %.not87 = icmp eq i32 %i.by, %0
  br i1 %.not87, label %bb.m, label %bb.o, !llvm.loop !20

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.4, i64 8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8            ; 4 uses
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.4, i64 16 ; 2 uses
  %i.cd = icmp sgt i32 %i.ca, 0
  br i1 %i.cd, label %.lr.ph104.preheader, label %.critedge

.lr.ph104.preheader:                              ; preds = %bb.m
  %2 = zext nneg i32 %i.ca to i64
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %bb.n
  %indvars.iv112 = phi i64 [ %2, %.lr.ph104.preheader ], [ %indvars.iv.next113, %bb.n ] ; 4 uses
  %i.ce = load ptr, ptr %i.cc, align 8
  %i.cf = getelementptr [4 x i8], ptr %i.ce, i64 %indvars.iv112 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4            ; 2 uses
  %i.ci = load i32, ptr %i.u, align 4
  %i.cj = icmp sgt i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.n, label %.critedge.loopexit.split.loop.exit125

bb.n:                                             ; preds = %.lr.ph104
  store i32 %i.ch, ptr %i.cf, align 4
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, -1
  %i.ck = icmp sgt i64 %indvars.iv112, 1
  br i1 %i.ck, label %.lr.ph104, label %.critedge, !llvm.loop !21

.critedge.loopexit.split.loop.exit125:            ; preds = %.lr.ph104
  %3 = trunc nuw nsw i64 %indvars.iv112 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %.critedge.loopexit.split.loop.exit125, %bb.m
  %.065.lcssa = phi i32 [ %i.ca, %bb.m ], [ %3, %.critedge.loopexit.split.loop.exit125 ], [ 0, %bb.n ]
  %i.cl = load i32, ptr %i.u, align 4
  %i.cm = load ptr, ptr %i.cc, align 8
  %i.cn = sext i32 %.065.lcssa to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  store i32 %i.cl, ptr %i.co, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.k, %bb.l, %.critedge89, %bb.e, %.lr.ph110, %bb.c, %bb.d, %.critedge
  %.473 = phi ptr [ %.069109, %bb.j ], [ %.069109, %bb.d ], [ %.069109, %bb.e ], [ %.372, %.critedge89 ], [ %.372, %.critedge ], [ %i.t, %bb.c ], [ %.069109, %.lr.ph110 ], [ %.372, %bb.l ], [ %.372, %bb.k ] ; 2 uses
  %i.cp = call ptr @systable_getnext(ptr noundef %i.e) #9 ; 2 uses
  %.not = icmp eq ptr %i.cp, null
  br i1 %.not, label %._crit_edge, label %.lr.ph110

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %.069.lcssa = phi ptr [ null, %bb.a ], [ %.473, %bb.o ]
  call void @systable_endscan(ptr noundef %i.e) #9
  call void @relation_close(ptr noundef %i.b, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret ptr %.069.lcssa
}

declare ptr @RegisterSnapshot(ptr noundef) local_unnamed_addr #2

declare ptr @GetLatestSnapshot() local_unnamed_addr #2

declare ptr @table_slot_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errtablecol(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ExecDropSingleTupleTableSlot(ptr noundef) local_unnamed_addr #2

declare void @UnregisterSnapshot(ptr noundef) local_unnamed_addr #2

declare void @check_stack_depth() local_unnamed_addr #2

declare ptr @list_concat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @find_composite_type_dependencies(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @relation_open(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @relation_close(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @stringToNode(ptr noundef) local_unnamed_addr #2

declare ptr @CreateExecutorState() local_unnamed_addr #2

declare ptr @MakePerTupleExprContext(ptr noundef) local_unnamed_addr #2

declare ptr @ExecPrepareExpr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @MemoryContextReset(ptr noundef) local_unnamed_addr #2

declare void @FreeExecutorState(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @ConstraintNameIsUsed(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ChooseConstraintName(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @replace_domain_constraint_value(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %list_length.exit.thread, label %list_length.exit

list_length.exit:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %list_length.exit.thread

bb.b:                                             ; preds = %list_length.exit
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.f, align 8
  %i.g = load ptr, ptr %.val, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(6) @.str.143) #11
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %list_length.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call ptr @copyObjectImpl(ptr noundef %i.m) #9 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 %i.p, ptr %i.q, align 4
  br label %list_length.exit.thread

list_length.exit.thread:                          ; preds = %bb.b, %bb.a, %list_length.exit, %bb.c
  %.1 = phi ptr [ %i.n, %bb.c ], [ null, %bb.a ], [ null, %list_length.exit ], [ null, %bb.b ]
  ret ptr %.1
}

declare ptr @transformExpr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @coerce_to_boolean(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @assign_expr_collations(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @contain_var_clause(ptr noundef) local_unnamed_addr #2

declare i32 @CreateConstraintEntry(ptr noundef, i32 noundef, i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef signext, i8 noundef signext, ptr noundef, i32 noundef, i8 noundef signext, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef signext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @copyObjectImpl(ptr noundef) local_unnamed_addr #2

declare i64 @getmissingattr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @nocachegetattr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = distinct !{null, null}
!10 = distinct !{null}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{null, null}
!14 = distinct !{null}
!15 = distinct !{null, null}
!16 = distinct !{null}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
end_hunk_0
