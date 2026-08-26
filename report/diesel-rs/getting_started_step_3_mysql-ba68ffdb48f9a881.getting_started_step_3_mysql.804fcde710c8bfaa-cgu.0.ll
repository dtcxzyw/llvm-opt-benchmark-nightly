Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/getting_started_step_3_mysql-ba68ffdb48f9a881.getting_started_step_3_mysql.804fcde710c8bfaa-cgu.0?download=true
inline.NumInlined: 146
inline.NumDeleted: 69
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECsb101nepifEY_28getting_started_step_3_mysql:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !20, !invariant.load !4 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %common.resume, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !111, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef range(i64 1, -9223372036854775808) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #17
  br label %common.resume

bb.w:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.aw, align 8           ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.ax, align 8, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.ay = load ptr, ptr %.val3, align 8, !invariant.load !4 ; 2 uses
  %.not.i12 = icmp eq ptr %i.ay, null
  br i1 %.not.i12, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  invoke void %i.ay(ptr noundef nonnull %.val2)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !20, !invariant.load !4 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjRvGck33osM_6diesel6result24DatabaseErrorInformationNtNtB4_6marker4SyncNtB29_4SendEL_EECsb101nepifEY_28getting_started_step_3_mysql.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !111, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.ba, i64 noundef range(i64 1, 536870913) %i.bd) #17
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjRvGck33osM_6diesel6result24DatabaseErrorInformationNtNtB4_6marker4SyncNtB29_4SendEL_EECsb101nepifEY_28getting_started_step_3_mysql.exit

bb.aa:                                            ; preds = %bb.x
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !20, !invariant.load !4 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %common.resume, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bi = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !111, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.bg, i64 noundef range(i64 1, 536870913) %i.bj) #17
  br label %common.resume

bb.ac:                                            ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !119, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef align 8 dereferenceable(32) %i.bl)
          to label %bb.ad unwind label %.body, !noalias !119, !inline_history !122

.body:                                            ; preds = %bb.ac
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef 32, i64 noundef 8) #17, !noalias !119
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorEECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef align 8 dereferenceable(8) %i.bn) #16
          to label %common.resume unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef 32, i64 noundef 8) #17, !noalias !119
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !123, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef align 8 dereferenceable(32) %i.bp)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorEECsb101nepifEY_28getting_started_step_3_mysql.exit17 unwind label %bb.ae, !noalias !123, !inline_history !122

bb.ae:                                            ; preds = %bb.ad
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef 32, i64 noundef 8) #17, !noalias !123
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorEECsb101nepifEY_28getting_started_step_3_mysql.exit17: ; preds = %bb.ad
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef 32, i64 noundef 8) #17, !noalias !123
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjRvGck33osM_6diesel6result24DatabaseErrorInformationNtNtB4_6marker4SyncNtB29_4SendEL_EECsb101nepifEY_28getting_started_step_3_mysql.exit

