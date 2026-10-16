Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/sequencesync?download=true
inline.NumInlined: 56
inline.NumDeleted: 20
begin_hunk_0_@start_sequence_sync:bb.a

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  br i1 %i.ml, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call fastcc void @get_sequences_string(ptr noundef readonly %.080.lcssa.i.i, ptr noundef %0)
  %i.ni = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #8
  br i1 %i.ni, label %list_length.exit33.i.i.i, label %bb.bv

list_length.exit33.i.i.i:                         ; preds = %bb.bu
  %i.nj = call i32 @errcode(i32 noundef 325) #8   ; 0 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.080.lcssa.i.i, i64 4 ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 4
  %i.nm = sext i32 %i.nl to i64
  %i.nn = load ptr, ptr %0, align 8
  %i.no = call i32 (ptr, ptr, i64, ...) @errmsg_plural(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i64 noundef %i.nm, ptr noundef %i.nn) #8 ; 0 uses
  %i.np = load i32, ptr %i.nk, align 4
  %i.nq = sext i32 %i.np to i64
  %i.nr = call i32 (ptr, ptr, i64, ...) @errhint_plural(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i64 noundef %i.nq) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 239, ptr noundef nonnull @__func__.report_sequence_errors) #8
  br label %bb.bv

bb.bv:                                            ; preds = %list_length.exit33.i.i.i, %bb.bu, %bb.bt
  br i1 %i.mm, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call fastcc void @get_sequences_string(ptr noundef readonly %.085.lcssa.i.i, ptr noundef %0)
  %i.ns = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #8
  br i1 %i.ns, label %list_length.exit35.i.i.i, label %bb.bx

list_length.exit35.i.i.i:                         ; preds = %bb.bw
  %i.nt = call i32 @errcode(i32 noundef 325) #8   ; 0 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.085.lcssa.i.i, i64 4
  %i.nv = load i32, ptr %i.nu, align 4
  %i.nw = sext i32 %i.nv to i64
  %i.nx = load ptr, ptr %0, align 8
  %i.ny = call i32 (ptr, ptr, i64, ...) @errmsg_plural(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i64 noundef %i.nw, ptr noundef %i.nx) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 250, ptr noundef nonnull @__func__.report_sequence_errors) #8
  br label %bb.bx

bb.bx:                                            ; preds = %list_length.exit35.i.i.i, %bb.bw, %bb.bv
  %i.nz = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.oa = call i32 @errcode(i32 noundef 325) #8   ; 0 uses
  %i.ob = load ptr, ptr @MySubscription, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.24, ptr noundef %i.od) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 256, ptr noundef nonnull @__func__.report_sequence_errors) #8
  unreachable

copy_sequences.exit.i:                            ; preds = %._crit_edge208.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %LogicalRepSyncSequences.exit

LogicalRepSyncSequences.exit:                     ; preds = %._crit_edge.i, %copy_sequences.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.cb

bb.by:                                            ; preds = %bb.a
  store ptr %i.c, ptr @PG_exception_stack, align 8
  store ptr %i.d, ptr @error_context_stack, align 8
  %i.of = load ptr, ptr @MySubscription, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 41
  %i.oh = load i8, ptr %i.og, align 1, !range !4, !noundef !5
  %i.oi = trunc nuw i8 %i.oh to i1
  br i1 %i.oi, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @DisableSubscriptionAndExit() #8
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  call void @AbortOutOfAnyTransaction() #8
  %i.oj = load ptr, ptr @MySubscription, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load i32, ptr %i.ok, align 8
  call void @pgstat_report_subscription_error(i32 noundef %i.ol) #8
  call void @pg_re_throw() #9
  unreachable

bb.cb:                                            ; preds = %LogicalRepSyncSequences.exit, %bb.bz
  store ptr %i.c, ptr @PG_exception_stack, align 8
  store ptr %i.d, ptr @error_context_stack, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret void
}

; Function Attrs: noreturn
declare void @FinishSyncWorker() local_unnamed_addr #4

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @DisableSubscriptionAndExit() local_unnamed_addr #2

declare void @AbortOutOfAnyTransaction() local_unnamed_addr #2

declare void @pgstat_report_subscription_error(i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @pg_re_throw() local_unnamed_addr #4

declare void @StartTransactionCommand() local_unnamed_addr #2

declare ptr @table_open(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ScanKeyInit(ptr noundef, i16 noundef signext, i16 noundef zeroext, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @systable_beginscan(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @systable_getnext(ptr noundef) local_unnamed_addr #2

declare void @ProcessInterrupts() local_unnamed_addr #2

declare ptr @try_table_open(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @table_close(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

declare ptr @get_namespace_name(i32 noundef) local_unnamed_addr #2

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #2

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @systable_endscan(ptr noundef) local_unnamed_addr #2

declare void @initStringInfo(ptr noundef) local_unnamed_addr #2

declare void @appendStringInfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @GetSystemIdentifier() local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @appendStringInfoString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @quote_literal_cstr(ptr noundef) local_unnamed_addr #2

declare ptr @MakeSingleTupleTableSlot(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @tuplestore_gettupleslot(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @ProcessConfigFile(i32 noundef) local_unnamed_addr #2

declare ptr @lappend_int(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ExecDropSingleTupleTableSlot(ptr noundef) local_unnamed_addr #2

declare void @resetStringInfo(ptr noundef) local_unnamed_addr #2

declare ptr @SearchSysCache1(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare void @ReleaseSysCache(ptr noundef) local_unnamed_addr #2

declare void @SwitchToUntrustedUser(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pg_class_aclcheck(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @GetUserId() local_unnamed_addr #2

declare void @RestoreUserContext(ptr noundef) local_unnamed_addr #2

declare void @SetSequence(i32 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @UpdateSubscriptionRelState(i32 noundef, i32 noundef, i8 noundef signext, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @tuplestore_end(ptr noundef) local_unnamed_addr #2

declare void @FreeTupleDesc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @get_sequences_string(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  tail call void @resetStringInfo(ptr noundef nonnull %1) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.split15.us, label %.critedge

.split15.us:                                      ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.split15.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.split15.us ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.d = load ptr, ptr %2, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 8
  %i.g = load ptr, ptr @seqinfos, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val = load ptr, ptr %i.h, align 8
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load i32, ptr %3, align 8
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

.critedge:                                        ; preds = %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph
  tail call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.k, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str.25, ptr noundef %i.o, ptr noundef %i.p) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.a, align 4
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %.critedge, !llvm.loop !16
}

declare i32 @errmsg_plural(ptr noundef, ptr noundef, i64 noundef, ...) local_unnamed_addr #2

declare i32 @errhint_plural(ptr noundef, ptr noundef, i64 noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind returns_twice }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{null}
!9 = distinct !{!9, !6}
!10 = distinct !{null, null}
!11 = distinct !{null, null, null, null, null}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = distinct !{!16, !6}
end_hunk_0
