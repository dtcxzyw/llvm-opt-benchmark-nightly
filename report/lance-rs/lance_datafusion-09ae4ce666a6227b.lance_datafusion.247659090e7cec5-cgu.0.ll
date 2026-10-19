Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_RINvNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builder14subquery_aliasNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceECsc85D0lJ81Z_16lance_datafusion:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.aj, ptr %i.af, align 8, !noalias !26687
  %.sink18.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sink18.i.sroa.gep101.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sink15.i.sroa.gep102.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !26687
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.an)
          to label %bb.g unwind label %.thread106.i, !noalias !26687

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion.exit
  br i1 %.sroa.032.2110.i, label %bb.eg, label %.body.thread

.thread106.i:                                     ; preds = %bb.g, %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.ao, align 8, !noalias !26687, !nonnull !313, !noundef !313
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !26687, !nonnull !313, !noundef !313
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  invoke void @_RNvNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builder20unique_field_aliases(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at)
          to label %bb.h unwind label %.thread106.i, !noalias !26687

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !26687, !nonnull !313, !noundef !313 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !26687, !noundef !313 ; 9 uses
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
  %.val.i.i = load i64, ptr %i.ba, align 8, !range !332, !noalias !26688, !noundef !313
  %.not.i.i = icmp eq i64 %.val.i.i, -1
  br i1 %.not.i.i, label %bb.i, label %bb.n

.body59.thread.i:                                 ; preds = %bb.ef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %bb.bz, %.body.i.i.i, %bb.m
  %.sroa.032.4.ph.i = phi i1 [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsc85D0lJ81Z_16lance_datafusion.exit.thread.i ], [ false, %bb.ef ], [ true, %.body.i.i.i ], [ %.sroa.032.5.i, %bb.m ], [ false, %bb.bz ] ; 2 uses
  %.pn53.ph.i = phi { ptr, i32 } [ %.pn49.pn.pn116.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsc85D0lJ81Z_16lance_datafusion.exit.thread.i ], [ %.pn49.pn.pn116.i, %bb.ef ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %.body.i.i.i ], [ %i.bl, %bb.m ], [ %i.fg, %bb.bz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26689)
  call void @llvm.experimental.noalias.scope.decl(metadata !26690), !noalias !26687
  %i.bb = icmp eq i64 %i.ax, 0
  br i1 %i.bb, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.body59.thread.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.sroa.0.09.i.i.i = phi i64 [ %i.bd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ], [ 0, %.body59.thread.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.sroa.0.09.i.i.i ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.0.09.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26691), !noalias !26687
  %i.be = load i64, ptr %i.bc, align 8, !range !332, !alias.scope !26692, !noalias !26693, !noundef !313 ; 3 uses
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !26694), !noalias !26687
  %i.bg = icmp eq i64 %i.be, 0
  br i1 %i.bg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !26695, !noalias !26693, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !26696
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i
  %i.bi = icmp eq i64 %i.bd, %i.ax
  br i1 %i.bi, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.body59.thread.i
  %.val2.i = load i64, ptr %i.ad, align 8, !range !320, !alias.scope !26689, !noalias !26687, !noundef !313 ; 2 uses
  %i.bj = icmp eq i64 %.val2.i, 0
  br i1 %i.bj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.l

bb.l:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.bk = mul nuw i64 %.val2.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !26693
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion.exit

.thread.i:                                        ; preds = %bb.dm
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #73, !noalias !26687
  br label %.body.thread

bb.m:                                             ; preds = %bb.ds, %.loopexit.i, %bb.t, %bb.p, %bb.n
  %.sroa.032.5.i = phi i1 [ false, %bb.ds ], [ true, %bb.n ], [ false, %.loopexit.i ], [ true, %bb.t ], [ true, %bb.p ]
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body59.thread.i

._crit_edge:                                      ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !26687
  store ptr %i.aj, ptr %i.ac, align 8, !noalias !26687
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !26687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !26687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !26687
  %i.bm = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.an)
          to label %bb.p unwind label %bb.m, !noalias !26687

bb.o:                                             ; preds = %bb.cb, %._crit_edge
  %i.bn = phi ptr [ %i.fe, %bb.cb ], [ %i.aj, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !26687
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.bo)
          to label %bb.cc unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsc85D0lJ81Z_16lance_datafusion.exit.thread226.i, !noalias !26687

bb.p:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.bm, align 8, !noalias !26687, !nonnull !313, !noundef !313
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  invoke void @_RNvMNtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB2_8DFSchema4iter(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.br)
          to label %bb.q unwind label %bb.m, !noalias !26687

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !26697)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !26698, !noalias !26687 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !26698, !noalias !26687 ; 2 uses
  %i.bs = sub i64 %.sroa.5.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bs, i64 %i.ax) ; 6 uses
  %.sroa.699.16.copyload.i = load ptr, ptr %i.aa, align 8, !alias.scope !26699, !noalias !26687 ; 2 uses
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.9.16.copyload.i = load ptr, ptr %.sroa.9.16..sroa_idx.i, align 8, !alias.scope !26699, !noalias !26687 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !26687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !26700
  %i.bt = mul i64 %.sroa.0.0.i.i.i.i, 112         ; 3 uses
  %or.cond.i.i.i.i.i = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i, 82351536043346212
  br i1 %or.cond.i.i.i.i.i, label %bb.t, label %bb.r, !prof !315

bb.r:                                             ; preds = %bb.q
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !26701
  %i.bv = call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bt, i64 noundef range(i64 1, 17) 16) #71, !noalias !26701 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.t, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.s, %bb.q
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 16, %bb.s ], [ 0, %bb.q ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bt) #72
          to label %.noexc.i unwind label %bb.m, !noalias !26687

.noexc.i:                                         ; preds = %bb.t
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.r ], [ %i.bv, %bb.s ] ; 2 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.r ], [ %.sroa.0.0.i.i.i.i, %bb.s ] ; 2 uses
  %i.bx = icmp samesign ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.bx)
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.j, align 8, !noalias !26700
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %i.by, align 8, !noalias !26700
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26702)
  call void @llvm.experimental.noalias.scope.decl(metadata !26703)
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
  %i.ca = add nuw i64 %.val13.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.val13.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cc = add i64 %.val13.i.i.i.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i ; 2 uses
  %i.cd = getelementptr inbounds nuw [56 x i8], ptr %.sroa.699.16.copyload.i, i64 %i.cc ; 18 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.9.16.copyload.i, i64 %i.cc ; 2 uses
  %i.cf = load i64, ptr %i.cd, align 8, !range !316, !alias.scope !26704, !noalias !26705, !noundef !313 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cf, -1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i.i.i)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !26706
  call void @llvm.experimental.noalias.scope.decl(metadata !26707)
  call void @llvm.experimental.noalias.scope.decl(metadata !26708)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !26708, !noalias !26706, !nonnull !313, !noundef !313 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !26708, !noalias !26706, !noundef !313 ; 3 uses
  %i.ck = atomicrmw add ptr %i.ch, i64 1 monotonic, align 8, !noalias !26709
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
  store ptr %.sink16.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sink18.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26707, !noalias !26706
  store i64 %.sink13.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sink15.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26707, !noalias !26706
  br label %bb.aj

bb.aa:                                            ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !26708, !noalias !26706, !nonnull !313, !noundef !313 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !26708, !noalias !26706, !noundef !313
  %i.cq = atomicrmw add ptr %i.cn, i64 1 monotonic, align 8, !noalias !26709
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
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !26708, !noalias !26706, !nonnull !313, !noundef !313 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !26708, !noalias !26706, !noundef !313
  %i.cw = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !26709
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.y
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !26708, !noalias !26706, !nonnull !313, !noundef !313 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !26708, !noalias !26706, !noundef !313
  %i.dc = atomicrmw add ptr %i.cz, i64 1 monotonic, align 8, !noalias !26709
  %i.dd = icmp slt i64 %i.dc, 0
  br i1 %i.dd, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.af
  store ptr %i.ch, ptr %.sink18.i.sroa.gep8.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26707, !noalias !26706
  store i64 %i.cj, ptr %.sink15.i.sroa.gep9.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26707, !noalias !26706
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
  store ptr %.sink10.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.de, align 8, !alias.scope !26707, !noalias !26706
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink9.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sink7.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.df, align 8, !alias.scope !26707, !noalias !26706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.63.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sink18.i.sroa.gep8.i.i.i.i.i.i.i.i.i.i.i, i64 48, i1 false), !noalias !26706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26706
  %i.dg = load ptr, ptr %i.ce, align 8, !noalias !26706, !nonnull !313, !noundef !313
  br label %bb.al

bb.ak:                                            ; preds = %bb.u
  %i.dh = load ptr, ptr %i.ce, align 8, !noalias !26706, !nonnull !313, !noundef !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26711
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.ak ], [ %i.dg, %bb.aj ]
  store i64 %i.cf, ptr %i.e, align 8, !noalias !26712
  %i.di = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i.i.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26710
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di)
          to label %_RINvMs_NtCs2bHstFFhpHt_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceRNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.am, !noalias !26713

bb.am:                                            ; preds = %bb.al
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.body.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(56) %i.e)
          to label %.body.i.i.i unwind label %bb.ao, !noalias !26713

bb.ao:                                            ; preds = %bb.an
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !26713
  unreachable

_RINvMs_NtCs2bHstFFhpHt_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceRNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !26714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.56..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !26714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i.i.i.i.i.i.i.i.i, i64 80, i1 false), !noalias !26715
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i.i.i)
  %i.dl = load i64, ptr %i.cb, align 8, !range !332, !noalias !26706, !noundef !313
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dl, -1
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i, label %bb.bt, label %bb.ap

bb.ap:                                            ; preds = %_RINvMs_NtCs2bHstFFhpHt_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceRNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !26706
  store i64 4, ptr %i.i, align 16, !noalias !26716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.i.i.i.i.i.i.i.i.i.i, i64 80, i1 false), !noalias !26715
  store i64 0, ptr %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !26716
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.11.0..sroa_idx10.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !26716
  store i64 0, ptr %.sroa.13.0..sroa_idx14.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !26716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !26706
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.be, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26706
  call void @llvm.experimental.noalias.scope.decl(metadata !26717)
  call void @llvm.experimental.noalias.scope.decl(metadata !26718)
  %i.dm = load i64, ptr %i.cd, align 8, !range !337, !alias.scope !26718, !noalias !26706, !noundef !313 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !26718, !noalias !26706, !nonnull !313, !noundef !313 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !26718, !noalias !26706, !noundef !313 ; 3 uses
  %i.dr = atomicrmw add ptr %i.do, i64 1 monotonic, align 8, !noalias !26719
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
begin_hunk_1_@_RNvNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json26json_get_int_columnar_impl:bb.a
  store i64 12, ptr %i.ag, align 8, !noalias !89552
  %.not.i.i = icmp eq i64 %i.ae, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !89552
  store ptr %i.s, ptr %i.r, align 8, !noalias !89552
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !89552
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.t, ptr %i.ah, align 8, !noalias !89552
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !89552
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull @892, ptr noundef nonnull %i.r)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !89552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !89551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !89551
  %.sroa.11.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !89553
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8, !noalias !89553
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !noalias !89553
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !noalias !89553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !89551
  br label %bb.bg

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !89551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !89551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !89551
  %i.ai = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac)
          to label %.noexc28 unwind label %bb.bf  ; 2 uses

.noexc28:                                         ; preds = %bb.c
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0      ; 9 uses
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !89554
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !313, !noalias !89555, !nonnull !313
  invoke void %i.am(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.q, ptr noundef %i.aj)
          to label %.noexc29 unwind label %bb.bf, !inline_history !89503

