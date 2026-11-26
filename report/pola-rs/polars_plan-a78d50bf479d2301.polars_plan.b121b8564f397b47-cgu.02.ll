Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.02?download=true
inline.NumInlined: 11832
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMsk_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtB5_7Builder3add:bb.a
  %i.enz = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !155042 ; 8 uses
  store i64 0, ptr %i.enz, align 8, !dbg !155042, !alias.scope !151510
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eny, i64 noundef range(i64 0, -9223372036854775808) %3), !dbg !155043, !noalias !151509
  %i.eoa = getelementptr inbounds nuw i8, ptr %2, i64 %3, !dbg !155044
  %i.eob = icmp samesign eq i64 %3, 0, !dbg !155045
  %.pre1590 = load i64, ptr %i.enz, align 8, !dbg !155046 ; 4 uses
  br i1 %i.eob, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder21prepare_decimal_comma.exit509, label %.lr.ph.i504, !dbg !155047

.lr.ph.i504:                                      ; preds = %bb.vh
  %i.eoc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %xtraiter = and i64 %3, 1, !dbg !155047
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !155047
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa, !dbg !155047

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i504
  %i.eod = getelementptr inbounds nuw i8, ptr %2, i64 1, !dbg !155048
  %i.eoe = load i8, ptr %2, align 1, !dbg !155049, !alias.scope !151509, !noundef !4701 ; 2 uses
  %i.eof = icmp eq i8 %i.eoe, 44, !dbg !155050
  %i.eog = load ptr, ptr %i.eoc, align 16, !dbg !155051, !alias.scope !151510, !nonnull !4701, !noundef !4701
  %i.eoh = icmp sgt i64 %.pre1590, -1, !dbg !155052
  tail call void @llvm.assume(i1 %i.eoh), !dbg !155053
  %i.eoi = getelementptr inbounds nuw i8, ptr %i.eog, i64 %.pre1590, !dbg !155054
  %..i506.prol = select i1 %i.eof, i8 46, i8 %i.eoe, !dbg !155055
  store i8 %..i506.prol, ptr %i.eoi, align 1, !dbg !155056, !noalias !151509
  %i.eoj = load i64, ptr %i.enz, align 8, !dbg !155057, !alias.scope !151510, !noundef !4701 ; 2 uses
  %i.eok = icmp sgt i64 %i.eoj, -1, !dbg !155058
  tail call void @llvm.assume(i1 %i.eok), !dbg !155059
  %storemerge.i507.prol = add nuw i64 %i.eoj, 1, !dbg !155060 ; 3 uses
  store i64 %storemerge.i507.prol, ptr %i.enz, align 8, !dbg !155061, !alias.scope !151510
  br label %.prol.loopexit, !dbg !155047

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i504
  %storemerge.i507.lcssa.unr = phi i64 [ poison, %.lr.ph.i504 ], [ %storemerge.i507.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i64 [ %.pre1590, %.lr.ph.i504 ], [ %storemerge.i507.prol, %.prol.loopexit.unr-lcssa ]
  %.sroa.0.02.i505.unr = phi ptr [ %2, %.lr.ph.i504 ], [ %i.eod, %.prol.loopexit.unr-lcssa ]
  %i.eol = icmp eq i64 %3, 1, !dbg !155047
  br i1 %i.eol, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder21prepare_decimal_comma.exit509, label %.lr.ph.i504.new, !dbg !155047

.lr.ph.i504.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i504.new
  %i.eom = phi i64 [ %storemerge.i507.1, %.lr.ph.i504.new ], [ %.unr, %.prol.loopexit ], !dbg !155062
  %.sroa.0.02.i505 = phi ptr [ %i.eou, %.lr.ph.i504.new ], [ %.sroa.0.02.i505.unr, %.prol.loopexit ] ; 3 uses
  %i.eon = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i505, i64 1, !dbg !155048
  %i.eoo = load i8, ptr %.sroa.0.02.i505, align 1, !dbg !155049, !alias.scope !151509, !noundef !4701 ; 2 uses
  %i.eop = icmp eq i8 %i.eoo, 44, !dbg !155050
  %i.eoq = load ptr, ptr %i.eoc, align 16, !dbg !155051, !alias.scope !151510, !nonnull !4701, !noundef !4701
  %i.eor = getelementptr inbounds nuw i8, ptr %i.eoq, i64 %i.eom, !dbg !155054
  %..i506 = select i1 %i.eop, i8 46, i8 %i.eoo, !dbg !155055
  store i8 %..i506, ptr %i.eor, align 1, !dbg !155056, !noalias !151509
  %i.eos = load i64, ptr %i.enz, align 8, !dbg !155057, !alias.scope !151510, !noundef !4701 ; 2 uses
  %i.eot = icmp sgt i64 %i.eos, -1, !dbg !155058
  tail call void @llvm.assume(i1 %i.eot), !dbg !155059
  %storemerge.i507 = add nuw i64 %i.eos, 1, !dbg !155060 ; 3 uses
  store i64 %storemerge.i507, ptr %i.enz, align 8, !dbg !155061, !alias.scope !151510
  %i.eou = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i505, i64 2, !dbg !155048 ; 2 uses
  %i.eov = load i8, ptr %i.eon, align 1, !dbg !155049, !alias.scope !151509, !noundef !4701 ; 2 uses
  %i.eow = icmp eq i8 %i.eov, 44, !dbg !155050
  %i.eox = load ptr, ptr %i.eoc, align 16, !dbg !155051, !alias.scope !151510, !nonnull !4701, !noundef !4701
  %i.eoy = icmp sgt i64 %storemerge.i507, -1, !dbg !155052
  tail call void @llvm.assume(i1 %i.eoy), !dbg !155053
  %i.eoz = getelementptr inbounds nuw i8, ptr %i.eox, i64 %storemerge.i507, !dbg !155054
  %..i506.1 = select i1 %i.eow, i8 46, i8 %i.eov, !dbg !155055
  store i8 %..i506.1, ptr %i.eoz, align 1, !dbg !155056, !noalias !151509
  %i.epa = load i64, ptr %i.enz, align 8, !dbg !155057, !alias.scope !151510, !noundef !4701 ; 2 uses
  %i.epb = icmp sgt i64 %i.epa, -1, !dbg !155058
  tail call void @llvm.assume(i1 %i.epb), !dbg !155059
  %storemerge.i507.1 = add nuw i64 %i.epa, 1, !dbg !155060 ; 3 uses
  store i64 %storemerge.i507.1, ptr %i.enz, align 8, !dbg !155061, !alias.scope !151510
  %i.epc = icmp eq ptr %i.eou, %i.eoa, !dbg !155045
  br i1 %i.epc, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder21prepare_decimal_comma.exit509, label %.lr.ph.i504.new, !dbg !155047

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder21prepare_decimal_comma.exit509: ; preds = %.prol.loopexit, %.lr.ph.i504.new, %bb.vh
  %i.epd = phi i64 [ %.pre1590, %bb.vh ], [ %storemerge.i507.lcssa.unr, %.prol.loopexit ], [ %storemerge.i507.1, %.lr.ph.i504.new ], !dbg !155046
  %i.epe = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !155063
  %i.epf = load ptr, ptr %i.epe, align 16, !dbg !155063, !nonnull !4701, !noundef !4701
  tail call fastcc void @_RNvXsb_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBZ_9datatypes11Float64TypeENtB5_13ParsedBuilder11parse_bytesCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 16 dereferenceable(176) %i.enx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.epf, i64 noundef %i.epd) #49, !dbg !155064
  br label %_RNvXsb_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBZ_9datatypes8Int8TypeENtB5_13ParsedBuilder11parse_bytesCsfcROwRM8ZtH_11polars_plan.exit, !dbg !155064