bb.af:                                            ; preds = %.body
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64                ; 2 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsb101nepifEY_28getting_started_step_3_mysql.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsb101nepifEY_28getting_started_step_3_mysql.exit
    i64 1, label %bb.c
  ], !prof !126

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsb101nepifEY_28getting_started_step_3_mysql.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !20, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsb101nepifEY_28getting_started_step_3_mysql.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !111, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #17
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsb101nepifEY_28getting_started_step_3_mysql.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !20, !invariant.load !4 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !111, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #17
  resume { ptr, i32 } %i.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsb101nepifEY_28getting_started_step_3_mysql.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #17
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsb101nepifEY_28getting_started_step_3_mysql.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsb101nepifEY_28getting_started_step_3_mysql.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsb101nepifEY_28getting_started_step_3_mysql.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt12StatementUseECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmtNtB5_12StatementUseNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_5mysql10connection4stmt9StatementEECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef align 8 dereferenceable(32) %0) #16
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_5mysql10connection4stmt9StatementEECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef align 8 dereferenceable(32) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB6_15MysqlConnectionNtNtBa_10connection10Connection23execute_returning_countINtNtNtBa_13query_builder16insert_statement15InsertStatementNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableINtB26_12ValuesClauseTINtNtBa_10insertable28DefaultableColumnInsertValueINtB4x_17ColumnInsertValueNtNtB33_7columns5titleINtNtNtBa_10expression5bound5BoundNtNtBa_9sql_types4TextRReEEEIB4v_IB5j_NtB5K_4bodyB64_EEEB31_EEEB37_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %3 = alloca [40 x i8], align 8                  ; 5 uses
  %.sroa.5.i2 = alloca [32 x i8], align 8         ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 13 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 15 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [32 x i8], align 8          ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.7 = alloca [32 x i8], align 8            ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %2, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %1, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.r, null                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !align !5
  %.sroa.3.0 = select i1 %.not, ptr @6, ptr %i.t  ; 2 uses
  %.sroa.0.0 = select i1 %.not, ptr %i.p, ptr %i.r ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !130
  store ptr %i.o, ptr %i.j, align 8, !noalias !130
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.u, align 8, !noalias !130
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr @5, ptr %i.v, align 8, !noalias !130
  store i32 2, ptr %i.k, align 8, !noalias !130
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !4, !alias.scope !127, !noalias !135, !nonnull !4
  call void %i.x(ptr noundef nonnull %.sroa.0.0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.k), !noalias !136, !inline_history !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !130
  call void @_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_5mysql7backend5MysqlNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16insert_statement15InsertStatementNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableINtB2I_12ValuesClauseTINtNtB7_10insertable28DefaultableColumnInsertValueINtB59_17ColumnInsertValueNtNtB3F_7columns5titleINtNtNtB7_10expression5bound5BoundNtNtB7_9sql_types4TextRReEEEIB57_IB5V_NtB6m_4bodyB6G_EEEB3D_EEINtNtCscI6d9CVNmLh_4core6result6ResultB1K_NtNtB7_6result5ErrorERNtNtB1O_3raw13RawConnectionEB3J_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noundef nonnull @_RNvMNtNtNtCsjRvGck33osM_6diesel5mysql10connection3rawNtB2_13RawConnection7prepare, ptr noundef nonnull %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.3.0), !noalias !138
  %i.y = load i64, ptr %i.h, align 8, !range !139, !noalias !130, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !130
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !130
  store i64 0, ptr %i.g, align 8, !noalias !130
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !130
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 6 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !130
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !130
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !130
  invoke void @_RNvYRINtNtNtCsjRvGck33osM_6diesel13query_builder16insert_statement15InsertStatementNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableINtB6_12ValuesClauseTINtNtBa_10insertable28DefaultableColumnInsertValueINtB2O_17ColumnInsertValueNtNtB1l_7columns5titleINtNtNtBa_10expression5bound5BoundNtNtBa_9sql_types4TextRReEEEIB2M_IB3A_NtB41_4bodyB4l_EEEB1j_EEINtB8_13QueryFragmentNtNtNtBa_5mysql7backend5MysqlE13collect_bindsB1p_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr))
          to label %bb.d unwind label %bb.s, !noalias !138

