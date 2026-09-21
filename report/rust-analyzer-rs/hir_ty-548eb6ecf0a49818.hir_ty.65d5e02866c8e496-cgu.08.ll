Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.08?download=true
inline.NumInlined: 5960
inline.NumDeleted: 2694
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty7opaques1__NtB5_32rpit_hidden_types_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute:bb.a
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8309
  store i32 0, ptr %i.c, align 4, !noalias !8309
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %3, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !8309
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %4, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !8309
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2t_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_15InferenceResult8for_body(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.c), !noalias !8310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8311
  store i64 0, ptr %i.g, align 8, !noalias !8311
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8311
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !8311
  invoke void @_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult32return_position_impl_trait_types(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !8312

.loopexit.i:                                      ; preds = %bb.e, %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.n, %bb.l, %bb.f
  %lpad.loopexit18.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.k, %bb.a
  %lpad.loopexit.split-lp19.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.h ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit18.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp19.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbq3eHDLgq0Z_8la_arena3map8ArenaMapINtBG_3IdxNtNtCs8K4cjrcxBsw_6hir_ty5lower9ImplTraitEINtNtNtB1u_11next_solver6binder17StoredEarlyBinderNtNtB2b_2ty8StoredTyEEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #48
          to label %bb.p unwind label %bb.o, !noalias !8312

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !8311
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB12_2ty8StoredTyEEEB14_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8311
  store ptr %i.i, ptr %i.b, align 8, !noalias !8313
  br label %bb.d

bb.d:                                             ; preds = %.noexc12.i, %bb.c
  %i.j = invoke { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIdNtNtNtBO_11next_solver2ty8StoredTyENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !8312 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = invoke { i32, ptr } @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtBW_15InferenceResult32return_position_impl_trait_types0INtB7_5FnMutTTRNtNtBY_2db18InternedOpaqueTyIdRNtNtNtBY_11next_solver2ty8StoredTyEEE8call_mutBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !8312 ; 2 uses

.noexc12.i:                                       ; preds = %bb.e
  %i.n = extractvalue { i32, ptr } %i.m, 1        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.f

bb.f:                                             ; preds = %.noexc12.i
  %i.o = extractvalue { i32, ptr } %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8311
  %i.p = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataBT_(ptr noundef nonnull %i.n)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !8312

.noexc13.i:                                       ; preds = %bb.f
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q ; 3 uses
  store ptr %i.r, ptr %i.a, align 8, !noalias !8311
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8, !noalias !8312
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.l, !prof !41

bb.g:                                             ; preds = %.noexc13.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #46
          to label %bb.i unwind label %bb.h, !noalias !8312

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body.i unwind label %bb.j, !noalias !8312

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !8312
  unreachable

bb.k:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8311
  invoke void @_RNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB2_8ArenaMapINtB4_3IdxNtNtCs8K4cjrcxBsw_6hir_ty5lower9ImplTraitEINtNtNtBY_11next_solver6binder17StoredEarlyBinderNtNtB1F_2ty8StoredTyEE13shrink_to_fitBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty7opaques1__NtB7_32rpit_hidden_types_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !8312

bb.l:                                             ; preds = %.noexc13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8311
  %i.w = invoke noundef ptr @_RNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB2_8ArenaMapINtB4_3IdxNtNtCs8K4cjrcxBsw_6hir_ty5lower9ImplTraitEINtNtNtBY_11next_solver6binder17StoredEarlyBinderNtNtB1F_2ty8StoredTyEE6insertBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i32 noundef %i.o, ptr noundef nonnull %i.r)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.i, !noalias !8312 ; 2 uses

bb.m:                                             ; preds = %bb.l
  store ptr %i.w, ptr %i.d, align 8, !noalias !8311
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB12_2ty8StoredTyEEEB14_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB12_2ty8StoredTyEEEB14_.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !8312

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB12_2ty8StoredTyEEEB14_.exit.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8311
  br label %bb.c

bb.o:                                             ; preds = %.body.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !8312
  unreachable

bb.p:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty7opaques1__NtB7_32rpit_hidden_types_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !8314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty7opaquess_1__NtB5_32tait_hidden_types_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration12values_equal(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !18 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !18
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !18, !noundef !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !18, !noundef !18
  %i.j = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtB9_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB13_2ty8StoredTyEEINtB5_14SlicePartialEqBC_E17equal_same_lengthB15_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty7opaquess_1__NtB5_32tait_hidden_types_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration13cycle_initial(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(560) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, i32 noundef range(i32 1, 0) %5, i32 noundef %6) unnamed_addr #20 {
bb.a:
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @531, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty7opaquess_1__NtB5_32tait_hidden_types_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [12 x i8], align 4                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 16               ; 6 uses
  %i.m = alloca [32 x i8], align 16               ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 4                ; 8 uses
  %i.t = alloca [40 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 12 uses
  %i.w = alloca [12 x i8], align 4                ; 6 uses
  %i.x = alloca [8 x i8], align 4                 ; 6 uses
  %i.y = alloca [88 x i8], align 8                ; 12 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [544 x i8], align 8              ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ab = tail call noundef nonnull align 8 ptr @_RNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB6_10ImplTraits22type_alias_impl_traits(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4), !noalias !8362
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !8362, !align !26, !noundef !18 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %.val39.i = load i64, ptr %i.ad, align 8, !noalias !8362, !noundef !18 ; 4 uses
  %i.ae = icmp ult i64 %.val39.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = tail call noundef nonnull align 4 ptr @_RINvMs9_NvCsileJQcQObtj_7hir_defs6_1__NtB8_11TypeAliasId3locDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EB11_(i32 noundef range(i32 1, 0) %3, i32 noundef %4, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2), !noalias !8362 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = tail call { i32, i32 } @_RNvXsS_CsileJQcQObtj_7hir_defNtB5_15ItemContainerIdNtB5_9HasModule6module(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ag, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2), !noalias !8362 ; 2 uses
  %i.ai = extractvalue { i32, i32 } %i.ah, 0
  %i.aj = extractvalue { i32, i32 } %i.ah, 1
  %i.ak = tail call { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5krateDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EB12_(i32 noundef %i.ai, i32 noundef %i.aj, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2), !noalias !8362 ; 2 uses
  %i.al = extractvalue { i32, i32 } %i.ak, 0
  %i.am = extractvalue { i32, i32 } %i.ak, 1
  call void @_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB5_10DbInterner8new_with(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, i32 noundef %i.al, i32 noundef %i.am), !noalias !8362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !8364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !8364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !8364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8364
  call void @_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB5_10DbInterner7conjure(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m), !noalias !8362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8364
  %i.an = load <2 x ptr>, ptr %i.m, align 16, !noalias !8364
  store <2 x ptr> %i.an, ptr %i.l, align 16, !noalias !8364
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 0, ptr %i.ao, align 16, !noalias !8364
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr null, ptr %i.ap, align 8, !noalias !8364
  %i.aq = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2424) acquire, align 8, !noalias !8365
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_RNvXsy_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB5_12SolverDefIdsNtNtCshzWfHUSfYae_4core7default7Default7default.exit.i, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  call void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE10initializeNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_(ptr noundef nonnull align 8 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l), !noalias !8362
  br label %_RNvXsy_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB5_12SolverDefIdsNtNtCshzWfHUSfYae_4core7default7Default7default.exit.i

_RNvXsy_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB5_12SolverDefIdsNtNtCshzWfHUSfYae_4core7default7Default7default.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8364
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2352), align 8, !noalias !8364, !nonnull !18, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8364
  call void @_RNvMs1_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB5_16InferCtxtBuilder5build(ptr noalias nofree noundef nonnull sret([544 x i8]) align 8 captures(none) dereferenceable(544) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef 1, ptr nonnull %i.as), !noalias !8362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !8364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !8364
  call void @llvm.experimental.noalias.scope.decl(metadata !8366)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8367
  store i64 0, ptr %i.k, align 8, !noalias !8367
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !8367
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !8367
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !8367
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 0, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !noalias !8367
  %i.at = invoke noundef i64 @_RNvMNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer8snapshotNtB4_9InferCtxt18num_open_snapshots(ptr noundef nonnull align 8 %i.aa)
          to label %bb.n unwind label %bb.d, !noalias !8368

bb.d:                                             ; preds = %_RNvXsy_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB5_12SolverDefIdsNtNtCshzWfHUSfYae_4core7default7Default7default.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill17ObligationStorageEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #48
          to label %.body.i unwind label %bb.e, !noalias !8368

bb.e:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !8368
  unreachable

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !8362, !noalias !8363
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !8362, !noalias !8363
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !8362, !noalias !8363
  br label %_RNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty7opaquess_1__NtB7_32tait_hidden_types_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_.exit

.body.i:                                          ; preds = %bb.ad, %bb.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15FulfillmentCtxtEBH_.exit.i.i, %bb.g, %bb.d
  %.pn32.pn.pn.pn.i = phi { ptr, i32 } [ %.pn32.pn.pn.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15FulfillmentCtxtEBH_.exit.i.i ], [ %i.au, %bb.d ], [ %i.aw, %bb.g ], [ %i.db, %bb.ad ], [ %i.da, %bb.ab ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtEBH_(ptr noalias nofree noundef align 8 dereferenceable(544) %i.aa) #48
          to label %bb.cj unwind label %bb.bg, !noalias !8362

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15FulfillmentCtxtEBH_.exit.i66.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def13DefWithBodyIdEECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.ch, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB1z_2ty8StoredTyEEEEB1B_.exit.i.i, %bb.m
  %.pn32.pn.pn.i = phi { ptr, i32 } [ %.pn32.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB1z_2ty8StoredTyEEEEB1B_.exit.i.i ], [ %i.bb, %bb.m ], [ %i.ft, %bb.ch ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill17ObligationStorageEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.y)
          to label %bb.i unwind label %bb.h, !noalias !8362

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def13DefWithBodyIdEECs8K4cjrcxBsw_6hir_ty.exit.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtB1g_9predicate9PredicateEINtNtB4_6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtB1g_8interner10DbInternerEEEEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i) #48
          to label %.body44.i unwind label %bb.l, !noalias !8362

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def13DefWithBodyIdEECs8K4cjrcxBsw_6hir_ty.exit.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtBN_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtBN_8interner10DbInternerEEEENtNtNtB2j_3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15FulfillmentCtxtEBH_.exit.i.i unwind label %bb.j, !noalias !8362

bb.j:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtBU_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtBU_8interner10DbInternerEEEENtNtNtB2q_3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i)
          to label %.body44.i unwind label %bb.k, !noalias !8362

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !8362
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !8362
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15FulfillmentCtxtEBH_.exit.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtBU_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtBU_8interner10DbInternerEEEENtNtNtB2q_3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i)
          to label %.body.i unwind label %bb.bg, !noalias !8362

