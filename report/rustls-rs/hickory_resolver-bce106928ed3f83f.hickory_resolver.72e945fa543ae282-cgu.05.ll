Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_resolver-bce106928ed3f83f.hickory_resolver.72e945fa543ae282-cgu.05?download=true
inline.NumInlined: 579
inline.NumDeleted: 263
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB5_16ConnectionPolicy24select_connection_config:bb.a
  %i.o = ptrtoint ptr %.us-phi to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 80                  ; 2 uses
  %i.r = load i64, ptr %3, align 8, !range !54
  %.fr = freeze i64 %i.r
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.fr, -2
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.split10.us, label %.split10

.split10.us:                                      ; preds = %bb.b
  br i1 %i.e, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigENCNvMs6_NtB1r_11name_serverNtB2v_16ConnectionPolicy24select_connection_config0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB3E_6min_by4foldRB1n_NCB2p_s_0E0EB1r_.exit, label %.split10.us.split.us

.split10.us.split.us:                             ; preds = %.split10.us, %.thread7.i.i.i.i.i.i.i.i.i.us.us
  %.sroa.04.0.i.i.i.us.us = phi i64 [ %i.w, %.thread7.i.i.i.i.i.i.i.i.i.us.us ], [ 0, %.split10.us ] ; 2 uses
  %.sroa.02.0.i.i.i.us.us = phi ptr [ %.sroa.0.0.i.i.i.i.us.us, %.thread7.i.i.i.i.i.i.i.i.i.us.us ], [ %.us-phi9, %.split10.us ] ; 2 uses
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %.us-phi, i64 %.sroa.04.0.i.i.i.us.us ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.t = load i64, ptr %i.s, align 8, !range !488, !alias.scope !577, !noalias !579, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !594
  %.val.i.i.i.i.i.i.i.i.us.us = load i64, ptr %.sroa.02.0.i.i.i.us.us, align 8, !range !488, !alias.scope !603, !noalias !604, !noundef !5 ; 2 uses
  %i.u = icmp eq i64 %.val.i.i.i.i.i.i.i.i.us.us, 0
  %switch.idx.cast = trunc nuw i64 %.val.i.i.i.i.i.i.i.i.us.us to i8
  switch i64 %i.t, label %.unreachabledefault [
    i64 0, label %.thread7.i.i.i.i.i.i.i.i.i.us.us
    i64 1, label %bb.e
    i64 2, label %bb.d
    i64 3, label %bb.c
  ]

bb.c:                                             ; preds = %.split10.us.split.us
  br label %.thread7.i.i.i.i.i.i.i.i.i.us.us

bb.d:                                             ; preds = %.split10.us.split.us
  br label %.thread7.i.i.i.i.i.i.i.i.i.us.us

bb.e:                                             ; preds = %.split10.us.split.us
  br label %.thread7.i.i.i.i.i.i.i.i.i.us.us