.noexc29:                                         ; preds = %.noexc28
  %i.an = load i128, ptr %i.q, align 16, !noalias !89554, !noundef !313
  %i.ao = icmp eq i128 %i.an, 126164052404106896239213216138621634160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !89554
  br i1 %i.ao, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc29
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !89556
  %i.ap = call noundef dereferenceable_or_null(34) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 34, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !89556 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.ap, ptr noundef nonnull align 1 dereferenceable(34) @409, i64 34, i1 false), !noalias !89557
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !89558
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !313, !noalias !89559, !nonnull !313
  invoke void %i.ax(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noundef %i.au)
          to label %.noexc32 unwind label %bb.bf, !inline_history !89503

.noexc32:                                         ; preds = %.noexc31
  %i.ay = load i128, ptr %i.p, align 16, !noalias !89558, !noundef !313
  %i.az = icmp eq i128 %i.ay, -7452801274563340147934147702000895189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !89558
  br i1 %i.az, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !89560
  store i64 2, ptr %i.n, align 8, !noalias !89560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !89560
  store ptr %i.n, ptr %i.m, align 8, !noalias !89560
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !89560
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noundef nonnull @410, ptr noundef nonnull %i.m)
          to label %.noexc33 unwind label %bb.bf

.noexc33:                                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !89560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !89560
  %.sroa.7123.0.copyload.i = load ptr, ptr %i.ba, align 8, !noalias !89551
  %i.bb = ptrtoint ptr %.sroa.7123.0.copyload.i to i64
  %.sroa.18.16.copyload = load i64, ptr %i.af, align 8, !noalias !89553
  %.sroa.25.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.25.16.copyload = load i64, ptr %.sroa.25.16..sroa_idx, align 8, !noalias !89553
  %.sroa.29.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.29.16.copyload = load i64, ptr %.sroa.29.16..sroa_idx, align 8, !noalias !89553
  br label %bb.bg

bb.h:                                             ; preds = %.noexc32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !89551
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !89550, !noundef !313
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nsw i64 %i.be, -1                   ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89561)
  %i.bg = shl i64 %i.bf, 3                        ; 5 uses
  %i.bh = icmp ugt i64 %i.bf, 2305843009213693951
  %.not.i.i.i = icmp ugt i64 %i.bg, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.bh, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %.invoke, label %bb.i, !prof !315

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !89562
  %i.bj = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !89562 ; 2 uses
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
  store i64 %.sroa.4.0.i.i, ptr %i.y, align 8, !alias.scope !89561, !noalias !89551
  %.sroa.4.0..sroa_idx.i109.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.bo, ptr %.sroa.4.0..sroa_idx.i109.i, align 8, !alias.scope !89561, !noalias !89551
  %.sroa.5.0..sroa_idx.i110.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !89561, !noalias !89551
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i110.i, i8 0, i64 16, i1 false), !alias.scope !89561, !noalias !89551
  store i64 %i.bf, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !89561, !noalias !89551
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 5, i64 24, i1 false), !alias.scope !89561, !noalias !89551
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !89551
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE6finishCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.v, ptr noalias noundef align 8 dereferenceable(104) %i.y)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !89550

bb.l:                                             ; preds = %bb.bc, %.lr.ph.i
  %.sroa.068.0176.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cc, %bb.bc ] ; 7 uses
  %i.cc = add nuw i64 %.sroa.068.0176.i, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89563)
  %i.cd = load ptr, ptr %i.br, align 8, !alias.scope !89564, !noalias !89550, !noundef !313
  %.not.i.i111.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i111.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = load i64, ptr %i.bs, align 8, !alias.scope !89563, !noalias !89550, !noundef !313
  %i.cf = icmp ult i64 %.sroa.068.0176.i, %i.ce
  br i1 %i.cf, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.n, !prof !319

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @479, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @481) #72
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !89550

.noexc.i:                                         ; preds = %bb.n
  unreachable

.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bb, %.invoke225.i, %bb.aa, %.invoke.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %bb.z, %bb.n, %._crit_edge.i
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ag, %.body.i.i, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ck, %bb.q ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.ag ], [ %lpad.loopexit.split-lp131, %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.y) #73
          to label %.body unwind label %bb.be, !noalias !89550

bb.o:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !89551
  store i64 1, ptr %i.u, align 8, !noalias !89551
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %i.cg, align 8, !noalias !89551
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ch, ptr noundef nonnull align 8 dereferenceable(96) %i.v, i64 96, i1 false), !noalias !89551
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !89565
  %i.ci = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !89565 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.p, label %bb.s, !prof !314

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #72
          to label %.noexc112.i unwind label %bb.q, !noalias !89550

.noexc112.i:                                      ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ch)
          to label %.body.i unwind label %bb.r, !noalias !89550

bb.r:                                             ; preds = %bb.q
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !89550
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ci, ptr noundef nonnull align 8 dereferenceable(112) %i.u, i64 112, i1 false), !noalias !89550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !89551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !89551
  call void @llvm.experimental.noalias.scope.decl(metadata !89566)
  %.val.i.i = load i64, ptr %i.y, align 8, !alias.scope !89566, !noalias !89551 ; 2 uses
  %i.cm = icmp eq i64 %.val.i.i, 0
  br i1 %i.cm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val2.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i109.i, align 8, !alias.scope !89566, !noalias !89551, !nonnull !313, !noundef !313
  %i.cn = shl nuw i64 %.val.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !89567
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.t, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !range !321, !alias.scope !89568, !noalias !89551, !noundef !313
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.co)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.v, !noalias !89550

bb.v:                                             ; preds = %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.bq) #73
          to label %.body unwind label %bb.w, !noalias !89550

bb.w:                                             ; preds = %bb.v
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !89550
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.bq)
          to label %bb.bh unwind label %bb.bf

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.m
  %i.ct = load ptr, ptr %i.bt, align 8, !alias.scope !89563, !noalias !89550, !noundef !313
  %i.cu = load i64, ptr %i.bu, align 8, !alias.scope !89563, !noalias !89550, !noundef !313
  %i.cv = add i64 %i.cu, %.sroa.068.0176.i        ; 2 uses
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !89569, !noundef !313
  %i.cz = trunc i64 %i.cv to i8
  %i.da = and i8 %i.cz, 7
  %i.db = xor i8 %i.cy, -1
  %i.dc = lshr i8 %i.db, %i.da
  %i.dd = trunc i8 %i.dc to i1
  br i1 %i.dd, label %.invoke.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.l
  %i.de = invoke fastcc { ptr, i64 } @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common19get_string_value_at(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.au, i64 noundef %.sroa.068.0176.i)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !89550 ; 2 uses

.invoke.i:                                        ; preds = %bb.x, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE11append_nullCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.y)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !89550

bb.x:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.df = extractvalue { ptr, i64 } %i.de, 0      ; 2 uses
  %i.dg = extractvalue { ptr, i64 } %i.de, 1
  %.not103.i = icmp eq ptr %i.df, null
  br i1 %.not103.i, label %.invoke.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !89570)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !89551
  store i64 %.sroa.068.0176.i, ptr %i.l, align 8, !noalias !89571
  %i.dh = load i64, ptr %i.bc, align 8, !alias.scope !89570, !noalias !89550, !noundef !313
  %i.di = lshr i64 %i.dh, 3                       ; 2 uses
  %i.dj = add nsw i64 %i.di, -1                   ; 2 uses
  %i.dk = icmp ult i64 %.sroa.068.0176.i, %i.dj
  br i1 %i.dk, label %bb.aa, label %bb.z, !prof !319

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !89571
  store i64 %i.dj, ptr %i.k, align 8, !noalias !89571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !89571
  store ptr %i.l, ptr %i.j, align 8, !noalias !89571
  %.sroa.42.0..sroa_idx.i114.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i114.i, align 8, !noalias !89571
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @737, ptr %i.dl, align 8, !noalias !89571
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !89571
  %i.dm = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr @739, ptr %i.dm, align 8, !noalias !89571
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !89571
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.k, ptr %i.dn, align 8, !noalias !89571
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !89571
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @740, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @741) #72
          to label %.noexc115.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !89550

.noexc115.i:                                      ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !89572)
  %i.do = load ptr, ptr %i.bv, align 8, !alias.scope !89573, !noalias !89550, !noundef !313 ; 2 uses
  %i.dp = icmp samesign ult i64 %i.cc, %i.di
  call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.cc
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !89574, !noundef !313
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.sroa.068.0176.i
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !89574, !noundef !313 ; 2 uses
  %i.du = load ptr, ptr %i.bw, align 8, !alias.scope !89573, !noalias !89550, !noundef !313
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %i.dt
  %i.dw = sub i64 %i.dr, %i.dt                    ; 2 uses
  %i.dx = icmp sgt i64 %i.dw, -1
  call void @llvm.assume(i1 %i.dx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !89551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !89551
  store ptr %i.dv, ptr %i.x, align 8, !noalias !89551
  store i64 %i.dw, ptr %i.bx, align 8, !noalias !89551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !89551
  invoke fastcc void @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common21get_json_value_by_key(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.df, i64 noundef %i.dg)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !89550

bb.ab:                                            ; preds = %bb.aa
  %i.dy = load i64, ptr %i.w, align 8, !range !318, !noalias !89551, !noundef !313 ; 2 uses
  %.not104.i = icmp eq i64 %i.dy, -1
  %.sroa.070.0.copyload.i = load i64, ptr %i.by, align 8, !noalias !89551 ; 7 uses
  %.sroa.471.sroa.0.0.copyload.i = load ptr, ptr %.sroa.471.0..sroa_idx.i, align 8, !noalias !89551 ; 5 uses
  %.sroa.471.sroa.4.0.copyload.i = load i64, ptr %.sroa.471.sroa.4.0..sroa.471.0..sroa_idx.sroa_idx.i, align 8, !noalias !89551 ; 2 uses
  br i1 %.not104.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.679.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.679.0.copyload.i = load i64, ptr %.sroa.679.0..sroa_idx.i, align 8, !noalias !89551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !89551
  %i.dz = ptrtoint ptr %.sroa.471.sroa.0.0.copyload.i to i64
  store i64 %i.dz, ptr %.sroa.18, align 8, !alias.scope !89550
  br label %bb.bd

end_hunk_1
begin_hunk_2_@_RNvNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json28json_get_float_columnar_impl:bb.a
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXNtCs8SUNSmrkv52_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !89827
  %i.eb = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.q, ptr %i.eb, align 8, !noalias !89827
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !89827
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @744, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @745) #72
          to label %bb.y unwind label %bb.x, !noalias !89830

bb.x:                                             ; preds = %bb.w
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.p) #73
          to label %.body.i.i.i unwind label %bb.z, !noalias !89830

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !89830
  unreachable

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE13is_compatibleCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.aa, %bb.x, %bb.t
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ee, %bb.aa ], [ %.pn.i.i.i.i.i, %bb.t ], [ %i.ec, %bb.x ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.db) #73
          to label %.body5.i.i.i unwind label %bb.an, !noalias !89821

bb.ab:                                            ; preds = %.noexc.i17.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !89826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !89826
  %i.ef = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !89826, !noundef !313 ; 3 uses
  store i64 %i.eg, ptr %i.t, align 8, !noalias !89826
  %i.eh = icmp ult i64 %i.eg, 384307168202282326
  call void @llvm.assume(i1 %i.eh)
  %i.ei = icmp eq i64 %i.eg, 1
  br i1 %i.ei, label %bb.ad, label %bb.ac, !prof !319

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @518, ptr noundef nonnull @4482, ptr nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4483) #72
          to label %bb.ae unwind label %bb.aa, !noalias !89830

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !89826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !89826
  store i64 0, ptr %i.ef, align 8, !noalias !89826
  %i.ej = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !89826, !nonnull !313, !noundef !313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i64 24, i1 false), !noalias !89830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !89826
  invoke fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferdE3newCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s, i64 noundef %i.dv, i64 noundef %i.dt)
          to label %bb.af unwind label %bb.aa, !noalias !89830

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !89831
  %i.el = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.el, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.dw, i64 48, i1 false), !noalias !89832
  %i.em = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !89831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !89826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !89826
  %i.en = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !89820, !nonnull !313, !noundef !313 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !89820, !noundef !313 ; 4 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %.lr.ph

