Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.08?download=true
inline.NumInlined: 5960
inline.NumDeleted: 2694
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility27generics_require_sized_self:bb.a

bb.m:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.j
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.am, %bb.m ], [ %i.ak, %bb.j ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBU_14predicate_kind13PredicateKindB1H_EEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %.body.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

common.resume:                                    ; preds = %bb.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate10ElaboratorNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1F_9predicate6ClauseEEB1H_.exit: ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  call void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBU_14predicate_kind13PredicateKindB1H_EEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB5_10DbInterner10lang_items.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate10ElaboratorNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1F_9predicate6ClauseEEB1H_.exit
  %.sroa.0.0 = phi i1 [ %.not.lcssa.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate10ElaboratorNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1F_9predicate6ClauseEEB1H_.exit ], [ false, %_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB5_10DbInterner10lang_items.exit ]
  ret i1 %.sroa.0.0

bb.p:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility32dyn_compatibility_of_trait_query(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %3, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %4, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility25DynCompatibilityViolationEDNtNtB2z_2db11HirDatabaseEL_NCNvB2x_32dyn_compatibility_of_trait_query0E0B1T_EB2z_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @315, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 4) i8 @_RNvNtCs8K4cjrcxBsw_6hir_ty17dyn_compatibility36contains_illegal_impl_trait_in_trait(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.g = tail call noundef nonnull ptr @_RNvXsd_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_3TysINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent3TysNtNtB7_8interner10DbInternerE6output(ptr noundef nonnull %i.f) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @44, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8, !noalias !7210
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 8, !noalias !7210 ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.55.0.copyload.i = load i32, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !7210
  %i.h = icmp ne i32 %.sroa.0.0.copyload.i, 27
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i32 %.sroa.0.0.copyload.i, 25
  %i.j = icmp eq i32 %.sroa.55.0.copyload.i, 2
  %or.cond.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.i, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !7210
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !7210
  %i.k = invoke noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIduNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef %.sroa.6.0.copyload.i, i32 noundef %.sroa.7.0.copyload.i)
          to label %.noexc unwind label %bb.j     ; 0 uses

.noexc:                                           ; preds = %bb.b, %bb.a
  %i.l = invoke noundef zeroext i1 @_RINvXs5_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB6_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit18TypeSuperVisitableNtNtB8_8interner10DbInternerE16super_visit_withNtNvNtBa_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.c unwind label %bb.j       ; 0 uses

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIduNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.m = invoke { i32, i32 } @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIduEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIduEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.thread unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.o = extractvalue { i32, i32 } %i.m, 0        ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIdEEB1B_.exit15, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = extractvalue { i32, i32 } %i.m, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs9_NvNtCs8K4cjrcxBsw_6hir_ty2db1__NtB8_18InternedOpaqueTyId3locDNtB8_11HirDatabaseEL_EBa_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.c, i32 noundef %i.o, i32 noundef %i.p, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1)
          to label %bb.h unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIdEEB1B_.exit15: ; preds = %bb.f, %bb.h
  %.sroa.0.0 = phi i8 [ 3, %bb.h ], [ -1, %bb.f ]
  call void @_RNvXsC_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIduEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i8 %.sroa.0.0

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %i.c, align 4, !range !1544, !noundef !4
  %i.r = icmp eq i32 %i.q, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIdEEB1B_.exit15, label %bb.d

bb.i:                                             ; preds = %bb.j, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

.thread:                                          ; preds = %bb.j, %bb.e
  %.pn19 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.j ], [ %i.n, %bb.e ]
  resume { ptr, i32 } %.pn19

