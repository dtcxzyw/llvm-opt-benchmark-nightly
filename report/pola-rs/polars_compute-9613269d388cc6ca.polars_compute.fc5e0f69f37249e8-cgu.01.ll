Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.01?download=true
inline.NumInlined: 7771
inline.NumDeleted: 4184
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1d_INtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRyINtNtNtB1l_5slice4iter4IteryENtNtB2a_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to22primitive_to_primitiveyyE0ENCINvNtNtNtB2e_5array9primitive7mutable24extend_trusted_len_unzipB20_yyE0EE11spec_extendB4s_:bb.a
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !71890, !noalias !71842, !noundef !833
  %i.be = trunc i64 %i.ar to i8, !dbg !71891
  %i.bf = and i8 %i.be, 7, !dbg !71891
  %i.bg = shl nuw i8 1, %i.bf, !dbg !71891
  %i.bh = or i8 %i.bd, %i.bg, !dbg !71892
  store i8 %i.bh, ptr %i.bc, align 1, !dbg !71893, !noalias !71842
  br label %bb.k, !dbg !71894

bb.i:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71843), !dbg !71895
  %i.bi = load i64, ptr %i.f, align 8, !dbg !71896, !alias.scope !71843, !noalias !71841, !noundef !833 ; 3 uses
  %i.bj = and i64 %i.bi, 7, !dbg !71897
  %i.bk = icmp eq i64 %i.bj, 0, !dbg !71897
  br i1 %i.bk, label %bb.j, label %._crit_edge.i4.i.i.i, !dbg !71896

._crit_edge.i4.i.i.i:                             ; preds = %bb.i
  %.pre.i6.i.i.i = load i64, ptr %.phi.trans.insert.i5.i.i.i, align 8, !dbg !71898, !alias.scope !71843, !noalias !71841
  %.pre3.i8.i.i.i = load ptr, ptr %.phi.trans.insert2.i7.i.i.i, align 8, !dbg !71899, !alias.scope !71843, !noalias !71841
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit11.i.i.i, !dbg !71896

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %.phi.trans.insert2.i7.i.i.i, align 8, !dbg !71900, !alias.scope !71843, !noalias !71841, !nonnull !833, !noundef !833 ; 2 uses
  %i.bm = load i64, ptr %.phi.trans.insert.i5.i.i.i, align 8, !dbg !71901, !alias.scope !71843, !noalias !71841, !noundef !833 ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, -1, !dbg !71902
  tail call void @llvm.assume(i1 %i.bn), !dbg !71903
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm, !dbg !71904
  store i8 0, ptr %i.bo, align 1, !dbg !71905, !noalias !71844
  %i.bp = add nuw i64 %i.bm, 1, !dbg !71906       ; 2 uses
  store i64 %i.bp, ptr %.phi.trans.insert.i5.i.i.i, align 8, !dbg !71907, !alias.scope !71843, !noalias !71841
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit11.i.i.i, !dbg !71908

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit11.i.i.i: ; preds = %bb.j, %._crit_edge.i4.i.i.i
  %i.bq = phi ptr [ %.pre3.i8.i.i.i, %._crit_edge.i4.i.i.i ], [ %i.bl, %bb.j ], !dbg !71899
  %i.br = phi i64 [ %.pre.i6.i.i.i, %._crit_edge.i4.i.i.i ], [ %i.bp, %bb.j ], !dbg !71898
  %i.bs = getelementptr i8, ptr %i.bq, i64 %i.br, !dbg !71899
  %i.bt = getelementptr i8, ptr %i.bs, i64 -1, !dbg !71899 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !dbg !71909, !noalias !71844, !noundef !833
  %i.bv = trunc i64 %i.bi to i8, !dbg !71910
  %i.bw = and i8 %i.bv, 7, !dbg !71910
  %i.bx = shl nuw i8 1, %i.bw, !dbg !71910
  %i.by = xor i8 %i.bx, -1, !dbg !71911
  %i.bz = and i8 %i.bu, %i.by, !dbg !71912
  store i8 %i.bz, ptr %i.bt, align 1, !dbg !71913, !noalias !71844
  br label %bb.k, !dbg !71914