bb.m:                                             ; preds = %.noexc48.invoke.i, %bb.s, %bb.r, %bb.q, %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def13DefWithBodyIdEECs8K4cjrcxBsw_6hir_ty.exit.i

bb.n:                                             ; preds = %_RNvXsy_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB5_12SolverDefIdsNtNtCshzWfHUSfYae_4core7default7Default7default.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !8364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8367
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 3 uses
  store ptr %i.aa, ptr %i.bc, align 8, !alias.scope !8366, !noalias !8364
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 9 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !8366, !noalias !8364
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !8366, !noalias !8364
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !8366, !noalias !8364
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store i64 %i.at, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !8366, !noalias !8364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !8364
  store i32 4, ptr %i.x, align 4, !noalias !8364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !8364
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %3, ptr %i.bd, align 4, !noalias !8364
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %4, ptr %i.be, align 4, !noalias !8364
  store i32 8, ptr %i.w, align 4, !noalias !8364
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !18, !alias.scope !8363, !noalias !8362, !nonnull !18
  %i.bh = invoke noundef nonnull ptr %i.bg(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.w)
          to label %bb.o unwind label %bb.m, !noalias !8362

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !8364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !8364
  call void @llvm.experimental.noalias.scope.decl(metadata !8369)
  call void @llvm.experimental.noalias.scope.decl(metadata !8370)
  %i.bi = load i32, ptr %i.ag, align 4, !range !53, !alias.scope !8370, !noalias !8371, !noundef !18
  switch i32 %i.bi, label %bb.p [
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.p:                                             ; preds = %.noexc.i, %bb.o
  store i64 0, ptr %i.v, align 8, !alias.scope !8369, !noalias !8372
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bj, align 8, !alias.scope !8369, !noalias !8372
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %i.bk, align 8, !alias.scope !8369, !noalias !8372
  br label %_RNvNtCs8K4cjrcxBsw_6hir_ty7opaques20tait_defining_bodies.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !range !35, !alias.scope !8370, !noalias !8371, !noundef !18 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bo = load i32, ptr %i.bn, align 4, !alias.scope !8370, !noalias !8371, !noundef !18 ; 2 uses
  %i.bp = invoke noundef nonnull align 8 ptr @_RNvMs19_NtCsileJQcQObtj_7hir_def10signaturesNtB6_13ImplSignature2of(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, i32 noundef %i.bm, i32 noundef %i.bo)
          to label %.noexc.i unwind label %bb.m, !noalias !8362

.noexc.i:                                         ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  %i.br = load i32, ptr %i.bq, align 8, !range !40, !noalias !8373, !noundef !18
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %bb.p, label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !range !35, !alias.scope !8370, !noalias !8371, !noundef !18
  %i.bu = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bv = load i32, ptr %i.bu, align 4, !alias.scope !8370, !noalias !8371, !noundef !18
  %i.bw = invoke noundef nonnull align 8 ptr @_RNvMs5_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB5_10TraitItems22query_with_diagnostics(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, i32 noundef %i.bt, i32 noundef %i.bv)
          to label %.noexc48.invoke.i unwind label %bb.m, !noalias !8362

bb.s:                                             ; preds = %.noexc.i
  %i.bx = invoke noundef nonnull align 8 ptr @_RNvMsa_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB5_9ImplItems2of(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, i32 noundef %i.bm, i32 noundef %i.bo)
          to label %.noexc48.invoke.i unwind label %bb.m, !noalias !8362

.noexc48.invoke.i:                                ; preds = %bb.s, %bb.r
  %.sink174.i = phi ptr [ %i.bw, %bb.r ], [ %i.bx, %bb.s ] ; 2 uses
  %i.by = load ptr, ptr %.sink174.i, align 8, !noalias !8373, !nonnull !18, !noundef !18 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sink174.i, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !8373, !noundef !18
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.ca
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCsileJQcQObtj_7hir_def13DefWithBodyIdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtNtB2i_5slice4iter4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB13_11AssocItemIdEENCNCNvNtCs8K4cjrcxBsw_6hir_ty7opaques20tait_defining_bodies00EE9from_iterB4K_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull %i.by, ptr noundef nonnull %i.cb)
          to label %_RNvNtCs8K4cjrcxBsw_6hir_ty7opaques20tait_defining_bodies.exit.i unwind label %bb.m, !noalias !8362

