Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.02?download=true
inline.NumInlined: 285
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue9read_text:bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 51, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #21, !noalias !87
  unreachable

_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i: ; preds = %bb.a
  %i.g = zext nneg i32 %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85
  call void @_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g), !noalias !85
  %i.h = load i64, ptr %i.c, align 8, !range !4, !noalias !85, !noundef !3
  %.not.i = icmp eq i64 %i.h, -1
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !85
  %i.i = call { ptr, i64 } @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE16into_boxed_sliceCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !85 ; 3 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val5.i = load ptr, ptr %i.l, align 8, !alias.scope !85, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val6.i = load i64, ptr %i.m, align 8, !alias.scope !85 ; 2 uses
  %i.n = icmp eq ptr %.val5.i, null
  %i.o = icmp eq i64 %.val6.i, 0
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef range(i64 1, 0) %.val6.i, i64 noundef 1) #20, !noalias !85
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i

bb.e:                                             ; preds = %_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !85, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !85, !noundef !3
  %i.t = insertvalue { ptr, i64 } poison, ptr %i.q, 0
  %i.u = insertvalue { ptr, i64 } %i.t, i64 %i.s, 1
  br label %_RINvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB6_11SqliteValue12parse_stringReNCNvB2_9read_text0EBc_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i: ; preds = %bb.d, %bb.c
  store ptr %i.j, ptr %i.l, align 8, !alias.scope !85
  store i64 %i.k, ptr %i.m, align 8, !alias.scope !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85
  br label %_RINvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB6_11SqliteValue12parse_stringReNCNvB2_9read_text0EBc_.exit

_RINvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB6_11SqliteValue12parse_stringReNCNvB2_9read_text0EBc_.exit: ; preds = %bb.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i
  %.merged.i = phi { ptr, i64 } [ %i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i ], [ %i.u, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !85
  ret { ptr, i64 } %.merged.i
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef ptr @_RNvMs1_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_16OwnedSqliteValue13copy_from_ptr(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @sqlite3_value_type(ptr noundef nonnull %0) #20
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @sqlite3_value_dup(ptr noundef nonnull %0) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs1_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_16OwnedSqliteValue9duplicate(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef ptr @sqlite3_value_dup(ptr noundef nonnull %i.a) #20 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 171, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i32 } @_RNvNtNtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_time8std_time17usecs_to_duration(i64 noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = udiv i64 %0, 1000000
  %i.b = urem i64 %0, 1000000
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = mul nuw nsw i32 %i.c, 1000
  %i.e = insertvalue { i64, i32 } poison, i64 %i.a, 0
  %i.f = insertvalue { i64, i32 } %i.e, i32 %i.d, 1
  ret { i64, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i32 } @_RNvNtNtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_time8std_time8pg_epoch() unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i32 } @_RNvXs6_NtCsgczF5crJ4sT_3std4timeNtB5_10SystemTimeINtNtNtCscI6d9CVNmLh_4core3ops5arith3AddNtNtBS_4time8DurationE3add(i64 noundef 0, i32 noundef 0, i64 noundef 946684800, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112)
  ret { i64, i32 } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXNtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB2_16OwnedSqliteValueNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  tail call void @sqlite3_value_free(ptr noundef nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXNtNtNtNtCsjRvGck33osM_6diesel2pg10expression10extensions12interval_dsllNtB2_11IntervalDsl12milliseconds(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i32 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = mul nsw i64 %i.a, 1000
  store i64 %i.b, ptr %0, align 8, !alias.scope !92
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.c, align 8, !alias.scope !92
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.d, align 4, !alias.scope !92
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXNtNtNtNtCsjRvGck33osM_6diesel2pg10expression10extensions12interval_dsllNtB2_11IntervalDsl5hours(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i32 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = mul nsw i64 %i.a, 3600000000
  store i64 %i.b, ptr %0, align 8, !alias.scope !103
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.c, align 8, !alias.scope !103
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.d, align 4, !alias.scope !103
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXNtNtNtNtCsjRvGck33osM_6diesel2pg10expression10extensions12interval_dsllNtB2_11IntervalDsl7minutes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i32 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = mul nsw i64 %i.a, 60000000
  store i64 %i.b, ptr %0, align 8, !alias.scope !112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.c, align 8, !alias.scope !112
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.d, align 4, !alias.scope !112
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXNtNtNtNtCsjRvGck33osM_6diesel2pg10expression10extensions12interval_dsllNtB2_11IntervalDsl7seconds(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i32 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = mul nsw i64 %i.a, 1000000
  store i64 %i.b, ptr %0, align 8, !alias.scope !119
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.c, align 8, !alias.scope !119
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.d, align 4, !alias.scope !119
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtBa_11deserialize7FromSqlNtNtBa_9sql_types9TimestampNtNtB8_7backend2PgE8from_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_timeNtB5_11PgTimestampINtNtBb_11deserialize7FromSqlNtNtBb_9sql_types9TimestampNtNtB9_7backend2PgE8from_sql(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.f = load ptr, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !align !10, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.j, align 8
  store i32 1, ptr %0, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.g, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_time6chrono8pg_epoch(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c)
  %i.l = sdiv i64 %i.k, 1000000
  %i.m = srem i64 %i.k, 1000000                   ; 3 uses
  %.lobit.i = ashr i64 %i.m, 63
  %.sroa.0.0.i = add nsw i64 %.lobit.i, %i.l
  %i.n = icmp slt i64 %i.m, 0
  %2 = select i1 %i.n, i64 1000000, i64 0
  %spec.select.i = add nsw i64 %2, %i.m
  %3 = trunc nuw nsw i64 %spec.select.i to i32
  %i.o = mul nuw nsw i32 %3, 1000
  call void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime18checked_add_signed(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c, i64 noundef %.sroa.0.0.i, i32 noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = load i32, ptr %i.d, align 4, !noundef !3
  %.not5 = icmp eq i32 %i.p, 0
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 61, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.r = load i64, ptr %i.a, align 8, !range !11, !noundef !3
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !122, !noundef !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.v, align 8
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.w) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.y = icmp samesign ugt i64 %i.u, 60
  call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(61) %i.x, ptr noundef nonnull align 1 dereferenceable(61) @113, i64 61, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.u, ptr %i.b, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.x, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 61, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !123
  %i.z = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 24, i64 noundef range(i64 1, 9) 8) #20, !noalias !123 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit, !prof !9

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #21
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #23
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ab

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @79, ptr %i.ae, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit, %bb.d
  %storemerge = phi i32 [ 0, %bb.d ], [ 1, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtNtCsjRvGck33osM_6diesel5mysql5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtBa_9serialize5ToSqlNtB6_8DatetimeNtNtB8_7backend5MysqlE6to_sql(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtNtCsjRvGck33osM_6diesel5mysql5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtBd_9serialize5ToSqlNtNtBd_9sql_types9TimestampNtNtBb_7backend5MysqlE6to_sql(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel13query_builder16insert_statement7privateNtB5_14InsertOrIgnoreINtB9_13QueryFragmentNtNtNtBb_5mysql7backend5MysqlE8walk_ast(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !range !12, !noundef !3
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  store i64 -1, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !10, !noundef !3
  tail call void @_RNvXs_NtNtCsjRvGck33osM_6diesel5mysql13query_builderNtB4_17MysqlQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend5MysqlE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 13)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  store i8 0, ptr %i.e, align 1
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel5mysql5types13date_and_timeNtB5_9MysqlTimeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %i.a, align 8
  store ptr %0, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @115, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @115, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @115, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @115, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @115, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @115, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.h, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @116, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @117, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.j, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @118, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.a, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @119, ptr %i.ad, align 8
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @130, i64 noundef 10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.ae
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB5_14OwnedSqliteRowINtNtBb_3row3RowNtNtB9_7backend6SqliteE11partial_row(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMNtNtCsjRvGck33osM_6diesel3row7privateINtB3_10PartialRowNtNtNtNtB7_6sqlite10connection9owned_row14OwnedSqliteRowE3newNtNtB12_7backend6SqliteEB7_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXs0_NtNtNtNtCsjRvGck33osM_6diesel2pg10expression10extensions12interval_dsldNtB5_11IntervalDsl4days(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, double noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call double @llvm.trunc.f64(double %1) ; 2 uses
  %i.b = fsub double %1, %i.a
  %i.c = fmul double %i.b, 8.640000e+04
  %i.d = fmul double %i.c, 1.000000e+03
  %i.e = fmul double %i.d, 1.000000e+03
  %i.f = tail call double @llvm.round.f64(double %i.e)
  %i.g = tail call i64 @llvm.fptosi.sat.i64.f64(double %i.f)
  %i.h = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.a)
  store i64 %i.g, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.i, align 8
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtNtNtCsjRvGck33osM_6diesel5mysql5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive4time9NaiveTimeINtNtBd_9serialize5ToSqlNtNtBd_9sql_types4TimeNtNtBb_7backend5MysqlE6to_sql:bb.a
  store <2 x i32> %i.l, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 2, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = load <2 x ptr>, ptr %2, align 8
  store <2 x ptr> %i.q, ptr %i.a, align 16
  call void @_RNvXsf_NtNtNtCsjRvGck33osM_6diesel5mysql5types13date_and_timeNtB5_9MysqlTimeINtNtBb_9serialize5ToSqlNtNtBb_9sql_types4TimeNtNtB9_7backend5MysqlE6to_sql(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtNtCsjRvGck33osM_6diesel6sqlite10expression9functions18json_array_0_utilsNtB5_12json_array_0INtNtBd_13query_builder13QueryFragmentNtNtBb_7backend6SqliteE8walk_ast(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !range !12, !noundef !3
  switch i64 %i.a, label %bb.d [
    i64 0, label %bb.b
    i64 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !10, !noundef !3 ; 3 uses
  tail call void @_RNvXs_NtNtCsjRvGck33osM_6diesel6sqlite13query_builderNtB4_18SqliteQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend6SqliteE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 10)
  tail call void @_RNvXs_NtNtCsjRvGck33osM_6diesel6sqlite13query_builderNtB4_18SqliteQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend6SqliteE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 1)
  store i64 -1, ptr %0, align 8
  tail call void @_RNvXs_NtNtCsjRvGck33osM_6diesel6sqlite13query_builderNtB4_18SqliteQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend6SqliteE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  store i64 -1, ptr %0, align 8
  store i8 0, ptr %i.e, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtNtCsjRvGck33osM_6diesel6sqlite5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtBd_11deserialize7FromSqlNtNtBd_9sql_types9TimestampNtNtBb_7backend6SqliteE8from_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 74 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !189, !noalias !188, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = tail call noundef i32 @sqlite3_value_bytes(ptr noundef nonnull %.val.i) #20, !noalias !190 ; 2 uses
  %i.j = tail call noundef ptr @sqlite3_value_text(ptr noundef nonnull %.val.i) #20, !noalias !190
  %i.k = icmp sgt i32 %i.i, -1
  br i1 %i.k, label %_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !191
  store i8 3, ptr %i.f, align 1, !noalias !191
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 51, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #21
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.b
  unreachable

_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i: ; preds = %bb.a
  %i.l = zext nneg i32 %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !190
  invoke void @_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
          to label %.noexc1 unwind label %bb.ag

.noexc1:                                          ; preds = %_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i
  %i.m = load i64, ptr %i.h, align 8, !range !4, !noalias !190, !noundef !3
  %.not.i = icmp eq i64 %i.m, -1
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !190
  %i.n = invoke { ptr, i64 } @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE16into_boxed_sliceCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc2 unwind label %bb.ag   ; 2 uses

.noexc2:                                          ; preds = %bb.c
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 3 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val5.i = load ptr, ptr %i.q, align 8, !alias.scope !189, !noalias !188, !noundef !3 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val6.i = load i64, ptr %i.r, align 8, !alias.scope !189, !noalias !188 ; 2 uses
  %i.s = icmp eq ptr %.val5.i, null
  %i.t = icmp eq i64 %.val6.i, 0
  %or.cond.i.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i, label %bb.d

bb.d:                                             ; preds = %.noexc2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef range(i64 1, 0) %.val6.i, i64 noundef 1) #20, !noalias !190
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i

bb.e:                                             ; preds = %.noexc1
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !190, !nonnull !3, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !190, !noundef !3
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i, %bb.e
  %.sroa.3.0.i = phi i64 [ %i.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i ], [ %i.x, %bb.e ] ; 20 uses
  %.sroa.0.0.i = phi ptr [ %i.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i ], [ %i.v, %bb.e ] ; 20 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !190
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !190
  store ptr %.sroa.0.0.i, ptr %i.e, align 8, !noalias !193
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.3.0.i, ptr %i.y, align 8, !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 8)
          to label %.noexc3 unwind label %bb.ag

.noexc3:                                          ; preds = %bb.f
  %i.z = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.n, label %bb.af

.split.i.i:                                       ; preds = %.noexc23, %bb.m, %bb.l, %.noexc5, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !193
  store ptr %i.e, ptr %i.b, align 8, !noalias !193
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjRvGck33osM_6diesel, ptr %.sroa.415.0..sroa_idx.i.i, align 8, !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !193
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @99, ptr noundef nonnull %i.b)
          to label %.noexc4 unwind label %bb.ag

.noexc4:                                          ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !193
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !194
  %i.ab = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 24, i64 noundef range(i64 1, 9) 8) #20, !noalias !194 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.g, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit.i.i, !prof !9

bb.g:                                             ; preds = %.noexc4
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #21
          to label %.noexc.i.i unwind label %bb.h, !noalias !195

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #23
          to label %.body unwind label %bb.i, !noalias !195

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !195
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit.i.i: ; preds = %.noexc4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !193
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.af, align 8, !alias.scope !196, !noalias !197
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @79, ptr %i.ag, align 8, !alias.scope !196, !noalias !197
  store i32 1, ptr %0, align 8, !alias.scope !196, !noalias !197
  br label %bb.ah

bb.j:                                             ; preds = %.noexc23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !noalias !193, !noundef !3
  %i.aj = fadd double %i.ai, f0xC1429EC5C0000000
  %i.ak = fmul double %i.aj, 8.640000e+04         ; 2 uses
  %i.al = call double @llvm.trunc.f64(double %i.ak) ; 2 uses
  %i.am = call i64 @llvm.fptosi.sat.i64.f64(double %i.al) ; 2 uses
  %i.an = fsub double %i.ak, %i.al
  %i.ao = fmul double %i.an, 1.000000e+09
  %i.ap = call i32 @llvm.fptoui.sat.i32.f64(double %i.ao) ; 3 uses
  %i.aq = sdiv i64 %i.am, 86400
  %i.ar = srem i64 %i.am, 86400                   ; 3 uses
  %.lobit.i.i.i.i.i = ashr i64 %i.ar, 63
  %.sroa.0.0.i.i.i.i.i = add nsw i64 %.lobit.i.i.i.i.i, %i.aq ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  %2 = select i1 %i.as, i64 86400, i64 0
  %spec.select.i.i.i.i.i = add nsw i64 %2, %i.ar
  %i.at = add nsw i64 %.sroa.0.0.i.i.i.i.i, -2146764485
  %or.cond.i.i.i.i = icmp ult i64 %i.at, -4294967296
  br i1 %or.cond.i.i.i.i, label %.split.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = trunc i64 %.sroa.0.0.i.i.i.i.i to i32
  %i.av = add i32 %i.au, 719163
  %i.aw = invoke noundef i32 @_RNvMNtNtCslCQnfik72jt_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.av)
          to label %.noexc5 unwind label %bb.ag   ; 2 uses

.noexc5:                                          ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i, label %.split.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc5
  %i.ax = trunc nuw nsw i64 %spec.select.i.i.i.i.i to i32 ; 2 uses
  %i.ay = icmp ugt i32 %i.ap, 1999999999
  br i1 %i.ay, label %.split.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = icmp samesign ult i32 %i.ap, 1000000000
  %i.ba = urem i32 %i.ax, 60
  %i.bb = icmp eq i32 %i.ba, 59
  %or.cond3.i.i.i.i = or i1 %i.az, %i.bb
  br i1 %or.cond3.i.i.i.i, label %_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types13date_and_time6chrono12parse_julian.exit.i.i, label %.split.i.i

_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types13date_and_time6chrono12parse_julian.exit.i.i: ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.aw, ptr %i.bc, align 4, !alias.scope !196, !noalias !197
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ax, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !196, !noalias !197
  %.sroa.526.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ap, ptr %.sroa.526.0..sroa_idx.i.i, align 4, !alias.scope !196, !noalias !197
  store i32 0, ptr %0, align 8, !alias.scope !196, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !193
  br label %bb.ah

bb.n:                                             ; preds = %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 11)
          to label %.noexc6 unwind label %bb.ag

.noexc6:                                          ; preds = %bb.n
  %i.bd = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.o, label %bb.af

bb.o:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 5)
          to label %.noexc7 unwind label %bb.ag

.noexc7:                                          ; preds = %bb.o
  %i.bf = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %bb.af

bb.p:                                             ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 8)
          to label %.noexc8 unwind label %bb.ag

.noexc8:                                          ; preds = %bb.p
  %i.bh = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.q, label %bb.af

bb.q:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 5)
          to label %.noexc9 unwind label %bb.ag

.noexc9:                                          ; preds = %bb.q
  %i.bj = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.r, label %bb.af

bb.r:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 6)
          to label %.noexc10 unwind label %bb.ag

.noexc10:                                         ; preds = %bb.r
  %i.bl = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.s, label %bb.af

bb.s:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 8)
          to label %.noexc11 unwind label %bb.ag