.thread.i:                                        ; preds = %bb.j, %bb.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.f, align 8, !range !141, !noalias !130, !noundef !4
  %.not.i1 = icmp eq i64 %i.ac, -1
  br i1 %.not.i1, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !130
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.g unwind label %bb.f, !noalias !138

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i unwind label %bb.h, !noalias !138

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEECsb101nepifEY_28getting_started_step_3_mysql.exit.i unwind label %bb.m, !noalias !138

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !138
  unreachable

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !130
  %i.af = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !130, !nonnull !4, !noundef !4 ; 3 uses
  %i.ag = load i64, ptr %i.g, align 8, !range !20, !noalias !130, !noundef !4
  %i.ah = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !130, !noundef !4 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  %.sroa.017.0.copyload.i = load i64, ptr %i.ab, align 8, !noalias !130
  %.sroa.418.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !130, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.519.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !130 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.ak = icmp ult i64 %.sroa.519.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.sroa.418.0.copyload.i, i64 %.sroa.519.0.copyload.i
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  store ptr %i.af, ptr %i.e, align 8, !alias.scope !150, !noalias !153
  %.sroa.4.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx15.i, align 8, !alias.scope !150, !noalias !153
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ag, ptr %.sroa.516.0..sroa_idx.i, align 8, !alias.scope !150, !noalias !153
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.aj, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !150, !noalias !153
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.418.0.copyload.i, ptr %i.am, align 8, !alias.scope !155, !noalias !156
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.sroa.418.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !155, !noalias !156
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %.sroa.017.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !155, !noalias !156
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.al, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !155, !noalias !156
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !alias.scope !157, !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !130
  %i.ao = load i64, ptr %i.i, align 8, !range !112, !noalias !130, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !130, !nonnull !4, !align !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !130
  invoke void @_RINvMs_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4bindNtB5_22PreparedStatementBinds15from_input_dataINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB9_7backend9MysqlTypeEIB2s_INtNtB1M_6option6OptionINtB2w_3VechEEEEECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.e)
          to label %bb.j unwind label %.thread.i, !noalias !138

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp eq i64 %i.ao, -2
  %.sroa.01.0.i = select i1 %i.ar, ptr %i.aq, ptr %i.i
  invoke void @_RNvMs_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmtNtB4_9Statement10input_bind(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.k unwind label %.thread.i, !noalias !138

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !130
  %i.as = load i64, ptr %i.d, align 8, !range !141, !noalias !130, !noundef !4
  %.not11.i = icmp eq i64 %i.as, -1
  br i1 %.not11.i, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !130
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_hEEEECsb101nepifEY_28getting_started_step_3_mysql.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_hEEEECsb101nepifEY_28getting_started_step_3_mysql.exit.i: ; preds = %bb.o, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !130
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_5mysql10connection4stmt9StatementEECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef align 8 dereferenceable(32) %i.i), !noalias !138
  br label %bb.u

bb.m:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.at, %bb.m ], [ %i.ad, %bb.f ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_hEEEECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #16
          to label %.critedge.i unwind label %bb.r, !noalias !138

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEECsb101nepifEY_28getting_started_step_3_mysql.exit.i: ; preds = %bb.g
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionIBw_hEEENtNtNtBK_3ops4drop4Drop4dropCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.o unwind label %bb.n, !noalias !138

bb.n:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEECsb101nepifEY_28getting_started_step_3_mysql.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtCscI6d9CVNmLh_4core6option6OptionINtNtB7_3vec3VechEEENtNtNtBR_3ops4drop4Drop4dropCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.critedge.i unwind label %bb.p, !noalias !138

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEECsb101nepifEY_28getting_started_step_3_mysql.exit.i
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtCscI6d9CVNmLh_4core6option6OptionINtNtB7_3vec3VechEEENtNtNtBR_3ops4drop4Drop4dropCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_hEEEECsb101nepifEY_28getting_started_step_3_mysql.exit.i unwind label %bb.q, !noalias !138

bb.p:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !138
  unreachable

.critedge.i:                                      ; preds = %bb.t, %bb.q, %bb.n, %.body.i, %.thread.i
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread.i ], [ %eh.lpad-body.i, %.body.i ], [ %i.au, %bb.n ], [ %lpad.thr_comm.split-lp.i, %bb.t ], [ %i.aw, %bb.q ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_5mysql10connection4stmt9StatementEECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef align 8 dereferenceable(32) %i.i) #16
          to label %common.resume unwind label %bb.r, !noalias !138

bb.q:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i

bb.r:                                             ; preds = %bb.t, %bb.s, %.critedge.i, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !138
  unreachable

bb.s:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef align 8 dereferenceable(24) %i.g) #16
          to label %bb.t unwind label %bb.r, !noalias !138

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_hEEEECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #16
          to label %.critedge.i unwind label %bb.r, !noalias !138

