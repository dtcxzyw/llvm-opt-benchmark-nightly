Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_RINvNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builder14subquery_aliasNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceECsc85D0lJ81Z_16lance_datafusion:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.aj, ptr %i.af, align 8, !noalias !26976
  %.sink18.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sink18.i.sroa.gep101.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sink15.i.sroa.gep102.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !26976
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.an)
          to label %bb.g unwind label %.thread106.i, !noalias !26976

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion.exit
  br i1 %.sroa.032.2110.i, label %bb.eg, label %.body.thread

.thread106.i:                                     ; preds = %bb.g, %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.ao, align 8, !noalias !26976, !nonnull !315, !noundef !315
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !26976, !nonnull !315, !noundef !315
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  invoke void @_RNvNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builder20unique_field_aliases(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at)
          to label %bb.h unwind label %.thread106.i, !noalias !26976

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !26976, !nonnull !315, !noundef !315 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !26976, !noundef !315 ; 9 uses
  %.idx = mul nuw nsw i64 %i.ax, 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx
  %.not3.not.not.i.not.i177 = icmp eq i64 %i.ax, 0
  br i1 %.not3.not.not.i.not.i177, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %.not3.not.not.i.not.i = icmp eq ptr %i.az, %i.ay
  br i1 %.not3.not.not.i.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %i.ba = phi ptr [ %i.az, %bb.i ], [ %i.av, %bb.h ] ; 2 uses
  %.val.i.i = load i64, ptr %i.ba, align 8, !range !334, !noalias !26977, !noundef !315
  %.not.i.i = icmp eq i64 %.val.i.i, -1
  br i1 %.not.i.i, label %bb.i, label %bb.n

.body59.thread.i:                                 ; preds = %bb.ef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %bb.bz, %.body.i.i.i, %bb.m
  %.sroa.032.4.ph.i = phi i1 [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsc85D0lJ81Z_16lance_datafusion.exit.thread.i ], [ false, %bb.ef ], [ true, %.body.i.i.i ], [ %.sroa.032.5.i, %bb.m ], [ false, %bb.bz ] ; 2 uses
  %.pn53.ph.i = phi { ptr, i32 } [ %.pn49.pn.pn116.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsc85D0lJ81Z_16lance_datafusion.exit.thread.i ], [ %.pn49.pn.pn116.i, %bb.ef ], [ %.pn.i.i.i.i.i.i.i.i.i, %.body.i.i.i ], [ %i.bl, %bb.m ], [ %i.fg, %bb.bz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26978)
  call void @llvm.experimental.noalias.scope.decl(metadata !26979), !noalias !26976
  %i.bb = icmp eq i64 %i.ax, 0
  br i1 %i.bb, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.body59.thread.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.sroa.0.09.i.i.i = phi i64 [ %i.bd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ], [ 0, %.body59.thread.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.sroa.0.09.i.i.i ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.0.09.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26980), !noalias !26976
  %i.be = load i64, ptr %i.bc, align 8, !range !334, !alias.scope !26981, !noalias !26982, !noundef !315 ; 3 uses
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !26983), !noalias !26976
  %i.bg = icmp eq i64 %i.be, 0
  br i1 %i.bg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !26984, !noalias !26982, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !26985
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i
  %i.bi = icmp eq i64 %i.bd, %i.ax
  br i1 %i.bi, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.body59.thread.i
  %.val2.i = load i64, ptr %i.ad, align 8, !range !322, !alias.scope !26978, !noalias !26976, !noundef !315 ; 2 uses
  %i.bj = icmp eq i64 %.val2.i, 0
  br i1 %i.bj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.l

bb.l:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.bk = mul nuw i64 %.val2.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !26982
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion.exit

.thread.i:                                        ; preds = %bb.dm
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #73, !noalias !26976
  br label %.body.thread

bb.m:                                             ; preds = %bb.ds, %.loopexit.i, %bb.t, %bb.p, %bb.n
  %.sroa.032.5.i = phi i1 [ false, %bb.ds ], [ true, %bb.n ], [ false, %.loopexit.i ], [ true, %bb.t ], [ true, %bb.p ]
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body59.thread.i

._crit_edge:                                      ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !26976
  store ptr %i.aj, ptr %i.ac, align 8, !noalias !26976
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !26976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !26976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !26976
  %i.bm = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.an)
          to label %bb.p unwind label %bb.m, !noalias !26976

bb.o:                                             ; preds = %bb.cb, %._crit_edge
  %i.bn = phi ptr [ %i.fe, %bb.cb ], [ %i.aj, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !26976
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.bo)
          to label %bb.cc unwind label %.thread112.i, !noalias !26976

bb.p:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.bm, align 8, !noalias !26976, !nonnull !315, !noundef !315
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  invoke void @_RNvMNtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB2_8DFSchema4iter(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.br)
          to label %bb.q unwind label %bb.m, !noalias !26976

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !26986)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !26987, !noalias !26988 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !26987, !noalias !26988 ; 2 uses
  %i.bs = sub i64 %.sroa.5.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bs, i64 %i.ax) ; 6 uses
  %.sroa.699.16.copyload.i = load ptr, ptr %i.aa, align 8, !alias.scope !26989, !noalias !26976 ; 2 uses
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.9.16.copyload.i = load ptr, ptr %.sroa.9.16..sroa_idx.i, align 8, !alias.scope !26989, !noalias !26976 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !26976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !26990
  %i.bt = mul i64 %.sroa.0.0.i.i.i.i, 112         ; 3 uses
  %or.cond.i.i.i.i.i = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i, 82351536043346212
  br i1 %or.cond.i.i.i.i.i, label %bb.t, label %bb.r, !prof !317

bb.r:                                             ; preds = %bb.q
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !26991
  %i.bv = call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bt, i64 noundef range(i64 1, 17) 16) #71, !noalias !26991 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.t, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.s, %bb.q
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 16, %bb.s ], [ 0, %bb.q ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bt) #72
          to label %.noexc.i unwind label %bb.m, !noalias !26976

.noexc.i:                                         ; preds = %bb.t
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.r ], [ %i.bv, %bb.s ] ; 2 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.r ], [ %.sroa.0.0.i.i.i.i, %bb.s ] ; 2 uses
  %i.bx = icmp samesign ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.bx)
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.j, align 8, !noalias !26990
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %i.by, align 8, !noalias !26990
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26992)
  call void @llvm.experimental.noalias.scope.decl(metadata !26993)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.699.16.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.16.copyload.i) ]
  %.sink18.i.sroa.gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sink18.i.sroa.gep8.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sink15.i.sroa.gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sink15.i.sroa.gep9.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sink18.i7.sroa.gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sink18.i7.sroa.gep10.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sink15.i9.sroa.gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sink15.i9.sroa.gep11.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.63.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.56..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i.i.i.i.i.i, i64 56
  %.sroa.7.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.11.0..sroa_idx10.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %.sroa.13.0..sroa_idx14.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.05.56..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.i.i.i.i.i.i.i.i.i.i.i, i64 56
  br label %bb.u

bb.u:                                             ; preds = %bb.bt, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.val13.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ca, %bb.bt ] ; 5 uses
  %i.ca = add nuw nsw i64 %.val13.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.val13.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cc = add i64 %.val13.i.i.i.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i ; 2 uses
  %i.cd = getelementptr inbounds nuw [56 x i8], ptr %.sroa.699.16.copyload.i, i64 %i.cc ; 18 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.9.16.copyload.i, i64 %i.cc ; 2 uses
  %i.cf = load i64, ptr %i.cd, align 8, !range !318, !alias.scope !26994, !noalias !26995, !noundef !315 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cf, -1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i.i.i)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !26996
  call void @llvm.experimental.noalias.scope.decl(metadata !26997)
  call void @llvm.experimental.noalias.scope.decl(metadata !26998)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !26998, !noalias !26999, !nonnull !315, !noundef !315 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !26998, !noalias !26999, !noundef !315 ; 3 uses
  %i.ck = atomicrmw add ptr %i.ch, i64 1 monotonic, align 8, !noalias !27000
  %i.cl = icmp slt i64 %i.ck, 0                   ; 3 uses
  switch i64 %i.cf, label %default.unreachable [
    i64 0, label %bb.w
    i64 1, label %bb.x
    i64 2, label %bb.y
  ]

default.unreachable:                              ; preds = %bb.aq, %bb.v, %bb.cn
  unreachable

bb.w:                                             ; preds = %bb.v
  br i1 %i.cl, label %bb.z, label %bb.aj

bb.x:                                             ; preds = %bb.v
  br i1 %i.cl, label %bb.ab, label %bb.aa

bb.y:                                             ; preds = %bb.v
  br i1 %i.cl, label %bb.ae, label %bb.ad

bb.z:                                             ; preds = %bb.w
  call void @llvm.trap()
  unreachable

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.ah, %bb.aa
  %.sink18.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sink18.i.sroa.gep.i.i.i.i.i.i.i.i.i.i.i, %bb.ah ], [ %.sink18.i.sroa.gep8.i.i.i.i.i.i.i.i.i.i.i, %bb.aa ]
  %.sink16.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ct, %bb.ah ], [ %i.ch, %bb.aa ]
  %.sink15.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sink15.i.sroa.gep.i.i.i.i.i.i.i.i.i.i.i, %bb.ah ], [ %.sink15.i.sroa.gep9.i.i.i.i.i.i.i.i.i.i.i, %bb.aa ]
  %.sink13.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cv, %bb.ah ], [ %i.cj, %bb.aa ]
  %.sink12.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 40, %bb.ah ], [ 24, %bb.aa ]
  %.sink10.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %bb.ah ], [ %i.cn, %bb.aa ]
  %.sink9.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 48, %bb.ah ], [ 32, %bb.aa ]
  %.sink7.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.db, %bb.ah ], [ %i.cp, %bb.aa ]
  store ptr %.sink16.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sink18.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26997, !noalias !27001
  store i64 %.sink13.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sink15.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26997, !noalias !27001
  br label %bb.aj

bb.aa:                                            ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !26998, !noalias !26999, !nonnull !315, !noundef !315 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !26998, !noalias !26999, !noundef !315
  %i.cq = atomicrmw add ptr %i.cn, i64 1 monotonic, align 8, !noalias !27000
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %bb.ac, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.x
  call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !26998, !noalias !26999, !nonnull !315, !noundef !315 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !26998, !noalias !26999, !noundef !315
  %i.cw = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !27000
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.y
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !26998, !noalias !26999, !nonnull !315, !noundef !315 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !26998, !noalias !26999, !noundef !315
  %i.dc = atomicrmw add ptr %i.cz, i64 1 monotonic, align 8, !noalias !27000
  %i.dd = icmp slt i64 %i.dc, 0
  br i1 %i.dd, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.af
  store ptr %i.ch, ptr %.sink18.i.sroa.gep8.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26997, !noalias !27001
  store i64 %i.cj, ptr %.sink15.i.sroa.gep9.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26997, !noalias !27001
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.af
  call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.w
  %.sink12.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.w ], [ %.sink12.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink10.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %bb.w ], [ %.sink10.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink9.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 16, %bb.w ], [ %.sink9.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cj, %bb.w ], [ %.sink7.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink12.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %.sink10.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.de, align 8, !alias.scope !26997, !noalias !27001
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink9.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sink7.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.df, align 8, !alias.scope !26997, !noalias !27001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.63.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sink18.i.sroa.gep8.i.i.i.i.i.i.i.i.i.i.i, i64 48, i1 false), !noalias !26996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26996
  %i.dg = load ptr, ptr %i.ce, align 8, !noalias !26996, !nonnull !315, !noundef !315
  br label %bb.al

bb.ak:                                            ; preds = %bb.u
  %i.dh = load ptr, ptr %i.ce, align 8, !noalias !26996, !nonnull !315, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27003
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.ak ], [ %i.dg, %bb.aj ]
  store i64 %i.cf, ptr %i.e, align 8, !noalias !27004
  %i.di = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i.i.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27002
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di)
          to label %_RINvMs_NtCs2bHstFFhpHt_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceRNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.am, !noalias !27005

bb.am:                                            ; preds = %bb.al
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.body.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(56) %i.e)
          to label %.body.i.i.i unwind label %bb.ao, !noalias !27005

bb.ao:                                            ; preds = %bb.an
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !27005
  unreachable

_RINvMs_NtCs2bHstFFhpHt_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceRNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !27006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.56..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !27006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i.i.i.i.i.i.i.i.i, i64 80, i1 false), !noalias !27007
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i.i.i)
  %i.dl = load i64, ptr %i.cb, align 8, !range !334, !noalias !26996, !noundef !315
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dl, -1
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i, label %bb.bt, label %bb.ap

bb.ap:                                            ; preds = %_RINvMs_NtCs2bHstFFhpHt_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceRNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !26996
  store i64 4, ptr %i.i, align 16, !noalias !27008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.i.i.i.i.i.i.i.i.i.i, i64 80, i1 false), !noalias !27007
  store i64 0, ptr %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !27008
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.11.0..sroa_idx10.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !27008
  store i64 0, ptr %.sroa.13.0..sroa_idx14.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !27008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !26996
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.be, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26996
  call void @llvm.experimental.noalias.scope.decl(metadata !27009)
  call void @llvm.experimental.noalias.scope.decl(metadata !27010)
  %i.dm = load i64, ptr %i.cd, align 8, !range !339, !alias.scope !27010, !noalias !27011, !noundef !315 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !27010, !noalias !27011, !nonnull !315, !noundef !315 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !27010, !noalias !27011, !noundef !315 ; 3 uses
  %i.dr = atomicrmw add ptr %i.do, i64 1 monotonic, align 8, !noalias !27012
  %i.ds = icmp slt i64 %i.dr, 0                   ; 3 uses
  switch i64 %i.dm, label %default.unreachable [
    i64 0, label %bb.ar
    i64 1, label %bb.as
    i64 2, label %bb.at
  ]

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.ds, label %bb.au, label %bb.br

bb.as:                                            ; preds = %bb.aq
  br i1 %i.ds, label %bb.aw, label %bb.av

bb.at:                                            ; preds = %bb.aq
  br i1 %i.ds, label %bb.az, label %bb.ay

bb.au:                                            ; preds = %bb.ar
  call void @llvm.trap()
end_hunk_0
begin_hunk_1_@_RNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE16sql_trim_to_exprB16_:bb.a
  %i.w = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.x = alloca [112 x i8], align 16              ; 12 uses
  %i.y = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %4, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke fastcc void @_RNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24sql_expr_to_logical_exprB16_(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dereferenceable(328) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %6, ptr noalias noundef align 8 dereferenceable(152) %7)
          to label %bb.b unwind label %bb.cj

bb.b:                                             ; preds = %bb.a
  %i.z = load i64, ptr %i.w, align 16, !range !337, !noundef !315 ; 2 uses
  %i.aa = icmp eq i64 %i.z, -2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  br i1 %i.aa, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.ad = load i64, ptr %5, align 8, !range !334, !alias.scope !79514, !noundef !315
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %5)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEEECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.cg, !inline_history !446

bb.e:                                             ; preds = %bb.b
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5138.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 %i.z, ptr %i.x, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %4, ptr %i.u, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %.not = icmp eq ptr %4, null                    ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !range !334, !noundef !315 ; 12 uses
  %.not210 = icmp eq i64 %i.ag, -1                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not210, label %bb.au, label %bb.as

bb.g:                                             ; preds = %bb.e
  br i1 %.not210, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !315 ; 7 uses
  %.not211 = icmp eq i64 %i.ai, 0
  br i1 %.not211, label %bb.l, label %bb.n

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.aj = tail call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 16) #71 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.j, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !316

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #72
          to label %.noexc239 unwind label %bb.k

.noexc239:                                        ; preds = %bb.j
  unreachable

.body:                                            ; preds = %.body.i269, %bb.aq, %.body.i255, %bb.ag, %bb.k
  %i.al = phi i64 [ %i.ag, %.body.i269 ], [ %i.ag, %.body.i255 ], [ %i.ag, %bb.ag ], [ %i.am, %bb.k ], [ %i.ag, %bb.aq ] ; 2 uses
  %.sroa.0129.0 = phi i1 [ false, %.body.i269 ], [ true, %.body.i255 ], [ true, %bb.ag ], [ true, %bb.k ], [ false, %bb.aq ] ; 2 uses
  %.sroa.0124.0 = phi i1 [ false, %.body.i269 ], [ false, %.body.i255 ], [ false, %bb.ag ], [ true, %bb.k ], [ false, %bb.aq ] ; 2 uses
  %.pn224.pn = phi { ptr, i32 } [ %i.cf, %.body.i269 ], [ %i.bo, %.body.i255 ], [ %i.bo, %bb.ag ], [ %i.an, %bb.k ], [ %i.cf, %bb.aq ] ; 2 uses
  br i1 %.not, label %.thread366, label %.body.thread

bb.k:                                             ; preds = %bb.at, %bb.j
  %i.am = phi i64 [ %i.ag, %bb.at ], [ -1, %bb.j ]
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.aj, ptr noundef nonnull align 16 dereferenceable(112) %i.x, i64 112, i1 false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit299

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !79515
  %i.ao = tail call noundef dereferenceable_or_null(31) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 31, i64 noundef range(i64 1, 17) 1) #71, !noalias !79515 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) 31) #72
          to label %.noexc240 unwind label %bb.o

.noexc240:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !315, !noundef !315 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.672)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ar)
          to label %bb.y unwind label %bb.o

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit245, %bb.ak, %bb.o
  %.pn213 = phi { ptr, i32 } [ %i.by, %bb.ak ], [ %i.as, %bb.o ], [ %i.av, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit245 ], [ %i.av, %bb.p ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %5) #73
          to label %.thread388 unwind label %bb.x

bb.o:                                             ; preds = %bb.m, %bb.y, %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit245: ; preds = %bb.s, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !79516)
  %.val.i = load i64, ptr %i.m, align 8, !alias.scope !79516 ; 2 uses
  %i.at = icmp eq i64 %.val.i, 0
  br i1 %i.at, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit245
  %.val1.i = load ptr, ptr %.sroa.4339.0..sroa_idx, align 8, !alias.scope !79516, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !79516
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit

bb.q:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.ao, ptr noundef nonnull readonly align 1 dereferenceable(31) @505, i64 range(i64 0, -9223372036854775808) 31, i1 false), !noalias !79517
  store i64 31, ptr %i.m, align 8
  %.sroa.4339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.ao, ptr %.sroa.4339.0..sroa_idx, align 8
  %.sroa.5340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 31, ptr %.sroa.5340.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4148.0..sroa_idx, align 8
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.5149.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4153.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.au, align 8
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4157.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @184, ptr noundef nonnull %i.k)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit242 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79518)
  %.val.i243 = load i64, ptr %i.l, align 8, !alias.scope !79518 ; 2 uses
  %i.aw = icmp eq i64 %.val.i243, 0
  br i1 %i.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit245, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val1.i244 = load ptr, ptr %.sroa.4148.0..sroa_idx, align 8, !alias.scope !79518, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i244, i64 noundef %.val.i243, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !79518
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit245

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit242: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !79519)
  %.val.i246 = load i64, ptr %i.l, align 8, !alias.scope !79519 ; 2 uses
  %i.ax = icmp eq i64 %.val.i246, 0
  br i1 %i.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit248, label %bb.t

bb.t:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit242
  %.val1.i247 = load ptr, ptr %.sroa.4148.0..sroa_idx, align 8, !alias.scope !79519, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i247, i64 noundef %.val.i246, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !79519
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit248

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit248: ; preds = %bb.t, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !79520)
  %.val.i249 = load i64, ptr %i.m, align 8, !alias.scope !79520 ; 2 uses
  %i.ay = icmp eq i64 %.val.i249, 0
  br i1 %i.ay, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit248
  %.val1.i250 = load ptr, ptr %.sroa.4339.0..sroa_idx, align 8, !alias.scope !79520, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i250, i64 noundef %.val.i249, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !79520
  br label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit248, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.2.8.copyload = load i64, ptr %i.n, align 8
  %.sroa.483.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.483.8.copyload = load ptr, ptr %.sroa.483.8..sroa_idx, align 8
  %.sroa.584.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.584.8.copyload = load i64, ptr %.sroa.584.8..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !79521)
  %.val.i252 = load i64, ptr %5, align 8, !range !322, !alias.scope !79521, !noundef !315 ; 2 uses
  %i.az = icmp eq i64 %.val.i252, 0
  br i1 %i.az, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !79522, !nonnull !315, !noundef !315
  %i.bc = mul nuw i64 %.val.i252, 328
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !79521, !inline_history !577
  br label %bb.w

bb.w:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.bd, align 8
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.2.8.copyload, ptr %.sroa.4196.0..sroa_idx, align 16
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.483.8.copyload, ptr %.sroa.5197.0..sroa_idx, align 8
  %.sroa.6198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.584.8.copyload, ptr %.sroa.6198.0..sroa_idx, align 16
  store i64 -2, ptr %0, align 16
  br label %.critedge

bb.x:                                             ; preds = %bb.ck, %bb.cl, %.thread388, %bb.cf, %.body.thread, %bb.bw, %.body297, %bb.az, %bb.ak, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.y:                                             ; preds = %bb.n
  invoke fastcc void @_RNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24sql_expr_to_logical_exprB16_(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dereferenceable(328) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %6, ptr noalias noundef align 8 dereferenceable(152) %7)
          to label %bb.z unwind label %bb.o

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.bf = load i64, ptr %i.p, align 16, !range !337, !noundef !315 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, -2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.672, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false)
  br i1 %i.bg, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.672, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.672)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !79523)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ac
  %i.bj = icmp eq i64 %i.bl, %i.ai
  br i1 %i.bj, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i258, label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.sroa.0.0.i.i253467 = phi i64 [ 0, %bb.aa ], [ %i.bl, %bb.ab ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [328 x i8], ptr %i.ar, i64 %.sroa.0.0.i.i253467
  %i.bl = add i64 %.sroa.0.0.i.i253467, 1         ; 4 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.bk) #74
          to label %bb.ab unwind label %bb.ae, !noalias !79523, !inline_history !218

