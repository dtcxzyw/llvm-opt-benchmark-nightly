Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_dev-369b8a68dc602b6c.ruff_dev.cde5d063d6a1afef-cgu.01?download=true
inline.NumInlined: 3314
inline.NumDeleted: 1340
begin_hunk_0_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2AWtUsOyxgP_3std4path7PathBufEINtB2_18SpecFromIterNestedB10_INtNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matches6ValuesB10_EE9from_iterCshFZivb7RUAJ_8ruff_dev:bb.a
bb.n:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECshFZivb7RUAJ_8ruff_dev.exit.i.i unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %.val.i.i = load i64, ptr %i.w, align 8, !alias.scope !6280, !noalias !6279, !noundef !10
  %i.ah = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.z, i64 noundef range(i64 1, 0) %i.ah, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2AWtUsOyxgP_3std4path7PathBufE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i unwind label %bb.n

bb.p:                                             ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECshFZivb7RUAJ_8ruff_dev.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs2AWtUsOyxgP_3std4path7PathBufE16extend_desugaredINtNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matches6ValuesBF_EECshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6278
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matches6ValuesNtNtCs2AWtUsOyxgP_3std4path7PathBufEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d)
          to label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2AWtUsOyxgP_3std4path7PathBufEINtB2_10SpecExtendBQ_INtNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matches6ValuesBQ_EE11spec_extendCshFZivb7RUAJ_8ruff_dev.exit unwind label %bb.q

bb.q:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs2AWtUsOyxgP_3std4path7PathBufE16extend_desugaredINtNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matches6ValuesBF_EECshFZivb7RUAJ_8ruff_dev.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECshFZivb7RUAJ_8ruff_dev.exit.i.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECshFZivb7RUAJ_8ruff_dev.exit.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2AWtUsOyxgP_3std4path7PathBufEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24) %i.g) #21
          to label %bb.s unwind label %bb.r

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2AWtUsOyxgP_3std4path7PathBufEINtB2_10SpecExtendBQ_INtNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matches6ValuesBQ_EE11spec_extendCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs2AWtUsOyxgP_3std4path7PathBufE16extend_desugaredINtNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matches6ValuesBF_EECshFZivb7RUAJ_8ruff_dev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.e

bb.r:                                             ; preds = %bb.f, %bb.t, %.body
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.s:                                             ; preds = %.body, %bb.t
  %.pn9 = phi { ptr, i32 } [ %.pn.ph, %bb.t ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn9

bb.t:                                             ; preds = %bb.b, %bb.f
  %.pn.ph = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.l, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matches6ValuesNtNtCs2AWtUsOyxgP_3std4path7PathBufEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(112) %1) #21
          to label %bb.s unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB1G_3str4iter5LinesNvMB2p_e8trim_endEE9from_iterCshFZivb7RUAJ_8ruff_dev(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5LinesNvMB10_e8trim_endENtNtNtB9_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(72) %1) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.g = load i64, ptr %i.a, align 8, !range !30, !noundef !10
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !50, !noundef !10 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshFZivb7RUAJ_8ruff_dev.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #23
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.n = icmp ugt i64 %i.j, 3
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.f, ptr %i.o, align 8
  store i64 %i.j, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.p = invoke fastcc { ptr, i64 } @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5LinesNvMB10_e8trim_endENtNtNtB9_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshFZivb7RUAJ_8ruff_dev.exit
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 2 uses
  %.not8.i.i = icmp eq ptr %i.q, null
  br i1 %.not8.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB1n_3str4iter5LinesNvMB26_e8trim_endEE11spec_extendCshFZivb7RUAJ_8ruff_dev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc10
  %.pn.i.i = phi { ptr, i64 } [ %i.ab, %.noexc10 ], [ %i.p, %.noexc ]
  %i.r = phi ptr [ %i.ac, %.noexc10 ], [ %i.q, %.noexc ]
  %i.s = extractvalue { ptr, i64 } %.pn.i.i, 1
  %i.t = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !6287, !noalias !6288, !noundef !10 ; 5 uses
  %i.u = icmp ult i64 %i.t, 576460752303423488
  call void @llvm.assume(i1 %i.u)
  %i.v = load i64, ptr %i.c, align 8, !range !22, !alias.scope !6287, !noalias !6288, !noundef !10
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i, label %.noexc9

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i: ; preds = %.lr.ph.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.t, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i, %.lr.ph.i.i
  %i.x = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6287, !noalias !6288, !nonnull !10, !noundef !10
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.t ; 2 uses
  store ptr %i.r, ptr %i.y, align 8, !noalias !6288
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.s, ptr %i.z, align 8, !noalias !6288
  %i.aa = add nuw nsw i64 %i.t, 1
  store i64 %i.aa, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !6287, !noalias !6288
  %i.ab = invoke fastcc { ptr, i64 } @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5LinesNvMB10_e8trim_endENtNtNtB9_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc10 unwind label %.loopexit ; 2 uses