bb.k:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit11.i.i.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit.i.i.i
  %i.ca = phi ptr [ %i.ak, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit.i.i.i ], [ %i.ab, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit11.i.i.i ] ; 2 uses
  %i.cb = phi i64 [ %i.al, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit.i.i.i ], [ %i.ac, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit11.i.i.i ]
  %.pre.i.i.i.i.i12.i = phi i64 [ %.pre.i.i.i.i.i13.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit.i.i.i ], [ %.pre.i.i.i.i.i14.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit11.i.i.i ]
  %i.cc = phi i64 [ %i.am, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit.i.i.i ], [ %i.ad, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit11.i.i.i ]
  %i.cd = phi ptr [ %i.an, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit.i.i.i ], [ %i.l, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit11.i.i.i ] ; 3 uses
  %i.ce = phi ptr [ %i.ao, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit.i.i.i ], [ %i.m, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit11.i.i.i ]
  %i.cf = phi ptr [ %i.ap, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit.i.i.i ], [ %spec.select.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit11.i.i.i ] ; 3 uses
  %.sink1.i.i.i = phi i64 [ %i.ar, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit.i.i.i ], [ %i.bi, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit11.i.i.i ]
  %.sroa.02.0.i.i.i = phi i64 [ %i.aq, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit.i.i.i ], [ 0, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14push_unchecked.exit11.i.i.i ], !dbg !71915
  %i.cg = add i64 %.sink1.i.i.i, 1, !dbg !71916
  store i64 %i.cg, ptr %i.f, align 8, !dbg !71916, !noalias !71841
  %i.ch = load i64, ptr %i.g, align 8, !dbg !71917, !alias.scope !71834, !noundef !833 ; 5 uses
  %i.ci = icmp ult i64 %i.ch, 1152921504606846976, !dbg !71918
  tail call void @llvm.assume(i1 %i.ci), !dbg !71919
  %i.cj = load i64, ptr %0, align 8, !dbg !71920, !range !856, !alias.scope !71834, !noundef !833
  %i.ck = icmp eq i64 %i.ch, %i.cj, !dbg !71921
  br i1 %i.ck, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecyE7reserveCslFlrwjHoTci_14polars_compute.exit.i, label %bb.l, !dbg !71921

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecyE7reserveCslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.k
  %.not.i.i.i6.i = icmp eq ptr %i.cf, null, !dbg !71922 ; 2 uses
  %.val1.sink.i.i.i.i = select i1 %.not.i.i.i6.i, ptr %i.ca, ptr %i.cd, !dbg !71923
  %.val.sink.i.i.i.i = select i1 %.not.i.i.i6.i, ptr %i.cd, ptr %i.cf, !dbg !71923
  %i.cl = ptrtoint ptr %.val1.sink.i.i.i.i to i64, !dbg !71924
  %i.cm = ptrtoint ptr %.val.sink.i.i.i.i to i64, !dbg !71924
  %i.cn = sub nuw i64 %i.cl, %i.cm, !dbg !71924
  %.sink4.i.i.i.i = lshr exact i64 %i.cn, 3, !dbg !71924
  %i.co = add nuw nsw i64 %.sink4.i.i.i.i, 1, !dbg !71925
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ch, i64 noundef %i.co, i64 noundef 8, i64 noundef 8), !dbg !71926, !noalias !71835
  br label %bb.l, !dbg !71927

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecyE7reserveCslFlrwjHoTci_14polars_compute.exit.i, %bb.k
  %i.cp = load ptr, ptr %i.h, align 8, !dbg !71928, !alias.scope !71834, !nonnull !833, !noundef !833
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ch, !dbg !71929
  store i64 %.sroa.02.0.i.i.i, ptr %i.cq, align 8, !dbg !71930, !noalias !71835
  %i.cr = add nuw nsw i64 %i.ch, 1, !dbg !71931
  store i64 %i.cr, ptr %i.g, align 8, !dbg !71932, !alias.scope !71834
  br label %bb.b, !dbg !71847

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB11_INtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRyINtNtNtB19_5slice4iter4IteryENtNtB1Y_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to22primitive_to_primitiveyyE0ENCINvNtNtNtB22_5array9primitive7mutable24extend_trusted_len_unzipB1O_yyE0EEB4g_.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %bb.e
  ret void, !dbg !71933
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB2q_3map3MapINtNtB2q_3zip3ZipINtNtNtB2u_5slice4iter4IterBU_EIB3O_NtNtNtB1h_9datatypes5field5FieldEENCNvNtCslFlrwjHoTci_14polars_compute4cast11cast_struct0EINtNtB2u_6result6ResultNtNtB2u_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE9from_iterB51_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !71934 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72009), !dbg !72017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !72018, !noalias !72010
  %i.f = tail call { ptr, ptr } @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIB1u_NtNtNtB2x_9datatypes5field5FieldEENCNvNtCslFlrwjHoTci_14polars_compute4cast11cast_struct0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB3Z_(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !dbg !72019, !noalias !72009 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0, !dbg !72020 ; 3 uses
  %.not.i = icmp eq ptr %i.g, null, !dbg !72020
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !72021

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.f, 1, !dbg !72020 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !72022, !noalias !72010
  invoke void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIB1u_NtNtNtB2x_9datatypes5field5FieldEENCNvNtCslFlrwjHoTci_14polars_compute4cast11cast_struct0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
          to label %bb.e unwind label %bb.d, !dbg !72023, !noalias !72009

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !72024, !alias.scope !72009
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !72024
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !dbg !72024, !alias.scope !72009
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !72024
  store i64 0, ptr %i.j, align 8, !dbg !72024, !alias.scope !72009
  br label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB2E_3map3MapINtNtB2E_3zip3ZipINtNtNtB2I_5slice4iter4IterB11_EIB42_NtNtNtB1o_9datatypes5field5FieldEENCNvNtCslFlrwjHoTci_14polars_compute4cast11cast_struct0EINtNtB2I_6result6ResultNtNtB2I_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE9from_iterB5g_.exit, !dbg !72025

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslFlrwjHoTci_14polars_compute(ptr nonnull %i.g, ptr nonnull %i.h) #25
          to label %bb.n unwind label %bb.m, !dbg !72026, !noalias !72009

bb.e:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.d, align 8, !dbg !72027, !noalias !72010, !noundef !833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !72028, !noalias !72010
  %i.m = tail call i64 @llvm.uadd.sat.i64(i64 %i.l, i64 1), !dbg !72029
  %.sroa.0.0.i.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.m, i64 4), !dbg !72030 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !72031, !noalias !72010
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc.i unwind label %bb.d, !dbg !72031, !noalias !72009

