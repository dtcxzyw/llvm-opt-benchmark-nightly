Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_RINvNtNtCs1Jc0oVeks7E_15datafusion_expr13type_coercion9functions34value_fields_with_higher_order_udfuECsc85D0lJ81Z_16lance_datafusion:bb.a
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.o) #73
          to label %common.resume unwind label %bb.l, !noalias !27365

bb.e:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtCs1Jc0oVeks7E_15datafusion_expr13type_coercion9functions34value_fields_with_higher_order_udfuE0INtB7_5FnMutTRINtNtBX_21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEE8call_mutCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !27365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !27365
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27371
  %i.cl = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 17) 8) #71, !noalias !27371 ; 4 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #72
          to label %.noexc.i.i unwind label %bb.d, !noalias !27365

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !27365
  store i64 4, ptr %i.q, align 8, !noalias !27365
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.cl, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !27365
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !27365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !27365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !27365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27373)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !27374
  %i.cn = icmp eq ptr %i.cd, %i.ca
  br i1 %i.cn, label %.loopexit.i.i, label %.lr.ph.i.i.preheader.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %bb.g, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  %i.co = phi ptr [ %i.cz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i ], [ %i.cl, %bb.g ]
  %i.cp = phi i64 [ %i.db, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i ], [ 1, %bb.g ] ; 5 uses
  %.sroa.0.011.i.i.i.i = phi ptr [ %i.cr, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i ], [ %i.cd, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27376)
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.backedge.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i
  %i.cq = phi ptr [ %i.cr, %.backedge.i.i.i.i.i.i ], [ %.sroa.0.011.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !noalias !27377, !noundef !315 ; 2 uses
  %i.cs = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.cs, label %.critedge.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtCs1Jc0oVeks7E_15datafusion_expr13type_coercion9functions34value_fields_with_higher_order_udfuE0INtB7_5FnMutTRINtNtBX_21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEE8call_mutCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i
  store i8 -1, ptr %i.n, align 8, !alias.scope !27378, !noalias !27379
  br label %.backedge.i.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtCs1Jc0oVeks7E_15datafusion_expr13type_coercion9functions34value_fields_with_higher_order_udfuE0INtB7_5FnMutTRINtNtBX_21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEE8call_mutCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 40
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct)
          to label %.noexc6.i.i unwind label %bb.k, !noalias !27365

.noexc6.i.i:                                      ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtCs1Jc0oVeks7E_15datafusion_expr13type_coercion9functions34value_fields_with_higher_order_udfuE0INtB7_5FnMutTRINtNtBX_21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEE8call_mutCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load i8, ptr %i.n, align 8, !noalias !27374
  %i.cu = icmp eq i8 %.pr.i.i.i.i.i.i, -1
  br i1 %i.cu, label %.backedge.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEENCINvNtNtB1F_13type_coercion9functions34value_fields_with_higher_order_udfuE0ENtNtNtB9_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.noexc6.i.i, %.critedge.i.i.i.i.i.i
  %i.cv = icmp eq ptr %i.cr, %i.ca
  br i1 %i.cv, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEENCINvNtNtB1F_13type_coercion9functions34value_fields_with_higher_order_udfuE0ENtNtNtB9_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i: ; preds = %.noexc6.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !27374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !27374
  %i.cw = icmp samesign ult i64 %i.cp, 384307168202282326
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = load i64, ptr %i.q, align 8, !range !322, !alias.scope !27380, !noalias !27365, !noundef !315
  %i.cy = icmp eq i64 %i.cp, %i.cx
  br i1 %i.cy, label %bb.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEENCINvNtNtB1F_13type_coercion9functions34value_fields_with_higher_order_udfuE0ENtNtNtB9_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  %i.cz = phi ptr [ %.pre.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i ], [ %i.co, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEENCINvNtNtB1F_13type_coercion9functions34value_fields_with_higher_order_udfuE0ENtNtNtB9_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !27374
  %i.db = add nuw nsw i64 %i.cp, 1                ; 2 uses
  store i64 %i.db, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !27380, !noalias !27365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !27374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !27374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !27374
  %i.dc = icmp eq ptr %i.cr, %i.ca
  br i1 %i.dc, label %.loopexit.i.i, label %.lr.ph.i.i.preheader.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.m) #73
          to label %.body.i.i unwind label %bb.j, !noalias !27374

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEENCINvNtNtB1F_13type_coercion9functions34value_fields_with_higher_order_udfuE0ENtNtNtB9_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.cp, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i unwind label %bb.h, !noalias !27365

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i: ; preds = %bb.i
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !27380, !noalias !27365
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !27374
  unreachable

bb.k:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtCs1Jc0oVeks7E_15datafusion_expr13type_coercion9functions34value_fields_with_higher_order_udfuE0INtB7_5FnMutTRINtNtBX_21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEE8call_mutCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.df, %bb.k ], [ %i.dd, %bb.h ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.q) #73
          to label %common.resume unwind label %bb.l, !noalias !27365

.loopexit.i.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, %.backedge.i.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !27374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %.phi.trans.insert564.a = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.pre565.a = load ptr, ptr %.phi.trans.insert564.a, align 8
  %.phi.trans.insert566 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.pre567 = load i64, ptr %.phi.trans.insert566, align 8
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEINtB2_12SpecFromIterBU_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2f_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtBY_5field5FieldEuEENCINvNtNtB3E_13type_coercion9functions34value_fields_with_higher_order_udfuE0EE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

bb.l:                                             ; preds = %.body.i.i, %bb.d
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !27365
  unreachable