.noexc10:                                         ; preds = %.noexc9
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB1n_3str4iter5LinesNvMB26_e8trim_endEE11spec_extendCshFZivb7RUAJ_8ruff_dev.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ae, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB1n_3str4iter5LinesNvMB26_e8trim_endEE11spec_extendCshFZivb7RUAJ_8ruff_dev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i, %.noexc9
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshFZivb7RUAJ_8ruff_dev.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECshFZivb7RUAJ_8ruff_dev.exit unwind label %bb.g

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB1n_3str4iter5LinesNvMB26_e8trim_endEE11spec_extendCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %.noexc10, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.f
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterIBR_NtNtB15_5codes4RuleEEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapNtB13_10LinterIterNCNvNtCshFZivb7RUAJ_8ruff_dev22generate_default_rules8generate0EE9from_iterB45_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6337)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6339)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6340
  store ptr %1, ptr %i.f, align 8, !noalias !6341
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !6342, !noalias !6343, !noundef !10 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !6342, !noalias !6343 ; 2 uses
  %i.m = add i64 %.promoted.i.i.i, 1              ; 2 uses
  %i.n = add i64 %i.m, %i.l
  %i.o = icmp ugt i64 %i.n, 59
  br i1 %i.o, label %.loopexit16, label %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i

_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i.i

_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %bb.c, %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i
  %i.q = phi i64 [ %i.m, %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i ], [ %i.t, %bb.c ] ; 3 uses
  %2 = phi i64 [ %.promoted.i.i.i, %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i ], [ %i.q, %bb.c ]
  store i64 %i.q, ptr %i.j, align 8, !alias.scope !6342, !noalias !6343
  %i.r = call noundef i8 @_RNvMs4_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIter3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i64 noundef %2), !noalias !6344 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i, label %.loopexit16, label %bb.b

bb.b:                                             ; preds = %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6345
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCshFZivb7RUAJ_8ruff_dev22generate_default_rules8generate0INtB7_5FnMutTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterEE8call_mutBU_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef range(i8 0, 59) %i.r), !noalias !6346
  %i.s = load i64, ptr %i.p, align 8, !range !12, !noalias !6345, !noundef !10 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.s, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6345
  %i.t = add i64 %i.q, 1                          ; 2 uses
  %i.u = add i64 %i.t, %i.l
  %i.v = icmp ugt i64 %i.u, 59
  br i1 %i.v, label %.loopexit16, label %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i.i

.loopexit16:                                      ; preds = %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6340
  store i64 0, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.x, align 8
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %.loopexit16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.e:                                             ; preds = %bb.g, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_5codes4RuleEEECshFZivb7RUAJ_8ruff_dev.exit unwind label %bb.p

bb.f:                                             ; preds = %bb.b
  %.sroa.010.0.copyload.i.i.i = load i64, ptr %i.e, align 8, !noalias !6347
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.711.0..sroa_idx.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6340
  store i64 %.sroa.010.0.copyload.i.i.i, ptr %i.h, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.f
  %i.z = load i64, ptr %i.d, align 8, !range !30, !noundef !10
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !50, !noundef !10 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %.noexc
  %i.ae = load i64, ptr %i.ad, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #23
          to label %.noexc6 unwind label %bb.e