_RNvXsb_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBZ_9datatypes8Int8TypeENtB5_13ParsedBuilder11parse_bytesCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.sq, %bb.sp, %bb.so, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCsfcROwRM8ZtH_11polars_plan.exit.i446, %bb.se, %bb.sd, %bb.sc, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCsfcROwRM8ZtH_11polars_plan.exit.i438, %bb.ra, %_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE4pushAhj0_ECsfcROwRM8ZtH_11polars_plan.exit.i, %.loopexit38.i, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCsfcROwRM8ZtH_11polars_plan.exit28.i, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCsfcROwRM8ZtH_11polars_plan.exit.i, %_RNvXs4_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeNtB5_15PrimitiveParser5parse.exit.thread.i, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCsfcROwRM8ZtH_11polars_plan.exit32.i, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCsfcROwRM8ZtH_11polars_plan.exit.i, %.loopexit.i207, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCsfcROwRM8ZtH_11polars_plan.exit31.i, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCsfcROwRM8ZtH_11polars_plan.exit.i, %.loopexit.i175, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCsfcROwRM8ZtH_11polars_plan.exit31.i, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCsfcROwRM8ZtH_11polars_plan.exit.i, %.loopexit.i147, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCsfcROwRM8ZtH_11polars_plan.exit26.i, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCsfcROwRM8ZtH_11polars_plan.exit.i, %.loopexit.i91, %_RNvXsa_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB5_15PrimitiveParser5parse.exit.i, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCsfcROwRM8ZtH_11polars_plan.exit.i, %_RNvXs9_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeNtB5_15PrimitiveParser5parse.exit.thread.i, %_RNvXs9_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeNtB5_15PrimitiveParser5parse.exit.thread35.i, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCsfcROwRM8ZtH_11polars_plan.exit.i, %_RNvXs8_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeNtB5_15PrimitiveParser5parse.exit.thread.i, %_RNvXs8_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeNtB5_15PrimitiveParser5parse.exit.thread32.i, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCsfcROwRM8ZtH_11polars_plan.exit.i, %_RNvXs7_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeNtB5_15PrimitiveParser5parse.exit.thread.i, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCsfcROwRM8ZtH_11polars_plan.exit30.i, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCsfcROwRM8ZtH_11polars_plan.exit.i, %_RNvXs6_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeNtB5_15PrimitiveParser5parse.exit.thread.i, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCsfcROwRM8ZtH_11polars_plan.exit25.i, %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCsfcROwRM8ZtH_11polars_plan.exit.i, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder21prepare_decimal_comma.exit509, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder21prepare_decimal_comma.exit503, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder21prepare_decimal_comma.exit, %_RNvMse_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderINtB5_16CategoricalFieldNtNtCs1LHh8CLbVkQ_11polars_core9datatypes17Categorical32TypeE11parse_bytesCsfcROwRM8ZtH_11polars_plan.exit, %_RNvMse_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderINtB5_16CategoricalFieldNtNtCs1LHh8CLbVkQ_11polars_core9datatypes17Categorical16TypeE11parse_bytesCsfcROwRM8ZtH_11polars_plan.exit, %_RNvMse_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderINtB5_16CategoricalFieldNtNtCs1LHh8CLbVkQ_11polars_core9datatypes16Categorical8TypeE11parse_bytesCsfcROwRM8ZtH_11polars_plan.exit, %_RNvXsh_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtB5_12DecimalFieldNtB5_13ParsedBuilder11parse_bytes.exit, %bb.py, %bb.px, %bb.pw, %_RNvXsf_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder7boolean21BooleanChunkedBuilderNtB5_13ParsedBuilder11parse_bytes.exit
  ret void, !dbg !155065
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !2360 !guid !155094 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = ptrtoint ptr %2 to i64, !dbg !155103     ; 2 uses
  %i.c = and i64 %i.b, 1, !dbg !155104
  %.not = icmp eq i64 %i.c, 0, !dbg !155104
  %i.d = lshr i64 %i.b, 1, !dbg !155104           ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155096), !dbg !155105
  br i1 %.not, label %bb.e, label %bb.b, !dbg !155106

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155097), !dbg !155107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155098), !dbg !155108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155109, !noalias !155099
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !155109, !noalias !155099
  %i.e = load i64, ptr %i.a, align 8, !dbg !155109, !range !4743, !noalias !155099, !noundef !4701
  %i.f = trunc nuw i64 %i.e to i1, !dbg !155110
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !155111
  %i.h = load i64, ptr %i.g, align 8, !dbg !155111, !range !4744, !noalias !155099, !noundef !4701 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !155111 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i, !dbg !155110, !prof !4713

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !dbg !155112, !noalias !155099
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #46, !dbg !155113, !noalias !155099
  unreachable, !dbg !155113

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !dbg !155114, !noalias !155099, !nonnull !4701, !noundef !4701 ; 2 uses
  %i.l = icmp ule i64 %i.d, %i.h, !dbg !155115
  tail call void @llvm.assume(i1 %i.l), !dbg !155116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !155117, !noalias !155099
  %.not.i.i.i.i = icmp eq i64 %i.d, 0, !dbg !155118
  br i1 %.not.i.i.i.i, label %_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i, label %bb.d, !dbg !155118

