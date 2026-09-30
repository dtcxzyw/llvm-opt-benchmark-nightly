Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/jsonpath_gram?download=true
inline.NumInlined: 105
inline.NumDeleted: 21
begin_hunk_0_@jsonpath_yyparse:bb.a
.loopexit607:                                     ; preds = %.thread597, %bb.m, %bb.bn, %bb.bo, %bb.h, %.loopexit607.sink.split
  %.0409 = phi i32 [ %.0409.ph, %.loopexit607.sink.split ], [ 1, %bb.h ], [ 1, %bb.m ], [ 0, %.thread597 ], [ 1, %bb.bn ], [ 1, %bb.bo ] ; 2 uses
  %.5383 = phi ptr [ %.5383.ph, %.loopexit607.sink.split ], [ %i.p, %bb.h ], [ %.3381, %bb.m ], [ %.3381, %.thread597 ], [ %.3381, %bb.bn ], [ %.3381, %bb.bo ] ; 2 uses
  %.not435 = icmp eq ptr %.5383, %i.a
  br i1 %.not435, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %.loopexit607
  call void @pfree(ptr noundef %.5383) #5
  br label %bb.gp

bb.gp:                                            ; preds = %.loopexit607, %bb.go, %bb.ec, %bb.ed
  %.0 = phi i32 [ %.0409, %bb.go ], [ 0, %bb.ec ], [ %.0409, %.loopexit607 ], [ 0, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare i32 @jsonpath_yylex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @makeItemUnary(i32 noundef range(i32 6, 60) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 19, label %bb.b
    i32 20, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.j, label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %.not14 = icmp eq ptr %i.h, null
  br i1 %.not14, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @palloc(i64 noundef 40) #5 ; 3 uses
  %i.j = load volatile i32, ptr @InterruptPending, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %makeItemType.exit, label %bb.g, !prof !4

bb.g:                                             ; preds = %bb.f
  tail call void @ProcessInterrupts() #5
  br label %makeItemType.exit

makeItemType.exit:                                ; preds = %bb.f, %bb.g
  store i32 2, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = tail call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @numeric_uminus, i32 noundef 0, i64 noundef %i.n) #5
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call ptr @pg_detoast_datum(ptr noundef %i.p) #5
  br label %.sink.split

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.e, %bb.d
  %i.r = tail call ptr @palloc(i64 noundef 40) #5 ; 3 uses
  %i.s = load volatile i32, ptr @InterruptPending, align 4
  %.not.i15 = icmp eq i32 %i.s, 0
  br i1 %.not.i15, label %makeItemType.exit16, label %bb.i, !prof !4

bb.i:                                             ; preds = %bb.h
  tail call void @ProcessInterrupts() #5
  br label %makeItemType.exit16

makeItemType.exit16:                              ; preds = %bb.h, %bb.i
  store i32 %0, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %i.t, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %makeItemType.exit, %makeItemType.exit16
  %.sink18 = phi ptr [ %i.r, %makeItemType.exit16 ], [ %i.i, %makeItemType.exit ] ; 2 uses
  %.sink = phi ptr [ %1, %makeItemType.exit16 ], [ %i.q, %makeItemType.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sink18, i64 16
  store ptr %.sink, ptr %i.u, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi ptr [ %1, %bb.c ], [ %.sink18, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @makeItemLikeRegex(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.pg_regex_t, align 8         ; 6 uses
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  %i.b = tail call ptr @palloc(i64 noundef 40) #5 ; 7 uses
  %i.c = load volatile i32, ptr @InterruptPending, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %makeItemType.exit, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @ProcessInterrupts() #5
  br label %makeItemType.exit

makeItemType.exit:                                ; preds = %bb.a, %bb.b
  store i32 42, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.e, align 8
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  store i32 0, ptr %i.k, align 4
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %makeItemType.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph57, label %.thread

.lr.ph57:                                         ; preds = %.lr.ph, %switch.lookup
  %i.o = phi i32 [ %i.ag, %switch.lookup ], [ 0, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %switch.lookup ], [ 0, %.lr.ph ] ; 4 uses
  %i.p = load ptr, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1
  %switch.tableidx = add i8 %i.r, -105            ; 3 uses
  %i.s = icmp ult i8 %switch.tableidx, 16
  br i1 %i.s, label %switch.hole_check, label %.split

.split:                                           ; preds = %switch.hole_check, %.lr.ph57
  %i.t = tail call zeroext i1 @errsave_start(ptr noundef %4, ptr noundef null) #5
  br i1 %i.t, label %bb.c, label %jspConvertRegexFlags.exit

bb.c:                                             ; preds = %.split
  %i.u = tail call i32 @errcode(i32 noundef 16801924) #5 ; 0 uses
  %i.v = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5 ; 0 uses
  %i.w = load ptr, ptr %2, align 8                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.y = load i32, ptr %i.l, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = tail call i32 @pg_mblen_range(ptr noundef %i.x, ptr noundef %i.aa) #5
  %i.ac = load ptr, ptr %2, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv
  %i.ae = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.12, i32 noundef %i.ab, ptr noundef %i.ad) #5 ; 0 uses
  tail call void @errsave_finish(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef 634, ptr noundef nonnull @__func__.makeItemLikeRegex) #5
  br label %jspConvertRegexFlags.exit

switch.hole_check:                                ; preds = %.lr.ph57
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 -31471, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.split

switch.lookup:                                    ; preds = %switch.hole_check
  %i.af = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.makeItemLikeRegex, i64 %i.af
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.ag = or i32 %i.o, %switch.ext                ; 6 uses
  store i32 %i.ag, ptr %i.k, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.l, align 8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %.lr.ph57, label %.critedge

.critedge:                                        ; preds = %switch.lookup
  %6 = and i32 %i.ag, 1
  %.not.i49 = icmp eq i32 %6, 0
  %spec.select.i = select i1 %.not.i49, i32 3, i32 11 ; 2 uses
  %i.ak = and i32 %i.ag, 16
  %.not16.i = icmp eq i32 %i.ak, 0
  br i1 %.not16.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge
  %7 = and i32 %spec.select.i, 8
  %i.al = or disjoint i32 %7, 4
  br label %.thread

bb.e:                                             ; preds = %.critedge
  %i.am = shl nuw nsw i32 %i.ag, 5
  %i.an = and i32 %i.am, 192
  %i.ao = or disjoint i32 %spec.select.i, %i.an
  %.2.i = xor i32 %i.ao, 64
  %i.ap = and i32 %i.ag, 8
  %.not19.i = icmp eq i32 %i.ap, 0
  br i1 %.not19.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = tail call zeroext i1 @errsave_start(ptr noundef %4, ptr noundef null) #5
  br i1 %i.aq, label %bb.g, label %jspConvertRegexFlags.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = tail call i32 @errcode(i32 noundef 1088) #5 ; 0 uses
  %i.as = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10) #5 ; 0 uses
  tail call void @errsave_finish(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef 711, ptr noundef nonnull @__func__.jspConvertRegexFlags) #5
  br label %jspConvertRegexFlags.exit

.thread:                                          ; preds = %makeItemType.exit, %.lr.ph, %bb.e, %bb.d
  %.0.ph = phi i32 [ %.2.i, %bb.e ], [ %i.al, %bb.d ], [ 67, %.lr.ph ], [ 67, %makeItemType.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.at = load i32, ptr %i.h, align 8
  %i.au = add i32 %i.at, 1
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = tail call ptr @palloc(i64 noundef %i.aw) #5 ; 2 uses
  %i.ay = load ptr, ptr %1, align 8
  %i.az = load i32, ptr %i.h, align 8
  %i.ba = tail call i32 @pg_mb2wchar_with_len(ptr noundef %i.ay, ptr noundef %i.ax, i32 noundef %i.az) #5
  %i.bb = sext i32 %i.ba to i64
  %i.bc = call i32 @pg_regcomp(ptr noundef nonnull %5, ptr noundef %i.ax, i64 noundef %i.bb, i32 noundef %.0.ph, i32 noundef 100) #5 ; 2 uses
  %.not48 = icmp eq i32 %i.bc, 0
  br i1 %.not48, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.bd = call i64 @pg_regerror(i32 noundef %i.bc, ptr noundef nonnull %5, ptr noundef nonnull %i.a, i64 noundef 100) #5 ; 0 uses
  %i.be = call zeroext i1 @errsave_start(ptr noundef %4, ptr noundef null) #5
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = call i32 @errcode(i32 noundef 302252162) #5 ; 0 uses
  %i.bg = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #5 ; 0 uses
  call void @errsave_finish(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef 663, ptr noundef nonnull @__func__.makeItemLikeRegex) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %jspConvertRegexFlags.exit

bb.k:                                             ; preds = %.thread
  call void @pg_regfree(ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  store ptr %i.b, ptr %3, align 8
  br label %jspConvertRegexFlags.exit

jspConvertRegexFlags.exit:                        ; preds = %bb.j, %bb.g, %bb.f, %.split, %bb.c, %bb.k
  %.2 = phi i1 [ false, %.split ], [ true, %bb.k ], [ false, %bb.j ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.2
}

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #2

declare ptr @list_make2_impl(i32 noundef, ptr, ptr) local_unnamed_addr #2

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pg_strtoint32(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @errsave_start(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #2

declare void @errsave_finish(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @jsonpath_yyerror(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @jspConvertRegexFlags(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = and i32 %0, 1
  %.not = icmp eq i32 %3, 0
  %spec.select = select i1 %.not, i32 3, i32 11   ; 2 uses
  %i.a = and i32 %0, 16
  %.not16 = icmp eq i32 %i.a, 0
  br i1 %.not16, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = and i32 %spec.select, 8
  %i.b = or disjoint i32 %4, 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = shl i32 %0, 5
  %i.d = and i32 %i.c, 192
  %i.e = or disjoint i32 %i.d, %spec.select
  %.2 = xor i32 %i.e, 64
  %i.f = and i32 %0, 8
  %.not19 = icmp eq i32 %i.f, 0
  br i1 %.not19, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call zeroext i1 @errsave_start(ptr noundef %2, ptr noundef null) #5
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @errcode(i32 noundef 1088) #5 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10) #5 ; 0 uses
  tail call void @errsave_finish(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 711, ptr noundef nonnull @__func__.jspConvertRegexFlags) #5
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %.3 = phi i32 [ %i.b, %bb.b ], [ %.2, %bb.c ]
  store i32 %.3, ptr %1, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.015 = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.015
}

declare void @ProcessInterrupts() local_unnamed_addr #2

declare i64 @DirectFunctionCall3Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @numeric_in(ptr noundef) #2

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

declare i64 @DirectFunctionCall1Coll(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @numeric_uminus(ptr noundef) #2

declare i32 @pg_mblen_range(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pg_mb2wchar_with_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @pg_regcomp(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @pg_regerror(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @pg_regfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!5 = distinct !{!5, !9}
!6 = distinct !{!6, !9}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
