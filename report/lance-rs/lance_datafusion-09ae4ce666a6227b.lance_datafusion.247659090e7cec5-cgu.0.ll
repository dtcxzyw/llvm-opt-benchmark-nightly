Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_RNvMNtCsf6gb3FOA7sv_14datafusion_sql5queryINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE8order_byB17_:bb.a
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.cj)
          to label %bb.af unwind label %bb.ae, !noalias !82244 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.sroa.7.0..sroa_idx148.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx148.i, align 8, !noalias !82272
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !82272
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !82272
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !82272
  %i.cl = icmp eq ptr %.sroa.4.022.i.i.pn.i.i.i.i.i.i.i.i.i, %.sroa.4.0.copyload
  br i1 %i.cl, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %.lr.ph556

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i: ; preds = %.lr.ph556
  %i.cm = icmp eq i64 %i.co, %i.bn
  br i1 %i.cm, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %.lr.ph556

.lr.ph556:                                        ; preds = %bb.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i555 = phi i64 [ %i.co, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i ], [ 0, %bb.v ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [128 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.0.0.i.i.i.i.i555
  %i.co = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i555, 1 ; 4 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.cn) #74
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i unwind label %bb.w, !noalias !82273, !inline_history !4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortECsc85D0lJ81Z_16lance_datafusion.exit7.i.i.i.i.i: ; preds = %.lr.ph558
  %i.cp = add i64 %.sroa.0.1.i.i.i.i.i557, 1      ; 2 uses
  %i.cq = icmp eq i64 %i.cp, %i.bn
  br i1 %i.cq, label %.body.i.i.i.i, label %.lr.ph558

bb.w:                                             ; preds = %.lr.ph556
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = icmp eq i64 %i.co, %i.bn
  br i1 %i.cs, label %.body.i.i.i.i, label %.lr.ph558

.lr.ph558:                                        ; preds = %bb.w, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortECsc85D0lJ81Z_16lance_datafusion.exit7.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i557 = phi i64 [ %i.cp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortECsc85D0lJ81Z_16lance_datafusion.exit7.i.i.i.i.i ], [ %i.co, %bb.w ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [128 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.0.1.i.i.i.i.i557
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.ct) #74
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortECsc85D0lJ81Z_16lance_datafusion.exit7.i.i.i.i.i unwind label %bb.x, !noalias !82273, !inline_history !4

bb.x:                                             ; preds = %.lr.ph558
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !82273, !inline_history !5
  unreachable

.body.i.i.i.i:                                    ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortECsc85D0lJ81Z_16lance_datafusion.exit7.i.i.i.i.i, %bb.w
  %i.cv = icmp eq i64 %.sroa.015.0.copyload, 0
  br i1 %i.cv, label %.body115.thread.i, label %bb.y

bb.y:                                             ; preds = %.body.i.i.i.i
  %i.cw = shl nuw i64 %.sroa.015.0.copyload, 7
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.cw, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !82273, !inline_history !342
  br label %.body115.thread.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i, %bb.v
  %i.cx = icmp eq i64 %.sroa.015.0.copyload, 0
  br i1 %i.cx, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  %i.cy = shl nuw i64 %.sroa.015.0.copyload, 7
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !82273, !inline_history !342
  br label %bb.ac

bb.aa:                                            ; preds = %bb.ab
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !82271
  unreachable

bb.ab:                                            ; preds = %.body.i.i.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.body115.thread.i unwind label %bb.aa, !noalias !82271

.body115.i:                                       ; preds = %bb.fu, %bb.ad
  %i.da = trunc nuw i8 %.sroa.057.2.i to i1
  br i1 %i.da, label %.body115.thread.i, label %.body.thread.thread

bb.ac:                                            ; preds = %bb.z, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !82245
  br label %bb.fs

bb.ad:                                            ; preds = %.body119.i, %bb.ae
  %.sroa.055.0.i = phi i8 [ %.sroa.055.1.i, %bb.ae ], [ %.sroa.055.2.i, %.body119.i ]
  %.sroa.057.2.i = phi i8 [ %.sroa.057.3.i, %bb.ae ], [ %.sroa.057.4.i, %.body119.i ]
  %.pn108.i = phi { ptr, i32 } [ %i.dc, %bb.ae ], [ %.pn106.i, %.body119.i ] ; 2 uses
  %i.db = trunc nuw i8 %.sroa.055.0.i to i1
  br i1 %i.db, label %bb.fu, label %.body115.i

bb.ae:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.fb, %bb.dq, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.thread.i
  %.sroa.055.1.i = phi i8 [ 1, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ], [ 0, %bb.dq ], [ %.sroa.055.6.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i ], [ 0, %bb.fb ], [ 1, %.thread.i ]
  %.sroa.057.3.i = phi i8 [ 1, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ], [ %.sroa.057.6.i, %bb.dq ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i ], [ 0, %bb.fb ], [ 1, %.thread.i ]
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.af:                                            ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !82244
  %i.dd = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.df = load i8, ptr %i.de, align 8, !range !327, !noalias !82274, !noundef !315
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, !prof !321

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i.i: ; preds = %bb.af
  %.pre.i.i.i = load i64, ptr %i.dd, align 8, !noalias !82275
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !82275
  br label %bb.ag

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %bb.af
  %i.dh = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc.i unwind label %bb.ae, !noalias !82244 ; 2 uses

.noexc.i:                                         ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.di = extractvalue { i64, i64 } %i.dh, 0
  %i.dj = extractvalue { i64, i64 } %i.dh, 1      ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !noalias !82276
  store i8 1, ptr %i.de, align 8, !noalias !82276
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i.i
  %.pre-phi488.i = phi i64 [ %.pre1.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i.i ], [ %i.dj, %.noexc.i ]
  %i.dl = phi i64 [ %.pre.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i.i.i ], [ %i.di, %.noexc.i ] ; 2 uses
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.dd, align 8, !noalias !82275
  store i64 0, ptr %i.ae, align 8, !noalias !82244
  %.sroa.4167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4167.0..sroa_idx.i, align 8, !noalias !82244
  %.sroa.5168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.5168.0..sroa_idx.i, align 8, !noalias !82244
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @26, i64 32, i1 false), !noalias !82244
  %.sroa.7169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  store i64 %i.dl, ptr %.sroa.7169.0..sroa_idx.i, align 8, !noalias !82244
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  store i64 %.pre-phi488.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !82244
  call void @llvm.experimental.noalias.scope.decl(metadata !82277)
  call void @llvm.experimental.noalias.scope.decl(metadata !82278)
  %i.dn = icmp eq ptr %.sroa.4.0.copyload, %.sroa.4.022.i.i.pn.i.i.i.i.i.i.i.i.i
  br i1 %i.dn, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvMs_NtNtBN_12logical_plan7builderNtB4k_18LogicalPlanBuilder15sort_with_limitBJ_INtNtCs40k4W9msRzi_5alloc3vec3VecBJ_EE0E0B2Q_ECsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag
  %.sroa.426.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.528.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 4 uses
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !82278, !noalias !82279 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 7 uses
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 7 uses
  %.sroa.711.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.812.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.du = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 9 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.dk, %.lr.ph.i.i
  %i.ek = phi ptr [ %.sroa.4.0.copyload, %.lr.ph.i.i ], [ %i.el, %bb.dk ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !82280
  invoke void @_RNvMsJ_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB5_4Expr11column_refs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.ek)
          to label %.noexc118.i unwind label %.loopexit.i, !noalias !82244

.noexc118.i:                                      ; preds = %bb.ah
  %.sroa.025.0.copyload.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !82280, !nonnull !315, !noundef !315 ; 4 uses
  %.sroa.426.0.copyload.i.i.i.i = load i64, ptr %.sroa.426.0..sroa_idx.i.i.i.i, align 8, !noalias !82280 ; 4 uses
  %.sroa.528.0.copyload.i.i.i.i = load i64, ptr %.sroa.528.0..sroa_idx.i.i.i.i, align 8, !noalias !82280 ; 2 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.025.0.copyload.i.i.i.i, align 16, !noalias !82281
  %i.em = icmp eq i64 %.sroa.426.0.copyload.i.i.i.i, 0 ; 3 uses
  br i1 %i.em, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %.noexc118.i
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %.sroa.426.0.copyload.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i)
  %i.en = shl i64 %.sroa.426.0.copyload.i.i.i.i, 3
  %i.eo = and i64 %i.en, -16                      ; 2 uses
  %3 = add i64 %i.eo, 16                          ; 2 uses
  %i.ep = add nsw i64 %.sroa.426.0.copyload.i.i.i.i, 17
  %i.eq = add i64 %i.ep, %3                       ; 3 uses
  %4 = icmp uge i64 %i.eq, %3
  call void @llvm.assume(i1 %4)
  %5 = icmp ult i64 %i.eq, 9223372036854775793
  call void @llvm.assume(i1 %5)
  %i.er = sub nuw nsw i64 -16, %i.eo
  %i.es = getelementptr inbounds i8, ptr %.sroa.025.0.copyload.i.i.i.i, i64 %i.er
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i: ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %.noexc118.i
  %.sroa.514.0.i.i.i.i.i.i = phi ptr [ undef, %.noexc118.i ], [ %i.es, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.413.0.i.i.i.i.i.i = phi i64 [ undef, %.noexc118.i ], [ %i.eq, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i ] ; 4 uses
  %.sink.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc118.i ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82282)
  call void @llvm.experimental.noalias.scope.decl(metadata !82283)
  call void @llvm.experimental.noalias.scope.decl(metadata !82284)
  call void @llvm.experimental.noalias.scope.decl(metadata !82285)
  call void @llvm.experimental.noalias.scope.decl(metadata !82286)
  call void @llvm.experimental.noalias.scope.decl(metadata !82287)
  call void @llvm.experimental.noalias.scope.decl(metadata !82288)
  call void @llvm.experimental.noalias.scope.decl(metadata !82289)
  %i.et = icmp eq i64 %.sroa.528.0.copyload.i.i.i.i, 0
  br i1 %i.et, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  %i.eu = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ev = bitcast <16 x i1> %i.eu to i16
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.025.0.copyload.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i) ]
  br label %bb.ai