bb.ad:                                            ; preds = %.lr.ph469
  %i.bm = add i64 %.sroa.0.1.i.i254468, 1         ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.ai
  br i1 %i.bn, label %.body.i255, label %.lr.ph469

bb.ae:                                            ; preds = %bb.ac
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = icmp eq i64 %i.bl, %i.ai
  br i1 %i.bp, label %.body.i255, label %.lr.ph469

.lr.ph469:                                        ; preds = %bb.ae, %bb.ad
  %.sroa.0.1.i.i254468 = phi i64 [ %i.bm, %bb.ad ], [ %i.bl, %bb.ae ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [328 x i8], ptr %i.ar, i64 %.sroa.0.1.i.i254468
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.bq) #75
          to label %bb.ad unwind label %bb.af, !noalias !79523, !inline_history !218

bb.af:                                            ; preds = %.lr.ph469
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !79523, !inline_history !218
  unreachable

.body.i255:                                       ; preds = %bb.ad, %bb.ae
  %.val2.i256 = load i64, ptr %5, align 8, !range !322, !alias.scope !79523, !noundef !315 ; 2 uses
  %i.bs = icmp eq i64 %.val2.i256, 0
  br i1 %i.bs, label %.body, label %bb.ag

bb.ag:                                            ; preds = %.body.i255
  %i.bt = mul nuw i64 %.val2.i256, 328
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !79523, !inline_history !577
  br label %.body

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i258: ; preds = %bb.ab
  %.val.i259 = load i64, ptr %5, align 8, !range !322, !alias.scope !79523, !noundef !315 ; 2 uses
  %i.bu = icmp eq i64 %.val.i259, 0
  br i1 %i.bu, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i258
  %i.bv = mul nuw i64 %.val.i259, 328
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !79523, !inline_history !577
  br label %.critedge

bb.ai:                                            ; preds = %bb.z
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.578.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5144.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.477.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.672, i64 40, i1 false)
  store i64 %i.bf, ptr %i.q, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.672)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.bw = call noundef align 16 dereferenceable_or_null(224) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 224, i64 noundef range(i64 1, -9223372036854775807) 16) #71 ; 5 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.aj, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit266, !prof !316

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 224) #72
          to label %.noexc265 unwind label %bb.ak

.noexc265:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.q) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.x

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit266: ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bw, ptr noundef nonnull align 16 dereferenceable(112) %i.x, i64 112, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bz, ptr noundef nonnull align 16 dereferenceable(112) %i.q, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !79524)
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %i.ca = icmp eq i64 %i.cc, %i.ai
  br i1 %i.ca, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i272, label %bb.am

bb.am:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit266, %bb.al
  %.sroa.0.0.i.i267464 = phi i64 [ 0, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit266 ], [ %i.cc, %bb.al ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [328 x i8], ptr %i.ar, i64 %.sroa.0.0.i.i267464
  %i.cc = add i64 %.sroa.0.0.i.i267464, 1         ; 4 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.cb) #74
          to label %bb.al unwind label %bb.ao, !noalias !79524, !inline_history !218

bb.an:                                            ; preds = %.lr.ph466
  %i.cd = add i64 %.sroa.0.1.i.i268465, 1         ; 2 uses
  %i.ce = icmp eq i64 %i.cd, %i.ai
  br i1 %i.ce, label %.body.i269, label %.lr.ph466

bb.ao:                                            ; preds = %bb.am
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = icmp eq i64 %i.cc, %i.ai
  br i1 %i.cg, label %.body.i269, label %.lr.ph466

.lr.ph466:                                        ; preds = %bb.ao, %bb.an
  %.sroa.0.1.i.i268465 = phi i64 [ %i.cd, %bb.an ], [ %i.cc, %bb.ao ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [328 x i8], ptr %i.ar, i64 %.sroa.0.1.i.i268465
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.ch) #75
          to label %bb.an unwind label %bb.ap, !noalias !79524, !inline_history !218

bb.ap:                                            ; preds = %.lr.ph466
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !79524, !inline_history !218
  unreachable

.body.i269:                                       ; preds = %bb.an, %bb.ao
  %.val2.i270 = load i64, ptr %5, align 8, !range !322, !alias.scope !79524, !noundef !315 ; 2 uses
  %i.cj = icmp eq i64 %.val2.i270, 0
  br i1 %i.cj, label %.body, label %bb.aq

bb.aq:                                            ; preds = %.body.i269
  %i.ck = mul nuw i64 %.val2.i270, 328
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !79524, !inline_history !577
  br label %.body

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i272: ; preds = %bb.al
  %.val.i273 = load i64, ptr %5, align 8, !range !322, !alias.scope !79524, !noundef !315 ; 2 uses
  %i.cl = icmp eq i64 %.val.i273, 0
  br i1 %i.cl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit299, label %bb.ar

bb.ar:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i272
  %i.cm = mul nuw i64 %.val.i273, 328
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !79524, !inline_history !577
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit299
end_hunk_1
begin_hunk_2_@_RNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14plan_selectionB18_:bb.a
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gj, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.616, i64 40, i1 false)
  store i64 -1, ptr %0, align 16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.m, i64 noundef 1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueAINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEj1_ECsc85D0lJ81Z_16lance_datafusion.exit136 unwind label %bb.cb

bb.bk:                                            ; preds = %bb.bi
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.522.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.574.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.616, i64 40, i1 false)
  store i64 %i.gg, ptr %i.p, align 16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.m, i64 noundef 1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueAINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEj1_ECsc85D0lJ81Z_16lance_datafusion.exit138 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gk = landingpad { ptr, i32 }
          cleanup
  %i.gl = icmp eq i64 %.sroa.4.0.i12.i.i, 0
  br i1 %i.gl, label %bb.bz, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gm = shl nuw i64 %.sroa.4.0.i12.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i11.i.i, i64 noundef %i.gm, i64 noundef range(i64 1, -9223372036854775807) 8) #71
  br label %bb.bz

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueAINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEj1_ECsc85D0lJ81Z_16lance_datafusion.exit138: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.gn = icmp eq i64 %.sroa.4.0.i12.i.i, 0
  br i1 %i.gn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRSRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit139, label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueAINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEj1_ECsc85D0lJ81Z_16lance_datafusion.exit138
  %i.go = shl nuw i64 %.sroa.4.0.i12.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i11.i.i, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) 8) #71
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRSRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit139

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRSRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit139: ; preds = %bb.bn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueAINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEj1_ECsc85D0lJ81Z_16lance_datafusion.exit138
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.k, ptr noundef nonnull align 16 dereferenceable(112) %i.p, i64 112, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.gp, ptr noundef nonnull align 16 dereferenceable(320) %3, i64 320, i1 false)
  store i64 1, ptr %i.j, align 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.gq, align 8
  %i.gr = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 336)
          to label %bb.bq unwind label %bb.bo, !noalias !82687 ; 2 uses

bb.bo:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRSRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit139
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 16 dereferenceable(320) %i.gp)
          to label %bb.bx unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

.body:                                            ; preds = %bb.bq
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.thread325

bb.bq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRSRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.gr, ptr noundef nonnull align 16 dereferenceable(336) %i.j, i64 336, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvMsc_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_6Filter7try_new(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.k, ptr noundef nonnull %i.gr)
          to label %bb.br unwind label %.body

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.gv = load i64, ptr %i.l, align 16, !range !337, !noundef !315 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, -2
  %i.gx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.628, ptr noundef nonnull align 8 dereferenceable(40) %i.gx, i64 40, i1 false)
  br i1 %i.gw, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gy, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.628, i64 40, i1 false)
  store i64 -1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.628)
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.524.sroa.6.0..sroa.524.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.524.sroa.6.0..sroa.524.0..sroa_idx.sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.579.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.628, i64 40, i1 false)
  store i64 12, ptr %0, align 16
  %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gv, ptr %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.628)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_RNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.d

bb.bu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRSRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit144, %bb.bs
  %.sroa.040.9 = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRSRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit144 ], [ 0, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !82688)
  %.val.i141 = load ptr, ptr %i.el, align 8, !alias.scope !82688, !nonnull !315, !noundef !315 ; 2 uses
  %.val1.i = load i64, ptr %i.em, align 8, !alias.scope !82688, !noundef !315 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82689)
  %i.gz = icmp eq i64 %.val1.i, 0
  br i1 %i.gz, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_RNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.hb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ], [ 0, %bb.bu ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %.val.i141, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.hb = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.ha, align 8, !alias.scope !82689, !noalias !82688 ; 2 uses
  %i.hc = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.hc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i.i
  %i.hd = getelementptr i8, ptr %i.ha, i64 8
  %.val9.i.i.i = load ptr, ptr %i.hd, align 8, !alias.scope !82689, !noalias !82688, !nonnull !315, !noundef !315
  %i.he = shl nuw i64 %.val8.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.he, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !82690
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %bb.bv, %.lr.ph.i.i.i
  %i.hf = icmp eq i64 %i.hb, %.val1.i
  br i1 %i.hf, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_RNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_RNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %bb.bu
  %.val2.i142 = load i64, ptr %i.q, align 8, !range !322, !alias.scope !82688, !noundef !315 ; 2 uses
  %i.hg = icmp eq i64 %.val2.i142, 0
  br i1 %i.hg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_RNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.bw

bb.bw:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_RNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.hh = mul nuw i64 %.val2.i142, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i141, i64 noundef %i.hh, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !82688
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_RNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEEECsc85D0lJ81Z_16lance_datafusion.exit

bb.bx:                                            ; preds = %bb.bo
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.k) #73
          to label %.thread325 unwind label %bb.by

bb.by:                                            ; preds = %bb.bh, %.thread252, %bb.dc, %bb.cz, %.body122.thread, %bb.cg, %bb.bz, %bb.bx, %bb.bg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.bz:                                            ; preds = %bb.bl, %bb.bm
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.p) #73
          to label %.thread325 unwind label %bb.by

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueAINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEj1_ECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.bh, %bb.cb
  %.pn87 = phi { ptr, i32 } [ %i.hl, %bb.cb ], [ %i.gf, %bb.bh ] ; 2 uses
  %i.hj = icmp eq i64 %.sroa.4.0.i12.i.i, 0
  br i1 %i.hj, label %.thread325, label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueAINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEj1_ECsc85D0lJ81Z_16lance_datafusion.exit
  %i.hk = shl nuw i64 %.sroa.4.0.i12.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i11.i.i, i64 noundef %i.hk, i64 noundef range(i64 1, -9223372036854775807) 8) #71
  br label %.thread325

bb.cb:                                            ; preds = %bb.bj
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueAINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEj1_ECsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueAINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEj1_ECsc85D0lJ81Z_16lance_datafusion.exit136: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.hm = icmp eq i64 %.sroa.4.0.i12.i.i, 0
  br i1 %i.hm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRSRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit144, label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueAINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEj1_ECsc85D0lJ81Z_16lance_datafusion.exit136
  %i.hn = shl nuw i64 %.sroa.4.0.i12.i.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i11.i.i, i64 noundef %i.hn, i64 noundef range(i64 1, -9223372036854775807) 8) #71
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRSRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit144

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRSRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit144: ; preds = %bb.cc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueAINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEj1_ECsc85D0lJ81Z_16lance_datafusion.exit136
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  br label %bb.bu

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_RNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.bw, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_RNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_RNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEEECsc85D0lJ81Z_16lance_datafusion.exit, %bb.ap, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i, %bb.at
  %.sroa.040.10 = phi i8 [ %.sroa.040.9, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_RNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEEECsc85D0lJ81Z_16lance_datafusion.exit ], [ 1, %bb.ap ], [ 1, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnuEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i ], [ 1, %bb.at ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ho = icmp eq i64 %.sroa.0202.0.copyload204, 0
  br i1 %i.ho, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.cd

bb.cd:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.hp = mul nuw i64 %.sroa.0202.0.copyload204, 112
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7205.0.copyload209, i64 noundef %i.hp, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !82691, !inline_history !335
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.cd, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br i1 %.not82.not, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit176

bb.cf:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit175, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.040.12 = phi i8 [ %.sroa.040.10, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit175 ] ; 3 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.aa)
          to label %bb.cw unwind label %bb.cv

bb.cg:                                            ; preds = %bb.an, %.thread, %.thread221
  %.pn91230 = phi { ptr, i32 } [ %.pn83, %.thread221 ], [ %.pn89, %bb.an ], [ %i.cn, %.thread ]
  %.sroa.036.3229 = phi i1 [ true, %.thread221 ], [ %.sroa.036.5, %bb.an ], [ true, %.thread ]
  %.sroa.038.3228 = phi i1 [ true, %.thread221 ], [ false, %bb.an ], [ true, %.thread ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.s) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.by

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit157: ; preds = %bb.ck, %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !82692)
  %.val.i151 = load i64, ptr %i.v, align 8, !alias.scope !82692 ; 2 uses
  %i.hq = icmp eq i64 %.val.i151, 0
  br i1 %i.hq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.ch

bb.ch:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit157
  %.val1.i152 = load ptr, ptr %.sroa.4183.0..sroa_idx, align 8, !alias.scope !82692, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i152, i64 noundef %.val.i151, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !82692
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit

bb.ci:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(86) %i.ck, ptr noundef nonnull readonly align 1 dereferenceable(86) @538, i64 range(i64 0, -9223372036854775808) 86, i1 false), !noalias !82693
  store i64 86, ptr %i.v, align 8
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr %i.ck, ptr %.sroa.4183.0..sroa_idx, align 8
  %.sroa.5184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 86, ptr %.sroa.5184.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 0, ptr %i.u, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.559.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.v, ptr %i.t, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.463.0..sroa_idx, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.hr, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.467.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @184, ptr noundef nonnull %i.t)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit154 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82694)
  %.val.i155 = load i64, ptr %i.u, align 8, !alias.scope !82694 ; 2 uses
  %i.ht = icmp eq i64 %.val.i155, 0
  br i1 %i.ht, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit157, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.val1.i156 = load ptr, ptr %.sroa.458.0..sroa_idx, align 8, !alias.scope !82694, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i156, i64 noundef %.val.i155, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !82694
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit157

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit154: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !82695)
  %.val.i158 = load i64, ptr %i.u, align 8, !alias.scope !82695 ; 2 uses
  %i.hu = icmp eq i64 %.val.i158, 0
  br i1 %i.hu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit160, label %bb.cl

bb.cl:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit154
  %.val1.i159 = load ptr, ptr %.sroa.458.0..sroa_idx, align 8, !alias.scope !82695, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i159, i64 noundef %.val.i158, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !82695
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit160

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit160: ; preds = %bb.cl, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !82696)
  %.val.i161 = load i64, ptr %i.v, align 8, !alias.scope !82696 ; 2 uses
  %i.hv = icmp eq i64 %.val.i161, 0
  br i1 %i.hv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit163, label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit160
  %.val1.i162 = load ptr, ptr %.sroa.4183.0..sroa_idx, align 8, !alias.scope !82696, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i162, i64 noundef %.val.i161, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !82696
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit163

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit163: ; preds = %bb.cm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.hw, align 8
  store i64 -1, ptr %0, align 16
  br label %bb.co

bb.cn:                                            ; preds = %bb.co
  %i.hx = icmp eq i64 %i.hz, %.sroa.9.0.copyload213
  br i1 %i.hx, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i169, label %bb.co

bb.co:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit163, %bb.cn
  %.sroa.0.0.i.i164351 = phi i64 [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit163 ], [ %i.hz, %bb.cn ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [112 x i8], ptr %.sroa.7205.0.copyload209, i64 %.sroa.0.0.i.i164351
  %i.hz = add nuw nsw i64 %.sroa.0.0.i.i164351, 1 ; 4 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.hy) #74
          to label %bb.cn unwind label %bb.cq, !noalias !82697, !inline_history !0

bb.cp:                                            ; preds = %.lr.ph354
  %i.ia = add nuw nsw i64 %.sroa.0.1.i.i165352, 1 ; 2 uses
  %i.ib = icmp eq i64 %i.ia, %.sroa.9.0.copyload213
  br i1 %i.ib, label %.body.i166, label %.lr.ph354

bb.cq:                                            ; preds = %bb.co
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = icmp eq i64 %i.hz, %.sroa.9.0.copyload213
  br i1 %i.id, label %.body.i166, label %.lr.ph354

.lr.ph354:                                        ; preds = %bb.cq, %bb.cp
  %.sroa.0.1.i.i165352 = phi i64 [ %i.ia, %bb.cp ], [ %i.hz, %bb.cq ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [112 x i8], ptr %.sroa.7205.0.copyload209, i64 %.sroa.0.1.i.i165352
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.ie) #75
          to label %bb.cp unwind label %bb.cr, !noalias !82697, !inline_history !0

bb.cr:                                            ; preds = %.lr.ph354
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !82697, !inline_history !0
  unreachable

.body.i166:                                       ; preds = %bb.cp, %bb.cq
  %i.ig = icmp eq i64 %.sroa.0202.0.copyload204, 0
  br i1 %i.ig, label %.body122.thread, label %bb.cs

bb.cs:                                            ; preds = %.body.i166
  %i.ih = mul nuw i64 %.sroa.0202.0.copyload204, 112
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7205.0.copyload209, i64 noundef %i.ih, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !82697, !inline_history !335
  br label %.body122.thread

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i169: ; preds = %bb.cn
  %i.ii = icmp eq i64 %.sroa.0202.0.copyload204, 0
  br i1 %i.ii, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit175, label %bb.ct

bb.ct:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i169
  %i.ij = mul nuw i64 %.sroa.0202.0.copyload204, 112
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7205.0.copyload209, i64 noundef %i.ij, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !82697, !inline_history !335
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit175

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit175: ; preds = %bb.ct, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.cf

bb.cu:                                            ; preds = %.body122.thread, %.body122
  %.sroa.040.13 = phi i8 [ %.sroa.040.4, %.body122 ], [ %.sroa.040.2261, %.body122.thread ] ; 2 uses
  %.sroa.038.8 = phi i1 [ %.sroa.038.2, %.body122 ], [ %.sroa.038.0262, %.body122.thread ]
  %.pn97 = phi { ptr, i32 } [ %.pn93, %.body122 ], [ %.pn95263, %.body122.thread ] ; 2 uses
  br i1 %.sroa.038.8, label %.thread244, label %bb.db

bb.cv:                                            ; preds = %bb.cf
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.thread244

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit176: ; preds = %bb.cx, %bb.cw, %bb.ce
  %.sroa.040.11241 = phi i8 [ %.sroa.040.10, %bb.ce ], [ %.sroa.040.12, %bb.cw ], [ %.sroa.040.12, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.il = trunc nuw i8 %.sroa.040.11241 to i1
  br i1 %i.il, label %bb.cy, label %bb.d

bb.cw:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.val106 = load i64, ptr %i.ab, align 8         ; 2 uses
  %i.im = icmp eq i64 %.val106, 0
  br i1 %i.im, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit176, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.in = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val107 = load ptr, ptr %i.in, align 8, !nonnull !315, !noundef !315
  %i.io = shl nuw i64 %.val106, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val107, i64 noundef %i.io, i64 noundef range(i64 1, -9223372036854775807) 8) #71
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit176

bb.cy:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaEECsc85D0lJ81Z_16lance_datafusion.exit176
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 16 dereferenceable(320) %3)
end_hunk_2
begin_hunk_3_@_RNvMNtNtCsf6gb3FOA7sv_14datafusion_sql8relation4joinINtNtB6_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE10parse_joinB1h_:bb.a
bb.ch:                                            ; preds = %bb.cj
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.h) #73
          to label %.body188 unwind label %bb.co, !noalias !88004

bb.ci:                                            ; preds = %.noexc187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !88004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %i.i, i64 104, i1 false), !noalias !88004
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !88007
  %i.jg = call noundef align 8 dereferenceable_or_null(416) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 416, i64 noundef range(i64 1, 17) 8) #71, !noalias !88007 ; 4 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 416) #72
          to label %.noexc.i.i unwind label %bb.ch, !noalias !88004