_RNvNtCs8K4cjrcxBsw_6hir_ty7opaques20tait_defining_bodies.exit.i: ; preds = %.noexc48.invoke.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !8364
  invoke void @_RNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB2_8ArenaMapINtB4_3IdxNtNtCs8K4cjrcxBsw_6hir_ty5lower9ImplTraitEINtNtNtBY_11next_solver6binder17StoredEarlyBinderNtNtB1F_2ty8StoredTyEE13with_capacityBY_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %.val39.i)
          to label %bb.t unwind label %bb.cf, !noalias !8362

bb.t:                                             ; preds = %_RNvNtCs8K4cjrcxBsw_6hir_ty7opaques20tait_defining_bodies.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !8364, !nonnull !18, !noundef !18 ; 4 uses
  %i.ce = load i64, ptr %i.v, align 8, !range !21, !noalias !8364, !noundef !18 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !8364, !noundef !18 ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 768614336404564651
  call void @llvm.assume(i1 %i.ch)
  %.idx.i = mul nuw nsw i64 %i.cg, 12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i
  %i.cj = icmp eq i64 %i.cg, 0
  br i1 %i.cj, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i: ; preds = %bb.t
  %.sroa.5.0..sroa_idx.i51.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i

.loopexit116.i:                                   ; preds = %bb.cd, %_RINvMs_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer2atNtB5_2At2eqNtNtB9_2ty2TyEBb_.exit.thread.i.i, %bb.cc, %bb.bt, %bb.bq, %bb.bp, %bb.bk, %.backedge.i
  %lpad.loopexit118.i = landingpad { ptr, i32 }
          cleanup
  br label %.body86.i