.noexc11:                                         ; preds = %bb.s
  %i.bn = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.t, label %bb.af

bb.t:                                             ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 6)
          to label %.noexc12 unwind label %bb.ag

.noexc12:                                         ; preds = %bb.t
  %i.bp = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.u, label %bb.af

bb.u:                                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 9)
          to label %.noexc13 unwind label %bb.ag

.noexc13:                                         ; preds = %bb.u
  %i.br = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.v, label %bb.af

bb.v:                                             ; preds = %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 5)
          to label %.noexc14 unwind label %bb.ag

.noexc14:                                         ; preds = %bb.v
  %i.bt = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.w, label %bb.af

bb.w:                                             ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 6)
          to label %.noexc15 unwind label %bb.ag

.noexc15:                                         ; preds = %bb.w
  %i.bv = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.x, label %bb.af

bb.x:                                             ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 8)
          to label %.noexc16 unwind label %bb.ag

.noexc16:                                         ; preds = %bb.x
  %i.bx = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.y, label %bb.af

bb.y:                                             ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 5)
          to label %.noexc17 unwind label %bb.ag

.noexc17:                                         ; preds = %bb.y
  %i.bz = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.z, label %bb.af

bb.z:                                             ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 6)
          to label %.noexc18 unwind label %bb.ag

.noexc18:                                         ; preds = %bb.z
  %i.cb = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 8)
          to label %.noexc19 unwind label %bb.ag

.noexc19:                                         ; preds = %bb.aa
  %i.cd = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 8)
          to label %.noexc20 unwind label %bb.ag

.noexc20:                                         ; preds = %bb.ab
  %i.cf = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 9)
          to label %.noexc21 unwind label %bb.ag

.noexc21:                                         ; preds = %bb.ac
  %i.ch = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 11)
          to label %.noexc22 unwind label %bb.ag

.noexc22:                                         ; preds = %bb.ad
  %i.cj = load i32, ptr %i.d, align 4, !noalias !193, !noundef !3
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !193
  invoke void @_RNvXs2_NtNtCscI6d9CVNmLh_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i)
          to label %.noexc23 unwind label %bb.ag

.noexc23:                                         ; preds = %bb.ae
end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtNtNtCsjRvGck33osM_6diesel6sqlite5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtBd_9serialize5ToSqlNtNtBd_9sql_types9TimestampNtNtBb_7backend6SqliteE6to_sql:bb.a
bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !230
  invoke void @_RINvMNtCsjRvGck33osM_6diesel9serializeINtB3_6OutputNtNtNtB5_6sqlite7backend6SqliteE9set_valueNtNtCs40k4W9msRzi_5alloc6string6StringEB5_(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.r = load i64, ptr %i.d, align 8, !range !4, !alias.scope !233, !noundef !3
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCslCQnfik72jt_6chrono6format10formatting13DelayedFormatNtNtBG_8strftime13StrftimeItemsEECsjRvGck33osM_6diesel.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCslCQnfik72jt_6chrono6offset5fixed11FixedOffsetEECsjRvGck33osM_6diesel.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCslCQnfik72jt_6chrono6offset5fixed11FixedOffsetEECsjRvGck33osM_6diesel.exit.i.i: ; preds = %bb.i
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCslCQnfik72jt_6chrono6format10formatting13DelayedFormatNtNtBG_8strftime13StrftimeItemsEECsjRvGck33osM_6diesel.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCslCQnfik72jt_6chrono6format10formatting13DelayedFormatNtNtBG_8strftime13StrftimeItemsEECsjRvGck33osM_6diesel.exit: ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCslCQnfik72jt_6chrono6offset5fixed11FixedOffsetEECsjRvGck33osM_6diesel.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.v, align 8
  store ptr null, ptr %0, align 8
  ret void

bb.l:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtNtNtCsjRvGck33osM_6diesel6sqlite5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtBd_11deserialize7FromSqlNtB9_11TimestamptzNtNtBb_7backend6SqliteE8from_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 74 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !248, !noalias !247, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = tail call noundef i32 @sqlite3_value_bytes(ptr noundef nonnull %.val.i) #20, !noalias !249 ; 2 uses
  %i.j = tail call noundef ptr @sqlite3_value_text(ptr noundef nonnull %.val.i) #20, !noalias !249
  %i.k = icmp sgt i32 %i.i, -1
  br i1 %i.k, label %_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !250
  store i8 3, ptr %i.f, align 1, !noalias !250
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 51, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #21
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.b
  unreachable

_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i: ; preds = %bb.a
  %i.l = zext nneg i32 %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !249
  invoke void @_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
          to label %.noexc1 unwind label %bb.ag

.noexc1:                                          ; preds = %_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i
  %i.m = load i64, ptr %i.h, align 8, !range !4, !noalias !249, !noundef !3
  %.not.i = icmp eq i64 %i.m, -1
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !249
  %i.n = invoke { ptr, i64 } @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE16into_boxed_sliceCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc2 unwind label %bb.ag   ; 2 uses

.noexc2:                                          ; preds = %bb.c
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 3 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val5.i = load ptr, ptr %i.q, align 8, !alias.scope !248, !noalias !247, !noundef !3 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val6.i = load i64, ptr %i.r, align 8, !alias.scope !248, !noalias !247 ; 2 uses
  %i.s = icmp eq ptr %.val5.i, null
  %i.t = icmp eq i64 %.val6.i, 0
  %or.cond.i.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i, label %bb.d

bb.d:                                             ; preds = %.noexc2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef range(i64 1, 0) %.val6.i, i64 noundef 1) #20, !noalias !249
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i

bb.e:                                             ; preds = %.noexc1
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !249, !nonnull !3, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !249, !noundef !3
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i, %bb.e
  %.sroa.3.0.i = phi i64 [ %i.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i ], [ %i.x, %bb.e ] ; 20 uses
  %.sroa.0.0.i = phi ptr [ %i.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i ], [ %i.v, %bb.e ] ; 20 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !249
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !249
  store ptr %.sroa.0.0.i, ptr %i.e, align 8, !noalias !252
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.3.0.i, ptr %i.y, align 8, !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 8)
          to label %.noexc3 unwind label %bb.ag

.noexc3:                                          ; preds = %bb.f
  %i.z = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.n, label %bb.af

.split.i.i:                                       ; preds = %.noexc23, %bb.m, %bb.l, %.noexc5, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !252
  store ptr %i.e, ptr %i.b, align 8, !noalias !252
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjRvGck33osM_6diesel, ptr %.sroa.415.0..sroa_idx.i.i, align 8, !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !252
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @99, ptr noundef nonnull %i.b)
          to label %.noexc4 unwind label %bb.ag