.thread7.i.i.i.i.i.i.i.i.i.us.us:                 ; preds = %bb.e, %bb.d, %bb.c, %.split10.us.split.us
  %i.v = phi i1 [ true, %bb.c ], [ true, %bb.e ], [ true, %bb.d ], [ %i.u, %.split10.us.split.us ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.us.us = phi i8 [ 3, %bb.c ], [ 1, %bb.e ], [ 2, %bb.d ], [ 0, %.split10.us.split.us ]
  %.old.old.i.i.i.i.i.i.us.us = icmp eq i8 %.sroa.04.0.i.i.i.i.i.i.i.i.i.us.us, %switch.idx.cast
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !594
  %brmerge = or i1 %.old.old.i.i.i.i.i.i.us.us, %i.v
  %.sroa.0.0.i.i.i.i.us.us = select i1 %brmerge, ptr %.sroa.02.0.i.i.i.us.us, ptr %i.s ; 2 uses
  %i.w = add nuw i64 %.sroa.04.0.i.i.i.us.us, 1   ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.q
  br i1 %i.x, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigENCNvMs6_NtB1r_11name_serverNtB2v_16ConnectionPolicy24select_connection_config0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB3E_6min_by4foldRB1n_NCB2p_s_0E0EB1r_.exit, label %.split10.us.split.us

.unreachabledefault:                              ; preds = %.split10.us.split.us
  unreachable

default.unreachable:                              ; preds = %switch.lookup
  unreachable

.split10:                                         ; preds = %bb.b, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigB11_NCNvMs6_NtB16_11name_serverNtB2d_16ConnectionPolicy24select_connection_config0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB27_s_0E0E0B16_.exit.i.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.ah, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigB11_NCNvMs6_NtB16_11name_serverNtB2d_16ConnectionPolicy24select_connection_config0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB27_s_0E0E0B16_.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.02.0.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigB11_NCNvMs6_NtB16_11name_serverNtB2d_16ConnectionPolicy24select_connection_config0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB27_s_0E0E0B16_.exit.i.i.i ], [ %.us-phi9, %bb.b ] ; 3 uses
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %.us-phi, i64 %.sroa.04.0.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.z = load i64, ptr %i.y, align 8, !range !488, !alias.scope !577, !noalias !579, !noundef !5 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  %.sroa.01.0.i.not.i.i.i.i = and i1 %i.aa, %i.e
  br i1 %.sroa.01.0.i.not.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigB11_NCNvMs6_NtB16_11name_serverNtB2d_16ConnectionPolicy24select_connection_config0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB27_s_0E0E0B16_.exit.i.i.i, label %switch.lookup

switch.lookup:                                    ; preds = %.split10
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.b, ptr noundef nonnull align 1 dereferenceable(17) %1, i64 17, i1 false), !noalias !594
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.02.0.i.i.i, align 8, !range !488, !alias.scope !603, !noalias !604, !noundef !5 ; 3 uses
  %i.ab = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  %switch.masked46 = icmp samesign ult i64 %.val.i.i.i.i.i.i.i.i, 2
  %switch.idx.cast47 = trunc nuw i64 %.val.i.i.i.i.i.i.i.i to i8 ; 4 uses
  switch i64 %i.z, label %default.unreachable [
    i64 0, label %bb.i
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
  ]

bb.f:                                             ; preds = %switch.lookup
  br label %bb.i

bb.g:                                             ; preds = %switch.lookup
  br label %bb.i

bb.h:                                             ; preds = %switch.lookup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %switch.lookup
  %i.ac = phi i1 [ true, %bb.h ], [ true, %bb.f ], [ true, %bb.g ], [ %i.ab, %switch.lookup ]
  %switch12.i.i.i.i.i.i.i.i.i = phi i1 [ false, %bb.h ], [ true, %bb.f ], [ false, %bb.g ], [ true, %switch.lookup ] ; 2 uses
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = phi i8 [ 3, %bb.h ], [ 1, %bb.f ], [ 2, %bb.g ], [ 0, %switch.lookup ] ; 5 uses
  br i1 %switch.masked46, label %.thread.i.i.i.i.i.i.i.i.i, label %bb.j

.thread7.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.m, %.thread9.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i
  %.old.old.i.i.i.i.i.i = icmp eq i8 %.sroa.04.0.i.i.i.i.i.i.i.i.i, %switch.idx.cast47
  br i1 %.old.old.i.i.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.thread.i.i.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.a, ptr noundef nonnull align 1 dereferenceable(17) %1, i64 17, i1 false), !noalias !594
  %i.ad = call fastcc noundef zeroext i1 @_RNvMs2_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtB5_24NameServerTransportState14recent_success(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 1 captures(address) dereferenceable(17) %i.a, i8 noundef %switch.idx.cast47, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3), !noalias !610 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !605
  br i1 %switch12.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.l

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.i
  br i1 %switch12.i.i.i.i.i.i.i.i.i, label %.thread7.i.i.i.i.i.i.i.i.i, label %.thread9.i.i.i.i.i.i.i.i.i

