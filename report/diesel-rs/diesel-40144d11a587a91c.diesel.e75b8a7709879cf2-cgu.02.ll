inline.NumInlined: 285
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXNtNtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtBa_11deserialize7FromSqlNtNtBa_9sql_types9TimestampNtNtB8_7backend2PgE8from_sql:bb.a
  %i.ab = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 24, i64 noundef range(i64 1, 9) 8) #20, !noalias !117 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit, !prof !58

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #21
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #23
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ad

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @79, ptr %i.ag, align 8
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
  %i.a = load i64, ptr %2, align 8, !range !120, !noundef !3
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  store i64 -1, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !114, !noundef !3
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
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.j, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXs0_NtNtNtNtCsjRvGck33osM_6diesel2pg10expression10extensions12interval_dsldNtB5_11IntervalDsl6months(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, double noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call double @llvm.trunc.f64(double %1) ; 2 uses
  %i.b = fsub double %1, %i.a
  %i.c = fmul double %i.b, 3.000000e+01           ; 2 uses
  %i.d = tail call double @llvm.trunc.f64(double %i.c) ; 2 uses
  %i.e = fsub double %i.c, %i.d
  %i.f = fmul double %i.e, 8.640000e+04
  %i.g = fmul double %i.f, 1.000000e+03
  %i.h = fmul double %i.g, 1.000000e+03
  %i.i = tail call double @llvm.round.f64(double %i.h)
  %i.j = tail call i64 @llvm.fptosi.sat.i64.f64(double %i.i)
  %i.k = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.d)
  %i.l = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.a)
  store i64 %i.j, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.l, ptr %i.n, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtBd_11deserialize7FromSqlNtNtB9_9sql_types11TimestamptzNtNtBb_7backend2PgE8from_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtNtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtBa_11deserialize7FromSqlNtNtBa_9sql_types9TimestampNtNtB8_7backend2PgE8from_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsjRvGck33osM_6diesel5mysql5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtBd_9serialize5ToSqlNtNtBd_9sql_types9TimestampNtNtBb_7backend5MysqlE6to_sql(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i32, ptr %1, align 4, !range !121, !noundef !3 ; 2 uses
  %i.d = ashr i32 %i.c, 13                        ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.f = tail call noundef dereferenceable_or_null(1) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 1, i64 noundef range(i64 1, 9) 1) #20 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !58

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #21
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  store i8 3, ptr %i.f, align 1
  store ptr %i.f, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @133, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = lshr i32 %i.c, 3
  %i.j = and i32 %i.i, 1023                       ; 3 uses
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = icmp samesign ult i32 %i.j, 733
  br i1 %i.l, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.f, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  ret void

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr @13, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !noundef !3
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %i.j, %i.o               ; 2 uses
  %i.q = lshr i32 %i.p, 6
  %i.r = lshr i32 %i.p, 1
  %i.s = and i32 %i.r, 31
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %i.t, align 4, !noundef !3 ; 3 uses
  %i.v = udiv i32 %i.u, 60
  %i.w = udiv i32 %i.u, 3600
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 4, !noundef !3
  %i.z = udiv i32 %i.y, 1000
  %i.aa = zext nneg i32 %i.z to i64
  store i32 %i.d, ptr %i.b, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.q, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.s, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.w, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %3 = insertelement <2 x i32> poison, i32 %i.v, i64 0
  %4 = insertelement <2 x i32> %3, i32 %i.u, i64 1
  %5 = urem <2 x i32> %4, splat (i32 60)
  store <2 x i32> %5, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.aa, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 1, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = load <2 x ptr>, ptr %2, align 8
  store <2 x ptr> %i.aj, ptr %i.a, align 16
  call void @_RNvXsd_NtNtNtCsjRvGck33osM_6diesel5mysql5types13date_and_timeNtB5_9MysqlTimeINtNtBb_9serialize5ToSqlNtNtBb_9sql_types9TimestampNtNtB9_7backend5MysqlE6to_sql(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef 733, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsjRvGck33osM_6diesel6sqlite5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive4time9NaiveTimeINtNtBd_11deserialize7FromSqlNtNtBd_9sql_types4TimeNtNtBb_7backend6SqliteE8from_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [12 x i8], align 4                ; 38 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !125, !noalias !122, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = tail call noundef i32 @sqlite3_value_bytes(ptr noundef nonnull %.val.i) #20, !noalias !127 ; 2 uses
  %i.j = tail call noundef ptr @sqlite3_value_text(ptr noundef nonnull %.val.i) #20, !noalias !127
  %i.k = icmp sgt i32 %i.i, -1
  br i1 %i.k, label %_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !128
  store i8 3, ptr %i.f, align 1, !noalias !128
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 51, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #21
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.b
  unreachable

_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i: ; preds = %bb.a
  %i.l = zext nneg i32 %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !127
  invoke void @_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
          to label %.noexc1 unwind label %bb.s

.noexc1:                                          ; preds = %_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i
  %i.m = load i64, ptr %i.h, align 8, !range !9, !noalias !127, !noundef !3
  %.not.i = icmp eq i64 %i.m, -1
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !127
  %i.n = invoke { ptr, i64 } @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE16into_boxed_sliceCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc2 unwind label %bb.s    ; 2 uses

.noexc2:                                          ; preds = %bb.c
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 3 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val5.i = load ptr, ptr %i.q, align 8, !alias.scope !125, !noalias !122, !noundef !3 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val6.i = load i64, ptr %i.r, align 8, !alias.scope !125, !noalias !122 ; 2 uses
  %i.s = icmp eq ptr %.val5.i, null
  %i.t = icmp eq i64 %.val6.i, 0
  %or.cond.i.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i, label %bb.d

bb.d:                                             ; preds = %.noexc2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef range(i64 1, 0) %.val6.i, i64 noundef 1) #20, !noalias !127
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i

