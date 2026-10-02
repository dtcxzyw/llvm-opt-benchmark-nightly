Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_module_resolver-782a8c0cbed68b5b.ty_module_resolver.2f01860fd78e7af-cgu.14?download=true
inline.NumInlined: 435
inline.NumDeleted: 269
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4list1__NtB5_32list_modules_impl_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute:bb.a
bb.t:                                             ; preds = %bb.ad, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !418
  %i.bj = icmp eq ptr %i.av, %i.at
  br i1 %i.bj, label %.loopexit.i.backedge, label %.lr.ph.i

bb.u:                                             ; preds = %bb.p
  %i.bk = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !418
  %i.bl = load i32, ptr %i.bk, align 4, !range !4, !noundef !3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !noundef !3 ; 2 uses
  %i.bo = invoke noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %0)
          to label %.noexc49.i unwind label %.body.thread69.loopexit.i, !inline_history !16 ; 2 uses

.noexc49.i:                                       ; preds = %bb.u
  %i.bp = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1N_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtCsfDzkztWVnn_18ty_module_resolver4lists1_1__NtB9_12ListedModule10ingredient5CACHE, ptr noundef nonnull align 8 %i.bo)
          to label %.noexc50.i unwind label %.body.thread69.loopexit.i

.noexc50.i:                                       ; preds = %.noexc49.i
  %i.bq = invoke noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleE6fieldsB10_(ptr noundef nonnull align 8 %i.bp, ptr noundef nonnull align 8 %i.bo, i32 noundef range(i32 1, 0) %i.bl, i32 noundef %i.bn)
          to label %bb.v unwind label %.body.thread69.loopexit.i

bb.v:                                             ; preds = %.noexc50.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.bq, i64 12, i1 false), !noalias !422
  %i.br = invoke noundef align 8 ptr @_RNvMsb_NtCsfDzkztWVnn_18ty_module_resolver6moduleNtB5_6Module11search_path(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.i, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
          to label %bb.w unwind label %.body.thread69.loopexit.i

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !418
  %i.bs = icmp ne ptr %i.br, null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !418
  %i.bt = invoke noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %0)
          to label %.noexc53.i unwind label %.body.thread69.loopexit.i, !inline_history !16 ; 2 uses

.noexc53.i:                                       ; preds = %bb.w
  %i.bu = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1N_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtCsfDzkztWVnn_18ty_module_resolver4lists1_1__NtB9_12ListedModule10ingredient5CACHE, ptr noundef nonnull align 8 %i.bt)
          to label %.noexc54.i unwind label %.body.thread69.loopexit.i

.noexc54.i:                                       ; preds = %.noexc53.i
  %i.bv = invoke noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleE6fieldsB10_(ptr noundef nonnull align 8 %i.bu, ptr noundef nonnull align 8 %i.bt, i32 noundef range(i32 1, 0) %i.aw, i32 noundef %i.ay)
          to label %bb.x unwind label %.body.thread69.loopexit.i

bb.x:                                             ; preds = %.noexc54.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i64 12, i1 false), !noalias !423
  %i.bw = invoke noundef align 8 ptr @_RNvMsb_NtCsfDzkztWVnn_18ty_module_resolver6moduleNtB5_6Module11search_path(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.h, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
          to label %bb.y unwind label %.body.thread69.loopexit.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !418
  %.not44.i = icmp eq ptr %i.bw, null
  %brmerge.i = or i1 %i.bs, %.not44.i
  br i1 %brmerge.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bx = invoke noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %0)
          to label %.noexc57.i unwind label %.body.thread69.loopexit.i, !inline_history !417 ; 2 uses

.noexc57.i:                                       ; preds = %bb.z
  %i.by = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1N_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtCsfDzkztWVnn_18ty_module_resolver4lists1_1__NtB9_12ListedModule10ingredient5CACHE, ptr noundef nonnull align 8 %i.bx)
          to label %.noexc58.i unwind label %.body.thread69.loopexit.i

.noexc58.i:                                       ; preds = %.noexc57.i
  %i.bz = invoke noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleE6fieldsB10_(ptr noundef nonnull align 8 %i.by, ptr noundef nonnull align 8 %i.bx, i32 noundef range(i32 1, 0) %i.bl, i32 noundef %i.bn)
          to label %bb.ab unwind label %.body.thread69.loopexit.i

bb.aa:                                            ; preds = %bb.ae, %bb.y
  %i.ca = invoke { i32, i32 } @_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryRNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1p_4list12ListedModuleE6insertB1p_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j, i32 noundef %i.aw, i32 noundef %i.ay)
          to label %bb.ad unwind label %.body.thread69.loopexit.i ; 0 uses

bb.ab:                                            ; preds = %.noexc58.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cc = load i8, ptr %i.cb, align 4, !range !20, !noundef !3
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = invoke noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %0)
          to label %.noexc60.i unwind label %.body.thread69.loopexit.i, !inline_history !417 ; 2 uses

.noexc60.i:                                       ; preds = %bb.ac
  %i.cf = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1N_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtCsfDzkztWVnn_18ty_module_resolver4lists1_1__NtB9_12ListedModule10ingredient5CACHE, ptr noundef nonnull align 8 %i.ce)
          to label %.noexc61.i unwind label %.body.thread69.loopexit.i