bb.d:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !dbg !155119, !noalias !155100
  br label %_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !155120

_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.d, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i
  store i64 %i.h, ptr %0, align 8, !dbg !155121, !alias.scope !155101
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !155121
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !155121, !alias.scope !155101
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !155121
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !dbg !155121, !alias.scope !155101
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit, !dbg !155107

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !dbg !155122, !noalias !155102
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit, !dbg !155123

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i, %bb.e
  ret void, !dbg !155124
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef range(i64 2, 129) %0, i64 noundef range(i64 0, 6441) %1) unnamed_addr #2 !dbg !56 !guid !155131 {
bb.a:
  %i.a = icmp eq i64 %1, 0, !dbg !155134
  br i1 %i.a, label %_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, label %_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit, !dbg !155134

_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr, !dbg !155135
  br label %bb.c, !dbg !155136

_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit: ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !dbg !155137
  %i.c = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 6441) %1, i64 noundef range(i64 2, 129) %0) #48, !dbg !155138 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !155139
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !155136, !prof !4799

bb.b:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #46, !dbg !155140
  unreachable, !dbg !155140

bb.c:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, %_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  %.sroa.0.0.i4 = phi ptr [ %i.b, %_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread ], [ %i.c, %_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit ]
  ret ptr %.sroa.0.0.i4, !dbg !155141
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCshK0ivY6saku_5bytes5bytes11static_drop(ptr noalias nofree readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #10 !dbg !155142 !guid !155143 {
bb.a:
  ret void, !dbg !155144
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCshK0ivY6saku_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #12 !dbg !155145 !guid !155148 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !155150
  store ptr %2, ptr %i.a, align 8, !dbg !155150
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !155150
  store i64 %3, ptr %i.b, align 8, !dbg !155150
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !155150
  store ptr null, ptr %i.c, align 8, !dbg !155150
  store ptr @891, ptr %0, align 8, !dbg !155150
  ret void, !dbg !155151
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCshK0ivY6saku_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 !dbg !155152 !guid !155153 {
bb.a:
  ret i1 false, !dbg !155154
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNtCskjB2uxhiyiW_11fast_float26number12parse_number(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #15 personality ptr @rust_eh_personality !dbg !155155 !guid !155404 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !155504    ; 4 uses
  %i.b = icmp eq i64 %2, 0, !dbg !155504
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !155504

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17, !dbg !155505
  store i8 2, ptr %i.c, align 1, !dbg !155505
  br label %bb.d, !dbg !155506

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2, !dbg !155507 ; 20 uses
  %i.e = load i8, ptr %1, align 1, !dbg !155508, !noundef !4701
  switch i8 %i.e, label %.critedge2 [
    i8 45, label %bb.e
    i8 43, label %bb.h
  ], !dbg !155509

bb.d:                                             ; preds = %bb.q, %bb.w, %bb.i, %bb.f, %bb.y, %bb.b
  ret void, !dbg !155510

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !155511
  %i.g = icmp samesign eq i64 %2, 1, !dbg !155512
  br i1 %i.g, label %bb.f, label %.critedge2, !dbg !155513

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17, !dbg !155514
  store i8 2, ptr %i.h, align 1, !dbg !155514
  br label %bb.d, !dbg !155515

.critedge2:                                       ; preds = %bb.c, %bb.h, %bb.e
  %.sroa.0.079 = phi ptr [ %i.f, %bb.e ], [ %1, %bb.c ], [ %i.z, %bb.h ], !dbg !155516 ; 10 uses
  %.sroa.0.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.c ], [ 0, %bb.h ], !dbg !155517 ; 2 uses
  %.sroa.0.079128 = ptrtoaddr ptr %.sroa.0.079 to i64, !dbg !155518 ; 2 uses
  %i.i = icmp eq ptr %.sroa.0.079, %i.d, !dbg !155518 ; 2 uses
  br i1 %i.i, label %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %.lr.ph.i.preheader, !dbg !155519

_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %.critedge2
  %i.j = ptrtoint ptr %i.d to i64, !dbg !155520   ; 2 uses
  %i.k = ptrtoint ptr %.sroa.0.079 to i64, !dbg !155521
  %i.l = sub i64 %i.j, %i.k, !dbg !155522
  br label %.critedge4, !dbg !155523

.lr.ph.i.preheader:                               ; preds = %.critedge2
  %i.m = add i64 %2, %i.a, !dbg !155524
  %i.n = sub i64 %i.m, %.sroa.0.079128, !dbg !155524
  %scevgep = getelementptr i8, ptr %.sroa.0.079, i64 %i.n, !dbg !155524
  br label %.lr.ph.i, !dbg !155524

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.sroa.0.594 = phi i64 [ %i.t, %bb.g ], [ 0, %.lr.ph.i.preheader ], !dbg !155525 ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.q, %bb.g ], [ %.sroa.0.079, %.lr.ph.i.preheader ], !dbg !155525 ; 3 uses
  %i.o = load i8, ptr %.sroa.0.2, align 1, !dbg !155526, !noalias !155430, !noundef !4701
  %i.p = add i8 %i.o, -48, !dbg !155524           ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.p, 10, !dbg !155524
  br i1 %or.cond.i.i, label %bb.g, label %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !155524

bb.g:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 1, !dbg !155527 ; 2 uses
  %i.r = mul i64 %.sroa.0.594, 10, !dbg !155528
  %i.s = zext nneg i8 %i.p to i64, !dbg !155529
  %i.t = add i64 %i.r, %i.s, !dbg !155530         ; 2 uses
  %i.u = icmp eq ptr %i.q, %i.d, !dbg !155518
  br i1 %i.u, label %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i, !dbg !155519

_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.lr.ph.i, %bb.g
  %.sroa.0.695 = phi i64 [ %.sroa.0.594, %.lr.ph.i ], [ %i.t, %bb.g ], !dbg !155525 ; 5 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %.lr.ph.i ], [ %scevgep, %bb.g ], !dbg !155525 ; 7 uses
  %i.v = ptrtoint ptr %.sroa.0.3 to i64, !dbg !155520 ; 4 uses
  %i.w = ptrtoint ptr %.sroa.0.079 to i64, !dbg !155521
  %i.x = sub i64 %i.v, %i.w, !dbg !155522         ; 3 uses
  %i.y = icmp eq ptr %.sroa.0.3, %i.d, !dbg !155531
  br i1 %i.y, label %.critedge4, label %bb.j, !dbg !155523