.noexc6:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.af = load ptr, ptr %i.ad, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ag = icmp ugt i64 %i.ac, 3
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  store i64 %i.ac, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !6348)
  call void @llvm.experimental.noalias.scope.decl(metadata !6349)
  call void @llvm.experimental.noalias.scope.decl(metadata !6350)
  call void @llvm.experimental.noalias.scope.decl(metadata !6351)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6352)
  call void @llvm.experimental.noalias.scope.decl(metadata !6353)
  call void @llvm.experimental.noalias.scope.decl(metadata !6354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6355
  store ptr %i.g, ptr %i.b, align 8, !noalias !6356
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !6357, !noalias !6358, !noundef !10 ; 2 uses
  %.promoted.i.i.i16.i.i = load i64, ptr %i.ah, align 8, !alias.scope !6357, !noalias !6358 ; 2 uses
  %i.ak = add i64 %.promoted.i.i.i16.i.i, 1       ; 2 uses
  %i.al = add i64 %i.ak, %i.aj
  %i.am = icmp ugt i64 %i.al, 59
  br i1 %i.am, label %.loopexit, label %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i.lr.ph.i.i

_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i.lr.ph.i.i: ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.711.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i.i.i

_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i.i.i: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterIBu_NtNtBI_5codes4RuleEEE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i, %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i.lr.ph.i.i
  %3 = phi i64 [ %i.ak, %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i.lr.ph.i.i ], [ %i.bd, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterIBu_NtNtBI_5codes4RuleEEE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i ]
  %.promoted.i.i.i17.i.i = phi i64 [ %.promoted.i.i.i16.i.i, %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i.lr.ph.i.i ], [ %.promoted.i.i.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterIBu_NtNtBI_5codes4RuleEEE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i ]
  %i.ao = phi i64 [ %i.aj, %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i.lr.ph.i.i ], [ %i.bc, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterIBu_NtNtBI_5codes4RuleEEE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6359)
  call void @llvm.experimental.noalias.scope.decl(metadata !6360)
  call void @llvm.experimental.noalias.scope.decl(metadata !6361)
  br label %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i

_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %bb.j, %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i.i.i
  %i.ap = phi i64 [ %3, %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i.i.i ], [ %i.as, %bb.j ] ; 3 uses
  %4 = phi i64 [ %.promoted.i.i.i17.i.i, %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i.i.i ], [ %i.ap, %bb.j ]
  store i64 %i.ap, ptr %i.ah, align 8, !alias.scope !6362, !noalias !6358
  %i.aq = invoke noundef i8 @_RNvMs4_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIter3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah, i64 noundef %4)
          to label %.noexc8 unwind label %bb.o    ; 2 uses

.noexc8:                                          ; preds = %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i8 %i.aq, -1
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.noexc8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6363
  invoke void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCshFZivb7RUAJ_8ruff_dev22generate_default_rules8generate0INtB7_5FnMutTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterEE8call_mutBU_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef range(i8 0, 59) %i.aq)
          to label %.noexc9 unwind label %bb.o

.noexc9:                                          ; preds = %bb.i
  %i.ar = load i64, ptr %i.an, align 8, !range !12, !noalias !6363, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ar, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6363
  %i.as = add i64 %i.ap, 1                        ; 2 uses
  %i.at = add i64 %i.as, %i.ao
  %i.au = icmp ugt i64 %i.at, 59
  br i1 %i.au, label %.loopexit, label %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i

bb.k:                                             ; preds = %.noexc9
  %.sroa.010.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !6364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.711.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !6365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6366
  store i64 %.sroa.010.0.copyload.i.i.i.i.i, ptr %i.c, align 8, !noalias !6365
  store i64 %i.ar, ptr %.sroa.5.0..sroa_idx.i.i7, align 8, !noalias !6365
  %i.av = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !6367, !noalias !6368, !noundef !10 ; 5 uses
  %i.aw = icmp ult i64 %i.av, 288230376151711744
  call void @llvm.assume(i1 %i.aw)
  %i.ax = load i64, ptr %i.i, align 8, !range !22, !alias.scope !6367, !noalias !6368, !noundef !10
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.m, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterIBu_NtNtBI_5codes4RuleEEE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterIBu_NtNtBI_5codes4RuleEEE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i: ; preds = %bb.m, %bb.k
  %i.az = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6367, !noalias !6368, !nonnull !10, !noundef !10
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.bb = add nuw nsw i64 %i.av, 1
  store i64 %i.bb, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !6367, !noalias !6368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6365
  call void @llvm.experimental.noalias.scope.decl(metadata !6369)
  call void @llvm.experimental.noalias.scope.decl(metadata !6370)
  call void @llvm.experimental.noalias.scope.decl(metadata !6371)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6372
  store ptr %i.g, ptr %i.b, align 8, !noalias !6373
  %i.bc = load i64, ptr %i.ai, align 8, !alias.scope !6374, !noalias !6358, !noundef !10 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !6374, !noalias !6358 ; 2 uses
  %i.bd = add i64 %.promoted.i.i.i.i.i, 1         ; 2 uses
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = icmp ugt i64 %i.be, 59
  br i1 %i.bf, label %.loopexit, label %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i7)
          to label %.body unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.av, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterIBu_NtNtBI_5codes4RuleEEE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i unwind label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.o:                                             ; preds = %bb.i, %_RNvXs6_NtCsEhZmuQNqkz_11ruff_linter8registryNtB5_10LinterIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.bg, %bb.l ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterIBC_NtNtB1c_5codes4RuleEEEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24) %i.i) #21
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_5codes4RuleEEECshFZivb7RUAJ_8ruff_dev.exit unwind label %bb.p