.noexc61.i:                                       ; preds = %.noexc60.i
  %i.cg = invoke noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleE6fieldsB10_(ptr noundef nonnull align 8 %i.cf, ptr noundef nonnull align 8 %i.ce, i32 noundef range(i32 1, 0) %i.aw, i32 noundef %i.ay)
          to label %bb.ae unwind label %.body.thread69.loopexit.i

bb.ad:                                            ; preds = %bb.ae, %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !418
  br label %bb.t

bb.ae:                                            ; preds = %.noexc61.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.ci = load i8, ptr %i.ch, align 4, !range !20, !noundef !3
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.aa, label %bb.ad

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapRNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1E_4list12ListedModuleEEB1E_.exit.i: ; preds = %.body.thread.i
  resume { ptr, i32 } %eh.lpad-body68.i

.body.thread.i:                                   ; preds = %bb.h, %bb.g, %.body.thread69.loopexit.split-lp.loopexit.split-lp.i, %.body.thread69.loopexit.split-lp.loopexit.i, %.body.thread69.loopexit.i
  %eh.lpad-body68.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %bb.h ], [ %lpad.thr_comm.i.i, %bb.g ], [ %lpad.loopexit.i, %.body.thread69.loopexit.i ], [ %lpad.loopexit72.i, %.body.thread69.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp73.i, %.body.thread69.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapRNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB18_4list12ListedModuleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapRNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB1E_4list12ListedModuleEEB1E_.exit.i unwind label %bb.af

bb.af:                                            ; preds = %.body.thread.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4list1__NtB7_32list_modules_impl_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit: ; preds = %bb.c
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !418
  %i.cm = load ptr, ptr %i.p, align 8, !noalias !418, !noundef !3 ; 3 uses
  %.not43.i = icmp ne ptr %i.cm, null             ; 3 uses
  %i.cn = load i64, ptr %i.q, align 8, !noalias !418
  %i.co = load i64, ptr %i.cl, align 8, !noalias !418
  %.sroa.06.sroa.5.sroa.6.0.i = select i1 %.not43.i, i64 %i.co, i64 undef ; 2 uses
  %.sroa.06.sroa.0.0.i = zext i1 %.not43.i to i64 ; 2 uses
  %.sroa.5.0.i = select i1 %.not43.i, i64 %i.cn, i64 0
  store i64 %.sroa.06.sroa.0.0.i, ptr %i.g, align 8, !noalias !418
  %.sroa.07.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr null, ptr %.sroa.07.sroa.4.0..sroa_idx.i, align 8, !noalias !418
  %.sroa.07.sroa.4.sroa.4.0..sroa.07.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.cm, ptr %.sroa.07.sroa.4.sroa.4.0..sroa.07.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !418
  %.sroa.07.sroa.4.sroa.5.0..sroa.07.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.06.sroa.5.sroa.6.0.i, ptr %.sroa.07.sroa.4.sroa.5.0..sroa.07.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !418
  %.sroa.07.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.sroa.06.sroa.0.0.i, ptr %.sroa.07.sroa.5.0..sroa_idx.i, align 8, !noalias !418
  %.sroa.07.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr null, ptr %.sroa.07.sroa.6.0..sroa_idx.i, align 8, !noalias !418
  %.sroa.07.sroa.6.sroa.4.0..sroa.07.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.cm, ptr %.sroa.07.sroa.6.sroa.4.0..sroa.07.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !418
  %.sroa.07.sroa.6.sroa.5.0..sroa.07.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %.sroa.06.sroa.5.sroa.6.0.i, ptr %.sroa.07.sroa.6.sroa.5.0..sroa.07.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !418
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !418
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr %0, ptr %i.cp, align 8, !noalias !418
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store ptr %1, ptr %i.cq, align 8, !noalias !418
  %i.cr = call { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB1M_8adapters3map3MapINtNtNtNtBa_11collections5btree3map10IntoValuesRNtNtBT_11module_name10ModuleNameNtNtBT_4list12ListedModuleENCNvNvXs0_NvB4F_1__NtB5e_32list_modules_impl_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EEBT_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret { ptr, i64 } %i.cr
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB5_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration12values_equal(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  %i.j = icmp eq i64 %i.b, 0
  br i1 %i.j, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.01.08.i = phi i64 [ %i.r, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.01.08.i
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.01.08.i
  %i.m = load <2 x i32>, ptr %i.k, align 4
  %i.n = load <2 x i32>, ptr %i.l, align 4
  %i.o = icmp eq <2 x i32> %i.m, %i.n             ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 0
  %i.q = extractelement <2 x i1> %i.o, i64 1
  %.sroa.0.0.i.not.i.not.i = select i1 %i.q, i1 %i.p, i1 false ; 2 uses
  %i.r = add nuw i64 %.sroa.01.08.i, 1            ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.r, %i.b
  %or.cond.not = select i1 %.sroa.0.0.i.not.i.not.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.sroa.0.0.i.not.i.not.i, %.lr.ph.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB5_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration13cycle_initial(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(176) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, i32 noundef range(i32 1, 0) %5, i32 noundef %6) unnamed_addr #11 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @55, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB5_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 8 uses
  %i.c = alloca [72 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  %i.i = alloca [40 x i8], align 8                ; 12 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [56 x i8], align 8                ; 11 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [8 x i8], align 8                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !471
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val.i = load ptr, ptr %i.x, align 8, !alias.scope !470, !noalias !469 ; 2 uses
  %i.y = tail call noundef nonnull align 8 ptr %.val.i(ptr noundef nonnull %1), !noalias !471, !inline_history !427 ; 2 uses
  %i.z = tail call noundef nonnull align 128 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_14tracked_struct14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientEE13get_or_createINtB1f_7JarImplB1Q_EKj0_EB1U_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists_1__NtB9_20SearchPathIngredient11ingredient_5CACHE, ptr noundef nonnull align 8 %i.y), !noalias !471
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB5_14IngredientImplNtNtCsfDzkztWVnn_18ty_module_resolver4list20SearchPathIngredientE15untracked_fieldB17_(ptr noundef nonnull align 128 %i.z, ptr noundef nonnull align 8 %i.y, i32 noundef range(i32 1, 0) %3, i32 noundef %4), !noalias !471
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ab, ptr %i.w, align 8, !noalias !471
  %i.ac = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !471
  %i.ad = icmp ult i64 %i.ac, 2
  br i1 %i.ad, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.ae = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB9_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_10___CALLSITE, i64 16) monotonic, align 8, !noalias !471 ; 3 uses
  switch i8 %i.ae, label %bb.c [
    i8 0, label %bb.j
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !10

bb.c:                                             ; preds = %bb.b
  %i.af = tail call noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB9_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_10___CALLSITE), !noalias !469 ; 2 uses
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.b
  %.sroa.06.0.i = phi i8 [ %i.af, %bb.c ], [ %i.ae, %bb.b ], [ %i.ae, %bb.b ]
  %i.ah = load ptr, ptr @_RNvNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB9_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_10___CALLSITE, align 8, !noalias !471, !nonnull !3, !align !13, !noundef !3
  %i.ai = tail call noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ah, i8 noundef %.sroa.06.0.i), !noalias !469
  br i1 %i.ai, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !471
  %i.aj = load ptr, ptr @_RNvNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB9_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_10___CALLSITE, align 8, !noalias !471, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !471
  store ptr %i.w, ptr %i.s, align 8, !noalias !471
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsfDzkztWVnn_18ty_module_resolver4path10SearchPathNtB6_7Display3fmtBA_, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !471
  store ptr @44, ptr %i.t, align 8, !noalias !471
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.al, align 8, !noalias !471
  store ptr %i.t, ptr %i.u, align 8, !noalias !471
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @45, ptr %i.am, align 8, !noalias !471
  store i64 1, ptr %i.v, align 8, !noalias !471
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !471
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !471
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !471
  call void @_RNvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v), !noalias !469
  %i.an = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !472
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.f, label %_RNCNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB9_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bd_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ap = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !472 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 6
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp samesign ugt i64 %i.ap, 3
  br i1 %i.ar, label %bb.g, label %_RNCNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB9_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bd_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr @_RNvNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB9_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_10___CALLSITE, align 8, !noalias !472, !nonnull !3, !align !13, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !472
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !noalias !469, !nonnull !3, !noundef !3
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !noalias !469, !noundef !3
  store i64 4, ptr %i.e, align 8, !noalias !472
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.au, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !472
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !472
  %i.ax = call { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger(), !noalias !469 ; 2 uses
  %i.ay = extractvalue { ptr, ptr } %i.ax, 0      ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ax, 1      ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !invariant.load !3, !noalias !469, !nonnull !3
  %i.bc = call noundef zeroext i1 %i.bb(ptr noundef %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e), !noalias !469, !inline_history !430
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.as, ptr noundef nonnull %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.az, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v), !noalias !469
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !472
  br label %_RNCNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB9_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bd_.exit.i

_RNCNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB9_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0Bd_.exit.i: ; preds = %bb.i, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !471
  br label %bb.o

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.bd = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !471
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bf = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !471 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 6
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp samesign ugt i64 %i.bf, 3
  br i1 %i.bh, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr @_RNvNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB9_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_10___CALLSITE, align 8, !noalias !471, !nonnull !3, !align !13, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !471
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !469, !nonnull !3, !noundef !3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !469, !noundef !3
  store i64 4, ptr %i.r, align 8, !noalias !471
  %.sroa.327.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.bk, ptr %.sroa.327.0..sroa_idx.i, align 8, !noalias !471
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.bm, ptr %.sroa.528.0..sroa_idx.i, align 8, !noalias !471
  %i.bn = tail call { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger(), !noalias !469 ; 2 uses
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0      ; 2 uses
  %i.bp = extractvalue { ptr, ptr } %i.bn, 1      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !3, !noalias !469, !nonnull !3
  %i.bs = call noundef zeroext i1 %i.br(ptr noundef %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r), !noalias !469, !inline_history !431
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !471
  %i.bt = load ptr, ptr @_RNvNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB9_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_10___CALLSITE, align 8, !noalias !471, !nonnull !3, !align !13, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !471
  store ptr %i.w, ptr %i.n, align 8, !noalias !471
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsfDzkztWVnn_18ty_module_resolver4path10SearchPathNtB6_7Display3fmtBA_, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !471
  store ptr @44, ptr %i.o, align 8, !noalias !471
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.bv, align 8, !noalias !471
  store ptr %i.o, ptr %i.p, align 8, !noalias !471
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @45, ptr %i.bw, align 8, !noalias !471
  store i64 1, ptr %i.q, align 8, !noalias !471
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !471
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 1, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !471
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.bu, ptr %i.bx, align 8, !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !471
  call void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bi, ptr noundef nonnull %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !471
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !471
  br label %bb.o

.thread102.loopexit.i:                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECsfDzkztWVnn_18ty_module_resolver.exit.i.i, %.noexc63.i, %bb.ab
  %lpad.loopexit127.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread95.i

.thread102.loopexit.split-lp.i:                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtBH_18VendoredFileSystem14read_directoryRNtNtBH_4path12VendoredPathE0ECsfDzkztWVnn_18ty_module_resolver.exit.i.i, %bb.ah, %bb.u, %bb.t, %.invoke.i, %.noexc54.i, %.noexc.i, %bb.q, %bb.p
end_hunk_0
begin_hunk_1_@_RNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB5_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute:bb.a
          to label %_RINvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory24system_path_to_directoryRNtNtNtB6_6system4path10SystemPathECsfDzkztWVnn_18ty_module_resolver.exit.i.i unwind label %.thread102.loopexit.split-lp.i, !noalias !469

_RINvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory24system_path_to_directoryRNtNtNtB6_6system4path10SystemPathECsfDzkztWVnn_18ty_module_resolver.exit.i.i: ; preds = %.invoke.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !481, !noalias !475
  %i.cw = icmp eq i8 %.pre, -1
  br i1 %i.cw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory24system_path_to_directoryRNtNtNtB6_6system4path10SystemPathECsfDzkztWVnn_18ty_module_resolver.exit.i.i
  %.sroa.021.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !475
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.523.0.copyload.i.i = load i64, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !475
  %i.cx = inttoptr i64 %.sroa.021.0.copyload.i.i to ptr
  br label %bb.v

bb.t:                                             ; preds = %_RINvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory24system_path_to_directoryRNtNtNtB6_6system4path10SystemPathECsfDzkztWVnn_18ty_module_resolver.exit.i.i.thread, %_RINvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory24system_path_to_directoryRNtNtNtB6_6system4path10SystemPathECsfDzkztWVnn_18ty_module_resolver.exit.i.i
  %i.cy = load i32, ptr %i.d, align 8, !range !4, !noalias !475, !noundef !3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !noalias !475, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !475
  %i.db = invoke { i64, ptr } @_RNvNtNtCs56aZGHL6Dc6_7ruff_db5files9directory23directory_listing_query(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %2, i32 noundef %i.cy, i32 noundef %i.da)
          to label %.noexc58.i unwind label %.thread102.loopexit.split-lp.i, !noalias !469 ; 2 uses

.noexc58.i:                                       ; preds = %bb.t
  %i.dc = extractvalue { i64, ptr } %i.db, 0
  %i.dd = extractvalue { i64, ptr } %i.db, 1      ; 4 uses
  %i.de = trunc nuw i64 %i.dc to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  br i1 %i.de, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.noexc58.i
  %i.df = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dd)
          to label %.noexc59.i unwind label %.thread102.loopexit.split-lp.i, !noalias !469 ; 2 uses

.noexc59.i:                                       ; preds = %bb.u
  %i.dg = extractvalue { ptr, i64 } %i.df, 0
  %i.dh = extractvalue { ptr, i64 } %i.df, 1
  br label %bb.v

bb.v:                                             ; preds = %.noexc59.i, %bb.s
  %.sroa.10.0.ph.i = phi i64 [ %.sroa.523.0.copyload.i.i, %bb.s ], [ %i.dh, %.noexc59.i ] ; 2 uses
  %.sroa.084.0.ph.i = phi ptr [ %i.cx, %bb.s ], [ %i.dg, %.noexc59.i ] ; 2 uses
  %i.di = icmp eq i64 %.sroa.10.0.ph.i, 0
  br i1 %i.di, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtNtCs56aZGHL6Dc6_7ruff_db5files9directory16DirectoryListingNtB10_21DirectoryListingErrorEECsfDzkztWVnn_18ty_module_resolver.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.084.0.ph.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.084.0.ph.i, i64 noundef range(i64 1, 0) %.sroa.10.0.ph.i, i64 noundef 1) #36, !noalias !482
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtNtCs56aZGHL6Dc6_7ruff_db5files9directory16DirectoryListingNtB10_21DirectoryListingErrorEECsfDzkztWVnn_18ty_module_resolver.exit.i