common.resume:                                    ; preds = %.body.i376, %bb.dp, %bb.ck, %.body.i.i342, %.body297, %.thread513, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit325, %bb.cd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit389, %bb.du, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit403, %bb.eb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit416, %bb.eh, %.body.i304, %bb.bv, %.body.i275, %bb.ba, %bb.d, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.kg, %bb.ck ], [ %i.ck, %bb.d ], [ %i.gm, %.body.i275 ], [ %i.id, %.body.i304 ], [ %i.oj, %bb.eh ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.gm, %bb.ba ], [ %i.id, %bb.bv ], [ %.pn247.pn.pn, %.body297 ], [ %.pn.pn.pn, %.thread513 ], [ %i.nv, %bb.eb ], [ %i.ni, %bb.du ], [ %i.jj, %bb.cd ], [ %i.jj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit325 ], [ %i.ni, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit389 ], [ %i.nv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit403 ], [ %i.oj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit416 ], [ %eh.lpad-body.i.i343, %.body.i.i342 ], [ %i.ms, %bb.dp ], [ %i.ms, %.body.i376 ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEINtB2_12SpecFromIterBU_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2f_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtBY_5field5FieldEuEENCINvNtNtB3E_13type_coercion9functions34value_fields_with_higher_order_udfuE0EE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %.loopexit13.i.i, %.loopexit.i.i
  %i.dh = phi i64 [ 0, %.loopexit13.i.i ], [ %.pre567, %.loopexit.i.i ] ; 5 uses
  %i.di = phi ptr [ inttoptr (i64 8 to ptr), %.loopexit13.i.i ], [ %.pre565.a, %.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !27365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  invoke void @_RNvMs9_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionNtB5_14HigherOrderUDF18coerce_value_types(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.di, i64 noundef %i.dh)
          to label %bb.v unwind label %bb.u

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27381)
  %i.dl = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.dm = icmp eq i64 %2, 0
  br i1 %i.dm, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27382
  %i.dn = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dl, i64 noundef range(i64 1, 17) 8) #71, !noalias !27382 ; 4 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.o, label %.lr.ph.preheader.i

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.dl) #72, !noalias !27383
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %i.ds, %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.dt, %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.dq, %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i ], [ %2, %.lr.ph.preheader.i ]
  %i.dq = add nsw i64 %.sroa.10.021.i, -1         ; 2 uses
  %i.dr = icmp eq ptr %.sroa.013.023.i, %i.dp
  br i1 %i.dr, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 8
  %i.dt = add nuw nsw i64 %.sroa.7.022.i, 1
  %.val12.i = load ptr, ptr %.sroa.013.023.i, align 8, !alias.scope !27381, !noalias !27384, !noundef !315 ; 3 uses
  %i.du = icmp eq ptr %.val12.i, null
  br i1 %i.du, label %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !27383
  %i.dw = icmp slt i64 %i.dv, 0
  br i1 %i.dw, label %bb.r, label %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.q, %bb.p
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.sroa.7.022.i
  store ptr %.val12.i, ptr %i.dx, align 8, !noalias !27383
  %i.dy = icmp eq i64 %i.dq, 0
  br i1 %i.dy, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %.lr.ph.i, %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.m
  %.sroa.5484.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.m ], [ %i.dn, %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i ], [ %i.dn, %.lr.ph.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.dz, align 8
  %.sroa.4487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5484.0, ptr %.sroa.4487.0..sroa_idx, align 8
  %.sroa.5488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5488.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bc

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !315 ; 2 uses
  store i64 %i.eb, ptr %i.bh, align 8
  %.not242 = icmp eq i64 %2, %i.eb
  br i1 %.not242, label %bb.bx, label %bb.ce

bb.t:                                             ; preds = %bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !315 ; 3 uses
  %i.ee = icmp sgt i64 %i.ed, -1
  tail call void @llvm.assume(i1 %i.ee)
  %.not = icmp eq i64 %2, %i.ed
  br i1 %.not, label %bb.cj, label %bb.ei

.body297:                                         ; preds = %bb.au, %.body, %.body.i292, %bb.bp, %bb.u, %.thread
  %.pn247.pn.pn = phi { ptr, i32 } [ %.pn247.pn497, %.thread ], [ %lpad.thr_comm.split-lp, %bb.au ], [ %i.ef, %bb.u ], [ %i.hp, %.body.i292 ], [ %i.hp, %bb.bp ], [ %.pn.i, %.body ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.bu) #73
          to label %common.resume unwind label %bb.bd

bb.u:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEINtB2_12SpecFromIterBU_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2f_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtBY_5field5FieldEuEENCINvNtNtB3E_13type_coercion9functions34value_fields_with_higher_order_udfuE0EE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body297

bb.v:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEINtB2_12SpecFromIterBU_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2f_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtBY_5field5FieldEuEENCINvNtNtB3E_13type_coercion9functions34value_fields_with_higher_order_udfuE0EE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit
  %i.eg = load i64, ptr %i.bs, align 8, !range !320, !noundef !315 ; 2 uses
  %.not245 = icmp eq i64 %i.eg, -1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false)
  br i1 %.not245, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %.sroa.542.0.copyload = load i64, ptr %.sroa.542.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.444.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.eg, ptr %0, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.542.0.copyload, ptr %.sroa.545.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit299

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !315 ; 7 uses
  %i.ek = icmp ult i64 %i.ej, 384307168202282326
  call void @llvm.assume(i1 %i.ek)
  %i.el = icmp ult i64 %i.dh, 384307168202282326
  call void @llvm.assume(i1 %i.el)
  %.not246.not = icmp eq i64 %i.ej, %i.dh
  br i1 %.not246.not, label %bb.y, label %bb.as

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.em = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !315, !noundef !315 ; 3 uses
  %i.eo = load i64, ptr %i.bt, align 8, !range !322, !noundef !315
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %i.dh
  store ptr %i.en, ptr %i.bi, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %i.eo, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.en, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.ep, ptr %i.es, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !27385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !27386
  store i64 -1, ptr %i.l, align 8, !noalias !27386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !27386
  call void @llvm.experimental.noalias.scope.decl(metadata !27387)
  call void @llvm.experimental.noalias.scope.decl(metadata !27388)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !27389
  store ptr %1, ptr %i.j, align 8, !alias.scope !27390, !noalias !27391
  %.sroa.4426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ca, ptr %.sroa.4426.0..sroa_idx, align 8, !alias.scope !27390, !noalias !27391
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.bi, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !27390, !noalias !27391
  %.sroa.4.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx7.i, align 8, !alias.scope !27390, !noalias !27392
  call void @llvm.experimental.noalias.scope.decl(metadata !27393)
  call void @llvm.experimental.noalias.scope.decl(metadata !27394)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !27395
  %i.et = invoke fastcc { i64, ptr } @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEENCINvNtNtB1I_13type_coercion9functions34value_fields_with_higher_order_udfuEs_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.noexc.i unwind label %bb.am, !noalias !27386 ; 2 uses

