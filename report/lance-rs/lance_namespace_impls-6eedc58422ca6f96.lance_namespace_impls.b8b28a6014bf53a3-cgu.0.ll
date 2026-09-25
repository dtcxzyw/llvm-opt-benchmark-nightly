Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace20create_table_version0B9_:bb.a
bb.ho:                                            ; preds = %bb.hm
  store i64 19, ptr %i.x, align 8, !noalias !203499
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.yw, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !203499
  %.sroa.511.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i.i.i.i, align 8, !noalias !203499
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hq, %bb.ho
  %i.zb = phi ptr [ %i.yy, %bb.hq ], [ %i.yw, %bb.ho ]
  %i.zc = phi i64 [ 20, %bb.hq ], [ 19, %bb.ho ]  ; 2 uses
  %i.zd = phi i64 [ 1, %bb.hq ], [ 0, %bb.ho ]    ; 4 uses
  %.sroa.012.0.i.i.i.i = phi i64 [ %i.zf, %bb.hq ], [ %.val.i40.i, %bb.ho ]
  %i.ze = invoke { ptr, i64 } @_RNvMsf_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impy4__fmt(i64 noundef %.sroa.012.0.i.i.i.i, ptr noalias noundef nonnull %i.y, i64 noundef 19)
          to label %bb.hr unwind label %bb.hs, !noalias !203500 ; 2 uses

bb.hq:                                            ; preds = %bb.hn
  store i64 20, ptr %i.x, align 8, !noalias !203499
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.yy, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !203499
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !203521)
  store i8 45, ptr %i.yy, align 1, !noalias !203522
  store i64 1, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !alias.scope !203521, !noalias !203499
  %i.zf = sub i64 0, %.val.i40.i
  br label %bb.hp

bb.hr:                                            ; preds = %bb.hp
  %i.zg = extractvalue { ptr, i64 } %i.ze, 0      ; 2 uses
  %i.zh = extractvalue { ptr, i64 } %i.ze, 1      ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zg) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !203523)
  %i.zi = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.zj = sub nuw nsw i64 %i.zc, %i.zd
  %i.zk = icmp ugt i64 %i.zh, %i.zj
  br i1 %i.zk, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i: ; preds = %bb.hr
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.zd, i64 noundef %i.zh, i64 noundef 1, i64 noundef 1)
          to label %.noexc18.i.i.i.i unwind label %bb.hs, !noalias !203500

.noexc18.i.i.i.i:                                 ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i
  %i.zl = load i64, ptr %i.zi, align 8, !alias.scope !203523, !noalias !203499, !noundef !416 ; 2 uses
  %i.zm = icmp sgt i64 %i.zl, -1
  call void @llvm.assume(i1 %i.zm)
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !203523, !noalias !203499
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB30_18DirectoryNamespace32enforce_create_table_version_cas0s_0EB32_.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.hr
  %.not.i.i.i.i.i = icmp eq i64 %i.zh, 0
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB30_18DirectoryNamespace32enforce_create_table_version_cas0s_0EB32_.exit.thread145.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB30_18DirectoryNamespace32enforce_create_table_version_cas0s_0EB32_.exit.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB30_18DirectoryNamespace32enforce_create_table_version_cas0s_0EB32_.exit.thread145.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  store i64 %i.zd, ptr %i.zi, align 8, !alias.scope !203523, !noalias !203499
  %.sroa.799.0..sroa_idx147.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.799.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.799.0..sroa_idx147.i, i64 16, i1 false), !noalias !203524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !203499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !203499
  br label %bb.hu