.loopexit.split-lp117.loopexit.i:                 ; preds = %bb.bh, %bb.u
  %lpad.loopexit121.i = landingpad { ptr, i32 }
          cleanup
  br label %.body86.i

.loopexit.split-lp117.loopexit.split-lp.i:        ; preds = %bb.cb
  %lpad.loopexit.split-lp122.i = landingpad { ptr, i32 }
          cleanup
  br label %.body86.i

.body86.i:                                        ; preds = %bb.ca, %bb.bv, %.loopexit.split-lp117.loopexit.split-lp.i, %.loopexit.split-lp117.loopexit.i, %.loopexit116.i
  %eh.lpad-body87.i = phi { ptr, i32 } [ %i.fl, %bb.ca ], [ %i.fh, %bb.bv ], [ %lpad.loopexit118.i, %.loopexit116.i ], [ %lpad.loopexit121.i, %.loopexit.split-lp117.loopexit.i ], [ %lpad.loopexit.split-lp122.i, %.loopexit.split-lp117.loopexit.split-lp.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8374
  store i64 %i.ce, ptr %i.j, align 8, !noalias !8374
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.cd, ptr %i.cr, align 8, !noalias !8374
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdEECs8K4cjrcxBsw_6hir_ty.exit.i unwind label %bb.bg, !noalias !8362

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdEECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %.body86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8374
  br label %.body62.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.bl, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i
  %.sroa.5.0135.i = phi ptr [ %i.cd, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i ], [ %i.cs, %bb.bl ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.5.0135.i, i64 12 ; 2 uses
  %.sroa.0100.0.copyload101.i = load i32, ptr %.sroa.5.0135.i, align 4, !noalias !8375 ; 2 uses
  %.not25.i = icmp eq i32 %.sroa.0100.0.copyload101.i, -1
  br i1 %.not25.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.7.0..sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0135.i, i64 4
  %.sroa.7.0.copyload102.i = load i64, ptr %.sroa.7.0..sroa.5.8..sroa_idx.i, align 4, !noalias !8375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8376
  store i32 %.sroa.0100.0.copyload101.i, ptr %i.i, align 4, !noalias !8376
  store i64 %.sroa.7.0.copyload102.i, ptr %.sroa.5.0..sroa_idx.i51.i, align 4, !noalias !8376
  %i.ct = invoke noundef nonnull align 8 ptr @_RNvMs2t_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_15InferenceResult8for_body(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.i)
          to label %bb.bh unwind label %.loopexit.split-lp117.loopexit.i, !noalias !8362

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i: ; preds = %bb.bl, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8377
  store i64 %i.ce, ptr %i.h, align 8, !noalias !8377
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.cd, ptr %i.cu, align 8, !noalias !8377
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.x unwind label %.loopexit.split-lp.i, !noalias !8362

.body62.i:                                        ; preds = %bb.bf, %bb.be, %bb.ay, %bb.aq, %bb.al, %bb.y, %.loopexit.split-lp.i, %.loopexit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdEECs8K4cjrcxBsw_6hir_ty.exit.i
  %.pn32.i = phi { ptr, i32 } [ %eh.lpad-body87.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdEECs8K4cjrcxBsw_6hir_ty.exit.i ], [ %i.ee, %bb.ay ], [ %i.eh, %bb.be ], [ %i.dr, %bb.al ], [ %i.cy, %bb.y ], [ %i.dv, %bb.aq ], [ %i.ei, %bb.bf ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCshzWfHUSfYae_4core6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB1m_2ty8StoredTyEEENtNtNtBK_3ops4drop4Drop4dropB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB1z_2ty8StoredTyEEEEB1B_.exit.i.i unwind label %bb.v, !noalias !8362

bb.v:                                             ; preds = %.body62.i
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCshzWfHUSfYae_4core6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB1t_2ty8StoredTyEEENtNtNtBR_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body44.i unwind label %bb.w, !noalias !8362

bb.w:                                             ; preds = %bb.v
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !8362
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB1z_2ty8StoredTyEEEEB1B_.exit.i.i: ; preds = %.body62.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCshzWfHUSfYae_4core6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB1t_2ty8StoredTyEEENtNtNtBR_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def13DefWithBodyIdEECs8K4cjrcxBsw_6hir_ty.exit.i unwind label %bb.bg, !noalias !8362

.loopexit.i:                                      ; preds = %bb.aw, %bb.av, %bb.au, %bb.aj, %bb.ai, %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body62.i

.loopexit.split-lp.i:                             ; preds = %bb.as, %bb.z, %bb.x, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body62.i

bb.x:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8364
  %i.cx = load ptr, ptr %i.bc, align 8, !alias.scope !8378, !noalias !8379, !nonnull !18, !align !26, !noundef !18
  invoke void @_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB5_15FulfillmentCtxt24try_evaluate_obligations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.y, ptr noundef nonnull align 8 %i.cx)
          to label %_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxtNtB4_14ObligationCtxt24try_evaluate_obligations.exit.i unwind label %.loopexit.split-lp.i, !noalias !8362

_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxtNtB4_14ObligationCtxt24try_evaluate_obligations.exit.i: ; preds = %bb.x
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.z unwind label %bb.y, !noalias !8362

bb.y:                                             ; preds = %_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxtNtB4_14ObligationCtxt24try_evaluate_obligations.exit.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body62.i unwind label %bb.aa, !noalias !8362

bb.z:                                             ; preds = %_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxtNtB4_14ObligationCtxt24try_evaluate_obligations.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorEEB1e_.exit.i unwind label %.loopexit.split-lp.i, !noalias !8362

bb.aa:                                            ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !8362
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorEEB1e_.exit.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8364
  %.not137.i = icmp eq i64 %.val39.i, 0
  br i1 %.not137.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.ar, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorEEB1e_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !8363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !8364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !8364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !8364
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill17ObligationStorageEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.y)
          to label %bb.ac unwind label %bb.ab, !noalias !8362

bb.ab:                                            ; preds = %._crit_edge.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtB1g_9predicate9PredicateEINtNtB4_6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtB1g_8interner10DbInternerEEEEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i) #48
          to label %.body.i unwind label %bb.af, !noalias !8362