.noexc.i:                                         ; preds = %bb.y
  %i.eu = extractvalue { i64, ptr } %i.et, 0
  %i.ev = trunc nuw i64 %i.eu to i1
  br i1 %i.ev, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %.noexc.i
  store i64 0, ptr %i.k, align 8, !alias.scope !27396, !noalias !27397
  %i.ew = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ew, align 8, !alias.scope !27396, !noalias !27397
  %i.ex = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %i.ex, align 8, !alias.scope !27396, !noalias !27397
  br label %bb.an

bb.aa:                                            ; preds = %bb.ae
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not.i7.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i7.i.i.i.i.i, label %.body.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ez = atomicrmw sub ptr %i.fb, i64 1 release, align 8, !noalias !27398
  %i.fa = icmp eq i64 %i.ez, 1
  br i1 %i.fa, label %bb.ac, label %.body.i

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.body.i unwind label %bb.al, !noalias !27395

bb.ad:                                            ; preds = %.noexc.i
  %i.fb = extractvalue { i64, ptr } %i.et, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !27395
  store ptr %i.fb, ptr %i.h, align 8, !noalias !27395
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27399
  %i.fc = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 17) 8) #71, !noalias !27399 ; 4 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #72
          to label %.noexc8.i.i.i.i.i unwind label %bb.aa, !noalias !27395

.noexc8.i.i.i.i.i:                                ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  store ptr %i.fb, ptr %i.fc, align 8, !noalias !27395
  store i64 4, ptr %i.i, align 8, !noalias !27395
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.fc, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27395
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !27395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !27395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !27395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !27400
  call void @llvm.experimental.noalias.scope.decl(metadata !27401)
  call void @llvm.experimental.noalias.scope.decl(metadata !27402)
  %i.fe = invoke fastcc { i64, ptr } @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEENCINvNtNtB1I_13type_coercion9functions34value_fields_with_higher_order_udfuEs_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.noexc9.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !27395 ; 2 uses

.noexc9.i.i.i.i.i:                                ; preds = %bb.af
  %i.ff = extractvalue { i64, ptr } %i.fe, 0
  %i.fg = trunc nuw i64 %i.ff to i1
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB3u_3map3MapINtNtNtB3y_5slice4iter4IterBR_ENCINvNtNtBW_13type_coercion9functions34value_fields_with_higher_order_udfuEs_0EINtNtB3y_6result6ResultNtNtB3y_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEE11spec_extendCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc9.i.i.i.i.i, %.noexc10.i.i.i.i.i
  %i.fh = phi ptr [ %i.fo, %.noexc10.i.i.i.i.i ], [ %i.fc, %.noexc9.i.i.i.i.i ]
  %i.fi = phi i64 [ %i.fq, %.noexc10.i.i.i.i.i ], [ 1, %.noexc9.i.i.i.i.i ] ; 5 uses
  %i.fj = phi { i64, ptr } [ %i.fr, %.noexc10.i.i.i.i.i ], [ %i.fe, %.noexc9.i.i.i.i.i ]
  %i.fk = extractvalue { i64, ptr } %i.fj, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !27403
  store ptr %i.fk, ptr %i.f, align 8, !noalias !27403
  %i.fl = icmp samesign ult i64 %i.fi, 1152921504606846976
  call void @llvm.assume(i1 %i.fl)
  %i.fm = load i64, ptr %i.i, align 8, !range !322, !alias.scope !27404, !noalias !27405, !noundef !315
  %i.fn = icmp eq i64 %i.fi, %i.fm
  br i1 %i.fn, label %bb.aj, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.fo = phi ptr [ %.pre.i.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i.i ], [ %i.fh, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fi
  store ptr %i.fk, ptr %i.fp, align 8, !noalias !27403
  %i.fq = add nuw nsw i64 %i.fi, 1                ; 2 uses
  store i64 %i.fq, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !27404, !noalias !27405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !27403
  %i.fr = invoke fastcc { i64, ptr } @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEENCINvNtNtB1I_13type_coercion9functions34value_fields_with_higher_order_udfuEs_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.noexc10.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !27395 ; 2 uses

.noexc10.i.i.i.i.i:                               ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i
  %i.fs = extractvalue { i64, ptr } %i.fr, 0
  %i.ft = trunc nuw i64 %i.fs to i1
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB3u_3map3MapINtNtNtB3y_5slice4iter4IterBR_ENCINvNtNtBW_13type_coercion9functions34value_fields_with_higher_order_udfuEs_0EINtNtB3y_6result6ResultNtNtB3y_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEE11spec_extendCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i

bb.ag:                                            ; preds = %bb.aj
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not.i6.i.i.i.i.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i6.i.i.i.i.i.i.i, label %.body.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
end_hunk_0
begin_hunk_1_@_RINvNtNtCs1Jc0oVeks7E_15datafusion_expr13type_coercion9functions34value_fields_with_higher_order_udfuECsc85D0lJ81Z_16lance_datafusion:bb.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit284: ; preds = %bb.bj, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.experimental.noalias.scope.decl(metadata !27414)
  %.val.i285 = load i64, ptr %i.bq, align 8, !alias.scope !27414 ; 2 uses
  %i.hg = icmp eq i64 %.val.i285, 0
  br i1 %i.hg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit287, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit284
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.val1.i286 = load ptr, ptr %i.hh, align 8, !alias.scope !27414, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i286, i64 noundef %.val.i285, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !27414
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit287

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit287: ; preds = %bb.bk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false)
  store i64 6, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !27415)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.val.i288 = load ptr, ptr %i.hi, align 8, !alias.scope !27415, !nonnull !315, !noundef !315 ; 4 uses
  %i.hj = icmp eq i64 %i.ej, 0
  br i1 %i.hj, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i295, label %.lr.ph641.a