common.resume:                                    ; preds = %bb.af, %bb.ae, %bb.y, %bb.aa, %.critedge.i
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.y ], [ %.pn.i, %.critedge.i ], [ %i.bc, %bb.aa ], [ %i.bh, %bb.ae ], [ %i.bh, %bb.af ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionIBC_hEEEECsb101nepifEY_28getting_started_step_3_mysql.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, i64 32, i1 false)
  br label %bb.ad

bb.v:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !159
  call void @_RNvMs0_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmtINtNtNtBb_10connection15statement_cache11MaybeCachedNtB5_9StatementE7execute(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.l), !noalias !163
  %i.ay = load i64, ptr %3, align 8, !range !139, !noalias !159, !noundef !4
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i2, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false), !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !159
  br i1 %i.az, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i2, i64 32, i1 false), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i2)
  br label %_RNCINvXs1_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB8_15MysqlConnectionNtNtBc_10connection10Connection23execute_returning_countINtNtNtBc_13query_builder16insert_statement15InsertStatementNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableINtB28_12ValuesClauseTINtNtBc_10insertable28DefaultableColumnInsertValueINtB4z_17ColumnInsertValueNtNtB35_7columns5titleINtNtNtBc_10expression5bound5BoundNtNtBc_9sql_types4TextRReEEEIB4x_IB5l_NtB5M_4bodyB66_EEEB33_EEE0B39_.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i2, i64 32, i1 false), !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i2)
  invoke void @_RNvMs2_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmtNtB5_12StatementUse13affected_rows(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %bb.z unwind label %bb.y, !noalias !164

bb.y:                                             ; preds = %bb.x
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt12StatementUseECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef align 8 dereferenceable(32) %i.b) #16
          to label %common.resume unwind label %bb.ac, !noalias !159

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmtNtB5_12StatementUseNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt12StatementUseECsb101nepifEY_28getting_started_step_3_mysql.exit.i unwind label %bb.aa, !noalias !159

bb.aa:                                            ; preds = %bb.z
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_5mysql10connection4stmt9StatementEECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #16
          to label %common.resume unwind label %bb.ab, !noalias !159

bb.ab:                                            ; preds = %bb.aa
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !159
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt12StatementUseECsb101nepifEY_28getting_started_step_3_mysql.exit.i: ; preds = %bb.z
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache11MaybeCachedNtNtNtNtBI_5mysql10connection4stmt9StatementEECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !159
  br label %_RNCINvXs1_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB8_15MysqlConnectionNtNtBc_10connection10Connection23execute_returning_countINtNtNtBc_13query_builder16insert_statement15InsertStatementNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableINtB28_12ValuesClauseTINtNtBc_10insertable28DefaultableColumnInsertValueINtB4z_17ColumnInsertValueNtNtB35_7columns5titleINtNtNtBc_10expression5bound5BoundNtNtBc_9sql_types4TextRReEEEIB4x_IB5l_NtB5M_4bodyB66_EEEB33_EEE0B39_.exit

bb.ac:                                            ; preds = %bb.y
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !159
  unreachable

_RNCINvXs1_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB8_15MysqlConnectionNtNtBc_10connection10Connection23execute_returning_countINtNtNtBc_13query_builder16insert_statement15InsertStatementNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableINtB28_12ValuesClauseTINtNtBc_10insertable28DefaultableColumnInsertValueINtB4z_17ColumnInsertValueNtNtB35_7columns5titleINtNtNtBc_10expression5bound5BoundNtNtBc_9sql_types4TextRReEEEIB4x_IB5l_NtB5M_4bodyB66_EEEB33_EEE0B39_.exit: ; preds = %bb.w, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt12StatementUseECsb101nepifEY_28getting_started_step_3_mysql.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ad