bb.x:                                             ; preds = %.noexc58.i
  %i.dj = load ptr, ptr %i.dd, align 8, !noalias !469, !nonnull !3, !noundef !3 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !469, !noundef !3 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.dl, 5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx.i
  %i.dn = icmp eq i64 %i.dl, 0
  br i1 %i.dn, label %.loopexit126.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsfDzkztWVnn_18ty_module_resolver.exit.i, %.lr.ph.i
  %.sroa.09.0131.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %i.ds, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsfDzkztWVnn_18ty_module_resolver.exit.i ] ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.09.0131.i, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.09.0131.i, i64 23
  %i.du = load i8, ptr %i.dt, align 1, !range !5, !alias.scope !483, !noalias !469, !noundef !3 ; 2 uses
  %i.dv = icmp ugt i8 %i.du, -41
  br i1 %i.dv, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = add i8 %i.du, 64
  %i.dx = call i8 @llvm.umin.i8(i8 %i.dw, i8 24)
  %.sroa.0.0.i.i.i = zext nneg i8 %i.dx to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dy = load ptr, ptr %.sroa.09.0131.i, align 8, !alias.scope !483, !noalias !469, !noundef !3
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.09.0131.i, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !483, !noalias !469, !noundef !3
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.01.0.i.i = phi i64 [ %i.ea, %bb.aa ], [ %.sroa.0.0.i.i.i, %bb.z ]
  %.sroa.0.0.i.i = phi ptr [ %i.dy, %bb.aa ], [ %.sroa.09.0131.i, %bb.z ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.09.0131.i, i64 24
  %i.ec = load i8, ptr %i.eb, align 8, !range !19, !noalias !469, !noundef !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !471
  %i.ed = invoke { ptr, i64 } @_RINvMs4_CshFWUtO0bu8g_6caminoNtB6_8Utf8Path3neweECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.01.0.i.i)
          to label %.noexc63.i unwind label %.thread102.loopexit.i, !noalias !469 ; 2 uses