bb.bl:                                            ; preds = %.lr.ph641.a
  %i.hk = icmp eq i64 %i.hm, %i.ej
  br i1 %i.hk, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i295, label %.lr.ph641.a

.lr.ph641.a:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit287, %bb.bl
  %.sroa.0.0.i.i.i290640 = phi i64 [ %i.hm, %bb.bl ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit287 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %.val.i288, i64 %.sroa.0.0.i.i.i290640
  %i.hm = add nuw nsw i64 %.sroa.0.0.i.i.i290640, 1 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.hl)
          to label %bb.bl unwind label %bb.bn, !noalias !27415

bb.bm:                                            ; preds = %.lr.ph643
  %i.hn = add nuw nsw i64 %.sroa.0.1.i.i.i291642, 1 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, %i.ej
  br i1 %i.ho, label %.body.i292, label %.lr.ph643

bb.bn:                                            ; preds = %.lr.ph641.a
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = icmp eq i64 %i.hm, %i.ej
  br i1 %i.hq, label %.body.i292, label %.lr.ph643

.lr.ph643:                                        ; preds = %bb.bn, %bb.bm
  %.sroa.0.1.i.i.i291642 = phi i64 [ %i.hn, %bb.bm ], [ %i.hm, %bb.bn ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %.val.i288, i64 %.sroa.0.1.i.i.i291642
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.hr) #73
          to label %bb.bm unwind label %bb.bo, !noalias !27415

bb.bo:                                            ; preds = %.lr.ph643
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !27415
  unreachable

.body.i292:                                       ; preds = %bb.bm, %bb.bn
  %.val4.i293 = load i64, ptr %i.bt, align 8, !range !322, !alias.scope !27415, !noundef !315 ; 2 uses
  %i.ht = icmp eq i64 %.val4.i293, 0
  br i1 %i.ht, label %.body297, label %bb.bp

bb.bp:                                            ; preds = %.body.i292
  %i.hu = mul nuw i64 %.val4.i293, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i288, i64 noundef %i.hu, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !27415
  br label %.body297

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i295: ; preds = %bb.bl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit287
  %.val2.i296 = load i64, ptr %i.bt, align 8, !range !322, !alias.scope !27415, !noundef !315 ; 2 uses
  %i.hv = icmp eq i64 %.val2.i296, 0
  br i1 %i.hv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit299, label %bb.bq

bb.bq:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i295
  %i.hw = mul nuw i64 %.val2.i296, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i288, i64 noundef %i.hw, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !27415
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit299

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit299: ; preds = %bb.bq, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i295, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.experimental.noalias.scope.decl(metadata !27416)
  %.val.i300 = load ptr, ptr %i.dj, align 8, !alias.scope !27416, !nonnull !315, !noundef !315 ; 4 uses
  %.val1.i301 = load i64, ptr %i.dk, align 8, !alias.scope !27416, !noundef !315 ; 4 uses
  %i.hx = icmp eq i64 %.val1.i301, 0
  br i1 %i.hx, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i307, label %.lr.ph645

bb.br:                                            ; preds = %.lr.ph645
  %i.hy = icmp eq i64 %i.ia, %.val1.i301
  br i1 %i.hy, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i307, label %.lr.ph645

.lr.ph645:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit299, %bb.br
  %.sroa.0.0.i.i.i302644 = phi i64 [ %i.ia, %bb.br ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit299 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %.val.i300, i64 %.sroa.0.0.i.i.i302644
  %i.ia = add nuw nsw i64 %.sroa.0.0.i.i.i302644, 1 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.hz)
          to label %bb.br unwind label %bb.bt, !noalias !27416

bb.bs:                                            ; preds = %.lr.ph647
  %i.ib = add i64 %.sroa.0.1.i.i.i303646, 1       ; 2 uses
  %i.ic = icmp eq i64 %i.ib, %.val1.i301
  br i1 %i.ic, label %.body.i304, label %.lr.ph647