bb.ag:                                            ; preds = %.lr.ph
  %i.es = icmp eq i64 %i.eu, %i.eq
  br i1 %i.es, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af, %bb.ag
  %.sroa.0.0.i.i.i.i.i184 = phi i64 [ %i.eu, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.et = getelementptr inbounds nuw [136 x i8], ptr %i.eo, i64 %.sroa.0.0.i.i.i.i.i184
  %i.eu = add i64 %.sroa.0.0.i.i.i.i.i184, 1      ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(136) %i.et) #74
          to label %bb.ag unwind label %bb.ai, !noalias !89833, !inline_history !222

bb.ah:                                            ; preds = %.lr.ph186
  %i.ev = add i64 %.sroa.0.1.i.i.i.i.i185, 1      ; 2 uses
  %i.ew = icmp eq i64 %i.ev, %i.eq
  br i1 %i.ew, label %.body.i.i.i.i, label %.lr.ph186

bb.ai:                                            ; preds = %.lr.ph
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = icmp eq i64 %i.eu, %i.eq
  br i1 %i.ey, label %.body.i.i.i.i, label %.lr.ph186

.lr.ph186:                                        ; preds = %bb.ai, %bb.ah
  %.sroa.0.1.i.i.i.i.i185 = phi i64 [ %i.ev, %bb.ah ], [ %i.eu, %bb.ai ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [136 x i8], ptr %i.eo, i64 %.sroa.0.1.i.i.i.i.i185
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(136) %i.ez) #75
          to label %bb.ah unwind label %bb.aj, !noalias !89833, !inline_history !222

bb.aj:                                            ; preds = %.lr.ph186
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !89833, !inline_history !222
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.ah, %bb.ai
  %.val2.i.i.i.i = load i64, ptr %i.db, align 8, !range !320, !noalias !89820, !noundef !313 ; 2 uses
  %i.fb = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.fb, label %.body5.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.body.i.i.i.i
  %i.fc = mul nuw i64 %.val2.i.i.i.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eo, i64 noundef %i.fc, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !89833, !inline_history !460
  br label %.body5.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.val.i.i.i.i = load i64, ptr %i.db, align 8, !range !320, !noalias !89820, !noundef !313 ; 2 uses
  %i.fd = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  %i.fe = mul nuw i64 %.val.i.i.i.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eo, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !89833, !inline_history !460
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

.body5.i.i.i:                                     ; preds = %bb.ak, %.body.i.i.i.i, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ex, %.body.i.i.i.i ], [ %i.ex, %bb.ak ] ; 2 uses
  %cond.i.i.i = phi i1 [ false, %.body.i.i.i ], [ true, %.body.i.i.i.i ], [ true, %bb.ak ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.v) #73
          to label %bb.am unwind label %bb.an, !noalias !89830

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %bb.al, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.v)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !89806

bb.am:                                            ; preds = %.body5.i.i.i
  br i1 %cond.i.i.i, label %.body.i, label %bb.ao

bb.an:                                            ; preds = %.noexc7.i.i.i, %bb.aq, %.body5.i.i.i, %.body.i.i.i
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !89830
  unreachable

bb.ao:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !89834)
  %i.fg = load ptr, ptr %i.w, align 8, !alias.scope !89834, !noalias !89826, !noundef !313 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %.noexc7.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fi = atomicrmw sub ptr %i.fg, i64 1 release, align 8, !noalias !89835
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %bb.aq, label %.noexc7.i.i.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %.noexc7.i.i.i unwind label %bb.an, !noalias !89830

.noexc7.i.i.i:                                    ; preds = %bb.aq, %bb.ap, %bb.ao
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.x) #73
          to label %.body.i unwind label %bb.an, !noalias !89830

bb.ar:                                            ; preds = %bb.n
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(184) %i.ab) #73
          to label %.thread.i.i unwind label %bb.as, !noalias !89821

bb.as:                                            ; preds = %bb.au, %bb.ar
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !89821
  unreachable

.thread.i.i:                                      ; preds = %bb.ar, %.body.i.i
  %.pn24.i.i = phi { ptr, i32 } [ %i.dm, %bb.ar ], [ %i.do, %.body.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89836)
  %i.fl = load ptr, ptr %i.ae, align 8, !alias.scope !89836, !noalias !89820, !noundef !313 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %.body.i, label %bb.at

bb.at:                                            ; preds = %.thread.i.i
  %i.fn = atomicrmw sub ptr %i.fl, i64 1 release, align 8, !noalias !89837
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.au, label %.body.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %.body.i unwind label %bb.as, !noalias !89821

bb.av:                                            ; preds = %bb.cv, %.lr.ph.i
  %.sroa.068.0200.i = phi i64 [ 0, %.lr.ph.i ], [ %i.fp, %bb.cv ] ; 7 uses
  %i.fp = add nuw i64 %.sroa.068.0200.i, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89838)
  %i.fq = load ptr, ptr %i.ck, align 8, !alias.scope !89839, !noalias !89806, !noundef !313
  %.not.i.i118.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fr = load i64, ptr %i.cl, align 8, !alias.scope !89838, !noalias !89806, !noundef !313
  %i.fs = icmp ult i64 %.sroa.068.0200.i, %i.fr
  br i1 %i.fs, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.ax, !prof !319

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @479, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @481) #72
          to label %.noexc119.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !89806

.noexc119.i:                                      ; preds = %bb.ax
  unreachable

.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cu, %bb.cq, %.invoke276.i, %bb.bk, %.invoke.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %bb.cr, %bb.bj, %bb.ax, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc113.i, %bb.q, %._crit_edge.i
  %lpad.loopexit.split-lp188 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bq, %.body.i124.i, %bb.ba, %bb.au, %bb.at, %.thread.i.i, %.noexc7.i.i.i, %bb.am
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fx, %bb.ba ], [ %.pn24.i.i, %.thread.i.i ], [ %.pn.i.i.i, %.noexc7.i.i.i ], [ %.pn24.i.i, %bb.at ], [ %.pn.i.i.i, %bb.am ], [ %.pn24.i.i, %bb.au ], [ %eh.lpad-body.i.i, %.body.i124.i ], [ %eh.lpad-body.i.i, %bb.bq ], [ %lpad.loopexit.split-lp188, %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types11Float64TypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.ar) #73
          to label %.body unwind label %bb.cx, !noalias !89806

bb.ay:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !89826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !89826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !89826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !89820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !89820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !89807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !89807
  store i64 1, ptr %i.an, align 8, !noalias !89807
  %i.ft = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 1, ptr %i.ft, align 8, !noalias !89807
  %i.fu = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.fu, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !noalias !89807
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !89840
  %i.fv = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !89840 ; 3 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.az, label %bb.bc, !prof !314

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #72
          to label %.noexc120.i unwind label %bb.ba, !noalias !89806

.noexc120.i:                                      ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.az
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float64TypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.fu)
          to label %.body.i unwind label %bb.bb, !noalias !89806

bb.bb:                                            ; preds = %bb.ba
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !89806
  unreachable

bb.bc:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fv, ptr noundef nonnull align 8 dereferenceable(112) %i.an, i64 112, i1 false), !noalias !89806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !89807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.experimental.noalias.scope.decl(metadata !89841)
  %.val.i.i = load i64, ptr %i.ar, align 8, !alias.scope !89841, !noalias !89807 ; 2 uses
  %i.fz = icmp eq i64 %.val.i.i, 0
  br i1 %i.fz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val2.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i109.i, align 8, !alias.scope !89841, !noalias !89807, !nonnull !313, !noundef !313
  %i.ga = shl nuw i64 %.val.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.ga, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !89842
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.bd, %bb.bc
  %i.gb = load i64, ptr %i.dd, align 8, !range !321, !alias.scope !89843, !noalias !89807, !noundef !313
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types11Float64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.be

bb.be:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dd)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types11Float64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.bf, !noalias !89806

bb.bf:                                            ; preds = %bb.be
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.cj) #73
          to label %.body unwind label %bb.bg, !noalias !89806

bb.bg:                                            ; preds = %bb.bf
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !89806
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types11Float64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.be, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.cj)
          to label %bb.da unwind label %bb.cy

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.aw
  %i.gf = load ptr, ptr %i.cm, align 8, !alias.scope !89838, !noalias !89806, !noundef !313
  %i.gg = load i64, ptr %i.cn, align 8, !alias.scope !89838, !noalias !89806, !noundef !313
  %i.gh = add i64 %i.gg, %.sroa.068.0200.i        ; 2 uses
  %i.gi = lshr i64 %i.gh, 3
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !noalias !89844, !noundef !313
  %i.gl = trunc i64 %i.gh to i8
  %i.gm = and i8 %i.gl, 7
  %i.gn = xor i8 %i.gk, -1
  %i.go = lshr i8 %i.gn, %i.gm
  %i.gp = trunc i8 %i.go to i1
  br i1 %i.gp, label %.invoke.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.av
  %i.gq = invoke fastcc { ptr, i64 } @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common19get_string_value_at(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn, i64 noundef %.sroa.068.0200.i)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !89806 ; 2 uses

.invoke.i:                                        ; preds = %bb.bh, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types11Float64TypeE11append_nullCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.ar)
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !89806

bb.bh:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.gr = extractvalue { ptr, i64 } %i.gq, 0      ; 2 uses
  %i.gs = extractvalue { ptr, i64 } %i.gq, 1
  %.not103.i = icmp eq ptr %i.gr, null
  br i1 %.not103.i, label %.invoke.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !89845)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !89807
  store i64 %.sroa.068.0200.i, ptr %i.l, align 8, !noalias !89846
  %i.gt = load i64, ptr %i.bv, align 8, !alias.scope !89845, !noalias !89806, !noundef !313
  %i.gu = lshr i64 %i.gt, 3                       ; 2 uses
  %i.gv = add nsw i64 %i.gu, -1                   ; 2 uses
  %i.gw = icmp ult i64 %.sroa.068.0200.i, %i.gv
  br i1 %i.gw, label %bb.bk, label %bb.bj, !prof !319

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !89846
  store i64 %i.gv, ptr %i.k, align 8, !noalias !89846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !89846
  store ptr %i.l, ptr %i.j, align 8, !noalias !89846
  %.sroa.42.0..sroa_idx.i122.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i122.i, align 8, !noalias !89846
  %i.gx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @737, ptr %i.gx, align 8, !noalias !89846
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !89846
  %i.gy = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr @739, ptr %i.gy, align 8, !noalias !89846
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !89846
  %i.gz = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.k, ptr %i.gz, align 8, !noalias !89846
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !89846
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @740, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @741) #72
          to label %.noexc123.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !89806