.loopexit:                                        ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterIBu_NtNtBI_5codes4RuleEEE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i, %bb.j, %.noexc8, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.d

bb.p:                                             ; preds = %bb.e, %.body
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsEhZmuQNqkz_11ruff_linter8registry6LinterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_5codes4RuleEEECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.y, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERIBR_NtNtB1I_5codes4RuleEEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterB12_B2W_EE9from_iterCshFZivb7RUAJ_8ruff_dev(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixEINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1q_5codes4RuleEENtNtNtNtBP_4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.g, align 8, !noundef !10
  %i.h = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %.sroa.0.0.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.h, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.i = load i64, ptr %i.a, align 8, !range !30, !noundef !10
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !50, !noundef !10 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshFZivb7RUAJ_8ruff_dev.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #23
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.b
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.p = icmp ule i64 %.sroa.0.0.i, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.f, ptr %i.q, align 8
  store i64 %i.l, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6384)
  %i.r = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixEINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1q_5codes4RuleEENtNtNtNtBP_4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshFZivb7RUAJ_8ruff_dev.exit
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %.not8.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecTRINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERIBH_NtNtB1y_5codes4RuleEEEINtB2_10SpecExtendBQ_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterBS_B2M_EE11spec_extendCshFZivb7RUAJ_8ruff_dev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.noexc10, %.lr.ph.i.i
  %.pn.i.i = phi { ptr, ptr } [ %i.r, %.lr.ph.i.i ], [ %i.af, %.noexc10 ]
  %i.u = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.ag, %.noexc10 ]
  %i.v = extractvalue { ptr, ptr } %.pn.i.i, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !6385, !noalias !6386, !noundef !10 ; 5 uses
  %i.x = icmp ult i64 %i.w, 576460752303423488
  call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.c, align 8, !range !22, !alias.scope !6385, !noalias !6386, !noundef !10
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERIBu_NtNtB1l_5codes4RuleEEE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i, label %.noexc9

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERIBu_NtNtB1l_5codes4RuleEEE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i: ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.t, align 8, !alias.scope !6386, !noalias !6385, !noundef !10
  %i.aa = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.w, i64 noundef range(i64 1, 0) %i.aa, i64 noundef 8, i64 noundef 16)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERIBu_NtNtB1l_5codes4RuleEEE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i, %bb.d
  %i.ab = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6385, !noalias !6386, !nonnull !10, !noundef !10
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.w ; 2 uses
  store ptr %i.u, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.v, ptr %i.ad, align 8
  %i.ae = add nuw nsw i64 %i.w, 1
  store i64 %i.ae, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !6385, !noalias !6386
  %i.af = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixEINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1q_5codes4RuleEENtNtNtNtBP_4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc10 unwind label %.loopexit ; 2 uses

.noexc10:                                         ; preds = %.noexc9
  %i.ag = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecTRINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERIBH_NtNtB1y_5codes4RuleEEEINtB2_10SpecExtendBQ_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterBS_B2M_EE11spec_extendCshFZivb7RUAJ_8ruff_dev.exit, label %bb.d

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ai, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecTRINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERIBH_NtNtB1y_5codes4RuleEEEINtB2_10SpecExtendBQ_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterBS_B2M_EE11spec_extendCshFZivb7RUAJ_8ruff_dev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERIBu_NtNtB1l_5codes4RuleEEE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i, %.noexc9
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshFZivb7RUAJ_8ruff_dev.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtB7_3vec3VecNtNtB1t_5codes4RuleEEENtNtNtBS_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRINtNtB4_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERIBC_NtNtB1z_5codes4RuleEEEECshFZivb7RUAJ_8ruff_dev.exit unwind label %bb.h

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecTRINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERIBH_NtNtB1y_5codes4RuleEEEINtB2_10SpecExtendBQ_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterBS_B2M_EE11spec_extendCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %.noexc10, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRINtNtB4_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERIBC_NtNtB1z_5codes4RuleEEEECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyReE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6421)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6423
end_hunk_0