bb.ai:                                            ; preds = %_RNCINvXss_NtCsfKiFC1ztrmh_9hashbrown3setINtB8_8IntoIterRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCs7KEmJBkOrAg_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa32.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa31.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvXss_NtCsfKiFC1ztrmh_9hashbrown3setINtB8_8IntoIterRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCs7KEmJBkOrAg_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa1329.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.025.0.copyload.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1328.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvXss_NtCsfKiFC1ztrmh_9hashbrown3setINtB8_8IntoIterRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCs7KEmJBkOrAg_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ex = phi i16 [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fj, %_RNCINvXss_NtCsfKiFC1ztrmh_9hashbrown3setINtB8_8IntoIterRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCs7KEmJBkOrAg_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ey = phi i64 [ %.sroa.528.0.copyload.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fm, %_RNCINvXss_NtCsfKiFC1ztrmh_9hashbrown3setINtB8_8IntoIterRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCs7KEmJBkOrAg_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ex, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ez = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa32.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ] ; 2 uses
  %i.fa = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1329.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ez, align 16, !noalias !82290
  %i.fb = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.fc = getelementptr inbounds i8, ptr %i.fa, i64 -128 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.fb to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.al, %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.dh, %bb.de, %bb.dc, %bb.cs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %bb.aj
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.wc, %bb.de ], [ %i.wa, %bb.dc ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dh ], [ %i.fe, %bb.aj ], [ %eh.lpad-body65.i.i, %bb.cs ], [ %eh.lpad-body65.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %i.ff = icmp eq i64 %.sroa.413.0.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.em, %i.ff
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %.body119.i, label %bb.ak

bb.ak:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i.i) #71, !noalias !82291
  br label %.body119.i

._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai
  %.lcssa31.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa32.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa1328.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa1329.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ex, %bb.ai ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fg = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.fh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.fi = zext nneg i16 %i.fh to i64
  %i.fj = and i16 %i.fg, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fk = sub nsw i64 0, %i.fi
  %i.fl = getelementptr inbounds [8 x i8], ptr %.lcssa1328.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.fk
  %i.fm = add i64 %i.ey, -1                       ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 -8
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !82292, !nonnull !315, !align !324, !noundef !315 ; 2 uses
  %i.fp = invoke noundef zeroext i1 @_RNvMNtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB2_8DFSchema10has_column(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fo)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !82293

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fp, label %_RNCINvXss_NtCsfKiFC1ztrmh_9hashbrown3setINtB8_8IntoIterRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCs7KEmJBkOrAg_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !82294
  invoke fastcc void @_RNvXs7_NtCs2bHstFFhpHt_17datafusion_common6columnNtB5_6ColumnNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(104) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fo)
          to label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion.exit62.i.i unwind label %bb.aj, !noalias !82293

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion.exit62.i.i: ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !82295)
  call void @llvm.experimental.noalias.scope.decl(metadata !82296)
  call void @llvm.experimental.noalias.scope.decl(metadata !82297)
  call void @llvm.experimental.noalias.scope.decl(metadata !82298)
  call void @llvm.experimental.noalias.scope.decl(metadata !82299)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.7169.0..sroa_idx.i, align 8, !alias.scope !82300, !noalias !82301, !noundef !315 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !82300, !noalias !82301, !noundef !315 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82302)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !82303
  %i.fq = xor i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8317987319222330741
  %i.fr = xor i64 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7237128888997146477 ; 3 uses
  %i.fs = xor i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7816392313619706465
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.711.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82304, !noalias !82303
  store i64 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.812.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82304, !noalias !82303
  call void @llvm.experimental.noalias.scope.decl(metadata !82305)
  %i.ft = load i64, ptr %i.i, align 8, !range !318, !alias.scope !82306, !noalias !82307, !noundef !315
  %i.fu = icmp ne i64 %i.ft, -1                   ; 2 uses
  %i.fv = zext i1 %i.fu to i64                    ; 2 uses
  store i64 8, ptr %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82308, !noalias !82309
  %i.fw = xor i64 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fv
  %i.fx = xor i64 %i.fw, 8387220255154660723      ; 3 uses
  %i.fy = add i64 %i.fr, %i.fq                    ; 3 uses
  %i.fz = add i64 %i.fx, %i.fs                    ; 2 uses
  %i.ga = call noundef i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 13)
  %i.gb = xor i64 %i.ga, %i.fy                    ; 3 uses
  %i.gc = call noundef i64 @llvm.fshl.i64(i64 %i.fx, i64 %i.fx, i64 16)
  %i.gd = xor i64 %i.fz, %i.gc                    ; 3 uses
  %i.ge = call noundef i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 32)
  %i.gf = add i64 %i.fz, %i.gb                    ; 3 uses
  %i.gg = add i64 %i.gd, %i.ge                    ; 2 uses
  %i.gh = call noundef i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 17)
  %i.gi = xor i64 %i.gf, %i.gh
  %i.gj = call noundef i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 21)
  %i.gk = xor i64 %i.gj, %i.gg
  %i.gl = call noundef i64 @llvm.fshl.i64(i64 %i.gf, i64 %i.gf, i64 32)
  %i.gm = xor i64 %i.gg, %i.fv
  store i64 %i.gk, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82308, !noalias !82309
  store i64 %i.gi, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82310, !noalias !82309
  store i64 %i.gl, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82310, !noalias !82309
  store i64 %i.gm, ptr %i.g, align 8, !alias.scope !82308, !noalias !82309
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i8 0, i64 16, i1 false), !noalias !82311
  br i1 %i.fu, label %bb.am, label %.thread.i.i

.thread.i.i:                                      ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion.exit62.i.i
  %i.gn = load ptr, ptr %i.dq, align 8, !alias.scope !82306, !noalias !82307, !nonnull !315, !noundef !315
  %i.go = load i64, ptr %i.dr, align 8, !alias.scope !82306, !noalias !82307, !noundef !315 ; 2 uses
  %i.gp = add i64 %i.go, 8
  br label %bb.at