.noexc123.i:                                      ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !89847)
  %i.ha = load ptr, ptr %i.co, align 8, !alias.scope !89848, !noalias !89806, !noundef !313 ; 2 uses
  %i.hb = icmp samesign ult i64 %i.fp, %i.gu
  call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.fp
  %i.hd = load i64, ptr %i.hc, align 8, !noalias !89849, !noundef !313
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.sroa.068.0200.i
  %i.hf = load i64, ptr %i.he, align 8, !noalias !89849, !noundef !313 ; 2 uses
  %i.hg = load ptr, ptr %i.cp, align 8, !alias.scope !89848, !noalias !89806, !noundef !313
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 %i.hf
  %i.hi = sub i64 %i.hd, %i.hf                    ; 2 uses
  %i.hj = icmp sgt i64 %i.hi, -1
  call void @llvm.assume(i1 %i.hj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !89807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !89807
  store ptr %i.hh, ptr %i.aq, align 8, !noalias !89807
  store i64 %i.hi, ptr %i.cq, align 8, !noalias !89807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !89807
  invoke fastcc void @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common21get_json_value_by_key(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gr, i64 noundef %i.gs)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !89806

bb.bl:                                            ; preds = %bb.bk
  %i.hk = load i64, ptr %i.ap, align 8, !range !318, !noalias !89807, !noundef !313 ; 2 uses
  %.not104.i = icmp eq i64 %i.hk, -1
  %.sroa.070.0.copyload.i = load i64, ptr %i.cr, align 8, !noalias !89807 ; 7 uses
  %.sroa.471.sroa.0.0.copyload.i = load ptr, ptr %.sroa.471.0..sroa_idx.i, align 8, !noalias !89807 ; 5 uses
  %.sroa.471.sroa.4.0.copyload.i = load i64, ptr %.sroa.471.sroa.4.0..sroa.471.0..sroa_idx.sroa_idx.i, align 8, !noalias !89807 ; 2 uses
  br i1 %.not104.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.679.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.679.0.copyload.i = load i64, ptr %.sroa.679.0..sroa_idx.i, align 8, !noalias !89807
end_hunk_2
begin_hunk_3_@_RNvNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json31json_array_length_columnar_impl:bb.a
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !90059
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.w, ptr %i.ai, align 8, !noalias !90059
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !90059
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull @892, ptr noundef nonnull %i.u)
          to label %.noexc unwind label %bb.bp

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !90059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !90058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !90058
  %.sroa.1037.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !90060
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.16.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !90060
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !noalias !90060
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !noalias !90060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !90058
  br label %bb.bq

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !90058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !90058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !90058
  %i.aj = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad)
          to label %.noexc28 unwind label %bb.bp  ; 2 uses

.noexc28:                                         ; preds = %bb.c
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 9 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !90061
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !313, !noalias !90062, !nonnull !313
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.t, ptr noundef %i.ak)
          to label %.noexc29 unwind label %bb.bp, !inline_history !89988

.noexc29:                                         ; preds = %.noexc28
  %i.ao = load i128, ptr %i.t, align 16, !noalias !90061, !noundef !313
  %i.ap = icmp eq i128 %i.ao, 126164052404106896239213216138621634160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !90061
  br i1 %i.ap, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc29
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !90063
  %i.aq = call noundef dereferenceable_or_null(34) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 34, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90063 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.aq, ptr noundef nonnull align 1 dereferenceable(34) @409, i64 34, i1 false), !noalias !90064
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !90065
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !313, !noalias !90066, !nonnull !313
  invoke void %i.ay(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.s, ptr noundef %i.av)
          to label %.noexc32 unwind label %bb.bp, !inline_history !89988

.noexc32:                                         ; preds = %.noexc31
  %i.az = load i128, ptr %i.s, align 16, !noalias !90065, !noundef !313
  %i.ba = icmp eq i128 %i.az, -7452801274563340147934147702000895189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !90065
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !90067
  store i64 2, ptr %i.q, align 8, !noalias !90067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !90067
  store ptr %i.q, ptr %i.p, align 8, !noalias !90067
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !90067
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noundef nonnull @410, ptr noundef nonnull %i.p)
          to label %.noexc33 unwind label %bb.bp

.noexc33:                                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !90067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !90067
  %.sroa.794.0.copyload.i = load ptr, ptr %i.bb, align 8, !noalias !90058
  %i.bc = ptrtoint ptr %.sroa.794.0.copyload.i to i64
  %.sroa.16.16.copyload = load i64, ptr %i.ag, align 8, !noalias !90060
  %.sroa.22.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.22.16.copyload = load i64, ptr %.sroa.22.16..sroa_idx, align 8, !noalias !90060
  %.sroa.25.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.25.16.copyload = load i64, ptr %.sroa.25.16..sroa_idx, align 8, !noalias !90060
  br label %bb.bq

bb.h:                                             ; preds = %.noexc32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !90058
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !noalias !90068, !noundef !313
  %i.bf = lshr i64 %i.be, 3
  %i.bg = add nsw i64 %i.bf, -1                   ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90069)
  %i.bh = shl i64 %i.bg, 3                        ; 5 uses
  %i.bi = icmp ugt i64 %i.bg, 2305843009213693951
  %.not.i.i.i = icmp ugt i64 %i.bh, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.bi, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %.invoke, label %bb.i, !prof !315

bb.i:                                             ; preds = %bb.h
  %i.bj = icmp eq i64 %i.bh, 0
  br i1 %i.bj, label %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !90070
  %i.bk = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !90070 ; 2 uses
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
  store i64 %.sroa.4.0.i.i, ptr %i.z, align 8, !alias.scope !90069, !noalias !90058
  %.sroa.4.0..sroa_idx.i79.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.bp, ptr %.sroa.4.0..sroa_idx.i79.i, align 8, !alias.scope !90069, !noalias !90058
  %.sroa.5.0..sroa_idx.i80.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !90069, !noalias !90058
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i80.i, i8 0, i64 16, i1 false), !alias.scope !90069, !noalias !90058
  store i64 %i.bg, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !90069, !noalias !90058
  %i.br = getelementptr inbounds nuw i8, ptr %i.z, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 5, i64 24, i1 false), !alias.scope !90069, !noalias !90058
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !90058
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE6finishCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.y, ptr noalias noundef align 8 dereferenceable(104) %i.z)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !90068

bb.l:                                             ; preds = %bb.bn, %.lr.ph.i
  %.sroa.054.0191.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cf, %bb.bn ] ; 7 uses
  %i.cf = add nuw i64 %.sroa.054.0191.i, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90071)
  %i.cg = load ptr, ptr %i.bs, align 8, !alias.scope !90072, !noalias !90068, !noundef !313
  %.not.i.i81.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i81.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = load i64, ptr %i.bt, align 8, !alias.scope !90071, !noalias !90068, !noundef !313
  %i.ci = icmp ult i64 %.sroa.054.0191.i, %i.ch
  br i1 %i.ci, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.n, !prof !319

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @479, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @481) #72
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !90068

.noexc.i:                                         ; preds = %bb.n
  unreachable

.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bm, %bb.aa, %.invoke.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %bb.z, %bb.n, %._crit_edge.i
  %lpad.loopexit.split-lp224 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i.i80.i.i, %common.resume.sink.split.i.i, %.body.i.i.i.i, %bb.ac, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cn, %bb.q ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ], [ %i.gm, %.body.i.i80.i.i ], [ %i.fj, %.body.i.i.i.i ], [ %.pn50.i.i, %bb.ac ], [ %lpad.loopexit.split-lp224, %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.z) #73
          to label %.body unwind label %bb.bo, !noalias !90068

bb.o:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !90058
  store i64 1, ptr %i.x, align 8, !noalias !90058
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 1, ptr %i.cj, align 8, !noalias !90058
  %i.ck = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ck, ptr noundef nonnull align 8 dereferenceable(96) %i.y, i64 96, i1 false), !noalias !90058
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !90073
  %i.cl = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !90073 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.p, label %bb.s, !prof !314

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #72
          to label %.noexc82.i unwind label %bb.q, !noalias !90068

.noexc82.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ck)
          to label %.body.i unwind label %bb.r, !noalias !90068

bb.r:                                             ; preds = %bb.q
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !90068
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cl, ptr noundef nonnull align 8 dereferenceable(112) %i.x, i64 112, i1 false), !noalias !90068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !90058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !90058
  call void @llvm.experimental.noalias.scope.decl(metadata !90074)
  %.val.i.i = load i64, ptr %i.z, align 8, !alias.scope !90074, !noalias !90058 ; 2 uses
  %i.cp = icmp eq i64 %.val.i.i, 0
  br i1 %i.cp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val2.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i79.i, align 8, !alias.scope !90074, !noalias !90058, !nonnull !313, !noundef !313
  %i.cq = shl nuw i64 %.val.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !90075
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.t, %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !range !321, !alias.scope !90076, !noalias !90058, !noundef !313
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cr)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.v, !noalias !90068

bb.v:                                             ; preds = %bb.u
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.br) #73
          to label %.body unwind label %bb.w, !noalias !90068

bb.w:                                             ; preds = %bb.v
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !90068
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.br)
          to label %bb.br unwind label %bb.bp

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.m
  %i.cw = load ptr, ptr %i.bu, align 8, !alias.scope !90071, !noalias !90068, !noundef !313
  %i.cx = load i64, ptr %i.bv, align 8, !alias.scope !90071, !noalias !90068, !noundef !313
  %i.cy = add i64 %i.cx, %.sroa.054.0191.i        ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !noalias !90077, !noundef !313
  %i.dc = trunc i64 %i.cy to i8
  %i.dd = and i8 %i.dc, 7
  %i.de = xor i8 %i.db, -1
  %i.df = lshr i8 %i.de, %i.dd
  %i.dg = trunc i8 %i.df to i1
  br i1 %i.dg, label %.invoke.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.l
  %i.dh = invoke fastcc { ptr, i64 } @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common19get_string_value_at(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.av, i64 noundef %.sroa.054.0191.i)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !90068 ; 2 uses

.invoke.i:                                        ; preds = %bb.bl, %bb.x, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE11append_nullCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.z)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !90068

bb.x:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.di = extractvalue { ptr, i64 } %i.dh, 0      ; 3 uses
  %i.dj = extractvalue { ptr, i64 } %i.dh, 1      ; 2 uses
  %.not75.i = icmp eq ptr %i.di, null
  br i1 %.not75.i, label %.invoke.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !90078)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !90058
  store i64 %.sroa.054.0191.i, ptr %i.o, align 8, !noalias !90079
  %i.dk = load i64, ptr %i.bd, align 8, !alias.scope !90078, !noalias !90068, !noundef !313
  %i.dl = lshr i64 %i.dk, 3                       ; 2 uses
  %i.dm = add nsw i64 %i.dl, -1                   ; 2 uses
  %i.dn = icmp ult i64 %.sroa.054.0191.i, %i.dm
  br i1 %i.dn, label %bb.aa, label %bb.z, !prof !319

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !90079
  store i64 %i.dm, ptr %i.n, align 8, !noalias !90079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !90079
  store ptr %i.o, ptr %i.m, align 8, !noalias !90079
  %.sroa.42.0..sroa_idx.i84.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i84.i, align 8, !noalias !90079
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @737, ptr %i.do, align 8, !noalias !90079
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !90079
  %i.dp = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @739, ptr %i.dp, align 8, !noalias !90079
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !90079
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.dq, align 8, !noalias !90079
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !90079
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @740, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @741) #72
          to label %.noexc85.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !90068