bb.e:                                             ; preds = %.noexc1
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !127, !nonnull !3, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !127, !noundef !3
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i, %bb.e
  %.sroa.3.0.i = phi i64 [ %i.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i ], [ %i.x, %bb.e ] ; 10 uses
  %.sroa.0.0.i = phi ptr [ %i.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i ], [ %i.v, %bb.e ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !127
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !127
  store ptr %.sroa.0.0.i, ptr %i.e, align 8, !noalias !135
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.3.0.i, ptr %i.y, align 8, !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !135
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive4timeNtB2_9NaiveTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 5)
          to label %.noexc3 unwind label %bb.s

.noexc3:                                          ; preds = %bb.f
  %i.z = load i8, ptr %i.d, align 4, !range !32, !noalias !135, !noundef !3
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.j, label %bb.r

bb.g:                                             ; preds = %.noexc12
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #21
          to label %.noexc.i.i unwind label %bb.h, !noalias !137

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #23
          to label %.body unwind label %bb.i, !noalias !137

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !137
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit.i.i: ; preds = %.noexc12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !135
  store ptr %i.au, ptr %0, align 8, !alias.scope !138, !noalias !139
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @79, ptr %i.ad, align 8, !alias.scope !138, !noalias !139
  br label %bb.t

bb.j:                                             ; preds = %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !135
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive4timeNtB2_9NaiveTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2)
          to label %.noexc4 unwind label %bb.s

.noexc4:                                          ; preds = %bb.j
  %i.ae = load i8, ptr %i.d, align 4, !range !32, !noalias !135, !noundef !3
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.k, label %bb.r

bb.k:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !135
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive4timeNtB2_9NaiveTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2)
          to label %.noexc5 unwind label %bb.s

.noexc5:                                          ; preds = %bb.k
  %i.ag = load i8, ptr %i.d, align 4, !range !32, !noalias !135, !noundef !3
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.l, label %bb.r

bb.l:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !135
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive4timeNtB2_9NaiveTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 3)
          to label %.noexc6 unwind label %bb.s