bb.h:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !155532
  %i.aa = icmp samesign eq i64 %2, 1, !dbg !155533
  br i1 %i.aa, label %bb.i, label %.critedge2, !dbg !155534

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 17, !dbg !155535
  store i8 2, ptr %i.ab, align 1, !dbg !155535
  br label %bb.d, !dbg !155515

bb.j:                                             ; preds = %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit
  %i.ac = load i8, ptr %.sroa.0.3, align 1, !dbg !155536, !noundef !4701
  %i.ad = icmp eq i8 %i.ac, 46, !dbg !155537
  br i1 %i.ad, label %bb.k, label %.critedge4, !dbg !155538

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 1, !dbg !155539 ; 4 uses
  %i.af = ptrtoint ptr %i.d to i64, !dbg !155540  ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64, !dbg !155541 ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag, !dbg !155540      ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 7, !dbg !155542
  br i1 %i.ai, label %bb.l, label %_RNvNtCskjB2uxhiyiW_11fast_float26number17try_parse_8digits.exit, !dbg !155542

bb.l:                                             ; preds = %bb.k
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.ae, align 1, !dbg !155543, !noalias !155452 ; 2 uses
  %i.aj = add i64 %.sroa.01.0.copyload.i.i, 5063812098665367110, !dbg !155544
  %i.ak = add i64 %.sroa.01.0.copyload.i.i, -3472328296227680304, !dbg !155545 ; 3 uses
  %i.al = or i64 %i.aj, %i.ak, !dbg !155546
  %i.am = and i64 %i.al, -9187201950435737472, !dbg !155546
  %i.an = icmp eq i64 %i.am, 0, !dbg !155547
  br i1 %i.an, label %bb.m, label %_RNvNtCskjB2uxhiyiW_11fast_float26number17try_parse_8digits.exit, !dbg !155547

bb.m:                                             ; preds = %bb.l
  %i.ao = mul i64 %.sroa.0.695, 100000000, !dbg !155548
  %i.ap = mul i64 %i.ak, 10, !dbg !155549
  %i.aq = lshr i64 %i.ak, 8, !dbg !155550
  %i.ar = add i64 %i.ap, %i.aq, !dbg !155551      ; 2 uses
  %i.as = and i64 %i.ar, 1095216660735, !dbg !155552
  %i.at = mul i64 %i.as, 4294967296000100, !dbg !155553
  %i.au = lshr i64 %i.ar, 16, !dbg !155554
  %i.av = and i64 %i.au, 1095216660735, !dbg !155555
  %i.aw = mul i64 %i.av, 42949672960001, !dbg !155556
  %i.ax = add i64 %i.aw, %i.at, !dbg !155557
  %i.ay = lshr i64 %i.ax, 32, !dbg !155558
  %i.az = add i64 %i.ay, %i.ao, !dbg !155559      ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 9, !dbg !155560 ; 4 uses
  %i.bb = ptrtoint ptr %i.ba to i64, !dbg !155561
  %i.bc = sub i64 %i.af, %i.bb, !dbg !155562
  %i.bd = icmp sgt i64 %i.bc, 7, !dbg !155563
  br i1 %i.bd, label %bb.n, label %_RNvNtCskjB2uxhiyiW_11fast_float26number17try_parse_8digits.exit, !dbg !155563

bb.n:                                             ; preds = %bb.m
  %.sroa.01.0.copyload.i24.i = load i64, ptr %i.ba, align 1, !dbg !155564, !noalias !155452 ; 2 uses
  %i.be = add i64 %.sroa.01.0.copyload.i24.i, 5063812098665367110, !dbg !155565
  %i.bf = add i64 %.sroa.01.0.copyload.i24.i, -3472328296227680304, !dbg !155566 ; 3 uses
  %i.bg = or i64 %i.be, %i.bf, !dbg !155567
  %i.bh = and i64 %i.bg, -9187201950435737472, !dbg !155567
  %i.bi = icmp eq i64 %i.bh, 0, !dbg !155568
  br i1 %i.bi, label %bb.o, label %_RNvNtCskjB2uxhiyiW_11fast_float26number17try_parse_8digits.exit, !dbg !155568

bb.o:                                             ; preds = %bb.n
  %i.bj = mul i64 %i.az, 100000000, !dbg !155569
  %i.bk = mul i64 %i.bf, 10, !dbg !155570
  %i.bl = lshr i64 %i.bf, 8, !dbg !155571
  %i.bm = add i64 %i.bk, %i.bl, !dbg !155572      ; 2 uses
  %i.bn = and i64 %i.bm, 1095216660735, !dbg !155573
  %i.bo = mul i64 %i.bn, 4294967296000100, !dbg !155574
  %i.bp = lshr i64 %i.bm, 16, !dbg !155575
  %i.bq = and i64 %i.bp, 1095216660735, !dbg !155576
  %i.br = mul i64 %i.bq, 42949672960001, !dbg !155577
  %i.bs = add i64 %i.br, %i.bo, !dbg !155578
  %i.bt = lshr i64 %i.bs, 32, !dbg !155579
  %i.bu = add i64 %i.bt, %i.bj, !dbg !155580
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 17, !dbg !155581
  br label %_RNvNtCskjB2uxhiyiW_11fast_float26number17try_parse_8digits.exit, !dbg !155582

_RNvNtCskjB2uxhiyiW_11fast_float26number17try_parse_8digits.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.sroa.0.796 = phi i64 [ %i.bu, %bb.o ], [ %i.az, %bb.n ], [ %i.az, %bb.m ], [ %.sroa.0.695, %bb.l ], [ %.sroa.0.695, %bb.k ], !dbg !155525 ; 2 uses
  %.sroa.0.4 = phi ptr [ %i.bv, %bb.o ], [ %i.ba, %bb.n ], [ %i.ba, %bb.m ], [ %i.ae, %bb.l ], [ %i.ae, %bb.k ], !dbg !155583 ; 4 uses
  %i.bw = icmp eq ptr %.sroa.0.4, %i.d, !dbg !155584
  br i1 %i.bw, label %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51, label %.lr.ph.i49.preheader, !dbg !155585