.noexc.i:                                         ; preds = %bb.e
  %i.n = load i64, ptr %i.b, align 8, !dbg !72031, !range !872, !noalias !72010, !noundef !833
  %i.o = trunc nuw i64 %i.n to i1, !dbg !72032
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !72033
  %i.q = load i64, ptr %i.p, align 8, !dbg !72033, !range !906, !noalias !72010, !noundef !833 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !72033 ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g, !dbg !72032, !prof !864

bb.f:                                             ; preds = %.noexc.i
  %i.s = load i64, ptr %i.r, align 8, !dbg !72034, !noalias !72010
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #21
          to label %.noexc10.i unwind label %bb.d, !dbg !72035, !noalias !72009

.noexc10.i:                                       ; preds = %bb.f
  unreachable, !dbg !72035

bb.g:                                             ; preds = %.noexc.i
  %i.t = load ptr, ptr %i.r, align 8, !dbg !72036, !noalias !72010, !nonnull !833, !noundef !833 ; 3 uses
  %i.u = icmp ule i64 %.sroa.0.0.i.i, %i.q, !dbg !72037
  tail call void @llvm.assume(i1 %i.u), !dbg !72038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !72039, !noalias !72010
  store ptr %i.g, ptr %i.t, align 8, !dbg !72040, !noalias !72009
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !72040
  store ptr %i.h, ptr %i.v, align 8, !dbg !72040, !noalias !72009
  store i64 %i.q, ptr %i.e, align 8, !dbg !72041, !noalias !72010
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !72041 ; 2 uses
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72041, !noalias !72010
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !72041 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !dbg !72041, !noalias !72010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !72042, !noalias !72010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !dbg !72042, !noalias !72009
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72011), !dbg !72043
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72012), !dbg !72044
  %i.w = invoke { ptr, ptr } @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIB1u_NtNtNtB2x_9datatypes5field5FieldEENCNvNtCslFlrwjHoTci_14polars_compute4cast11cast_struct0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB3Z_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.noexc11.i unwind label %.loopexit.split-lp.i, !dbg !72045, !noalias !72009 ; 2 uses