.noexc6:                                          ; preds = %bb.l
  %i.ai = load i8, ptr %i.d, align 4, !range !32, !noalias !135, !noundef !3
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !135
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive4timeNtB2_9NaiveTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 5)
          to label %.noexc7 unwind label %bb.s

.noexc7:                                          ; preds = %bb.m
  %i.ak = load i8, ptr %i.d, align 4, !range !32, !noalias !135, !noundef !3
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !135
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive4timeNtB2_9NaiveTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 3)
          to label %.noexc8 unwind label %bb.s

.noexc8:                                          ; preds = %bb.n
  %i.am = load i8, ptr %i.d, align 4, !range !32, !noalias !135, !noundef !3
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !135
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive4timeNtB2_9NaiveTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %.noexc9 unwind label %bb.s

.noexc9:                                          ; preds = %bb.o
  %i.ao = load i8, ptr %i.d, align 4, !range !32, !noalias !135, !noundef !3
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtNtNtCsjRvGck33osM_6diesel6sqlite5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive4time9NaiveTimeINtNtBd_9serialize5ToSqlNtNtBd_9sql_types4TimeNtNtBb_7backend6SqliteE6to_sql:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @143, ptr %i.k, align 8, !noalias !153
  %i.l = invoke noundef zeroext i1 @_RNvXs_NtNtCslCQnfik72jt_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCsjRvGck33osM_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !157

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #23
          to label %.body unwind label %bb.e, !noalias !157