.lr.ph.i49.preheader:                             ; preds = %_RNvNtCskjB2uxhiyiW_11fast_float26number17try_parse_8digits.exit
  %.sroa.0.4129 = ptrtoaddr ptr %.sroa.0.4 to i64, !dbg !155584
  %i.bx = add i64 %2, %i.a, !dbg !155586
  %i.by = sub i64 %i.bx, %.sroa.0.4129, !dbg !155586
  %scevgep130 = getelementptr i8, ptr %.sroa.0.4, i64 %i.by, !dbg !155586
  br label %.lr.ph.i49, !dbg !155586

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader, %bb.p
  %.sroa.0.897 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.796, %.lr.ph.i49.preheader ], !dbg !155587 ; 2 uses
  %.sroa.0.5 = phi ptr [ %i.cb, %bb.p ], [ %.sroa.0.4, %.lr.ph.i49.preheader ], !dbg !155587 ; 3 uses
  %i.bz = load i8, ptr %.sroa.0.5, align 1, !dbg !155588, !noalias !155460, !noundef !4701
  %i.ca = add i8 %i.bz, -48, !dbg !155586         ; 2 uses
  %or.cond.i.i50 = icmp ult i8 %i.ca, 10, !dbg !155586
  br i1 %or.cond.i.i50, label %bb.p, label %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51.loopexit, !dbg !155586

bb.p:                                             ; preds = %.lr.ph.i49
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 1, !dbg !155589 ; 2 uses
  %i.cc = mul i64 %.sroa.0.897, 10, !dbg !155590
  %i.cd = zext nneg i8 %i.ca to i64, !dbg !155591
  %i.ce = add i64 %i.cc, %i.cd, !dbg !155592      ; 2 uses
  %i.cf = icmp eq ptr %i.cb, %i.d, !dbg !155584
  br i1 %i.cf, label %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51.loopexit, label %.lr.ph.i49, !dbg !155585

_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51.loopexit: ; preds = %bb.p, %.lr.ph.i49
  %.sroa.0.998.ph = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.897, %.lr.ph.i49 ]
  %.sroa.0.6.ph = phi ptr [ %scevgep130, %bb.p ], [ %.sroa.0.5, %.lr.ph.i49 ] ; 2 uses
  %.pre = ptrtoint ptr %.sroa.0.6.ph to i64, !dbg !155593
  %.pre134 = sub i64 %.pre, %i.ag, !dbg !155594
  br label %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51, !dbg !155593

_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51: ; preds = %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51.loopexit, %_RNvNtCskjB2uxhiyiW_11fast_float26number17try_parse_8digits.exit
  %.pre-phi135 = phi i64 [ %.pre134, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51.loopexit ], [ %i.ah, %_RNvNtCskjB2uxhiyiW_11fast_float26number17try_parse_8digits.exit ], !dbg !155594 ; 2 uses
  %.sroa.0.998 = phi i64 [ %.sroa.0.998.ph, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51.loopexit ], [ %.sroa.0.796, %_RNvNtCskjB2uxhiyiW_11fast_float26number17try_parse_8digits.exit ], !dbg !155587
  %.sroa.0.6 = phi ptr [ %.sroa.0.6.ph, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51.loopexit ], [ %i.d, %_RNvNtCskjB2uxhiyiW_11fast_float26number17try_parse_8digits.exit ], !dbg !155587
  %i.cg = sub i64 0, %.pre-phi135, !dbg !155595
  br label %.critedge4, !dbg !155596

.critedge4:                                       ; preds = %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit.thread, %bb.j, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51
  %i.ch = phi i64 [ %i.x, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit ], [ %i.x, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51 ], [ %i.x, %bb.j ], [ %i.l, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit.thread ]
  %i.ci = phi i64 [ %i.v, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit ], [ %i.v, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51 ], [ %i.v, %bb.j ], [ %i.j, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit.thread ]
  %.sroa.0.089 = phi i64 [ %.sroa.0.695, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0.998, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51 ], [ %.sroa.0.695, %bb.j ], [ 0, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit.thread ], !dbg !155525 ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.d, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0.6, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51 ], [ %.sroa.0.3, %bb.j ], [ %i.d, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit.thread ], !dbg !155525 ; 7 uses
  %.sroa.016.0 = phi i64 [ 0, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit ], [ %.pre-phi135, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51 ], [ 0, %bb.j ], [ 0, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit.thread ], !dbg !155597
  %.sroa.012.0 = phi i64 [ 0, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit ], [ %i.cg, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit51 ], [ 0, %bb.j ], [ 0, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16try_parse_digits0ECsfcROwRM8ZtH_11polars_plan.exit.thread ], !dbg !155598
  %i.cj = add i64 %.sroa.016.0, %i.ch, !dbg !155599 ; 3 uses
  %i.ck = icmp eq i64 %i.cj, 0, !dbg !155600
  br i1 %i.ck, label %bb.q, label %bb.r, !dbg !155600

bb.q:                                             ; preds = %.critedge4
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 17, !dbg !155601
  store i8 2, ptr %i.cl, align 1, !dbg !155601
  br label %bb.d, !dbg !155602

bb.r:                                             ; preds = %.critedge4
  %.not.i = icmp eq ptr %.sroa.0.1, %i.d, !dbg !155603
  br i1 %.not.i, label %_RNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific.exit, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !155604

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.r
  %i.cm = load i8, ptr %.sroa.0.1, align 1, !dbg !155605, !noalias !155465, !noundef !4701
  switch i8 %i.cm, label %_RNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific.exit [
    i8 101, label %bb.s
    i8 69, label %bb.s
  ], !dbg !155606

bb.s:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1, !dbg !155607 ; 4 uses
  %.not37.i = icmp eq ptr %i.cn, %i.d, !dbg !155608
  br i1 %.not37.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.thread.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.i, !dbg !155609

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.i: ; preds = %bb.s
  %i.co = load i8, ptr %i.cn, align 1, !dbg !155610, !noalias !155465, !noundef !4701 ; 2 uses
  switch i8 %i.co, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.thread.i [
    i8 45, label %bb.t
    i8 43, label %bb.t
  ], !dbg !155611

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.thread.i: ; preds = %bb.t, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.i, %bb.s
  %.sroa.0.7 = phi ptr [ %i.cn, %bb.s ], [ %i.cn, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.i ], [ %i.cq, %bb.t ], !dbg !155612 ; 5 uses
  %.sroa.01.0.i = phi i1 [ false, %bb.s ], [ false, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.i ], [ %i.cp, %bb.t ], !dbg !155613
  %.sroa.0.7131 = ptrtoaddr ptr %.sroa.0.7 to i64, !dbg !155614
  %.not38.i = icmp eq ptr %.sroa.0.7, %i.d, !dbg !155614
  br i1 %.not38.i, label %_RNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific.exit, label %bb.u, !dbg !155615

bb.t:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.i
  %i.cp = icmp eq i8 %i.co, 45, !dbg !155616
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2, !dbg !155617
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.thread.i, !dbg !155618