.noexc4:                                          ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !252
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !253
  %i.ab = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 24, i64 noundef range(i64 1, 9) 8) #20, !noalias !253 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.g, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit.i.i, !prof !9

bb.g:                                             ; preds = %.noexc4
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #21
          to label %.noexc.i.i unwind label %bb.h, !noalias !254

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #23
          to label %.body unwind label %bb.i, !noalias !254

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !254
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit.i.i: ; preds = %.noexc4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !252
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.af, align 8, !alias.scope !255, !noalias !256
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @79, ptr %i.ag, align 8, !alias.scope !255, !noalias !256
  store i32 1, ptr %0, align 8, !alias.scope !255, !noalias !256
  br label %bb.ah

bb.j:                                             ; preds = %.noexc23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !noalias !252, !noundef !3
  %i.aj = fadd double %i.ai, f0xC1429EC5C0000000
  %i.ak = fmul double %i.aj, 8.640000e+04         ; 2 uses
  %i.al = call double @llvm.trunc.f64(double %i.ak) ; 2 uses
  %i.am = call i64 @llvm.fptosi.sat.i64.f64(double %i.al) ; 2 uses
  %i.an = fsub double %i.ak, %i.al
  %i.ao = fmul double %i.an, 1.000000e+09
  %i.ap = call i32 @llvm.fptoui.sat.i32.f64(double %i.ao) ; 3 uses
  %i.aq = sdiv i64 %i.am, 86400
  %i.ar = srem i64 %i.am, 86400                   ; 3 uses
  %.lobit.i.i.i.i.i = ashr i64 %i.ar, 63
  %.sroa.0.0.i.i.i.i.i = add nsw i64 %.lobit.i.i.i.i.i, %i.aq ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  %2 = select i1 %i.as, i64 86400, i64 0
  %spec.select.i.i.i.i.i = add nsw i64 %2, %i.ar
  %i.at = add nsw i64 %.sroa.0.0.i.i.i.i.i, -2146764485
  %or.cond.i.i.i.i = icmp ult i64 %i.at, -4294967296
  br i1 %or.cond.i.i.i.i, label %.split.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = trunc i64 %.sroa.0.0.i.i.i.i.i to i32
  %i.av = add i32 %i.au, 719163
  %i.aw = invoke noundef i32 @_RNvMNtNtCslCQnfik72jt_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.av)
          to label %.noexc5 unwind label %bb.ag   ; 2 uses

.noexc5:                                          ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i, label %.split.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc5
  %i.ax = trunc nuw nsw i64 %spec.select.i.i.i.i.i to i32 ; 2 uses
  %i.ay = icmp ugt i32 %i.ap, 1999999999
  br i1 %i.ay, label %.split.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = icmp samesign ult i32 %i.ap, 1000000000
  %i.ba = urem i32 %i.ax, 60
  %i.bb = icmp eq i32 %i.ba, 59
  %or.cond3.i.i.i.i = or i1 %i.az, %i.bb
  br i1 %or.cond3.i.i.i.i, label %_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types13date_and_time6chrono12parse_julian.exit.i.i, label %.split.i.i

_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types13date_and_time6chrono12parse_julian.exit.i.i: ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.aw, ptr %i.bc, align 4, !alias.scope !255, !noalias !256
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ax, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !255, !noalias !256
  %.sroa.526.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ap, ptr %.sroa.526.0..sroa_idx.i.i, align 4, !alias.scope !255, !noalias !256
  store i32 0, ptr %0, align 8, !alias.scope !255, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !252
  br label %bb.ah

bb.n:                                             ; preds = %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 11)
          to label %.noexc6 unwind label %bb.ag

.noexc6:                                          ; preds = %bb.n
  %i.bd = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.o, label %bb.af

bb.o:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 5)
          to label %.noexc7 unwind label %bb.ag

.noexc7:                                          ; preds = %bb.o
  %i.bf = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %bb.af

bb.p:                                             ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 8)
          to label %.noexc8 unwind label %bb.ag

.noexc8:                                          ; preds = %bb.p
  %i.bh = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.q, label %bb.af

bb.q:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 5)
          to label %.noexc9 unwind label %bb.ag

.noexc9:                                          ; preds = %bb.q
  %i.bj = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.r, label %bb.af

bb.r:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 6)
          to label %.noexc10 unwind label %bb.ag

.noexc10:                                         ; preds = %bb.r
  %i.bl = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.s, label %bb.af

bb.s:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 8)
          to label %.noexc11 unwind label %bb.ag

.noexc11:                                         ; preds = %bb.s
  %i.bn = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.t, label %bb.af

bb.t:                                             ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 6)
          to label %.noexc12 unwind label %bb.ag

.noexc12:                                         ; preds = %bb.t
  %i.bp = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.u, label %bb.af

bb.u:                                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 9)
          to label %.noexc13 unwind label %bb.ag

.noexc13:                                         ; preds = %bb.u
  %i.br = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.v, label %bb.af

bb.v:                                             ; preds = %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 5)
          to label %.noexc14 unwind label %bb.ag

.noexc14:                                         ; preds = %bb.v
  %i.bt = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.w, label %bb.af

bb.w:                                             ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 6)
          to label %.noexc15 unwind label %bb.ag

.noexc15:                                         ; preds = %bb.w
  %i.bv = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.x, label %bb.af

bb.x:                                             ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 8)
          to label %.noexc16 unwind label %bb.ag

.noexc16:                                         ; preds = %bb.x
  %i.bx = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.y, label %bb.af

bb.y:                                             ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 5)
          to label %.noexc17 unwind label %bb.ag

.noexc17:                                         ; preds = %bb.y
  %i.bz = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.z, label %bb.af

bb.z:                                             ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 6)
          to label %.noexc18 unwind label %bb.ag

.noexc18:                                         ; preds = %bb.z
  %i.cb = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 8)
          to label %.noexc19 unwind label %bb.ag

.noexc19:                                         ; preds = %bb.aa
  %i.cd = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 8)
          to label %.noexc20 unwind label %bb.ag

.noexc20:                                         ; preds = %bb.ab
  %i.cf = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 9)
          to label %.noexc21 unwind label %bb.ag

.noexc21:                                         ; preds = %bb.ac
  %i.ch = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !252
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 11)
          to label %.noexc22 unwind label %bb.ag

.noexc22:                                         ; preds = %bb.ad
  %i.cj = load i32, ptr %i.d, align 4, !noalias !252, !noundef !3
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !252
  invoke void @_RNvXs2_NtNtCscI6d9CVNmLh_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i)
          to label %.noexc23 unwind label %bb.ag

.noexc23:                                         ; preds = %bb.ae
end_hunk_2
begin_hunk_3_@_RNvXs5_NtNtNtNtCsjRvGck33osM_6diesel6sqlite5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtBd_9serialize5ToSqlNtB9_11TimestamptzNtNtBb_7backend6SqliteE6to_sql:bb.a
bb.b:                                             ; preds = %bb.d, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #23
          to label %.body unwind label %bb.e, !noalias !266