bb.hs:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i, %bb.hp
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !203525)
  call void @llvm.experimental.noalias.scope.decl(metadata !203526)
  %.val.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !range !419, !alias.scope !203527, !noalias !203499, !noundef !416 ; 2 uses
  %i.zn = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.zn, label %.body.i212, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.zo = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.zo, align 8, !alias.scope !203527, !noalias !203499, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !203528
  br label %.body.i212

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB30_18DirectoryNamespace32enforce_create_table_version_cas0s_0EB32_.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %.noexc18.i.i.i.i
  %i.zp = phi ptr [ %.pre.i.i.i.i, %.noexc18.i.i.i.i ], [ %i.zb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ]
  %i.zq = phi i64 [ %i.zl, %.noexc18.i.i.i.i ], [ %i.zd, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zp, i64 %i.zq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zr, ptr nonnull readonly align 1 %i.zg, i64 %i.zh, i1 false), !noalias !203529
  %.sroa.097.0.copyload.pre.i = load i64, ptr %i.x, align 8, !noalias !203524 ; 2 uses
  %i.zs = add i64 %i.zq, %i.zh
  store i64 %i.zs, ptr %i.zi, align 8, !alias.scope !203523, !noalias !203499
  %.sroa.799.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.799.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.799.0..sroa_idx.i, i64 16, i1 false), !noalias !203524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !203499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !203499
  call void @llvm.experimental.noalias.scope.decl(metadata !203530)
  call void @llvm.experimental.noalias.scope.decl(metadata !203531)
  %.not.i43.i = icmp eq i64 %.sroa.097.0.copyload.pre.i, -1
  br i1 %.not.i43.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB30_18DirectoryNamespace32enforce_create_table_version_cas0s_0EB32_.exit.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB30_18DirectoryNamespace32enforce_create_table_version_cas0s_0EB32_.exit.thread145.i
  %.sroa.097.0.copyload149.i = phi i64 [ %i.zc, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB30_18DirectoryNamespace32enforce_create_table_version_cas0s_0EB32_.exit.thread145.i ], [ %.sroa.097.0.copyload.pre.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB30_18DirectoryNamespace32enforce_create_table_version_cas0s_0EB32_.exit.i ]
  store i64 %.sroa.097.0.copyload149.i, ptr %i.af, align 8, !alias.scope !203532, !noalias !203495
  %.sroa.799.0..sroa_idx100.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.799.0..sroa_idx100.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.799.i, i64 16, i1 false), !alias.scope !203532, !noalias !203495
  br label %bb.hy

bb.hv:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB30_18DirectoryNamespace32enforce_create_table_version_cas0s_0EB32_.exit.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB30_18DirectoryNamespace32enforce_create_table_version_cas0s_0EB32_.exit.thread.i
  %i.zt = phi ptr [ %i.xs, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB30_18DirectoryNamespace32enforce_create_table_version_cas0s_0EB32_.exit.thread.i ], [ %i.xv, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE3mapNtNtCs40k4W9msRzi_5alloc6string6StringNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB30_18DirectoryNamespace32enforce_create_table_version_cas0s_0EB32_.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !203533)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !203534
  %i.zu = call noundef dereferenceable_or_null(4) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !203534 ; 3 uses
  %i.zv = icmp eq ptr %i.zu, null
  br i1 %i.zv, label %bb.hw, label %_RNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespace32enforce_create_table_version_cas0s0_0Bb_.exit.i.i

bb.hw:                                            ; preds = %bb.hv
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #72
          to label %.noexc44.i unwind label %bb.hx, !noalias !203496

.noexc44.i:                                       ; preds = %bb.hw
  unreachable

_RNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespace32enforce_create_table_version_cas0s0_0Bb_.exit.i.i: ; preds = %bb.hv
  store i32 1701736302, ptr %i.zu, align 1, !noalias !203535
  store i64 4, ptr %i.af, align 8, !alias.scope !203536, !noalias !203537
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.zu, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !203536, !noalias !203537
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 4, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !203536, !noalias !203537
  br label %bb.hy

.body.i212:                                       ; preds = %bb.hx, %bb.ht, %bb.hs, %bb.hl
  %.pn10.i = phi { ptr, i32 } [ %i.zw, %bb.hx ], [ %lpad.thr_comm.i.i.i.i, %bb.hs ], [ %i.yv, %bb.hl ], [ %lpad.thr_comm.i.i.i.i, %bb.ht ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.799.i)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i213

