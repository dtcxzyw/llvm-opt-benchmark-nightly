Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/show_posts_step_1-4f99e348aad498e4.show_posts_step_1.e43dc4178519f49d-cgu.0?download=true
inline.NumInlined: 266
inline.NumDeleted: 143
begin_hunk_0_@_RNvCsjAVdN2kNoZZ_17show_posts_step_14main:bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  store ptr %i.ee, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !313, !noalias !316
  %.sroa.0.0.copyload27 = load i64, ptr %i.ed, align 8, !noalias !313 ; 2 uses
  %.sroa.7.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx28, i64 48, i1 false), !noalias !313
  %.not = icmp eq i64 %.sroa.0.0.copyload27, -1
  br i1 %.not, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjAVdN2kNoZZ_17show_posts_step_1.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjAVdN2kNoZZ_17show_posts_step_1.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 %.sroa.0.0.copyload27, ptr %i.z, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.z, ptr %i.y, align 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @7, ptr noundef nonnull %i.y)
          to label %bb.bf unwind label %bb.be

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjAVdN2kNoZZ_17show_posts_step_1.exit.thread: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjAVdN2kNoZZ_17show_posts_step_1.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostECsjAVdN2kNoZZ_17show_posts_step_1.exit, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjAVdN2kNoZZ_17show_posts_step_1(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostEECsjAVdN2kNoZZ_17show_posts_step_1.exit26 unwind label %bb.bb

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostEECsjAVdN2kNoZZ_17show_posts_step_1.exit26: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjAVdN2kNoZZ_17show_posts_step_1.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel6sqlite10connection16SqliteConnectionECsjAVdN2kNoZZ_17show_posts_step_1(ptr noalias noundef align 8 dereferenceable(80) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  ret void

bb.be:                                            ; preds = %bb.bg, %bb.bf, %bb.bd
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostECsjAVdN2kNoZZ_17show_posts_step_1(ptr noalias noundef align 8 dereferenceable(56) %i.z) #25
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjAVdN2kNoZZ_17show_posts_step_1(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %.body unwind label %bb.bk

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 25 to ptr))
          to label %bb.bg unwind label %bb.be

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.eb, ptr %i.x, align 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @7, ptr noundef nonnull %i.x)
          to label %bb.bh unwind label %bb.be

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %.val4.i = load i64, ptr %i.z, align 8, !alias.scope !318 ; 2 uses
  %i.eg = icmp eq i64 %.val4.i, 0
  br i1 %i.eg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjAVdN2kNoZZ_17show_posts_step_1.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.val5.i = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !318, !nonnull !12, !noundef !12
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %.val4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !321
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjAVdN2kNoZZ_17show_posts_step_1.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjAVdN2kNoZZ_17show_posts_step_1.exit.i: ; preds = %bb.bi, %bb.bh
  %.val.i = load i64, ptr %i.eb, align 8, !alias.scope !318 ; 2 uses
  %i.eh = icmp eq i64 %.val.i, 0
  br i1 %i.eh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostECsjAVdN2kNoZZ_17show_posts_step_1.exit, label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjAVdN2kNoZZ_17show_posts_step_1.exit.i
  %.val1.i = load ptr, ptr %i.ec, align 8, !alias.scope !318, !nonnull !12, !noundef !12
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !324
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostECsjAVdN2kNoZZ_17show_posts_step_1.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostECsjAVdN2kNoZZ_17show_posts_step_1.exit: ; preds = %bb.bj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjAVdN2kNoZZ_17show_posts_step_1.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.ei = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !327, !noalias !316, !nonnull !12, !noundef !12
  %i.ej = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !327, !noalias !316, !nonnull !12, !noundef !12 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ei
  br i1 %i.ek, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjAVdN2kNoZZ_17show_posts_step_1.exit.thread, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjAVdN2kNoZZ_17show_posts_step_1.exit