.noexc.i.i:                                       ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.jg, ptr noundef nonnull align 8 dereferenceable(104) %i.i, i64 104, i1 false), !noalias !88004
  store i64 4, ptr %i.j, align 8, !noalias !88004
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.jg, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !88004
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !88004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !88004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !88004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !88004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !88005
  call void @llvm.experimental.noalias.scope.decl(metadata !88008)
  call void @llvm.experimental.noalias.scope.decl(metadata !88009)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !88010
  invoke fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBN_INtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvMNtNtCsf6gb3FOA7sv_14datafusion_sql8relation4joinINtNtB3d_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE10parse_joins0_0ENCB36_s1_0EINvMs_NtCs2bHstFFhpHt_17datafusion_common6columnNtB5X_6Column9from_nameRNtNtB1R_6string6StringEENtNtNtB9_6traits8iterator8Iterator4nextB4p_(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.i.i, !noalias !88004

.noexc7.i.i:                                      ; preds = %bb.ck
  %i.ji = load i64, ptr %i.f, align 8, !range !338, !noalias !88010, !noundef !315
  %.not5.i.i.i.i = icmp eq i64 %i.ji, -2
  br i1 %.not5.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc7.i.i, %.noexc8.i.i
  %i.jj = phi ptr [ %i.jo, %.noexc8.i.i ], [ %i.jg, %.noexc7.i.i ]
  %i.jk = phi i64 [ %i.jq, %.noexc8.i.i ], [ 1, %.noexc7.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !88010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false), !noalias !88010
  %i.jl = icmp samesign ult i64 %i.jk, 88686269585142076
  call void @llvm.assume(i1 %i.jl)
  %i.jm = load i64, ptr %i.j, align 8, !range !322, !alias.scope !88011, !noalias !88012, !noundef !315
  %i.jn = icmp eq i64 %i.jk, %i.jm
  br i1 %i.jn, label %bb.cm, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i, %.lr.ph.i.i.i.i
  %i.jo = phi ptr [ %.pre.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i ], [ %i.jj, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [104 x i8], ptr %i.jo, i64 %i.jk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.jp, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false), !noalias !88010
  %i.jq = add nuw nsw i64 %i.jk, 1                ; 2 uses
  store i64 %i.jq, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !88011, !noalias !88012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !88010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !88010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !88010
  invoke fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBN_INtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvMNtNtCsf6gb3FOA7sv_14datafusion_sql8relation4joinINtNtB3d_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE10parse_joins0_0ENCB36_s1_0EINvMs_NtCs2bHstFFhpHt_17datafusion_common6columnNtB5X_6Column9from_nameRNtNtB1R_6string6StringEENtNtNtB9_6traits8iterator8Iterator4nextB4p_(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc8.i.i unwind label %.loopexit.i.i, !noalias !88004

.noexc8.i.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  %i.jr = load i64, ptr %i.f, align 8, !range !338, !noalias !88010, !noundef !315
  %.not.i.i6.i.i = icmp eq i64 %i.jr, -2
  br i1 %.not.i.i6.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

bb.cl:                                            ; preds = %bb.cm
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.e) #73
          to label %.body.i.i186 unwind label %bb.cn, !noalias !88010

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.jk, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 104)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i unwind label %bb.cl, !noalias !88012

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i: ; preds = %bb.cm
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !88011, !noalias !88012
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !88010
  unreachable

.loopexit.i.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i186

.loopexit.split-lp.i.i:                           ; preds = %bb.ck
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i186

.body.i.i186:                                     ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.cl
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.js, %bb.cl ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.j) #73
          to label %.body188 unwind label %bb.co, !noalias !88004

bb.co:                                            ; preds = %.body.i.i186, %bb.ch
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !88004
  unreachable

.loopexit:                                        ; preds = %.noexc8.i.i, %.noexc7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !88010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !88004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !88006
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !88004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.jv = icmp ult i64 %.pre, 88686269585142076
  call void @llvm.assume(i1 %i.jv)
  %i.jw = icmp eq i64 %.pre, 0
  br i1 %i.jw, label %bb.cp, label %bb.cv

bb.cp:                                            ; preds = %.thread336, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.ae, ptr noundef nonnull align 16 dereferenceable(320) %2, i64 320, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.ad, ptr noundef nonnull align 16 dereferenceable(320) %3, i64 320, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !88013)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !88014
  %i.jx = invoke { ptr, i1 } @_RNvXs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilderINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB7_4plan11LogicalPlanE4from(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.ae)
          to label %bb.cq unwind label %bb.ct, !noalias !88015 ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  %i.jy = extractvalue { ptr, i1 } %i.jx, 0
  %i.jz = extractvalue { ptr, i1 } %i.jx, 1
  invoke void @_RNvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder10cross_join(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noundef nonnull %i.jy, i1 noundef zeroext %i.jz, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(320) %i.ad)
          to label %.noexc191 unwind label %.body193.thread293

.noexc191:                                        ; preds = %bb.cq
  %i.ka = load i64, ptr %i.d, align 8, !range !320, !noalias !88014, !noundef !315 ; 2 uses
  %.not.i190 = icmp eq i64 %i.ka, -1
  %i.kb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !88014 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ke = load i8, ptr %i.kd, align 8, !noalias !88014 ; 2 uses
  br i1 %.not.i190, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.noexc191
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.621.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.617.0..sroa_idx.i, i64 23, i1 false), !noalias !88016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88014
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ka, ptr %i.kf, align 8, !alias.scope !88013, !noalias !88016
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kc, ptr %.sroa.419.0..sroa_idx.i, align 16, !alias.scope !88013, !noalias !88016
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.ke, ptr %.sroa.520.0..sroa_idx.i, align 8, !alias.scope !88013, !noalias !88016
  store i64 -1, ptr %0, align 16, !alias.scope !88013, !noalias !88016
  br label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i

bb.cs:                                            ; preds = %.noexc191
  %i.kg = trunc nuw i8 %i.ke to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88014
  invoke void @_RNvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder5build(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %0, ptr noundef nonnull %i.kc, i1 noundef zeroext %i.kg)
          to label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %.body193.thread293

bb.ct:                                            ; preds = %bb.cp
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.ad) #73
          to label %.body193.thread unwind label %bb.cu, !noalias !88017

bb.cu:                                            ; preds = %bb.ct
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !88017
  unreachable

bb.cv:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.ab, ptr noundef nonnull align 16 dereferenceable(320) %2, i64 320, i1 false)
  %i.ki = invoke { ptr, i1 } @_RNvXs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilderINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB7_4plan11LogicalPlanE4from(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.ab)
          to label %bb.cy unwind label %.body193.thread293 ; 2 uses

.body193.thread293:                               ; preds = %bb.cs, %bb.cv, %bb.cq
  %.sroa.089.10.ph = phi i8 [ 0, %bb.cq ], [ 1, %bb.cv ], [ 0, %bb.cs ]
  %lpad.thr_comm291 = landingpad { ptr, i32 }
          cleanup
  br label %.body193.thread

.body193:                                         ; preds = %bb.cy, %bb.dc
  %lpad.thr_comm.split-lp292 = landingpad { ptr, i32 }
          cleanup
  br label %.body188

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.cs, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.experimental.noalias.scope.decl(metadata !88018)
  %.val2.i = load i64, ptr %i.ag, align 8, !range !322, !alias.scope !88018, !noundef !315 ; 2 uses
  %i.kj = icmp eq i64 %.val2.i, 0
  br i1 %i.kj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.cw

bb.cw:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val.i195 = load ptr, ptr %i.kk, align 8, !alias.scope !88018, !nonnull !315, !noundef !315
  %i.kl = mul nuw i64 %.val2.i, 104
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i195, i64 noundef %i.kl, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !88018
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.dc, %bb.cw, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %.val173 = load ptr, ptr %i.ah, align 8         ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val174 = load i64, ptr %i.km, align 8, !noundef !315 ; 4 uses
  %i.kn = icmp eq i64 %.val174, 0
  br i1 %i.kn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetRNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsc85D0lJ81Z_16lance_datafusion.exit
  %i.ko = shl i64 %.val174, 3
  %i.kp = icmp slt i64 %.val174, 2305843009213693950
  call void @llvm.assume(i1 %i.kp)
  %i.kq = and i64 %i.ko, -16                      ; 2 uses
  %i.kr = add i64 %i.kq, 16                       ; 2 uses
  %i.ks = add nsw i64 %.val174, 17
  %i.kt = add i64 %i.ks, %i.kr                    ; 4 uses
  %i.ku = icmp uge i64 %i.kt, %i.kr
  %i.kv = icmp ult i64 %i.kt, 9223372036854775793
  call void @llvm.assume(i1 %i.ku)
  call void @llvm.assume(i1 %i.kv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val173) ]
  %i.kw = icmp eq i64 %i.kt, 0
  br i1 %i.kw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetRNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.cx

bb.cx:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.kx = sub nuw nsw i64 -16, %i.kq
  %i.ky = getelementptr inbounds i8, ptr %.val173, i64 %i.kx
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ky, i64 noundef %i.kt, i64 noundef range(i64 1, -9223372036854775807) 16) #71
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetRNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit

bb.cy:                                            ; preds = %bb.cv
  %i.kz = extractvalue { ptr, i1 } %i.ki, 0
  %i.la = extractvalue { ptr, i1 } %i.ki, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.aa, ptr noundef nonnull align 16 dereferenceable(320) %3, i64 320, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  invoke void @_RNvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder10join_using(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ac, ptr noundef nonnull %i.kz, i1 noundef zeroext %i.la, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.aa, i8 noundef %5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z)
          to label %bb.cz unwind label %.body193

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.lb = load i64, ptr %i.ac, align 8, !range !320, !noundef !315 ; 2 uses
  %.not159 = icmp eq i64 %i.lb, -1
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8            ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.lf = load i8, ptr %i.le, align 8             ; 2 uses
  br i1 %.not159, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.sroa.6141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 17
  %.sroa.6145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6145.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6141.0..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.lb, ptr %i.lg, align 8
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ld, ptr %.sroa.4143.0..sroa_idx, align 16
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.lf, ptr %.sroa.5144.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %.val = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val172 = load i64, ptr %i.lh, align 8, !noundef !315 ; 4 uses
  %i.li = icmp eq i64 %.val172, 0
  br i1 %i.li, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetRNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit201, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i200

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i200: ; preds = %bb.da
  %i.lj = shl i64 %.val172, 3
  %i.lk = icmp slt i64 %.val172, 2305843009213693950
  call void @llvm.assume(i1 %i.lk)
  %i.ll = and i64 %i.lj, -16                      ; 2 uses
  %i.lm = add i64 %i.ll, 16                       ; 2 uses
  %i.ln = add nsw i64 %.val172, 17
  %i.lo = add i64 %i.ln, %i.lm                    ; 4 uses
  %i.lp = icmp uge i64 %i.lo, %i.lm
  %i.lq = icmp ult i64 %i.lo, 9223372036854775793
  call void @llvm.assume(i1 %i.lp)
  call void @llvm.assume(i1 %i.lq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.lr = icmp eq i64 %i.lo, 0
  br i1 %i.lr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetRNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit201, label %bb.db

bb.db:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i200
  %i.ls = sub nuw nsw i64 -16, %i.ll
  %i.lt = getelementptr inbounds i8, ptr %.val, i64 %i.ls
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lt, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 16) #71
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetRNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit201

bb.dc:                                            ; preds = %bb.cz
  %i.lu = trunc nuw i8 %i.lf to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder5build(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %0, ptr noundef nonnull %i.ld, i1 noundef zeroext %i.lu)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsc85D0lJ81Z_16lance_datafusion.exit unwind label %.body193

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetRNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.cx, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.be

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetRNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit201: ; preds = %bb.db, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i200, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.be

.body193.thread:                                  ; preds = %bb.ct, %.body193.thread293
  %eh.lpad-body194290 = phi { ptr, i32 } [ %lpad.thr_comm291, %.body193.thread293 ], [ %lpad.thr_comm.split-lp.i, %bb.ct ]
  %.sroa.089.10.lpad-body289 = phi i8 [ %.sroa.089.10.ph, %.body193.thread293 ], [ 0, %bb.ct ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #73
          to label %.body188 unwind label %bb.bh

bb.dd:                                            ; preds = %bb.am
  %i.lv = extractvalue { ptr, i1 } %i.du, 0
  %i.lw = extractvalue { ptr, i1 } %i.du, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !88019
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.b, ptr noundef nonnull align 16 dereferenceable(320) %3, i64 320, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !88019
  store i64 -2, ptr %i.c, align 16, !alias.scope !88020, !noalias !88021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88019
  store i64 0, ptr %i.a, align 8, !noalias !88019
  %.sroa.4.0..sroa_idx.i202 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i202, align 8, !noalias !88019
  %.sroa.5.0..sroa_idx.i203 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0..sroa_idx.i204 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i203, i8 0, i64 16, i1 false), !noalias !88019
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i204, align 8, !noalias !88019
  %.sroa.53.0..sroa_idx.i205 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i205, align 8, !noalias !88019
  invoke fastcc void @_RINvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder13join_detailedNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnB1E_ECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.y, ptr noundef nonnull %i.lv, i1 noundef zeroext %i.lw, ptr noalias noundef align 16 captures(address) dereferenceable(320) %i.b, i8 noundef range(i8 0, 8) %5, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef align 16 captures(address) dereferenceable(112) %i.c)
          to label %bb.de unwind label %bb.bj

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !88019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !88019
  %i.lx = load i64, ptr %i.y, align 8, !range !320, !noundef !315 ; 2 uses
  %.not = icmp eq i64 %i.lx, -1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8            ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.mb = load i8, ptr %i.ma, align 8             ; 2 uses
  br i1 %.not, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.sroa.6153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 17
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6157.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6153.0..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.lx, ptr %i.mc, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.lz, ptr %.sroa.4155.0..sroa_idx, align 16
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.mb, ptr %.sroa.5156.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 16
  br label %bb.be

bb.dg:                                            ; preds = %bb.de
  %i.md = trunc nuw i8 %i.mb to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RNvMs_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder5build(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %0, ptr noundef nonnull %i.lz, i1 noundef zeroext %i.md)
          to label %bb.be unwind label %bb.bj

.thread.thread:                                   ; preds = %bb.ce, %.body.i.i, %bb.ah, %bb.ak, %.body.i, %bb.br, %bb.bm, %.thread
  %.pn168255 = phi { ptr, i32 } [ %.pn168, %.thread ], [ %lpad.thr_comm.split-lp281, %bb.br ], [ %lpad.thr_comm, %bb.bm ], [ %lpad.phi.i, %bb.ce ], [ %i.dk, %.body.i.i ], [ %.pn.i, %bb.ak ], [ %.pn.i, %.body.i ], [ %i.dk, %bb.ah ]
  %.sroa.091.6254 = phi i8 [ %.sroa.091.6, %.thread ], [ 0, %bb.br ], [ 1, %bb.bm ], [ 1, %bb.ce ], [ 1, %.body.i.i ], [ 1, %bb.ak ], [ 1, %.body.i ], [ 1, %bb.ah ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 16 dereferenceable(320) %3) #73
          to label %bb.bl unwind label %bb.bh

bb.dh:                                            ; preds = %bb.di, %bb.bl
  %.pn170263 = phi { ptr, i32 } [ %.pn170264, %bb.di ], [ %.pn170, %bb.bl ]
  resume { ptr, i32 } %.pn170263

bb.di:                                            ; preds = %.thread260, %bb.bl
  %.pn170264 = phi { ptr, i32 } [ %i.ey, %.thread260 ], [ %.pn170, %bb.bl ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 16 dereferenceable(320) %2) #73
          to label %bb.dh unwind label %bb.bh
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsf6gb3FOA7sv_14datafusion_sql8relation4joinINtNtB6_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE16parse_cross_joinB1h_(ptr dead_on_unwind noalias noundef nonnull writable align 16 captures(none) dereferenceable(320) %0, ptr noalias noundef nonnull align 16 captures(address) dead_on_return dereferenceable(320) %1, ptr noalias noundef nonnull align 16 captures(address) dead_on_return dereferenceable(320) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
end_hunk_3
begin_hunk_4_@_RNvNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json26json_get_int_columnar_impl:bb.a
  store i64 12, ptr %i.ag, align 8, !noalias !96738
  %.not.i.i = icmp eq i64 %i.ae, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !96738
  store ptr %i.s, ptr %i.r, align 8, !noalias !96738
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !96738
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.t, ptr %i.ah, align 8, !noalias !96738
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !96738
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull @892, ptr noundef nonnull %i.r)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !96738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !96737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !96737
  %.sroa.11.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !96739
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8, !noalias !96739
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !noalias !96739
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !noalias !96739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !96737
  br label %bb.bg

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !96737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !96737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !96737
  %i.ai = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac)
          to label %.noexc28 unwind label %bb.bf  ; 2 uses

.noexc28:                                         ; preds = %bb.c
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0      ; 9 uses
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !96740
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !315, !noalias !96741, !nonnull !315
  invoke void %i.am(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.q, ptr noundef %i.aj)
          to label %.noexc29 unwind label %bb.bf, !inline_history !96689

.noexc29:                                         ; preds = %.noexc28
  %i.an = load i128, ptr %i.q, align 16, !noalias !96740, !noundef !315
  %i.ao = icmp eq i128 %i.an, 126164052404106896239213216138621634160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !96740
  br i1 %i.ao, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc29
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !96742
  %i.ap = call noundef dereferenceable_or_null(34) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 34, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !96742 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.ap, ptr noundef nonnull align 1 dereferenceable(34) @409, i64 34, i1 false), !noalias !96743
  %i.ar = ptrtoint ptr %i.ap to i64
  br label %bb.bg

bb.f:                                             ; preds = %.noexc29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.at = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as)
          to label %.noexc31 unwind label %bb.bf  ; 2 uses

.noexc31:                                         ; preds = %bb.f
  %i.au = extractvalue { ptr, ptr } %i.at, 0      ; 3 uses
  %i.av = extractvalue { ptr, ptr } %i.at, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !96744
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !315, !noalias !96745, !nonnull !315
  invoke void %i.ax(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noundef %i.au)
          to label %.noexc32 unwind label %bb.bf, !inline_history !96689

.noexc32:                                         ; preds = %.noexc31
  %i.ay = load i128, ptr %i.p, align 16, !noalias !96744, !noundef !315
  %i.az = icmp eq i128 %i.ay, -7452801274563340147934147702000895189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !96744
  br i1 %i.az, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !96746
  store i64 2, ptr %i.n, align 8, !noalias !96746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !96746
  store ptr %i.n, ptr %i.m, align 8, !noalias !96746
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !96746
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noundef nonnull @410, ptr noundef nonnull %i.m)
          to label %.noexc33 unwind label %bb.bf

.noexc33:                                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !96746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !96746
  %.sroa.7123.0.copyload.i = load ptr, ptr %i.ba, align 8, !noalias !96737
  %i.bb = ptrtoint ptr %.sroa.7123.0.copyload.i to i64
  %.sroa.18.16.copyload = load i64, ptr %i.af, align 8, !noalias !96739
  %.sroa.25.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.25.16.copyload = load i64, ptr %.sroa.25.16..sroa_idx, align 8, !noalias !96739
  %.sroa.29.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.29.16.copyload = load i64, ptr %.sroa.29.16..sroa_idx, align 8, !noalias !96739
  br label %bb.bg

bb.h:                                             ; preds = %.noexc32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !96737
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !96736, !noundef !315
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nsw i64 %i.be, -1                   ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96747)
  %i.bg = shl i64 %i.bf, 3                        ; 5 uses
  %i.bh = icmp ugt i64 %i.bf, 2305843009213693951
  %.not.i.i.i = icmp ugt i64 %i.bg, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.bh, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %.invoke, label %bb.i, !prof !317

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !96748
  %i.bj = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !96748 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %.invoke, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = ptrtoint ptr %i.bj to i64
  br label %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i

.invoke:                                          ; preds = %bb.h, %bb.j, %bb.d
  %i.bm = phi i64 [ 1, %bb.d ], [ 8, %bb.j ], [ 0, %bb.h ]
  %i.bn = phi i64 [ 34, %bb.d ], [ %i.bg, %bb.j ], [ %i.bg, %bb.h ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bn) #72
          to label %.cont unwind label %bb.bf

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.k, %bb.i
  %.sroa.10.0.i.i = phi i64 [ %i.bl, %bb.k ], [ 8, %bb.i ]
  %.sroa.4.0.i.i = phi i64 [ %i.bf, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %i.bo = inttoptr i64 %.sroa.10.0.i.i to ptr
  %i.bp = icmp samesign ule i64 %i.bf, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.bp)
  store i64 %.sroa.4.0.i.i, ptr %i.y, align 8, !alias.scope !96747, !noalias !96737
  %.sroa.4.0..sroa_idx.i109.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.bo, ptr %.sroa.4.0..sroa_idx.i109.i, align 8, !alias.scope !96747, !noalias !96737
  %.sroa.5.0..sroa_idx.i110.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !96747, !noalias !96737
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i110.i, i8 0, i64 16, i1 false), !alias.scope !96747, !noalias !96737
  store i64 %i.bf, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !96747, !noalias !96737
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 5, i64 24, i1 false), !alias.scope !96747, !noalias !96737
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.471.sroa.4.0..sroa.471.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sink2.i.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sink2.i.i.sroa.gep60.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sink2.i.i52.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sink2.i.i52.sroa.gep64.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.42.0..sroa_idx.i.i117.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.6.i.sroa.4.0..sroa.6.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.i.sroa.5.0..sroa.6.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.42.0..sroa_idx.i48.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.462.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.462.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.l

._crit_edge.i:                                    ; preds = %bb.bc, %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !96737
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE6finishCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.v, ptr noalias noundef align 8 dereferenceable(104) %i.y)
          to label %bb.o unwind label %.loopexit.split-lp.i, !noalias !96736

bb.l:                                             ; preds = %bb.bc, %.lr.ph.i
  %.sroa.068.0176.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cc, %bb.bc ] ; 7 uses
  %i.cc = add nuw nsw i64 %.sroa.068.0176.i, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96749)
  %i.cd = load ptr, ptr %i.br, align 8, !alias.scope !96750, !noalias !96736, !noundef !315
  %.not.i.i111.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i111.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = load i64, ptr %i.bs, align 8, !alias.scope !96749, !noalias !96736, !noundef !315
  %i.cf = icmp ult i64 %.sroa.068.0176.i, %i.ce
  br i1 %i.cf, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.n, !prof !321

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @479, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @481) #72
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !96736

.noexc.i:                                         ; preds = %bb.n
  unreachable

.loopexit.i:                                      ; preds = %bb.bb, %.invoke224.i, %bb.aa, %.invoke.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.z, %bb.n, %._crit_edge.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ag, %.body.i.i, %bb.q, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ck, %bb.q ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.ag ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.y) #73
          to label %.body unwind label %bb.be, !noalias !96736

bb.o:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !96737
  store i64 1, ptr %i.u, align 8, !noalias !96737
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %i.cg, align 8, !noalias !96737
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ch, ptr noundef nonnull align 8 dereferenceable(96) %i.v, i64 96, i1 false), !noalias !96737
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !96751
  %i.ci = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !96751 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.p, label %bb.s, !prof !316

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #72
          to label %.noexc112.i unwind label %bb.q, !noalias !96736