bb.bt:                                            ; preds = %.lr.ph645
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ie = icmp eq i64 %i.ia, %.val1.i301
  br i1 %i.ie, label %.body.i304, label %.lr.ph647

.lr.ph647:                                        ; preds = %bb.bt, %bb.bs
  %.sroa.0.1.i.i.i303646 = phi i64 [ %i.ib, %bb.bs ], [ %i.ia, %bb.bt ] ; 2 uses
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %.val.i300, i64 %.sroa.0.1.i.i.i303646
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.if) #73
          to label %bb.bs unwind label %bb.bu, !noalias !27416

bb.bu:                                            ; preds = %.lr.ph647
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !27416
  unreachable

.body.i304:                                       ; preds = %bb.bs, %bb.bt
  %.val4.i305 = load i64, ptr %i.bu, align 8, !range !322, !alias.scope !27416, !noundef !315 ; 2 uses
  %i.ih = icmp eq i64 %.val4.i305, 0
  br i1 %i.ih, label %common.resume, label %bb.bv

bb.bv:                                            ; preds = %.body.i304
  %i.ii = mul nuw i64 %.val4.i305, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i300, i64 noundef %i.ii, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !27416
  br label %common.resume

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i307: ; preds = %bb.br, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit299
  %.val2.i308 = load i64, ptr %i.bu, align 8, !range !322, !alias.scope !27416, !noundef !315 ; 2 uses
  %i.ij = icmp eq i64 %.val2.i308, 0
  br i1 %i.ij, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit309, label %bb.bw

bb.bw:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i307
  %i.ik = mul nuw i64 %.val2.i308, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i300, i64 noundef %i.ik, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !27416
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit309

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit309: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i307, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.bc

.thread:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit281, %bb.bf, %.thread501
  %.pn247.pn497 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread501 ], [ %i.hd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit281 ], [ %i.hd, %bb.bf ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.bt) #73
          to label %.body297 unwind label %bb.bd

bb.bx:                                            ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27417)
  %i.il = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.im = icmp eq i64 %2, 0
  br i1 %i.im, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit318, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27418
  %i.in = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.il, i64 noundef range(i64 1, 17) 8) #71, !noalias !27418 ; 4 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.bz, label %.lr.ph.preheader.i310

bb.bz:                                            ; preds = %bb.by
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.il) #72, !noalias !27419
  unreachable

.lr.ph.preheader.i310:                            ; preds = %bb.by
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  br label %.lr.ph.i311

.lr.ph.i311:                                      ; preds = %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i316, %.lr.ph.preheader.i310
  %.sroa.013.023.i312 = phi ptr [ %i.is, %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i316 ], [ %1, %.lr.ph.preheader.i310 ] ; 3 uses
  %.sroa.7.022.i313 = phi i64 [ %i.it, %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i316 ], [ 0, %.lr.ph.preheader.i310 ] ; 2 uses
  %.sroa.10.021.i314 = phi i64 [ %i.iq, %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i316 ], [ %2, %.lr.ph.preheader.i310 ]
  %i.iq = add nsw i64 %.sroa.10.021.i314, -1      ; 2 uses
  %i.ir = icmp eq ptr %.sroa.013.023.i312, %i.ip
  br i1 %i.ir, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit318, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i311
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i312, i64 8
  %i.it = add nuw nsw i64 %.sroa.7.022.i313, 1
  %.val12.i315 = load ptr, ptr %.sroa.013.023.i312, align 8, !alias.scope !27417, !noalias !27420, !noundef !315 ; 3 uses
  %i.iu = icmp eq ptr %.val12.i315, null
  br i1 %i.iu, label %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i316, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.iv = atomicrmw add ptr %.val12.i315, i64 1 monotonic, align 8, !noalias !27419
  %i.iw = icmp slt i64 %i.iv, 0
  br i1 %i.iw, label %bb.cc, label %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i316

bb.cc:                                            ; preds = %bb.cb
  tail call void @llvm.trap()
  unreachable

_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i316: ; preds = %bb.cb, %bb.ca
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %.sroa.7.022.i313
  store ptr %.val12.i315, ptr %i.ix, align 8, !noalias !27419
  %i.iy = icmp eq i64 %i.iq, 0
  br i1 %i.iy, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit318, label %.lr.ph.i311

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit318: ; preds = %.lr.ph.i311, %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i316, %bb.bx
  %.sroa.5490.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.bx ], [ %i.in, %_RNvXsx_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionINtB5_13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i316 ], [ %i.in, %.lr.ph.i311 ]
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.iz, align 8
  %.sroa.4493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5490.0, ptr %.sroa.4493.0..sroa_idx, align 8
  %.sroa.5494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5494.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.bc

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit325: ; preds = %bb.cg, %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !27421)
  %.val.i319 = load i64, ptr %i.bf, align 8, !alias.scope !27421 ; 2 uses
  %i.ja = icmp eq i64 %.val.i319, 0
  br i1 %i.ja, label %common.resume, label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit325
  %i.jb = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val1.i320 = load ptr, ptr %i.jb, align 8, !alias.scope !27421, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i320, i64 noundef %.val.i319, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !27421
  br label %common.resume