bb.hx:                                            ; preds = %bb.hw
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i212

bb.hy:                                            ; preds = %_RNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespace32enforce_create_table_version_cas0s0_0Bb_.exit.i.i, %bb.hu
  %i.zx = phi ptr [ %i.xv, %bb.hu ], [ %i.zt, %_RNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespace32enforce_create_table_version_cas0s0_0Bb_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.799.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !203495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !203495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !203495
  %i.zy = getelementptr inbounds nuw i8, ptr %1, i64 920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !203495
  store ptr %i.zy, ptr %i.ab, align 8, !noalias !203495
  %.sroa.5102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.5102.0..sroa_idx.i, align 8, !noalias !203495
  %i.zz = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.zx, ptr %i.zz, align 8, !noalias !203495
  %.sroa.5104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5104.0..sroa_idx.i, align 8, !noalias !203495
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ah, ptr %i.aaa, align 8, !noalias !203495
  %.sroa.5106.0..sroa_idx.i215 = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5106.0..sroa_idx.i215, align 8, !noalias !203495
  %i.aab = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store ptr %i.af, ptr %i.aab, align 8, !noalias !203495
  %.sroa.5108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.5108.0..sroa_idx.i, align 8, !noalias !203495
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noundef nonnull @1897, ptr noundef nonnull %i.ab)
          to label %bb.ia unwind label %bb.hz, !noalias !203496

bb.hz:                                            ; preds = %bb.hy
  %i.aac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !203495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !203495
  br label %bb.ib

bb.ia:                                            ; preds = %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !203495
  %i.aad = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aad, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !203495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !203495
  store i64 14, ptr %i.ad, align 8, !noalias !203495
  invoke void @_RNvXs1_NtCsjqC71KfQTl6_15lance_namespace5errorNtNtCs63DIHKhvmTb_10lance_core5error5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_14NamespaceErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1898)
          to label %bb.ie unwind label %bb.id, !noalias !203496