bb.c:                                             ; preds = %bb.a
  br i1 %i.n, label %bb.d, label %bb.g, !prof !9

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @102, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #21
          to label %.noexc.i unwind label %bb.b, !noalias !266

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !266
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.o, %bb.b ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCslCQnfik72jt_6chrono6format10formatting13DelayedFormatNtNtBG_8strftime13StrftimeItemsEECsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(88) %i.d) #23
          to label %common.resume unwind label %bb.l

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !265
  invoke void @_RINvMNtCsjRvGck33osM_6diesel9serializeINtB3_6OutputNtNtNtB5_6sqlite7backend6SqliteE9set_valueNtNtCs40k4W9msRzi_5alloc6string6StringEB5_(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.r = load i64, ptr %i.d, align 8, !range !4, !alias.scope !268, !noundef !3
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCslCQnfik72jt_6chrono6format10formatting13DelayedFormatNtNtBG_8strftime13StrftimeItemsEECsjRvGck33osM_6diesel.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCslCQnfik72jt_6chrono6offset5fixed11FixedOffsetEECsjRvGck33osM_6diesel.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCslCQnfik72jt_6chrono6offset5fixed11FixedOffsetEECsjRvGck33osM_6diesel.exit.i.i: ; preds = %bb.i
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCslCQnfik72jt_6chrono6format10formatting13DelayedFormatNtNtBG_8strftime13StrftimeItemsEECsjRvGck33osM_6diesel.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCslCQnfik72jt_6chrono6format10formatting13DelayedFormatNtNtBG_8strftime13StrftimeItemsEECsjRvGck33osM_6diesel.exit: ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCslCQnfik72jt_6chrono6offset5fixed11FixedOffsetEECsjRvGck33osM_6diesel.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.v, align 8
  store ptr null, ptr %0, align 8
  ret void

bb.l:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCscI6d9CVNmLh_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtNtCsjRvGck33osM_6diesel5mysql5types13date_and_timeNtB5_18MysqlTimestampTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @119)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtNtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive4time9NaiveTimeINtNtBd_9serialize5ToSqlNtNtBd_9sql_types4TimeNtNtBb_7backend2PgE6to_sql(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i32, ptr %1, align 4, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !3
  %i.f = tail call { i64, i32 } @_RNvMNtNtCslCQnfik72jt_6chrono5naive4timeNtB2_9NaiveTime21signed_duration_since(i32 noundef %i.c, i32 noundef %i.e, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 0        ; 3 uses
  %i.h = extractvalue { i64, i32 } %i.f, 1        ; 4 uses
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.g, i64 1000000) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %_RNvMNtCslCQnfik72jt_6chrono10time_deltaNtB2_9TimeDelta16num_microseconds.exit.thread, label %_RNvMNtCslCQnfik72jt_6chrono10time_deltaNtB2_9TimeDelta16num_microseconds.exit, !prof !9

bb.c:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %i.h, 0                     ; 2 uses
  %i.m = zext i1 %i.l to i64
  %.sroa.04.0.i = add nsw i64 %i.g, %i.m
  %i.n = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.04.0.i, i64 1000000) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %_RNvMNtCslCQnfik72jt_6chrono10time_deltaNtB2_9TimeDelta16num_microseconds.exit.thread, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i32 %i.h, -1000000000
  %spec.select.i = select i1 %i.l, i32 %i.p, i32 %i.h
  br label %_RNvMNtCslCQnfik72jt_6chrono10time_deltaNtB2_9TimeDelta16num_microseconds.exit

_RNvMNtCslCQnfik72jt_6chrono10time_deltaNtB2_9TimeDelta16num_microseconds.exit: ; preds = %bb.b, %bb.d
  %.sroa.09.0.i = phi i32 [ %spec.select.i, %bb.d ], [ %i.h, %bb.b ]
  %.pn.i = phi { i64, i1 } [ %i.n, %bb.d ], [ %i.j, %bb.b ]
  %.sroa.06.1.i = extractvalue { i64, i1 } %.pn.i, 0
  %i.q = sdiv i32 %.sroa.09.0.i, 1000
  %i.r = sext i32 %i.q to i64
  %i.s = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.sroa.06.1.i, i64 %i.r) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %_RNvMNtCslCQnfik72jt_6chrono10time_deltaNtB2_9TimeDelta16num_microseconds.exit.thread, label %bb.e, !prof !269