.noexc112.i:                                      ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ch)
          to label %.body.i unwind label %bb.r, !noalias !96736

bb.r:                                             ; preds = %bb.q
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !96736
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ci, ptr noundef nonnull align 8 dereferenceable(112) %i.u, i64 112, i1 false), !noalias !96736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !96737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !96737
  call void @llvm.experimental.noalias.scope.decl(metadata !96752)
  %.val.i.i = load i64, ptr %i.y, align 8, !alias.scope !96752, !noalias !96737 ; 2 uses
  %i.cm = icmp eq i64 %.val.i.i, 0
  br i1 %i.cm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val2.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i109.i, align 8, !alias.scope !96752, !noalias !96737, !nonnull !315, !noundef !315
  %i.cn = shl nuw i64 %.val.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !96753
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.t, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !range !323, !alias.scope !96754, !noalias !96737, !noundef !315
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.co)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.v, !noalias !96736

bb.v:                                             ; preds = %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.bq) #73
          to label %.body unwind label %bb.w, !noalias !96736

bb.w:                                             ; preds = %bb.v
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !96736
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.bq)
          to label %bb.bh unwind label %bb.bf

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.m
  %i.ct = load ptr, ptr %i.bt, align 8, !alias.scope !96749, !noalias !96736, !noundef !315
  %i.cu = load i64, ptr %i.bu, align 8, !alias.scope !96749, !noalias !96736, !noundef !315
  %i.cv = add i64 %i.cu, %.sroa.068.0176.i        ; 2 uses
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !96755, !noundef !315
  %i.cz = trunc i64 %i.cv to i8
  %i.da = and i8 %i.cz, 7
  %i.db = xor i8 %i.cy, -1
  %i.dc = lshr i8 %i.db, %i.da
  %i.dd = trunc i8 %i.dc to i1
  br i1 %i.dd, label %.invoke.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.l
  %i.de = invoke fastcc { ptr, i64 } @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common19get_string_value_at(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.au, i64 noundef %.sroa.068.0176.i)
          to label %bb.x unwind label %.loopexit.i, !noalias !96736 ; 2 uses

.invoke.i:                                        ; preds = %bb.x, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE11append_nullCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.y)
          to label %bb.bc unwind label %.loopexit.i, !noalias !96736

bb.x:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.df = extractvalue { ptr, i64 } %i.de, 0      ; 2 uses
  %i.dg = extractvalue { ptr, i64 } %i.de, 1
  %.not103.i = icmp eq ptr %i.df, null
  br i1 %.not103.i, label %.invoke.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !96756)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !96737
  store i64 %.sroa.068.0176.i, ptr %i.l, align 8, !noalias !96757
  %i.dh = load i64, ptr %i.bc, align 8, !alias.scope !96756, !noalias !96736, !noundef !315
  %i.di = lshr i64 %i.dh, 3                       ; 2 uses
  %i.dj = add nsw i64 %i.di, -1                   ; 2 uses
  %i.dk = icmp ult i64 %.sroa.068.0176.i, %i.dj
  br i1 %i.dk, label %bb.aa, label %bb.z, !prof !321

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !96757
  store i64 %i.dj, ptr %i.k, align 8, !noalias !96757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !96757
  store ptr %i.l, ptr %i.j, align 8, !noalias !96757
  %.sroa.42.0..sroa_idx.i114.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i114.i, align 8, !noalias !96757
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @737, ptr %i.dl, align 8, !noalias !96757
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !96757
  %i.dm = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr @739, ptr %i.dm, align 8, !noalias !96757
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !96757
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.k, ptr %i.dn, align 8, !noalias !96757
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !96757
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @740, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @741) #72
          to label %.noexc115.i unwind label %.loopexit.split-lp.i, !noalias !96736

.noexc115.i:                                      ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !96758)
  %i.do = load ptr, ptr %i.bv, align 8, !alias.scope !96759, !noalias !96736, !noundef !315 ; 2 uses
  %i.dp = icmp samesign ult i64 %i.cc, %i.di
  call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.cc
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !96760, !noundef !315
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.sroa.068.0176.i
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !96760, !noundef !315 ; 2 uses
  %i.du = load ptr, ptr %i.bw, align 8, !alias.scope !96759, !noalias !96736, !noundef !315
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %i.dt
  %i.dw = sub i64 %i.dr, %i.dt                    ; 2 uses
  %i.dx = icmp sgt i64 %i.dw, -1
  call void @llvm.assume(i1 %i.dx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !96737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !96737
  store ptr %i.dv, ptr %i.x, align 8, !noalias !96737
  store i64 %i.dw, ptr %i.bx, align 8, !noalias !96737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !96737
  invoke fastcc void @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common21get_json_value_by_key(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.df, i64 noundef %i.dg)
          to label %bb.ab unwind label %.loopexit.i, !noalias !96736

bb.ab:                                            ; preds = %bb.aa
  %i.dy = load i64, ptr %i.w, align 8, !range !320, !noalias !96737, !noundef !315 ; 2 uses
  %.not104.i = icmp eq i64 %i.dy, -1
  %.sroa.070.0.copyload.i = load i64, ptr %i.by, align 8, !noalias !96737 ; 7 uses
  %.sroa.471.sroa.0.0.copyload.i = load ptr, ptr %.sroa.471.0..sroa_idx.i, align 8, !noalias !96737 ; 5 uses
  %.sroa.471.sroa.4.0.copyload.i = load i64, ptr %.sroa.471.sroa.4.0..sroa.471.0..sroa_idx.sroa_idx.i, align 8, !noalias !96737 ; 2 uses
  br i1 %.not104.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.679.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.679.0.copyload.i = load i64, ptr %.sroa.679.0..sroa_idx.i, align 8, !noalias !96737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !96737
  %i.dz = ptrtoint ptr %.sroa.471.sroa.0.0.copyload.i to i64
  store i64 %i.dz, ptr %.sroa.18, align 8, !alias.scope !96736, !noalias !96739
  br label %bb.bd

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !96737
  %.not105.i = icmp eq i64 %.sroa.070.0.copyload.i, -1
  br i1 %.not105.i, label %.invoke224.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !96761
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.471.sroa.0.0.copyload.i) ]
  store ptr %.sroa.471.sroa.0.0.copyload.i, ptr %i.i, align 8, !noalias !96761
  store i64 %.sroa.471.sroa.4.0.copyload.i, ptr %i.bz, align 8, !noalias !96761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !96761
  invoke void @_RNvMNtNtCskKR1pP4skmg_5jsonb9functions6scalarNtNtB6_3raw8RawJsonb7is_null(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.ah unwind label %bb.af, !noalias !96762

bb.af:                                            ; preds = %bb.an, %bb.ae
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.aq, %bb.aj, %bb.af
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ed, %bb.aj ], [ %i.ea, %bb.af ], [ %i.ep, %bb.aq ] ; 2 uses
  %i.eb = icmp eq i64 %.sroa.070.0.copyload.i, 0
  br i1 %i.eb, label %.body.i, label %bb.ag

bb.ag:                                            ; preds = %.body.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.471.sroa.0.0.copyload.i, i64 noundef %.sroa.070.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !96762
  br label %.body.i

bb.ah:                                            ; preds = %bb.ae
  %i.ec = load i64, ptr %i.h, align 8, !range !383, !noalias !96761, !noundef !315
  %.not.i116.i = icmp eq i64 %i.ec, -1
  br i1 %.not.i116.i, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !96761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !96761
  call void @llvm.experimental.noalias.scope.decl(metadata !96763)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !96761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !96764
  store ptr %i.f, ptr %i.c, align 8, !noalias !96764
  store ptr @_RNvXs1_NtCskKR1pP4skmg_5jsonb5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i117.i, align 8, !noalias !96764
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @401, ptr noundef nonnull %i.c)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i unwind label %bb.aj, !noalias !96765

bb.aj:                                            ; preds = %bb.ai
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #73, !noalias !96765
  br label %.body.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !96764
  %.sroa.4.8.copyload.i.i = load i8, ptr %i.d, align 8, !noalias !96766
  %.sroa.6.i.sroa.0.0.copyload.i = load i56, ptr %.sroa.6.8..sroa_idx.i.i, align 1, !noalias !96761
  %.sroa.6.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.6.i.sroa.4.0..sroa.6.8..sroa_idx.i.sroa_idx.i, align 8, !noalias !96761
  %.sroa.6.i.sroa.5.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.i.sroa.5.0..sroa.6.8..sroa_idx.i.sroa_idx.i, align 8, !noalias !96761
  call void @llvm.experimental.noalias.scope.decl(metadata !96767)
  %i.ee = load i64, ptr %i.f, align 8, !range !385, !alias.scope !96768, !noalias !96769, !noundef !315 ; 5 uses
  %i.ef = add nsw i64 %i.ee, 9223372036854775789
  %i.eg = icmp ugt i64 %i.ee, -9223372036854775790
  %i.eh = select i1 %i.eg, i64 %i.ef, i64 18
  switch i64 %i.eh, label %bb.ak [
    i64 0, label %bb.ax
    i64 1, label %bb.ax
    i64 2, label %bb.ax
    i64 3, label %bb.ax
    i64 4, label %bb.ax
    i64 5, label %bb.ax
    i64 6, label %bb.ax
    i64 7, label %bb.ax
    i64 8, label %bb.ax
    i64 9, label %bb.ax
    i64 10, label %bb.ax
    i64 11, label %bb.ax
    i64 12, label %bb.ax
    i64 13, label %bb.ax
    i64 14, label %bb.ax
    i64 15, label %bb.ax
    i64 16, label %bb.ax
    i64 17, label %bb.al
  ]

bb.ak:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.ei = icmp ne i64 %i.ee, -9223372036854775792
  call void @llvm.assume(i1 %i.ei)
  %or.cond.i.i.i.i.i = icmp slt i64 %i.ee, 1
  br i1 %or.cond.i.i.i.i.i, label %bb.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.sink2.i.i.sroa.phi.i.i = phi ptr [ %.sink2.i.i.sroa.gep.i.i, %bb.al ], [ %.sink2.i.i.sroa.gep60.i.i, %bb.ak ]
  %.val.i.sink.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %bb.al ], [ %i.ee, %bb.ak ]
  %.val1.i.i.i.i.i = load ptr, ptr %.sink2.i.i.sroa.phi.i.i, align 8, !alias.scope !96768, !noalias !96769, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.sink.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !96770
  br label %bb.ax

bb.al:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.val.i.i.i.i.i = load i64, ptr %.sink2.i.i.sroa.gep60.i.i, align 8, !alias.scope !96771, !noalias !96769 ; 2 uses
  %i.ej = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ej, label %bb.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i

bb.am:                                            ; preds = %bb.ah
  %i.ek = load i8, ptr %i.ca, align 8, !range !327, !noalias !96761, !noundef !315
  %i.el = trunc nuw i8 %i.ek to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !96761
  br i1 %i.el, label %bb.aw, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !96761
  invoke void @_RNvMNtNtCskKR1pP4skmg_5jsonb9functions6scalarNtNtB6_3raw8RawJsonb6to_i64(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.ao unwind label %bb.af, !noalias !96762

bb.ao:                                            ; preds = %bb.an
  %i.em = load i64, ptr %i.g, align 8, !range !383, !noalias !96761, !noundef !315 ; 2 uses
  %.not42.i.i = icmp eq i64 %i.em, -1
  %i.en = load i64, ptr %i.cb, align 8, !noalias !96761 ; 2 uses
  br i1 %.not42.i.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eo = load <2 x i64>, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !96761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !96761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !96761
  store i64 %i.em, ptr %i.e, align 8, !noalias !96761
  store i64 %i.en, ptr %.sink2.i.i52.sroa.gep64.i.i, align 8, !noalias !96761
  store <2 x i64> %i.eo, ptr %.sink2.i.i52.sroa.gep.i.i, align 8, !noalias !96761
  call void @llvm.experimental.noalias.scope.decl(metadata !96772)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !96761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96773
  store ptr %i.e, ptr %i.a, align 8, !noalias !96773
  store ptr @_RNvXs1_NtCskKR1pP4skmg_5jsonb5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i48.i.i, align 8, !noalias !96773
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @402, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i49.i.i unwind label %bb.aq, !noalias !96774

bb.aq:                                            ; preds = %bb.ap
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e) #73, !noalias !96774
  br label %.body.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i49.i.i: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96773
  %.sroa.462.i.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !96775 ; 2 uses
  %.sroa.462.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.462.i.sroa.4.0..sroa_idx.i, align 8, !noalias !96775
  %.sroa.462.i.sroa.5.0.copyload.i = load i64, ptr %.sroa.462.i.sroa.5.0..sroa_idx.i, align 8, !noalias !96775
  call void @llvm.experimental.noalias.scope.decl(metadata !96776)
  %i.eq = load i64, ptr %i.e, align 8, !range !385, !alias.scope !96777, !noalias !96778, !noundef !315 ; 5 uses
  %i.er = add nsw i64 %i.eq, 9223372036854775789
  %i.es = icmp ugt i64 %i.eq, -9223372036854775790
  %i.et = select i1 %i.es, i64 %i.er, i64 18
  switch i64 %i.et, label %bb.ar [
    i64 0, label %bb.av
    i64 1, label %bb.av
    i64 2, label %bb.av
    i64 3, label %bb.av
    i64 4, label %bb.av
    i64 5, label %bb.av
    i64 6, label %bb.av
    i64 7, label %bb.av
    i64 8, label %bb.av
    i64 9, label %bb.av
    i64 10, label %bb.av
    i64 11, label %bb.av
    i64 12, label %bb.av
    i64 13, label %bb.av
    i64 14, label %bb.av
    i64 15, label %bb.av
    i64 16, label %bb.av
end_hunk_4
begin_hunk_5_@_RNvNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json28json_get_float_columnar_impl:bb.a
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXNtCs8SUNSmrkv52_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !97019
  %i.eb = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.q, ptr %i.eb, align 8, !noalias !97019
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !97019
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @744, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @745) #72
          to label %bb.z unwind label %bb.y, !noalias !97022

bb.y:                                             ; preds = %bb.x
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.p) #73
          to label %.body.i.i.i unwind label %bb.aa, !noalias !97022

bb.z:                                             ; preds = %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !97022
  unreachable

bb.ab:                                            ; preds = %bb.ae, %bb.ad, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE13is_compatibleCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ab, %bb.y, %bb.u
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ee, %bb.ab ], [ %.pn.i.i.i.i.i, %bb.u ], [ %i.ec, %bb.y ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.db) #73
          to label %.body5.i.i.i unwind label %bb.ao, !noalias !97012

bb.ac:                                            ; preds = %.noexc.i17.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !97018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !97018
  %i.ef = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !97018, !noundef !315 ; 3 uses
  store i64 %i.eg, ptr %i.t, align 8, !noalias !97018
  %i.eh = icmp ult i64 %i.eg, 384307168202282326
  call void @llvm.assume(i1 %i.eh)
  %i.ei = icmp eq i64 %i.eg, 1
  br i1 %i.ei, label %bb.ae, label %bb.ad, !prof !321

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @518, ptr noundef nonnull @4482, ptr nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4483) #72
          to label %bb.af unwind label %bb.ab, !noalias !97022

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !97018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !97018
  store i64 0, ptr %i.ef, align 8, !noalias !97018
  %i.ej = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !97018, !nonnull !315, !noundef !315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i64 24, i1 false), !noalias !97022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !97018
  invoke fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferdE3newCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s, i64 noundef %i.dv, i64 noundef %i.dt)
          to label %bb.ag unwind label %bb.ab, !noalias !97022

bb.af:                                            ; preds = %bb.ad
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !97023
  %i.el = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.el, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.dw, i64 48, i1 false), !noalias !97024
  %i.em = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !97023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !97018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !97018
  %i.en = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !97011, !nonnull !315, !noundef !315 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !97011, !noundef !315 ; 4 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %.lr.ph

bb.ah:                                            ; preds = %.lr.ph
  %i.es = icmp eq i64 %i.eu, %i.eq
  br i1 %i.es, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag, %bb.ah
  %.sroa.0.0.i.i.i.i.i183 = phi i64 [ %i.eu, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.et = getelementptr inbounds nuw [136 x i8], ptr %i.eo, i64 %.sroa.0.0.i.i.i.i.i183
  %i.eu = add i64 %.sroa.0.0.i.i.i.i.i183, 1      ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(136) %i.et) #74
          to label %bb.ah unwind label %bb.aj, !noalias !97025, !inline_history !223

bb.ai:                                            ; preds = %.lr.ph185
  %i.ev = add i64 %.sroa.0.1.i.i.i.i.i184, 1      ; 2 uses
  %i.ew = icmp eq i64 %i.ev, %i.eq
  br i1 %i.ew, label %.body.i.i.i.i, label %.lr.ph185

bb.aj:                                            ; preds = %.lr.ph
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = icmp eq i64 %i.eu, %i.eq
  br i1 %i.ey, label %.body.i.i.i.i, label %.lr.ph185

.lr.ph185:                                        ; preds = %bb.aj, %bb.ai
  %.sroa.0.1.i.i.i.i.i184 = phi i64 [ %i.ev, %bb.ai ], [ %i.eu, %bb.aj ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [136 x i8], ptr %i.eo, i64 %.sroa.0.1.i.i.i.i.i184
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(136) %i.ez) #75
          to label %bb.ai unwind label %bb.ak, !noalias !97025, !inline_history !223

bb.ak:                                            ; preds = %.lr.ph185
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !97025, !inline_history !223
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.ai, %bb.aj
  %.val2.i.i.i.i = load i64, ptr %i.db, align 8, !range !322, !noalias !97011, !noundef !315 ; 2 uses
  %i.fb = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.fb, label %.body5.i.i.i, label %bb.al

bb.al:                                            ; preds = %.body.i.i.i.i
  %i.fc = mul nuw i64 %.val2.i.i.i.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eo, i64 noundef %i.fc, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !97025, !inline_history !462
  br label %.body5.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.val.i.i.i.i = load i64, ptr %i.db, align 8, !range !322, !noalias !97011, !noundef !315 ; 2 uses
  %i.fd = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  %i.fe = mul nuw i64 %.val.i.i.i.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eo, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !97025, !inline_history !462
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

.body5.i.i.i:                                     ; preds = %bb.al, %.body.i.i.i.i, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ex, %.body.i.i.i.i ], [ %i.ex, %bb.al ] ; 2 uses
  %cond.i.i.i = phi i1 [ false, %.body.i.i.i ], [ true, %.body.i.i.i.i ], [ true, %bb.al ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.v) #73
          to label %bb.an unwind label %bb.ao, !noalias !97022

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %bb.am, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.v)
          to label %bb.az unwind label %.loopexit.split-lp.i, !noalias !96996

bb.an:                                            ; preds = %.body5.i.i.i
  br i1 %cond.i.i.i, label %.body.i, label %bb.ap

bb.ao:                                            ; preds = %.noexc7.i.i.i, %bb.ar, %.body5.i.i.i, %.body.i.i.i
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !97022
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !97026)
  %i.fg = load ptr, ptr %i.w, align 8, !alias.scope !97026, !noalias !97018, !noundef !315 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %.noexc7.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fi = atomicrmw sub ptr %i.fg, i64 1 release, align 8, !noalias !97027
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %bb.ar, label %.noexc7.i.i.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %.noexc7.i.i.i unwind label %bb.ao, !noalias !97022

.noexc7.i.i.i:                                    ; preds = %bb.ar, %bb.aq, %bb.ap
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.x) #73
          to label %.body.i unwind label %bb.ao, !noalias !97022

bb.as:                                            ; preds = %bb.o
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(184) %i.ab) #73
          to label %.thread.i.i unwind label %bb.at, !noalias !97012

bb.at:                                            ; preds = %bb.av, %bb.as
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !97012
  unreachable

.thread.i.i:                                      ; preds = %bb.as, %.body.i.i, %bb.l
  %.pn24.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.l ], [ %i.do, %.body.i.i ], [ %i.dm, %bb.as ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97028)
  %i.fl = load ptr, ptr %i.ae, align 8, !alias.scope !97028, !noalias !97011, !noundef !315 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %.body.i, label %bb.au

bb.au:                                            ; preds = %.thread.i.i
  %i.fn = atomicrmw sub ptr %i.fl, i64 1 release, align 8, !noalias !97029
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.av, label %.body.i

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %.body.i unwind label %bb.at, !noalias !97012

bb.aw:                                            ; preds = %bb.cw, %.lr.ph.i
  %.sroa.068.0200.i = phi i64 [ 0, %.lr.ph.i ], [ %i.fp, %bb.cw ] ; 7 uses
  %i.fp = add nuw nsw i64 %.sroa.068.0200.i, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97030)
  %i.fq = load ptr, ptr %i.ck, align 8, !alias.scope !97031, !noalias !96996, !noundef !315
  %.not.i.i118.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fr = load i64, ptr %i.cl, align 8, !alias.scope !97030, !noalias !96996, !noundef !315
  %i.fs = icmp ult i64 %.sroa.068.0200.i, %i.fr
  br i1 %i.fs, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.ay, !prof !321

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @479, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @481) #72
          to label %.noexc119.i unwind label %.loopexit.split-lp.i, !noalias !96996

.noexc119.i:                                      ; preds = %bb.ay
  unreachable

.loopexit.i:                                      ; preds = %bb.cv, %bb.cr, %.invoke275.i, %bb.bl, %.invoke.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.cs, %bb.bk, %bb.ay, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc113.i, %bb.r, %._crit_edge.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.br, %.body.i124.i, %bb.bb, %.loopexit.split-lp.i, %.loopexit.i, %bb.av, %bb.au, %.thread.i.i, %.noexc7.i.i.i, %bb.an
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fx, %bb.bb ], [ %.pn24.i.i, %.thread.i.i ], [ %.pn.i.i.i, %.noexc7.i.i.i ], [ %.pn24.i.i, %bb.au ], [ %.pn.i.i.i, %bb.an ], [ %.pn24.i.i, %bb.av ], [ %eh.lpad-body.i.i, %.body.i124.i ], [ %eh.lpad-body.i.i, %bb.br ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types11Float64TypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.ar) #73
          to label %.body unwind label %bb.cy, !noalias !96996