.noexc11.i:                                       ; preds = %bb.g
  %i.x = extractvalue { ptr, ptr } %i.w, 0, !dbg !72046 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.x, null, !dbg !72046
  br i1 %.not11.i.i.i, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_10SpecExtendBR_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB2l_3map3MapINtNtB2l_3zip3ZipINtNtNtB2p_5slice4iter4IterBR_EIB3J_NtNtNtB1e_9datatypes5field5FieldEENCNvNtCslFlrwjHoTci_14polars_compute4cast11cast_struct0EINtNtB2p_6result6ResultNtNtB2p_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE11spec_extendB4W_.exit.i, label %.lr.ph.i.i.i, !dbg !72047

.lr.ph.i.i.i:                                     ; preds = %.noexc11.i, %.noexc12.i
  %i.y = phi ptr [ %i.ak, %.noexc12.i ], [ %i.x, %.noexc11.i ] ; 2 uses
  %i.z = phi { ptr, ptr } [ %i.aj, %.noexc12.i ], [ %i.w, %.noexc11.i ]
  %i.aa = extractvalue { ptr, ptr } %i.z, 1, !dbg !72046 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ab = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !dbg !72048, !alias.scope !72013, !noalias !72010, !noundef !833 ; 4 uses
  %i.ac = icmp ult i64 %i.ab, 576460752303423488, !dbg !72049
  call void @llvm.assume(i1 %i.ac), !dbg !72050
  %i.ad = load i64, ptr %i.e, align 8, !dbg !72051, !range !856, !alias.scope !72013, !noalias !72010, !noundef !833
  %i.ae = icmp eq i64 %i.ab, %i.ad, !dbg !72052
  br i1 %i.ae, label %bb.h, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !72052

bb.h:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !72053, !noalias !72014
  invoke void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIB1u_NtNtNtB2x_9datatypes5field5FieldEENCNvNtCslFlrwjHoTci_14polars_compute4cast11cast_struct0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c)
          to label %bb.j unwind label %bb.i, !dbg !72054, !noalias !72009

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i
  %i.af = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72055, !alias.scope !72013, !noalias !72010, !nonnull !833, !noundef !833
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ab, !dbg !72056 ; 2 uses
  store ptr %i.y, ptr %i.ag, align 8, !dbg !72057, !noalias !72009
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !72057
  store ptr %i.aa, ptr %i.ah, align 8, !dbg !72057, !noalias !72009
  %i.ai = add nuw nsw i64 %i.ab, 1, !dbg !72058
  store i64 %i.ai, ptr %.sroa.64.0..sroa_idx.i, align 8, !dbg !72059, !alias.scope !72013, !noalias !72010
  %i.aj = invoke { ptr, ptr } @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIB1u_NtNtNtB2x_9datatypes5field5FieldEENCNvNtCslFlrwjHoTci_14polars_compute4cast11cast_struct0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB3Z_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.noexc12.i unwind label %.loopexit.split-lp.i, !dbg !72045, !noalias !72009 ; 2 uses

.noexc12.i:                                       ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCslFlrwjHoTci_14polars_compute.exit.i.i.i
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !72046 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null, !dbg !72046
  br i1 %.not.i.i.i, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_10SpecExtendBR_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB2l_3map3MapINtNtB2l_3zip3ZipINtNtNtB2p_5slice4iter4IterBR_EIB3J_NtNtNtB1e_9datatypes5field5FieldEENCNvNtCslFlrwjHoTci_14polars_compute4cast11cast_struct0EINtNtB2p_6result6ResultNtNtB2p_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE11spec_extendB4W_.exit.i, label %.lr.ph.i.i.i, !dbg !72047

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECslFlrwjHoTci_14polars_compute(ptr nonnull %i.y, ptr nonnull %i.aa) #25
          to label %.body.i unwind label %bb.l, !dbg !72060, !noalias !72009

bb.j:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.a, align 8, !dbg !72061, !noalias !72014, !noundef !833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !72062, !noalias !72014
  %i.an = call i64 @llvm.uadd.sat.i64(i64 %i.am, i64 1), !dbg !72063 ; 2 uses
  %i.ao = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !dbg !72064, !alias.scope !72015, !noalias !72010, !noundef !833 ; 2 uses
  %i.ap = load i64, ptr %i.e, align 8, !dbg !72065, !range !856, !alias.scope !72015, !noalias !72010, !noundef !833
  %i.aq = sub i64 %i.ap, %i.ao, !dbg !72066
  %i.ar = icmp ugt i64 %i.an, %i.aq, !dbg !72067
  br i1 %i.ar, label %bb.k, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !72068, !prof !864

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ao, i64 noundef %i.an, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCslFlrwjHoTci_14polars_compute.exit.i.i.i unwind label %bb.i, !dbg !72069, !noalias !72009