bb.am:                                            ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion.exit62.i.i
  call fastcc void @_RINvXsi_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g), !noalias !82293
  %.pre.i.i = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82312, !noalias !82313
  %.pre298.i.i = load i64, ptr %i.ea, align 8, !alias.scope !82312, !noalias !82313 ; 4 uses
  %i.gq = load ptr, ptr %i.dq, align 8, !alias.scope !82306, !noalias !82307, !nonnull !315, !noundef !315 ; 5 uses
  %i.gr = load i64, ptr %i.dr, align 8, !alias.scope !82306, !noalias !82307, !noundef !315 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82312)
  call void @llvm.experimental.noalias.scope.decl(metadata !82314)
  %i.gs = add i64 %i.gr, %.pre.i.i                ; 3 uses
  %i.gt = icmp eq i64 %.pre298.i.i, 0
  br i1 %i.gt, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gu = sub i64 8, %.pre298.i.i                 ; 3 uses
  %.sroa.0.0.i.i8.i.i = call noundef i64 @llvm.umin.i64(i64 %i.gu, i64 range(i64 0, -9223372036854775808) %i.gr) ; 3 uses
  %i.gv = icmp samesign ugt i64 %.sroa.0.0.i.i8.i.i, 3
  br i1 %i.gv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.sroa.014.0.copyload.i.i.i.i = load i32, ptr %i.gq, align 1, !alias.scope !82315, !noalias !82316
  %i.gw = zext i32 %.sroa.014.0.copyload.i.i.i.i to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sroa.03.0.i.i.i.i = phi i64 [ 4, %bb.ao ], [ 0, %bb.an ] ; 5 uses
  %.sroa.0.0.i10.i.i.i = phi i64 [ %i.gw, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %i.gx = or disjoint i64 %.sroa.03.0.i.i.i.i, 1
  %i.gy = icmp samesign ult i64 %i.gx, %.sroa.0.0.i.i8.i.i
  br i1 %i.gy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gz = getelementptr i8, ptr %i.gq, i64 %.sroa.03.0.i.i.i.i
  %.sroa.015.0.copyload.i.i32.i.i = load i16, ptr %i.gz, align 1, !alias.scope !82315, !noalias !82316
  %i.ha = zext i16 %.sroa.015.0.copyload.i.i32.i.i to i64
  %i.hb = shl nuw nsw i64 %.sroa.03.0.i.i.i.i, 3
  %i.hc = shl nuw nsw i64 %i.ha, %i.hb
  %i.hd = or i64 %i.hc, %.sroa.0.0.i10.i.i.i
  %i.he = or disjoint i64 %.sroa.03.0.i.i.i.i, 2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.03.1.i.i9.i.i = phi i64 [ %i.he, %bb.aq ], [ %.sroa.03.0.i.i.i.i, %bb.ap ] ; 3 uses
  %.sroa.0.1.i.i10.i.i = phi i64 [ %i.hd, %bb.aq ], [ %.sroa.0.0.i10.i.i.i, %bb.ap ] ; 2 uses
  %i.hf = icmp samesign ult i64 %.sroa.03.1.i.i9.i.i, %.sroa.0.0.i.i8.i.i
  br i1 %i.hf, label %bb.as, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i11.i.i

bb.as:                                            ; preds = %bb.ar
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.sroa.03.1.i.i9.i.i
  %i.hh = load i8, ptr %i.hg, align 1, !alias.scope !82315, !noalias !82316, !noundef !315
  %i.hi = zext i8 %i.hh to i64
  %i.hj = shl nuw nsw i64 %.sroa.03.1.i.i9.i.i, 3
  %i.hk = shl nuw nsw i64 %i.hi, %i.hj
  %i.hl = or i64 %i.hk, %.sroa.0.1.i.i10.i.i
  br label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i11.i.i

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i11.i.i: ; preds = %bb.as, %bb.ar
  %.sroa.0.2.i.i12.i.i = phi i64 [ %i.hl, %bb.as ], [ %.sroa.0.1.i.i10.i.i, %bb.ar ]
  %i.hm = shl i64 %.pre298.i.i, 3
  %i.hn = and i64 %i.hm, 56
  %i.ho = shl i64 %.sroa.0.2.i.i12.i.i, %i.hn
  %i.hp = load i64, ptr %i.ds, align 8, !alias.scope !82312, !noalias !82313, !noundef !315
  %i.hq = or i64 %i.hp, %i.ho                     ; 3 uses
  %i.hr = icmp ult i64 %i.gr, %i.gu
  %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre466.pre474.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !82317 ; 4 uses
  br i1 %i.hr, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.au, %bb.am, %.thread.i.i
  %i.hs = phi i64 [ %i.gs, %bb.am ], [ %i.gs, %bb.au ], [ %i.gp, %.thread.i.i ] ; 2 uses
  %i.ht = phi i64 [ %i.gr, %bb.am ], [ %i.gr, %bb.au ], [ %i.go, %.thread.i.i ] ; 2 uses
  %i.hu = phi ptr [ %i.gq, %bb.am ], [ %i.gq, %bb.au ], [ %i.gn, %.thread.i.i ] ; 4 uses
  %.sroa.0.0.i13.i.i = phi i64 [ 0, %bb.am ], [ %i.gu, %bb.au ], [ 0, %.thread.i.i ] ; 4 uses
  %i.hv = sub nsw i64 %i.ht, %.sroa.0.0.i13.i.i   ; 2 uses
  %i.hw = and i64 %i.hv, 7                        ; 5 uses
  %i.hx = and i64 %i.hv, -8                       ; 2 uses
  %i.hy = icmp ult i64 %.sroa.0.0.i13.i.i, %i.hx
  br i1 %i.hy, label %.lr.ph.i24.i.i, label %bb.aw

.lr.ph.i24.i.i:                                   ; preds = %bb.at
  %.promoted.i25.i.i = load i64, ptr %i.g, align 8, !alias.scope !82312, !noalias !82313
  %.promoted20.i26.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82312, !noalias !82313
  %.promoted21.i27.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82318, !noalias !82313
  %.promoted23.i28.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82318, !noalias !82313
  br label %bb.bb

bb.au:                                            ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i11.i.i
  %i.hz = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82312, !noalias !82313, !noundef !315
  %i.ia = xor i64 %i.hz, %i.hq                    ; 3 uses
  %i.ib = load i64, ptr %i.g, align 8, !alias.scope !82319, !noalias !82313, !noundef !315
  %i.ic = add i64 %i.ib, %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre466.pre474.pre.i ; 3 uses
  %i.id = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82319, !noalias !82313, !noundef !315
  %i.ie = add i64 %i.id, %i.ia                    ; 2 uses
  %i.if = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre466.pre474.pre.i, i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre466.pre474.pre.i, i64 13)
  %i.ig = xor i64 %i.ic, %i.if                    ; 3 uses
  %i.ih = call noundef i64 @llvm.fshl.i64(i64 %i.ia, i64 %i.ia, i64 16)
  %i.ii = xor i64 %i.ie, %i.ih                    ; 3 uses
  %i.ij = call noundef i64 @llvm.fshl.i64(i64 %i.ic, i64 %i.ic, i64 32)
  %i.ik = add i64 %i.ie, %i.ig                    ; 3 uses
  %i.il = add i64 %i.ii, %i.ij                    ; 2 uses
  %i.im = call noundef i64 @llvm.fshl.i64(i64 %i.ig, i64 %i.ig, i64 17)
  %i.in = xor i64 %i.ik, %i.im
  store i64 %i.in, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82319, !noalias !82313
  %i.io = call noundef i64 @llvm.fshl.i64(i64 %i.ii, i64 %i.ii, i64 21)
  %i.ip = xor i64 %i.io, %i.il
  store i64 %i.ip, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82319, !noalias !82313
  %i.iq = call noundef i64 @llvm.fshl.i64(i64 %i.ik, i64 %i.ik, i64 32)
  store i64 %i.iq, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82319, !noalias !82313
  %i.ir = xor i64 %i.il, %i.hq
  store i64 %i.ir, ptr %i.g, align 8, !alias.scope !82312, !noalias !82313
  br label %bb.at

bb.av:                                            ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i11.i.i
  %i.is = add i64 %i.gr, %.pre298.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre462.pre470.pre.i = load i64, ptr %i.g, align 8, !noalias !82317
  %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre464.pre472.pre.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !82317
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre468.pre476.pre.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !82317
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion.exit33.i.i

._crit_edge.i31.i.i:                              ; preds = %bb.bb
  store i64 %i.kg, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !82312, !noalias !82313
end_hunk_0
begin_hunk_1_@_RNvMNtCsf6gb3FOA7sv_14datafusion_sql5queryINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE8order_byB17_:bb.a
  %.val.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !82391, !noalias !82350 ; 2 uses
  %i.ul = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ul, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCIB2_BV_TBV_uEuNCINvXs8_NtCs7KEmJBkOrAg_8indexmap3setINtB2I_8IndexSetBV_EINtNtNtB8_6traits7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_6filter6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBU_ENCNCINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB64_18LogicalPlanBuilder15sort_with_limitNtNtB68_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB7G_EE00EEE0NCINvNvNtNtB3A_8iterator8Iterator8for_each4callB2s_NCINvXsb_NtB2K_3mapINtB9F_8IndexMapBV_uEIB3w_B2s_E6extendINtB4_3MapB4c_B2z_EE0E0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit7.i.i.i
  %.val2.i.i.i = load ptr, ptr %i.ej, align 8, !alias.scope !82391, !noalias !82350, !nonnull !315, !noundef !315
  %i.um = shl nuw i64 %.val.i.i.i, 5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %i.um, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !82293
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCIB2_BV_TBV_uEuNCINvXs8_NtCs7KEmJBkOrAg_8indexmap3setINtB2I_8IndexSetBV_EINtNtNtB8_6traits7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_6filter6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBU_ENCNCINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB64_18LogicalPlanBuilder15sort_with_limitNtNtB68_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB7G_EE00EEE0NCINvNvNtNtB3A_8iterator8Iterator8for_each4callB2s_NCINvXsb_NtB2K_3mapINtB9F_8IndexMapBV_uEIB3w_B2s_E6extendINtB4_3MapB4c_B2z_EE0E0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.us.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i.i.us.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.us.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.us-phi7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.un = phi i64 [ %i.nx, %.lr.ph.i.i.i.us.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sz, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.uo = phi ptr [ @276, %.lr.ph.i.i.i.us.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ @276, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ @709, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.un, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.uo) #72
          to label %.cont.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !82329

.cont.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.cu:                                            ; preds = %bb.bz, %.split11.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.up = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bz ], [ %i.st, %.split11.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sy, %bb.bz ], [ %.us-phi12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split11.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.uq = load i64, ptr %.sroa.5168.0..sroa_idx.i, align 8, !alias.scope !82325, !noalias !82326, !noundef !315 ; 2 uses
  %i.ur = icmp ult i64 %i.uq, 82351536043346213
  call void @llvm.assume(i1 %i.ur)
  call void @llvm.experimental.noalias.scope.decl(metadata !82392)
  %i.us = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ut = and i8 %i.up, 1
  %i.uu = zext nneg i8 %i.ut to i64
  %i.uv = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -16
  %i.uw = and i64 %i.uv, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.oc, ptr %i.us, align 1, !noalias !82344
  %i.ux = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.uw
  %i.uy = getelementptr i8, ptr %i.ux, i64 16
  store i8 %i.oc, ptr %i.uy, align 1, !noalias !82344
  %i.uz = load <2 x i64>, ptr %i.dp, align 8, !alias.scope !82393, !noalias !82326
  %i.va = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.uu, i64 0
  %i.vb = sub <2 x i64> %i.uz, %i.va
  store <2 x i64> %i.vb, ptr %i.dp, align 8, !alias.scope !82393, !noalias !82326
  %i.vc = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vd = getelementptr inbounds [8 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.vc
  %i.ve = getelementptr inbounds i8, ptr %i.vd, i64 -8
  store i64 %i.uq, ptr %i.ve, align 8, !noalias !82344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !82394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false), !noalias !82395
  call void @llvm.experimental.noalias.scope.decl(metadata !82396)
  %i.vf = load i64, ptr %.sroa.5168.0..sroa_idx.i, align 8, !alias.scope !82397, !noalias !82398, !noundef !315 ; 10 uses
  %i.vg = icmp ult i64 %i.vf, 82351536043346213
  call void @llvm.assume(i1 %i.vg)
  %i.vh = load i64, ptr %i.ae, align 8, !range !322, !alias.scope !82397, !noalias !82398, !noundef !315
  %i.vi = icmp eq i64 %i.vf, %i.vh
  br i1 %i.vi, label %bb.cv, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.experimental.noalias.scope.decl(metadata !82399)
  %i.vj = load i64, ptr %i.do, align 8, !alias.scope !82400, !noalias !82398, !noundef !315
  %i.vk = load i64, ptr %i.dp, align 8, !alias.scope !82400, !noalias !82398, !noundef !315
  %i.vl = add i64 %i.vk, %i.vj                    ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.vl, i64 82351536043346212) ; 4 uses
  %i.vm = sub nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.vf
  %i.vn = icmp ugt i64 %i.vm, 1
  br i1 %i.vn, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.da, %bb.cy, %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !82401)
  call void @llvm.experimental.noalias.scope.decl(metadata !82402)
  call void @llvm.experimental.noalias.scope.decl(metadata !82403)
  %i.vo = add nuw nsw i64 %i.vf, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !82404
  %.val12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4167.0..sroa_idx.i, align 8, !alias.scope !82405, !noalias !82398
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, i64 %i.vf, ptr %.val12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.vo, i64 noundef 8, i64 noundef range(i64 24, 113) 112), !noalias !82406
  %i.vp = load i64, ptr %i.d, align 8, !range !326, !noalias !82404, !noundef !315
  %i.vq = trunc nuw i64 %i.vp to i1
  br i1 %i.vq, label %bb.cx, label %_RNvMs_NtCs7KEmJBkOrAg_8indexmap5innerINtB4_4CoreNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuE15reserve_entriesCsc85D0lJ81Z_16lance_datafusion.exit.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.vr = load i64, ptr %i.dx, align 8, !range !323, !noalias !82404, !noundef !315
  %i.vs = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.vt = load i64, ptr %i.vs, align 8, !noalias !82404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !82404
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.vr, i64 %i.vt) #72
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.de, !noalias !82407