.noexc85.i:                                       ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !90080)
  %i.dr = load ptr, ptr %i.bw, align 8, !alias.scope !90081, !noalias !90068, !noundef !313 ; 2 uses
  %i.ds = icmp samesign ult i64 %i.cf, %i.dl
  call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.cf
  %i.du = load i64, ptr %i.dt, align 8, !noalias !90082, !noundef !313
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.054.0191.i
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !90082, !noundef !313 ; 2 uses
  %i.dx = load ptr, ptr %i.bx, align 8, !alias.scope !90081, !noalias !90068, !noundef !313
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 %i.dw
  %i.dz = sub i64 %i.du, %i.dw                    ; 2 uses
  %i.ea = icmp sgt i64 %i.dz, -1
  call void @llvm.assume(i1 %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !90058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !90058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !90058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !90058
  store ptr %i.di, ptr %i.l, align 8, !noalias !90083
  store i64 %i.dj, ptr %i.by, align 8, !noalias !90083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !90083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !90083
  invoke fastcc void @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common15parse_json_path(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dj)
          to label %.noexc89.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !90068

.noexc89.i:                                       ; preds = %bb.aa
  %i.eb = load i64, ptr %i.j, align 8, !range !318, !noalias !90083, !noundef !313 ; 2 uses
  %.not.i86.i = icmp eq i64 %i.eb, -1
  %.sroa.6.i.sroa.0.0.copyload107.i = load i64, ptr %i.bz, align 8, !noalias !90083 ; 8 uses
  %.sroa.6.i.sroa.7.0.copyload110.i = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx109.i, align 8, !noalias !90083 ; 2 uses
  %.sroa.6.i.sroa.8.0.copyload114.i = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx113.i, align 8, !noalias !90083 ; 10 uses
  br i1 %.not.i86.i, label %bb.ab, label %.thread.i

.thread.i:                                        ; preds = %.noexc89.i
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.521.0.copyload.i.i = load i64, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !90083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !90083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !90083
end_hunk_3
begin_hunk_4_@_RNvNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json36json_extract_with_type_columnar_impl:bb.a
bb.g:                                             ; preds = %.noexc29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ch = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cg)
          to label %.noexc31 unwind label %bb.gd  ; 2 uses

.noexc31:                                         ; preds = %bb.g
  %i.ci = extractvalue { ptr, ptr } %i.ch, 0      ; 3 uses
  %i.cj = extractvalue { ptr, ptr } %i.ch, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !90463
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !313, !noalias !90464, !nonnull !313
  invoke void %i.cl(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ar, ptr noundef %i.ci)
          to label %.noexc32 unwind label %bb.gd, !inline_history !90280

.noexc32:                                         ; preds = %.noexc31
  %i.cm = load i128, ptr %i.ar, align 16, !noalias !90463, !noundef !313
  %i.cn = icmp eq i128 %i.cm, -7452801274563340147934147702000895189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !90463
  br i1 %i.cn, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !90465
  store i64 2, ptr %i.ap, align 8, !noalias !90465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !90465
  store ptr %i.ap, ptr %i.ao, align 8, !noalias !90465
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !90465
  %i.co = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.co, ptr noundef nonnull @410, ptr noundef nonnull %i.ao)
          to label %.noexc33 unwind label %bb.gd

.noexc33:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !90465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !90465
  %.sroa.7174.0.copyload.i = load ptr, ptr %i.co, align 8, !noalias !90456
  %i.cp = ptrtoint ptr %.sroa.7174.0.copyload.i to i64
  %.sroa.16.16.copyload = load ptr, ptr %i.bu, align 8, !noalias !90458
  %.sroa.22.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.22.16.copyload = load i64, ptr %.sroa.22.16..sroa_idx, align 8, !noalias !90458
  %.sroa.25.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %.sroa.25.16.copyload = load i64, ptr %.sroa.25.16..sroa_idx, align 8, !noalias !90458
  br label %.thread

bb.i:                                             ; preds = %.noexc32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !90456
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 40 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !90466, !noundef !313
  %i.cs = lshr i64 %i.cr, 3                       ; 2 uses
  %i.ct = add nsw i64 %i.cs, -1                   ; 7 uses
  invoke fastcc void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE13with_capacityCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.bn, i64 noundef %i.ct, i64 noundef 1024)
          to label %.noexc34 unwind label %bb.gd

.noexc34:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !90456
  call void @llvm.experimental.noalias.scope.decl(metadata !90467)
  %.not.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.j, !prof !315

bb.j:                                             ; preds = %.noexc34
  %i.cu = icmp eq i64 %i.ct, 0                    ; 2 uses
  br i1 %i.cu, label %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9UInt8TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !90468
  %i.cv = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 -1, 2305843009213693951) %i.ct, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90468 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = ptrtoint ptr %i.cv to i64
  br label %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9UInt8TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i

bb.m:                                             ; preds = %bb.k, %.noexc34
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.k ], [ 0, %.noexc34 ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 range(i64 -1, 2305843009213693951) %i.ct) #72
          to label %.noexc.i unwind label %bb.q, !noalias !90466

.noexc.i:                                         ; preds = %bb.m
  unreachable

_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9UInt8TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.l, %bb.j
  %.sroa.10.0.i.i = phi i64 [ %i.cx, %bb.l ], [ 1, %bb.j ]
  %i.cy = inttoptr i64 %.sroa.10.0.i.i to ptr
  store i64 %i.ct, ptr %i.bm, align 8, !alias.scope !90467, !noalias !90456
  %.sroa.4.0..sroa_idx.i117.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  store ptr %i.cy, ptr %.sroa.4.0..sroa_idx.i117.i, align 8, !alias.scope !90467, !noalias !90456
  %.sroa.5.0..sroa_idx.i118.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 4 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !90467, !noalias !90456
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i118.i, i8 0, i64 16, i1 false), !alias.scope !90467, !noalias !90456
  store i64 %i.ct, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !90467, !noalias !90456
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bm, i64 80 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 6, i64 24, i1 false), !alias.scope !90467, !noalias !90456
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

.body144.i:                                       ; preds = %bb.cn, %.body.i, %bb.q
  %.pn99.pn.i = phi { ptr, i32 } [ %.pn99.i, %.body.i ], [ %i.ej, %bb.q ], [ %i.jd, %bb.cn ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90469)
  %.val.i = load i64, ptr %i.bn, align 8, !alias.scope !90469, !noalias !90466 ; 2 uses
  %i.ea = icmp eq i64 %.val.i, 0
  br i1 %i.ea, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.n

bb.n:                                             ; preds = %.body144.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.val2.i = load ptr, ptr %i.eb, align 8, !alias.scope !90469, !noalias !90466, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90470
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.n, %.body144.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.val3.i = load i64, ptr %i.ec, align 8, !alias.scope !90469, !noalias !90466 ; 2 uses
  %i.ed = icmp eq i64 %.val3.i, 0
  br i1 %i.ed, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.val4.i = load ptr, ptr %i.ee, align 8, !alias.scope !90469, !noalias !90466, !nonnull !313, !noundef !313
  %i.ef = shl nuw i64 %.val3.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !90470
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i: ; preds = %bb.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !range !321, !alias.scope !90471, !noalias !90466, !noundef !313
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %.body, label %bb.p

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.eg)
          to label %.body unwind label %bb.cs

bb.q:                                             ; preds = %.loopexit250.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsc85D0lJ81Z_16lance_datafusion.exit4.i.i, %bb.m
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body144.i

._crit_edge.i:                                    ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit171.i, %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9UInt8TypeE13with_capacityCsc85D0lJ81Z_16lance_datafusion.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !90456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !90456
  invoke fastcc void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE6finishCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.bk, ptr noalias noundef align 8 dereferenceable(104) %i.bn)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !90466

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit171.i, %.lr.ph.i
  %.sroa.058.0318.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ek, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit171.i ] ; 7 uses
  %i.ek = add nuw i64 %.sroa.058.0318.i, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90472)
  %i.el = load ptr, ptr %i.da, align 8, !alias.scope !90473, !noalias !90466, !noundef !313
  %.not.i.i119.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i119.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = load i64, ptr %i.db, align 8, !alias.scope !90472, !noalias !90466, !noundef !313
  %i.en = icmp ult i64 %.sroa.058.0318.i, %i.em
  br i1 %i.en, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.t, !prof !319

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @479, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @481) #72
          to label %.noexc120.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !90466

.noexc120.i:                                      ; preds = %bb.t
  unreachable

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fy, %.loopexit.split-lp252.i.loopexit.split-lp.loopexit.split-lp, %bb.fk, %.body.i.i.i158.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i, %bb.cv, %.thread.i, %bb.ci, %.thread230.i, %bb.w
  %.pn99.i = phi { ptr, i32 } [ %.pn93229.i, %.thread230.i ], [ %.pn.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i ], [ %i.es, %bb.w ], [ %.pn93.pn223.i, %.thread.i ], [ %i.ix, %bb.ci ], [ %.pn93.pn223.i, %bb.cv ], [ %i.np, %.body.i.i.i158.i ], [ %i.np, %bb.fk ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp252.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %bb.fy ], [ %lpad.loopexit.split-lp319, %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9UInt8TypeEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(104) %i.bm) #73
          to label %.body144.i unwind label %bb.cs, !noalias !90466

bb.u:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !90456
  store i64 1, ptr %i.ba, align 8, !noalias !90456
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 1, ptr %i.eo, align 8, !noalias !90456
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ep, ptr noundef nonnull align 8 dereferenceable(120) %i.bk, i64 120, i1 false), !noalias !90456
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !90474
  %i.eq = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !90474 ; 3 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.v, label %bb.y, !prof !314

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #72
          to label %.noexc121.i unwind label %bb.w, !noalias !90466

.noexc121.i:                                      ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtBI_5types17GenericBinaryTypexEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.ep)
          to label %.body.i unwind label %bb.x, !noalias !90466

bb.x:                                             ; preds = %bb.w
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !90466
  unreachable

bb.y:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.eq, ptr noundef nonnull align 8 dereferenceable(136) %i.ba, i64 136, i1 false), !noalias !90466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !90456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !90456
  store ptr %i.eq, ptr %i.bl, align 16, !noalias !90456
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr @859, ptr %i.eu, align 8, !noalias !90456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !90456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.experimental.noalias.scope.decl(metadata !90475)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !90456
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  %i.ew = load i64, ptr %.sroa.5.0..sroa_idx.i118.i, align 8, !alias.scope !90475, !noalias !90456, !noundef !313 ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  call void @llvm.assume(i1 %i.ex)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !90476
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 3 uses
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ey)
          to label %.noexc125.i unwind label %bb.bn, !noalias !90466

.noexc125.i:                                      ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !90476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !90476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !90476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !90476
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz)
          to label %bb.z unwind label %.body.i.i, !noalias !90477

bb.z:                                             ; preds = %.noexc125.i
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !90476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !90476
  store i64 0, ptr %i.ak, align 8, !noalias !90476
  %.sroa.5.0..sroa_idx.i123.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i123.i, align 8, !noalias !90476
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !90476
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !90476
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !90476
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !90476
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store i64 %i.ew, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !90476
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !90476
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  store ptr null, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !90476
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 168
  store i64 0, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !noalias !90476
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  store i8 0, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !90476
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 177
  store i8 0, ptr %.sroa.14.0..sroa_idx.i.i, align 1, !noalias !90476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !90476
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bm, align 8, !alias.scope !90475, !noalias !90456
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i117.i, align 8, !alias.scope !90475, !noalias !90456, !nonnull !313, !noundef !313 ; 2 uses
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i118.i, align 8, !alias.scope !90475, !noalias !90456 ; 3 uses
  store i64 0, ptr %i.bm, align 8, !alias.scope !90475, !noalias !90456
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i117.i, align 8, !alias.scope !90475, !noalias !90456
  store i64 0, ptr %.sroa.5.0..sroa_idx.i118.i, align 8, !alias.scope !90475, !noalias !90456
  call void @llvm.experimental.noalias.scope.decl(metadata !90478)
  %i.ez = icmp sgt i64 %.sroa.5.0.copyload.i.i, -1
  call void @llvm.assume(i1 %i.ez)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !90479
  store i64 1, ptr %i.ah, align 8, !noalias !90479
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 1, ptr %i.fa, align 8, !noalias !90479
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.fb, align 8, !noalias !90479
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !90479
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !90479
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 1, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !90479
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !90479
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !90480
  %i.fc = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !90480 ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.aa, label %bb.ad, !prof !314

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc.i.i.i unwind label %bb.ab, !noalias !90481