bb.az:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !97018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !97018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !97018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !97011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !97011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !96997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !96997
  store i64 1, ptr %i.an, align 8, !noalias !96997
  %i.ft = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 1, ptr %i.ft, align 8, !noalias !96997
  %i.fu = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.fu, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !noalias !96997
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !97032
  %i.fv = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !97032 ; 3 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.ba, label %bb.bd, !prof !316

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #72
          to label %.noexc120.i unwind label %bb.bb, !noalias !96996

.noexc120.i:                                      ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float64TypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.fu)
          to label %.body.i unwind label %bb.bc, !noalias !96996

bb.bc:                                            ; preds = %bb.bb
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !96996
  unreachable

bb.bd:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fv, ptr noundef nonnull align 8 dereferenceable(112) %i.an, i64 112, i1 false), !noalias !96996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !96997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.experimental.noalias.scope.decl(metadata !97033)
  %.val.i.i = load i64, ptr %i.ar, align 8, !alias.scope !97033, !noalias !96997 ; 2 uses
  %i.fz = icmp eq i64 %.val.i.i, 0
  br i1 %i.fz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.val2.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i109.i, align 8, !alias.scope !97033, !noalias !96997, !nonnull !315, !noundef !315
  %i.ga = shl nuw i64 %.val.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.ga, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !97034
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.be, %bb.bd
  %i.gb = load i64, ptr %i.dd, align 8, !range !323, !alias.scope !97035, !noalias !96997, !noundef !315
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types11Float64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dd)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types11Float64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.bg, !noalias !96996

bb.bg:                                            ; preds = %bb.bf
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.cj) #73
          to label %.body unwind label %bb.bh, !noalias !96996

bb.bh:                                            ; preds = %bb.bg
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !96996
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types11Float64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.bf, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.cj)
          to label %bb.db unwind label %bb.cz

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.ax
  %i.gf = load ptr, ptr %i.cm, align 8, !alias.scope !97030, !noalias !96996, !noundef !315
  %i.gg = load i64, ptr %i.cn, align 8, !alias.scope !97030, !noalias !96996, !noundef !315
  %i.gh = add i64 %i.gg, %.sroa.068.0200.i        ; 2 uses
  %i.gi = lshr i64 %i.gh, 3
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !noalias !97036, !noundef !315
  %i.gl = trunc i64 %i.gh to i8
  %i.gm = and i8 %i.gl, 7
  %i.gn = xor i8 %i.gk, -1
  %i.go = lshr i8 %i.gn, %i.gm
  %i.gp = trunc i8 %i.go to i1
  br i1 %i.gp, label %.invoke.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.aw
  %i.gq = invoke fastcc { ptr, i64 } @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common19get_string_value_at(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn, i64 noundef %.sroa.068.0200.i)
          to label %bb.bi unwind label %.loopexit.i, !noalias !96996 ; 2 uses

.invoke.i:                                        ; preds = %bb.bi, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types11Float64TypeE11append_nullCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.ar)
          to label %bb.cw unwind label %.loopexit.i, !noalias !96996

bb.bi:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.gr = extractvalue { ptr, i64 } %i.gq, 0      ; 2 uses
  %i.gs = extractvalue { ptr, i64 } %i.gq, 1
  %.not103.i = icmp eq ptr %i.gr, null
  br i1 %.not103.i, label %.invoke.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !97037)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !96997
  store i64 %.sroa.068.0200.i, ptr %i.l, align 8, !noalias !97038
  %i.gt = load i64, ptr %i.bv, align 8, !alias.scope !97037, !noalias !96996, !noundef !315
  %i.gu = lshr i64 %i.gt, 3                       ; 2 uses
  %i.gv = add nsw i64 %i.gu, -1                   ; 2 uses
  %i.gw = icmp ult i64 %.sroa.068.0200.i, %i.gv
  br i1 %i.gw, label %bb.bl, label %bb.bk, !prof !321

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !97038
  store i64 %i.gv, ptr %i.k, align 8, !noalias !97038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !97038
  store ptr %i.l, ptr %i.j, align 8, !noalias !97038
  %.sroa.42.0..sroa_idx.i122.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i122.i, align 8, !noalias !97038
  %i.gx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @737, ptr %i.gx, align 8, !noalias !97038
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !97038
  %i.gy = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr @739, ptr %i.gy, align 8, !noalias !97038
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !97038
  %i.gz = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.k, ptr %i.gz, align 8, !noalias !97038
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !97038
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @740, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @741) #72
          to label %.noexc123.i unwind label %.loopexit.split-lp.i, !noalias !96996

.noexc123.i:                                      ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !97039)
  %i.ha = load ptr, ptr %i.co, align 8, !alias.scope !97040, !noalias !96996, !noundef !315 ; 2 uses
  %i.hb = icmp samesign ult i64 %i.fp, %i.gu
  call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.fp
  %i.hd = load i64, ptr %i.hc, align 8, !noalias !97041, !noundef !315
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.sroa.068.0200.i
  %i.hf = load i64, ptr %i.he, align 8, !noalias !97041, !noundef !315 ; 2 uses
  %i.hg = load ptr, ptr %i.cp, align 8, !alias.scope !97040, !noalias !96996, !noundef !315
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 %i.hf
  %i.hi = sub i64 %i.hd, %i.hf                    ; 2 uses
  %i.hj = icmp sgt i64 %i.hi, -1
  call void @llvm.assume(i1 %i.hj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !96997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !96997
  store ptr %i.hh, ptr %i.aq, align 8, !noalias !96997
  store i64 %i.hi, ptr %i.cq, align 8, !noalias !96997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !96997
  invoke fastcc void @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common21get_json_value_by_key(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gr, i64 noundef %i.gs)
          to label %bb.bm unwind label %.loopexit.i, !noalias !96996

bb.bm:                                            ; preds = %bb.bl
  %i.hk = load i64, ptr %i.ap, align 8, !range !320, !noalias !96997, !noundef !315 ; 2 uses
  %.not104.i = icmp eq i64 %i.hk, -1
  %.sroa.070.0.copyload.i = load i64, ptr %i.cr, align 8, !noalias !96997 ; 7 uses
  %.sroa.471.sroa.0.0.copyload.i = load ptr, ptr %.sroa.471.0..sroa_idx.i, align 8, !noalias !96997 ; 5 uses
  %.sroa.471.sroa.4.0.copyload.i = load i64, ptr %.sroa.471.sroa.4.0..sroa.471.0..sroa_idx.sroa_idx.i, align 8, !noalias !96997 ; 2 uses
  br i1 %.not104.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.679.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.679.0.copyload.i = load i64, ptr %.sroa.679.0..sroa_idx.i, align 8, !noalias !96997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !96997
  %i.hl = ptrtoint ptr %.sroa.471.sroa.0.0.copyload.i to i64
  store i64 %.sroa.471.sroa.4.0.copyload.i, ptr %.sroa.25, align 8, !alias.scope !96996, !noalias !96999
  br label %bb.cx

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !96997
  %.not105.i = icmp eq i64 %.sroa.070.0.copyload.i, -1
  br i1 %.not105.i, label %.invoke275.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !97042
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.471.sroa.0.0.copyload.i) ]
  store ptr %.sroa.471.sroa.0.0.copyload.i, ptr %i.i, align 8, !noalias !97042
  store i64 %.sroa.471.sroa.4.0.copyload.i, ptr %i.cs, align 8, !noalias !97042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !97042
  invoke void @_RNvMNtNtCskKR1pP4skmg_5jsonb9functions6scalarNtNtB6_3raw8RawJsonb7is_null(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.bs unwind label %bb.bq, !noalias !97043

bb.bq:                                            ; preds = %bb.by, %bb.bp
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i124.i

.body.i124.i:                                     ; preds = %bb.cb, %bb.bu, %bb.bq
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.hp, %bb.bu ], [ %i.hm, %bb.bq ], [ %i.ia, %bb.cb ] ; 2 uses
  %i.hn = icmp eq i64 %.sroa.070.0.copyload.i, 0
  br i1 %i.hn, label %.body.i, label %bb.br

bb.br:                                            ; preds = %.body.i124.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.471.sroa.0.0.copyload.i, i64 noundef %.sroa.070.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !97043
  br label %.body.i

bb.bs:                                            ; preds = %bb.bp
  %i.ho = load i64, ptr %i.h, align 8, !range !383, !noalias !97042, !noundef !315
  %.not.i125.i = icmp eq i64 %i.ho, -1
  br i1 %.not.i125.i, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !97042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !97042
  call void @llvm.experimental.noalias.scope.decl(metadata !97044)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !97042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97045
  store ptr %i.f, ptr %i.c, align 8, !noalias !97045
  store ptr @_RNvXs1_NtCskKR1pP4skmg_5jsonb5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i126.i, align 8, !noalias !97045
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @401, ptr noundef nonnull %i.c)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i unwind label %bb.bu, !noalias !97046

bb.bu:                                            ; preds = %bb.bt
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #73, !noalias !97046
  br label %.body.i124.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97045
  %.sroa.4.8.copyload.i.i = load i8, ptr %i.d, align 8, !noalias !97047
  %.sroa.6.i.sroa.0.0.copyload.i = load i56, ptr %.sroa.6.8..sroa_idx.i.i, align 1, !noalias !97042
  %.sroa.6.i.sroa.4.0.copyload.i45 = load i64, ptr %.sroa.6.i.sroa.4.0..sroa.6.8..sroa_idx.i.sroa_idx.i, align 8, !noalias !97042
  %.sroa.6.i.sroa.5.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.i.sroa.5.0..sroa.6.8..sroa_idx.i.sroa_idx.i, align 8, !noalias !97042
  call void @llvm.experimental.noalias.scope.decl(metadata !97048)
  %i.hq = load i64, ptr %i.f, align 8, !range !385, !alias.scope !97049, !noalias !97050, !noundef !315 ; 5 uses
  %i.hr = add nsw i64 %i.hq, 9223372036854775789
  %i.hs = icmp ugt i64 %i.hq, -9223372036854775790
  %i.ht = select i1 %i.hs, i64 %i.hr, i64 18
  switch i64 %i.ht, label %bb.bv [
    i64 0, label %bb.ci
    i64 1, label %bb.ci
    i64 2, label %bb.ci
    i64 3, label %bb.ci
    i64 4, label %bb.ci
    i64 5, label %bb.ci
    i64 6, label %bb.ci
    i64 7, label %bb.ci
    i64 8, label %bb.ci
    i64 9, label %bb.ci
    i64 10, label %bb.ci
    i64 11, label %bb.ci
    i64 12, label %bb.ci
    i64 13, label %bb.ci
    i64 14, label %bb.ci
    i64 15, label %bb.ci
    i64 16, label %bb.ci
    i64 17, label %bb.bw
  ]

bb.bv:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.hu = icmp ne i64 %i.hq, -9223372036854775792
  call void @llvm.assume(i1 %i.hu)
  %or.cond.i.i.i.i.i = icmp slt i64 %i.hq, 1
  br i1 %or.cond.i.i.i.i.i, label %bb.ci, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i: ; preds = %bb.bw, %bb.bv
  %.sink2.i.i.sroa.phi.i.i = phi ptr [ %.sink2.i.i.sroa.gep.i.i, %bb.bw ], [ %.sink2.i.i.sroa.gep60.i.i, %bb.bv ]
  %.val.i.sink.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %bb.bw ], [ %i.hq, %bb.bv ]
  %.val1.i.i.i.i.i = load ptr, ptr %.sink2.i.i.sroa.phi.i.i, align 8, !alias.scope !97049, !noalias !97050, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.sink.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !97051
  br label %bb.ci

bb.bw:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.val.i.i.i.i.i = load i64, ptr %.sink2.i.i.sroa.gep60.i.i, align 8, !alias.scope !97052, !noalias !97050 ; 2 uses
  %i.hv = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.hv, label %bb.ci, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i

bb.bx:                                            ; preds = %bb.bs
  %i.hw = load i8, ptr %i.ct, align 8, !range !327, !noalias !97042, !noundef !315
  %i.hx = trunc nuw i8 %i.hw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !97042
  br i1 %i.hx, label %bb.ch, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !97042
  invoke void @_RNvMNtNtCskKR1pP4skmg_5jsonb9functions6scalarNtNtB6_3raw8RawJsonb6to_f64(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.bz unwind label %bb.bq, !noalias !97043

bb.bz:                                            ; preds = %bb.by
  %i.hy = load i64, ptr %i.g, align 8, !range !383, !noalias !97042, !noundef !315 ; 2 uses
  %.not42.i.i = icmp eq i64 %i.hy, -1
  %i.hz = load i64, ptr %i.cu, align 8, !noalias !97042 ; 2 uses
  br i1 %.not42.i.i, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.sroa.533.0.copyload.i.i = load double, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !97042
  %.sroa.634.0.copyload.i.i = load i64, ptr %.sroa.634.0..sroa_idx.i.i, align 8, !noalias !97042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !97042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !97042
  store i64 %i.hy, ptr %i.e, align 8, !noalias !97042
  store i64 %i.hz, ptr %.sink2.i.i52.sroa.gep64.i.i, align 8, !noalias !97042
  store double %.sroa.533.0.copyload.i.i, ptr %.sink2.i.i52.sroa.gep.i.i, align 8, !noalias !97042
  store i64 %.sroa.634.0.copyload.i.i, ptr %.sroa.638.0..sroa_idx.i.i, align 8, !noalias !97042
  call void @llvm.experimental.noalias.scope.decl(metadata !97053)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !97054
  store ptr %i.e, ptr %i.a, align 8, !noalias !97054
  store ptr @_RNvXs1_NtCskKR1pP4skmg_5jsonb5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i48.i.i, align 8, !noalias !97054
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @404, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i49.i.i unwind label %bb.cb, !noalias !97055

bb.cb:                                            ; preds = %bb.ca
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e) #73, !noalias !97055
  br label %.body.i124.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i49.i.i: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97054
  %.sroa.462.i.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !97056 ; 2 uses
  %.sroa.462.i.sroa.4.0.copyload.i46 = load i64, ptr %.sroa.462.i.sroa.4.0..sroa_idx.i, align 8, !noalias !97056
  %.sroa.462.i.sroa.5.0.copyload.i = load i64, ptr %.sroa.462.i.sroa.5.0..sroa_idx.i, align 8, !noalias !97056
  call void @llvm.experimental.noalias.scope.decl(metadata !97057)
  %i.ib = load i64, ptr %i.e, align 8, !range !385, !alias.scope !97058, !noalias !97059, !noundef !315 ; 5 uses
  %i.ic = add nsw i64 %i.ib, 9223372036854775789
  %i.id = icmp ugt i64 %i.ib, -9223372036854775790
  %i.ie = select i1 %i.id, i64 %i.ic, i64 18
  switch i64 %i.ie, label %bb.cc [
    i64 0, label %bb.cg
    i64 1, label %bb.cg
    i64 2, label %bb.cg
    i64 3, label %bb.cg
    i64 4, label %bb.cg
    i64 5, label %bb.cg
    i64 6, label %bb.cg
    i64 7, label %bb.cg
    i64 8, label %bb.cg
    i64 9, label %bb.cg
    i64 10, label %bb.cg
    i64 11, label %bb.cg
    i64 12, label %bb.cg
    i64 13, label %bb.cg
    i64 14, label %bb.cg
end_hunk_5
begin_hunk_6_@_RNvNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json31json_array_length_columnar_impl:bb.a
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !97255
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.w, ptr %i.ai, align 8, !noalias !97255
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !97255
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull @892, ptr noundef nonnull %i.u)
          to label %.noexc unwind label %bb.bp

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !97255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !97254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !97254
  %.sroa.1037.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !97256
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.16.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !97256
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !noalias !97256
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !noalias !97256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !97254
  br label %bb.bq

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !97254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !97254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !97254
  %i.aj = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad)
          to label %.noexc28 unwind label %bb.bp  ; 2 uses

.noexc28:                                         ; preds = %bb.c
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 9 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !97257
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !315, !noalias !97258, !nonnull !315
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.t, ptr noundef %i.ak)
          to label %.noexc29 unwind label %bb.bp, !inline_history !97184

.noexc29:                                         ; preds = %.noexc28
  %i.ao = load i128, ptr %i.t, align 16, !noalias !97257, !noundef !315
  %i.ap = icmp eq i128 %i.ao, 126164052404106896239213216138621634160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !97257
  br i1 %i.ap, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc29
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !97259
  %i.aq = call noundef dereferenceable_or_null(34) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 34, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !97259 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.aq, ptr noundef nonnull align 1 dereferenceable(34) @409, i64 34, i1 false), !noalias !97260
  %i.as = ptrtoint ptr %i.aq to i64
  br label %bb.bq

bb.f:                                             ; preds = %.noexc29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.au = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at)
          to label %.noexc31 unwind label %bb.bp  ; 2 uses

.noexc31:                                         ; preds = %bb.f
  %i.av = extractvalue { ptr, ptr } %i.au, 0      ; 3 uses
  %i.aw = extractvalue { ptr, ptr } %i.au, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !97261
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !315, !noalias !97262, !nonnull !315
  invoke void %i.ay(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.s, ptr noundef %i.av)
          to label %.noexc32 unwind label %bb.bp, !inline_history !97184

.noexc32:                                         ; preds = %.noexc31
  %i.az = load i128, ptr %i.s, align 16, !noalias !97261, !noundef !315
  %i.ba = icmp eq i128 %i.az, -7452801274563340147934147702000895189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !97261
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !97263
  store i64 2, ptr %i.q, align 8, !noalias !97263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !97263
  store ptr %i.q, ptr %i.p, align 8, !noalias !97263
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !97263
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noundef nonnull @410, ptr noundef nonnull %i.p)
          to label %.noexc33 unwind label %bb.bp

.noexc33:                                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !97263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !97263
  %.sroa.794.0.copyload.i = load ptr, ptr %i.bb, align 8, !noalias !97254
  %i.bc = ptrtoint ptr %.sroa.794.0.copyload.i to i64
  %.sroa.16.16.copyload = load i64, ptr %i.ag, align 8, !noalias !97256
  %.sroa.22.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.22.16.copyload = load i64, ptr %.sroa.22.16..sroa_idx, align 8, !noalias !97256
  %.sroa.25.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.25.16.copyload = load i64, ptr %.sroa.25.16..sroa_idx, align 8, !noalias !97256
  br label %bb.bq

bb.h:                                             ; preds = %.noexc32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !97254
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !noalias !97264, !noundef !315
  %i.bf = lshr i64 %i.be, 3
  %i.bg = add nsw i64 %i.bf, -1                   ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97265)
  %i.bh = shl i64 %i.bg, 3                        ; 5 uses
  %i.bi = icmp ugt i64 %i.bg, 2305843009213693951
  %.not.i.i.i = icmp ugt i64 %i.bh, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.bi, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %.invoke, label %bb.i, !prof !317

bb.i:                                             ; preds = %bb.h
  %i.bj = icmp eq i64 %i.bh, 0
  br i1 %i.bj, label %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !97266
  %i.bk = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !97266 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.invoke, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = ptrtoint ptr %i.bk to i64
  br label %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i

.invoke:                                          ; preds = %bb.h, %bb.j, %bb.d
  %i.bn = phi i64 [ 1, %bb.d ], [ 8, %bb.j ], [ 0, %bb.h ]
  %i.bo = phi i64 [ 34, %bb.d ], [ %i.bh, %bb.j ], [ %i.bh, %bb.h ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.bn, i64 %i.bo) #72
          to label %.cont unwind label %bb.bp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.k, %bb.i
  %.sroa.10.0.i.i = phi i64 [ %i.bm, %bb.k ], [ 8, %bb.i ]
  %.sroa.4.0.i.i = phi i64 [ %i.bg, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %i.bp = inttoptr i64 %.sroa.10.0.i.i to ptr
  %i.bq = icmp samesign ule i64 %i.bg, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.bq)
  store i64 %.sroa.4.0.i.i, ptr %i.z, align 8, !alias.scope !97265, !noalias !97254
  %.sroa.4.0..sroa_idx.i79.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.bp, ptr %.sroa.4.0..sroa_idx.i79.i, align 8, !alias.scope !97265, !noalias !97254
  %.sroa.5.0..sroa_idx.i80.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !97265, !noalias !97254
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i80.i, i8 0, i64 16, i1 false), !alias.scope !97265, !noalias !97254
  store i64 %i.bg, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !97265, !noalias !97254
  %i.br = getelementptr inbounds nuw i8, ptr %i.z, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 5, i64 24, i1 false), !alias.scope !97265, !noalias !97254
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink2.i.sink.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sink2.i.sink.i.sroa.gep87.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sink2.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink2.i.sroa.gep90.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.i.sroa.7.0..sroa_idx109.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.i.sroa.8.0..sroa_idx113.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.6.i.sroa.7.0..sroa_idx111.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.sroa.6.i.sroa.8.0..sroa_idx115.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.527.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.442.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.17.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.20.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.17.8..sroa_idx102.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.20.8..sroa_idx105.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.l

._crit_edge.i:                                    ; preds = %bb.bn, %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !97254
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE6finishCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.y, ptr noalias noundef align 8 dereferenceable(104) %i.z)
          to label %bb.o unwind label %.loopexit.split-lp.i, !noalias !97264