_RNvMs_NtCs7KEmJBkOrAg_8indexmap5innerINtB4_4CoreNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuE15reserve_entriesCsc85D0lJ81Z_16lance_datafusion.exit.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cw
  %i.vu = load ptr, ptr %i.dx, align 8, !noalias !82404, !nonnull !315, !noundef !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !82404
  store ptr %i.vu, ptr %.sroa.4167.0..sroa_idx.i, align 8, !alias.scope !82405, !noalias !82398
  store i64 %i.vo, ptr %i.ae, align 8, !alias.scope !82400, !noalias !82398
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cx
  unreachable

bb.cy:                                            ; preds = %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !82408)
  call void @llvm.experimental.noalias.scope.decl(metadata !82409)
  %i.vv = icmp ult i64 %i.vl, %i.vf
  br i1 %i.vv, label %bb.cw, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !82410
  %.val12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4167.0..sroa_idx.i, align 8, !alias.scope !82411, !noalias !82398
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.vf, ptr %.val12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef range(i64 24, 113) 112), !noalias !82412
  %i.vw = load i64, ptr %i.c, align 8, !range !326, !noalias !82410, !noundef !315
  %i.vx = trunc nuw i64 %i.vw to i1
  br i1 %i.vx, label %bb.da, label %_RNvMs_NtCs7KEmJBkOrAg_8indexmap5innerINtB4_4CoreNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuE15reserve_entriesCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !82410
  br label %bb.cw

_RNvMs_NtCs7KEmJBkOrAg_8indexmap5innerINtB4_4CoreNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuE15reserve_entriesCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cz
  %i.vy = load ptr, ptr %i.dv, align 8, !noalias !82410, !nonnull !315, !noundef !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !82410
  store ptr %i.vy, ptr %.sroa.4167.0..sroa_idx.i, align 8, !alias.scope !82411, !noalias !82398
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ae, align 8, !alias.scope !82400, !noalias !82398
  %i.vz = icmp eq i64 %i.vf, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !82413
  store i64 %i.nv, ptr %i.dw, align 8, !noalias !82413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false), !noalias !82414
  br i1 %i.vz, label %bb.db, label %bb.dg

bb.db:                                            ; preds = %_RNvMs_NtCs7KEmJBkOrAg_8indexmap5innerINtB4_4CoreNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuE15reserve_entriesCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtCs7KEmJBkOrAg_8indexmap6BucketNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuEE8grow_oneCsjKU8FxcEP5M_20datafusion_optimizer(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae)
          to label %bb.dg unwind label %bb.dc, !noalias !82415

bb.dc:                                            ; preds = %bb.db
  %i.wa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e)
          to label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.dd, !noalias !82416

bb.dd:                                            ; preds = %bb.dc
  %i.wb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !82416
  unreachable

bb.de:                                            ; preds = %bb.cx
  %i.wc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f) #73
          to label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.df, !noalias !82417

bb.df:                                            ; preds = %bb.de
  %i.wd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !82417
  unreachable

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs7KEmJBkOrAg_8indexmap5innerINtB4_4CoreNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuE15reserve_entriesCsc85D0lJ81Z_16lance_datafusion.exit.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cu
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.f, %_RNvMs_NtCs7KEmJBkOrAg_8indexmap5innerINtB4_4CoreNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuE15reserve_entriesCsc85D0lJ81Z_16lance_datafusion.exit.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.h, %bb.cu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !82413
  store i64 %i.nv, ptr %i.dw, align 8, !noalias !82413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 8 dereferenceable(104) %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 104, i1 false), !noalias !82395
  br label %bb.dg

bb.dg:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.db, %_RNvMs_NtCs7KEmJBkOrAg_8indexmap5innerINtB4_4CoreNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuE15reserve_entriesCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.we = load ptr, ptr %.sroa.4167.0..sroa_idx.i, align 8, !alias.scope !82418, !noalias !82419, !nonnull !315, !noundef !315
  %i.wf = getelementptr inbounds nuw [112 x i8], ptr %i.we, i64 %i.vf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.wf, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !82416
  %i.wg = add nuw nsw i64 %i.vf, 1
  store i64 %i.wg, ptr %.sroa.5168.0..sroa_idx.i, align 8, !alias.scope !82418, !noalias !82419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !82413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !82394
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCIB2_BV_TBV_uEuNCINvXs8_NtCs7KEmJBkOrAg_8indexmap3setINtB2I_8IndexSetBV_EINtNtNtB8_6traits7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_6filter6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBU_ENCNCINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB64_18LogicalPlanBuilder15sort_with_limitNtNtB68_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB7G_EE00EEE0NCINvNvNtNtB3A_8iterator8Iterator8for_each4callB2s_NCINvXsb_NtB2K_3mapINtB9F_8IndexMapBV_uEIB3w_B2s_E6extendINtB4_3MapB4c_B2z_EE0E0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.bd
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dh:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.h) #73
          to label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.di, !noalias !82420

bb.di:                                            ; preds = %bb.dh
  %i.wh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !82420
  unreachable

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCIB2_BV_TBV_uEuNCINvXs8_NtCs7KEmJBkOrAg_8indexmap3setINtB2I_8IndexSetBV_EINtNtNtB8_6traits7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_6filter6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBU_ENCNCINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB64_18LogicalPlanBuilder15sort_with_limitNtNtB68_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB7G_EE00EEE0NCINvNvNtNtB3A_8iterator8Iterator8for_each4callB2s_NCINvXsb_NtB2K_3mapINtB9F_8IndexMapBV_uEIB3w_B2s_E6extendINtB4_3MapB4c_B2z_EE0E0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dg, %bb.ct, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !82322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !82294
  br label %_RNCINvXss_NtCsfKiFC1ztrmh_9hashbrown3setINtB8_8IntoIterRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCs7KEmJBkOrAg_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvXss_NtCsfKiFC1ztrmh_9hashbrown3setINtB8_8IntoIterRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCs7KEmJBkOrAg_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCIB2_BV_TBV_uEuNCINvXs8_NtCs7KEmJBkOrAg_8indexmap3setINtB2I_8IndexSetBV_EINtNtNtB8_6traits7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_6filter6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBU_ENCNCINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB64_18LogicalPlanBuilder15sort_with_limitNtNtB68_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB7G_EE00EEE0NCINvNvNtNtB3A_8iterator8Iterator8for_each4callB2s_NCINvXsb_NtB2K_3mapINtB9F_8IndexMapBV_uEIB3w_B2s_E6extendINtB4_3MapB4c_B2z_EE0E0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wi = icmp eq i64 %i.fm, 0
  br i1 %i.wi, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_RNCINvXss_NtCsfKiFC1ztrmh_9hashbrown3setINtB8_8IntoIterRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCs7KEmJBkOrAg_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapRNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  %i.wj = icmp eq i64 %.sroa.413.0.i.i.i.i.i.i, 0
  %or.cond7.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.em, %i.wj
  br i1 %or.cond7.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i.i) #71, !noalias !82421
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !82280
  %i.wk = icmp eq ptr %i.el, %.sroa.4.022.i.i.pn.i.i.i.i.i.i.i.i.i
  br i1 %i.wk, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvMs_NtNtBN_12logical_plan7builderNtB4k_18LogicalPlanBuilder15sort_with_limitBJ_INtNtCs40k4W9msRzi_5alloc3vec3VecBJ_EE0E0B2Q_ECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.ah