bb.ad:                                            ; preds = %_RNCINvXs1_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB8_15MysqlConnectionNtNtBc_10connection10Connection23execute_returning_countINtNtNtBc_13query_builder16insert_statement15InsertStatementNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableINtB28_12ValuesClauseTINtNtBc_10insertable28DefaultableColumnInsertValueINtB4z_17ColumnInsertValueNtNtB35_7columns5titleINtNtNtBc_10expression5bound5BoundNtNtBc_9sql_types4TextRReEEEIB4x_IB5l_NtB5M_4bodyB66_EEEB33_EEE0B39_.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %2, ptr %i.m, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.bg = load i64, ptr %i.n, align 8, !range !141, !alias.scope !168, !noalias !170, !noundef !4
  %.not.i = icmp eq i64 %i.bg, -1                 ; 2 uses
  %..i = select i1 %.not.i, ptr null, ptr %i.n
  invoke void @_RNvNvNtNtCsjRvGck33osM_6diesel5mysql10connection33update_transaction_manager_status17non_generic_inner(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %..i, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.bf, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @8)
          to label %_RINvNtNtCsjRvGck33osM_6diesel5mysql10connection33update_transaction_manager_statusjECsb101nepifEY_28getting_started_step_3_mysql.exit unwind label %bb.ae, !noalias !165

bb.ae:                                            ; preds = %bb.ad
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i, label %common.resume, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !165
  unreachable

_RINvNtNtCsjRvGck33osM_6diesel5mysql10connection33update_transaction_manager_statusjECsb101nepifEY_28getting_started_step_3_mysql.exit: ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !alias.scope !173, !noalias !174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB6_15MysqlConnectionNtNtBa_10connection14LoadConnection4loadINtNtNtBa_13query_builder16select_statement15SelectStatementINtNtB1S_11from_clause10FromClauseNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableEINtNtB1S_13select_clause12SelectClauseINtNtNtBa_10expression9select_by8SelectByNtNtB3p_6models4PostNtNtB8_7backend5MysqlEENtNtB1S_15distinct_clause16NoDistinctClauseNtNtB1S_12where_clause13NoWhereClauseINtNtB1S_12order_clause11OrderClauseINtNtB58_9operators4DescNtNtB3l_7columns2idEEINtNtB1S_19limit_offset_clause17LimitOffsetClauseINtNtB1S_12limit_clause11LimitClauseINtNtB58_5bound5BoundNtNtBa_9sql_types6BigIntxEENtNtB1S_13offset_clause14NoOffsetClauseEEEB3p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(56) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [80 x i8], align 8                ; 13 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 15 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [32 x i8], align 8          ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 10 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.7 = alloca [32 x i8], align 8            ; 10 uses
  %i.o = alloca [56 x i8], align 8                ; 10 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  store i64 %2, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %1, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.s, null                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !align !5
  %.sroa.3.0 = select i1 %.not, ptr @6, ptr %i.u  ; 2 uses
  %.sroa.0.0 = select i1 %.not, ptr %i.q, ptr %i.s ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !178
  store ptr %i.p, ptr %i.k, align 8, !noalias !178
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.v, align 8, !noalias !178
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr @3, ptr %i.w, align 8, !noalias !178
  store i32 2, ptr %i.l, align 8, !noalias !178
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !alias.scope !175, !noalias !183, !nonnull !4
  call void %i.y(ptr noundef nonnull %.sroa.0.0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.l), !noalias !184, !inline_history !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !178
  call void @_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_5mysql7backend5MysqlNtNtNtB1l_10connection4stmt9StatementE16cached_statementINtNtNtB7_13query_builder16select_statement15SelectStatementINtNtB2J_11from_clause10FromClauseNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableEINtNtB2J_13select_clause12SelectClauseINtNtNtB7_10expression9select_by8SelectByNtNtB4g_6models4PostB1h_EENtNtB2J_15distinct_clause16NoDistinctClauseNtNtB2J_12where_clause13NoWhereClauseINtNtB2J_12order_clause11OrderClauseINtNtB5Z_9operators4DescNtNtB4c_7columns2idEEINtNtB2J_19limit_offset_clause17LimitOffsetClauseINtNtB2J_12limit_clause11LimitClauseINtNtB5Z_5bound5BoundNtNtB7_9sql_types6BigIntxEENtNtB2J_13offset_clause14NoOffsetClauseEEINtNtCscI6d9CVNmLh_4core6result6ResultB1K_NtNtB7_6result5ErrorERNtNtB1O_3raw13RawConnectionEB4g_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noundef nonnull @_RNvMNtNtNtCsjRvGck33osM_6diesel5mysql10connection3rawNtB2_13RawConnection7prepare, ptr noundef nonnull %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.3.0), !noalias !186
  %i.z = load i64, ptr %i.i, align 8, !range !139, !noalias !178, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !178
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !178
  store i64 0, ptr %i.h, align 8, !noalias !178
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !178
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !178
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !178
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !178
  invoke void @_RNvYINtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableEINtNtB7_13select_clause12SelectClauseINtNtNtB9_10expression9select_by8SelectByNtNtB1V_6models4PostNtNtNtB9_5mysql7backend5MysqlEENtNtB7_15distinct_clause16NoDistinctClauseNtNtB7_12where_clause13NoWhereClauseINtNtB7_12order_clause11OrderClauseINtNtB3D_9operators4DescNtNtB1R_7columns2idEEINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseINtNtB3D_5bound5BoundNtNtB9_9sql_types6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentB4x_E13collect_bindsB1V_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr))
          to label %bb.d unwind label %bb.s, !noalias !186