bb.l:                                             ; preds = %bb.bn, %.lr.ph.i
  %.sroa.054.0191.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cf, %bb.bn ] ; 7 uses
  %i.cf = add nuw nsw i64 %.sroa.054.0191.i, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97267)
  %i.cg = load ptr, ptr %i.bs, align 8, !alias.scope !97268, !noalias !97264, !noundef !315
  %.not.i.i81.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i81.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = load i64, ptr %i.bt, align 8, !alias.scope !97267, !noalias !97264, !noundef !315
  %i.ci = icmp ult i64 %.sroa.054.0191.i, %i.ch
  br i1 %i.ci, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.n, !prof !321

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @479, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @481) #72
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !97264

.noexc.i:                                         ; preds = %bb.n
  unreachable

.loopexit.i:                                      ; preds = %bb.bm, %bb.aa, %.invoke.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.z, %bb.n, %._crit_edge.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body.i.i80.i.i, %common.resume.sink.split.i.i, %.body.i.i.i.i, %bb.ac, %bb.q, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cn, %bb.q ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ], [ %i.gm, %.body.i.i80.i.i ], [ %i.fj, %.body.i.i.i.i ], [ %.pn50.i.i, %bb.ac ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.z) #73
          to label %.body unwind label %bb.bo, !noalias !97264

bb.o:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !97254
  store i64 1, ptr %i.x, align 8, !noalias !97254
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 1, ptr %i.cj, align 8, !noalias !97254
  %i.ck = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ck, ptr noundef nonnull align 8 dereferenceable(96) %i.y, i64 96, i1 false), !noalias !97254
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !97269
  %i.cl = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !97269 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.p, label %bb.s, !prof !316

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #72
          to label %.noexc82.i unwind label %bb.q, !noalias !97264

.noexc82.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ck)
          to label %.body.i unwind label %bb.r, !noalias !97264

bb.r:                                             ; preds = %bb.q
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !97264
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cl, ptr noundef nonnull align 8 dereferenceable(112) %i.x, i64 112, i1 false), !noalias !97264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !97254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !97254
  call void @llvm.experimental.noalias.scope.decl(metadata !97270)
  %.val.i.i = load i64, ptr %i.z, align 8, !alias.scope !97270, !noalias !97254 ; 2 uses
  %i.cp = icmp eq i64 %.val.i.i, 0
  br i1 %i.cp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val2.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i79.i, align 8, !alias.scope !97270, !noalias !97254, !nonnull !315, !noundef !315
  %i.cq = shl nuw i64 %.val.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !97271
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.t, %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !range !323, !alias.scope !97272, !noalias !97254, !noundef !315
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cr)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.v, !noalias !97264

bb.v:                                             ; preds = %bb.u
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.br) #73
          to label %.body unwind label %bb.w, !noalias !97264

bb.w:                                             ; preds = %bb.v
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !97264
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.br)
          to label %bb.br unwind label %bb.bp

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.m
  %i.cw = load ptr, ptr %i.bu, align 8, !alias.scope !97267, !noalias !97264, !noundef !315
  %i.cx = load i64, ptr %i.bv, align 8, !alias.scope !97267, !noalias !97264, !noundef !315
  %i.cy = add i64 %i.cx, %.sroa.054.0191.i        ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !noalias !97273, !noundef !315
  %i.dc = trunc i64 %i.cy to i8
  %i.dd = and i8 %i.dc, 7
  %i.de = xor i8 %i.db, -1
  %i.df = lshr i8 %i.de, %i.dd
  %i.dg = trunc i8 %i.df to i1
  br i1 %i.dg, label %.invoke.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.l
  %i.dh = invoke fastcc { ptr, i64 } @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common19get_string_value_at(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.av, i64 noundef %.sroa.054.0191.i)
          to label %bb.x unwind label %.loopexit.i, !noalias !97264 ; 2 uses

.invoke.i:                                        ; preds = %bb.bl, %bb.x, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE11append_nullCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.z)
          to label %bb.bn unwind label %.loopexit.i, !noalias !97264

bb.x:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.di = extractvalue { ptr, i64 } %i.dh, 0      ; 3 uses
  %i.dj = extractvalue { ptr, i64 } %i.dh, 1      ; 2 uses
  %.not75.i = icmp eq ptr %i.di, null
  br i1 %.not75.i, label %.invoke.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !97274)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !97254
  store i64 %.sroa.054.0191.i, ptr %i.o, align 8, !noalias !97275
  %i.dk = load i64, ptr %i.bd, align 8, !alias.scope !97274, !noalias !97264, !noundef !315
  %i.dl = lshr i64 %i.dk, 3                       ; 2 uses
  %i.dm = add nsw i64 %i.dl, -1                   ; 2 uses
  %i.dn = icmp ult i64 %.sroa.054.0191.i, %i.dm
  br i1 %i.dn, label %bb.aa, label %bb.z, !prof !321

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !97275
  store i64 %i.dm, ptr %i.n, align 8, !noalias !97275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !97275
  store ptr %i.o, ptr %i.m, align 8, !noalias !97275
  %.sroa.42.0..sroa_idx.i84.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i84.i, align 8, !noalias !97275
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @737, ptr %i.do, align 8, !noalias !97275
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !97275
  %i.dp = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @739, ptr %i.dp, align 8, !noalias !97275
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !97275
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.dq, align 8, !noalias !97275
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !97275
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @740, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @741) #72
          to label %.noexc85.i unwind label %.loopexit.split-lp.i, !noalias !97264

.noexc85.i:                                       ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !97276)
  %i.dr = load ptr, ptr %i.bw, align 8, !alias.scope !97277, !noalias !97264, !noundef !315 ; 2 uses
  %i.ds = icmp samesign ult i64 %i.cf, %i.dl
  call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.cf
  %i.du = load i64, ptr %i.dt, align 8, !noalias !97278, !noundef !315
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.054.0191.i
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !97278, !noundef !315 ; 2 uses
  %i.dx = load ptr, ptr %i.bx, align 8, !alias.scope !97277, !noalias !97264, !noundef !315
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 %i.dw
  %i.dz = sub i64 %i.du, %i.dw                    ; 2 uses
  %i.ea = icmp sgt i64 %i.dz, -1
  call void @llvm.assume(i1 %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !97254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !97254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !97254
  store ptr %i.di, ptr %i.l, align 8, !noalias !97279
  store i64 %i.dj, ptr %i.by, align 8, !noalias !97279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !97279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !97279
  invoke fastcc void @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common15parse_json_path(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dj)
          to label %.noexc89.i unwind label %.loopexit.i, !noalias !97264

.noexc89.i:                                       ; preds = %bb.aa
  %i.eb = load i64, ptr %i.j, align 8, !range !320, !noalias !97279, !noundef !315 ; 2 uses
  %.not.i86.i = icmp eq i64 %i.eb, -1
  %.sroa.6.i.sroa.0.0.copyload107.i = load i64, ptr %i.bz, align 8, !noalias !97279 ; 8 uses
  %.sroa.6.i.sroa.7.0.copyload110.i = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx109.i, align 8, !noalias !97279 ; 2 uses
  %.sroa.6.i.sroa.8.0.copyload114.i = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx113.i, align 8, !noalias !97279 ; 10 uses
  br i1 %.not.i86.i, label %bb.ab, label %.thread.i

.thread.i:                                        ; preds = %.noexc89.i
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.521.0.copyload.i.i = load i64, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !97279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !97279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !97279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !97254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !97254
  br label %.loopexit141.i

bb.ab:                                            ; preds = %.noexc89.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !97279
  store i64 %.sroa.6.i.sroa.0.0.copyload107.i, ptr %i.k, align 8, !noalias !97279
  store i64 %.sroa.6.i.sroa.7.0.copyload110.i, ptr %.sroa.6.i.sroa.7.0..sroa_idx111.i, align 8, !noalias !97279
  store i64 %.sroa.6.i.sroa.8.0.copyload114.i, ptr %.sroa.6.i.sroa.8.0..sroa_idx115.i, align 8, !noalias !97279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !97279
  store ptr %i.dy, ptr %i.ca, align 8, !noalias !97279
  store i64 %i.dz, ptr %i.cb, align 8, !noalias !97279
  store i64 0, ptr %i.i, align 8, !noalias !97279
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !97279
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.527.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !97279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !97279
  invoke void @_RNvMs_NtNtCskKR1pP4skmg_5jsonb8jsonpath8selectorNtB4_8Selector13select_values(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.ae unwind label %bb.ad, !noalias !97280

bb.ac:                                            ; preds = %bb.bd, %bb.ak, %bb.ad
  %.pn50.i.i = phi { ptr, i32 } [ %i.ec, %bb.ad ], [ %i.ga, %bb.bd ], [ %.pn.i.i, %bb.ak ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath8selector8SelectorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.i) #73, !noalias !97280
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path8JsonPathECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.k) #73
          to label %.body.i unwind label %bb.ba, !noalias !97280

bb.ad:                                            ; preds = %bb.ab
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ab
  %i.ed = load i64, ptr %i.h, align 8, !range !383, !noalias !97279, !noundef !315
  %.not46.i.i = icmp eq i64 %i.ed, -1
  br i1 %.not46.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !97279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !97279
  store ptr %i.l, ptr %i.a, align 8, !noalias !97279
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !noalias !97279
  store ptr %i.c, ptr %i.cc, align 8, !noalias !97279
  store ptr @_RNvXs1_NtCskKR1pP4skmg_5jsonb5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.442.0..sroa_idx.i.i, align 8, !noalias !97279
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @863, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i.i unwind label %bb.bd, !noalias !97280

bb.ag:                                            ; preds = %bb.ae
  %.sroa.0117.0.copyload.i = load i64, ptr %i.cd, align 8, !noalias !97279 ; 4 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !97279, !nonnull !315, !noundef !315 ; 6 uses
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !97279 ; 4 uses
  %i.ee = icmp ult i64 %.sroa.8.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.ee)
  %i.ef = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %i.ef, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %bb.aj

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit66.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.eh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit66.i.i ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.eh = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.eg, align 8, !alias.scope !97281, !noalias !97282 ; 2 uses
  %i.ei = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.ei, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ej = getelementptr i8, ptr %i.eg, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.ej, align 8, !alias.scope !97281, !noalias !97282, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !97283
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i: ; preds = %bb.ah, %.lr.ph.i.i.i.i.i
  %i.ek = icmp eq i64 %i.eh, %.sroa.8.0.copyload.i
  br i1 %i.ek, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i, %bb.ag
  %.sroa.20.1.i = phi i64 [ undef, %bb.ag ], [ %.sroa.20.8.copyload106.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.17.1.i = phi i64 [ undef, %bb.ag ], [ %.sroa.17.8.copyload103.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.1098.1.i = phi i64 [ 0, %bb.ag ], [ %.sroa.1098.8.copyload100.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.096.1.i = phi i64 [ -1, %bb.ag ], [ 9, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i ] ; 2 uses
  %i.el = icmp eq i64 %.sroa.0117.0.copyload.i, 0
  br i1 %i.el, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.em = mul nuw i64 %.sroa.0117.0.copyload.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !97282
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !97279
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !97280, !nonnull !315, !noundef !315
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !97280, !noundef !315
  store ptr %i.eo, ptr %i.g, align 8, !noalias !97279
  store i64 %i.eq, ptr %i.ce, align 8, !noalias !97279
  br label %bb.am

bb.ak:                                            ; preds = %bb.av, %bb.al
  %.pn.i.i = phi { ptr, i32 } [ %i.er, %bb.al ], [ %i.fb, %bb.av ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.cd) #73, !noalias !97280
  br label %bb.ac

bb.al:                                            ; preds = %bb.am
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.am:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, %bb.aj
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.aj ], [ %i.fa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !97279
  invoke void @_RNvMNtNtCskKR1pP4skmg_5jsonb9functions4pathNtNtB6_3raw8RawJsonb12get_by_index(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, i64 noundef %.sroa.06.0.i.i)
          to label %bb.an unwind label %bb.al, !noalias !97280

bb.an:                                            ; preds = %bb.am
  %i.es = load i64, ptr %i.f, align 8, !range !383, !noalias !97279, !noundef !315 ; 6 uses
  %.not47.i.i = icmp eq i64 %i.es, -1
  br i1 %.not47.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.et = icmp eq i64 %.sroa.06.0.i.i, 0
  br i1 %i.et, label %bb.au, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %i.eu = load i64, ptr %.sink2.i.sink.i.sroa.gep87.i.i, align 8, !range !334, !noalias !97279, !noundef !315 ; 3 uses
  %.not48.i.i = icmp eq i64 %i.eu, -1
  br i1 %.not48.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !97284)
  %.not96.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not96.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i: ; preds = %bb.aq
  %.val1.i.i.i.i.i = load ptr, ptr %.sink2.i.sink.i.sroa.gep.i.i, align 8, !alias.scope !97284, !noalias !97279, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.eu, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !97285
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !97286)
  %i.ev = add nsw i64 %i.es, 9223372036854775789
  %i.ew = icmp ugt i64 %i.es, -9223372036854775790
  %i.ex = select i1 %i.ew, i64 %i.ev, i64 18
  switch i64 %i.ex, label %bb.as [
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 4, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 5, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 6, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 7, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 8, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 9, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 10, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 11, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 12, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 13, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 14, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 15, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 16, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtB1n_5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit65.i.i
    i64 17, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %i.ey = icmp ne i64 %i.es, -9223372036854775792
  call void @llvm.assume(i1 %i.ey)
end_hunk_6
begin_hunk_7_@_RNvNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json36json_extract_with_type_columnar_impl:bb.a
bb.g:                                             ; preds = %.noexc29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ch = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cg)
          to label %.noexc31 unwind label %bb.gg  ; 2 uses

.noexc31:                                         ; preds = %bb.g
  %i.ci = extractvalue { ptr, ptr } %i.ch, 0      ; 3 uses
  %i.cj = extractvalue { ptr, ptr } %i.ch, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !97659
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !315, !noalias !97660, !nonnull !315
  invoke void %i.cl(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ar, ptr noundef %i.ci)
          to label %.noexc32 unwind label %bb.gg, !inline_history !97476

.noexc32:                                         ; preds = %.noexc31
  %i.cm = load i128, ptr %i.ar, align 16, !noalias !97659, !noundef !315
  %i.cn = icmp eq i128 %i.cm, -7452801274563340147934147702000895189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !97659
  br i1 %i.cn, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !97661
  store i64 2, ptr %i.ap, align 8, !noalias !97661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !97661
  store ptr %i.ap, ptr %i.ao, align 8, !noalias !97661
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !97661
  %i.co = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.co, ptr noundef nonnull @410, ptr noundef nonnull %i.ao)
          to label %.noexc33 unwind label %bb.gg

.noexc33:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !97661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !97661
  %.sroa.7174.0.copyload.i = load ptr, ptr %i.co, align 8, !noalias !97652
  %i.cp = ptrtoint ptr %.sroa.7174.0.copyload.i to i64
  %.sroa.16.16.copyload = load ptr, ptr %i.bu, align 8, !noalias !97654
  %.sroa.22.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.22.16.copyload = load i64, ptr %.sroa.22.16..sroa_idx, align 8, !noalias !97654
  %.sroa.25.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %.sroa.25.16.copyload = load i64, ptr %.sroa.25.16..sroa_idx, align 8, !noalias !97654
  br label %.thread

bb.i:                                             ; preds = %.noexc32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !97652
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 40 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !97662, !noundef !315
  %i.cs = lshr i64 %i.cr, 3                       ; 2 uses
  %i.ct = add nsw i64 %i.cs, -1                   ; 7 uses
  invoke fastcc void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE13with_capacityCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.bn, i64 noundef %i.ct, i64 noundef 1024)
          to label %.noexc34 unwind label %bb.gg

.noexc34:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !97652
  call void @llvm.experimental.noalias.scope.decl(metadata !97663)
  %.not.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.j, !prof !317

bb.j:                                             ; preds = %.noexc34
  %i.cu = icmp eq i64 %i.ct, 0                    ; 2 uses
  br i1 %i.cu, label %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9UInt8TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !97664
  %i.cv = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 -1, 2305843009213693951) %i.ct, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !97664 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = ptrtoint ptr %i.cv to i64
  br label %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9UInt8TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i

bb.m:                                             ; preds = %bb.k, %.noexc34
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.k ], [ 0, %.noexc34 ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 range(i64 -1, 2305843009213693951) %i.ct) #72
          to label %.noexc.i unwind label %bb.q, !noalias !97662

.noexc.i:                                         ; preds = %bb.m
  unreachable

_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9UInt8TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.l, %bb.j
  %.sroa.10.0.i.i = phi i64 [ %i.cx, %bb.l ], [ 1, %bb.j ]
  %i.cy = inttoptr i64 %.sroa.10.0.i.i to ptr
  store i64 %i.ct, ptr %i.bm, align 8, !alias.scope !97663, !noalias !97652
  %.sroa.4.0..sroa_idx.i117.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  store ptr %i.cy, ptr %.sroa.4.0..sroa_idx.i117.i, align 8, !alias.scope !97663, !noalias !97652
  %.sroa.5.0..sroa_idx.i118.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 4 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !97663, !noalias !97652
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i118.i, i8 0, i64 16, i1 false), !alias.scope !97663, !noalias !97652
  store i64 %i.ct, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !97663, !noalias !97652
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bm, i64 80 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 6, i64 24, i1 false), !alias.scope !97663, !noalias !97652
  br i1 %i.cu, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9UInt8TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.db = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %i.dc = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  %i.dd = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  %i.de = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.dg = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sink2.i.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sink2.i.i.sroa.gep107.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.sink2.i.i75.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sink2.i.i75.sroa.gep108.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %.sink2.i.i82.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sink2.i.i82.sroa.gep109.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.sink2.i.i89.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sink2.i.i89.sroa.gep110.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sink2.i.i96.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink2.i.i96.sroa.gep111.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sink2.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink2.i.sroa.gep112.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.6.i.sroa.7.0..sroa_idx202.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6.i.sroa.8.0..sroa_idx206.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.6.i.sroa.7.0..sroa_idx204.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.6.i.sroa.8.0..sroa_idx208.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.530.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.453.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.14177.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.17.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0..sroa_idx.i160.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.7.0..sroa_idx.i162.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bn, i64 80 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bn, i64 72 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bn, i64 64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bn, i64 88 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  br label %bb.r

.body144.i:                                       ; preds = %bb.cp, %.body.i, %bb.q
  %.pn99.pn.i = phi { ptr, i32 } [ %.pn99.i, %.body.i ], [ %i.ej, %bb.q ], [ %i.je, %bb.cp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97665)
  %.val.i = load i64, ptr %i.bn, align 8, !alias.scope !97665, !noalias !97662 ; 2 uses
  %i.ea = icmp eq i64 %.val.i, 0
  br i1 %i.ea, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.n

bb.n:                                             ; preds = %.body144.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.val2.i = load ptr, ptr %i.eb, align 8, !alias.scope !97665, !noalias !97662, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !97666
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.n, %.body144.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.val3.i = load i64, ptr %i.ec, align 8, !alias.scope !97665, !noalias !97662 ; 2 uses
  %i.ed = icmp eq i64 %.val3.i, 0
  br i1 %i.ed, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.val4.i = load ptr, ptr %i.ee, align 8, !alias.scope !97665, !noalias !97662, !nonnull !315, !noundef !315
  %i.ef = shl nuw i64 %.val3.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !97666
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i: ; preds = %bb.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !range !323, !alias.scope !97667, !noalias !97662, !noundef !315
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %.body, label %bb.p

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.eg)
          to label %.body unwind label %bb.cu

bb.q:                                             ; preds = %.loopexit250.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsc85D0lJ81Z_16lance_datafusion.exit4.i.i, %bb.m
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body144.i

._crit_edge.i:                                    ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit171.i, %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9UInt8TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !97652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !97652
  invoke fastcc void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE6finishCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.bk, ptr noalias noundef align 8 dereferenceable(104) %i.bn)
          to label %bb.u unwind label %.loopexit.split-lp.i, !noalias !97662

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit171.i, %.lr.ph.i
  %.sroa.058.0318.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ek, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit171.i ] ; 7 uses
  %i.ek = add nuw nsw i64 %.sroa.058.0318.i, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97668)
  %i.el = load ptr, ptr %i.da, align 8, !alias.scope !97669, !noalias !97662, !noundef !315
  %.not.i.i119.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i119.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = load i64, ptr %i.db, align 8, !alias.scope !97668, !noalias !97662, !noundef !315
  %i.en = icmp ult i64 %.sroa.058.0318.i, %i.em
  br i1 %i.en, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.t, !prof !321

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @479, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @481) #72
          to label %.noexc120.i unwind label %.loopexit.split-lp.i, !noalias !97662

.noexc120.i:                                      ; preds = %bb.t
  unreachable

.body.i:                                          ; preds = %bb.gb, %bb.ga, %bb.fm, %.body.i.i.i158.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i, %bb.cx, %.thread.i, %bb.ck, %bb.bv, %.thread230.i, %bb.w, %.loopexit.split-lp.i, %.loopexit.i
  %.pn99.i = phi { ptr, i32 } [ %.pn93229.i, %.thread230.i ], [ %.pn.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i ], [ %i.es, %bb.w ], [ %.pn93.pn223.i, %.thread.i ], [ %i.iy, %bb.ck ], [ %.pn93.pn223.i, %bb.cx ], [ %i.nq, %.body.i.i.i158.i ], [ %i.nq, %bb.fm ], [ %lpad.phi255.i, %bb.ga ], [ %lpad.phi255.i, %bb.gb ], [ %i.ia, %bb.bv ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9UInt8TypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.bm) #73
          to label %.body144.i unwind label %bb.cu, !noalias !97662

.loopexit.i:                                      ; preds = %.invoke.i, %bb.db, %.invoke459.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.da, %bb.t, %._crit_edge.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.u:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !97652
  store i64 1, ptr %i.ba, align 8, !noalias !97652
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 1, ptr %i.eo, align 8, !noalias !97652
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ep, ptr noundef nonnull align 8 dereferenceable(120) %i.bk, i64 120, i1 false), !noalias !97652
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !97670
  %i.eq = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !97670 ; 3 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.v, label %bb.y, !prof !316

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #72
          to label %.noexc121.i unwind label %bb.w, !noalias !97662