.thread9.i.i.i.i.i.i.i.i.i:                       ; preds = %.thread.i.i.i.i.i.i.i.i.i
  %i.ae = call fastcc noundef zeroext i1 @_RNvMs2_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtB5_24NameServerTransportState14recent_success(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(17) %i.b, i8 noundef %.sroa.04.0.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3), !noalias !594
  br i1 %i.ae, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.thread6.i.i.i.i.i.i, label %.thread7.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %.old.i.i.i.i.i.i = icmp eq i8 %.sroa.04.0.i.i.i.i.i.i.i.i.i, %switch.idx.cast47
  %or.cond8.i.i.i.i.i.i = or i1 %.old.i.i.i.i.i.i, %i.ad
  br i1 %or.cond8.i.i.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.thread.i.i.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = call fastcc noundef zeroext i1 @_RNvMs2_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtB5_24NameServerTransportState14recent_success(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(17) %i.b, i8 noundef %.sroa.04.0.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3), !noalias !594 ; 2 uses
  br i1 %i.ad, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.af, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.thread6.i.i.i.i.i.i, label %.thread7.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ag = icmp ne i8 %.sroa.04.0.i.i.i.i.i.i.i.i.i, %switch.idx.cast47
  %or.cond.not.i.i.i.i.i.i = and i1 %i.ag, %i.af
  br i1 %or.cond.not.i.i.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.i.i.i.i.i.i, label %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.thread.i.i.i.i.i.i

_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.thread.i.i.i.i.i.i: ; preds = %bb.n, %bb.k, %.thread7.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !594
  br label %bb.o

_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.thread6.i.i.i.i.i.i: ; preds = %bb.m, %.thread9.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !594
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigB11_NCNvMs6_NtB16_11name_serverNtB2d_16ConnectionPolicy24select_connection_config0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB27_s_0E0E0B16_.exit.i.i.i