.noexc.i.i.i:                                     ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ah) #73
          to label %bb.bj unwind label %bb.ac, !noalias !90481

bb.ac:                                            ; preds = %bb.ab
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !90481
  unreachable

.body.i.i:                                        ; preds = %bb.ad, %.noexc125.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ad:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fc, ptr noundef nonnull align 8 dereferenceable(56) %i.ah, i64 56, i1 false), !noalias !90481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !90479
  store ptr %i.fc, ptr %i.ai, align 8, !alias.scope !90478, !noalias !90476
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.fh, align 8, !alias.scope !90478, !noalias !90476
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %i.fi, align 8, !alias.scope !90478, !noalias !90476
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai)
          to label %bb.ae unwind label %.body.i.i, !noalias !90477

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !90476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !90476
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5nulls(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.al, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.an)
          to label %.noexc126.i unwind label %bb.bn, !noalias !90466

.noexc126.i:                                      ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !90476
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15build_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.am)
          to label %.noexc127.i unwind label %bb.bn, !noalias !90466

.noexc127.i:                                      ; preds = %.noexc126.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !90482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fj, i64 24, i1 false), !noalias !90476
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !90476, !noundef !313
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !90476, !noundef !313
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !90482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.fo, i64 48, i1 false), !noalias !90476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !90482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.ad, i64 24, i1 false), !noalias !90476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !90482
  store ptr %i.ag, ptr %i.z, align 8, !noalias !90483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !90484
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 6, i64 24, i1 false), !noalias !90484
end_hunk_4
begin_hunk_5_@_RNvNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json36json_extract_with_type_columnar_impl:bb.a
  %i.iv = call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !90511 ; 3 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.ch, label %bb.ck, !prof !314

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #72
          to label %.noexc140.i unwind label %bb.ci, !noalias !90466

.noexc140.i:                                      ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %bb.ch
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.iu)
          to label %.body.i unwind label %bb.cj, !noalias !90466

bb.cj:                                            ; preds = %bb.ci
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !90466
  unreachable

bb.ck:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.iv, ptr noundef nonnull align 8 dereferenceable(120) %i.aw, i64 120, i1 false), !noalias !90466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !90456
  %i.iz = ptrtoint ptr %i.iv to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !90456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !90456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !90456
  call void @llvm.experimental.noalias.scope.decl(metadata !90512)
  %.val.i.i = load i64, ptr %i.bm, align 8, !alias.scope !90512, !noalias !90456 ; 2 uses
  %i.ja = icmp eq i64 %.val.i.i, 0
  br i1 %i.ja, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.val2.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i117.i, align 8, !alias.scope !90512, !noalias !90456, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90513
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.cl, %bb.ck
  %i.jb = load i64, ptr %i.ey, align 8, !range !321, !alias.scope !90514, !noalias !90456, !noundef !313
  %i.jc = icmp eq i64 %i.jb, 0
  br i1 %i.jc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsc85D0lJ81Z_16lance_datafusion.exit4.i.i, label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ey)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsc85D0lJ81Z_16lance_datafusion.exit4.i.i unwind label %bb.cn, !noalias !90466

bb.cn:                                            ; preds = %bb.cm
  %i.jd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.cz) #73
          to label %.body144.i unwind label %bb.co, !noalias !90466

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsc85D0lJ81Z_16lance_datafusion.exit4.i.i: ; preds = %bb.cm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.cz)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9UInt8TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.q, !noalias !90466

bb.co:                                            ; preds = %bb.cn
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !90466
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9UInt8TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsc85D0lJ81Z_16lance_datafusion.exit4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !90456
  call void @llvm.experimental.noalias.scope.decl(metadata !90515)
  %.val.i146.i = load i64, ptr %i.bn, align 8, !alias.scope !90515, !noalias !90456 ; 2 uses
  %i.jf = icmp eq i64 %.val.i146.i, 0
  br i1 %i.jf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i148.i, label %bb.cp

bb.cp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9UInt8TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.val2.i147.i = load ptr, ptr %i.jg, align 8, !alias.scope !90515, !noalias !90456, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i147.i, i64 noundef %.val.i146.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90516
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i148.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i148.i: ; preds = %bb.cp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9UInt8TypeEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.val3.i.i = load i64, ptr %i.jh, align 8, !alias.scope !90515, !noalias !90456 ; 2 uses
  %i.ji = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ji, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i.i, label %bb.cq

bb.cq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i148.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.val4.i.i = load ptr, ptr %i.jj, align 8, !alias.scope !90515, !noalias !90456, !nonnull !313, !noundef !313
  %i.jk = shl nuw i64 %.val3.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef %i.jk, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !90516
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i.i: ; preds = %bb.cq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsc85D0lJ81Z_16lance_datafusion.exit.i148.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !range !321, !alias.scope !90517, !noalias !90456, !noundef !313
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %.thread50, label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.jl)
          to label %.thread50 unwind label %bb.gd

.thread50:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsc85D0lJ81Z_16lance_datafusion.exit7.i.i, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !90456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.gg

bb.cs:                                            ; preds = %bb.p, %bb.cv, %bb.cu, %.body104.i, %.body.i
  %i.jo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !90466
  unreachable

bb.ct:                                            ; preds = %.thread224.i, %.thread233.i
  %.pn93229.i = phi { ptr, i32 } [ %.pn.i, %.thread224.i ], [ %i.hz, %.thread233.i ] ; 2 uses
  %.sroa.039.1228.i = phi i1 [ %.sroa.039.3.i, %.thread224.i ], [ true, %.thread233.i ]
  %i.jp = atomicrmw sub ptr %i.hs, i64 1 release, align 8, !noalias !90518
  %i.jq = icmp eq i64 %i.jp, 1
  br i1 %i.jq, label %bb.cu, label %.thread230.i

bb.cu:                                            ; preds = %bb.ct
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bj)
          to label %.thread230.i unwind label %bb.cs, !noalias !90466

.thread.i:                                        ; preds = %bb.bq, %bb.bn, %.thread230.i, %bb.bm, %bb.bl, %.thread.i.i, %.noexc10.i.i.i, %bb.be
  %.pn93.pn223.i = phi { ptr, i32 } [ %.pn93229.i, %.thread230.i ], [ %.pn24.i.i, %.thread.i.i ], [ %i.hp, %bb.bn ], [ %.pn.i.i.i, %.noexc10.i.i.i ], [ %.pn24.i.i, %bb.bl ], [ %.pn.i.i.i, %bb.be ], [ %.pn24.i.i, %bb.bm ], [ %i.hu, %bb.bq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90519)
  call void @llvm.experimental.noalias.scope.decl(metadata !90520)
  %i.jr = load ptr, ptr %i.bl, align 16, !alias.scope !90521, !noalias !90456, !nonnull !313, !noundef !313
  %i.js = atomicrmw sub ptr %i.jr, i64 1 release, align 8, !noalias !90522
  %i.jt = icmp eq i64 %i.js, 1
  br i1 %i.jt, label %bb.cv, label %.body.i

bb.cv:                                            ; preds = %.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %.body.i unwind label %bb.cs, !noalias !90466

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.s
  %i.ju = load ptr, ptr %i.dc, align 8, !alias.scope !90472, !noalias !90466, !noundef !313
  %i.jv = load i64, ptr %i.dd, align 8, !alias.scope !90472, !noalias !90466, !noundef !313
  %i.jw = add i64 %i.jv, %.sroa.058.0318.i        ; 2 uses
  %i.jx = lshr i64 %i.jw, 3
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !noalias !90523, !noundef !313
  %i.ka = trunc i64 %i.jw to i8
  %i.kb = and i8 %i.ka, 7
  %i.kc = xor i8 %i.jz, -1
  %i.kd = lshr i8 %i.kc, %i.kb
  %i.ke = trunc i8 %i.kd to i1
  br i1 %i.ke, label %.invoke460.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.r
  %i.kf = invoke fastcc { ptr, i64 } @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common19get_string_value_at(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ci, i64 noundef %.sroa.058.0318.i)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !90466 ; 2 uses

bb.cw:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.kg = extractvalue { ptr, i64 } %i.kf, 0      ; 3 uses
  %i.kh = extractvalue { ptr, i64 } %i.kf, 1      ; 2 uses
  %.not96.i = icmp eq ptr %i.kg, null
  br i1 %.not96.i, label %.invoke460.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !90524)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !90456
  store i64 %.sroa.058.0318.i, ptr %i.t, align 8, !noalias !90525
  %i.ki = load i64, ptr %i.cq, align 8, !alias.scope !90524, !noalias !90466, !noundef !313
  %i.kj = lshr i64 %i.ki, 3                       ; 2 uses
  %i.kk = add nsw i64 %i.kj, -1                   ; 2 uses
  %i.kl = icmp ult i64 %.sroa.058.0318.i, %i.kk
  br i1 %i.kl, label %bb.cz, label %bb.cy, !prof !319

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !90525
  store i64 %i.kk, ptr %i.s, align 8, !noalias !90525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !90525
  store ptr %i.t, ptr %i.r, align 8, !noalias !90525
  %.sroa.42.0..sroa_idx.i152.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i152.i, align 8, !noalias !90525
  %i.km = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr @737, ptr %i.km, align 8, !noalias !90525
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !90525
  %i.kn = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr @739, ptr %i.kn, align 8, !noalias !90525
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !90525
  %i.ko = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.s, ptr %i.ko, align 8, !noalias !90525
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !90525
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @740, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @741) #72
          to label %.noexc153.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !90466

.noexc153.i:                                      ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.experimental.noalias.scope.decl(metadata !90526)
  %i.kp = load ptr, ptr %i.de, align 8, !alias.scope !90527, !noalias !90466, !noundef !313 ; 2 uses
  %i.kq = icmp ult i64 %i.ek, %i.kj
  call void @llvm.assume(i1 %i.kq)
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.ek
  %i.ks = load i64, ptr %i.kr, align 8, !noalias !90528, !noundef !313
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %.sroa.058.0318.i
  %i.ku = load i64, ptr %i.kt, align 8, !noalias !90528, !noundef !313 ; 2 uses
  %i.kv = load ptr, ptr %i.df, align 8, !alias.scope !90527, !noalias !90466, !noundef !313
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 %i.ku
  %i.kx = sub i64 %i.ks, %i.ku                    ; 2 uses
  %i.ky = icmp sgt i64 %i.kx, -1
  call void @llvm.assume(i1 %i.ky)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !90456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !90456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !90456
  store ptr %i.kg, ptr %i.q, align 8, !noalias !90529
  store i64 %i.kh, ptr %i.dg, align 8, !noalias !90529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !90529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !90529
  invoke fastcc void @_RNvNtNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json6common15parse_json_path(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kg, i64 noundef %i.kh)
          to label %.noexc163.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !90466

.noexc163.i:                                      ; preds = %bb.cz
  %i.kz = load i64, ptr %i.o, align 8, !range !318, !noalias !90529, !noundef !313 ; 2 uses
  %.not.i154.i = icmp eq i64 %i.kz, -1
  %.sroa.6.i.sroa.0.0.copyload200.i = load i64, ptr %i.dh, align 8, !noalias !90529 ; 6 uses
  %.sroa.6.i.sroa.7.0.copyload203.i = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx202.i, align 8, !noalias !90529 ; 6 uses
  %.sroa.6.i.sroa.8.0.copyload207.i = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx206.i, align 8, !noalias !90529 ; 6 uses
  br i1 %.not.i154.i, label %bb.da, label %.thread236.i

.thread236.i:                                     ; preds = %.noexc163.i
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.524.0.copyload.i.i = load i64, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !noalias !90529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !90529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !90529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !90456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !90456
  br label %.loopexit250.i