.noexc121.i:                                      ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtBI_5types17GenericBinaryTypexEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.ep)
          to label %.body.i unwind label %bb.x, !noalias !97662

bb.x:                                             ; preds = %bb.w
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !97662
  unreachable

bb.y:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.eq, ptr noundef nonnull align 8 dereferenceable(136) %i.ba, i64 136, i1 false), !noalias !97662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !97652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !97652
  store ptr %i.eq, ptr %i.bl, align 16, !noalias !97652
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr @859, ptr %i.eu, align 8, !noalias !97652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !97652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.experimental.noalias.scope.decl(metadata !97671)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !97652
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  %i.ew = load i64, ptr %.sroa.5.0..sroa_idx.i118.i, align 8, !alias.scope !97671, !noalias !97672, !noundef !315 ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  call void @llvm.assume(i1 %i.ex)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !97673
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 3 uses
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ey)
          to label %.noexc125.i unwind label %bb.bo, !noalias !97662

.noexc125.i:                                      ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !97673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !97673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !97673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !97673
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz)
          to label %bb.aa unwind label %bb.z, !noalias !97674

bb.z:                                             ; preds = %.noexc125.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.aa:                                            ; preds = %.noexc125.i
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !97673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !97673
  store i64 0, ptr %i.ak, align 8, !noalias !97673
  %.sroa.5.0..sroa_idx.i123.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i123.i, align 8, !noalias !97673
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !97673
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !97673
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !97673
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !97673
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store i64 %i.ew, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !97673
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !97673
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  store ptr null, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !97673
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 168
  store i64 0, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !noalias !97673
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  store i8 0, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !97673
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 177
  store i8 0, ptr %.sroa.14.0..sroa_idx.i.i, align 1, !noalias !97673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !97673
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bm, align 8, !alias.scope !97671, !noalias !97672
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i117.i, align 8, !alias.scope !97671, !noalias !97672, !nonnull !315, !noundef !315 ; 2 uses
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i118.i, align 8, !alias.scope !97671, !noalias !97672 ; 3 uses
  store i64 0, ptr %i.bm, align 8, !alias.scope !97671, !noalias !97672
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i117.i, align 8, !alias.scope !97671, !noalias !97672
  store i64 0, ptr %.sroa.5.0..sroa_idx.i118.i, align 8, !alias.scope !97671, !noalias !97672
  call void @llvm.experimental.noalias.scope.decl(metadata !97675)
  %i.ez = icmp sgt i64 %.sroa.5.0.copyload.i.i, -1
  call void @llvm.assume(i1 %i.ez)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !97676
  store i64 1, ptr %i.ah, align 8, !noalias !97676
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 1, ptr %i.fa, align 8, !noalias !97676
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.fb, align 8, !noalias !97676
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !97676
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !97676
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 1, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !97676
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !97676
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !97677
  %i.fc = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !97677 ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.ab, label %bb.ae, !prof !316

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc.i.i.i unwind label %bb.ac, !noalias !97678

.noexc.i.i.i:                                     ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ah) #73
          to label %bb.bk unwind label %bb.ad, !noalias !97678

bb.ad:                                            ; preds = %bb.ac
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !97678
  unreachable

.body.i.i:                                        ; preds = %bb.ae
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fc, ptr noundef nonnull align 8 dereferenceable(56) %i.ah, i64 56, i1 false), !noalias !97678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !97676
  store ptr %i.fc, ptr %i.ai, align 8, !alias.scope !97675, !noalias !97679
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.fh, align 8, !alias.scope !97675, !noalias !97679
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %i.fi, align 8, !alias.scope !97675, !noalias !97679
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai)
          to label %bb.af unwind label %.body.i.i, !noalias !97674

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !97673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !97673
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5nulls(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.al, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.an)
          to label %.noexc126.i unwind label %bb.bo, !noalias !97662

.noexc126.i:                                      ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !97673
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15build_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.am)
          to label %.noexc127.i unwind label %bb.bo, !noalias !97662

.noexc127.i:                                      ; preds = %.noexc126.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
end_hunk_7
begin_hunk_8_@_RNvNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json36json_extract_with_type_columnar_impl:bb.a
bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #72
          to label %.noexc140.i unwind label %bb.ck, !noalias !97662

.noexc140.i:                                      ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.cj
  %i.iy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.iv)
          to label %.body.i unwind label %bb.cl, !noalias !97662

bb.cl:                                            ; preds = %bb.ck
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !97662
  unreachable

bb.cm:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.iw, ptr noundef nonnull align 8 dereferenceable(120) %i.aw, i64 120, i1 false), !noalias !97662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !97652
  %i.ja = ptrtoint ptr %i.iw to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !97652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !97652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !97652
  call void @llvm.experimental.noalias.scope.decl(metadata !97711)
  %.val.i.i = load i64, ptr %i.bm, align 8, !alias.scope !97711, !noalias !97652 ; 2 uses
  %i.jb = icmp eq i64 %.val.i.i, 0
  br i1 %i.jb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.val2.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i117.i, align 8, !alias.scope !97711, !noalias !97652, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !97712
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.cn, %bb.cm
  %i.jc = load i64, ptr %i.ey, align 8, !range !323, !alias.scope !97713, !noalias !97652, !noundef !315
  %i.jd = icmp eq i64 %i.jc, 0
  br i1 %i.jd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsc85D0lJ81Z_16lance_datafusion.exit4.i.i, label %bb.co

bb.co:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ey)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsc85D0lJ81Z_16lance_datafusion.exit4.i.i unwind label %bb.cp, !noalias !97662

bb.cp:                                            ; preds = %bb.co
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.cz) #73
          to label %.body144.i unwind label %bb.cq, !noalias !97662

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsc85D0lJ81Z_16lance_datafusion.exit4.i.i: ; preds = %bb.co, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.cz)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9UInt8TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.q, !noalias !97662

bb.cq:                                            ; preds = %bb.cp
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !97662
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9UInt8TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsc85D0lJ81Z_16lance_datafusion.exit4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !97652
  call void @llvm.experimental.noalias.scope.decl(metadata !97714)
  %.val.i146.i = load i64, ptr %i.bn, align 8, !alias.scope !97714, !noalias !97652 ; 2 uses
  %i.jg = icmp eq i64 %.val.i146.i, 0
  br i1 %i.jg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i148.i, label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9UInt8TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.val2.i147.i = load ptr, ptr %i.jh, align 8, !alias.scope !97714, !noalias !97652, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i147.i, i64 noundef %.val.i146.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !97715
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i148.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i148.i: ; preds = %bb.cr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9UInt8TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.val3.i.i = load i64, ptr %i.ji, align 8, !alias.scope !97714, !noalias !97652 ; 2 uses
  %i.jj = icmp eq i64 %.val3.i.i, 0
  br i1 %i.jj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i.i, label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i148.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.val4.i.i = load ptr, ptr %i.jk, align 8, !alias.scope !97714, !noalias !97652, !nonnull !315, !noundef !315
  %i.jl = shl nuw i64 %.val3.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef %i.jl, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !97715
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i.i: ; preds = %bb.cs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i148.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !range !323, !alias.scope !97716, !noalias !97652, !noundef !315
  %i.jo = icmp eq i64 %i.jn, 0
  br i1 %i.jo, label %.thread50, label %bb.ct

bb.ct:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.jm)
          to label %.thread50 unwind label %bb.gg

.thread50:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i.i, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !97652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.gj

bb.cu:                                            ; preds = %bb.p, %bb.cx, %bb.cw, %.body104.i, %.body.i
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !97662
  unreachable

bb.cv:                                            ; preds = %.thread224.i, %.thread233.i
  %.pn93229.i = phi { ptr, i32 } [ %.pn.i, %.thread224.i ], [ %i.hz, %.thread233.i ] ; 2 uses
  %.sroa.039.1228.i = phi i1 [ %.sroa.039.3.i, %.thread224.i ], [ true, %.thread233.i ]
  %i.jq = atomicrmw sub ptr %i.hs, i64 1 release, align 8, !noalias !97717
  %i.jr = icmp eq i64 %i.jq, 1
  br i1 %i.jr, label %bb.cw, label %.thread230.i

bb.cw:                                            ; preds = %bb.cv
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bj)
          to label %.thread230.i unwind label %bb.cu, !noalias !97662

.thread.i:                                        ; preds = %bb.br, %bb.bo, %.thread230.i, %bb.bn, %bb.bm, %.thread.i.i, %.noexc10.i.i.i, %bb.bf
  %.pn93.pn223.i = phi { ptr, i32 } [ %.pn93229.i, %.thread230.i ], [ %.pn24.i.i, %.thread.i.i ], [ %i.hp, %bb.bo ], [ %.pn.i.i.i, %.noexc10.i.i.i ], [ %.pn24.i.i, %bb.bm ], [ %.pn.i.i.i, %bb.bf ], [ %.pn24.i.i, %bb.bn ], [ %i.hu, %bb.br ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97718)
  call void @llvm.experimental.noalias.scope.decl(metadata !97719)
  %i.js = load ptr, ptr %i.bl, align 16, !alias.scope !97720, !noalias !97652, !nonnull !315, !noundef !315
  %i.jt = atomicrmw sub ptr %i.js, i64 1 release, align 8, !noalias !97721
  %i.ju = icmp eq i64 %i.jt, 1
  br i1 %i.ju, label %bb.cx, label %.body.i

bb.cx:                                            ; preds = %.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %.body.i unwind label %bb.cu, !noalias !97662

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.s
  %i.jv = load ptr, ptr %i.dc, align 8, !alias.scope !97668, !noalias !97662, !noundef !315
  %i.jw = load i64, ptr %i.dd, align 8, !alias.scope !97668, !noalias !97662, !noundef !315
  %i.jx = add i64 %i.jw, %.sroa.058.0318.i        ; 2 uses
  %i.jy = lshr i64 %i.jx, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !noalias !97722, !noundef !315
  %i.kb = trunc i64 %i.jx to i8
  %i.kc = and i8 %i.kb, 7
  %i.kd = xor i8 %i.ka, -1
  %i.ke = lshr i8 %i.kd, %i.kc
  %i.kf = trunc i8 %i.ke to i1
  br i1 %i.kf, label %.invoke459.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.r
  %i.kg = invoke fastcc { ptr, i64 } @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common19get_string_value_at(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ci, i64 noundef %.sroa.058.0318.i)
          to label %bb.cy unwind label %.loopexit.i, !noalias !97662 ; 2 uses

.invoke459.i:                                     ; preds = %bb.fp, %bb.cy, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke fastcc void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE11append_nullCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.bn)
          to label %.invoke.i unwind label %.loopexit.i, !noalias !97662

bb.cy:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.kh = extractvalue { ptr, i64 } %i.kg, 0      ; 3 uses
  %i.ki = extractvalue { ptr, i64 } %i.kg, 1      ; 2 uses
  %.not96.i = icmp eq ptr %i.kh, null
  br i1 %.not96.i, label %.invoke459.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !97723)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !97652
  store i64 %.sroa.058.0318.i, ptr %i.t, align 8, !noalias !97724
  %i.kj = load i64, ptr %i.cq, align 8, !alias.scope !97723, !noalias !97662, !noundef !315
  %i.kk = lshr i64 %i.kj, 3                       ; 2 uses
  %i.kl = add nsw i64 %i.kk, -1                   ; 2 uses
  %i.km = icmp ult i64 %.sroa.058.0318.i, %i.kl
  br i1 %i.km, label %bb.db, label %bb.da, !prof !321

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !97724
  store i64 %i.kl, ptr %i.s, align 8, !noalias !97724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !97724
  store ptr %i.t, ptr %i.r, align 8, !noalias !97724
  %.sroa.42.0..sroa_idx.i152.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i152.i, align 8, !noalias !97724
  %i.kn = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr @737, ptr %i.kn, align 8, !noalias !97724
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !97724
  %i.ko = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr @739, ptr %i.ko, align 8, !noalias !97724
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !97724
  %i.kp = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.s, ptr %i.kp, align 8, !noalias !97724
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !97724
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @740, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @741) #72
          to label %.noexc153.i unwind label %.loopexit.split-lp.i, !noalias !97662

.noexc153.i:                                      ; preds = %bb.da
  unreachable