bb.ib:                                            ; preds = %bb.id, %bb.hz
  %.pn20.i216 = phi { ptr, i32 } [ %i.aag, %bb.id ], [ %i.aac, %bb.hz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !203495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !203495
  call void @llvm.experimental.noalias.scope.decl(metadata !203538)
  call void @llvm.experimental.noalias.scope.decl(metadata !203539)
  %.val.i.i.i217 = load i64, ptr %i.af, align 8, !range !419, !alias.scope !203540, !noalias !203495, !noundef !416 ; 2 uses
  %i.aae = icmp eq i64 %.val.i.i.i217, 0
  br i1 %i.aae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i213, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val1.i.i.i218 = load ptr, ptr %i.aaf, align 8, !alias.scope !203540, !noalias !203495, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i218, i64 noundef %.val.i.i.i217, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !203541
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i213

bb.id:                                            ; preds = %bb.ia
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ie:                                            ; preds = %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !203495
  %.sroa.5111.0..sroa_idx112.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.sroa.5111.i.sroa.0.0.copyload1039.a = load i8, ptr %i.ae, align 8, !noalias !203495 ; 2 uses
  %.sroa.0109.0.copyload110.i = load i8, ptr %.sroa.5111.0..sroa_idx112.i, align 1, !noalias !203495 ; 2 uses
  %.sroa.5111.i.sroa.6.0..sroa.5111.0..sroa_idx112.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.5111.i.sroa.6, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5111.i.sroa.6.0..sroa.5111.0..sroa_idx112.i.sroa_idx, i64 6, i1 false), !noalias !203495
  %.sroa.7113.0..sroa_idx114.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.7113.0.copyload115.i = load i64, ptr %.sroa.7113.0..sroa_idx114.i, align 8, !noalias !203495 ; 2 uses
  %.sroa.8116.0..sroa_idx117.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aah = load <2 x i64>, ptr %.sroa.8116.0..sroa_idx117.i, align 8, !noalias !203495 ; 2 uses
  %.sroa.8116.i.sroa.7.0..sroa.8116.0..sroa_idx117.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aai = load <2 x i64>, ptr %.sroa.8116.i.sroa.7.0..sroa.8116.0..sroa_idx117.i.sroa_idx, align 8, !noalias !203495 ; 2 uses
  %.sroa.8116.i.sroa.10.0..sroa.8116.0..sroa_idx117.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.8116.i.sroa.10.0.copyload = load i64, ptr %.sroa.8116.i.sroa.10.0..sroa.8116.0..sroa_idx117.i.sroa_idx, align 8, !noalias !203495 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !203495
  call void @llvm.experimental.noalias.scope.decl(metadata !203542)
  call void @llvm.experimental.noalias.scope.decl(metadata !203543)
  %.val.i.i51.i = load i64, ptr %i.af, align 8, !range !419, !alias.scope !203544, !noalias !203495, !noundef !416 ; 2 uses
  %i.aaj = icmp eq i64 %.val.i.i51.i, 0
  br i1 %i.aaj, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.aak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val1.i.i52.i = load ptr, ptr %i.aak, align 8, !alias.scope !203544, !noalias !203495, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i52.i, i64 noundef %.val.i.i51.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !203545
  br label %bb.ig

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i213: ; preds = %bb.ic, %bb.ib, %.body.i212
  %.pn22.i214 = phi { ptr, i32 } [ %.pn20.i216, %bb.ic ], [ %.pn10.i, %.body.i212 ], [ %.pn20.i216, %bb.ib ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !203495
  br label %bb.in

bb.ig:                                            ; preds = %bb.if, %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !203495
  %.val.i54.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i209, align 8, !alias.scope !203546, !noalias !203495 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !203495
  call void @llvm.experimental.noalias.scope.decl(metadata !203546)
  call void @llvm.experimental.noalias.scope.decl(metadata !203547)
  br i1 %.not.i34.i, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i, label %.lr.ph.i.i.i56.preheader.i

.lr.ph.i.i.i56.preheader.i:                       ; preds = %.thread150.i, %bb.ig
  %.sroa.8116.i.sroa.10.1 = phi i64 [ %.sroa.8116.i.sroa.10.0.copyload, %bb.ig ], [ %.sroa.8116.i.sroa.10.0.copyload1036, %.thread150.i ]
  %.sroa.5111.i.sroa.0.1 = phi i8 [ %.sroa.0109.0.copyload110.i, %bb.ig ], [ %.sroa.5111.i.sroa.0.0.copyload1040, %.thread150.i ]
  %.sroa.0109.1160.i = phi i8 [ %.sroa.5111.i.sroa.0.0.copyload1039.a, %bb.ig ], [ %.pr.i219, %.thread150.i ]
  %.sroa.7113.1158.i = phi i64 [ %.sroa.7113.0.copyload115.i, %bb.ig ], [ %.sroa.888.0.copyload90.i, %.thread150.i ]
  %.val.i54156.i = phi ptr [ %.val.i54.pre.i, %bb.ig ], [ %.val32.i.cast, %.thread150.i ] ; 2 uses
  %i.aal = phi <2 x i64> [ %i.aah, %bb.ig ], [ %i.abg, %.thread150.i ]
  %i.aam = phi <2 x i64> [ %i.aai, %bb.ig ], [ %i.abh, %.thread150.i ]
  br label %.lr.ph.i.i.i56.i

.lr.ph.i.i.i56.i:                                 ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i63.i, %.lr.ph.i.i.i56.preheader.i
  %.sroa.0.07.i.i.i57.i = phi i64 [ %i.aao, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i63.i ], [ 0, %.lr.ph.i.i.i56.preheader.i ] ; 2 uses
  %i.aan = getelementptr inbounds nuw [136 x i8], ptr %.val.i54156.i, i64 %.sroa.0.07.i.i.i57.i ; 5 uses
  %i.aao = add nuw nsw i64 %.sroa.0.07.i.i.i57.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !203548)
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aan, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !203549)
  call void @llvm.experimental.noalias.scope.decl(metadata !203550)
  %.val.i.i.i.i.i.i58.i = load i64, ptr %i.aap, align 8, !range !419, !alias.scope !203551, !noalias !203552, !noundef !416 ; 2 uses
  %i.aaq = icmp eq i64 %.val.i.i.i.i.i.i58.i, 0
  br i1 %i.aaq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i60.i, label %bb.ih