.body119.i:                                       ; preds = %.thread203.i, %bb.fk, %.body.i.i, %bb.fd, %.body.i, %.thread236.i, %bb.dx, %.loopexit.split-lp.i, %.loopexit.i, %bb.ak, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.055.2.i = phi i8 [ 0, %.thread236.i ], [ %.sroa.055.4207.i, %.thread203.i ], [ 1, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %bb.ak ], [ 1, %bb.dx ], [ 0, %bb.fd ], [ %.sroa.055.6.i, %bb.fk ], [ %.sroa.055.6.i, %.body.i.i ], [ 0, %.body.i ], [ 1, %.loopexit.i ], [ %.sroa.055.3.ph.i, %.loopexit.split-lp.i ]
  %.sroa.057.4.i = phi i8 [ 0, %.thread236.i ], [ 0, %.thread203.i ], [ 1, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %bb.ak ], [ 1, %bb.dx ], [ 0, %bb.fd ], [ 0, %bb.fk ], [ 0, %.body.i.i ], [ 0, %.body.i ], [ 1, %.loopexit.i ], [ %.sroa.057.5.ph.i, %.loopexit.split-lp.i ]
  %.pn106.i = phi { ptr, i32 } [ %i.yp, %.thread236.i ], [ %.pn103208.i, %.thread203.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak ], [ %i.xv, %bb.dx ], [ %i.zc, %bb.fd ], [ %i.zu, %bb.fk ], [ %i.zu, %.body.i.i ], [ %i.ze, %.body.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs7KEmJBkOrAg_8indexmap3set8IndexSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %i.ae) #73
          to label %bb.ad unwind label %bb.fe, !noalias !82244

.loopexit.i:                                      ; preds = %bb.ah
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body119.i

.loopexit.split-lp.i:                             ; preds = %bb.do, %bb.dl, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvMs_NtNtBN_12logical_plan7builderNtB4k_18LogicalPlanBuilder15sort_with_limitBJ_INtNtCs40k4W9msRzi_5alloc3vec3VecBJ_EE0E0B2Q_ECsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %.sroa.055.3.ph.i = phi i8 [ 1, %bb.dl ], [ 0, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvMs_NtNtBN_12logical_plan7builderNtB4k_18LogicalPlanBuilder15sort_with_limitBJ_INtNtCs40k4W9msRzi_5alloc3vec3VecBJ_EE0E0B2Q_ECsc85D0lJ81Z_16lance_datafusion.exit.thread.i ], [ 0, %bb.do ]
  %.sroa.057.5.ph.i = phi i8 [ 1, %bb.dl ], [ 1, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvMs_NtNtBN_12logical_plan7builderNtB4k_18LogicalPlanBuilder15sort_with_limitBJ_INtNtCs40k4W9msRzi_5alloc3vec3VecBJ_EE0E0B2Q_ECsc85D0lJ81Z_16lance_datafusion.exit.thread.i ], [ 0, %bb.do ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body119.i

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvMs_NtNtBN_12logical_plan7builderNtB4k_18LogicalPlanBuilder15sort_with_limitBJ_INtNtCs40k4W9msRzi_5alloc3vec3VecBJ_EE0E0B2Q_ECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.dk
  %.pre.i = load i64, ptr %i.do, align 8, !noalias !82244
  %i.wl = icmp eq i64 %.pre.i, 0
  br i1 %i.wl, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvMs_NtNtBN_12logical_plan7builderNtB4k_18LogicalPlanBuilder15sort_with_limitBJ_INtNtCs40k4W9msRzi_5alloc3vec3VecBJ_EE0E0B2Q_ECsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.dl

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvMs_NtNtBN_12logical_plan7builderNtB4k_18LogicalPlanBuilder15sort_with_limitBJ_INtNtCs40k4W9msRzi_5alloc3vec3VecBJ_EE0E0B2Q_ECsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvMs_NtNtBN_12logical_plan7builderNtB4k_18LogicalPlanBuilder15sort_with_limitBJ_INtNtCs40k4W9msRzi_5alloc3vec3VecBJ_EE0E0B2Q_ECsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !82244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !82244
  %i.wm = load ptr, ptr %i.af, align 8, !noalias !82244, !nonnull !315, !noundef !315
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  invoke fastcc void @_RINvNtCs1Jc0oVeks7E_15datafusion_expr13expr_rewriter15normalize_sortsNtNtB4_4expr4SortINtNtCs40k4W9msRzi_5alloc3vec3VecB15_EECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ac, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.wn)
          to label %bb.dm unwind label %.loopexit.split-lp.i, !noalias !82244

bb.dl:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvMs_NtNtBN_12logical_plan7builderNtB4k_18LogicalPlanBuilder15sort_with_limitBJ_INtNtCs40k4W9msRzi_5alloc3vec3VecBJ_EE0E0B2Q_ECsc85D0lJ81Z_16lance_datafusion.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !82244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !82244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !82244
  %i.wo = load ptr, ptr %i.ck, align 8, !noalias !82244, !nonnull !315, !noundef !315
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  invoke void @_RNvMNtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB2_8DFSchema7columns(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.wp)
          to label %bb.dr unwind label %.loopexit.split-lp.i, !noalias !82244

bb.dm:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1t_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvMs_NtNtBN_12logical_plan7builderNtB4k_18LogicalPlanBuilder15sort_with_limitBJ_INtNtCs40k4W9msRzi_5alloc3vec3VecBJ_EE0E0B2Q_ECsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.wq = load i64, ptr %i.ac, align 8, !range !320, !noalias !82244, !noundef !315 ; 3 uses
  %.not105.i = icmp eq i64 %i.wq, -1
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.511.i.sroa.0.0.copyload17 = load i64, ptr %i.wr, align 8, !noalias !82244 ; 2 uses
  %.sroa.511.i.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.511.i.sroa.6.0.copyload20 = load ptr, ptr %.sroa.511.i.sroa.6.0..sroa_idx19, align 8, !noalias !82244 ; 2 uses
  %.sroa.511.i.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.511.i.sroa.7.0.copyload23 = load i64, ptr %.sroa.511.i.sroa.7.0..sroa_idx22, align 8, !noalias !82244 ; 2 uses
  br i1 %.not105.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.576.0.copyload.i = load i64, ptr %.sroa.576.0..sroa_idx.i, align 8, !noalias !82244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !82244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !82244
  br label %bb.dq

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !82244
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %.sroa.511.i.sroa.0.0.copyload17, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !82244
  %.sroa.511.i.sroa.6.0..sroa.68.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %.sroa.511.i.sroa.6.0.copyload20, ptr %.sroa.511.i.sroa.6.0..sroa.68.0..sroa_idx.i.sroa_idx, align 16, !noalias !82244
  %.sroa.511.i.sroa.7.0..sroa.68.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 %.sroa.511.i.sroa.7.0.copyload23, ptr %.sroa.511.i.sroa.7.0..sroa.68.0..sroa_idx.i.sroa_idx, align 8, !noalias !82244
  %i.ws = load ptr, ptr %i.af, align 8, !noalias !82244, !nonnull !315, !noundef !315
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 0, ptr %i.wt, align 8, !noalias !82244
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr %i.ws, ptr %.sroa.7.0..sroa_idx.i, align 16, !noalias !82244
  store i64 15, ptr %i.ad, align 16, !noalias !82244
  %i.wu = invoke { ptr, i1 } @_RNvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder3new(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(320) %i.ad)
          to label %bb.dp unwind label %.loopexit.split-lp.i, !noalias !82244 ; 2 uses

bb.dp:                                            ; preds = %bb.do
  %i.wv = extractvalue { ptr, i1 } %i.wu, 0
  %i.ww = extractvalue { ptr, i1 } %i.wu, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !82244
  %i.wx = ptrtoint ptr %i.wv to i64
  %.sroa.19.0.insert.ext12 = zext i1 %i.ww to i64
  %i.wy = inttoptr i64 %.sroa.19.0.insert.ext12 to ptr
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dn
  %.sroa.19.0 = phi ptr [ %i.wy, %bb.dp ], [ %.sroa.511.i.sroa.6.0.copyload20, %bb.dn ] ; 2 uses
  %.sroa.26.0 = phi i64 [ undef, %bb.dp ], [ %.sroa.576.0.copyload.i, %bb.dn ] ; 2 uses
  %.sroa.25.0 = phi i64 [ undef, %bb.dp ], [ %.sroa.511.i.sroa.7.0.copyload23, %bb.dn ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %i.wx, %bb.dp ], [ %.sroa.511.i.sroa.0.0.copyload17, %bb.dn ] ; 2 uses
  %.sroa.057.6.i = phi i8 [ 0, %bb.dp ], [ 1, %bb.dn ] ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs7KEmJBkOrAg_8indexmap3set8IndexSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %i.ae)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.ae, !noalias !82244

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !82244
  %i.wz = trunc nuw i8 %.sroa.057.6.i to i1
  br i1 %i.wz, label %bb.fs, label %bb.fw

