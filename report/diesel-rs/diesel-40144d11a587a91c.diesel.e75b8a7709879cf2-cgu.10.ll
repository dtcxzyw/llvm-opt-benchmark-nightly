Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.10?download=true
inline.NumInlined: 294
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTlINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtBT_3ptr8non_null7NonNullShEEEE8grow_oneCsjRvGck33osM_6diesel:bb.a

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !181, !noalias !283, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !283
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !283, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !283
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !283
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !283
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse10copy_value(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !144, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse12column_value.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !15, !align !134, !noundef !15
  br label %_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse12column_value.exit

_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse12column_value.exit: ; preds = %bb.a, %bb.b
  %.sroa.01.0.i = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.e = load ptr, ptr %.sroa.01.0.i, align 8, !nonnull !15, !noundef !15
  %i.f = tail call noundef ptr @sqlite3_column_value(ptr noundef nonnull %i.e, i32 noundef %1) #25 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse12column_value.exit
  %i.g = tail call noundef ptr @_RNvMs1_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_16OwnedSqliteValue13copy_from_ptr(ptr noundef nonnull %i.f)
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse12column_value.exit, %bb.c
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse12column_value.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse10field_name(ptr noundef nonnull align 8 %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef nonnull align 8 ptr @_RINvMNtNtCscI6d9CVNmLh_4core4cell4onceINtB3_8OnceCellINtNtCs40k4W9msRzi_5alloc3vec3VecPeEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB2a_12StatementUse10field_name0E0zEB2g_(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull align 8 %0) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !15, !noundef !15
  %i.f = icmp sgt i32 %1, -1
  br i1 %i.f, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !286
  store i8 3, ptr %i.a, align 1, !noalias !286
  call void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 51, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #26, !noalias !290
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !15
  %i.i = zext nneg i32 %1 to i64                  ; 2 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.i ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noundef !15 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit, %bb.e
  %.sroa.4.0 = phi i64 [ undef, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit ], [ %i.q, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0 = phi ptr [ null, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit ], [ %i.l, %bb.e ], [ null, %bb.c ]
  %i.n = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.o = insertvalue { ptr, i64 } %i.n, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.o

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noundef !15
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse11column_name(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !144, !noundef !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = trunc nuw i64 %i.c to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !15, !align !134, !noundef !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.g = load ptr, ptr %.sroa.0.0, align 8, !nonnull !15, !noundef !15
  %i.h = tail call noundef ptr @sqlite3_column_name(ptr noundef nonnull %i.g, i32 noundef %1) #25 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @34, ptr noundef nonnull inttoptr (i64 205 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #25
  %i.k = add i64 %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs3_NtNtCscI6d9CVNmLh_4core3ffi5c_strNtB5_4CStr6to_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.l = load i64, ptr %i.b, align 8, !range !144, !alias.scope !292, !noundef !15
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.f, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsjRvGck33osM_6diesel.exit, !prof !291

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !292
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 162, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #26, !noalias !292
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsjRvGck33osM_6diesel.exit: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !292, !nonnull !15, !noundef !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !292, !noundef !15
  %i.s = insertvalue { ptr, i64 } poison, ptr %i.p, 0
  %i.t = insertvalue { ptr, i64 } %i.s, i64 %i.r, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.t
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse12column_count(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !144, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !15, !align !134, !noundef !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.e = load ptr, ptr %.sroa.0.0, align 8, !nonnull !15, !noundef !15
  %i.f = tail call noundef i32 @sqlite3_column_count(ptr noundef nonnull %i.e) #25
  ret i32 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef ptr @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse12column_value(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !144, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !15, !align !134, !noundef !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.01.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.e = load ptr, ptr %.sroa.01.0, align 8, !nonnull !15, !noundef !15
  %i.f = tail call noundef ptr @sqlite3_column_value(ptr noundef nonnull %i.e, i32 noundef %1) #25
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse21index_for_column_name(ptr noalias noundef align 8 dereferenceable(104) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse12column_count.exit:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = load i64, ptr %0, align 8, !range !144, !noundef !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !15, !align !134
  %spec.select = select i1 %i.d, ptr %i.e, ptr %i.c
  %i.f = load ptr, ptr %spec.select, align 8, !nonnull !15, !noundef !15
  %i.g = tail call noundef i32 @sqlite3_column_count(ptr noundef nonnull %i.f) #25 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangelENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checklNCNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB24_12StatementUse21index_for_column_name0E0INtNtB8_12control_flow11ControlFlowlEEB2a_.exit.thread

.lr.ph.i:                                         ; preds = %_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse12column_count.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit.i.i.i.i

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit.i.i.i.i: ; preds = %.lr.ph.i, %.backedge.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.backedge.i ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.j = tail call noundef nonnull align 8 ptr @_RINvMNtNtCscI6d9CVNmLh_4core4cell4onceINtB3_8OnceCellINtNtCs40k4W9msRzi_5alloc3vec3VecPeEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB2a_12StatementUse10field_name0E0zEB2g_(ptr noundef nonnull align 8 %i.i, ptr noundef nonnull align 8 %0), !noalias !295 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !295, !noundef !15
  %i.m = icmp ugt i64 %i.l, %indvars.iv.i
  br i1 %i.m, label %bb.a, label %.backedge.i

bb.a:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !295, !nonnull !15, !noundef !15
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv.i ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !295, !noundef !15 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.backedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !295, !noundef !15
  %i.u = icmp eq i64 %i.t, %2
  br i1 %i.u, label %_RNCNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB7_12StatementUse21index_for_column_name0Bd_.exit.i.i, label %.backedge.i

_RNCNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB7_12StatementUse21index_for_column_name0Bd_.exit.i.i: ; preds = %bb.b
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.q, ptr nonnull %1, i64 %2), !noalias !295
  %bcmp.i.fr.i.i = freeze i32 %bcmp.i.i.i
  %i.v = icmp eq i32 %bcmp.i.fr.i.i, 0
  br i1 %i.v, label %bb.c, label %.backedge.i

.backedge.i:                                      ; preds = %_RNCNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB7_12StatementUse21index_for_column_name0Bd_.exit.i.i, %bb.b, %bb.a, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit.i.i.i.i
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count
  br i1 %exitcond.not, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangelENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checklNCNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB24_12StatementUse21index_for_column_name0E0INtNtB8_12control_flow11ControlFlowlEEB2a_.exit.thread, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit.i.i.i.i

bb.c:                                             ; preds = %_RNCNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB7_12StatementUse21index_for_column_name0Bd_.exit.i.i
  %i.w = and i64 %indvars.iv.i, 2147483648
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangelENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checklNCNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB24_12StatementUse21index_for_column_name0E0INtNtB8_12control_flow11ControlFlowlEEB2a_.exit.thread, label %bb.d

_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangelENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checklNCNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB24_12StatementUse21index_for_column_name0E0INtNtB8_12control_flow11ControlFlowlEEB2a_.exit.thread: ; preds = %.backedge.i, %bb.c, %_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse12column_count.exit
  %.sroa.3.0 = phi i64 [ %indvars.iv.i, %bb.c ], [ undef, %_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse12column_count.exit ], [ undef, %.backedge.i ]
  %.sroa.0.0 = phi i64 [ 1, %bb.c ], [ 0, %_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse12column_count.exit ], [ 0, %.backedge.i ]
  %i.y = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.z = insertvalue { i64, i64 } %i.y, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.z

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !303
  store i8 3, ptr %i.a, align 1, !noalias !303
  call void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 51, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #26, !noalias !307
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse3run(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_12StatementUse4step(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !range !14, !noundef !15
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %.thread9, label %bb.c

.thread9:                                         ; preds = %bb.b
  store i64 -1, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %.pr = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not2 = icmp eq i64 %.pr, -1
  br i1 %.not2, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i8 1, ptr %i.h, align 8, !alias.scope !308, !noalias !311
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !308, !noalias !311, !noundef !15 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !308, !noalias !311, !nonnull !15, !align !134, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !313
  store ptr %i.j, ptr %i.c, align 8, !noalias !313
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.m, align 8, !noalias !313
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !308, !noalias !311, !nonnull !15, !noundef !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !308, !noalias !311, !nonnull !15, !align !134, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !313
  store ptr %i.c, ptr %i.a, align 8, !noalias !313
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.r, align 8, !noalias !313
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @30, ptr %i.s, align 8, !noalias !313
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.t, align 8, !noalias !313
  store i32 4, ptr %i.b, align 8, !noalias !313
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !15, !noalias !308, !nonnull !15
  invoke void %i.v(ptr noundef nonnull %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !308

bb.f:                                             ; preds = %bb.h, %bb.d
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt14BoundStatementEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %_RNvMs1_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_14BoundStatement23finish_query_with_error.exit unwind label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt14BoundStatementEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d) #27
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !313
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.j:                                             ; preds = %.thread9, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmt14BoundStatementEBJ_(ptr noalias noundef align 8 dereferenceable(80) %1)
          to label %bb.m unwind label %bb.t

bb.k:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.w, %bb.g ] ; 2 uses
  %i.z = load i64, ptr %i.f, align 8, !range !14, !alias.scope !314, !noundef !15
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %.noexc, label %bb.l

bb.l:                                             ; preds = %.body
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.noexc unwind label %bb.s

_RNvMs1_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_14BoundStatement23finish_query_with_error.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_14BoundStatement23finish_query_with_error.exit, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !range !89, !alias.scope !317, !noundef !15
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtCs40k4W9msRzi_5alloc3vec3VecPeEEECsjRvGck33osM_6diesel.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecPeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !324 ; 2 uses
  %i.af = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.af, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !329, !nonnull !15, !noundef !15
  %i.ah = shl nuw i64 %.val2.i.i.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !330
  br label %common.resume

bb.q:                                             ; preds = %bb.n
  %.val.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !324 ; 2 uses
  %i.ai = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtCs40k4W9msRzi_5alloc3vec3VecPeEEECsjRvGck33osM_6diesel.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val1.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !329, !nonnull !15, !noundef !15
end_hunk_0