bb.db:                                            ; preds = %bb.cz
  call void @llvm.experimental.noalias.scope.decl(metadata !97725)
  %i.kq = load ptr, ptr %i.de, align 8, !alias.scope !97726, !noalias !97662, !noundef !315 ; 2 uses
  %i.kr = icmp samesign ult i64 %i.ek, %i.kk
  call void @llvm.assume(i1 %i.kr)
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.ek
  %i.kt = load i64, ptr %i.ks, align 8, !noalias !97727, !noundef !315
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %.sroa.058.0318.i
  %i.kv = load i64, ptr %i.ku, align 8, !noalias !97727, !noundef !315 ; 2 uses
  %i.kw = load ptr, ptr %i.df, align 8, !alias.scope !97726, !noalias !97662, !noundef !315
  %i.kx = getelementptr inbounds i8, ptr %i.kw, i64 %i.kv
  %i.ky = sub i64 %i.kt, %i.kv                    ; 2 uses
  %i.kz = icmp sgt i64 %i.ky, -1
  call void @llvm.assume(i1 %i.kz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !97652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !97652
  store ptr %i.kh, ptr %i.q, align 8, !noalias !97728
  store i64 %i.ki, ptr %i.dg, align 8, !noalias !97728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !97728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !97728
  invoke fastcc void @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common15parse_json_path(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kh, i64 noundef %i.ki)
          to label %.noexc163.i unwind label %.loopexit.i, !noalias !97662

.noexc163.i:                                      ; preds = %bb.db
  %i.la = load i64, ptr %i.o, align 8, !range !320, !noalias !97728, !noundef !315 ; 2 uses
  %.not.i154.i = icmp eq i64 %i.la, -1
  %.sroa.6.i.sroa.0.0.copyload200.i = load i64, ptr %i.dh, align 8, !noalias !97728 ; 6 uses
  %.sroa.6.i.sroa.7.0.copyload203.i = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx202.i, align 8, !noalias !97728 ; 6 uses
  %.sroa.6.i.sroa.8.0.copyload207.i = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx206.i, align 8, !noalias !97728 ; 6 uses
  br i1 %.not.i154.i, label %bb.dc, label %.thread236.i

.thread236.i:                                     ; preds = %.noexc163.i
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.524.0.copyload.i.i = load i64, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !noalias !97728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !97728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !97728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !97652
  br label %.loopexit250.i

bb.dc:                                            ; preds = %.noexc163.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !97728
  store i64 %.sroa.6.i.sroa.0.0.copyload200.i, ptr %i.p, align 8, !noalias !97728
  store ptr %.sroa.6.i.sroa.7.0.copyload203.i, ptr %.sroa.6.i.sroa.7.0..sroa_idx204.i, align 8, !noalias !97728
  store i64 %.sroa.6.i.sroa.8.0.copyload207.i, ptr %.sroa.6.i.sroa.8.0..sroa_idx208.i, align 8, !noalias !97728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !97728
  store ptr %i.kx, ptr %i.di, align 8, !noalias !97728
  store i64 %i.ky, ptr %i.dj, align 8, !noalias !97728
  store i64 0, ptr %i.n, align 8, !noalias !97728
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.429.0..sroa_idx.i.i, align 8, !noalias !97728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !97728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !97728
  invoke void @_RNvMs_NtNtCskKR1pP4skmg_5jsonb8jsonpath8selectorNtB4_8Selector12select_value(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.de unwind label %bb.dd, !noalias !97729

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.ff, %bb.dk, %bb.dj, %bb.dd
  %.pn.i.i = phi { ptr, i32 } [ %i.lb, %bb.dd ], [ %i.ne, %bb.ff ], [ %i.lf, %bb.dj ], [ %i.lf, %bb.dk ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath8selector8SelectorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.n) #73, !noalias !97729
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path8JsonPathECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.p) #73
          to label %.body.i unwind label %bb.fe, !noalias !97729

bb.dd:                                            ; preds = %bb.dc
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i

bb.de:                                            ; preds = %bb.dc
  %i.lc = load i64, ptr %i.m, align 8, !range !383, !noalias !97728, !noundef !315
  %.not57.i.i = icmp eq i64 %i.lc, -1             ; 2 uses
  br i1 %.not57.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !97728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !97728
  store ptr %i.q, ptr %i.a, align 8, !noalias !97728
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.435.0..sroa_idx.i.i, align 8, !noalias !97728
  store ptr %i.c, ptr %i.dk, align 8, !noalias !97728
  store ptr @_RNvXs1_NtCskKR1pP4skmg_5jsonb5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.453.0..sroa_idx.i.i, align 8, !noalias !97728
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @868, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i.i unwind label %bb.ff, !noalias !97729

bb.dg:                                            ; preds = %bb.de
  %i.ld = load i64, ptr %i.dl, align 8, !range !334, !noalias !97728, !noundef !315 ; 4 uses
  %.not58.i.i = icmp eq i64 %i.ld, -1
  br i1 %.not58.i.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %.sroa.5.0.copyload.i161.i = load ptr, ptr %.sroa.5.0..sroa_idx.i160.i, align 8, !noalias !97728, !nonnull !315, !noundef !315 ; 3 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i162.i, align 8, !noalias !97728 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !97728
  store ptr %.sroa.5.0.copyload.i161.i, ptr %i.l, align 8, !noalias !97728
  store i64 %.sroa.7.0.copyload.i.i, ptr %i.dm, align 8, !noalias !97728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !97728
  invoke void @_RNvMNtNtCskKR1pP4skmg_5jsonb9functions6scalarNtNtB6_3raw8RawJsonb7is_null(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
          to label %bb.dl unwind label %bb.dj, !noalias !97729

bb.di:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i, %bb.do, %bb.dg
  %.sroa.0175.0.i = phi i64 [ 9, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ], [ -1, %bb.do ], [ -1, %bb.dg ]
  %.sroa.9.0.i = phi i64 [ %.sroa.9.8.copyload176.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ], [ %i.ld, %bb.do ], [ -1, %bb.dg ] ; 6 uses
  %.sroa.18.0.i = phi i64 [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ], [ %.sroa.06.0.i.i, %bb.do ], [ undef, %bb.dg ] ; 2 uses
  %.sroa.17.0.i = phi i64 [ %.sroa.17.8.copyload180.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ], [ %.sroa.7.0.copyload.i.i, %bb.do ], [ undef, %bb.dg ] ; 6 uses
  %.sroa.14177.0.i = phi ptr [ %.sroa.14177.8.copyload178.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ], [ %.sroa.5.0.copyload.i161.i, %bb.do ], [ undef, %bb.dg ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !97728
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath8selector8SelectorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.n), !noalias !97729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !97728
  %i.le = icmp eq i64 %.sroa.6.i.sroa.8.0.copyload207.i, 0
  br i1 %i.le, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %.lr.ph

bb.dj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit100.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit93.i.i, %bb.ee, %bb.ea, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit86.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit79.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, %bb.dh
  %i.lf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lg = icmp eq i64 %i.ld, 0
  br i1 %i.lg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i161.i, i64 noundef %i.ld, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !97729
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i

bb.dl:                                            ; preds = %bb.dh
  %i.lh = load i64, ptr %i.k, align 8, !range !383, !noalias !97728, !noundef !315 ; 6 uses
  %.not59.i.i = icmp eq i64 %i.lh, -1
  br i1 %.not59.i.i, label %bb.dm, label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  %i.li = load i8, ptr %.sink2.i.i.sroa.gep107.i.i, align 8, !range !327, !noalias !97728, !noundef !315
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %bb.dn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.dr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i, %bb.dq, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !97728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !97728
  invoke void @_RNvMNtNtCskKR1pP4skmg_5jsonb9functions6scalarNtNtB6_3raw8RawJsonb10is_boolean(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
          to label %bb.ds unwind label %bb.dj, !noalias !97729

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !97728
  br label %bb.do

bb.do:                                            ; preds = %bb.fc, %bb.fb, %bb.ev, %bb.ep, %bb.ei, %bb.eh, %bb.ed, %bb.du, %bb.dn
  %.sroa.06.0.i.i = phi i64 [ 4, %bb.fb ], [ 6, %bb.fc ], [ 5, %bb.ev ], [ 4, %bb.ep ], [ 0, %bb.dn ], [ 2, %bb.ei ], [ 1, %bb.du ], [ 3, %bb.eh ], [ 3, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !97728
  br label %bb.di

bb.dp:                                            ; preds = %bb.dl
  call void @llvm.experimental.noalias.scope.decl(metadata !97730)
  call void @llvm.experimental.noalias.scope.decl(metadata !97731)
  %i.lk = add nsw i64 %i.lh, 9223372036854775789
  %i.ll = icmp ugt i64 %i.lh, -9223372036854775790
  %i.lm = select i1 %i.ll, i64 %i.lk, i64 18
  switch i64 %i.lm, label %bb.dq [
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 4, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 5, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 6, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 7, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 8, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 9, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 10, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 11, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 12, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 13, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 14, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 15, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 16, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
    i64 17, label %bb.dr
  ]

bb.dq:                                            ; preds = %bb.dp
  %i.ln = icmp ne i64 %i.lh, -9223372036854775792
  call void @llvm.assume(i1 %i.ln)
  %or.cond.i.i.i.i.i = icmp slt i64 %i.lh, 1
  br i1 %or.cond.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i: ; preds = %bb.dr, %bb.dq
  %.sink2.i.i.sroa.phi.i.i = phi ptr [ %.sink2.i.i.sroa.gep.i.i, %bb.dr ], [ %.sink2.i.i.sroa.gep107.i.i, %bb.dq ]
  %.val.i.sink.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %bb.dr ], [ %i.lh, %bb.dq ]
  %.val1.i.i.i.i.i = load ptr, ptr %.sink2.i.i.sroa.phi.i.i, align 8, !alias.scope !97732, !noalias !97728, !nonnull !315, !noundef !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.sink.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !97733
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

bb.dr:                                            ; preds = %bb.dp
  %.val.i.i.i.i.i = load i64, ptr %.sink2.i.i.sroa.gep107.i.i, align 8, !alias.scope !97734, !noalias !97728 ; 2 uses
  %i.lo = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.lo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i

bb.ds:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  %i.lp = load i64, ptr %i.j, align 8, !range !383, !noalias !97728, !noundef !315 ; 6 uses
  %.not60.i.i = icmp eq i64 %i.lp, -1
  br i1 %.not60.i.i, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.lq = load i8, ptr %.sink2.i.i75.sroa.gep108.i.i, align 8, !range !327, !noalias !97728, !noundef !315
  %i.lr = trunc nuw i8 %i.lq to i1
  br i1 %i.lr, label %bb.du, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit79.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit79.i.i: ; preds = %bb.dx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i74.i.i, %bb.dw, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !97728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !97728
  invoke void @_RNvMNtNtCskKR1pP4skmg_5jsonb9functions6scalarNtNtB6_3raw8RawJsonb9is_number(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
end_hunk_8
begin_hunk_9_@_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_11OneShotExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan7execute:bb.a
.thread:                                          ; preds = %bb.z
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.aw, ptr noundef nonnull align 1 dereferenceable(37) @1311, i64 37, i1 false)
  store i64 9, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 37, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aw, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 37, ptr %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  br label %bb.y

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53.sink.split: ; preds = %bb.y, %bb.ae
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextE9drop_slowCs5E8EBwPtAkp_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53.sink.split, %bb.ae, %bb.y
  ret void

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion(ptr nonnull %i.aj, ptr nonnull %i.al) #73
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.d, %bb.ac
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.ae:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.633.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.763, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.763)
  store i64 9, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.8.copyload, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.6.8.copyload, ptr %.sroa.532.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !101330)
  call void @llvm.experimental.noalias.scope.decl(metadata !101331)
  %i.bd = load ptr, ptr %i.e, align 8, !alias.scope !101332, !nonnull !315, !noundef !315
  %i.be = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !101332
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %.body, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_11OneShotExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan8children(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #38 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider10udaf_names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101371)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !101371, !noalias !101372, !nonnull !315, !noundef !315 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.e, align 16, !noalias !101373
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2392
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !101371, !noalias !101372, !noundef !315 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101374)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101375
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !101376
  %i.n = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.6.0 = phi ptr [ %i.k, %bb.b ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  %.sroa.018.0.copyload.i = phi ptr [ %i.e, %bb.b ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.j, %bb.b ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [32 x i8], ptr %.sroa.018.0.copyload.i, i64 %i.u
  %i.w = add i64 %i.g, -1                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -32
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !101377
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !101375 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.e

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !101374, !noalias !101378
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !101374, !noalias !101378
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !101374, !noalias !101378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101375
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.pr.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !101379
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !101375 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !101375
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 3 uses
  %i.ac = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.g, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !prof !317

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !101380
  %i.ae = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 17) 8) #71, !noalias !101380 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ac) #72
          to label %.noexc.i unwind label %bb.c, !noalias !101375

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.ae, %bb.g ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.ag)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !101375
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !101375
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !101375
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !101375
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !101375
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !101375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101382)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101383
  %i.ah = icmp eq i64 %i.w, 0
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.ba, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %i.aj = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 4 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %i.ak = phi i16 [ %i.t, %.lr.ph.i.i.i ], [ %i.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.j ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !101384
  %i.an = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -512 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.an to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %.lcssa25.i.i.i = phi ptr [ %.lcssa26.i.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1519.i.i.i = phi ptr [ %.lcssa152021.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ak, %bb.j ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.aq = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = and i16 %i.aq, %.lcssa.i.i.i.i.i.i.i
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [32 x i8], ptr %.lcssa1519.i.i.i, i64 %i.au
  %i.aw = add i64 %.val1722.i.i.i, -1             ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -32
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %.noexc6.i unwind label %bb.o, !noalias !101375

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !101383 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !101383 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !101383
  %i.ay = load i64, ptr %i.c, align 8, !range !322, !alias.scope !101385, !noalias !101386, !noundef !315
  %i.az = icmp eq i64 %i.aj, %i.ay
  br i1 %i.az, label %bb.n, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i, %bb.k
  %i.ba = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i ], [ %i.ai, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.aj ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bb, align 8, !noalias !101383
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !101383
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !101383
  %i.bc = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !101385, !noalias !101386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101383
  %i.bd = icmp eq i64 %i.aw, 0
  br i1 %i.bd, label %.loopexit.i, label %bb.j

bb.l:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !101387
  br label %.body.i

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aj, i64 noundef %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i unwind label %bb.l, !noalias !101386

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !101385, !noalias !101386
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.be, %bb.m ], [ %i.be, %bb.l ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73, !noalias !101375
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc6.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !101378
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body.i, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101375
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider10udwf_names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101426)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !101426, !noalias !101427, !nonnull !315, !noundef !315 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.e, align 16, !noalias !101428
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2440
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !101426, !noalias !101427, !noundef !315 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101430
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !101431
  %i.n = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.6.0 = phi ptr [ %i.k, %bb.b ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  %.sroa.018.0.copyload.i = phi ptr [ %i.e, %bb.b ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.j, %bb.b ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [32 x i8], ptr %.sroa.018.0.copyload.i, i64 %i.u
  %i.w = add i64 %i.g, -1                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -32
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !101432
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !101430 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.e

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !101429, !noalias !101433
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !101429, !noalias !101433
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !101429, !noalias !101433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101430
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.pr.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !101434
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !101430 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !101430
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 3 uses
  %i.ac = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.g, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !prof !317

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !101435
  %i.ae = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 17) 8) #71, !noalias !101435 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ac) #72
          to label %.noexc.i unwind label %bb.c, !noalias !101430

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.ae, %bb.g ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.ag)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !101430
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !101430
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !101430
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !101430
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !101430
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !101430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101430
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101437)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101438
  %i.ah = icmp eq i64 %i.w, 0
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.ba, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %i.aj = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 4 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %i.ak = phi i16 [ %i.t, %.lr.ph.i.i.i ], [ %i.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.j ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !101439
  %i.an = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -512 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.an to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %.lcssa25.i.i.i = phi ptr [ %.lcssa26.i.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1519.i.i.i = phi ptr [ %.lcssa152021.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ak, %bb.j ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.aq = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = and i16 %i.aq, %.lcssa.i.i.i.i.i.i.i
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [32 x i8], ptr %.lcssa1519.i.i.i, i64 %i.au
  %i.aw = add i64 %.val1722.i.i.i, -1             ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -32
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %.noexc6.i unwind label %bb.o, !noalias !101430

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !101438 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !101438 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !101438
  %i.ay = load i64, ptr %i.c, align 8, !range !322, !alias.scope !101440, !noalias !101441, !noundef !315
  %i.az = icmp eq i64 %i.aj, %i.ay
  br i1 %i.az, label %bb.n, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i, %bb.k
  %i.ba = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i ], [ %i.ai, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.aj ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bb, align 8, !noalias !101438
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !101438
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !101438
  %i.bc = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !101440, !noalias !101441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101438
  %i.bd = icmp eq i64 %i.aw, 0
  br i1 %i.bd, label %.loopexit.i, label %bb.j

bb.l:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !101442
  br label %.body.i

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aj, i64 noundef %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i unwind label %bb.l, !noalias !101441

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !101440, !noalias !101441
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.be, %bb.m ], [ %i.be, %bb.l ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73, !noalias !101430
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc6.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !101433
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body.i, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101430
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider15get_window_meta(ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #39 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101459)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !101459, !noalias !101460, !noundef !315
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !101459, !noalias !101460, !noundef !315
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %.val5.i = load i64, ptr %i.f, align 8, !alias.scope !101459, !noalias !101460, !noundef !315
  %i.g = tail call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECsc85D0lJ81Z_16lance_datafusion(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !101459 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101462)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !101463, !noalias !101464, !noundef !315 ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !101463, !noalias !101464, !nonnull !315, !noundef !315 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.d ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.ah, %bb.d ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !101465 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i
  %.sroa.06.0.i34.i.i = phi i16 [ %i.af, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.v ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -16
  %.val4.i.i.i = load i64, ptr %i.x, align 8, !noalias !101466, !noundef !315
  %i.y = icmp eq i64 %2, %.val4.i.i.i
  br i1 %i.y, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, !prof !331

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %.lr.ph.i.i
  %i.z = getelementptr i8, ptr %i.w, i64 -24
  %.val3.i.i.i = load ptr, ptr %i.z, align 8, !noalias !101466, !nonnull !315, !noundef !315
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %.val3.i.i.i, i64 %2), !alias.scope !101467, !noalias !101468
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, !prof !332

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, %bb.c
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread, !prof !316

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i, %.lr.ph.i.i
  %i.ae = add i16 %.sroa.06.0.i34.i.i, -1
  %i.af = and i16 %i.ae, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ag = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i.i, %i.ag
  br label %bb.c

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !315, !noundef !315 ; 2 uses
  %i.ak = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.e, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.0.0 = phi ptr [ %i.aj, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit ], [ null, %bb.a ], [ null, %._crit_edge.i.i ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider16get_table_source(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB4_14TableReferenceNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @1314, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(56) %2) #73
          to label %bb.d unwind label %bb.c

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 4, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(56) %2)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider17get_expr_planners(ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %0) unnamed_addr #34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !315, !noundef !315
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.d = load i64, ptr %i.c, align 8, !noundef !315
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}
end_hunk_9
begin_hunk_10_@_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider21get_higher_order_meta:bb.a
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !101577, !noalias !101578, !noundef !315 ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !101577, !noalias !101578, !nonnull !315, !noundef !315 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.d ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.ah, %bb.d ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !101579 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i
  %.sroa.06.0.i34.i.i = phi i16 [ %i.af, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.v ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -16
  %.val4.i.i.i = load i64, ptr %i.x, align 8, !noalias !101580, !noundef !315
  %i.y = icmp eq i64 %2, %.val4.i.i.i
  br i1 %i.y, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, !prof !331

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %.lr.ph.i.i
  %i.z = getelementptr i8, ptr %i.w, i64 -24
  %.val3.i.i.i = load ptr, ptr %i.z, align 8, !noalias !101580, !nonnull !315, !noundef !315
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %.val3.i.i.i, i64 %2), !alias.scope !101581, !noalias !101582
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, !prof !332

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, %bb.c
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread, !prof !316

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i, %.lr.ph.i.i
  %i.ae = add i16 %.sroa.06.0.i34.i.i, -1
  %i.af = and i16 %i.ae, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ag = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i.i, %i.ag
  br label %bb.c

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !315, !noundef !315 ; 2 uses
  %i.ak = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.e, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.0.0 = phi ptr [ %i.aj, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit ], [ null, %bb.a ], [ null, %._crit_edge.i.i ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider27higher_order_function_names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2320
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101621)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !101621, !noalias !101622, !nonnull !315, !noundef !315 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.e, align 16, !noalias !101623
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2344
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !101621, !noalias !101622, !noundef !315 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101624)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101625
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !101626
  %i.n = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.6.0 = phi ptr [ %i.k, %bb.b ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  %.sroa.018.0.copyload.i = phi ptr [ %i.e, %bb.b ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.j, %bb.b ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [32 x i8], ptr %.sroa.018.0.copyload.i, i64 %i.u
  %i.w = add i64 %i.g, -1                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -32
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !101627
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !101625 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.e

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !101624, !noalias !101628
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !101624, !noalias !101628
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !101624, !noalias !101628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101625
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.pr.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !101629
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !101625 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !101625
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 3 uses
  %i.ac = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.g, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !prof !317

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !101630
  %i.ae = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 17) 8) #71, !noalias !101630 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ac) #72
          to label %.noexc.i unwind label %bb.c, !noalias !101625

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.ae, %bb.g ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.ag)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !101625
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !101625
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !101625
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !101625
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !101625
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !101625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101632)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101633
  %i.ah = icmp eq i64 %i.w, 0
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.ba, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %i.aj = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 4 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %i.ak = phi i16 [ %i.t, %.lr.ph.i.i.i ], [ %i.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.j ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !101634
  %i.an = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -512 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.an to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %.lcssa25.i.i.i = phi ptr [ %.lcssa26.i.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1519.i.i.i = phi ptr [ %.lcssa152021.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ak, %bb.j ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.aq = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = and i16 %i.aq, %.lcssa.i.i.i.i.i.i.i
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [32 x i8], ptr %.lcssa1519.i.i.i, i64 %i.au
  %i.aw = add i64 %.val1722.i.i.i, -1             ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -32
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %.noexc6.i unwind label %bb.o, !noalias !101625

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !101633 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !101633 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !101633
  %i.ay = load i64, ptr %i.c, align 8, !range !322, !alias.scope !101635, !noalias !101636, !noundef !315
  %i.az = icmp eq i64 %i.aj, %i.ay
  br i1 %i.az, label %bb.n, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i, %bb.k
  %i.ba = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i ], [ %i.ai, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.aj ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bb, align 8, !noalias !101633
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !101633
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !101633
  %i.bc = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !101635, !noalias !101636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101633
  %i.bd = icmp eq i64 %i.aw, 0
  br i1 %i.bd, label %.loopexit.i, label %bb.j

bb.l:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !101637
  br label %.body.i

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aj, i64 noundef %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i unwind label %bb.l, !noalias !101636

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !101635, !noalias !101636
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.be, %bb.m ], [ %i.be, %bb.l ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73, !noalias !101625
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc6.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !101628
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body.i, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101625
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider7options(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(2920) %0) unnamed_addr #7 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider9udf_names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101676)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !101676, !noalias !101677, !nonnull !315, !noundef !315 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.e, align 16, !noalias !101678
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2296
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !101676, !noalias !101677, !noundef !315 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101679)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101680
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !101681
  %i.n = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.6.0 = phi ptr [ %i.k, %bb.b ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  %.sroa.018.0.copyload.i = phi ptr [ %i.e, %bb.b ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.j, %bb.b ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [32 x i8], ptr %.sroa.018.0.copyload.i, i64 %i.u
  %i.w = add i64 %i.g, -1                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -32
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !101682
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !101680 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.e

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !101679, !noalias !101683
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !101679, !noalias !101683
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !101679, !noalias !101683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101680
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.pr.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !101684
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !101680 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !101680
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 3 uses
  %i.ac = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.g, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !prof !317

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !101685
  %i.ae = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 17) 8) #71, !noalias !101685 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ac) #72
          to label %.noexc.i unwind label %bb.c, !noalias !101680

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.ae, %bb.g ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.ag)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !101680
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !101680
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !101680
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !101680
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !101680
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !101680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101687)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101688
  %i.ah = icmp eq i64 %i.w, 0
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.ba, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %i.aj = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 4 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %i.ak = phi i16 [ %i.t, %.lr.ph.i.i.i ], [ %i.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.j ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !101689
  %i.an = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -512 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.an to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %.lcssa25.i.i.i = phi ptr [ %.lcssa26.i.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1519.i.i.i = phi ptr [ %.lcssa152021.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ak, %bb.j ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.aq = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = and i16 %i.aq, %.lcssa.i.i.i.i.i.i.i
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [32 x i8], ptr %.lcssa1519.i.i.i, i64 %i.au
  %i.aw = add i64 %.val1722.i.i.i, -1             ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -32
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %.noexc6.i unwind label %bb.o, !noalias !101680

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !101688 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !101688 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !101688
  %i.ay = load i64, ptr %i.c, align 8, !range !322, !alias.scope !101690, !noalias !101691, !noundef !315
  %i.az = icmp eq i64 %i.aj, %i.ay
  br i1 %i.az, label %bb.n, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i, %bb.k
  %i.ba = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i ], [ %i.ai, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.aj ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bb, align 8, !noalias !101688
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !101688
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !101688
  %i.bc = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !101690, !noalias !101691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101688
  %i.bd = icmp eq i64 %i.aw, 0
  br i1 %i.bd, label %.loopexit.i, label %bb.j

bb.l:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !101692
  br label %.body.i

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aj, i64 noundef %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i unwind label %bb.l, !noalias !101691

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !101690, !noalias !101691
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.be, %bb.m ], [ %i.be, %bb.l ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73, !noalias !101680
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc6.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !101683
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body.i, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101680
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtB5_12DataFrameExt15group_by_stream(ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(336) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1776 x i8], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.a, ptr noundef nonnull align 16 dereferenceable(336) %0, i64 336, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store ptr %1, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1760
  store i8 0, ptr %i.d, align 16
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !101695
  %i.e = tail call noundef align 16 dereferenceable_or_null(1776) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1776, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !101695 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXs1_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtBM_12DataFrameExt15group_by_stream0E3newBO_.exit, !prof !316

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 1776) #72
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXs1_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtBJ_12DataFrameExt15group_by_stream0EBL_(ptr noundef nonnull align 16 dereferenceable(1776) %i.a) #73
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXs1_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtBM_12DataFrameExt15group_by_stream0E3newBO_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1776) %i.e, ptr noundef nonnull align 16 dereferenceable(1776) %i.a, i64 1776, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @1320, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtCscTsYlPPaaMf_22datafusion_expr_common6dyn_eqNtNtCsc85D0lJ81Z_16lance_datafusion7planner14CastListF16UdfNtB5_7DynHash8dyn_hashBU_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !315, !noalias !101718, !nonnull !315
  tail call void %i.d(ptr noundef nonnull %1, i64 noundef -4266729591828681060), !noalias !101718, !inline_history !239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101720)
  call fastcc void @_RINvXsA_NtCscTsYlPPaaMf_22datafusion_expr_common9signatureNtB6_13TypeSignatureNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1g_6HasherEL_ECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i8, ptr %i.e, align 8, !range !391, !alias.scope !101721, !noalias !101722, !noundef !315
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !315, !noalias !101723, !nonnull !315 ; 2 uses
  tail call void %i.i(ptr noundef nonnull %1, i64 noundef %i.g), !noalias !101723, !inline_history !101706
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !range !334, !alias.scope !101721, !noalias !101722, !noundef !315
  %i.l = icmp ne i64 %i.k, -1                     ; 2 uses
  %i.m = zext i1 %i.l to i64
  tail call void %i.i(ptr noundef nonnull %1, i64 noundef %i.m), !noalias !101724, !inline_history !101706
  br i1 %i.l, label %bb.b, label %_RINvXs9_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB6_14CastListF16UdfNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB18_6HasherEL_EB8_.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !101721, !noalias !101722, !nonnull !315, !noundef !315 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !101721, !noalias !101722, !noundef !315 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !315, !noalias !101725, !nonnull !315
  tail call void %i.s(ptr noundef nonnull %1, i64 noundef %i.q), !noalias !101725, !inline_history !101711
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101726)
  %.idx.i.i.i = mul nuw nsw i64 %i.q, 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i
  %i.u = icmp eq i64 %i.q, 0
  br i1 %i.u, label %_RINvXs9_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB6_14CastListF16UdfNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB18_6HasherEL_EB8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !315, !noalias !101727, !nonnull !315
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.0.01.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.x, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr i8, ptr %.sroa.0.01.i.i.i, i64 8
  %.sroa.0.0.val.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !101726, !noalias !101728, !nonnull !315, !noundef !315
  %i.z = getelementptr i8, ptr %.sroa.0.01.i.i.i, i64 16
  %.sroa.0.0.val3.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !101726, !noalias !101728, !noundef !315
  tail call void %i.w(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val.i.i.i, i64 noundef %.sroa.0.0.val3.i.i.i), !noalias !101729, !inline_history !101717
  %i.aa = icmp eq ptr %i.x, %i.t
  br i1 %i.aa, label %_RINvXs9_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB6_14CastListF16UdfNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB18_6HasherEL_EB8_.exit, label %bb.c

_RINvXs9_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB6_14CastListF16UdfNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB18_6HasherEL_EB8_.exit: ; preds = %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtCscTsYlPPaaMf_22datafusion_expr_common6dyn_eqNtNtNtCsdS3zsMIHox4_20datafusion_functions4core8getfield12GetFieldFuncNtB5_7DynHash8dyn_hashCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !315, !noalias !101752, !nonnull !315
  tail call void %i.d(ptr noundef nonnull %1, i64 noundef 4913738849653309957), !noalias !101752, !inline_history !239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101754)
  call fastcc void @_RINvXsA_NtCscTsYlPPaaMf_22datafusion_expr_common9signatureNtB6_13TypeSignatureNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1g_6HasherEL_ECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i8, ptr %i.e, align 8, !range !391, !alias.scope !101755, !noalias !101756, !noundef !315
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !315, !noalias !101757, !nonnull !315 ; 2 uses
  tail call void %i.i(ptr noundef nonnull %1, i64 noundef %i.g), !noalias !101757, !inline_history !101740
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !range !334, !alias.scope !101755, !noalias !101756, !noundef !315
  %i.l = icmp ne i64 %i.k, -1                     ; 2 uses
  %i.m = zext i1 %i.l to i64
  tail call void %i.i(ptr noundef nonnull %1, i64 noundef %i.m), !noalias !101758, !inline_history !101740
  br i1 %i.l, label %bb.b, label %_RINvXs6_NtNtCsdS3zsMIHox4_20datafusion_functions4core8getfieldNtB6_12GetFieldFuncNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1j_6HasherEL_ECsc85D0lJ81Z_16lance_datafusion.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !101755, !noalias !101756, !nonnull !315, !noundef !315 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !101755, !noalias !101756, !noundef !315 ; 3 uses
end_hunk_10