bb.dr:                                            ; preds = %bb.dl
  %i.xa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.xb = load ptr, ptr %i.xa, align 8, !noalias !82244, !nonnull !315, !noundef !315 ; 5 uses
  %i.xc = load i64, ptr %i.z, align 8, !range !322, !noalias !82244, !noundef !315 ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.xe = load i64, ptr %i.xd, align 8, !noalias !82244, !noundef !315 ; 6 uses
  %i.xf = icmp ult i64 %i.xe, 88686269585142076
  call void @llvm.assume(i1 %i.xf)
  %.idx.i = mul nuw nsw i64 %i.xe, 104
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xb, i64 %.idx.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !82244
  store ptr %i.xb, ptr %i.aa, align 8, !noalias !82244
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.xb, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !82244
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.xc, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !82244
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.xg, ptr %.sroa.622.0..sroa_idx.i, align 8, !noalias !82244
  %i.xh = mul nuw nsw i64 %i.xe, 112              ; 4 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %i.xe, 82351536043346212
  br i1 %or.cond.i.i.i.i, label %bb.du, label %bb.ds, !prof !317

bb.ds:                                            ; preds = %bb.dr
  %i.xi = icmp eq i64 %i.xe, 0                    ; 3 uses
  br i1 %i.xi, label %._crit_edge.i.i.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !82422
  %i.xj = call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.xh, i64 noundef range(i64 1, 17) 16) #71, !noalias !82422 ; 3 uses
  %i.xk = icmp eq ptr %i.xj, null
  br i1 %i.xk, label %bb.du, label %.lr.ph.i.i.i.i.i.i.i

bb.du:                                            ; preds = %bb.dt, %bb.dr
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.xh, %bb.dt ], [ undef, %bb.dr ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 16, %bb.dt ], [ 0, %bb.dr ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #72
          to label %.noexc.i.i unwind label %bb.dx, !noalias !82423

.noexc.i.i:                                       ; preds = %bb.du
  unreachable

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.ds
  %i.xl = phi ptr [ inttoptr (i64 16 to ptr), %bb.ds ], [ %i.xj, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  %i.xm = phi i64 [ 0, %bb.ds ], [ %i.xt, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  %i.xn = icmp eq i64 %i.xc, 0
  br i1 %i.xn, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.xo = mul nuw i64 %i.xc, 104
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xb, i64 noundef %i.xo, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !82424
  br label %bb.dy

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.dt, %.lr.ph.i.i.i.i.i.i.i
  %i.xp = phi i64 [ %i.xt, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.dt ] ; 2 uses
  %i.xq = phi ptr [ %i.xr, %.lr.ph.i.i.i.i.i.i.i ], [ %i.xb, %bb.dt ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.xq, i64 104, i1 false), !noalias !82424
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 104 ; 2 uses
  %i.xs = getelementptr inbounds nuw [112 x i8], ptr %i.xj, i64 %i.xp ; 2 uses
  store i64 4, ptr %i.xs, align 16, !noalias !82425
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !82426
  %i.xt = add nuw nsw i64 %i.xp, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.xr, %i.xg
  br i1 %.not.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.dw:                                            ; preds = %bb.dx
  %i.xu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !82423
  unreachable

bb.dx:                                            ; preds = %bb.du
  %i.xv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.aa)
          to label %.body119.i unwind label %bb.dw, !noalias !82427

bb.dy:                                            ; preds = %bb.dv, %._crit_edge.i.i.i.i.i.i.i
  store i64 %i.xe, ptr %i.ab, align 8, !noalias !82428
  %.sroa.4188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.xl, ptr %.sroa.4188.0..sroa_idx.i, align 8, !noalias !82428
  %.sroa.5189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.xm, ptr %.sroa.5189.0..sroa_idx.i, align 8, !noalias !82428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !82244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !82244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !82244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !82244
end_hunk_1
begin_hunk_2_@_RNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE27try_process_group_by_unnestB18_:bb.a
  %i.je = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.je, label %bb.bv, label %_RNvMs1_NtCsJGrEYE2um7_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsJGrEYE2um7_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.bt
  %i.jf = shl i64 %.sroa.7.0.copyload, 3
  %i.jg = icmp slt i64 %.sroa.7.0.copyload, 2305843009213693950
  call void @llvm.assume(i1 %i.jg)
  %i.jh = and i64 %i.jf, -16                      ; 2 uses
  %i.ji = add i64 %i.jh, 16                       ; 2 uses
  %i.jj = add nsw i64 %.sroa.7.0.copyload, 17
  %i.jk = add i64 %i.jj, %i.ji                    ; 4 uses
  %i.jl = icmp uge i64 %i.jk, %i.ji
  %i.jm = icmp ult i64 %i.jk, 9223372036854775793
  call void @llvm.assume(i1 %i.jl)
  call void @llvm.assume(i1 %i.jm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.68.0.copyload) ]
  %i.jn = icmp eq i64 %i.jk, 0
  br i1 %i.jn, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_RNvMs1_NtCsJGrEYE2um7_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.jo = sub nuw nsw i64 -16, %i.jh
  %i.jp = getelementptr inbounds i8, ptr %.sroa.68.0.copyload, i64 %i.jo
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jp, i64 noundef %i.jk, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !84096
  br label %bb.bv

.thread112:                                       ; preds = %bb.du, %bb.bx, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtCs7KEmJBkOrAg_8indexmap6BucketNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_3VecNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEENtNtNtNtB2n_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread, %.noexc.i.i219, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.sroa.060.11.ph = phi i8 [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ], [ 0, %.noexc.i.i219 ], [ 1, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtCs7KEmJBkOrAg_8indexmap6BucketNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_3VecNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEENtNtNtNtB2n_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread ], [ 0, %bb.bx ], [ 0, %bb.du ]
  %.sroa.063.4.ph = phi i1 [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ], [ false, %.noexc.i.i219 ], [ true, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtCs7KEmJBkOrAg_8indexmap6BucketNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_3VecNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEENtNtNtNtB2n_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread ], [ true, %bb.bx ], [ false, %bb.du ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

.thread200:                                       ; preds = %bb.eh, %bb.ee
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread194

bb.bv:                                            ; preds = %bb.bu, %_RNvMs1_NtCsJGrEYE2um7_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload) ]
  %i.jq = icmp ult i64 %.sroa.57.0.copyload, 67818912035696881
  call void @llvm.assume(i1 %i.jq)
  %.idx497 = mul nuw nsw i64 %.sroa.57.0.copyload, 136
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.46.0.copyload, i64 %.idx497 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %.sroa.46.0.copyload, ptr %i.ao, align 8
  store i64 %.sroa.05.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  store ptr %i.jr, ptr %.sroa.44.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.015.sroa.5)
  %i.js = icmp eq i64 %.sroa.57.0.copyload, 0
  br i1 %i.js, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtCs7KEmJBkOrAg_8indexmap6BucketNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_3VecNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEENtNtNtNtB2n_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtCs7KEmJBkOrAg_8indexmap6BucketNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_3VecNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEENtNtNtNtB2n_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit

.body264.thread:                                  ; preds = %bb.fq, %.body264
  %.sroa.054.6 = phi i1 [ false, %.body264 ], [ true, %bb.fq ]
  %.pn125 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body264 ], [ %i.sd, %bb.fq ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs7KEmJBkOrAg_8indexmap3map4iter8IntoIterNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(32) %i.ao) #73
          to label %.thread87 unwind label %bb.br

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtCs7KEmJBkOrAg_8indexmap6BucketNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_3VecNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEENtNtNtNtB2n_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.bv, %bb.ft
  %i.jt = phi ptr [ %i.ju, %bb.ft ], [ %.sroa.46.0.copyload, %bb.bv ] ; 6 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 136 ; 6 uses
  %.sroa.018.0.copyload = load i64, ptr %i.jt, align 8, !noalias !84097 ; 2 uses
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 104
  %.sroa.723.0.copyload = load i64, ptr %.sroa.723.0..sroa_idx, align 8, !noalias !84097 ; 5 uses
  %.sroa.824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 112
  %.sroa.824.0.copyload = load ptr, ptr %.sroa.824.0..sroa_idx, align 8, !noalias !84097 ; 5 uses
  %.sroa.925.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 120
  %.sroa.925.0.copyload = load i64, ptr %.sroa.925.0..sroa_idx, align 8, !noalias !84097 ; 3 uses
  %.not121 = icmp eq i64 %.sroa.018.0.copyload, -2
  br i1 %.not121, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtCs7KEmJBkOrAg_8indexmap6BucketNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_3VecNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEENtNtNtNtB2n_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.bw