bb.bk:                                            ; preds = %bb.be, %.body
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.bl:                                            ; preds = %bb.ba
  %i.em = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6models4PostEECsjAVdN2kNoZZ_17show_posts_step_1(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #25
  br label %.body

bb.bm:                                            ; preds = %.body
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsjAVdN2kNoZZ_17show_posts_step_1(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 5 uses
  %i.e = load i64, ptr %1, align 8, !range !78, !noundef !12
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !329
  store i64 0, ptr %i.d, align 8, !alias.scope !334, !noalias !329
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !334, !noalias !329
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !334, !noalias !329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !337
  store i8 0, ptr %i.b, align 1, !noalias !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !337
  store i64 0, ptr %i.a, align 8, !noalias !337
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !337
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !337
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.k, align 8, !noalias !337
  invoke void @_RNvXs3_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtCskz3n0RVv2OU_29getting_started_step_1_sqlite6schema5posts5tableEINtNtB7_13select_clause12SelectClauseINtNtNtB9_10expression9select_by8SelectByNtNtB21_6models4PostNtNtNtB9_6sqlite7backend6SqliteEENtNtB7_15distinct_clause16NoDistinctClauseINtNtB7_12where_clause11WhereClauseINtNtB3K_7grouped7GroupedINtNtB3K_9operators2EqNtNtB1X_7columns9publishedINtNtB3K_5bound5BoundNtNtB9_9sql_types4BoolbEEEENtNtB7_12order_clause13NoOrderClauseINtNtB7_19limit_offset_clause17LimitOffsetClauseINtNtB7_12limit_clause11LimitClauseIB7C_NtB7Y_6BigIntxEENtNtB7_13offset_clause14NoOffsetClauseEEINtB7_13QueryFragmentB4E_E8walk_astCsjAVdN2kNoZZ_17show_posts_step_1(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.h, !noalias !343

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !337
  %i.l = load i64, ptr %i.c, align 8, !range !209, !noalias !329, !noundef !12 ; 3 uses
  %.not.i = icmp eq i64 %i.l, -1
  br i1 %.not.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2, i64 24, i1 false), !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !329
  %.val3.i = load i64, ptr %i.d, align 8, !noalias !329 ; 2 uses
  %i.m = icmp eq i64 %.val3.i, 0
  br i1 %i.m, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val4.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !329, !nonnull !12, !noundef !12
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %.val3.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !345
  br label %bb.k

bb.g:                                             ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.n

bb.h:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.d, align 8, !noalias !329 ; 2 uses
  %i.o = icmp eq i64 %.val.i, 0
  br i1 %i.o, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val2.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !329, !nonnull !12, !noundef !12
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !348
  br label %bb.g

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !344
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.j
  %storemerge = phi i64 [ -1, %bb.j ], [ %i.l, %bb.e ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !329
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsjAVdN2kNoZZ_17show_posts_step_1(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = mul i64 %1, 56                           ; 6 uses
  %or.cond.not = icmp ugt i64 %1, 164703072086692425
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.c = mul nuw i64 %.0.val, 56                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = icmp uge i64 %i.a, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #26
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.e, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp eq ptr %.pn8, null
  br i1 %i.h, label %bb.e, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.i, align 8
  br label %bb.f

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.k, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjAVdN2kNoZZ_17show_posts_step_1(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !4
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  br i1 %2, label %bb.g, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #26
  br label %bb.h

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn12 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn12, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn12, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtBW_6sqlite7backend6SqliteENtNtNtB27_10connection4stmt9StatementEE14insert_no_growCsjAVdN2kNoZZ_17show_posts_step_1(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !12 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !351
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !354

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !12 ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !355

bb.b:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val72.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !351
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !356

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [56 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXCs4dGG1v6Lohn_11downcast_rsNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_8Downcast10as_any_mutCsjAVdN2kNoZZ_17show_posts_step_1(ptr noalias noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @10, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXCs4dGG1v6Lohn_11downcast_rsNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_8Downcast11into_any_rcCsjAVdN2kNoZZ_17show_posts_step_1(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @10, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXCs4dGG1v6Lohn_11downcast_rsNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_8Downcast6as_anyCsjAVdN2kNoZZ_17show_posts_step_1(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @10, 1
  ret { ptr, ptr } %i.b
}
end_hunk_0