.noexc63.i:                                       ; preds = %bb.ab
  %i.ee = extractvalue { ptr, i64 } %i.ed, 0
  %i.ef = extractvalue { ptr, i64 } %i.ed, 1
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path5__join(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sink1.i.i, i64 noundef %.sink.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef %i.ef)
          to label %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinReECsfDzkztWVnn_18ty_module_resolver.exit.i unwind label %.thread102.loopexit.i, !noalias !469

_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinReECsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %.noexc63.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !471
  %i.eg = load ptr, ptr %i.do, align 8, !noalias !471, !nonnull !3, !noundef !3
  %i.eh = load i64, ptr %i.dp, align 8, !noalias !471, !noundef !3
  store ptr %i.eg, ptr %i.dq, align 8, !noalias !471
  store i64 %i.eh, ptr %i.dr, align 8, !noalias !471
  store i64 0, ptr %i.k, align 8, !noalias !471
  invoke fastcc void @_RNvMs_NtCsfDzkztWVnn_18ty_module_resolver4listNtB4_6Lister8add_path(ptr noalias noundef align 8 dereferenceable(56) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i8 noundef %i.ec)
          to label %bb.ad unwind label %bb.ac, !noalias !469

bb.ac:                                            ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinReECsfDzkztWVnn_18ty_module_resolver.exit.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef align 8 dereferenceable(24) %i.l) #37
          to label %.thread95.i unwind label %bb.ag, !noalias !469