bb.ac:                                            ; preds = %._crit_edge.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtBN_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtBN_8interner10DbInternerEEEENtNtNtB2j_3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15FulfillmentCtxtEBH_.exit.i66.i unwind label %bb.ad, !noalias !8362

bb.ad:                                            ; preds = %bb.ac
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtBU_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtBU_8interner10DbInternerEEEENtNtNtB2q_3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i)
          to label %.body.i unwind label %bb.ae, !noalias !8362

bb.ae:                                            ; preds = %bb.ad
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !8362
  unreachable

bb.af:                                            ; preds = %bb.ab
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !8362
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15FulfillmentCtxtEBH_.exit.i66.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtBU_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtBU_8interner10DbInternerEEEENtNtNtB2q_3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxt14ObligationCtxtEBH_.exit70.i unwind label %bb.g, !noalias !8362

.lr.ph.i:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorEEB1e_.exit.i, %bb.ar
  %.sroa.022.0136.i = phi i64 [ %i.de, %bb.ar ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15NextSolverErrorEEB1e_.exit.i ] ; 2 uses
  %i.de = add nuw nsw i64 %.sroa.022.0136.i, 1    ; 2 uses
  %i.df = trunc i64 %.sroa.022.0136.i to i32
  %i.dg = invoke { i64, ptr } @_RNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB2_8ArenaMapINtB4_3IdxNtNtCs8K4cjrcxBsw_6hir_ty5lower9ImplTraitEINtNtNtBY_11next_solver6binder17StoredEarlyBinderNtNtB1F_2ty8StoredTyEE5entryBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, i32 noundef %i.df)
          to label %bb.ag unwind label %.loopexit.i, !noalias !8362 ; 2 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxt14ObligationCtxtEBH_.exit70.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15FulfillmentCtxtEBH_.exit.i66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !8364
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtEBH_(ptr noalias nofree noundef align 8 dereferenceable(544) %i.aa), !noalias !8362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8364
  br label %_RNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty7opaquess_1__NtB7_32tait_hidden_types_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_.exit

bb.ag:                                            ; preds = %.lr.ph.i
  %i.dh = extractvalue { i64, ptr } %i.dg, 0
  %i.di = extractvalue { i64, ptr } %i.dg, 1      ; 10 uses
  %i.dj = trunc nuw i64 %i.dh to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.di) ]
  br i1 %i.dj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dk = load ptr, ptr %i.di, align 8, !noalias !8362, !noundef !18 ; 2 uses
  %.not26.i = icmp eq ptr %i.dk, null
  br i1 %.not26.i, label %bb.as, label %bb.au, !prof !41

bb.ai:                                            ; preds = %bb.ag
  %i.dl = invoke noundef nonnull ptr @_RNvXsb_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent2TyNtNtB7_8interner10DbInternerE9new_error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.o)
          to label %bb.aj unwind label %.loopexit.i, !noalias !8362 ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8364
  %i.dm = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataBT_(ptr noundef nonnull %i.dl)
          to label %.noexc71.i unwind label %.loopexit.i, !noalias !8362

.noexc71.i:                                       ; preds = %bb.aj
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %i.dn ; 4 uses
  store ptr %i.do, ptr %i.g, align 8, !noalias !8364
  %i.dp = atomicrmw add ptr %i.do, i64 1 monotonic, align 8, !noalias !8362
  %i.dq = icmp slt i64 %i.dp, 0
  br i1 %i.dq, label %bb.ak, label %bb.ao, !prof !41

bb.ak:                                            ; preds = %.noexc71.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #46
          to label %bb.am unwind label %bb.al, !noalias !8362

bb.al:                                            ; preds = %bb.ak
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body62.i unwind label %bb.an, !noalias !8362

bb.am:                                            ; preds = %bb.ak
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !8362
  unreachable