_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.k, %.thread7.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !594
  br i1 %i.ac, label %bb.o, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigB11_NCNvMs6_NtB16_11name_serverNtB2d_16ConnectionPolicy24select_connection_config0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB27_s_0E0E0B16_.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.i.i.i.i.i.i, %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.thread.i.i.i.i.i.i
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigB11_NCNvMs6_NtB16_11name_serverNtB2d_16ConnectionPolicy24select_connection_config0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB27_s_0E0E0B16_.exit.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigB11_NCNvMs6_NtB16_11name_serverNtB2d_16ConnectionPolicy24select_connection_config0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB27_s_0E0E0B16_.exit.i.i.i: ; preds = %bb.o, %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.i.i.i.i.i.i, %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.thread6.i.i.i.i.i.i, %.split10
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.02.0.i.i.i, %.split10 ], [ %.sroa.02.0.i.i.i, %bb.o ], [ %i.y, %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.i.i.i.i.i.i ], [ %i.y, %_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtBW_16ConnectionPolicy24select_connection_configs_0INtB7_6FnOnceTRRNtNtBY_6config16ConnectionConfigB2L_EE9call_onceBY_.exit.thread6.i.i.i.i.i.i ] ; 2 uses
  %i.ah = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.q
  br i1 %i.ai, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigENCNvMs6_NtB1r_11name_serverNtB2v_16ConnectionPolicy24select_connection_config0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB3E_6min_by4foldRB1n_NCB2p_s_0E0EB1r_.exit, label %.split10

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigENCNvMs6_NtB1r_11name_serverNtB2v_16ConnectionPolicy24select_connection_config0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB3E_6min_by4foldRB1n_NCB2p_s_0E0EB1r_.exit: ; preds = %.split, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigB11_NCNvMs6_NtB16_11name_serverNtB2d_16ConnectionPolicy24select_connection_config0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB27_s_0E0E0B16_.exit.i.i.i, %.thread7.i.i.i.i.i.i.i.i.i.us.us, %.split.preheader, %.split10.us, %.split.us, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigENCNvMs6_NtB1w_11name_serverNtB2A_16ConnectionPolicy24select_connection_config0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigB11_NCNvMs6_NtB16_11name_serverNtB2d_16ConnectionPolicy24select_connection_config0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB27_s_0E0E0B16_.exit.i.i.i ], [ %.us-phi9, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigENCNvMs6_NtB1w_11name_serverNtB2A_16ConnectionPolicy24select_connection_config0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i ], [ null, %.split.us ], [ null, %.split.preheader ], [ %.us-phi9, %.split10.us ], [ %.sroa.0.0.i.i.i.i.us.us, %.thread7.i.i.i.i.i.i.i.i.i.us.us ], [ null, %.split ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef align 8 ptr @_RNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB5_16ConnectionPolicy34select_encrypted_connection_config(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, ret: address, read_provenance) %1, i64 noundef range(i64 0, 115292150460684698) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %2, 80
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = load i8, ptr %0, align 1, !range !158
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3i_ENCNvMs6_NtBN_11name_serverNtB4f_16ConnectionPolicy34select_encrypted_connection_config0NCINvNvB1J_4find5checkB3i_NCB49_s_0E0E0B3n_EBN_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3i_ENCNvMs6_NtBN_11name_serverNtB4f_16ConnectionPolicy34select_encrypted_connection_config0NCINvNvB1J_4find5checkB3i_NCB49_s_0E0E0B3n_EBN_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !range !488, !alias.scope !611, !noalias !614, !noundef !5 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %.sroa.01.0.i.not.i.i = and i1 %i.i, %i.c
  %switch.i.i.i.i = icmp samesign ult i64 %i.h, 2
  %i.j = select i1 %.sroa.01.0.i.not.i.i, i1 true, i1 %switch.i.i.i.i
  br i1 %i.j, label %bb.b, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3i_ENCNvMs6_NtBN_11name_serverNtB4f_16ConnectionPolicy34select_encrypted_connection_config0NCINvNvB1J_4find5checkB3i_NCB49_s_0E0E0B3n_EBN_.exit

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3i_ENCNvMs6_NtBN_11name_serverNtB4f_16ConnectionPolicy34select_encrypted_connection_config0NCINvNvB1J_4find5checkB3i_NCB49_s_0E0E0B3n_EBN_.exit: ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.g, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool13most_specific(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !58, !noundef !5 ; 3 uses
  %i.b = icmp eq i8 %i.a, 2
  %i.c = load i8, ptr %2, align 8, !range !58, !noundef !5 ; 4 uses
  %i.d = icmp ne i8 %i.c, 2                       ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !range !69  ; 2 uses
  %.not = icmp eq i32 %i.f, 2
  %or.cond = select i1 %i.d, i1 true, i1 %.not
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !range !69
  %.not3 = icmp eq i32 %i.h, 2                    ; 2 uses
  %or.cond8 = select i1 %or.cond, i1 true, i1 %.not3
  %.not.not = icmp eq i32 %i.f, 2
  %i.i = select i1 %or.cond8, i1 %.not.not, i1 false
  br i1 %i.i, label %.thread, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8, !range !69
  %.not5 = icmp eq i32 %i.k, 2
  %or.cond10 = select i1 %i.d, i1 true, i1 %.not5
  br i1 %or.cond10, label %bb.d, label %bb.e

.thread:                                          ; preds = %bb.b
  %or.cond1012 = select i1 %i.d, i1 true, i1 %.not3
  %cond = icmp ne i8 %i.c, 10
  %or.cond21.not = and i1 %cond, %or.cond1012
  br i1 %or.cond21.not, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i8 %i.a, 9
  br i1 %i.l, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.g, %bb.c, %.thread, %bb.f
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not25 = icmp eq i8 %i.c, 9
  br i1 %.not25, label %bb.h, label %bb.e

bb.g:                                             ; preds = %bb.d
  %i.m = icmp ne i8 %i.a, 10
  %i.n = icmp eq i8 %i.c, 10
  %or.cond20 = and i1 %i.n, %i.m
  br i1 %or.cond20, label %bb.e, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.b, %bb.f, %bb.g, %bb.e
  %.sink18 = phi ptr [ %1, %.thread ], [ %2, %bb.e ], [ %1, %bb.b ], [ %1, %bb.f ], [ %1, %bb.g ]
  %.sink = phi ptr [ %2, %.thread ], [ %1, %bb.e ], [ %2, %bb.b ], [ %2, %bb.f ], [ %2, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sink18, i64 72, i1 false)
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(72) %.sink)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB5_14ConnectionMetaNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef nonnull ptr @_RNvNtNtCsbZqQukzfxgd_4rand4rngs6thread3rng()
  store ptr %i.b, ptr %i.a, align 8
  %i.c = invoke noundef i64 @_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 1, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !627, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !627, !noundef !5
  %i.g = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !noalias !627
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngECs9RFwvXNxPyg_16hickory_resolver.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell10UnsafeCellINtNtCsa9hcECrMlfW_9rand_core5block8BlockRngNtNtNtCsbZqQukzfxgd_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngECs9RFwvXNxPyg_16hickory_resolver.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.i = load ptr, ptr %i.a, align 8, !alias.scope !637, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noalias !637, !noundef !5
  %i.k = add i64 %i.j, -1                         ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !noalias !637
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %_RINvCsbZqQukzfxgd_4rand12random_rangeyINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEECs9RFwvXNxPyg_16hickory_resolver.exit

bb.e:                                             ; preds = %bb.d
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell10UnsafeCellINtNtCsa9hcECrMlfW_9rand_core5block8BlockRngNtNtNtCsbZqQukzfxgd_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
  br label %_RINvCsbZqQukzfxgd_4rand12random_rangeyINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEECs9RFwvXNxPyg_16hickory_resolver.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngECs9RFwvXNxPyg_16hickory_resolver.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

_RINvCsbZqQukzfxgd_4rand12random_rangeyINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = urem i64 %i.c, 1000000                   ; 2 uses
  %narrow = sub nuw i64 %i.c, %i.n
  %i.o = trunc i64 %narrow to i32
  %i.p = trunc nuw nsw i64 %i.n to i32
  %i.q = add i32 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.r, align 8
  store i64 0, ptr %0, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtB5_20ActiveRequestCleanupNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.e = cmpxchg weak ptr %i.d, i8 0, i8 1 acquire monotonic, align 1
  %i.f = extractvalue { i8, i1 } %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !382

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMs1_NtCsbCIQ8H6Y6l3_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.d, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !641
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.j = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyEEB2h_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  invoke void @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB1q_12SharedLookupEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B2q_E0EB1s_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %.noexc2 unwind label %bb.f

.noexc2:                                          ; preds = %.noexc
  %i.l = load ptr, ptr %i.a, align 8, !noalias !641, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.thread, label %bb.d

.thread:                                          ; preds = %.noexc2
  store i64 0, ptr %i.b, align 8, !alias.scope !638, !noalias !644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !641
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool12SharedLookupEEB11_.exit

bb.d:                                             ; preds = %.noexc2
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !641, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !641, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  store ptr %i.n, ptr %i.q, align 8, !alias.scope !638, !noalias !644
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.p, ptr %i.r, align 8, !alias.scope !638, !noalias !644
  store i64 1, ptr %i.b, align 8, !alias.scope !638, !noalias !644
  %i.s = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !645
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.o, %bb.e, %.noexc, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k, %bb.l, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.y, %bb.l ], [ %i.y, %bb.k ], [ %i.y, %bb.j ]
  %i.v = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1
  %i.w = extractvalue { i8, i1 } %i.v, 1
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs45r4e3XQE14_8lock_api5mutex10MutexGuardNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB3E_12SharedLookupEEEB3G_.exit, label %bb.g, !prof !382

bb.g:                                             ; preds = %.body
  invoke void @_RNvMs1_NtCsbCIQ8H6Y6l3_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs45r4e3XQE14_8lock_api5mutex10MutexGuardNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB3E_12SharedLookupEEEB3G_.exit unwind label %bb.r

bb.h:                                             ; preds = %bb.d, %bb.e
  %.pr = load i64, ptr %i.b, align 8, !alias.scope !650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !641
  %i.x = icmp eq i64 %.pr, 0
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool12SharedLookupEEB11_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsb_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtB5_6SharedINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputINtNtB1g_6option6OptionINtNtB1g_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB1g_6marker4SendEL_EEENtNtNtB1g_3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.z = load ptr, ptr %i.q, align 8, !alias.scope !656, !noundef !5 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_0