bb.ad:                                            ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinReECsfDzkztWVnn_18ty_module_resolver.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !471
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECsfDzkztWVnn_18ty_module_resolver.exit.i.i unwind label %bb.ae, !noalias !469

bb.ae:                                            ; preds = %bb.ad
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.thread95.i unwind label %bb.af, !noalias !469

bb.af:                                            ; preds = %bb.ae
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !469
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECsfDzkztWVnn_18ty_module_resolver.exit.i.i: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsfDzkztWVnn_18ty_module_resolver.exit.i unwind label %.thread102.loopexit.i, !noalias !469

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECsfDzkztWVnn_18ty_module_resolver.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !471
  %i.el = icmp eq ptr %i.ds, %i.dm
  br i1 %i.el, label %.loopexit126.i, label %bb.y

bb.ag:                                            ; preds = %.thread95.i, %bb.an, %.body71.i, %bb.ac
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !469
  unreachable

.loopexit126.i:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsfDzkztWVnn_18ty_module_resolver.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesINtNtCscdodAO9FK5_5alloc5boxed3BoxShENtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataENCNvMs0_NtNtB32_4read11zip_archiveINtB3M_10ZipArchiveINtNtNtB4_2io6cursor6CursorNtNtCs56aZGHL6Dc6_7ruff_db8vendored11ArchiveDataEE10file_names0ENCINvMB4Y_NtB4Y_18VendoredFileSystem14read_directoryRNtNtB4Y_4path12VendoredPathE0EECsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.x
  %.sroa.3.0.copyload.i = load ptr, ptr %i.cg, align 8, !noalias !471 ; 3 uses
  %.sroa.4.0..sroa_idx89.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx89.i, align 8, !noalias !471
  %.sroa.590.0.copyload.i = load i64, ptr %.sroa.538.0..sroa_idx.i, align 8, !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !484
  %.not.i66.i = icmp ne ptr %.sroa.3.0.copyload.i, null ; 3 uses
  %.sroa.0.sroa.0.0.i.i = zext i1 %.not.i66.i to i64 ; 2 uses
  %.sroa.0.sroa.5.sroa.6.0.i.i = select i1 %.not.i66.i, i64 %.sroa.4.0.copyload.i, i64 undef ; 2 uses
  %.sroa.5.0.i.i = select i1 %.not.i66.i, i64 %.sroa.590.0.copyload.i, i64 0
  store i64 %.sroa.0.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !484
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !484
  %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !484
  %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i, ptr %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !484
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.0.sroa.0.0.i.i, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !484
  %.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !484
  %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !484
  %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i, ptr %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !484
  %.sroa.5.0..sroa_idx.i67.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i67.i, align 8, !noalias !484
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEINtB4_18SpecFromIterNestedB12_INtNtNtNtB8_11collections5btree3map10IntoValuesRNtNtB16_11module_name10ModuleNameB12_EE9from_iterB16_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !484
  br label %_RNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB7_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtNtCs56aZGHL6Dc6_7ruff_db5files9directory16DirectoryListingNtB10_21DirectoryListingErrorEECsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.w, %bb.v
  store i64 0, ptr %0, align 8, !alias.scope !469, !noalias !470
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.en, align 8, !alias.scope !469, !noalias !470
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.eo, align 8, !alias.scope !469, !noalias !470
  call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapRNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB18_4list12ListedModuleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg), !noalias !469
  br label %_RNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB7_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit

bb.ah:                                            ; preds = %bb.p
  invoke void @_RINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtB3_18VendoredFileSystem14read_directoryRNtNtB3_4path12VendoredPathECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cm, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sink1.i.i, i64 noundef %.sink.i.i)
          to label %bb.ai unwind label %.thread102.loopexit.split-lp.i, !noalias !469

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !471
  %i.ep = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !471
  store ptr %i.i, ptr %i.b, align 16, !noalias !486
  store ptr %i.eq, ptr %i.er, align 8, !noalias !486
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !487, !noalias !488, !nonnull !3, !noundef !3 ; 2 uses
  %.promoted.i132.i = load ptr, ptr %i.ep, align 8, !alias.scope !487, !noalias !488 ; 2 uses
  %i.eu = icmp eq ptr %.promoted.i132.i, %i.et
  br i1 %i.eu, label %.loopexit124.i, label %.lr.ph.i.preheader.lr.ph.i

.lr.ph.i.preheader.lr.ph.i:                       ; preds = %bb.ai
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.714.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %5 = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.eq, i64 1
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db8vendored14DirectoryEntryECsfDzkztWVnn_18ty_module_resolver.exit.i, %.lr.ph.i.preheader.lr.ph.i
  %.promoted.i133.i = phi ptr [ %.promoted.i132.i, %.lr.ph.i.preheader.lr.ph.i ], [ %.promoted.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db8vendored14DirectoryEntryECsfDzkztWVnn_18ty_module_resolver.exit.i ]
  %i.ez = phi ptr [ %i.et, %.lr.ph.i.preheader.lr.ph.i ], [ %i.fo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db8vendored14DirectoryEntryECsfDzkztWVnn_18ty_module_resolver.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %.lr.ph.i.preheader.i
  %i.fa = phi ptr [ %i.fb, %bb.aj ], [ %.promoted.i133.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 256 ; 3 uses
  store ptr %i.fb, ptr %i.ep, align 8, !alias.scope !490, !noalias !491
  %i.fc = getelementptr i8, ptr %i.fa, i64 64
  %.val.i69.i = load ptr, ptr %i.fc, align 8, !noalias !492, !nonnull !3, !noundef !3
  %i.fd = getelementptr i8, ptr %i.fa, i64 72
  %.val5.i.i = load i64, ptr %i.fd, align 8, !noalias !492, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !493
  invoke void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtBU_18VendoredFileSystem14read_directoryRNtNtBU_4path12VendoredPathE0INtB7_5FnMutTReEE8call_mutCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i69.i, i64 noundef %.val5.i.i)
          to label %.noexc70.i unwind label %.loopexit.i, !noalias !469

.noexc70.i:                                       ; preds = %.lr.ph.i.i
  %i.fe = load i64, ptr %i.a, align 8, !range !9, !noalias !493, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.fe, -1
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.noexc70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !493
  %i.ff = icmp eq ptr %i.fb, %i.ez
  br i1 %i.ff, label %.loopexit124.i, label %.lr.ph.i.i

.body71.i:                                        ; preds = %bb.ap, %bb.an, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.fl, %bb.an ], [ %i.fm, %bb.ap ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesINtNtCscdodAO9FK5_5alloc5boxed3BoxShENtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataENCNvMs0_NtNtB32_4read11zip_archiveINtB3M_10ZipArchiveINtNtNtB4_2io6cursor6CursorNtNtCs56aZGHL6Dc6_7ruff_db8vendored11ArchiveDataEE10file_names0ENCINvMB4Y_NtB4Y_18VendoredFileSystem14read_directoryRNtNtB4Y_4path12VendoredPathE0EECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef align 8 dereferenceable(40) %i.i) #37
          to label %.thread95.i unwind label %bb.ag, !noalias !469

.loopexit.i:                                      ; preds = %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body71.i

.loopexit.split-lp.i:                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db8vendored4path15VendoredPathBufECsfDzkztWVnn_18ty_module_resolver.exit.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body71.i