bb.ih:                                            ; preds = %.lr.ph.i.i.i56.i
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aan, i64 40
  %.val1.i.i.i.i.i.i59.i = load ptr, ptr %i.aar, align 8, !alias.scope !203551, !noalias !203552, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i59.i, i64 noundef %.val.i.i.i.i.i.i58.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !203553
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i60.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i60.i: ; preds = %bb.ih, %.lr.ph.i.i.i56.i
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aan, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !203554)
  %i.aat = load i64, ptr %i.aas, align 8, !range !421, !alias.scope !203555, !noalias !203552, !noundef !416 ; 3 uses
  %i.aau = icmp eq i64 %i.aat, -1
  br i1 %i.aau, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit3.i.i.i.i62.i, label %bb.ii

bb.ii:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i60.i
  call void @llvm.experimental.noalias.scope.decl(metadata !203556)
  call void @llvm.experimental.noalias.scope.decl(metadata !203557)
  %i.aav = icmp eq i64 %i.aat, 0
  br i1 %i.aav, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit3.i.i.i.i62.i, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aan, i64 64
  %.val1.i.i.i2.i.i.i.i61.i = load ptr, ptr %i.aaw, align 8, !alias.scope !203558, !noalias !203552, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2.i.i.i.i61.i, i64 noundef %i.aat, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !203559
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit3.i.i.i.i62.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit3.i.i.i.i62.i: ; preds = %bb.ij, %bb.ii, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i60.i
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aan, i64 88 ; 2 uses
  %i.aay = load ptr, ptr %i.aax, align 8, !alias.scope !203560, !noalias !203552, !noundef !416
  %i.aaz = icmp eq ptr %i.aay, null
  br i1 %i.aaz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i63.i, label %bb.ik

bb.ik:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit3.i.i.i.i62.i
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.aax), !noalias !203552
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i63.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i63.i: ; preds = %bb.ik, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit3.i.i.i.i62.i
  %i.aba = icmp eq i64 %i.aao, %i.xj
  br i1 %i.aba, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i, label %.lr.ph.i.i.i56.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i63.i, %bb.ig
  %.sroa.8116.i.sroa.10.2 = phi i64 [ %.sroa.8116.i.sroa.10.0.copyload, %bb.ig ], [ %.sroa.8116.i.sroa.10.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i63.i ]
  %.sroa.5111.i.sroa.0.2 = phi i8 [ %.sroa.0109.0.copyload110.i, %bb.ig ], [ %.sroa.5111.i.sroa.0.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i63.i ]
  %.sroa.0109.1161.i = phi i8 [ %.sroa.5111.i.sroa.0.0.copyload1039.a, %bb.ig ], [ %.sroa.0109.1160.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i63.i ] ; 2 uses
  %.sroa.7113.1159.i = phi i64 [ %.sroa.7113.0.copyload115.i, %bb.ig ], [ %.sroa.7113.1158.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i63.i ]
  %.val.i54157.i = phi ptr [ %.val.i54.pre.i, %bb.ig ], [ %.val.i54156.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i63.i ]
  %i.abb = phi <2 x i64> [ %i.aah, %bb.ig ], [ %i.aal, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i63.i ]
  %i.abc = phi <2 x i64> [ %i.aai, %bb.ig ], [ %i.aam, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i63.i ]
  %i.abd = icmp eq i64 %.sroa.3.sroa.2.0.copyload.i, 0
  br i1 %i.abd, label %bb.ip, label %bb.il