bb.bw:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtCs7KEmJBkOrAg_8indexmap6BucketNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_3VecNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEENtNtNtNtB2n_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.015.sroa.5, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.721.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 %.sroa.018.0.copyload, ptr %i.an, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.015.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.015.sroa.5, i64 96, i1 false)
  %.not124 = icmp eq i64 %.sroa.723.0.copyload, -1
  br i1 %.not124, label %bb.fo, label %bb.ff

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtCs7KEmJBkOrAg_8indexmap6BucketNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_3VecNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEENtNtNtNtB2n_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtCs7KEmJBkOrAg_8indexmap6BucketNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_3VecNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEENtNtNtNtB2n_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit, %bb.ft, %bb.bv
  %i.jv = phi ptr [ %.sroa.46.0.copyload, %bb.bv ], [ %i.ju, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtCs7KEmJBkOrAg_8indexmap6BucketNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_3VecNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEENtNtNtNtB2n_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit ], [ %i.jr, %bb.ft ]
  store ptr %i.jv, ptr %.sroa.23.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.015.sroa.5)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs7KEmJBkOrAg_8indexmap3map4iter8IntoIterNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(32) %i.ao)
          to label %bb.bx unwind label %.thread112

bb.bx:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtCs7KEmJBkOrAg_8indexmap6BucketNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_3VecNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEENtNtNtNtB2n_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.720)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.ah, ptr noundef nonnull align 16 dereferenceable(320) %i.ay, i64 320, i1 false)
  %i.jw = invoke { ptr, i1 } @_RNvXs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilderINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB7_4plan11LogicalPlanE4from(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.ah)
          to label %bb.by unwind label %.thread112

bb.by:                                            ; preds = %bb.bx
  %i.jx = extractvalue { ptr, i1 } %i.jw, 0       ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.as, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !84098)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !84099
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.814.i)
  %i.jy = cmpxchg ptr %i.jx, i64 1, i64 0 monotonic monotonic, align 8, !noalias !84100
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.jy, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.bz, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCsc85D0lJ81Z_16lance_datafusion.exit.thread.i

bb.bz:                                            ; preds = %bb.by
  fence acquire
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %.sroa.09.0.copyload10.i = load i64, ptr %i.jz, align 16, !noalias !84099 ; 2 uses
  %.sroa.611.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %.sroa.611.0.copyload13.i = load ptr, ptr %.sroa.611.0..sroa_idx12.i, align 8, !noalias !84099 ; 2 uses
  %.sroa.814.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.814.i, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.814.0..sroa_idx15.i, i64 304, i1 false), !noalias !84099
  %i.ka = icmp eq ptr %i.jx, inttoptr (i64 -1 to ptr)
  br i1 %i.ka, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kc = atomicrmw sub ptr %i.kb, i64 1 release, align 8, !noalias !84100
  %i.kd = icmp eq i64 %i.kc, 1
  br i1 %i.kd, label %bb.cb, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCsc85D0lJ81Z_16lance_datafusion.exit.i

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jx, i64 noundef 336, i64 noundef 16) #71, !noalias !84100
  br label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCsc85D0lJ81Z_16lance_datafusion.exit.i

.body.i221:                                       ; preds = %bb.cf
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.cb, %bb.ca, %bb.bz
  %i.ke = icmp eq i64 %.sroa.09.0.copyload10.i, -1
  br i1 %i.ke, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.ch

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.by
  %.sroa.611.029.i = phi ptr [ %.sroa.611.0.copyload13.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCsc85D0lJ81Z_16lance_datafusion.exit.i ], [ %i.jx, %bb.by ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.611.029.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !84099
  store ptr %.sroa.611.029.i, ptr %i.r, align 8, !noalias !84101
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.611.029.i, i64 16
  invoke fastcc void @_RNvXsK_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(320) %i.t, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.kf)
          to label %bb.ce unwind label %bb.cc, !noalias !84099

bb.cc:                                            ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.kg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kh = atomicrmw sub ptr %.sroa.611.029.i, i64 1 release, align 8, !noalias !84102
  %i.ki = icmp eq i64 %i.kh, 1
  br i1 %i.ki, label %bb.cd, label %.body.thread.i

bb.cd:                                            ; preds = %bb.cc
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %.body.thread.i unwind label %bb.cg, !noalias !84101

bb.ce:                                            ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.kj = atomicrmw sub ptr %.sroa.611.029.i, i64 1 release, align 8, !noalias !84103
  %i.kk = icmp eq i64 %i.kj, 1
  br i1 %i.kk, label %bb.cf, label %_RNCNvMsB_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Csc85D0lJ81Z_16lance_datafusion.exit.i

bb.cf:                                            ; preds = %bb.ce
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_RNCNvMsB_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Csc85D0lJ81Z_16lance_datafusion.exit.i unwind label %.body.i221, !noalias !84099

bb.cg:                                            ; preds = %bb.cd
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !84101
  unreachable

_RNCNvMsB_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Csc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !84099
  br label %bb.ci

bb.ch:                                            ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCsc85D0lJ81Z_16lance_datafusion.exit.i
  store i64 %.sroa.09.0.copyload10.i, ptr %i.t, align 16, !noalias !84099
  store ptr %.sroa.611.0.copyload13.i, ptr %.sroa.611.0..sroa_idx.i, align 8, !noalias !84099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.814.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.814.i, i64 304, i1 false), !noalias !84099
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_RNCNvMsB_NtCs40k4W9msRzi_5alloc4syncINtB7_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Csc85D0lJ81Z_16lance_datafusion.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.i)
  %.sroa.07.0.copyload.i = load ptr, ptr %i.ag, align 8, !alias.scope !84098, !noalias !84104, !nonnull !315, !noundef !315 ; 6 uses
  %.sroa.4.0.copyload.i218 = load i64, ptr %.sroa.4.0..sroa_idx.i217, align 8, !alias.scope !84098, !noalias !84104 ; 4 uses
  %.sroa.58.0.copyload.i = load i64, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !84098, !noalias !84104 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !84105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.q, ptr noundef nonnull readonly align 16 dereferenceable(320) %i.t, i64 320, i1 false), !noalias !84106
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.07.0.copyload.i, align 16, !noalias !84107
  %i.km = icmp eq i64 %.sroa.4.0.copyload.i218, 0 ; 2 uses
  br i1 %i.km, label %bb.cj, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.ci
  %i.kn = mul i64 %.sroa.4.0.copyload.i218, 112   ; 2 uses
  %2 = add i64 %i.kn, 112                         ; 2 uses
  %3 = add i64 %.sroa.4.0.copyload.i218, 17
  %i.ko = add i64 %3, %2                          ; 3 uses
  %4 = icmp uge i64 %i.ko, %2
  call void @llvm.assume(i1 %4)
  %5 = icmp ult i64 %i.ko, 9223372036854775793
  call void @llvm.assume(i1 %5)
  %6 = sub i64 -112, %i.kn
  %i.kp = getelementptr inbounds i8, ptr %.sroa.07.0.copyload.i, i64 %6
  br label %bb.cj