.thread.i:                                        ; preds = %bb.j, %bb.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %i.g, align 8, !range !141, !noalias !178, !noundef !4
  %.not.i = icmp eq i64 %i.ad, -1
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !178
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.g unwind label %bb.f, !noalias !186

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.h, !noalias !186

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel5mysql7backend9MysqlTypeEECsb101nepifEY_28getting_started_step_3_mysql.exit.i unwind label %bb.m, !noalias !186

bb.h:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !186
  unreachable

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !178
  %i.ag = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !178, !nonnull !4, !noundef !4 ; 3 uses
  %i.ah = load i64, ptr %i.h, align 8, !range !20, !noalias !178, !noundef !4
  %i.ai = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !178, !noundef !4 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %.sroa.017.0.copyload.i = load i64, ptr %i.ac, align 8, !noalias !178
  %.sroa.418.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !178, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.519.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !178 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.al = icmp ult i64 %.sroa.519.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.sroa.418.0.copyload.i, i64 %.sroa.519.0.copyload.i
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  store ptr %i.ag, ptr %i.f, align 8, !alias.scope !196, !noalias !199
  %.sroa.4.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx15.i, align 8, !alias.scope !196, !noalias !199
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.ah, ptr %.sroa.516.0..sroa_idx.i, align 8, !alias.scope !196, !noalias !199
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.ak, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !196, !noalias !199
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %.sroa.418.0.copyload.i, ptr %i.an, align 8, !alias.scope !201, !noalias !202
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %.sroa.418.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !201, !noalias !202
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 %.sroa.017.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !201, !noalias !202
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.am, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !201, !noalias !202
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !203, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !178
  %i.ap = load i64, ptr %i.j, align 8, !range !112, !noalias !178, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !178, !nonnull !4, !align !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !178
  invoke void @_RINvMs_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4bindNtB5_22PreparedStatementBinds15from_input_dataINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB9_7backend9MysqlTypeEIB2s_INtNtB1M_6option6OptionINtB2w_3VechEEEEECsb101nepifEY_28getting_started_step_3_mysql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.f)
          to label %bb.j unwind label %.thread.i, !noalias !186

bb.j:                                             ; preds = %bb.i
  %i.as = icmp eq i64 %i.ap, -2
  %.sroa.01.0.i = select i1 %i.as, ptr %i.ar, ptr %i.j
  invoke void @_RNvMs_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmtNtB4_9Statement10input_bind(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.k unwind label %.thread.i, !noalias !186

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !178
end_hunk_0