bb.ao:                                            ; preds = %.noexc71.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8364
  %i.dt = load ptr, ptr %i.di, align 8, !alias.scope !8380, !noalias !8362, !noundef !18
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtBM_2ty8StoredTyEE6insertBO_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtBM_2ty8StoredTyEE6insertBO_.exit.i unwind label %bb.aq, !noalias !8362

bb.aq:                                            ; preds = %bb.ap
  %i.dv = landingpad { ptr, i32 }
          cleanup
  store ptr %i.do, ptr %i.di, align 8, !alias.scope !8381, !noalias !8362
  br label %.body62.i

_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtBM_2ty8StoredTyEE6insertBO_.exit.i: ; preds = %bb.ap, %bb.ao
  store ptr %i.do, ptr %i.di, align 8, !alias.scope !8381, !noalias !8362
  br label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtBG_2ty8StoredTyEEBI_.exit.i, %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtBM_2ty8StoredTyEE6insertBO_.exit.i
  %exitcond.not.i = icmp eq i64 %i.de, %.val39.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.as:                                            ; preds = %bb.ah
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @497, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @499) #46
          to label %bb.at unwind label %.loopexit.split-lp.i, !noalias !8362

bb.at:                                            ; preds = %bb.cb, %bb.bd, %bb.as
  unreachable

bb.au:                                            ; preds = %bb.ah
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dx = invoke noundef nonnull ptr @_RINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB6_9InferCtxt24resolve_vars_if_possibleNtNtB8_2ty2TyEBa_(ptr noundef nonnull align 8 %i.aa, ptr noundef nonnull %i.dw)
          to label %bb.av unwind label %.loopexit.i, !noalias !8362

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !8364
  %i.dy = invoke noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty24replace_infer_with_error(ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.n)
          to label %bb.aw unwind label %.loopexit.i, !noalias !8362 ; 2 uses

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8364
  %i.dz = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataBT_(ptr noundef nonnull %i.dy)
          to label %.noexc77.i unwind label %.loopexit.i, !noalias !8362

.noexc77.i:                                       ; preds = %bb.aw
  %i.ea = sub nsw i64 0, %i.dz
  %i.eb = getelementptr inbounds i8, ptr %i.dy, i64 %i.ea ; 5 uses
  store ptr %i.eb, ptr %i.f, align 8, !noalias !8364
  %i.ec = atomicrmw add ptr %i.eb, i64 1 monotonic, align 8, !noalias !8362
  %i.ed = icmp slt i64 %i.ec, 0
  br i1 %i.ed, label %bb.ax, label %bb.bb, !prof !41

bb.ax:                                            ; preds = %.noexc77.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #46
          to label %bb.az unwind label %bb.ay, !noalias !8362

bb.ay:                                            ; preds = %bb.ax
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body62.i unwind label %bb.ba, !noalias !8362

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !8362
  unreachable

bb.bb:                                            ; preds = %.noexc77.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8364
  store ptr %i.eb, ptr %i.q, align 8, !noalias !8364
  %i.eg = load ptr, ptr %i.di, align 8, !noalias !8362, !noundef !18
  %.not27.i = icmp eq ptr %i.eg, null
  br i1 %.not27.i, label %bb.bd, label %bb.bc, !prof !41

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtBG_2ty8StoredTyEEBI_.exit.i unwind label %bb.be, !noalias !8362

bb.bd:                                            ; preds = %bb.bb
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @497, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @500) #46
          to label %bb.at unwind label %bb.bf, !noalias !8362

bb.be:                                            ; preds = %bb.bc
  %i.eh = landingpad { ptr, i32 }
          cleanup
  store ptr %i.eb, ptr %i.di, align 8, !noalias !8362
  br label %.body62.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtBG_2ty8StoredTyEEBI_.exit.i: ; preds = %bb.bc
  store ptr %i.eb, ptr %i.di, align 8, !noalias !8362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8364
  br label %bb.ar

bb.bf:                                            ; preds = %bb.bd
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.body62.i unwind label %bb.bg, !noalias !8362

bb.bg:                                            ; preds = %bb.ch, %bb.bf, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtB1z_2ty8StoredTyEEEEB1B_.exit.i.i, %.body86.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfill15FulfillmentCtxtEBH_.exit.i.i, %.body.i
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body44.i

.body44.i:                                        ; preds = %bb.cg, %bb.bg, %bb.v, %bb.j, %bb.h
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !8362
  unreachable

bb.bh:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8364
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ct, i64 264
  invoke void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIdNtNtNtBR_11next_solver2ty8StoredTyNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterBR_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ek)
          to label %bb.bi unwind label %.loopexit.split-lp117.loopexit.i, !noalias !8362

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !8364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !8364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8364
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.bi
  %i.el = invoke { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIdNtNtNtBO_11next_solver2ty8StoredTyENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %bb.bj unwind label %.loopexit116.i, !noalias !8362 ; 2 uses

bb.bj:                                            ; preds = %.backedge.i
  %i.em = extractvalue { ptr, ptr } %i.el, 0      ; 3 uses
  %i.en = extractvalue { ptr, ptr } %i.el, 1      ; 2 uses
  %.not29.i = icmp eq ptr %i.em, null
  br i1 %.not29.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eo = load i32, ptr %i.em, align 4, !range !35, !noalias !8362, !noundef !18
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !noalias !8362, !noundef !18
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.en) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !8364
  invoke void @_RINvMs9_NvNtCs8K4cjrcxBsw_6hir_ty2db1__NtB8_18InternedOpaqueTyId3locDNtB8_11HirDatabaseEL_EBa_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.s, i32 noundef %i.eo, i32 noundef %i.eq, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2)
          to label %bb.bm unwind label %.loopexit116.i, !noalias !8362

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !8364
  %i.er = icmp eq ptr %i.cs, %i.ci
  br i1 %i.er, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i