bb.il:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i
  %i.abe = mul nuw i64 %.sroa.3.sroa.2.0.copyload.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i54157.i, i64 noundef %i.abe, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !203552
  br label %bb.ip

bb.im:                                            ; preds = %bb.gu
  %i.abf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !203496
  unreachable

bb.in:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i213, %bb.hf
  %.pn24.pn.pn.i = phi { ptr, i32 } [ %.pn22.i214, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i213 ], [ %i.ye, %bb.hf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !203495
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #73, !noalias !203496
  br label %.body226.thread

.thread150.i:                                     ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionyE10ok_or_elseNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB1M_18DirectoryNamespace32enforce_create_table_version_cas00EB1O_.exit.i
  %.sroa.886.0..sroa_idx87.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %.sroa.5111.i.sroa.0.0.copyload1040 = load i8, ptr %.sroa.886.0..sroa_idx87.i, align 1, !noalias !203495
  %.sroa.5111.i.sroa.6.0..sroa.886.0..sroa_idx87.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.5111.i.sroa.6, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5111.i.sroa.6.0..sroa.886.0..sroa_idx87.i.sroa_idx, i64 6, i1 false), !noalias !203495
  %.sroa.888.0..sroa_idx89.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.888.0.copyload90.i = load i64, ptr %.sroa.888.0..sroa_idx89.i, align 8, !alias.scope !203561, !noalias !203495
  %.sroa.1091.0..sroa_idx92.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.abg = load <2 x i64>, ptr %.sroa.1091.0..sroa_idx92.i, align 8, !noalias !203495
  %.sroa.8116.i.sroa.7.0..sroa.1091.0..sroa_idx92.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.abh = load <2 x i64>, ptr %.sroa.8116.i.sroa.7.0..sroa.1091.0..sroa_idx92.i.sroa_idx, align 8, !noalias !203495
  %.sroa.8116.i.sroa.10.0..sroa.1091.0..sroa_idx92.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.8116.i.sroa.10.0.copyload1036 = load i64, ptr %.sroa.8116.i.sroa.10.0..sroa.1091.0..sroa_idx92.i.sroa_idx, align 8, !noalias !203495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !203495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !203495
  br label %.lr.ph.i.i.i56.preheader.i

bb.io:                                            ; preds = %bb.gz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.5111.i.sroa.6, ptr noundef nonnull align 1 dereferenceable(6) %.sroa.3.sroa.0.i.sroa.4, i64 6, i1 false), !noalias !203495
  br label %.thread1136