bb.j:                                             ; preds = %.noexc, %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIduEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.thread unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution13is_dyn_method(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr nofree noundef nonnull readnone captures(none) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noundef nonnull captures(address, read_provenance) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !63, !noundef !4 ; 3 uses
  %i.f = tail call noundef nonnull align 4 ptr @_RINvMs9_NvCsileJQcQObtj_7hir_defs_1__NtB8_10FunctionId3locDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EBZ_(i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.e) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 4, !range !2709, !noundef !4
  %i.i = icmp eq i32 %i.h, 3
  br i1 %i.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.k = load i32, ptr %i.j, align 4, !range !1250, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = load i32, ptr %i.l, align 4, !noundef !4 ; 2 uses
  store i32 %i.k, ptr %i.b, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.m, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.k, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.m, ptr %i.p, align 4
  store i32 7, ptr %i.a, align 4
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB5_13GenericParams2of(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.e, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %i.s, 288230376151711744
  call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.v = load i64, ptr %i.u, align 8, !noundef !4 ; 2 uses
  %i.w = icmp ult i64 %i.v, 576460752303423488
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, %i.s               ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 3 uses
  %i.aa = sub i64 %i.z, %i.x
  %.not = icmp ugt i64 %i.x, %i.z
  br i1 %.not, label %bb.d, label %bb.c, !prof !4008

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg18GenericArgsStorageE21from_header_and_sliceB14_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.x) #44
  %i.ad = call noundef nonnull ptr @_RNvXsu_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB5_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent11GenericArgsNtNtB7_8interner10DbInternerE7type_at(ptr noundef nonnull %i.ac, i64 noundef 0) ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %i.ad, align 8 ; 2 uses
  %i.ae = icmp ne i32 %.sroa.01.0.copyload, 27
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i32 %.sroa.01.0.copyload, 18
  br i1 %i.af, label %bb.e, label %bb.i

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.x, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @319) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.62.0.copyload = load ptr, ptr %.sroa.62.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.62.0.copyload, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  %.not14 = icmp eq i64 %i.ah, 0
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.62.0.copyload, i64 40
  %.sroa.711.0.copyload = load i32, ptr %.sroa.711.0..sroa_idx, align 8 ; 2 uses
  %i.ai = icmp ne i32 %.sroa.711.0.copyload, 3
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i32 %.sroa.711.0.copyload, 2
  br i1 %i.aj, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317) #45
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.62.0.copyload, i64 24
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.62.0.copyload, i64 28
  %.sroa.59.0.copyload = load i32, ptr %.sroa.59.0..sroa_idx, align 4
  %.sroa.08.0.copyload = load i32, ptr %i.ak, align 8
  %i.al = call { ptr, i64 } @_RNvNtCs8K4cjrcxBsw_6hir_ty5utils16all_super_traits(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.e, i32 noundef %.sroa.08.0.copyload, i32 noundef %.sroa.59.0.copyload) ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = call noundef zeroext i1 @_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpNtCsileJQcQObtj_7hir_def7TraitIdNtB5_13SliceContains14slice_containsCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.am, i64 noundef %i.an)
  br i1 %i.ao, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.c
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.sroa.0.0.ph = phi i64 [ 0, %bb.i ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ %i.aa, %.sink.split ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  %i.ap = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.aq = insertvalue { i64, i64 } %i.ap, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.aq
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution17lookup_impl_const(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = tail call noundef nonnull align 4 ptr @_RINvMs9_NvCsileJQcQObtj_7hir_defs3_1__NtB8_7ConstId3locDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EBW_(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %.sroa.0.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.5.0.copyload) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 4, !range !2709, !noundef !4
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = load <2 x i32>, ptr %i.h, align 4
  store <2 x i32> %i.i, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %5, ptr %i.j, align 8
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMsJ_NtCsileJQcQObtj_7hir_def10signaturesNtB5_14ConstSignature2of(ptr noundef nonnull %.sroa.0.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.5.0.copyload, i32 noundef %3, i32 noundef %4)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noundef !4
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 %3, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %4, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %i.o, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution36lookup_impl_assoc_item_for_trait_ref(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
  %i.p = load i32, ptr %i.a, align 8, !range !2722, !noundef !4 ; 2 uses
  %.not1 = icmp eq i32 %i.p, 2
  br i1 %.not1, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  store i32 %3, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %4, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.413.0.copyload = load i32, ptr %.sroa.413.0..sroa_idx, align 4
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = load <2 x i32>, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.716.0.copyload = load ptr, ptr %.sroa.716.0..sroa_idx, align 8 ; 2 uses
  %i.t = trunc nuw i32 %i.p to i1
  %i.u = icmp ne i32 %.sroa.413.0.copyload, 1
  %or.cond.not.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.not.i, label %_RNCNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution17lookup_impl_const0B5_.exit.thread, label %_RNCNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution17lookup_impl_const0B5_.exit

_RNCNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution17lookup_impl_const0B5_.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %3, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %4, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %i.w, align 8
  br label %bb.i

_RNCNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution17lookup_impl_const0B5_.exit: ; preds = %bb.f
  %.sroa.514.0.copyload = load i32, ptr %.sroa.514.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.716.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %3, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %4, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %5, ptr %i.y, align 8
  %.not2 = icmp eq i32 %.sroa.514.0.copyload, 0
  br i1 %.not2, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %3, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %4, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %i.aa, align 8
  br label %bb.i

bb.h:                                             ; preds = %_RNCNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution17lookup_impl_const0B5_.exit
  store <2 x i32> %i.s, ptr %0, align 8
  store ptr %.sroa.716.0.copyload, ptr %i.y, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNCNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution17lookup_impl_const0B5_.exit.thread, %_RNCNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution17lookup_impl_const0B5_.exit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution22simplified_type_module(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 5 uses
  %.sroa.01.0.copyload = load i8, ptr %2, align 8
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.sroa.10.0.copyload = load i32, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.16.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.d = load <2 x i32>, ptr %.sroa.5.sroa.16.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.16.0.copyload = load i32, ptr %.sroa.5.sroa.16.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  switch i8 %.sroa.01.0.copyload, label %bb.f [
    i8 5, label %bb.b
    i8 6, label %bb.b
    i8 15, label %bb.b
    i8 16, label %bb.b
    i8 17, label %bb.b
    i8 18, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.5.sroa.4.0.copyload = load i32, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  switch i32 %.sroa.5.sroa.4.0.copyload, label %bb.f [
    i32 0, label %bb.c
    i32 7, label %bb.d
    i32 8, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.sroa.5.sroa.10.0.copyload, ptr %i.c, align 4
  %.sroa.59.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store <2 x i32> %i.d, ptr %.sroa.59.4..sroa_idx, align 4
  %i.e = call { i32, i32 } @_RNvXsT_CsileJQcQObtj_7hir_defNtB5_5AdtIdNtB5_9HasModule6module(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.c, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1) ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.e, 0
  %i.g = extractvalue { i32, i32 } %i.e, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.5.sroa.10.0.copyload, ptr %i.b, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.sroa.5.sroa.16.0.copyload, ptr %i.h, align 4
  %i.i = call noundef nonnull align 4 ptr @_RNvXs2x_CsileJQcQObtj_7hir_defNtB6_7TraitIdNtCs33K2ylI4knu_10hir_expand6Lookup6lookup(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 4, !range !1250, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.m = load i32, ptr %i.l, align 4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.sroa.5.sroa.10.0.copyload, ptr %i.a, align 4, !noalias !7213
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.5.sroa.16.0.copyload, ptr %i.n, align 4, !noalias !7213
  %i.o = call noundef nonnull align 4 ptr @_RNvXs2J_CsileJQcQObtj_7hir_defNtB6_11TypeAliasIdNtCs33K2ylI4knu_10hir_expand6Lookup6lookup(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = call { i32, i32 } @_RNvXsS_CsileJQcQObtj_7hir_defNtB5_15ItemContainerIdNtB5_9HasModule6module(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.p, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = extractvalue { i32, i32 } %i.q, 0
  %i.s = extractvalue { i32, i32 } %i.q, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %.sroa.6.1 = phi i32 [ undef, %bb.a ], [ %i.s, %bb.e ], [ %i.g, %bb.c ], [ %i.m, %bb.d ], [ undef, %bb.b ]
  %.sroa.0.1 = phi i32 [ 0, %bb.a ], [ %i.r, %bb.e ], [ %i.f, %bb.c ], [ %i.k, %bb.d ], [ 0, %bb.b ]
  %i.t = insertvalue { i32, i32 } poison, i32 %.sroa.0.1, 0
  %i.u = insertvalue { i32, i32 } %i.t, i32 %.sroa.6.1, 1
  ret { i32, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution24lookup_impl_method_query(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %3, i32 noundef range(i32 1, 0) %4, i32 noundef %5, ptr noundef nonnull %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [544 x i8], align 8               ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i32, ptr %i.g, align 8, !range !1250, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
end_hunk_0