bb.bm:                                            ; preds = %bb.bk
  %i.es = load i32, ptr %i.s, align 4, !range !40, !noalias !8364, !noundef !18
  %i.et = trunc nuw i32 %i.es to i1
  br i1 %i.et, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %6 = load i32, ptr %i.ck, align 4, !range !35, !noalias !8364, !noundef !18
  %i.eu = load i32, ptr %5, align 4, !noalias !8364, !noundef !18
  %7 = load i32, ptr %i.cl, align 4, !noalias !8364, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8364
  %8 = icmp eq i32 %i.eu, %4
  %.not30.i = icmp eq i32 %6, %3
  %or.cond.i = and i1 %.not30.i, %8
  br i1 %or.cond.i, label %bb.bp, label %.backedge.i.backedge

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8364
  br label %.backedge.i.backedge

bb.bp:                                            ; preds = %bb.bn
  %.val.i = load ptr, ptr %i.en, align 8, !noalias !8362, !nonnull !18, !noundef !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.ew = invoke noundef nonnull ptr @_RINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB6_9InferCtxt16insert_type_varsNtNtB8_2ty2TyEBa_(ptr noundef nonnull align 8 %i.aa, ptr noundef nonnull %i.ev)
          to label %bb.bq unwind label %.loopexit116.i, !noalias !8362 ; 3 uses

bb.bq:                                            ; preds = %bb.bp
  %i.ex = invoke { i64, ptr } @_RNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB2_8ArenaMapINtB4_3IdxNtNtCs8K4cjrcxBsw_6hir_ty5lower9ImplTraitEINtNtNtBY_11next_solver6binder17StoredEarlyBinderNtNtB1F_2ty8StoredTyEE5entryBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, i32 noundef %7)
          to label %bb.br unwind label %.loopexit116.i, !noalias !8362 ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.ey = extractvalue { i64, ptr } %i.ex, 0
  %i.ez = extractvalue { i64, ptr } %i.ex, 1      ; 6 uses
  %i.fa = trunc nuw i64 %i.ey to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ez) ]
  br i1 %i.fa, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.fb = load ptr, ptr %i.ez, align 8, !noalias !8362, !noundef !18 ; 2 uses
  %.not31.i = icmp eq ptr %i.fb, null
  br i1 %.not31.i, label %bb.cb, label %bb.cc, !prof !41

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8364
  %i.fc = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataBT_(ptr noundef nonnull %i.ew)
          to label %.noexc85.i unwind label %.loopexit116.i, !noalias !8362

.noexc85.i:                                       ; preds = %bb.bt
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr inbounds i8, ptr %i.ew, i64 %i.fd ; 4 uses
  store ptr %i.fe, ptr %i.e, align 8, !noalias !8364
  %i.ff = atomicrmw add ptr %i.fe, i64 1 monotonic, align 8, !noalias !8362
  %i.fg = icmp slt i64 %i.ff, 0
  br i1 %i.fg, label %bb.bu, label %bb.by, !prof !41

bb.bu:                                            ; preds = %.noexc85.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #46
          to label %bb.bw unwind label %bb.bv, !noalias !8362

bb.bv:                                            ; preds = %bb.bu
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body86.i unwind label %bb.bx, !noalias !8362

bb.bw:                                            ; preds = %bb.bu
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !8362
  unreachable

bb.by:                                            ; preds = %.noexc85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8364
  %i.fj = load ptr, ptr %i.ez, align 8, !alias.scope !8382, !noalias !8362, !noundef !18
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtBM_2ty8StoredTyEE6insertBO_.exit91.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ez)
          to label %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtBM_2ty8StoredTyEE6insertBO_.exit91.i unwind label %bb.ca, !noalias !8362

bb.ca:                                            ; preds = %bb.bz
  %i.fl = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fe, ptr %i.ez, align 8, !alias.scope !8383, !noalias !8362
  br label %.body86.i

_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtBM_2ty8StoredTyEE6insertBO_.exit91.i: ; preds = %bb.bz, %bb.by
  store ptr %i.fe, ptr %i.ez, align 8, !alias.scope !8383, !noalias !8362
  br label %.backedge.i.backedge

bb.cb:                                            ; preds = %bb.bs
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @497, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @499) #46
          to label %bb.at unwind label %.loopexit.split-lp117.loopexit.split-lp.i, !noalias !8362

bb.cc:                                            ; preds = %bb.bs
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8384)
  call void @llvm.experimental.noalias.scope.decl(metadata !8385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8386
  %i.fn = load ptr, ptr %i.bc, align 8, !alias.scope !8384, !noalias !8387, !nonnull !18, !align !26, !noundef !18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8388
  %i.fo = load i32, ptr %i.x, align 4, !range !23, !alias.scope !8385, !noalias !8389, !noundef !18
  %i.fp = load i32, ptr %i.cm, align 4, !alias.scope !8385, !noalias !8389
  invoke void @_RINvXNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate15solver_relatingNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtB3_9RelateExt6relateNtNtB18_2ty2TyEB1a_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noundef nonnull align 8 %i.fn, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.fm, i8 noundef 1, ptr noundef nonnull %i.ew, i32 noundef %i.fo, i32 %i.fp)
          to label %.noexc93.i unwind label %.loopexit116.i, !noalias !8362