bb.l:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !72070, !noalias !72009
  unreachable, !dbg !72070

.loopexit.split-lp.i:                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.al, %bb.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.e) #25
          to label %bb.n unwind label %bb.m, !dbg !72025, !noalias !72009

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_10SpecExtendBR_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB2l_3map3MapINtNtB2l_3zip3ZipINtNtNtB2p_5slice4iter4IterBR_EIB3J_NtNtNtB1e_9datatypes5field5FieldEENCNvNtCslFlrwjHoTci_14polars_compute4cast11cast_struct0EINtNtB2p_6result6ResultNtNtB2p_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE11spec_extendB4W_.exit.i: ; preds = %.noexc12.i, %.noexc11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !72071, !noalias !72010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !72072, !noalias !72016
  br label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB2E_3map3MapINtNtB2E_3zip3ZipINtNtNtB2I_5slice4iter4IterB11_EIB42_NtNtNtB1o_9datatypes5field5FieldEENCNvNtCslFlrwjHoTci_14polars_compute4cast11cast_struct0EINtNtB2I_6result6ResultNtNtB2I_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE9from_iterB5g_.exit, !dbg !72025

bb.m:                                             ; preds = %.body.i, %bb.d
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !72073, !noalias !72009
  unreachable, !dbg !72073

bb.n:                                             ; preds = %.body.i, %bb.d
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.k, %bb.d ]
  resume { ptr, i32 } %.pn.i, !dbg !72073

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB2E_3map3MapINtNtB2E_3zip3ZipINtNtNtB2I_5slice4iter4IterB11_EIB42_NtNtNtB1o_9datatypes5field5FieldEENCNvNtCslFlrwjHoTci_14polars_compute4cast11cast_struct0EINtNtB2I_6result6ResultNtNtB2I_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE9from_iterB5g_.exit: ; preds = %bb.c, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_10SpecExtendBR_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB2l_3map3MapINtNtB2l_3zip3ZipINtNtNtB2p_5slice4iter4IterBR_EIB3J_NtNtNtB1e_9datatypes5field5FieldEENCNvNtCslFlrwjHoTci_14polars_compute4cast11cast_struct0EINtNtB2p_6result6ResultNtNtB2p_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE11spec_extendB4W_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !72025, !noalias !72010
  ret void, !dbg !72074
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter7sources4once4OnceBU_EE9from_iterCslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !72075 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72129), !dbg !72137
  %i.b = icmp ne ptr %1, null, !dbg !72138        ; 2 uses
  %i.c = zext i1 %i.b to i64, !dbg !72138         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !72139, !noalias !72129
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc.i unwind label %bb.e, !dbg !72139, !noalias !72129

.noexc.i:                                         ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !dbg !72139, !range !872, !noalias !72129, !noundef !833
  %i.e = trunc nuw i64 %i.d to i1, !dbg !72140
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !72141
  %i.g = load i64, ptr %i.f, align 8, !dbg !72141, !range !906, !noalias !72129, !noundef !833 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !72141 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !72140, !prof !864

bb.b:                                             ; preds = %.noexc.i
  %i.i = load i64, ptr %i.h, align 8, !dbg !72142, !noalias !72129
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #21
          to label %.noexc5.i unwind label %bb.e, !dbg !72143, !noalias !72129

.noexc5.i:                                        ; preds = %bb.b
  unreachable, !dbg !72143

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %.noexc.i
  %i.j = load ptr, ptr %i.h, align 8, !dbg !72144, !noalias !72129, !nonnull !833, !noundef !833 ; 3 uses
  %i.k = icmp uge i64 %i.g, %i.c, !dbg !72145
  tail call void @llvm.assume(i1 %i.k), !dbg !72146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !72147, !noalias !72129
  br i1 %i.b, label %.lr.ph.split.us.i.i.i.i.i, label %_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter7sources4once4OnceB13_EE9from_iterCslFlrwjHoTci_14polars_compute.exit, !dbg !72148

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCslFlrwjHoTci_14polars_compute.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  store ptr %1, ptr %i.j, align 8, !dbg !72149, !noalias !72136
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !72149
  store ptr %2, ptr %i.l, align 8, !dbg !72149, !noalias !72136
  br label %_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter7sources4once4OnceB13_EE9from_iterCslFlrwjHoTci_14polars_compute.exit, !dbg !72148