bb.da:                                            ; preds = %.noexc163.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !90529
  store i64 %.sroa.6.i.sroa.0.0.copyload200.i, ptr %i.p, align 8, !noalias !90529
  store ptr %.sroa.6.i.sroa.7.0.copyload203.i, ptr %.sroa.6.i.sroa.7.0..sroa_idx204.i, align 8, !noalias !90529
  store i64 %.sroa.6.i.sroa.8.0.copyload207.i, ptr %.sroa.6.i.sroa.8.0..sroa_idx208.i, align 8, !noalias !90529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !90529
  store ptr %i.kw, ptr %i.di, align 8, !noalias !90529
  store i64 %i.kx, ptr %i.dj, align 8, !noalias !90529
  store i64 0, ptr %i.n, align 8, !noalias !90529
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.429.0..sroa_idx.i.i, align 8, !noalias !90529
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !90529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !90529
  invoke void @_RNvMs_NtNtCskKR1pP4skmg_5jsonb8jsonpath8selectorNtB4_8Selector12select_value(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.dc unwind label %bb.db, !noalias !90530

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.fd, %bb.di, %bb.dh, %bb.db
  %.pn.i.i = phi { ptr, i32 } [ %i.la, %bb.db ], [ %i.nd, %bb.fd ], [ %i.le, %bb.dh ], [ %i.le, %bb.di ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath8selector8SelectorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.n) #73, !noalias !90530
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path8JsonPathECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.p) #73
          to label %.body.i unwind label %bb.fc, !noalias !90530

bb.db:                                            ; preds = %bb.da
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i

bb.dc:                                            ; preds = %bb.da
  %i.lb = load i64, ptr %i.m, align 8, !range !381, !noalias !90529, !noundef !313
  %.not57.i.i = icmp eq i64 %i.lb, -1             ; 2 uses
  br i1 %.not57.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !90529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !90529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90529
  store ptr %i.q, ptr %i.a, align 8, !noalias !90529
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.435.0..sroa_idx.i.i, align 8, !noalias !90529
  store ptr %i.c, ptr %i.dk, align 8, !noalias !90529
  store ptr @_RNvXs1_NtCskKR1pP4skmg_5jsonb5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.453.0..sroa_idx.i.i, align 8, !noalias !90529
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @868, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i.i unwind label %bb.fd, !noalias !90530