.noexc93.i:                                       ; preds = %bb.cc
  %i.fq = load i8, ptr %i.c, align 8, !range !29, !noalias !8388, !noundef !18
  %.not.i.i.i = icmp eq i8 %i.fq, -1
  br i1 %.not.i.i.i, label %_RINvMs_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer2atNtB5_2At2eqNtNtB9_2ty2TyEBb_.exit.thread.i.i, label %_RINvMs_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer2atNtB5_2At2eqNtNtB9_2ty2TyEBb_.exit.i.i

_RINvMs_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer2atNtB5_2At2eqNtNtB9_2ty2TyEBb_.exit.thread.i.i: ; preds = %.noexc93.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cn, align 8, !noalias !8388
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !8388, !nonnull !18, !noundef !18 ; 3 uses
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !8388 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8390
  %i.fr = icmp ult i64 %.sroa.5.0.copyload.i.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %.sroa.5.0.copyload.i.i.i
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %i.b, align 8, !noalias !8390
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !8390
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !8390
  store ptr %i.fs, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !8390
  store ptr %i.fn, ptr %i.co, align 8, !noalias !8390
  store ptr %i.x, ptr %i.cp, align 8, !noalias !8390
  invoke void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtB1a_9predicate9PredicateEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve4GoalNtNtB1a_8interner10DbInternerB29_EENCNvMs_NtB18_2atNtB5R_2At20goals_to_obligations0EE9from_iterB1c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %.noexc94.i unwind label %.loopexit116.i, !noalias !8362

.noexc94.i:                                       ; preds = %_RINvMs_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer2atNtB5_2At2eqNtNtB9_2ty2TyEBb_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8388
  br label %bb.cd

_RINvMs_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer2atNtB5_2At2eqNtNtB9_2ty2TyEBb_.exit.i.i: ; preds = %.noexc93.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !8391
  %.pr.i.i = load i8, ptr %i.d, align 8, !noalias !8386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8388
  %.not.i92.i = icmp eq i8 %.pr.i.i, -1
  br i1 %.not.i92.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_RINvMs_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer2atNtB5_2At2eqNtNtB9_2ty2TyEBb_.exit.i.i, %.noexc94.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !noalias !8386
  invoke void @_RINvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_15FulfillmentCtxt30register_predicate_obligationsINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtB8_5infer6traits10ObligationNtNtB8_9predicate9PredicateEEEBa_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.y, ptr noundef nonnull align 8 %i.fn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc95.i unwind label %.loopexit116.i, !noalias !8362

.noexc95.i:                                       ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8392
  br label %bb.ce

bb.ce:                                            ; preds = %.noexc95.i, %_RINvMs_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer2atNtB5_2At2eqNtNtB9_2ty2TyEBb_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8386
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.ce, %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderNtNtBM_2ty8StoredTyEE6insertBO_.exit91.i, %bb.bo, %bb.bn
  br label %.backedge.i

bb.cf:                                            ; preds = %_RNvNtCs8K4cjrcxBsw_6hir_ty7opaques20tait_defining_bodies.exit.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.ch unwind label %bb.cg, !noalias !8362

bb.cg:                                            ; preds = %bb.cf
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body44.i unwind label %bb.ci, !noalias !8362

bb.ch:                                            ; preds = %bb.cf
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsileJQcQObtj_7hir_def13DefWithBodyIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsileJQcQObtj_7hir_def13DefWithBodyIdEECs8K4cjrcxBsw_6hir_ty.exit.i unwind label %bb.bg, !noalias !8362

bb.ci:                                            ; preds = %bb.cg
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !8362
  unreachable

bb.cj:                                            ; preds = %.body.i
  resume { ptr, i32 } %.pn32.pn.pn.pn.i

_RNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty7opaquess_1__NtB7_32tait_hidden_types_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_.exit: ; preds = %bb.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxt14ObligationCtxtEBH_.exit70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNtNtCs8K4cjrcxBsw_6hir_ty6layout6target1__NtB5_39target_data_layout_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration12values_equal(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8400)
  %i.a = load i64, ptr %0, align 8, !range !52, !alias.scope !8399, !noalias !8400, !noundef !18
  %i.b = icmp eq i64 %i.a, -1                     ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !52, !alias.scope !8400, !noalias !8399, !noundef !18
  %i.d = icmp eq i64 %i.c, -1                     ; 3 uses
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorENtNtB7_3cmp9PartialEq2eqCs8K4cjrcxBsw_6hir_ty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = tail call noundef zeroext i1 @_RNvXsf_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArceENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  br label %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorENtNtB7_3cmp9PartialEq2eqCs8K4cjrcxBsw_6hir_ty.exit

bb.d:                                             ; preds = %bb.b
  %i.i = xor i1 %i.d, true
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8402)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i8, ptr %i.j, align 8, !range !32, !alias.scope !8403, !noalias !8404, !noundef !18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i8, ptr %i.l, align 8, !range !32, !alias.scope !8404, !noalias !8403, !noundef !18
  %i.n = icmp eq i8 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorENtNtB7_3cmp9PartialEq2eqCs8K4cjrcxBsw_6hir_ty.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.p = load i8, ptr %i.o, align 2, !alias.scope !8403, !noalias !8404, !noundef !18
end_hunk_0