bb.ce:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.jc = tail call { ptr, i64 } @_RNvMs9_NtCs1Jc0oVeks7E_15datafusion_expr21higher_order_functionNtB5_14HigherOrderUDF4name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) ; 2 uses
  %i.jd = extractvalue { ptr, i64 } %i.jc, 0
  %i.je = extractvalue { ptr, i64 } %i.jc, 1
  store ptr %i.jd, ptr %i.be, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.je, ptr %i.jf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i64 %2, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store ptr %i.be, ptr %i.bc, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.477.0..sroa_idx, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bh, ptr %i.jg, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.481.0..sroa_idx, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %i.bd, ptr %i.jh, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.485.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bf, ptr noundef nonnull @239, ptr noundef nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 0, ptr %i.bb, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.489.0..sroa_idx, align 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 0, ptr %.sroa.590.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr %i.bf, ptr %i.ba, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.494.0..sroa_idx, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bb, ptr %i.ji, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.498.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bg, ptr noundef nonnull @184, ptr noundef nonnull %i.ba)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit322 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27422)
  %.val.i323 = load i64, ptr %i.bb, align 8, !alias.scope !27422 ; 2 uses
  %i.jk = icmp eq i64 %.val.i323, 0
  br i1 %i.jk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit325, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.val1.i324 = load ptr, ptr %.sroa.489.0..sroa_idx, align 8, !alias.scope !27422, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i324, i64 noundef %.val.i323, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !27422
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit325

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit322: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.experimental.noalias.scope.decl(metadata !27423)
  %.val.i326 = load i64, ptr %i.bb, align 8, !alias.scope !27423 ; 2 uses
  %i.jl = icmp eq i64 %.val.i326, 0
  br i1 %i.jl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit328, label %bb.ch

bb.ch:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit322
  %.val1.i327 = load ptr, ptr %.sroa.489.0..sroa_idx, align 8, !alias.scope !27423, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i327, i64 noundef %.val.i326, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !27423
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit328

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit328: ; preds = %bb.ch, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.experimental.noalias.scope.decl(metadata !27424)
  %.val.i329 = load i64, ptr %i.bf, align 8, !alias.scope !27424 ; 2 uses
  %i.jm = icmp eq i64 %.val.i329, 0
  br i1 %i.jm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit331, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit328
  %i.jn = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val1.i330 = load ptr, ptr %i.jn, align 8, !alias.scope !27424, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i330, i64 noundef %.val.i329, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !27424
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit331

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit331: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit328, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.28.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  store i64 6, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.bc

bb.cj:                                            ; preds = %bb.t
  %.idx = shl nuw nsw i64 %2, 3
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 5 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !nonnull !315, !noundef !315
  %.not543 = icmp eq i64 %2, 0
  br i1 %.not543, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27425
  br label %.loopexit13.i.i355

.lr.ph:                                           ; preds = %bb.cj, %bb.dt
  %.sroa.9.0542 = phi i64 [ %i.jr, %bb.dt ], [ 0, %bb.cj ] ; 4 uses
  %i.jr = add nuw nsw i64 %.sroa.9.0542, 1        ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.9.0542
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.sroa.9.0542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 %.sroa.9.0542, ptr %i.ar, align 8
  %i.ju = load ptr, ptr %i.js, align 8, !noundef !315
  %i.jv = icmp eq ptr %i.ju, null
  %i.jw = load i8, ptr %i.jt, align 1, !range !327, !noundef !315
  %i.jx = trunc nuw i8 %i.jw to i1                ; 2 uses
  br i1 %i.jv, label %bb.dr, label %bb.ds

.lr.ph.i.i.i.i333.preheader:                      ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27427)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27428
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27430)
  br label %.lr.ph.i.i.i.i333

.lr.ph.i.i.i.i333:                                ; preds = %.lr.ph.i.i.i.i333.preheader, %.backedge.i.i.i.i354
  %i.jy = phi ptr [ %i.jz, %.backedge.i.i.i.i354 ], [ %1, %.lr.ph.i.i.i.i333.preheader ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 4 uses
  %.val.i.i.i.i334 = load ptr, ptr %i.jy, align 8, !noalias !27431, !noundef !315 ; 2 uses
  %i.ka = icmp eq ptr %.val.i.i.i.i334, null
  br i1 %i.ka, label %.critedge.i.i.i.i356, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtCs1Jc0oVeks7E_15datafusion_expr13type_coercion9functions34value_fields_with_higher_order_udfuEs0_0INtB7_5FnMutTRINtNtBX_21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEE8call_mutCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i

.critedge.i.i.i.i356:                             ; preds = %.lr.ph.i.i.i.i333
  store i8 -1, ptr %i.d, align 8, !alias.scope !27432, !noalias !27433
  br label %.backedge.i.i.i.i354

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtCs1Jc0oVeks7E_15datafusion_expr13type_coercion9functions34value_fields_with_higher_order_udfuEs0_0INtB7_5FnMutTRINtNtBX_21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEE8call_mutCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i333
  %i.kb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i334, i64 40
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kb), !noalias !27433
  %.pr.i.i.i.i335 = load i8, ptr %i.d, align 8, !noalias !27428
  %i.kc = icmp eq i8 %.pr.i.i.i.i335, -1
  br i1 %i.kc, label %.backedge.i.i.i.i354, label %bb.cl

.backedge.i.i.i.i354:                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtCs1Jc0oVeks7E_15datafusion_expr13type_coercion9functions34value_fields_with_higher_order_udfuEs0_0INtB7_5FnMutTRINtNtBX_21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEE8call_mutCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, %.critedge.i.i.i.i356
  %i.kd = icmp eq ptr %i.jz, %i.jo
  br i1 %i.kd, label %.loopexit13.i.i355, label %.lr.ph.i.i.i.i333

.loopexit13.i.i355:                               ; preds = %.backedge.i.i.i.i354, %._crit_edge.thread
  store i64 0, ptr %i.ae, align 8, !alias.scope !27428
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ke, align 8, !alias.scope !27428
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %i.kf, align 8, !alias.scope !27428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27428
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEINtB2_12SpecFromIterBU_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB2f_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtBY_5field5FieldEuEENCINvNtNtB3E_13type_coercion9functions34value_fields_with_higher_order_udfuEs0_0EE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