bb.c:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.d, label %bb.g, !prof !58

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @102, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #21
          to label %.noexc.i unwind label %bb.b, !noalias !157

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !157
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.m, %bb.b ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCslCQnfik72jt_6chrono6format10formatting13DelayedFormatNtNtBG_8strftime13StrftimeItemsEECsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(88) %i.d) #23
          to label %common.resume unwind label %bb.l

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !153
  invoke void @_RINvMNtCsjRvGck33osM_6diesel9serializeINtB3_6OutputNtNtNtB5_6sqlite7backend6SqliteE9set_valueNtNtCs40k4W9msRzi_5alloc6string6StringEB5_(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.p = load i64, ptr %i.d, align 8, !range !9, !alias.scope !159, !noundef !3
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCslCQnfik72jt_6chrono6format10formatting13DelayedFormatNtNtBG_8strftime13StrftimeItemsEECsjRvGck33osM_6diesel.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCslCQnfik72jt_6chrono6offset5fixed11FixedOffsetEECsjRvGck33osM_6diesel.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCslCQnfik72jt_6chrono6offset5fixed11FixedOffsetEECsjRvGck33osM_6diesel.exit.i.i: ; preds = %bb.i
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCslCQnfik72jt_6chrono6format10formatting13DelayedFormatNtNtBG_8strftime13StrftimeItemsEECsjRvGck33osM_6diesel.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCslCQnfik72jt_6chrono6format10formatting13DelayedFormatNtNtBG_8strftime13StrftimeItemsEECsjRvGck33osM_6diesel.exit: ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCslCQnfik72jt_6chrono6offset5fixed11FixedOffsetEECsjRvGck33osM_6diesel.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.t, align 8
  store ptr null, ptr %0, align 8
  ret void

bb.l:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %.val = load i8, ptr %i.a, align 1, !range !164, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsjRvGck33osM_6diesel, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsjRvGck33osM_6diesel.48, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeNtB6_5Debug3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !165, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXsh_NtNtCslCQnfik72jt_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCsjRvGck33osM_6diesel13query_builder16insert_statement7privateNtB5_7ReplaceINtB9_13QueryFragmentNtNtNtBb_5mysql7backend5MysqlE8walk_ast(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !range !120, !noundef !3
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  store i64 -1, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !114, !noundef !3
  tail call void @_RNvXs_NtNtCsjRvGck33osM_6diesel5mysql13query_builderNtB4_17MysqlQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend5MysqlE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 7)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  store i8 0, ptr %i.e, align 1
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define { i64, i64 } @_RNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB5_14OwnedSqliteRowINtNtBb_3row8RowIndexReE3idx(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB2M_14OwnedSqliteRowINtNtB2S_3row8RowIndexReE3idx0EB2S_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB7_14OwnedSqliteRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.thread.i
  %.sroa.02.010.i = phi i64 [ %i.q, %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB7_14OwnedSqliteRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.thread.i ], [ 0, %bb.a ] ; 3 uses
  %i.h = phi ptr [ %i.i, %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB7_14OwnedSqliteRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.thread.i ], [ %i.e, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.j = load i64, ptr %i.h, align 8, !range !9, !alias.scope !166, !noalias !169, !noundef !3
  %.not.i.i = icmp ne i64 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !166, !noalias !169
  %i.m = icmp eq i64 %i.l, %2
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.m, i1 false
  br i1 %or.cond.i.i, label %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB7_14OwnedSqliteRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.i, label %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB7_14OwnedSqliteRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.thread.i

_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB7_14OwnedSqliteRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.i: ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !166, !noalias !169, !nonnull !3, !noundef !3
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.o, ptr nonnull readonly %1, i64 %2), !noalias !173
  %i.p = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.p, label %bb.b, label %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB7_14OwnedSqliteRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.thread.i

_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB7_14OwnedSqliteRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.thread.i: ; preds = %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB7_14OwnedSqliteRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.i, %.lr.ph.i
  %i.q = add nuw nsw i64 %.sroa.02.010.i, 1
  %i.r = icmp eq ptr %i.i, %i.f
  br i1 %i.r, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB2M_14OwnedSqliteRowINtNtB2S_3row8RowIndexReE3idx0EB2S_.exit, label %.lr.ph.i

bb.b:                                             ; preds = %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB7_14OwnedSqliteRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.i
  %i.s = icmp ult i64 %.sroa.02.010.i, %i.d
  tail call void @llvm.assume(i1 %i.s)
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB2M_14OwnedSqliteRowINtNtB2S_3row8RowIndexReE3idx0EB2S_.exit

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB2M_14OwnedSqliteRowINtNtB2S_3row8RowIndexReE3idx0EB2S_.exit: ; preds = %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB7_14OwnedSqliteRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.thread.i, %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %.sroa.02.010.i, %bb.b ], [ undef, %bb.a ], [ undef, %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB7_14OwnedSqliteRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.thread.i ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection9owned_rowNtB7_14OwnedSqliteRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.thread.i ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeNtNtBd_11deserialize11Defaultable13default_value(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsk_NtNtCslCQnfik72jt_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtNtCsjRvGck33osM_6diesel5mysql5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive4time9NaiveTimeINtNtBd_9serialize5ToSqlNtNtBd_9sql_types4TimeNtNtBb_7backend5MysqlE6to_sql(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i32, ptr %1, align 4, !noundef !3   ; 3 uses
  %i.d = udiv i32 %i.c, 60
  %i.e = udiv i32 %i.c, 3600
  store i32 0, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %3, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.e, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %4 = insertelement <2 x i32> poison, i32 %i.d, i64 0
  %5 = insertelement <2 x i32> %4, i32 %i.c, i64 1
  %6 = urem <2 x i32> %5, splat (i32 60)
  store <2 x i32> %6, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 2, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = load <2 x ptr>, ptr %2, align 8
  store <2 x ptr> %i.m, ptr %i.a, align 16
  call void @_RNvXsf_NtNtNtCsjRvGck33osM_6diesel5mysql5types13date_and_timeNtB5_9MysqlTimeINtNtBb_9serialize5ToSqlNtNtBb_9sql_types4TimeNtNtB9_7backend5MysqlE6to_sql(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtNtCsjRvGck33osM_6diesel6sqlite10expression9functions18json_array_0_utilsNtB5_12json_array_0INtNtBd_13query_builder13QueryFragmentNtNtBb_7backend6SqliteE8walk_ast(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !range !120, !noundef !3
  switch i64 %i.a, label %bb.d [
    i64 0, label %bb.b
    i64 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !114, !noundef !3 ; 3 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !177, !noalias !174, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = tail call noundef i32 @sqlite3_value_bytes(ptr noundef nonnull %.val.i) #20, !noalias !179 ; 2 uses
  %i.j = tail call noundef ptr @sqlite3_value_text(ptr noundef nonnull %.val.i) #20, !noalias !179
  %i.k = icmp sgt i32 %i.i, -1
  br i1 %i.k, label %_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !180
  store i8 3, ptr %i.f, align 1, !noalias !180
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 51, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #21
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.b
  unreachable

_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i: ; preds = %bb.a
  %i.l = zext nneg i32 %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !179
  invoke void @_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
          to label %.noexc1 unwind label %bb.ag

.noexc1:                                          ; preds = %_RNvMs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection12sqlite_valueNtB5_11SqliteValue14as_byte_string.exit.i
  %i.m = load i64, ptr %i.h, align 8, !range !9, !noalias !179, !noundef !3
  %.not.i = icmp eq i64 %i.m, -1
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !179
  %i.n = invoke { ptr, i64 } @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE16into_boxed_sliceCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc2 unwind label %bb.ag   ; 2 uses

.noexc2:                                          ; preds = %bb.c
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 3 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val5.i = load ptr, ptr %i.q, align 8, !alias.scope !177, !noalias !174, !noundef !3 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val6.i = load i64, ptr %i.r, align 8, !alias.scope !177, !noalias !174 ; 2 uses
  %i.s = icmp eq ptr %.val5.i, null
  %i.t = icmp eq i64 %.val6.i, 0
  %or.cond.i.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i, label %bb.d

bb.d:                                             ; preds = %.noexc2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef range(i64 1, 0) %.val6.i, i64 noundef 1) #20, !noalias !179
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i

bb.e:                                             ; preds = %.noexc1
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !179, !nonnull !3, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !179, !noundef !3
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i, %bb.e
  %.sroa.3.0.i = phi i64 [ %i.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i ], [ %i.x, %bb.e ] ; 20 uses
  %.sroa.0.0.i = phi ptr [ %i.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEEECsjRvGck33osM_6diesel.exit.i ], [ %i.v, %bb.e ] ; 20 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !179
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !179
  store ptr %.sroa.0.0.i, ptr %i.e, align 8, !noalias !187
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.3.0.i, ptr %i.y, align 8, !noalias !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !187
  invoke void @_RNvMNtNtCslCQnfik72jt_6chrono5naive8datetimeNtB2_13NaiveDateTime14parse_from_str(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 8)
          to label %.noexc3 unwind label %bb.ag

.noexc3:                                          ; preds = %bb.f
  %i.z = load i32, ptr %i.d, align 4, !noalias !187, !noundef !3
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.n, label %bb.af

.split.i.i:                                       ; preds = %.noexc23, %bb.m, %bb.l, %.noexc5, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !187
  store ptr %i.e, ptr %i.b, align 8, !noalias !187
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjRvGck33osM_6diesel, ptr %.sroa.415.0..sroa_idx.i.i, align 8, !noalias !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !187
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @99, ptr noundef nonnull %i.b)
          to label %.noexc4 unwind label %bb.ag

.noexc4:                                          ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !187
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !189
  %i.ab = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 24, i64 noundef range(i64 1, 9) 8) #20, !noalias !189 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.g, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit.i.i, !prof !58

bb.g:                                             ; preds = %.noexc4
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #21
          to label %.noexc.i.i unwind label %bb.h, !noalias !192

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #23
          to label %.body unwind label %bb.i, !noalias !192

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !192
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit.i.i: ; preds = %.noexc4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !187
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.af, align 8, !alias.scope !193, !noalias !194
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @79, ptr %i.ag, align 8, !alias.scope !193, !noalias !194
  store i32 1, ptr %0, align 8, !alias.scope !193, !noalias !194
  br label %bb.ah

bb.j:                                             ; preds = %.noexc23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !noalias !187, !noundef !3
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
  %i.at = select i1 %i.as, i64 86400, i64 0
end_hunk_1