bb.e:                                             ; preds = %_RNvMNtCslCQnfik72jt_6chrono10time_deltaNtB2_9TimeDelta16num_microseconds.exit
  %i.u = extractvalue { i64, i1 } %i.s, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.u, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !3, !align !10
  %i.y = load ptr, ptr %i.v, align 8, !noundef !3
  %i.z = load <2 x ptr>, ptr %2, align 8
  %.not = icmp eq ptr %i.y, null
  %.sroa.5.0 = select i1 %.not, ptr undef, ptr %i.x
  store <2 x ptr> %i.z, ptr %i.a, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0, ptr %i.aa, align 16
  call void @_RNvXs8_NtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_timeNtB5_6PgTimeINtNtBb_9serialize5ToSqlNtNtBb_9sql_types4TimeNtNtB9_7backend2PgE6to_sql(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RNvMNtCslCQnfik72jt_6chrono10time_deltaNtB2_9TimeDelta16num_microseconds.exit.thread: ; preds = %bb.c, %bb.b, %_RNvMNtCslCQnfik72jt_6chrono10time_deltaNtB2_9TimeDelta16num_microseconds.exit
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive4time9NaiveTimeINtNtBd_11deserialize7FromSqlNtNtBd_9sql_types4TimeNtNtBb_7backend2PgE8from_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs9_NtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_timeNtB5_6PgTimeINtNtBb_11deserialize7FromSqlNtNtBb_9sql_types4TimeNtNtB9_7backend2PgE8from_sql(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !10, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = sdiv i64 %i.h, 1000000
  %i.j = srem i64 %i.h, 1000000                   ; 3 uses
  %.lobit.i = ashr i64 %i.j, 63
  %.sroa.0.0.i = add nsw i64 %.lobit.i, %i.i
  %i.k = icmp slt i64 %i.j, 0
  %2 = select i1 %i.k, i64 1000000, i64 0
  %spec.select.i = add nsw i64 %2, %i.j
  %3 = trunc nuw nsw i64 %spec.select.i to i32
  %i.l = mul nuw nsw i32 %3, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.m, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCslCQnfik72jt_6chrono5naive4timeNtB2_9NaiveTime22overflowing_add_signed(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef %.sroa.0.0.i, i32 noundef %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load <2 x i32>, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <2 x i32> %i.o, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.d, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsG_NtNtCsjRvGck33osM_6diesel10expression9operatorsINtB5_2EqINtNtB7_8nullable8NullableNtNtNtNtNtB9_2pg15metadata_lookup7pg_type7columns12typnamespaceEIB10_NtNtNtB1v_12pg_namespace7columns3oidEEINtNtB9_13query_builder13QueryFragmentNtNtB1x_7backend2PgE8walk_astB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load i64, ptr %2, align 8, !range !12, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.g, ptr %i.h, align 8
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression8nullableINtB5_8NullableNtNtNtNtNtB9_2pg15metadata_lookup7pg_type7columns12typnamespaceEINtNtB9_13query_builder13QueryFragmentNtNtB1c_7backend2PgE8walk_astB9_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = load i64, ptr %i.d, align 8, !range !15, !noundef !3
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  switch i64 %i.e, label %bb.d [
    i64 0, label %bb.e
    i64 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.g, ptr %i.j, align 8
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression8nullableINtB5_8NullableNtNtNtNtNtB9_2pg15metadata_lookup12pg_namespace7columns3oidEINtNtB9_13query_builder13QueryFragmentNtNtB1c_7backend2PgE8walk_astB9_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = load i64, ptr %i.b, align 8, !range !15, !noundef !3
  %.not1 = icmp eq i64 %i.k, -1
  br i1 %.not1, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !align !10, !noundef !3
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel2pg13query_builderNtB4_14PgQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend2PgE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 3)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  store i8 0, ptr %i.o, align 1
  br label %bb.d

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsG_NtNtCsjRvGck33osM_6diesel10expression9operatorsINtB5_2EqNtNtNtNtNtB9_2pg15metadata_lookup12pg_namespace7columns7nspnameINtNtB7_5bound5BoundNtNtB9_9sql_types4TextReEEINtNtB9_13query_builder13QueryFragmentNtNtB17_7backend2PgE8walk_astB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = load i64, ptr %2, align 8, !range !12, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.h, ptr %i.i, align 8
  call void @_RNvXsl_NtNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup12pg_namespace7columnsNtB5_7nspnameINtNtBd_13query_builder13QueryFragmentNtNtBb_7backend2PgE8walk_astBd_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = load i64, ptr %i.d, align 8, !range !15, !noundef !3
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  switch i64 %i.f, label %bb.d [
    i64 0, label %bb.e
    i64 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.h, ptr %i.k, align 8
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression5boundINtB5_5BoundNtNtB9_9sql_types4TextReEINtNtB9_13query_builder13QueryFragmentNtNtNtB9_2pg7backend2PgE8walk_astB9_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = load i64, ptr %i.b, align 8, !range !15, !noundef !3
  %.not1 = icmp eq i64 %i.l, -1
  br i1 %.not1, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !align !10, !noundef !3
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel2pg13query_builderNtB4_14PgQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend2PgE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 3)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  store i8 0, ptr %i.p, align 1
  br label %bb.d

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsG_NtNtCsjRvGck33osM_6diesel10expression9operatorsINtB5_2EqNtNtNtNtNtB9_2pg15metadata_lookup7pg_type7columns3oidINtNtB7_11sql_literal10SqlLiteralNtNtNtB17_5types9sql_types3OidINtB1T_13UncheckedBindIB1R_B2n_EINtNtB7_5bound5BoundNtNtB9_9sql_types4TextReEEEEINtNtB9_13query_builder13QueryFragmentNtNtB17_7backend2PgE8walk_astB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = load i64, ptr %2, align 8, !range !12, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.h, ptr %i.i, align 8
  call void @_RNvXs4_NtNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup7pg_type7columnsNtB5_3oidINtNtBd_13query_builder13QueryFragmentNtNtBb_7backend2PgE8walk_astBd_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = load i64, ptr %i.d, align 8, !range !15, !noundef !3
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  switch i64 %i.f, label %bb.d [
    i64 0, label %bb.e
    i64 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
end_hunk_3
begin_hunk_4_@_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char:bb.a
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !272, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !272
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !278
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !279, !noalias !278, !noundef !3 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !279, !noalias !278, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !279, !noalias !278
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !279, !noalias !278
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCslCQnfik72jt_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 14 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 5 uses
  %i.q = alloca [12 x i8], align 8                ; 8 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [4 x i8], align 1                 ; 8 uses
  %i.u = alloca [4 x i8], align 1                 ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [4 x i8], align 4                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [4 x i8], align 4                ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [4 x i8], align 4                ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [4 x i8], align 4                ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [4 x i8], align 4                ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [4 x i8], align 4                ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [4 x i8], align 4                ; 4 uses
  %i.ao = alloca [4 x i8], align 4                ; 7 uses
  %i.ap = alloca [96 x i8], align 8               ; 14 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [8 x i8], align 8                ; 8 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 8 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [8 x i8], align 8                ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 11 uses
  %i.bd = alloca [24 x i8], align 8               ; 10 uses
  %i.be = alloca [40 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 147 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i64 0, ptr %i.bf, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 103 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 176 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bg, i64 40, i1 false), !noalias !853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !854
  invoke void @_RNvXs_NtNtCslCQnfik72jt_6chrono6format8strftimeNtB4_13StrftimeItemsNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.be)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.bh = load i8, ptr %i.bd, align 8, !range !855, !noalias !854, !noundef !3
  %.not240.not.i = icmp eq i8 %i.bh, -1
  br i1 %.not240.not.i, label %.loopexit23, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !852, !noalias !853 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.018.0.copyload.i.i = load i32, ptr %i.bl, align 8, !alias.scope !852, !noalias !853
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.10.0.copyload.i.i = load i32, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !alias.scope !852, !noalias !853 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.21.0.copyload.i.i = load i32, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !alias.scope !852, !noalias !853 ; 7 uses
  %i.bm = load i64, ptr %0, align 8, !range !4, !alias.scope !852, !noalias !853
  %.not.i67.i = icmp eq i64 %i.bm, -1             ; 4 uses
  %i.bn = trunc i32 %.sroa.018.0.copyload.i.i to i1 ; 13 uses
  %i.bo = urem i32 %.sroa.21.0.copyload.i.i, 1000000000 ; 9 uses
  %.sroa.4118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bp = udiv i32 %.sroa.21.0.copyload.i.i, 1000
  %i.bq = urem i32 %i.bp, 1000000                 ; 2 uses
  %.sroa.4114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.br = udiv i32 %.sroa.21.0.copyload.i.i, 1000000
  %.lhs.trunc13.i.i = trunc nuw nsw i32 %i.br to i16
  %i.bs = urem i16 %.lhs.trunc13.i.i, 1000
  %.zext14.i.i = zext nneg i16 %i.bs to i32       ; 2 uses
  %.sroa.4110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.476.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4106.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.4102.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.498.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bt = icmp eq i32 %i.bo, 0
  %i.bu = urem i32 %i.bo, 1000000
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = urem i32 %i.bo, 1000
  %i.bx = icmp eq i32 %i.bw, 0
  %.sroa.494.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.by = udiv i32 %i.bo, 1000
  %.sroa.490.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bz = udiv i32 %i.bo, 1000000
  %.sroa.486.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ca = icmp ugt i32 %.sroa.10.0.copyload.i.i, 43199 ; 3 uses
  %.146.i.i = select i1 %i.ca, ptr @48, ptr @47
  %i.cb = select i1 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @48, i64 2), ptr getelementptr inbounds nuw (i8, ptr @47, i64 2)
  %.sroa.078.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 80 ; 11 uses
  %.sroa.379.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 88 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.not140.i.i = icmp eq i32 %i.bk, 0             ; 19 uses
  %i.cg = lshr i32 %i.bk, 4
  %i.ch = and i32 %i.cg, 511                      ; 9 uses
  %i.ci = and i32 %i.bk, 7
  %i.cj = add nuw nsw i32 %i.ch, %i.ci
  %.lhs.trunc9.i.i = trunc nuw nsw i32 %i.cj to i16
  %i.ck = urem i16 %.lhs.trunc9.i.i, 7            ; 6 uses
  %i.cl = icmp samesign ult i16 %i.ck, 6          ; 2 uses
  %narrow40.i.i = add nuw nsw i16 %i.ck, 1
  %narrow41.i.i = select i1 %i.cl, i16 %narrow40.i.i, i16 0
  %i.cm = zext nneg i16 %narrow41.i.i to i64      ; 2 uses
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr @46, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr @38, i64 %i.cm ; 2 uses
  %i.cq = lshr i32 %i.bk, 3                       ; 3 uses
  %i.cr = and i32 %i.cq, 1023                     ; 8 uses
  %i.cs = zext nneg i32 %i.cr to i64              ; 8 uses
  %i.ct = icmp samesign ult i32 %i.cr, 733        ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr @13, i64 %i.cs ; 7 uses
  %i.cv = icmp ne i32 %i.bk, 0
  %or.cond5.i.i = select i1 %i.cv, i1 %i.bn, i1 false ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cx = load i32, ptr %i.cw, align 8, !alias.scope !852, !noalias !853 ; 7 uses
  %i.cy = ashr i32 %i.bk, 13                      ; 13 uses
  %or.cond.i123.i = icmp ult i32 %i.cy, 10000     ; 2 uses
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.lhs.trunc.i127.i = trunc nuw nsw i32 %i.cy to i16 ; 2 uses
  %i.cz = udiv i16 %.lhs.trunc.i127.i, 100
  %i.da = trunc nuw nsw i16 %i.cz to i8           ; 2 uses
  %i.db = udiv i8 %i.da, 10
  %i.dc = or disjoint i8 %i.db, 48                ; 2 uses
  %i.dd = urem i8 %i.da, 10
  %i.de = or disjoint i8 %i.dd, 48                ; 2 uses
  %i.df = urem i16 %.lhs.trunc.i127.i, 100
  %i.dg = trunc nuw nsw i16 %i.df to i8           ; 2 uses
  %i.dh = udiv i8 %i.dg, 10
  %i.di = or disjoint i8 %i.dh, 48                ; 2 uses
  %i.dj = urem i8 %i.dg, 10
  %i.dk = or disjoint i8 %i.dj, 48                ; 2 uses
  %i.dl = trunc i32 %i.cq to i8                   ; 2 uses
  %i.dm = udiv i32 %.sroa.10.0.copyload.i.i, 3600 ; 2 uses
  %i.dn = icmp ugt i32 %.sroa.21.0.copyload.i.i, 999999999 ; 2 uses
  %i.do = add i32 %.sroa.21.0.copyload.i.i, -1000000000
  %storemerge.i.i = select i1 %i.dn, i32 %i.do, i32 %.sroa.21.0.copyload.i.i ; 6 uses
  %i.dp = trunc i32 %i.dm to i8                   ; 4 uses
  %i.dq = icmp ugt i8 %i.dp, 99                   ; 2 uses
  %i.dr = urem i32 %.sroa.10.0.copyload.i.i, 60   ; 2 uses
  %2 = zext i1 %i.dn to i32
  %.sroa.04.0.i.i = add nuw nsw i32 %i.dr, %2
  %i.ds = udiv i32 %.sroa.10.0.copyload.i.i, 60
  %i.dt = urem i32 %i.ds, 60                      ; 2 uses
  %i.du = udiv i8 %i.dp, 10                       ; 2 uses
  %i.dv = or disjoint i8 %i.du, 48                ; 2 uses
  %i.dw = urem i8 %i.dp, 10
  %i.dx = or disjoint i8 %i.dw, 48                ; 3 uses
  %i.dy = trunc nuw nsw i32 %i.dt to i8           ; 2 uses
  %i.dz = udiv i8 %i.dy, 10
  %i.ea = or disjoint i8 %i.dz, 48                ; 3 uses
  %i.eb = urem i8 %i.dy, 10
  %i.ec = or disjoint i8 %i.eb, 48                ; 3 uses
  %i.ed = trunc nuw nsw i32 %.sroa.04.0.i.i to i8 ; 2 uses
  %i.ee = udiv i8 %i.ed, 10
  %i.ef = or disjoint i8 %i.ee, 48
  %i.eg = urem i8 %i.ed, 10
  %i.eh = or disjoint i8 %i.eg, 48
  %i.ei = icmp eq i32 %storemerge.i.i, 0
  %i.ej = urem i32 %storemerge.i.i, 1000000
  %i.ek = icmp eq i32 %i.ej, 0
  %i.el = urem i32 %storemerge.i.i, 1000
  %i.em = icmp eq i32 %i.el, 0
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.en = udiv i32 %storemerge.i.i, 1000
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.eo = udiv i32 %storemerge.i.i, 1000000
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ep = udiv i32 %.sroa.21.0.copyload.i.i, 1000000000
  %i.eq = add nuw nsw i32 %i.ep, %i.dr            ; 2 uses
  %i.er = trunc nuw nsw i32 %i.eq to i8           ; 2 uses
  %i.es = udiv i8 %i.er, 10
  %i.et = or disjoint i8 %i.es, 48                ; 2 uses
  %i.eu = urem i8 %i.er, 10
  %i.ev = or disjoint i8 %i.eu, 48                ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.fa = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.fd = sext i32 %i.cx to i64
  %.sroa.057.0.i.i = select i1 %.not.i67.i, i64 0, i64 %i.fd
  %i.fe = add nsw i32 %i.cy, -1
  %i.ff = icmp slt i32 %i.cy, 1                   ; 2 uses
  %i.fg = sub nsw i32 1, %i.cy
  %i.fh = udiv i32 %i.fg, 400
  %i.fi = add nuw nsw i32 %i.fh, 1                ; 2 uses
  %i.fj = mul nuw nsw i32 %i.fi, 400
  %.neg.i.i = mul nsw i32 %i.fi, -146097
  %i.fk = zext i32 %.sroa.10.0.copyload.i.i to i64
  %i.fl = add nuw nsw i32 %i.ch, -719163
  %i.fm = sub nsw i64 %i.fk, %.sroa.057.0.i.i
  %.sroa.426.0..sroa_idx.i190.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.445.0..sroa_idx.i191.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.430.0..sroa_idx.i193.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.439.0..sroa_idx.i194.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.434.0..sroa_idx.i195.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fp = zext nneg i32 %i.bo to i64
  %.sroa.426.0..sroa_idx.i182.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.445.0..sroa_idx.i183.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.430.0..sroa_idx.i185.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.439.0..sroa_idx.i186.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.434.0..sroa_idx.i187.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.fs = icmp samesign ult i32 %i.eq, 10
  %i.ft = icmp samesign ult i32 %i.dt, 10
  %i.fu = urem i32 %i.dm, 12                      ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  %i.fw = trunc nuw nsw i32 %i.fu to i8
  %i.fx = select i1 %i.fv, i8 12, i8 %i.fw
  %.frozen.i.i = freeze i8 %i.fx                  ; 4 uses
  %.cmp9.i.i = icmp samesign ugt i8 %.frozen.i.i, 9
  %i.fy = icmp ult i8 %.frozen.i.i, 10            ; 2 uses
  %i.fz = select i1 %.cmp9.i.i, i8 49, i8 48
  %.urem10.i.i = add i8 %.frozen.i.i, -10
  %i.ga = select i1 %i.fy, i8 %.frozen.i.i, i8 %.urem10.i.i
  %i.gb = or disjoint i8 %i.ga, 48
  %i.gc = icmp ult i8 %i.dp, 10
  %i.gd = add nuw nsw i8 %i.du, 48
  %i.ge = zext nneg i32 %i.ch to i64
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.445.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %switch.idx.cast.i.i = trunc nuw nsw i16 %i.ck to i8
  %switch.offset.i.i = add nuw nsw i8 %switch.idx.cast.i.i, 49
  %i.gh = trunc i32 %i.bk to i8
  %i.gi = and i8 %i.gh, 15                        ; 4 uses
  %i.gj = trunc nuw nsw i32 %i.ch to i16
  %i.gk = add nuw nsw i16 %i.gj, 6
  %.lhs.trunc1.i142.i.i = sub nuw nsw i16 %i.gk, %i.ck ; 2 uses
  %i.gl = udiv i16 %.lhs.trunc1.i142.i.i, 7
  %i.gm = trunc nuw nsw i16 %i.gl to i8           ; 2 uses
  %i.gn = udiv i8 %i.gm, 10
  %i.go = icmp samesign ult i16 %.lhs.trunc1.i142.i.i, 70
  %i.gp = add nuw nsw i8 %i.gn, 48
  %i.gq = urem i8 %i.gm, 10
  %i.gr = or disjoint i8 %i.gq, 48
  %spec.select.i131.i.i = zext nneg i16 %i.ck to i32 ; 2 uses
  %3 = add nuw nsw i32 %spec.select.i131.i.i, 7
  %.pn.i.i.i = select i1 %i.cl, i32 %3, i32 %spec.select.i131.i.i
  %.sroa.0.0.neg.i.i.i = add nuw nsw i32 %i.ch, 6
  %4 = sub nsw i32 %.sroa.0.0.neg.i.i.i, %.pn.i.i.i
  %5 = trunc nsw i32 %4 to i16
  %.lhs.trunc1.i.i.i = add nsw i16 %5, 6
  %i.gs = sdiv i16 %.lhs.trunc1.i.i.i, 7          ; 2 uses
  %i.gt = trunc nuw nsw i16 %i.gs to i8           ; 2 uses
  %i.gu = udiv i8 %i.gt, 10
  %i.gv = icmp samesign ult i16 %i.gs, 10
  %i.gw = add nuw nsw i8 %i.gu, 48
  %i.gx = urem i8 %i.gt, 10
  %i.gy = or disjoint i8 %i.gx, 48
  %i.gz = srem i32 %i.cy, 100                     ; 4 uses
  %i.ha = icmp slt i32 %i.gz, 0
  %i.hb = add nsw i32 %i.gz, 100
  %spec.select.i.i.i = select i1 %i.ha, i32 %i.hb, i32 %i.gz ; 2 uses
  %i.hc = trunc nuw nsw i32 %spec.select.i.i.i to i8 ; 2 uses
  %i.hd = udiv i8 %i.hc, 10
  %i.he = icmp samesign ult i32 %spec.select.i.i.i, 10
  %i.hf = add nuw nsw i8 %i.hd, 48
  %i.hg = urem i8 %i.hc, 10
  %i.hh = or disjoint i8 %i.hg, 48
  %i.hi = sdiv i32 %i.cy, 100
  %.lobit.i.i.i = ashr i32 %i.gz, 31
  %.sroa.0.0.i.i.i = add nsw i32 %.lobit.i.i.i, %i.hi
  %i.hj = trunc i32 %.sroa.0.0.i.i.i to i8        ; 3 uses
  %i.hk = udiv i8 %i.hj, 10
  %i.hl = icmp ult i8 %i.hj, 10
  %i.hm = add nuw nsw i8 %i.hk, 48
  %i.hn = urem i8 %i.hj, 10
  %i.ho = or disjoint i8 %i.hn, 48
  %.sroa.03.0.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 4 uses
  %spec.select.i = select i1 %i.ff, i32 %.neg.i.i, i32 0
  %i.hq = select i1 %i.ff, i32 %i.fj, i32 0
  %spec.select242.i = add nsw i32 %i.fe, %i.hq    ; 2 uses
  %i.hr = sdiv i32 %spec.select242.i, 100         ; 2 uses
  %i.hs = mul nsw i32 %spec.select242.i, 1461
  %i.ht = ashr i32 %i.hs, 2
  %i.hu = ashr i32 %i.hr, 2
  %i.hv = add i32 %i.fl, %spec.select.i
  %i.hw = sub i32 %i.hv, %i.hr
  %i.hx = add i32 %i.hw, %i.ht
  %narrow.i.i = add i32 %i.hx, %i.hu
  %i.hy = sext i32 %narrow.i.i to i64
  %i.hz = mul nsw i64 %i.hy, 86400
  %i.ia = add nsw i64 %i.fm, %i.hz
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.if = insertelement <2 x ptr> poison, ptr %.146.i.i, i64 0
  %i.ig = insertelement <2 x ptr> %i.if, ptr %i.cb, i64 1
  %i.ih = shl nuw nsw i16 %i.ck, 3
  %switch.shiftamt = zext nneg i16 %i.ih to i56
  %switch.downshift = lshr i56 13570401019048497, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.b

.loopexit.i:                                      ; preds = %.noexc85.i, %.noexc.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc163.i.i, %.noexc162.i.i, %.noexc160.i.i, %.noexc.peel.i.i
  %lpad.loopexit194.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.noexc11, %.noexc10, %.noexc9, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i2.i, %bb.fm, %bb.fk, %bb.fj, %bb.fi, %bb.fg, %bb.fe, %.noexc147.i, %.noexc146.i, %.noexc145.i, %.noexc144.i, %.noexc143.i, %.noexc142.i, %.noexc141.i, %bb.fd, %.noexc138.i, %.noexc137.i, %.noexc136.i, %.noexc135.i, %.noexc134.i, %bb.fc, %.noexc132.i, %.noexc131.i, %.noexc130.i, %_RINvNtNtCslCQnfik72jt_6chrono6format10formatting14write_hundredsNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit33.i.i, %bb.fb, %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECsjRvGck33osM_6diesel.exit.thread.i.i, %.noexc183.i, %.noexc182.i, %.noexc181.i, %.noexc180.i, %.noexc179.i, %.noexc178.i, %.noexc177.i, %.noexc176.i, %.noexc175.i, %bb.ey, %.noexc172.i, %.noexc171.i, %.noexc170.i, %.noexc169.i, %.noexc168.i, %.noexc167.i, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_str.exit15.i.i, %bb.ex, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i159.i, %.noexc163.i, %bb.ew, %.noexc160.i, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_str.exit.i155.i, %bb.et, %bb.es, %bb.el, %bb.ek, %bb.eh, %bb.eg, %bb.ef, %bb.ec, %.noexc99.i, %bb.eb, %.noexc97.i, %bb.ea, %.noexc95.i, %bb.dz, %bb.dy, %bb.dx, %bb.dv, %bb.du, %bb.ds, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_str.exit159.i.i, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_str.exit156.i.i, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_str.exit153.i.i, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_str.exit.i.i, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %_RINvNvMNtNtCslCQnfik72jt_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit181.i.i, %bb.cd, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i176.i.i, %_RINvNvMNtNtCslCQnfik72jt_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit175.i.i, %bb.ca, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i170.i.i, %_RINvNvMNtNtCslCQnfik72jt_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit169.i.i, %bb.bx, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i164.i.i, %_RINvNvMNtNtCslCQnfik72jt_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit163.i.i, %bb.bu, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i158.i.i, %bb.br, %bb.bq, %bb.bp, %switch.lookup.i.i, %switch.lookup, %_RINvNvMNtNtCslCQnfik72jt_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit155.i.i, %bb.bn, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i150.i.i, %bb.bl, %_RINvNvMNtNtCslCQnfik72jt_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit149.i.i, %bb.bk, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i144.i.i, %_RINvNvMNtNtCslCQnfik72jt_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit137.i.i, %bb.bh, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i132.i.i, %_RINvNvMNtNtCslCQnfik72jt_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit130.i.i, %bb.be, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i125.i.i, %_RINvNvMNtNtCslCQnfik72jt_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit124.i.i, %bb.ba, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i119.i.i, %bb.aw, %bb.av, %_RINvNvMNtNtCslCQnfik72jt_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit118.i.i, %bb.as, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i113.i.i, %bb.aq, %_RINvNvMNtNtCslCQnfik72jt_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit111.i.i, %bb.ap, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i106.i.i, %bb.an, %bb.am, %_RINvNvMNtNtCslCQnfik72jt_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit103.i.i, %bb.al, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i98.i.i, %_RINvNvMNtNtCslCQnfik72jt_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit.i.i, %bb.ai, %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit.i.i.i
  %lpad.loopexit197.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke273.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit194.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit197.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCslCQnfik72jt_6chrono6format4ItemECsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.bc) #23
  br label %.body

bb.b:                                             ; preds = %.noexc4, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !noalias !854
  %i.ii = load i8, ptr %i.bc, align 8, !range !6, !noalias !854, !noundef !3
  switch i8 %i.ii, label %default.unreachable [
    i8 0, label %bb.fk
    i8 1, label %bb.fm
    i8 2, label %bb.fk
    i8 3, label %bb.fm
    i8 4, label %bb.c
    i8 5, label %bb.cl
    i8 6, label %.loopexit
  ]

default.unreachable:                              ; preds = %_RNvMNtNtCslCQnfik72jt_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i, %bb.ce, %bb.cc, %bb.bz, %bb.bw, %bb.bt, %bb.bo, %bb.bm, %bb.bj, %bb.bg, %bb.bd, %bb.az, %bb.ar, %bb.ao, %bb.ak, %bb.ah, %bb.z, %bb.y, %bb.c, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ij = load i8, ptr %i.fc, align 2, !range !14, !noalias !854, !noundef !3 ; 18 uses
  %.val.i = load i8, ptr %i.bi, align 1, !range !856, !noalias !854, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  switch i8 %.val.i, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
    i8 9, label %bb.m
    i8 10, label %bb.n
    i8 11, label %bb.o
    i8 12, label %bb.p
    i8 13, label %bb.q
    i8 14, label %bb.r
    i8 15, label %bb.s
    i8 16, label %bb.t
    i8 17, label %bb.u
    i8 18, label %bb.v
    i8 19, label %bb.w
    i8 20, label %bb.x
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %.invoke.i

bb.e:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.ag

bb.f:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.aj

bb.g:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.am

bb.h:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.an

bb.i:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.aq

bb.j:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.at

bb.k:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.ax

bb.l:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.bb

bb.m:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.bf

bb.n:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.bi

bb.o:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.bl

bb.p:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %switch.lookup

bb.q:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %switch.lookup.i.i

bb.r:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.bo

bb.s:                                             ; preds = %bb.c
  br i1 %i.bn, label %bb.bs, label %.loopexit

bb.t:                                             ; preds = %bb.c
  br i1 %i.bn, label %bb.bv, label %.loopexit

bb.u:                                             ; preds = %bb.c
  br i1 %i.bn, label %bb.by, label %.loopexit

bb.v:                                             ; preds = %bb.c
  br i1 %i.bn, label %bb.cb, label %.loopexit

bb.w:                                             ; preds = %bb.c
  br i1 %i.bn, label %bb.ce, label %.loopexit

bb.x:                                             ; preds = %bb.c
  br i1 %or.cond5.i.i, label %_RNvMNtNtCslCQnfik72jt_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i, label %.loopexit

.invoke.i:                                        ; preds = %.noexc13.i, %bb.d
  %i.ik = phi i32 [ %i.ky, %.noexc13.i ], [ %i.cy, %bb.d ] ; 4 uses
  %i.il = add nsw i32 %i.ik, -1000
end_hunk_4