bb.ck:                                            ; preds = %bb.cm
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.c) #73
          to label %common.resume unwind label %bb.cs, !noalias !27428

bb.cl:                                            ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtNtCs1Jc0oVeks7E_15datafusion_expr13type_coercion9functions34value_fields_with_higher_order_udfuEs0_0INtB7_5FnMutTRINtNtBX_21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEE8call_mutCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !27428
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27434
  %i.kh = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 17) 8) #71, !noalias !27434 ; 4 uses
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #72
          to label %.noexc.i.i353 unwind label %bb.ck, !noalias !27428

.noexc.i.i353:                                    ; preds = %bb.cm
  unreachable
end_hunk_1
begin_hunk_2_@_RNvXs0_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_11OneShotExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7display9DisplayAs6fmt_as:bb.a
bb.ac:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.ad:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.l, ptr %i.f, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.422.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.ce, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  %i.cf = load ptr, ptr %2, align 8, !nonnull !315, !noundef !315
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !315, !align !324, !noundef !315
  %i.ci = invoke noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ch, ptr noundef nonnull @963, ptr noundef nonnull %i.f)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99265)
  %.val.i56 = load i64, ptr %i.g, align 8, !alias.scope !99265 ; 2 uses
  %i.ck = icmp eq i64 %.val.i56, 0
  br i1 %i.ck, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i57 = load ptr, ptr %i.cl, align 8, !alias.scope !99265, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i57, i64 noundef %.val.i56, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !99265
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !99266)
  %.val.i59 = load i64, ptr %i.g, align 8, !alias.scope !99266 ; 2 uses
  %i.cm = icmp eq i64 %.val.i59, 0
  br i1 %i.cm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit61, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i60 = load ptr, ptr %i.cn, align 8, !alias.scope !99266, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i60, i64 noundef %.val.i59, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !99266
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit61

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit61: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.z

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.ab, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.aa, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit
  %i.co = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.cp = and i64 %i.co, 9223372036854775807
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.aj, !prof !321

bb.aj:                                            ; preds = %bb.ai
  %i.cr = call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.cr, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store atomic i8 1, ptr %i.v monotonic, align 4
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit
  %i.cs = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ct = icmp eq i32 %i.cs, 2
  br i1 %i.ct, label %bb.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEEEECsc85D0lJ81Z_16lance_datafusion.exit, !prof !316

bb.al:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEEEECsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEEEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.al
  ret i1 %.sroa.0.1.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([2920 x i8]) align 8 captures(none) dereferenceable(2920) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [512 x i8], align 8               ; 5 uses
  %i.e = alloca [104 x i8], align 8               ; 5 uses
  %.sroa.0 = alloca [832 x i8], align 8           ; 7 uses
  %.sroa.42 = alloca [25 x i8], align 1           ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [1904 x i8], align 8              ; 7 uses
  %i.h = alloca [88 x i8], align 8                ; 10 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i8 0, ptr %i.j, align 8
  store i64 0, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 81
  store i8 0, ptr %i.o, align 1
  call void @_RNvNtCsc85D0lJ81Z_16lance_datafusion4exec19get_session_context(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs3_NtNtCseMy6uzTzNin_10datafusion9execution7contextNtB5_14SessionContext5state(ptr noalias noundef nonnull sret([1904 x i8]) align 8 captures(none) dereferenceable(1904) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.j, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.p, %bb.c ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.i) #73
          to label %bb.y unwind label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 1088
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !315, !noundef !315 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 1096
  %i.t = load i64, ptr %i.s, align 8, !noundef !315 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99286)
  %i.u = shl nuw nsw i64 %i.t, 4                  ; 2 uses
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !99287
  %i.w = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 17) 8) #71, !noalias !99287 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %.lr.ph.preheader.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.u) #72
          to label %.noexc6 unwind label %bb.k

.noexc6:                                          ; preds = %bb.f
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.t
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %.sroa.014.024.i = phi ptr [ %i.af, %bb.i ], [ %i.r, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.7.023.i = phi i64 [ %i.ae, %bb.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.022.i = phi i64 [ %i.z, %bb.i ], [ %i.t, %.lr.ph.preheader.i ]
  %i.z = add nsw i64 %.sroa.10.022.i, -1          ; 2 uses
  %i.aa = icmp eq ptr %.sroa.014.024.i, %i.y
  br i1 %i.aa, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.014.024.i, align 8, !alias.scope !99286, !noalias !99288, !nonnull !315, !noundef !315 ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.014.024.i, i64 8
  %.val13.i = load ptr, ptr %i.ab, align 8, !alias.scope !99286, !noalias !99288 ; 2 uses
  %i.ac = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !99289
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = add nuw nsw i64 %.sroa.7.023.i, 1
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.sroa.7.023.i ; 2 uses
  store ptr %.val12.i, ptr %i.ag, align 8, !noalias !99289
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.val13.i, ptr %i.ah, align 8, !noalias !99289
  %i.ai = icmp eq i64 %i.z, 0
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i

bb.j:                                             ; preds = %.body, %bb.k
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.aj, %bb.k ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution13session_state12SessionStateECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(1904) %i.g) #73
          to label %bb.b unwind label %bb.x

bb.k:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit:                                        ; preds = %bb.i, %.lr.ph.i, %bb.d
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %i.w, %.lr.ph.i ], [ %i.w, %bb.i ]
  store i64 %i.t, ptr %i.f, align 8, !noalias !99286
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !99286
  %.sroa.712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.t, ptr %.sroa.712.0..sroa_idx, align 8, !noalias !99286
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !99290
  invoke void @_RNvXsv_NtCs2bHstFFhpHt_17datafusion_common6configNtB5_14CatalogOptionsNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e)
          to label %.noexc8 unwind label %bb.t