bb.cj:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.ci
  %.sroa.511.0.i.i.i.i.i = phi ptr [ undef, %bb.ci ], [ %i.kp, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.410.0.i.i.i.i.i = phi i64 [ undef, %bb.ci ], [ %i.ko, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 3 uses
  %.sink.i.i.i.i.i.i = phi i64 [ 0, %bb.ci ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 16 ; 2 uses
  %i.kr = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.ks = getelementptr i8, ptr %.sroa.07.0.copyload.i, i64 %.sroa.4.0.copyload.i218
  %i.kt = getelementptr i8, ptr %i.ks, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !84105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !84105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !84108
  store i64 0, ptr %i.p, align 8, !noalias !84108
  store ptr inttoptr (i64 16 to ptr), ptr %i.cw, align 8, !noalias !84108
  store i64 0, ptr %i.cx, align 8, !noalias !84108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !84108
  store i64 %.sink.i.i.i.i.i.i, ptr %i.o, align 8, !noalias !84109
  store i64 %.sroa.410.0.i.i.i.i.i, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !84109
  store ptr %.sroa.511.0.i.i.i.i.i, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !84109
  store ptr %.sroa.07.0.copyload.i, ptr %.sroa.67.0..sroa_idx.i.i, align 8, !noalias !84109
  store ptr %i.kq, ptr %.sroa.78.0..sroa_idx.i.i, align 8, !noalias !84109
  store ptr %i.kt, ptr %.sroa.89.0..sroa_idx.i.i, align 8, !noalias !84109
  store <16 x i1> %i.kr, ptr %.sroa.910.0..sroa_idx.i.i, align 8, !noalias !84109
  store i64 %.sroa.58.0.copyload.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !84109
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.ku = icmp eq i64 %.sroa.58.0.copyload.i, 0
  br i1 %i.ku, label %.thread162.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cj
  %i.kv = bitcast <16 x i1> %i.kr to i16
  br label %bb.ck

.loopexit.i.i.i:                                  ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i326.i.i.i
  %lpad.loopexit94.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCINvNtNtB29_12logical_plan7builder7projectB25_INtB1c_7HashSetB25_EE0EECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %lpad.loopexit.split-lp95.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.ck:                                            ; preds = %bb.di, %.lr.ph.i.i.i
  %.lcssa101121.i.i.i = phi ptr [ %i.kq, %.lr.ph.i.i.i ], [ %.lcssa101120.i.i.i, %bb.di ] ; 2 uses
  %.lcssa102118.i.i.i = phi ptr [ %.sroa.07.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa102117.i.i.i, %bb.di ] ; 2 uses
  %i.kw = phi i16 [ %i.kv, %.lr.ph.i.i.i ], [ %i.lg, %bb.di ] ; 2 uses
  %i.kx = phi i64 [ %.sroa.58.0.copyload.i, %.lr.ph.i.i.i ], [ %i.lj, %bb.di ]
  call void @llvm.experimental.noalias.scope.decl(metadata !84110)
  call void @llvm.experimental.noalias.scope.decl(metadata !84111)
  call void @llvm.experimental.noalias.scope.decl(metadata !84112)
  call void @llvm.experimental.noalias.scope.decl(metadata !84113)
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.kw, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i
  store ptr %i.lc, ptr %.sroa.78.0..sroa_idx.i.i, align 8, !alias.scope !84114, !noalias !84115
  store ptr %i.lb, ptr %.sroa.67.0..sroa_idx.i.i, align 8, !alias.scope !84114, !noalias !84115
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ck, %.lr.ph.i.i.i.i.i.i.i
  %i.ky = phi ptr [ %i.lc, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa101121.i.i.i, %bb.ck ] ; 2 uses
  %i.kz = phi ptr [ %i.lb, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa102118.i.i.i, %bb.ck ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ky, align 16, !noalias !84116
  %i.la = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.lb = getelementptr inbounds i8, ptr %i.kz, i64 -1792 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.la to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.ck
  %.lcssa101120.i.i.i = phi ptr [ %i.lc, %._crit_edge.i.i.i.i.i.i.i ], [ %.lcssa101121.i.i.i, %bb.ck ]
  %.lcssa102117.i.i.i = phi ptr [ %i.lb, %._crit_edge.i.i.i.i.i.i.i ], [ %.lcssa102118.i.i.i, %bb.ck ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %i.kw, %bb.ck ] ; 3 uses
  %i.ld = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.le = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.lf = zext nneg i16 %i.le to i64
  %i.lg = and i16 %i.ld, %.lcssa.i.i.i.i.i.i.i    ; 6 uses
  %i.lh = sub nsw i64 0, %i.lf
  %i.li = getelementptr inbounds [112 x i8], ptr %.lcssa102117.i.i.i, i64 %i.lh ; 2 uses
  %i.lj = add i64 %i.kx, -1                       ; 9 uses
  %i.lk = getelementptr inbounds i8, ptr %i.li, i64 -112
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.lk, align 16, !noalias !84117 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -2
  br i1 %.not.i.i.i.i.i, label %bb.cm, label %bb.dh

.body389.i.i.i:                                   ; preds = %bb.dq, %bb.cl
  %.pn268.i.i.i = phi { ptr, i32 } [ %i.oj, %bb.dq ], [ %i.ll, %bb.cl ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCINvNtNtB29_12logical_plan7builder7projectB25_INtB1c_7HashSetB25_EE0EECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(64) %i.o) #73
          to label %.thread.i.i.i unwind label %bb.cw, !noalias !84118

bb.cl:                                            ; preds = %bb.dl, %bb.dh
  %i.ll = landingpad { ptr, i32 }
          cleanup
  store i16 %i.lg, ptr %.sroa.910.0..sroa_idx.i.i, align 8, !alias.scope !84114, !noalias !84115
  store i64 %i.lj, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !84119, !noalias !84115
  br label %.body389.i.i.i

.thread162.i.i.i:                                 ; preds = %bb.di, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEE13drop_elementsCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i

bb.cm:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !84120)
  call void @llvm.experimental.noalias.scope.decl(metadata !84121)
  call void @llvm.experimental.noalias.scope.decl(metadata !84122)
  call void @llvm.experimental.noalias.scope.decl(metadata !84123)
  call void @llvm.experimental.noalias.scope.decl(metadata !84124)
  call void @llvm.experimental.noalias.scope.decl(metadata !84125)
  call void @llvm.experimental.noalias.scope.decl(metadata !84126)
  %i.lm = icmp eq i64 %i.lj, 0
  br i1 %i.lm, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEE13drop_elementsCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.cm, %.noexc.i.i.i
  %i.ln = phi i16 [ %i.mc, %.noexc.i.i.i ], [ %i.lg, %bb.cm ] ; 2 uses
  %i.lo = phi i64 [ %i.ma, %.noexc.i.i.i ], [ %i.lj, %bb.cm ]
  call void @llvm.experimental.noalias.scope.decl(metadata !84127)
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ln, 0
  %.promoted.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.67.0..sroa_idx.i.i, align 8, !alias.scope !84128, !noalias !84108 ; 2 uses
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i
  %.promoted14.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.78.0..sroa_idx.i.i, align 8, !alias.scope !84128, !noalias !84108
  br label %bb.cn

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.cn
  store ptr %i.lt, ptr %.sroa.78.0..sroa_idx.i.i, align 8, !alias.scope !84128, !noalias !84108
  store ptr %i.ls, ptr %.sroa.67.0..sroa_idx.i.i, align 8, !alias.scope !84128, !noalias !84108
  br label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %bb.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.lp = phi ptr [ %.promoted14.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lt, %bb.cn ] ; 2 uses
  %i.lq = phi ptr [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ls, %bb.cn ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.lp, align 16, !noalias !84129
  %i.lr = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ls = getelementptr inbounds i8, ptr %i.lq, i64 -1792 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.lr to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.cn, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.lu = phi ptr [ %i.ls, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ln, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.lw = zext nneg i16 %i.lv to i64
  %i.lx = sub nsw i64 0, %i.lw
  %i.ly = getelementptr inbounds [112 x i8], ptr %i.lu, i64 %i.lx
  %i.lz = getelementptr inbounds i8, ptr %i.ly, i64 -112
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.lz)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !84118

.noexc.i.i.i:                                     ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i
  %i.ma = add i64 %i.lo, -1                       ; 2 uses
  %i.mb = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.mc = and i16 %i.mb, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ma, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEE13drop_elementsCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEE13drop_elementsCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i, %bb.cm, %.thread162.i.i.i
  %i.md = icmp eq i64 %.sroa.410.0.i.i.i.i.i, 0
  %or.cond.i.i = or i1 %i.km, %i.md
  br i1 %or.cond.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCINvNtNtB29_12logical_plan7builder7projectB25_INtB1c_7HashSetB25_EE0EECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %bb.co

bb.co:                                            ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEE13drop_elementsCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.511.0.i.i.i.i.i, i64 noundef %.sroa.410.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i) #71, !noalias !84130
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCINvNtNtB29_12logical_plan7builder7projectB25_INtB1c_7HashSetB25_EE0EECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCINvNtNtB29_12logical_plan7builder7projectB25_INtB1c_7HashSetB25_EE0EECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %bb.co, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExpruEE13drop_elementsCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !84108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !84108
  %i.me = load ptr, ptr %i.cw, align 8, !noalias !84108, !nonnull !315, !noundef !315 ; 2 uses
  %i.mf = load i64, ptr %i.cx, align 8, !noalias !84108, !noundef !315
  %i.mg = getelementptr inbounds nuw [112 x i8], ptr %i.me, i64 %i.mf
  invoke fastcc void @_RINvNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builder21validate_unique_namesINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtB6_4expr4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.i, ptr noundef nonnull %i.me, ptr noundef %i.mg)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i

bb.cp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCINvNtNtB29_12logical_plan7builder7projectB25_INtB1c_7HashSetB25_EE0EECsc85D0lJ81Z_16lance_datafusion.exit339.i.i.i, %bb.cy
  %.sroa.8.i.sroa.9.0 = phi i8 [ %.sroa.8.i.sroa.9.0.copyload, %bb.cy ], [ %.sroa.8.i.sroa.9.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCINvNtNtB29_12logical_plan7builder7projectB25_INtB1c_7HashSetB25_EE0EECsc85D0lJ81Z_16lance_datafusion.exit339.i.i.i ]
  %.sroa.8.i.sroa.8.0 = phi ptr [ %.sroa.8.i.sroa.8.0.copyload, %bb.cy ], [ %.sroa.8.i.sroa.8.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCINvNtNtB29_12logical_plan7builder7projectB25_INtB1c_7HashSetB25_EE0EECsc85D0lJ81Z_16lance_datafusion.exit339.i.i.i ]
  %.sroa.8.i.sroa.0.0 = phi i64 [ %i.my, %bb.cy ], [ %.sroa.8.i.sroa.0.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCINvNtNtB29_12logical_plan7builder7projectB25_INtB1c_7HashSetB25_EE0EECsc85D0lJ81Z_16lance_datafusion.exit339.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !84131)
  %i.mh = load ptr, ptr %i.cw, align 8, !alias.scope !84132, !noalias !84108, !nonnull !315, !noundef !315 ; 4 uses
  %i.mi = load i64, ptr %i.cx, align 8, !alias.scope !84132, !noalias !84108, !noundef !315 ; 4 uses
  %i.mj = icmp eq i64 %i.mi, 0
  br i1 %i.mj, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %.lr.ph905

bb.cq:                                            ; preds = %.lr.ph905
  %i.mk = icmp eq i64 %i.mm, %i.mi
  br i1 %i.mk, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %.lr.ph905

.lr.ph905:                                        ; preds = %bb.cp, %bb.cq
  %.sroa.0.0.i.i.i.i.i903 = phi i64 [ %i.mm, %bb.cq ], [ 0, %bb.cp ] ; 2 uses
end_hunk_2