bb.ak:                                            ; preds = %.noexc70.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.714.0..sroa_idx15.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i, i64 24, i1 false), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !471
  store i64 %i.fe, ptr %i.h, align 8, !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !471
  %i.fg = load ptr, ptr %.sroa.714.0..sroa_idx15.i, align 8, !noalias !471, !nonnull !3, !noundef !3
  %i.fh = load i64, ptr %i.ev, align 8, !noalias !471, !noundef !3
  store ptr %i.fg, ptr %i.ew, align 8, !noalias !471
  store i64 %i.fh, ptr %i.ex, align 8, !noalias !471
  store i64 1, ptr %i.g, align 8, !noalias !471
  %i.fi = load i8, ptr %i.ey, align 8, !range !20, !noalias !471, !noundef !3
  invoke fastcc void @_RNvMs_NtCsfDzkztWVnn_18ty_module_resolver4listNtB4_6Lister8add_path(ptr noalias noundef align 8 dereferenceable(56) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, i8 noundef %i.fi)
          to label %bb.ao unwind label %bb.an, !noalias !469

.loopexit124.i:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db8vendored14DirectoryEntryECsfDzkztWVnn_18ty_module_resolver.exit.i, %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !471
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtBH_18VendoredFileSystem14read_directoryRNtNtBH_4path12VendoredPathE0ECsfDzkztWVnn_18ty_module_resolver.exit.i.i unwind label %bb.al, !noalias !469

bb.al:                                            ; preds = %.loopexit124.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.thread95.i unwind label %bb.am, !noalias !469

bb.am:                                            ; preds = %bb.al
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !469
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtBH_18VendoredFileSystem14read_directoryRNtNtBH_4path12VendoredPathE0ECsfDzkztWVnn_18ty_module_resolver.exit.i.i: ; preds = %.loopexit124.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesINtNtCscdodAO9FK5_5alloc5boxed3BoxShENtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataENCNvMs0_NtNtB32_4read11zip_archiveINtB3M_10ZipArchiveINtNtNtB4_2io6cursor6CursorNtNtCs56aZGHL6Dc6_7ruff_db8vendored11ArchiveDataEE10file_names0ENCINvMB4Y_NtB4Y_18VendoredFileSystem14read_directoryRNtNtB4Y_4path12VendoredPathE0EECsfDzkztWVnn_18ty_module_resolver.exit.i unwind label %.thread102.loopexit.split-lp.i, !noalias !469

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesINtNtCscdodAO9FK5_5alloc5boxed3BoxShENtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataENCNvMs0_NtNtB32_4read11zip_archiveINtB3M_10ZipArchiveINtNtNtB4_2io6cursor6CursorNtNtCs56aZGHL6Dc6_7ruff_db8vendored11ArchiveDataEE10file_names0ENCINvMB4Y_NtB4Y_18VendoredFileSystem14read_directoryRNtNtB4Y_4path12VendoredPathE0EECsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMNtCs56aZGHL6Dc6_7ruff_db8vendoredNtBH_18VendoredFileSystem14read_directoryRNtNtBH_4path12VendoredPathE0ECsfDzkztWVnn_18ty_module_resolver.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !471
  br label %.loopexit126.i

bb.an:                                            ; preds = %bb.ak
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db8vendored14DirectoryEntryECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef align 8 dereferenceable(32) %i.h) #37
          to label %.body71.i unwind label %bb.ag, !noalias !469

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !471
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db8vendored4path15VendoredPathBufECsfDzkztWVnn_18ty_module_resolver.exit.i.i unwind label %bb.ap, !noalias !469

bb.ap:                                            ; preds = %bb.ao
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.body71.i unwind label %bb.aq, !noalias !469

bb.aq:                                            ; preds = %bb.ap
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !469
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db8vendored4path15VendoredPathBufECsfDzkztWVnn_18ty_module_resolver.exit.i.i: ; preds = %bb.ao
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db8vendored14DirectoryEntryECsfDzkztWVnn_18ty_module_resolver.exit.i unwind label %.loopexit.split-lp.i, !noalias !469

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db8vendored14DirectoryEntryECsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db8vendored4path15VendoredPathBufECsfDzkztWVnn_18ty_module_resolver.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !471
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !471
  store <2 x ptr> %6, ptr %i.b, align 16, !noalias !495
  %i.fo = load ptr, ptr %i.es, align 8, !alias.scope !496, !noalias !497, !nonnull !3, !noundef !3 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.ep, align 8, !alias.scope !496, !noalias !497 ; 2 uses
  %i.fp = icmp eq ptr %.promoted.i.i, %i.fo
  br i1 %i.fp, label %.loopexit124.i, label %.lr.ph.i.preheader.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver4list6ListerEBF_.exit.i: ; preds = %.thread95.i
  resume { ptr, i32 } %.pn.pn94.i