bb.c:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !72150, !noalias !72129
  unreachable, !dbg !72150

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.n, !dbg !72150

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources4once4OnceINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECslFlrwjHoTci_14polars_compute(ptr %1, ptr %2) #25
          to label %bb.d unwind label %bb.c, !dbg !72151, !noalias !72129

_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter7sources4once4OnceB13_EE9from_iterCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCslFlrwjHoTci_14polars_compute.exit.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %.val9.i.i.i.i.i = phi i64 [ 1, %.lr.ph.split.us.i.i.i.i.i ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7reserveCslFlrwjHoTci_14polars_compute.exit.i.i.i ], !dbg !72152
  store i64 %i.g, ptr %0, align 8, !dbg !72153, !alias.scope !72129
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !72153
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !72153, !alias.scope !72129
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !72153
  store i64 %.val9.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !72153, !alias.scope !72129
  ret void, !dbg !72154
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCscgRAwXFJnXP_4core6option6OptionINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapINtNtNtBZ_3ops5range5RangejENCINvNtCslFlrwjHoTci_14polars_compute18horizontal_flatten41horizontal_flatten_unchecked_impl_genericINtNtB1R_4list9ListArrayxEEs_0EE9from_iterB47_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !72155 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72194), !dbg !72200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !72201, !noalias !72195
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !72202
  %.val.i = load i64, ptr %i.d, align 8, !dbg !72202, !alias.scope !72196, !noundef !833
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !72202
  %.val3.i = load i64, ptr %i.e, align 8, !dbg !72202, !alias.scope !72197, !noundef !833
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i, i64 %.val.i), !dbg !72203 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !72204, !noalias !72195
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !72204, !noalias !72195
  %i.f = load i64, ptr %i.b, align 8, !dbg !72204, !range !872, !noalias !72195, !noundef !833
  %i.g = trunc nuw i64 %i.f to i1, !dbg !72205
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !72206
  %i.i = load i64, ptr %i.h, align 8, !dbg !72206, !range !906, !noalias !72195, !noundef !833 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !72206 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCscgRAwXFJnXP_4core6option6OptionINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_3ops5range5RangejENCINvNtCslFlrwjHoTci_14polars_compute18horizontal_flatten41horizontal_flatten_unchecked_impl_genericINtNtB1D_4list9ListArrayxEEs_0EEB3M_.exit.i.i, !dbg !72205, !prof !864

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !72207, !noalias !72195
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21, !dbg !72208, !noalias !72195
  unreachable, !dbg !72208

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCscgRAwXFJnXP_4core6option6OptionINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_3ops5range5RangejENCINvNtCslFlrwjHoTci_14polars_compute18horizontal_flatten41horizontal_flatten_unchecked_impl_genericINtNtB1D_4list9ListArrayxEEs_0EEB3M_.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !72209, !noalias !72195, !nonnull !833, !noundef !833 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i.i, %i.i, !dbg !72210
  tail call void @llvm.assume(i1 %i.m), !dbg !72211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !72212, !noalias !72195
  store i64 %i.i, ptr %i.c, align 8, !dbg !72213, !noalias !72195
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !72213
  store ptr %i.l, ptr %i.n, align 8, !dbg !72213, !noalias !72195
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !72213 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !72213, !noalias !72195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !72214, !noalias !72198
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !72214
  store ptr %i.l, ptr %i.p, align 8, !dbg !72214, !noalias !72198
  store ptr %i.o, ptr %i.a, align 8, !dbg !72214, !noalias !72198
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !72214
  store i64 0, ptr %i.q, align 8, !dbg !72214, !noalias !72198
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtCslFlrwjHoTci_14polars_compute18horizontal_flatten41horizontal_flatten_unchecked_impl_genericINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callINtNtBc_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB36_5ArrayEL_EENCINvMsj_NtB5w_3vecINtB6r_3VecB55_E14extend_trustedBN_E0E0EB1w_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCscgRAwXFJnXP_4core6option6OptionINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCINvNtCslFlrwjHoTci_14polars_compute18horizontal_flatten41horizontal_flatten_unchecked_impl_genericINtNtB20_4list9ListArrayxEEs_0EE9from_iterB4p_.exit unwind label %bb.c, !dbg !72215, !noalias !72199

