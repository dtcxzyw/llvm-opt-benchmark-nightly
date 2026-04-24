inline.NumInlined: 4259
inline.NumDeleted: 2180
begin_hunk_0_@_ZN6duckdb22DuckTransactionManager17CommitTransactionERNS_13ClientContextERNS_11TransactionE:bb.a

bb.s:                                             ; preds = %bb.r
  %.not95 = icmp uge i64 %i.ac, %i.af
  %spec.select = zext i1 %.not95 to i8
  br label %bb.v

.thread287:                                       ; preds = %bb.n, %.noexc130, %.noexc131
end_hunk_0
begin_hunk_1_@_ZN6duckdb22DuckTransactionManager17CommitTransactionERNS_13ClientContextERNS_11TransactionE:bb.a
  br label %bb.ee

bb.v:                                             ; preds = %bb.s, %bb.q
  %.090 = phi i8 [ 0, %bb.q ], [ %spec.select, %bb.s ] ; 4 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !177, !nonnull !69, !align !164 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !198
end_hunk_1
begin_hunk_2_@_ZN6duckdb22DuckTransactionManager17CommitTransactionERNS_13ClientContextERNS_11TransactionE:bb.a
  %i.ay = load ptr, ptr %11, align 8, !tbaa !142
  store ptr %i.ay, ptr %9, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %30 = trunc nuw i8 %.090 to i1
  br i1 %30, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %_ZNSt10unique_ptrISt10lock_guardISt5mutexESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
end_hunk_2
begin_hunk_3_@_ZN6duckdb22DuckTransactionManager17CommitTransactionERNS_13ClientContextERNS_11TransactionE:bb.a
  unreachable

_ZNSt11unique_lockISt5mutexE4lockEv.exit:         ; preds = %.noexc134, %.noexc133, %bb.ae, %_ZN6duckdb15DuckTransaction16ShouldWriteToWALERNS_16AttachedDatabaseE.exit
  %.1.i273 = phi i1 [ true, %bb.ae ], [ false, %_ZN6duckdb15DuckTransaction16ShouldWriteToWALERNS_16AttachedDatabaseE.exit ], [ false, %.noexc133 ], [ false, %.noexc134 ]
  %i.cg = load i8, ptr %0, align 8, !tbaa !347, !range !68, !noundef !69
  %i.ch = trunc nuw i8 %i.cg to i1
  %.not = xor i1 %i.ch, true
end_hunk_3
begin_hunk_4_@_ZN6duckdb22DuckTransactionManager17CommitTransactionERNS_13ClientContextERNS_11TransactionE:bb.a
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !176
  call void @_ZN6duckdb22DuckTransactionManager18CheckpointDecisionD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %31 = trunc nuw i8 %.090 to i1
  %or.cond4 = select i1 %.1.i273, i1 %31, i1 false
  %or.cond4.not = xor i1 %or.cond4, true
  %i.cq = load i8, ptr %8, align 8, !range !68
  %i.cr = trunc nuw i8 %i.cq to i1
  %or.cond7 = select i1 %or.cond4.not, i1 true, i1 %i.cr
end_hunk_4
begin_hunk_5_@_ZN6duckdb22DuckTransactionManager17CommitTransactionERNS_13ClientContextERNS_11TransactionE:bb.a
  br label %bb.ee

bb.ao:                                            ; preds = %bb.ai, %_ZN6duckdb9ErrorDataD2Ev.exit164, %_ZNSt11unique_lockISt5mutexE4lockEv.exit
  %.191 = phi i8 [ %.090, %bb.ai ], [ 0, %_ZN6duckdb9ErrorDataD2Ev.exit164 ], [ %.090, %_ZNSt11unique_lockISt5mutexE4lockEv.exit ] ; 2 uses
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !177, !nonnull !69, !align !164
  %i.dy = invoke noundef zeroext i1 @_ZNK6duckdb16AttachedDatabase8IsSystemEv(ptr noundef nonnull align 8 dereferenceable(408) %i.dx)
          to label %bb.ap unwind label %bb.ab
end_hunk_5
begin_hunk_6_@_ZN6duckdb22DuckTransactionManager17CommitTransactionERNS_13ClientContextERNS_11TransactionE:bb.a
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, %bb.cr, %bb.cq
  %.292 = phi i8 [ %.191, %bb.cq ], [ 0, %_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EE5resetEPS1_.exit ], [ %.191, %bb.cr ]
  %i.kf = load i8, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !289, !range !68, !noundef !69
  %i.kg = trunc nuw i8 %i.kf to i1
  %i.kh = getelementptr inbounds nuw i8, ptr %7, i64 10
end_hunk_6
begin_hunk_7_@_ZN6duckdb22DuckTransactionManager17CommitTransactionERNS_13ClientContextERNS_11TransactionE:bb.a

bb.db:                                            ; preds = %_ZNSt5queueIN6duckdb10unique_ptrINS0_15DuckCleanupInfoESt14default_deleteIS2_ELb1EEESt5dequeIS5_SaIS5_EEE7emplaceIJS5_EEEvDpOT_.exit, %bb.ct
  %i.lk = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #33 ; 0 uses
  %32 = trunc nuw i8 %.292 to i1                  ; 2 uses
  br i1 %32, label %_ZN6duckdb10unique_ptrISt10lock_guardISt5mutexESt14default_deleteIS3_ELb1EE5resetEPS3_.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ll = load ptr, ptr %9, align 8, !tbaa !142   ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN6duckdb22DuckTransactionManager17CommitTransactionERNS_13ClientContextERNS_11TransactionE:bb.a
bb.dq:                                            ; preds = %bb.dp
  %i.mo = extractvalue { ptr, i32 } %i.mk, 0
  %i.mp = call ptr @__cxa_begin_catch(ptr %i.mo) #33
  br i1 %32, label %bb.dr, label %bb.dx

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #33
end_hunk_8
begin_hunk_9_@_ZN6duckdb15DuckTransaction10PushDeleteERNS_9DataTableERNS_17RowVersionManagerEmPlmm:bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.h = phi i1 [ false, %bb.c ], [ true, %bb.a ], [ true, %bb.b ] ; 2 uses
  %.039 = phi i64 [ %i.g, %bb.c ], [ 56, %bb.a ], [ 56, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_9
begin_hunk_10_@_ZN6duckdb15DuckTransaction10PushDeleteERNS_9DataTableERNS_17RowVersionManagerEmPlmm:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 %6, ptr %i.af, align 8, !tbaa !523
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %8 = zext i1 %i.h to i8
  store i8 %8, ptr %i.ag, align 8, !tbaa !524
  br i1 %i.h, label %.loopexit, label %bb.f

end_hunk_10