bb.u:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.thread.i
  %i.cr = load i8, ptr %.sroa.0.7, align 1, !dbg !155619, !noalias !155465, !noundef !4701
  %i.cs = add i8 %i.cr, -48, !dbg !155620
  %.sroa.0.0.i.i16.i = icmp ult i8 %i.cs, 10, !dbg !155620
  br i1 %.sroa.0.0.i.i16.i, label %.lr.ph.i.i.preheader, label %_RNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific.exit, !dbg !155621

.lr.ph.i.i.preheader:                             ; preds = %bb.u
  %i.ct = add i64 %2, %i.a, !dbg !155622
  %i.cu = sub i64 %i.ct, %.sroa.0.7131, !dbg !155622
  %scevgep132 = getelementptr i8, ptr %.sroa.0.7, i64 %i.cu, !dbg !155622
  br label %.lr.ph.i.i, !dbg !155622

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_RNCNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %.sroa.0.024.i = phi i64 [ %.sroa.0.125.i, %_RNCNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific0CsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ 0, %.lr.ph.i.i.preheader ], !dbg !155468 ; 2 uses
  %i.cv = phi ptr [ %i.cz, %_RNCNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific0CsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %.sroa.0.7, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.cw = phi i64 [ %i.de, %_RNCNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific0CsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.cx = load i8, ptr %i.cv, align 1, !dbg !155623, !noalias !155473, !noundef !4701
  %i.cy = add i8 %i.cx, -48, !dbg !155622         ; 2 uses
  %or.cond.i.i.i = icmp ult i8 %i.cy, 10, !dbg !155622
  br i1 %or.cond.i.i.i, label %_RNCNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16parse_scientific0ECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !155622

_RNCNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %.lr.ph.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 1, !dbg !155624 ; 2 uses
  %i.da = icmp slt i64 %i.cw, 65536, !dbg !155625 ; 2 uses
  %i.db = mul i64 %i.cw, 10, !dbg !155625
  %i.dc = zext nneg i8 %i.cy to i64, !dbg !155625
  %i.dd = add i64 %i.db, %i.dc, !dbg !155625      ; 2 uses
  %.sroa.0.125.i = select i1 %i.da, i64 %i.dd, i64 %.sroa.0.024.i, !dbg !155625 ; 2 uses
  %i.de = select i1 %i.da, i64 %i.dd, i64 %i.cw, !dbg !155625
  %i.df = icmp eq ptr %i.cz, %i.d, !dbg !155626
  br i1 %i.df, label %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16parse_scientific0ECsfcROwRM8ZtH_11polars_plan.exit.i, label %.lr.ph.i.i, !dbg !155627

_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16parse_scientific0ECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNCNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific0CsfcROwRM8ZtH_11polars_plan.exit.i.i, %.lr.ph.i.i
  %.sroa.0.9 = phi ptr [ %scevgep132, %_RNCNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific0CsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %i.cv, %.lr.ph.i.i ], !dbg !155468
  %.sroa.0.2.i = phi i64 [ %.sroa.0.125.i, %_RNCNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific0CsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %.sroa.0.024.i, %.lr.ph.i.i ], !dbg !155468 ; 2 uses
  %i.dg = sub i64 0, %.sroa.0.2.i
  %spec.select.i = select i1 %.sroa.01.0.i, i64 %i.dg, i64 %.sroa.0.2.i, !dbg !155628
  br label %_RNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific.exit, !dbg !155628

_RNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific.exit: ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.thread.i, %bb.u, %bb.r, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.i, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16parse_scientific0ECsfcROwRM8ZtH_11polars_plan.exit.i
  %.sroa.0.10 = phi ptr [ %i.d, %bb.r ], [ %.sroa.0.1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.i ], [ %.sroa.0.9, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16parse_scientific0ECsfcROwRM8ZtH_11polars_plan.exit.i ], [ %.sroa.0.1, %bb.u ], [ %.sroa.0.1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.thread.i ], !dbg !155525
  %.sroa.0.0.i = phi i64 [ 0, %bb.r ], [ 0, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.i ], [ %spec.select.i, %_RINvMNtCskjB2uxhiyiW_11fast_float26commonNtB3_8AsciiStr12parse_digitsNCNvNtB5_6number16parse_scientific0ECsfcROwRM8ZtH_11polars_plan.exit.i ], [ 0, %bb.u ], [ 0, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit15.thread.i ], !dbg !155629 ; 2 uses
  %i.dh = add i64 %.sroa.0.0.i, %.sroa.012.0, !dbg !155630 ; 2 uses
  %i.di = ptrtoint ptr %.sroa.0.10 to i64, !dbg !155631
  %i.dj = ptrtoint ptr %1 to i64, !dbg !155632
  %i.dk = sub i64 %i.di, %i.dj, !dbg !155633      ; 2 uses
  %i.dl = icmp slt i64 %i.cj, 20, !dbg !155634
  br i1 %i.dl, label %bb.w, label %bb.v, !dbg !155634

bb.v:                                             ; preds = %_RNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific.exit
  br i1 %i.i, label %.preheader.preheader, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.preheader, !dbg !155635

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.preheader: ; preds = %bb.v
  %i.dm = add nsw i64 %i.cj, -19, !dbg !155636
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !155637

bb.w:                                             ; preds = %_RNvNtCskjB2uxhiyiW_11fast_float26number16parse_scientific.exit
  store i64 %i.dh, ptr %0, align 8, !dbg !155638
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !155638
  store i64 %.sroa.0.089, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8, !dbg !155638
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !155638
  store i8 %.sroa.0.0, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8, !dbg !155638
  %.sroa.018.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17, !dbg !155638
  store i8 0, ptr %.sroa.018.sroa.6.0..sroa_idx, align 1, !dbg !155638
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !155638
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !155638
  br label %bb.d, !dbg !155602

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.preheader, %bb.x
  %.sroa.06.0113 = phi i64 [ %i.du, %bb.x ], [ %i.dm, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.preheader ] ; 2 uses
  %.sroa.030.0112 = phi ptr [ %i.dv, %bb.x ], [ %.sroa.0.079, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.preheader ] ; 2 uses
  %i.dn = load i8, ptr %.sroa.030.0112, align 1, !dbg !155639, !noundef !4701 ; 2 uses
  switch i8 %i.dn, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.thread [
    i8 48, label %bb.x
    i8 46, label %bb.x
  ], !dbg !155637

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %bb.x, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.06.0.lcssa = phi i64 [ %.sroa.06.0113, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit ], [ %i.du, %bb.x ], !dbg !155640
  %i.do = icmp sgt i64 %.sroa.06.0.lcssa, 0, !dbg !155641
  br i1 %i.do, label %.preheader.preheader, label %bb.y, !dbg !155641

.preheader.preheader:                             ; preds = %bb.v, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.thread
  %i.dp = add i64 %2, %i.a, !dbg !155642
  %i.dq = sub i64 %i.dp, %.sroa.0.079128, !dbg !155642
  %scevgep133 = getelementptr i8, ptr %.sroa.0.079, i64 %i.dq, !dbg !155642 ; 2 uses
  %i.dr = icmp eq ptr %.sroa.0.079, %i.d, !dbg !155643
  br i1 %i.dr, label %.preheader._crit_edge, label %.lr.ph163, !dbg !155642

bb.x:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit
  %i.ds = tail call i8 @llvm.usub.sat.i8(i8 %i.dn, i8 47), !dbg !155644
  %i.dt = zext nneg i8 %i.ds to i64, !dbg !155645
  %i.du = sub i64 %.sroa.06.0113, %i.dt, !dbg !155646 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.030.0112, i64 1, !dbg !155647 ; 2 uses
  %.not = icmp eq ptr %i.dv, %i.d, !dbg !155648
  br i1 %.not, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !155635

bb.y:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.thread, %bb.ac
  %.sroa.0.190 = phi i64 [ %.sroa.0.493, %bb.ac ], [ %.sroa.0.089, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.thread ], !dbg !155525
  %.sroa.021.0 = phi i8 [ 1, %bb.ac ], [ 0, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.thread ], !dbg !155640
  %.sroa.012.1 = phi i64 [ %i.es, %bb.ac ], [ %i.dh, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionhE6map_orbNCNvMNtCskjB2uxhiyiW_11fast_float26commonNtBX_8AsciiStr9first_is20ECsfcROwRM8ZtH_11polars_plan.exit.thread ], !dbg !155649
  store i64 %.sroa.012.1, ptr %0, align 8, !dbg !155650
  %.sroa.023.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !155650
  store i64 %.sroa.0.190, ptr %.sroa.023.sroa.4.0..sroa_idx, align 8, !dbg !155650
  %.sroa.023.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !155650
  store i8 %.sroa.0.0, ptr %.sroa.023.sroa.5.0..sroa_idx, align 8, !dbg !155650
  %.sroa.023.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17, !dbg !155650
  store i8 %.sroa.021.0, ptr %.sroa.023.sroa.6.0..sroa_idx, align 1, !dbg !155650
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !155650
  store i64 %i.dk, ptr %.sroa.424.0..sroa_idx, align 8, !dbg !155650
  br label %bb.d, !dbg !155510

.preheader:                                       ; preds = %bb.z
  %i.dw = icmp eq ptr %i.dz, %i.d, !dbg !155643
  br i1 %i.dw, label %.preheader._crit_edge, label %.lr.ph163, !dbg !155642

.lr.ph163:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.291115162 = phi i64 [ %i.ec, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.071.0116161 = phi ptr [ %i.dz, %.preheader ], [ %.sroa.0.079, %.preheader.preheader ] ; 3 uses
  %i.dx = load i8, ptr %.sroa.071.0116161, align 1, !dbg !155651, !noalias !155490, !noundef !4701
  %i.dy = add i8 %i.dx, -48, !dbg !155652         ; 2 uses
  %or.cond.i = icmp ult i8 %i.dy, 10, !dbg !155652
  br i1 %or.cond.i, label %bb.z, label %.preheader._crit_edge, !dbg !155652

bb.z:                                             ; preds = %.lr.ph163
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.071.0116161, i64 1, !dbg !155653 ; 3 uses
  %i.ea = mul nuw i64 %.sroa.0.291115162, 10, !dbg !155654
  %i.eb = zext nneg i8 %i.dy to i64, !dbg !155655
  %i.ec = add nuw i64 %i.ea, %i.eb, !dbg !155656  ; 4 uses
  %i.ed = icmp ult i64 %i.ec, 1000000000000000000, !dbg !155657
  br i1 %i.ed, label %.preheader, label %bb.aa, !dbg !155657

.preheader._crit_edge:                            ; preds = %.lr.ph163, %.preheader, %.preheader.preheader
  %.sroa.0.291115.lcssa = phi i64 [ 0, %.preheader.preheader ], [ %.sroa.0.291115162, %.lr.ph163 ], [ %i.ec, %.preheader ] ; 2 uses
  %.sroa.071.0116.lcssa = phi ptr [ %scevgep133, %.preheader.preheader ], [ %.sroa.071.0116161, %.lr.ph163 ], [ %scevgep133, %.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.071.0116.lcssa, i64 1, !dbg !155658 ; 4 uses
  %i.ef = icmp eq ptr %i.ee, %i.d
  br i1 %i.ef, label %_RNvMNtCskjB2uxhiyiW_11fast_float26commonNtB2_8AsciiStr14try_read_digit.exit56.thread, label %.lr.ph, !dbg !155659

bb.aa:                                            ; preds = %bb.z
  %i.eg = ptrtoint ptr %i.dz to i64, !dbg !155660
  %i.eh = sub i64 %i.ci, %i.eg, !dbg !155661
  br label %bb.ac, !dbg !155662

.lr.ph:                                           ; preds = %.preheader._crit_edge, %bb.ab
  %.sroa.071.2119 = phi ptr [ %i.em, %bb.ab ], [ %i.ee, %.preheader._crit_edge ] ; 3 uses
  %.sroa.0.392118 = phi i64 [ %i.ep, %bb.ab ], [ %.sroa.0.291115.lcssa, %.preheader._crit_edge ] ; 2 uses
  %i.ei = load i8, ptr %.sroa.071.2119, align 1, !dbg !155663, !noalias !155500, !noundef !4701
  %i.ej = add i8 %i.ei, -48, !dbg !155664         ; 2 uses
  %or.cond.i53 = icmp ult i8 %i.ej, 10, !dbg !155664
  br i1 %or.cond.i53, label %bb.ab, label %_RNvMNtCskjB2uxhiyiW_11fast_float26commonNtB2_8AsciiStr14try_read_digit.exit56.thread, !dbg !155664

_RNvMNtCskjB2uxhiyiW_11fast_float26commonNtB2_8AsciiStr14try_read_digit.exit56.thread: ; preds = %bb.ab, %.lr.ph, %.preheader._crit_edge
  %.sroa.0.392.lcssa = phi i64 [ %.sroa.0.291115.lcssa, %.preheader._crit_edge ], [ %.sroa.0.392118, %.lr.ph ], [ %i.ep, %bb.ab ], !dbg !155665
  %.sroa.071.2.lcssa = phi ptr [ %i.ee, %.preheader._crit_edge ], [ %.sroa.071.2119, %.lr.ph ], [ %i.em, %bb.ab ], !dbg !155666
  %i.ek = ptrtoint ptr %.sroa.071.2.lcssa to i64, !dbg !155667
  %i.el = ptrtoint ptr %i.ee to i64, !dbg !155668
  %.neg = sub i64 %i.el, %i.ek, !dbg !155669
  br label %bb.ac, !dbg !155662

bb.ab:                                            ; preds = %.lr.ph
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.071.2119, i64 1, !dbg !155670 ; 3 uses
  %i.en = mul nuw i64 %.sroa.0.392118, 10, !dbg !155671
  %i.eo = zext nneg i8 %i.ej to i64, !dbg !155672
  %i.ep = add nuw i64 %i.en, %i.eo, !dbg !155673  ; 3 uses
  %i.eq = icmp ugt i64 %i.ep, 999999999999999999, !dbg !155659
  %i.er = icmp eq ptr %i.em, %i.d
  %or.cond = select i1 %i.eq, i1 true, i1 %i.er, !dbg !155659
  br i1 %or.cond, label %_RNvMNtCskjB2uxhiyiW_11fast_float26commonNtB2_8AsciiStr14try_read_digit.exit56.thread, label %.lr.ph, !dbg !155659

bb.ac:                                            ; preds = %_RNvMNtCskjB2uxhiyiW_11fast_float26commonNtB2_8AsciiStr14try_read_digit.exit56.thread, %bb.aa
  %.sroa.0.493 = phi i64 [ %i.ec, %bb.aa ], [ %.sroa.0.392.lcssa, %_RNvMNtCskjB2uxhiyiW_11fast_float26commonNtB2_8AsciiStr14try_read_digit.exit56.thread ], !dbg !155674
  %.sroa.022.0 = phi i64 [ %i.eh, %bb.aa ], [ %.neg, %_RNvMNtCskjB2uxhiyiW_11fast_float26commonNtB2_8AsciiStr14try_read_digit.exit56.thread ], !dbg !155675
  %i.es = add i64 %.sroa.022.0, %.sroa.0.0.i, !dbg !155676
  br label %bb.y, !dbg !155677
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCskjB2uxhiyiW_11fast_float27decimal13parse_decimal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(784) %0, ptr noalias noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !155678 !guid !155886 {
bb.a:
  %i.a = alloca [784 x i8], align 8               ; 12 uses
  %i.b = icmp eq i64 %2, 0, !dbg !155987
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !155987, !prof !4713

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCsh8eZTKRCwoO_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance) @893, i64 noundef 66, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @894) #50, !dbg !155988
  unreachable, !dbg !155988

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !155989
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 768, !dbg !155990 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 776, !dbg !155990 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 780, !dbg !155990
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 781, !dbg !155990
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(782) %i.a, i8 0, i64 782, i1 false), !dbg !155990
  %i.g = load i8, ptr %1, align 1, !dbg !155991, !noundef !4701 ; 2 uses
  %i.h = icmp eq i8 %i.g, 45, !dbg !155992
  %i.i = zext i1 %i.h to i8, !dbg !155992
  store i8 %i.i, ptr %i.e, align 4, !dbg !155992
  switch i8 %i.g, label %.lr.ph.preheader.i [
    i8 45, label %bb.d
    i8 43, label %bb.d
  ], !dbg !155993

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.j = add nsw i64 %2, -1, !dbg !155994         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !155995 ; 2 uses
  %.not7.i = icmp eq i64 %i.j, 0, !dbg !155996
  br i1 %.not7.i, label %_RINvNtCskjB2uxhiyiW_11fast_float26common12parse_digitsNCNvNtB4_7decimal13parse_decimal0ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %.lr.ph.preheader.i, !dbg !155996

.lr.ph.preheader.i:                               ; preds = %bb.c, %bb.d
  %.sroa.0.0100106 = phi ptr [ %i.k, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.sroa.27.0105 = phi i64 [ %i.j, %bb.d ], [ %2, %bb.c ] ; 2 uses
  %scevgep.i = getelementptr i8, ptr %.sroa.0.0100106, i64 %.sroa.27.0105, !dbg !155997
  br label %.lr.ph.i, !dbg !155997

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.sroa.0.09.i = phi ptr [ %i.o, %bb.e ], [ %.sroa.0.0100106, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.6.08.i = phi i64 [ %i.n, %bb.e ], [ %.sroa.27.0105, %.lr.ph.preheader.i ] ; 3 uses
  %i.l = load i8, ptr %.sroa.0.09.i, align 1, !dbg !155998, !noundef !4701 ; 3 uses
  %i.m = icmp eq i8 %i.l, 48, !dbg !155998
  br i1 %i.m, label %bb.e, label %.lr.ph.i41.preheader, !dbg !155997

bb.e:                                             ; preds = %.lr.ph.i
  %i.n = add nsw i64 %.sroa.6.08.i, -1, !dbg !155999 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 1, !dbg !156000
  %.not.i = icmp eq i64 %i.n, 0, !dbg !155996
  br i1 %.not.i, label %_RINvNtCskjB2uxhiyiW_11fast_float26common12parse_digitsNCNvNtB4_7decimal13parse_decimal0ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %.lr.ph.i, !dbg !155996

.lr.ph.i41.preheader:                             ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155893), !dbg !156001
  %i.p = add i8 %i.l, -48, !dbg !156002           ; 2 uses
  %i.q = icmp ult i8 %i.p, 10, !dbg !156003
  br i1 %i.q, label %.lr.ph248, label %.lr.ph.i41._crit_edge, !dbg !156003

.lr.ph.i41thread-pre-split:                       ; preds = %bb.g
  %.pr = load i8, ptr %i.aa, align 1, !dbg !156004, !noalias !155894 ; 2 uses
  %i.r = add i8 %.pr, -48, !dbg !156002           ; 2 uses
  %i.s = icmp ult i8 %i.r, 10, !dbg !156003
  br i1 %i.s, label %.lr.ph248, label %.lr.ph.i41._crit_edge, !dbg !156003

end_hunk_0