bb.de:                                            ; preds = %bb.dc
  %i.lc = load i64, ptr %i.dl, align 8, !range !332, !noalias !90529, !noundef !313 ; 4 uses
  %.not58.i.i = icmp eq i64 %i.lc, -1
  br i1 %.not58.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.sroa.5.0.copyload.i161.i = load ptr, ptr %.sroa.5.0..sroa_idx.i160.i, align 8, !noalias !90529, !nonnull !313, !noundef !313 ; 3 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i162.i, align 8, !noalias !90529 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !90529
  store ptr %.sroa.5.0.copyload.i161.i, ptr %i.l, align 8, !noalias !90529
  store i64 %.sroa.7.0.copyload.i.i, ptr %i.dm, align 8, !noalias !90529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !90529
  invoke void @_RNvMNtNtCskKR1pP4skmg_5jsonb9functions6scalarNtNtB6_3raw8RawJsonb7is_null(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
          to label %bb.dj unwind label %bb.dh, !noalias !90530

bb.dg:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i, %bb.dm, %bb.de
  %.sroa.0175.0.i = phi i64 [ 9, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ], [ -1, %bb.dm ], [ -1, %bb.de ]
  %.sroa.9.0.i = phi i64 [ %.sroa.9.8.copyload176.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ], [ %i.lc, %bb.dm ], [ -1, %bb.de ] ; 6 uses
  %.sroa.18.0.i = phi i64 [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ], [ %.sroa.06.0.i.i, %bb.dm ], [ undef, %bb.de ] ; 2 uses
  %.sroa.17.0.i = phi i64 [ %.sroa.17.8.copyload180.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ], [ %.sroa.7.0.copyload.i.i, %bb.dm ], [ undef, %bb.de ] ; 6 uses
  %.sroa.14177.0.i = phi ptr [ %.sroa.14177.8.copyload178.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ], [ %.sroa.5.0.copyload.i161.i, %bb.dm ], [ undef, %bb.de ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !90529
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath8selector8SelectorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.n), !noalias !90530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !90529
  %i.ld = icmp eq i64 %.sroa.6.i.sroa.8.0.copyload207.i, 0
  br i1 %i.ld, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %.lr.ph

bb.dh:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit100.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit93.i.i, %bb.ec, %bb.dy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit86.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit79.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, %bb.df
  %i.le = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lf = icmp eq i64 %i.lc, 0
  br i1 %i.lf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i161.i, i64 noundef %i.lc, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90530
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i

bb.dj:                                            ; preds = %bb.df
  %i.lg = load i64, ptr %i.k, align 8, !range !381, !noalias !90529, !noundef !313 ; 6 uses
  %.not59.i.i = icmp eq i64 %i.lg, -1
  br i1 %.not59.i.i, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.lh = load i8, ptr %.sink2.i.i.sroa.gep107.i.i, align 8, !range !325, !noalias !90529, !noundef !313
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %bb.dl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.dp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i, %bb.do, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !90529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !90529
  invoke void @_RNvMNtNtCskKR1pP4skmg_5jsonb9functions6scalarNtNtB6_3raw8RawJsonb10is_boolean(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
          to label %bb.dq unwind label %bb.dh, !noalias !90530

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !90529
  br label %bb.dm

bb.dm:                                            ; preds = %bb.fa, %bb.ez, %bb.et, %bb.en, %bb.eg, %bb.ef, %bb.eb, %bb.ds, %bb.dl
  %.sroa.06.0.i.i = phi i64 [ 4, %bb.ez ], [ 6, %bb.fa ], [ 5, %bb.et ], [ 4, %bb.en ], [ 0, %bb.dl ], [ 2, %bb.eg ], [ 1, %bb.ds ], [ 3, %bb.ef ], [ 3, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !90529
  br label %bb.dg

bb.dn:                                            ; preds = %bb.dj
  call void @llvm.experimental.noalias.scope.decl(metadata !90531)
  call void @llvm.experimental.noalias.scope.decl(metadata !90532)
  %i.lj = add nsw i64 %i.lg, 9223372036854775789
  %i.lk = icmp ugt i64 %i.lg, -9223372036854775790
  %i.ll = select i1 %i.lk, i64 %i.lj, i64 18
  switch i64 %i.ll, label %bb.do [
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
    i64 17, label %bb.dp
  ]

bb.do:                                            ; preds = %bb.dn
  %i.lm = icmp ne i64 %i.lg, -9223372036854775792
  call void @llvm.assume(i1 %i.lm)
  %or.cond.i.i.i.i.i = icmp slt i64 %i.lg, 1
  br i1 %or.cond.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i: ; preds = %bb.dp, %bb.do
  %.sink2.i.i.sroa.phi.i.i = phi ptr [ %.sink2.i.i.sroa.gep.i.i, %bb.dp ], [ %.sink2.i.i.sroa.gep107.i.i, %bb.do ]
  %.val.i.sink.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %bb.dp ], [ %i.lg, %bb.do ]
  %.val1.i.i.i.i.i = load ptr, ptr %.sink2.i.i.sroa.phi.i.i, align 8, !alias.scope !90533, !noalias !90529, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.sink.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90534
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

bb.dp:                                            ; preds = %bb.dn
  %.val.i.i.i.i.i = load i64, ptr %.sink2.i.i.sroa.gep107.i.i, align 8, !alias.scope !90535, !noalias !90529 ; 2 uses
  %i.ln = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ln, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i

bb.dq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  %i.lo = load i64, ptr %i.j, align 8, !range !381, !noalias !90529, !noundef !313 ; 6 uses
  %.not60.i.i = icmp eq i64 %i.lo, -1
  br i1 %.not60.i.i, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.lp = load i8, ptr %.sink2.i.i75.sroa.gep108.i.i, align 8, !range !325, !noalias !90529, !noundef !313
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.ds, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit79.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCskKR1pP4skmg_5jsonb5error5ErrorEECsc85D0lJ81Z_16lance_datafusion.exit79.i.i: ; preds = %bb.dv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error14ParseErrorCodeECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i74.i.i, %bb.du, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !90529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !90529
  invoke void @_RNvMNtNtCskKR1pP4skmg_5jsonb9functions6scalarNtNtB6_3raw8RawJsonb9is_number(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
end_hunk_5
begin_hunk_6_@_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_11OneShotExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan7execute:bb.a
.thread:                                          ; preds = %bb.b, %bb.c, %bb.l, %bb.n, %bb.y
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.av, ptr noundef nonnull align 1 dereferenceable(37) @1311, i64 37, i1 false)
  store i64 9, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 37, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 37, ptr %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  br label %bb.x

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53.sink.split: ; preds = %bb.x, %bb.ad
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextE9drop_slowCs5E8EBwPtAkp_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53.sink.split, %bb.ad, %bb.x
  ret void

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion(ptr nonnull %i.ai, ptr nonnull %i.ak) #73
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.d, %bb.ab
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.ad:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.633.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.763, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.763)
  store i64 9, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.8.copyload, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.6.8.copyload, ptr %.sroa.532.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !94014)
  call void @llvm.experimental.noalias.scope.decl(metadata !94015)
  %i.bc = load ptr, ptr %i.e, align 8, !alias.scope !94016, !nonnull !313, !noundef !313
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !94016
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94055)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !94055, !nonnull !313, !noundef !313 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.e, align 16, !noalias !94056
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2392
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !94055, !noundef !313 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94057)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !94058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !94058
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
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !94059
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
  %i.w = add nsw i64 %i.g, -1                     ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -32
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !94060
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !94058 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.e

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !94057
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !94057
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !94057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94058
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.pr.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !94061
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !94058 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !94058
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 3 uses
  %i.ac = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.g, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !prof !315

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !94062
  %i.ae = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 17) 8) #71, !noalias !94062 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ac) #72
          to label %.noexc.i unwind label %bb.c, !noalias !94058

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.ae, %bb.g ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.ag)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !94058
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !94058
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !94058
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !94058
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !94058
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !94058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94058
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94065
  %i.ah = icmp eq i64 %i.w, 0
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.ba, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %i.aj = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 5 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %i.ak = phi i16 [ %i.t, %.lr.ph.i.i.i ], [ %i.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.j ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !94066
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
          to label %.noexc6.i unwind label %bb.o, !noalias !94058

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !94065 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !94065 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !94065
  %2 = icmp samesign ult i64 %i.aj, 384307168202282326
  tail call void @llvm.assume(i1 %2)
  %i.ay = load i64, ptr %i.c, align 8, !range !320, !alias.scope !94067, !noalias !94058, !noundef !313
  %i.az = icmp eq i64 %i.aj, %i.ay
  br i1 %i.az, label %bb.n, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i, %bb.k
  %i.ba = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i ], [ %i.ai, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.aj ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bb, align 8, !noalias !94065
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !94065
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !94065
  %i.bc = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !94067, !noalias !94058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !94065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94065
  %i.bd = icmp eq i64 %i.aw, 0
  br i1 %i.bd, label %.loopexit.i, label %bb.j

bb.l:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !94068
  br label %.body.i

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aj, i64 noundef %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i unwind label %bb.l, !noalias !94069

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !94067, !noalias !94058
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.be, %bb.m ], [ %i.be, %bb.l ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73, !noalias !94058
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc6.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !94065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !94070
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body.i, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !94058
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider10udwf_names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94109)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !94109, !nonnull !313, !noundef !313 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.e, align 16, !noalias !94110
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2440
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !94109, !noundef !313 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !94112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !94112
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
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !94113
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
  %i.w = add nsw i64 %i.g, -1                     ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -32
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !94114
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !94112 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.e

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !94111
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !94111
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !94111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94112
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.pr.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !94115
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !94112 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !94112
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 3 uses
  %i.ac = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.g, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !prof !315

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !94116
  %i.ae = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 17) 8) #71, !noalias !94116 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ac) #72
          to label %.noexc.i unwind label %bb.c, !noalias !94112

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.ae, %bb.g ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.ag)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !94112
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !94112
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !94112
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !94112
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !94112
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !94112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94119
  %i.ah = icmp eq i64 %i.w, 0
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.ba, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %i.aj = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 5 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %i.ak = phi i16 [ %i.t, %.lr.ph.i.i.i ], [ %i.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.j ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !94120
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
          to label %.noexc6.i unwind label %bb.o, !noalias !94112

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !94119 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !94119 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !94119
  %2 = icmp samesign ult i64 %i.aj, 384307168202282326
  tail call void @llvm.assume(i1 %2)
  %i.ay = load i64, ptr %i.c, align 8, !range !320, !alias.scope !94121, !noalias !94112, !noundef !313
  %i.az = icmp eq i64 %i.aj, %i.ay
  br i1 %i.az, label %bb.n, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i, %bb.k
  %i.ba = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i ], [ %i.ai, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.aj ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bb, align 8, !noalias !94119
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !94119
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !94119
  %i.bc = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !94121, !noalias !94112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !94119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94119
  %i.bd = icmp eq i64 %i.aw, 0
  br i1 %i.bd, label %.loopexit.i, label %bb.j

bb.l:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !94122
  br label %.body.i

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aj, i64 noundef %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i unwind label %bb.l, !noalias !94123

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !94121, !noalias !94112
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.be, %bb.m ], [ %i.be, %bb.l ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73, !noalias !94112
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc6.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !94119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !94124
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body.i, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !94112
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider15get_window_meta(ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #39 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94141)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !94141, !noundef !313
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !94141, !noundef !313
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %.val5.i = load i64, ptr %i.f, align 8, !alias.scope !94141, !noundef !313
  %i.g = tail call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECsc85D0lJ81Z_16lance_datafusion(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !94141 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94143)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !94144, !noundef !313 ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !94144, !nonnull !313, !noundef !313 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.d ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.ah, %bb.d ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !94145 ; 2 uses
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
  %.val4.i.i.i = load i64, ptr %i.x, align 8, !noalias !94146, !noundef !313
  %i.y = icmp eq i64 %2, %.val4.i.i.i
  br i1 %i.y, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, !prof !329

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %.lr.ph.i.i
  %i.z = getelementptr i8, ptr %i.w, i64 -24
  %.val3.i.i.i = load ptr, ptr %i.z, align 8, !noalias !94146, !nonnull !313, !noundef !313
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %.val3.i.i.i, i64 %2), !alias.scope !94147, !noalias !94148
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, !prof !330

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, %bb.c
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread, !prof !314

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
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !313, !noundef !313 ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !313, !noundef !313
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.d = load i64, ptr %i.c, align 8, !noundef !313
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}
end_hunk_6
begin_hunk_7_@_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider21get_higher_order_meta:bb.a
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !94250, !noundef !313 ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !94250, !nonnull !313, !noundef !313 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.d ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.ah, %bb.d ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !94251 ; 2 uses
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
  %.val4.i.i.i = load i64, ptr %i.x, align 8, !noalias !94252, !noundef !313
  %i.y = icmp eq i64 %2, %.val4.i.i.i
  br i1 %i.y, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, !prof !329

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %.lr.ph.i.i
  %i.z = getelementptr i8, ptr %i.w, i64 -24
  %.val3.i.i.i = load ptr, ptr %i.z, align 8, !noalias !94252, !nonnull !313, !noundef !313
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %.val3.i.i.i, i64 %2), !alias.scope !94253, !noalias !94254
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, !prof !330

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, %bb.c
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread, !prof !314

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
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !313, !noundef !313 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94293)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !94293, !nonnull !313, !noundef !313 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.e, align 16, !noalias !94294
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2344
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !94293, !noundef !313 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94295)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !94296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !94296
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
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !94297
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
  %i.w = add nsw i64 %i.g, -1                     ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -32
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !94298
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !94296 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.e

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !94295
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !94295
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !94295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94296
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.pr.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !94299
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !94296 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !94296
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 3 uses
  %i.ac = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.g, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !prof !315

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !94300
  %i.ae = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 17) 8) #71, !noalias !94300 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ac) #72
          to label %.noexc.i unwind label %bb.c, !noalias !94296

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.ae, %bb.g ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.ag)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !94296
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !94296
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !94296
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !94296
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !94296
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !94296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94302)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94303
  %i.ah = icmp eq i64 %i.w, 0
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.ba, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %i.aj = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 5 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %i.ak = phi i16 [ %i.t, %.lr.ph.i.i.i ], [ %i.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.j ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !94304
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
          to label %.noexc6.i unwind label %bb.o, !noalias !94296

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !94303 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !94303 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !94303
  %2 = icmp samesign ult i64 %i.aj, 384307168202282326
  tail call void @llvm.assume(i1 %2)
  %i.ay = load i64, ptr %i.c, align 8, !range !320, !alias.scope !94305, !noalias !94296, !noundef !313
  %i.az = icmp eq i64 %i.aj, %i.ay
  br i1 %i.az, label %bb.n, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i, %bb.k
  %i.ba = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i ], [ %i.ai, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.aj ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bb, align 8, !noalias !94303
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !94303
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !94303
  %i.bc = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !94305, !noalias !94296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !94303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94303
  %i.bd = icmp eq i64 %i.aw, 0
  br i1 %i.bd, label %.loopexit.i, label %bb.j

bb.l:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !94306
  br label %.body.i

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aj, i64 noundef %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i unwind label %bb.l, !noalias !94307

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !94305, !noalias !94296
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.be, %bb.m ], [ %i.be, %bb.l ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73, !noalias !94296
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc6.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !94303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !94308
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body.i, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !94296
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94347)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !94347, !nonnull !313, !noundef !313 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.e, align 16, !noalias !94348
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2296
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !94347, !noundef !313 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !94350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !94350
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
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !94351
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
  %i.w = add nsw i64 %i.g, -1                     ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -32
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !94352
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !94350 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.e

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !94349
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !94349
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !94349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94350
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.pr.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !94353
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !94350 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !94350
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 3 uses
  %i.ac = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.g, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !prof !315

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !94354
  %i.ae = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 17) 8) #71, !noalias !94354 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ac) #72
          to label %.noexc.i unwind label %bb.c, !noalias !94350

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.ae, %bb.g ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.ag)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !94350
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !94350
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !94350
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !94350
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !94350
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !94350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94350
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94356)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94357
  %i.ah = icmp eq i64 %i.w, 0
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.ba, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %i.aj = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 5 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %i.ak = phi i16 [ %i.t, %.lr.ph.i.i.i ], [ %i.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.j ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !94358
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
          to label %.noexc6.i unwind label %bb.o, !noalias !94350

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !94357 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !94357 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !94357
  %2 = icmp samesign ult i64 %i.aj, 384307168202282326
  tail call void @llvm.assume(i1 %2)
  %i.ay = load i64, ptr %i.c, align 8, !range !320, !alias.scope !94359, !noalias !94350, !noundef !313
  %i.az = icmp eq i64 %i.aj, %i.ay
  br i1 %i.az, label %bb.n, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i, %bb.k
  %i.ba = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i ], [ %i.ai, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.aj ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bb, align 8, !noalias !94357
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !94357
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !94357
  %i.bc = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !94359, !noalias !94350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !94357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94357
  %i.bd = icmp eq i64 %i.aw, 0
  br i1 %i.bd, label %.loopexit.i, label %bb.j

bb.l:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !94360
  br label %.body.i

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aj, i64 noundef %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i unwind label %bb.l, !noalias !94361

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !94359, !noalias !94350
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.be, %bb.m ], [ %i.be, %bb.l ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73, !noalias !94350
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc6.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !94357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !94362
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body.i, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !94350
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
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !94365
  %i.e = tail call noundef align 16 dereferenceable_or_null(1776) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1776, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !94365 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXs1_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtBM_12DataFrameExt15group_by_stream0E3newBO_.exit, !prof !314

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
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !313, !noalias !94388, !nonnull !313
  tail call void %i.d(ptr noundef nonnull %1, i64 noundef -4266729591828681060), !noalias !94388, !inline_history !238
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94390)
  call fastcc void @_RINvXsA_NtCscTsYlPPaaMf_22datafusion_expr_common9signatureNtB6_13TypeSignatureNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1g_6HasherEL_ECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i8, ptr %i.e, align 8, !range !389, !alias.scope !94391, !noundef !313
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !313, !noalias !94392, !nonnull !313 ; 2 uses
  tail call void %i.i(ptr noundef nonnull %1, i64 noundef %i.g), !noalias !94392, !inline_history !94376
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !range !332, !alias.scope !94391, !noundef !313
  %i.l = icmp ne i64 %i.k, -1                     ; 2 uses
  %i.m = zext i1 %i.l to i64
  tail call void %i.i(ptr noundef nonnull %1, i64 noundef %i.m), !noalias !94393, !inline_history !94376
  br i1 %i.l, label %bb.b, label %_RINvXs9_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB6_14CastListF16UdfNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB18_6HasherEL_EB8_.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !94391, !nonnull !313, !noundef !313 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !94391, !noundef !313 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !313, !noalias !94394, !nonnull !313
  tail call void %i.s(ptr noundef nonnull %1, i64 noundef %i.q), !noalias !94394, !inline_history !94381
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94395)
  %.idx.i.i.i = mul nuw nsw i64 %i.q, 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i
  %i.u = icmp eq i64 %i.q, 0
  br i1 %i.u, label %_RINvXs9_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB6_14CastListF16UdfNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB18_6HasherEL_EB8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !313, !noalias !94396, !nonnull !313
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.0.01.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.x, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr i8, ptr %.sroa.0.01.i.i.i, i64 8
  %.sroa.0.0.val.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !94395, !noalias !94397, !nonnull !313, !noundef !313
  %i.z = getelementptr i8, ptr %.sroa.0.01.i.i.i, i64 16
  %.sroa.0.0.val3.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !94395, !noalias !94397, !noundef !313
  tail call void %i.w(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val.i.i.i, i64 noundef %.sroa.0.0.val3.i.i.i), !noalias !94398, !inline_history !94387
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
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !313, !noalias !94421, !nonnull !313
  tail call void %i.d(ptr noundef nonnull %1, i64 noundef 4913738849653309957), !noalias !94421, !inline_history !238
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94423)
  call fastcc void @_RINvXsA_NtCscTsYlPPaaMf_22datafusion_expr_common9signatureNtB6_13TypeSignatureNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1g_6HasherEL_ECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i8, ptr %i.e, align 8, !range !389, !alias.scope !94424, !noundef !313
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !313, !noalias !94425, !nonnull !313 ; 2 uses
  tail call void %i.i(ptr noundef nonnull %1, i64 noundef %i.g), !noalias !94425, !inline_history !94409
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !range !332, !alias.scope !94424, !noundef !313
  %i.l = icmp ne i64 %i.k, -1                     ; 2 uses
  %i.m = zext i1 %i.l to i64
  tail call void %i.i(ptr noundef nonnull %1, i64 noundef %i.m), !noalias !94426, !inline_history !94409
  br i1 %i.l, label %bb.b, label %_RINvXs6_NtNtCsdS3zsMIHox4_20datafusion_functions4core8getfieldNtB6_12GetFieldFuncNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1j_6HasherEL_ECsc85D0lJ81Z_16lance_datafusion.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !94424, !nonnull !313, !noundef !313 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !94424, !noundef !313 ; 3 uses
end_hunk_7