.noexc8:                                          ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !99290
  invoke void @_RNvXsX_NtCs2bHstFFhpHt_17datafusion_common6configNtB5_16ExecutionOptionsNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr noalias noundef nonnull sret([512 x i8]) align 8 captures(none) dereferenceable(512) %i.d)
          to label %bb.n unwind label %bb.m, !noalias !99290

bb.l:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6config16SqlParserOptionsECsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.m
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6config16SqlParserOptionsECsc85D0lJ81Z_16lance_datafusion.exit.i ], [ %i.ak, %bb.m ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6config14CatalogOptionsECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.e) #73, !noalias !99290
  br label %.body

bb.m:                                             ; preds = %.noexc8
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %.noexc8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !99290
  invoke void @_RNvXsB_NtCs2bHstFFhpHt_17datafusion_common6configNtB5_16SqlParserOptionsNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c)
          to label %bb.p unwind label %bb.o, !noalias !99290

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6config16SqlParserOptionsECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6config14ExplainOptionsECsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.al, %bb.o ], [ %i.am, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6config14ExplainOptionsECsc85D0lJ81Z_16lance_datafusion.exit.i ], [ %i.am, %bb.s ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6config16ExecutionOptionsECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(512) %i.d) #73, !noalias !99290
  br label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6config16SqlParserOptionsECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99290
  store ptr null, ptr %i.b, align 8, !noalias !99290
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !99290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99290
  invoke void @_RNvXs1x_NtCs2bHstFFhpHt_17datafusion_common6configNtB6_13FormatOptionsNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.a)
          to label %bb.u unwind label %bb.q, !noalias !99290

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6config10ExtensionsECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.b) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6config14ExplainOptionsECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.r, !noalias !99290

bb.r:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !99290
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6config14ExplainOptionsECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.q
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !99291, !noalias !99290 ; 2 uses
  %i.ao = icmp eq i64 %.val.i, 0
  br i1 %i.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6config16SqlParserOptionsECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6config14ExplainOptionsECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val12.i7 = load ptr, ptr %i.ap, align 8, !noalias !99290, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i7, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !99292
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6config16SqlParserOptionsECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.t:                                             ; preds = %.loopexit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.t ], [ %.pn.pn.i, %bb.l ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs1Jc0oVeks7E_15datafusion_expr7planner11ExprPlannerEL_EEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.f) #73
          to label %bb.j unwind label %bb.x

bb.u:                                             ; preds = %bb.p
  %.sroa.0.512..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.512..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.e, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(512) %i.d, i64 512, i1 false)
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 942
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.27.0..sroa_idx, i8 1, i64 6, i1 false)
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 949
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.29.0..sroa_idx, i8 1, i64 6, i1 false)
  %.sroa.0.616..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.616..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %.sroa.42.968..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.42, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.42.968..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.0.656..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.0.656..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !99290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !99290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !99290
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1904) %i.ar, ptr noundef nonnull align 8 dereferenceable(1904) %i.g, i64 1904, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(832) %.sroa.0, i64 832, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 832
  store i64 -1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 856
  store i64 240, ptr %.sroa.89.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 864
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 868
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 869
  store i8 1, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 870
  store i8 0, ptr %.sroa.15.0..sroa_idx, align 2
  %.sroa.1610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i64 10485760, ptr %.sroa.1610.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 880
  store i64 0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 888
  store i64 4, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i64 3, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 904
  store i64 1048576, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i64 131072, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i64 131072, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 150, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i8 20, ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 937
  store i32 16843009, ptr %.sroa.25.0..sroa_idx, align 1
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 941
  store i8 0, ptr %.sroa.26.0..sroa_idx, align 1
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 948
  store i8 0, ptr %.sroa.28.0..sroa_idx, align 4
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 955
  store <8 x i8> <i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.30.0..sroa_idx, align 1
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 963
  store <4 x i8> <i8 0, i8 1, i8 1, i8 0>, ptr %.sroa.38.0..sroa_idx, align 1
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(25) %.sroa.42, i64 25, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !99293)
  call void @llvm.experimental.noalias.scope.decl(metadata !99294)
  %.val.i.i = load i64, ptr %i.i, align 8, !alias.scope !99295 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i, 0
  br i1 %i.at, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i.i = load ptr, ptr %i.au, align 8, !alias.scope !99295, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !99295
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.v, %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99296)
  call void @llvm.experimental.noalias.scope.decl(metadata !99297)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !99298, !nonnull !315, !noundef !315
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !99298
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsc85D0lJ81Z_16lance_datafusion.exit

bb.w:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock6RwLockNtNtCslnBYTBsvsQk_11parking_lot10raw_rwlock9RawRwLockNtNtNtCseMy6uzTzNin_10datafusion9execution13session_state12SessionStateEE9drop_slowB2j_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.av)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.x:                                             ; preds = %.body, %bb.j, %bb.b
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.y:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtB5_18BatchStreamGrouperNtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 16 dereferenceable(208) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca [80 x i8], align 16               ; 8 uses
  %i.c = alloca [64 x i8], align 16               ; 7 uses
  %i.d = alloca [80 x i8], align 16               ; 8 uses
end_hunk_2