bb.c:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCscgRAwXFJnXP_4core6option6OptionINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_3ops5range5RangejENCINvNtCslFlrwjHoTci_14polars_compute18horizontal_flatten41horizontal_flatten_unchecked_impl_genericINtNtB1D_4list9ListArrayxEEs_0EEB3M_.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptionINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.c) #25
          to label %bb.e unwind label %bb.d, !dbg !72216, !noalias !72195

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !72217, !noalias !72195
  unreachable, !dbg !72217

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.r, !dbg !72217

_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCscgRAwXFJnXP_4core6option6OptionINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCINvNtCslFlrwjHoTci_14polars_compute18horizontal_flatten41horizontal_flatten_unchecked_impl_genericINtNtB20_4list9ListArrayxEEs_0EE9from_iterB4p_.exit: ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCscgRAwXFJnXP_4core6option6OptionINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_3ops5range5RangejENCINvNtCslFlrwjHoTci_14polars_compute18horizontal_flatten41horizontal_flatten_unchecked_impl_genericINtNtB1D_4list9ListArrayxEEs_0EEB3M_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !72218, !noalias !72198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !72219, !noalias !72194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !72216, !noalias !72195
  ret void, !dbg !72220
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCscgRAwXFJnXP_4core6option6OptionINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapINtNtNtBZ_3ops5range5RangejENCINvNtCslFlrwjHoTci_14polars_compute18horizontal_flatten41horizontal_flatten_unchecked_impl_genericNtNtB1R_15fixed_size_list18FixedSizeListArrayEs_0EE9from_iterB47_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !72221 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72260), !dbg !72266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !72267, !noalias !72261
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !72268
  %.val.i = load i64, ptr %i.d, align 8, !dbg !72268, !alias.scope !72262, !noundef !833
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !72268
  %.val3.i = load i64, ptr %i.e, align 8, !dbg !72268, !alias.scope !72263, !noundef !833
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i, i64 %.val.i), !dbg !72269 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !72270, !noalias !72261
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !72270, !noalias !72261
  %i.f = load i64, ptr %i.b, align 8, !dbg !72270, !range !872, !noalias !72261, !noundef !833
  %i.g = trunc nuw i64 %i.f to i1, !dbg !72271
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !72272
  %i.i = load i64, ptr %i.h, align 8, !dbg !72272, !range !906, !noalias !72261, !noundef !833 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !72272 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCscgRAwXFJnXP_4core6option6OptionINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_3ops5range5RangejENCINvNtCslFlrwjHoTci_14polars_compute18horizontal_flatten41horizontal_flatten_unchecked_impl_genericNtNtB1D_15fixed_size_list18FixedSizeListArrayEs_0EEB3M_.exit.i.i, !dbg !72271, !prof !864

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !72273, !noalias !72261
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21, !dbg !72274, !noalias !72261
  unreachable, !dbg !72274

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCscgRAwXFJnXP_4core6option6OptionINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_3ops5range5RangejENCINvNtCslFlrwjHoTci_14polars_compute18horizontal_flatten41horizontal_flatten_unchecked_impl_genericNtNtB1D_15fixed_size_list18FixedSizeListArrayEs_0EEB3M_.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !72275, !noalias !72261, !nonnull !833, !noundef !833 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i.i, %i.i, !dbg !72276
  tail call void @llvm.assume(i1 %i.m), !dbg !72277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !72278, !noalias !72261
  store i64 %i.i, ptr %i.c, align 8, !dbg !72279, !noalias !72261
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !72279
  store ptr %i.l, ptr %i.n, align 8, !dbg !72279, !noalias !72261
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !72279 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !72279, !noalias !72261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !72280, !noalias !72264
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !72280
  store ptr %i.l, ptr %i.p, align 8, !dbg !72280, !noalias !72264
  store ptr %i.o, ptr %i.a, align 8, !dbg !72280, !noalias !72264
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !72280
  store i64 0, ptr %i.q, align 8, !dbg !72280, !noalias !72264
end_hunk_0