.thread1136:                                      ; preds = %bb.io, %bb.hk, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.8116.i.sroa.10.0.ph = phi i64 [ %.sroa.580.i.sroa.5.0.copyload, %bb.io ], [ undef, %bb.hk ], [ undef, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %.sroa.5111.i.sroa.0.0.ph = phi i8 [ %.sroa.3.sroa.0.i.sroa.0.0.copyload, %bb.io ], [ undef, %bb.hk ], [ undef, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %.sroa.7113.0.i.ph = phi i64 [ %.sroa.3.sroa.2.0.copyload.i, %bb.io ], [ undef, %bb.hk ], [ undef, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %.sroa.0109.0.i.ph = phi i8 [ %i.xd, %bb.io ], [ -1, %bb.hk ], [ -1, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %i.abi = phi <2 x i64> [ %i.xf, %bb.io ], [ undef, %bb.hk ], [ undef, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %i.abj = phi <2 x i64> [ %i.xg, %bb.io ], [ undef, %bb.hk ], [ undef, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !203495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.8755.sroa.6, ptr noundef nonnull align 1 dereferenceable(6) %.sroa.5111.i.sroa.6, i64 6, i1 false), !noalias !203562
  store i8 1, ptr %i.xa, align 1, !noalias !203495
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5111.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.0.i.sroa.4)
  br label %bb.ir

bb.ip:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !203495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.8755.sroa.6, ptr noundef nonnull align 1 dereferenceable(6) %.sroa.5111.i.sroa.6, i64 6, i1 false), !noalias !203562
  store i8 1, ptr %i.xa, align 1, !noalias !203495
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5111.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.0.i.sroa.4)
  %i.abk = icmp eq i8 %.sroa.0109.1161.i, -2
  br i1 %i.abk, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %.thread1125, %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8755.sroa.6)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.ir:                                            ; preds = %.thread1136, %bb.ip
  %.sroa.0109.0.i1152 = phi i8 [ %.sroa.0109.0.i.ph, %.thread1136 ], [ %.sroa.0109.1161.i, %bb.ip ] ; 2 uses
  %.sroa.7113.0.i1151 = phi i64 [ %.sroa.7113.0.i.ph, %.thread1136 ], [ %.sroa.7113.1159.i, %bb.ip ]
  %.sroa.5111.i.sroa.0.01150 = phi i8 [ %.sroa.5111.i.sroa.0.0.ph, %.thread1136 ], [ %.sroa.5111.i.sroa.0.2, %bb.ip ]
  %.sroa.8116.i.sroa.10.01149 = phi i64 [ %.sroa.8116.i.sroa.10.0.ph, %.thread1136 ], [ %.sroa.8116.i.sroa.10.2, %bb.ip ]
  %i.abl = phi <2 x i64> [ %i.abi, %.thread1136 ], [ %i.abb, %bb.ip ]
  %i.abm = phi <2 x i64> [ %i.abj, %.thread1136 ], [ %i.abc, %bb.ip ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.3760.sroa.2, ptr noundef nonnull align 1 dereferenceable(6) %.sroa.8755.sroa.6, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8755.sroa.6)
  %.not.i231 = icmp eq i8 %.sroa.0109.0.i1152, -1
  br i1 %.not.i231, label %.thread1352, label %bb.is

.thread1352:                                      ; preds = %bb.ir
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.abo = load ptr, ptr %i.abn, align 16, !nonnull !416, !align !417, !noundef !416
  %i.abp = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.abq = load ptr, ptr %i.abp, align 8, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  %i.abr = getelementptr i8, ptr %i.abq, i64 8
  %.val134 = load ptr, ptr %i.abr, align 8, !nonnull !416, !noundef !416
  %i.abs = getelementptr i8, ptr %i.abq, i64 16
  %.val135 = load i64, ptr %i.abs, align 8, !noundef !416
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.abu = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.sroa.7783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 872
  store ptr %.val134, ptr %.sroa.7783.0..sroa_idx, align 8
  %.sroa.8784.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 880
  store i64 %.val135, ptr %.sroa.8784.0..sroa_idx, align 16
  %.sroa.10786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 984
  store ptr %i.abo, ptr %.sroa.10786.0..sroa_idx, align 8
  %.sroa.11787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 992
  store ptr %i.abu, ptr %.sroa.11787.0..sroa_idx, align 16
  %.sroa.12788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1000
  store ptr %i.abt, ptr %.sroa.12788.0..sroa_idx, align 8
  %.sroa.14790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1010
  store i8 0, ptr %.sroa.14790.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16798)
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17184.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7154.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7124.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i232)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i233)
  %i.abw = getelementptr inbounds nuw i8, ptr %1, i64 1010
  br label %bb.iv

bb.is:                                            ; preds = %bb.ir
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.sroa.15.sroa.15, ptr noundef nonnull align 1 dereferenceable(6) %.sroa.3760.sroa.2, i64 6, i1 false)
  %i.abx = inttoptr i64 %.sroa.7113.0.i1151 to ptr
  %i.aby = insertelement <2 x i8> poison, i8 %.sroa.0109.0.i1152, i64 0
  %i.abz = insertelement <2 x i8> %i.aby, i8 %.sroa.5111.i.sroa.0.01150, i64 1
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store10ObjectMetaECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.it:                                            ; preds = %bb.ix, %bb.iw
  %i.aca = landingpad { ptr, i32 }
          cleanup
  br label %.body256