.thread95.i:                                      ; preds = %bb.al, %.body71.i, %bb.ae, %bb.ac, %.thread102.loopexit.split-lp.i, %.thread102.loopexit.i
  %.pn.pn94.i = phi { ptr, i32 } [ %i.fj, %bb.al ], [ %.pn.i, %.body71.i ], [ %i.ej, %bb.ae ], [ %i.ei, %bb.ac ], [ %lpad.loopexit127.i, %.thread102.loopexit.i ], [ %lpad.loopexit.split-lp128.i, %.thread102.loopexit.split-lp.i ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapRNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtNtB18_4list12ListedModuleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver4list6ListerEBF_.exit.i unwind label %bb.ag, !noalias !469

_RNvNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__NtB7_30list_modules_in_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit: ; preds = %.loopexit126.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtNtCs56aZGHL6Dc6_7ruff_db5files9directory16DirectoryListingNtB10_21DirectoryListingErrorEECsfDzkztWVnn_18ty_module_resolver.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists1_1__INtB5_9StructKeyNtNtB9_6module6ModulebEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB17_bEE10into_ownedB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 13)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !20, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.b, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_ENtNtB7_10ingredient10Ingredient10debug_nameB12_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @59, i64 17 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_ENtNtB7_10ingredient10Ingredient11as_functionB12_(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @60, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_ENtNtB7_10ingredient10Ingredient14is_persistableB12_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_ENtNtB7_10ingredient10Ingredient16ingredient_indexB12_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !3
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_ENtNtB7_10ingredient10Ingredient19remove_stale_outputB12_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_ENtNtB7_10ingredient10Ingredient31requires_reset_for_new_revisionB12_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_ENtNtB7_10ingredient10Ingredient8jar_kindB12_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_ENtNtB7_10ingredient10Ingredient8locationB12_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret ptr @61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_ENtNtB7_10ingredient10Ingredient10debug_nameB12_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @62, i64 15 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_ENtNtB7_10ingredient10Ingredient11as_functionB12_(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @63, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_ENtNtB7_10ingredient10Ingredient14is_persistableB12_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_ENtNtB7_10ingredient10Ingredient16ingredient_indexB12_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !3
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_ENtNtB7_10ingredient10Ingredient19remove_stale_outputB12_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_ENtNtB7_10ingredient10Ingredient31requires_reset_for_new_revisionB12_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_ENtNtB7_10ingredient10Ingredient8jar_kindB12_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNtCsfDzkztWVnn_18ty_module_resolver4lists0_1__30list_modules_in_Configuration_ENtNtB7_10ingredient10Ingredient8locationB12_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret ptr @64
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtCs4NRVxsYgnAr_4core3ptr8metadataINtB5_11DynMetadataDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67)
  %i.e = call noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs1_NvNtCsfDzkztWVnn_18ty_module_resolver11environment1__NtB7_19ResolverEnvironmentNtNtCs45bxiIjzMqg_5salsa8interned13Configuration9heap_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEE4withNCINvCsdNa9EhS036s_17ruff_memory_usage12with_trackerNCINvB2V_9heap_sizeTNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionNtNtCsfDzkztWVnn_18ty_module_resolver7resolve11SearchPathsEE0jE0jEB58_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @68, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %0)
  %i.b = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.a, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs1_NvNtCsfDzkztWVnn_18ty_module_resolver11environments_1__NtB7_12ResolverFileNtNtCs45bxiIjzMqg_5salsa8interned13Configuration9heap_size(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEE4withNCINvCsdNa9EhS036s_17ruff_memory_usage12with_trackerNCINvB2V_9heap_sizeTNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentEE0jE0jEB4F_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @68, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %0)
  %i.b = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.a, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs1_NvNtCsfDzkztWVnn_18ty_module_resolver4list1__NtB7_17list_modules_implNtNtCs45bxiIjzMqg_5salsa10ingredient3Jar17id_struct_type_id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @69, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NvNtCsfDzkztWVnn_18ty_module_resolver4list1__NtB7_17list_modules_implNtNtCs45bxiIjzMqg_5salsa10ingredient3Jar18create_ingredients(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(1368) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [584 x i8], align 8               ; 4 uses
  %i.c = alloca [584 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = tail call { ptr, i64 } @_RNvXs7_NvNtCsfDzkztWVnn_18ty_module_resolver11environment1__NtB7_19ResolverEnvironmentNtNtCs45bxiIjzMqg_5salsa12salsa_struct15SalsaStructInDb23lookup_ingredient_index(ptr noundef nonnull align 8 %1)
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) @48, i64 16, i1 false)
  store ptr @_RINvNvMs1_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB8_13MemoEntryType9to_dyn_fn6to_dynINtNtNtBc_8function4memo4MemoNtNvNtCsfDzkztWVnn_18ty_module_resolver4list1__32list_modules_impl_Configuration_EEB1R_, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.h = load i32, ptr %i.f, align 4, !alias.scope !504, !noalias !505, !noundef !3 ; 2 uses
  %i.i = invoke noundef i32 @_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa26next_memo_ingredient_index(ptr noalias noundef nonnull align 8 dereferenceable(1368) %1, i32 noundef %i.h, i32 noundef %2)
          to label %bb.b unwind label %bb.g, !noalias !506 ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !507
  invoke void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa21lookup_ingredient_mut(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(1368) %1, i32 noundef %i.h)
          to label %bb.c unwind label %bb.g, !noalias !506

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !noalias !507, !nonnull !3, !noundef !3
end_hunk_1