.body256:                                         ; preds = %.body.i235, %bb.it
  %i.acb = phi ptr [ %i.acc, %bb.it ], [ %i.ada, %.body.i235 ]
  %eh.lpad-body257 = phi { ptr, i32 } [ %i.aca, %bb.it ], [ %.pn18.i, %.body.i235 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16798)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace35materialize_version_manifest_create0EBL_(ptr noundef nonnull align 8 %i.acb) #73
          to label %bb.mu unwind label %bb.ae

bb.iu:                                            ; preds = %bb.a
  %.phi.trans.insert1276 = getelementptr inbounds nuw i8, ptr %1, i64 1010
  %.pre1277 = load i8, ptr %.phi.trans.insert1276, align 2, !range !551, !noalias !203563
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16798)
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17184.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7154.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7124.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i232)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i233)
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 1010 ; 5 uses
  switch i8 %.pre1277, label %default.unreachable1350 [
    i8 0, label %bb.iv
    i8 1, label %bb.iw
    i8 2, label %bb.ix
    i8 3, label %bb.iz
    i8 4, label %bb.jn
    i8 5, label %bb.ka
    i8 6, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %bb.iu
  %.phi.trans.insert.i234 = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %.val26.pre.i = load ptr, ptr %.phi.trans.insert.i234, align 8, !noalias !203563
  %.phi.trans.insert229.i = getelementptr i8, ptr %1, i64 1024
  %.val27.pre.i = load ptr, ptr %.phi.trans.insert229.i, align 16, !noalias !203563
  br label %bb.le

bb.iv:                                            ; preds = %.thread1352, %bb.iu
  %i.ace = phi ptr [ %i.abw, %.thread1352 ], [ %i.acd, %bb.iu ]
  %i.acf = phi ptr [ %i.abv, %.thread1352 ], [ %i.acc, %bb.iu ] ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %1, i64 1009
  store i8 0, ptr %i.acg, align 1, !noalias !203563
  %i.ach = getelementptr inbounds nuw i8, ptr %1, i64 1008
  store i8 0, ptr %i.ach, align 16, !noalias !203563
  %i.aci = getelementptr inbounds nuw i8, ptr %1, i64 888
  %i.acj = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.ack = load ptr, ptr %i.acj, align 8, !noalias !203563, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  store ptr %i.ack, ptr %i.aci, align 8, !noalias !203563
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.acn = load ptr, ptr %i.acm, align 16, !noalias !203563, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  store ptr %i.acn, ptr %i.acl, align 16, !noalias !203563
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 904
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.acq = load ptr, ptr %i.acp, align 8, !noalias !203563, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  store ptr %i.acq, ptr %i.aco, align 8, !noalias !203563
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.acs = load ptr, ptr %i.acr, align 8, !noalias !203563, !nonnull !416, !noundef !416
  %i.act = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.acu = load i64, ptr %i.act, align 16, !noalias !203563, !noundef !416
  store ptr %i.acs, ptr %i.acf, align 8, !noalias !203563
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 864
  store i64 %i.acu, ptr %i.acv, align 16, !noalias !203563
  %i.acw = getelementptr inbounds nuw i8, ptr %i.ack, i64 72
  %.val21.i = load ptr, ptr %i.acw, align 8, !noalias !203564, !nonnull !416, !noundef !416
  %i.acx = getelementptr inbounds nuw i8, ptr %.val21.i, i64 64
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 1016
  store ptr %i.acx, ptr %i.acy, align 8, !noalias !203563
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1024
  store ptr %i.acn, ptr %.sroa.14.0..sroa_idx.i, align 16, !noalias !203563
  %.sroa.15.0..sroa_idx.i254 = getelementptr inbounds nuw i8, ptr %1, i64 1032
  store ptr %i.acq, ptr %.sroa.15.0..sroa_idx.i254, align 8, !noalias !203563
end_hunk_0
