Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/table?download=true
inline.NumInlined: 766
inline.NumDeleted: 433
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0

$_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_ = comdat any

$_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS1_6fill_tE = comdat any

$_ZN3fmt3v116detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE = comdat any

$_ZN3fmt3v116detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE = comdat any

$_ZN3fmt3v116detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj = comdat any

$_ZN3fmt3v116detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj = comdat any

$_ZN3fmt3v116detail15write_codepointILm8EcNS0_14basic_appenderIcEEEET1_S5_cj = comdat any

$_ZN3fmt3v116detail16get_dynamic_specINS1_13width_checkerENS0_16basic_format_argINS0_7contextEEEEEiT0_ = comdat any

$_ZN3fmt3v116detail7get_argINS0_7contextENS0_17basic_string_viewIcEEEEDTcldtfp_3argfp0_EERT_T0_ = comdat any

$_ZN3fmt3v116detail16get_dynamic_specINS1_17precision_checkerENS0_16basic_format_argINS0_7contextEEEEEiT0_ = comdat any

$_ZN8WasmEdge7Runtime8Instance14ModuleInstance17unsafeAddInstanceINS1_13TableInstanceEJRKNS_3AST9TableTypeERNS_10RefVariantEEEENSt9enable_ifIX11IsInstanceVIT_EEvE4typeERSt6vectorISt10unique_ptrISC_St14default_deleteISC_EESaISJ_EERSF_IPSC_SaISN_EEDpOT0_ = comdat any

$_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance13TableInstanceESt14default_deleteIS3_EED2Ev = comdat any

@.str.2 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"    At AST node: {}\00", align 1
@_ZN8WasmEdgeL14ASTNodeAttrStrE = internal unnamed_addr constant %"class.WasmEdge::DenseEnumMap" { %"struct.std::array" { [88 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 6, ptr @.str.15 }, %"class.std::basic_string_view" { i64 14, ptr @.str.16 }, %"class.std::basic_string_view" { i64 12, ptr @.str.17 }, %"class.std::basic_string_view" { i64 14, ptr @.str.18 }, %"class.std::basic_string_view" { i64 16, ptr @.str.19 }, %"class.std::basic_string_view" { i64 13, ptr @.str.20 }, %"class.std::basic_string_view" { i64 14, ptr @.str.21 }, %"class.std::basic_string_view" { i64 14, ptr @.str.22 }, %"class.std::basic_string_view" { i64 14, ptr @.str.23 }, %"class.std::basic_string_view" { i64 13, ptr @.str.24 }, %"class.std::basic_string_view" { i64 15, ptr @.str.25 }, %"class.std::basic_string_view" { i64 12, ptr @.str.26 }, %"class.std::basic_string_view" { i64 12, ptr @.str.27 }, %"class.std::basic_string_view" { i64 18, ptr @.str.28 }, %"class.std::basic_string_view" { i64 11, ptr @.str.29 }, %"class.std::basic_string_view" { i64 18, ptr @.str.30 }, %"class.std::basic_string_view" { i64 18, ptr @.str.31 }, %"class.std::basic_string_view" { i64 13, ptr @.str.32 }, %"class.std::basic_string_view" { i64 14, ptr @.str.33 }, %"class.std::basic_string_view" { i64 15, ptr @.str.34 }, %"class.std::basic_string_view" { i64 12, ptr @.str.35 }, %"class.std::basic_string_view" { i64 12, ptr @.str.36 }, %"class.std::basic_string_view" { i64 14, ptr @.str.37 }, %"class.std::basic_string_view" { i64 8, ptr @.str.38 }, %"class.std::basic_string_view" { i64 5, ptr @.str.39 }, %"class.std::basic_string_view" { i64 13, ptr @.str.40 }, %"class.std::basic_string_view" { i64 11, ptr @.str.41 }, %"class.std::basic_string_view" { i64 10, ptr @.str.42 }, %"class.std::basic_string_view" { i64 11, ptr @.str.43 }, %"class.std::basic_string_view" { i64 8, ptr @.str.44 }, %"class.std::basic_string_view" { i64 10, ptr @.str.45 }, %"class.std::basic_string_view" { i64 11, ptr @.str.46 }, %"class.std::basic_string_view" { i64 11, ptr @.str.47 }, %"class.std::basic_string_view" { i64 22, ptr @.str.48 }, %"class.std::basic_string_view" { i64 29, ptr @.str.49 }, %"class.std::basic_string_view" { i64 31, ptr @.str.50 }, %"class.std::basic_string_view" { i64 27, ptr @.str.51 }, %"class.std::basic_string_view" { i64 34, ptr @.str.52 }, %"class.std::basic_string_view" { i64 26, ptr @.str.53 }, %"class.std::basic_string_view" { i64 23, ptr @.str.54 }, %"class.std::basic_string_view" { i64 22, ptr @.str.55 }, %"class.std::basic_string_view" { i64 27, ptr @.str.56 }, %"class.std::basic_string_view" { i64 23, ptr @.str.57 }, %"class.std::basic_string_view" { i64 24, ptr @.str.58 }, %"class.std::basic_string_view" { i64 24, ptr @.str.59 }, %"class.std::basic_string_view" { i64 28, ptr @.str.60 }, %"class.std::basic_string_view" { i64 27, ptr @.str.61 }, %"class.std::basic_string_view" { i64 27, ptr @.str.62 }, %"class.std::basic_string_view" { i64 23, ptr @.str.63 }, %"class.std::basic_string_view" { i64 22, ptr @.str.64 }, %"class.std::basic_string_view" { i64 22, ptr @.str.65 }, %"class.std::basic_string_view" { i64 14, ptr @.str.66 }, %"class.std::basic_string_view" { i64 15, ptr @.str.67 }, %"class.std::basic_string_view" { i64 22, ptr @.str.68 }, %"class.std::basic_string_view" { i64 17, ptr @.str.69 }, %"class.std::basic_string_view" { i64 20, ptr @.str.70 }, %"class.std::basic_string_view" { i64 18, ptr @.str.71 }, %"class.std::basic_string_view" { i64 23, ptr @.str.72 }, %"class.std::basic_string_view" { i64 22, ptr @.str.73 }, %"class.std::basic_string_view" { i64 22, ptr @.str.74 }, %"class.std::basic_string_view" { i64 15, ptr @.str.75 }, %"class.std::basic_string_view" { i64 19, ptr @.str.76 }, %"class.std::basic_string_view" { i64 26, ptr @.str.77 }, %"class.std::basic_string_view" { i64 16, ptr @.str.78 }, %"class.std::basic_string_view" { i64 16, ptr @.str.79 }, %"class.std::basic_string_view" { i64 25, ptr @.str.80 }, %"class.std::basic_string_view" { i64 21, ptr @.str.81 }, %"class.std::basic_string_view" { i64 25, ptr @.str.82 }, %"class.std::basic_string_view" { i64 25, ptr @.str.83 }, %"class.std::basic_string_view" { i64 25, ptr @.str.84 }, %"class.std::basic_string_view" { i64 20, ptr @.str.85 }, %"class.std::basic_string_view" { i64 20, ptr @.str.86 }, %"class.std::basic_string_view" { i64 22, ptr @.str.87 }, %"class.std::basic_string_view" { i64 23, ptr @.str.88 }, %"class.std::basic_string_view" { i64 21, ptr @.str.89 }, %"class.std::basic_string_view" { i64 22, ptr @.str.90 }, %"class.std::basic_string_view" { i64 19, ptr @.str.91 }, %"class.std::basic_string_view" { i64 20, ptr @.str.92 }, %"class.std::basic_string_view" { i64 20, ptr @.str.93 }, %"class.std::basic_string_view" { i64 19, ptr @.str.94 }, %"class.std::basic_string_view" { i64 21, ptr @.str.95 }, %"class.std::basic_string_view" { i64 21, ptr @.str.96 }, %"class.std::basic_string_view" { i64 18, ptr @.str.97 }, %"class.std::basic_string_view" { i64 21, ptr @.str.98 }, %"class.std::basic_string_view" { i64 21, ptr @.str.99 }, %"class.std::basic_string_view" { i64 21, ptr @.str.100 }, %"class.std::basic_string_view" { i64 22, ptr @.str.101 }, %"class.std::basic_string_view" { i64 19, ptr @.str.102 }] } }, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"custom section\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"type section\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"import section\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"function section\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"table section\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"memory section\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"global section\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"export section\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"start section\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"element section\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"code section\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"data section\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"data count section\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"tag section\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"import description\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"export description\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"table segment\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"global segment\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"element segment\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"code segment\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"data segment\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"recursive type\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"sub type\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"function type\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"memory type\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"table type\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"global type\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"tag type\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"instruction\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"aot section\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"component model module\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"component core:module section\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"component core:instance section\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"component core:type section\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"component nested-component section\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"component instance section\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"component alias section\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"component type section\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"component canonical section\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"component start section\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"component import section\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"component export section\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"component core:instance expr\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"component core:instance arg\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"component core:inlineexport\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"component instance expr\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"component instance arg\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"component inlineexport\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"component sort\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"component alias\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"component core:deftype\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"component deftype\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"component defvaltype\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"component functype\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"component componenttype\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"component instancetype\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"component resourcetype\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"component start\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"component canonical\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"component canonical option\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"component import\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"component export\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"component core:importdesc\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"component extern desc\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"component core:importdecl\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"component core:exportdecl\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"component core:moduledecl\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"component importdecl\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"component exportdecl\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"component instancedecl\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"component componentdecl\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"component record type\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"component variant type\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"component list type\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"component tuple type\00", align 1
@.str.93 = private unnamed_addr constant [21 x i8] c"component flags type\00", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"component enum type\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"component option type\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"component result type\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"component own type\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"component borrow type\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"component stream type\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"component future type\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"component labelvaltype\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"component valuetype\00", align 1
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.103 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"negative width\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"width is not integer\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"negative precision\00", align 1
@.str.111 = private unnamed_addr constant [25 x i8] c"precision is not integer\00", align 1
@.str.112 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.113 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor11instantiateERNS_7Runtime12StackManagerERNS2_8Instance14ModuleInstanceERKNS_3AST12TableSectionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(952) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %7 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %8 = alloca %"struct.WasmEdge::RefVariant", align 16 ; 4 uses
  %9 = alloca %"struct.WasmEdge::RefVariant", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %.not51 = icmp eq ptr %i.b, %i.d
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 456 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.052 = phi ptr [ %i.b, %.lr.ph ], [ %i.ad, %bb.g ] ; 5 uses
  %i.j = load ptr, ptr %.052, align 8, !tbaa !100 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.052, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !101  ; 2 uses
  %.not23 = icmp eq ptr %i.l, %i.j
  br i1 %.not23, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.l to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 5
  call void @_ZN8WasmEdge8Executor8Executor13runExpressionERNS_7Runtime12StackManagerEN5cxx204spanIKNS_3AST11InstructionELm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %7, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %i.j, i64 %i.p)
  %.val = load i8, ptr %7, align 4, !tbaa !103, !range !17, !noundef !18
  %i.q = trunc nuw i8 %.val to i1
  br i1 %i.q, label %.critedge, label %.critedge25

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !105
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.s, align 16, !tbaa !19
  store ptr %i.s, ptr %i.e, align 8, !tbaa !107
  store i128 %.sroa.0.0.copyload.i, ptr %8, align 16, !tbaa !19
  %i.t = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #18
  %i.u = icmp eq i32 %i.t, 35
  br i1 %i.u, label %bb.d, label %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i

bb.d:                                             ; preds = %.critedge
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #19
  unreachable

_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i: ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %.052, i64 24
  invoke void @_ZN8WasmEdge7Runtime8Instance14ModuleInstance17unsafeAddInstanceINS1_13TableInstanceEJRKNS_3AST9TableTypeERNS_10RefVariantEEEENSt9enable_ifIX11IsInstanceVIT_EEvE4typeERSt6vectorISt10unique_ptrISC_St14default_deleteISC_EESaISJ_EERSF_IPSC_SaISN_EEDpOT0_(ptr noundef nonnull align 8 dereferenceable(952) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 16 dereferenceable(16) %8)
          to label %_ZN8WasmEdge7Runtime8Instance14ModuleInstance8addTableIJRKNS_3AST9TableTypeERNS_10RefVariantEEEEvDpOT_.exit unwind label %_ZNSt11unique_lockISt12shared_mutexED2Ev.exit5.i32

_ZN8WasmEdge7Runtime8Instance14ModuleInstance8addTableIJRKNS_3AST9TableTypeERNS_10RefVariantEEEEvDpOT_.exit: ; preds = %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i
  %i.w = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.052, i64 24 ; 2 uses
  %i.y = call noundef zeroext i8 @_ZNK8WasmEdge8Executor8Executor12toBottomTypeERNS_7Runtime12StackManagerERKNS_7ValTypeE(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.x) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %.off.i.i = add i8 %i.y, -105
  %switch.i.i = icmp ult i8 %.off.i.i, 12
  call void @llvm.assume(i1 %switch.i.i)
  %.sroa.5.0.insert.ext = zext nneg i8 %i.y to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 24
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, 6488064
  store i64 %.sroa.4.0.insert.insert, ptr %9, align 16, !tbaa !19
  store i64 0, ptr %i.i, align 8, !tbaa !21
  %i.z = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #18
  %i.aa = icmp eq i32 %i.z, 35
  br i1 %i.aa, label %bb.f, label %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i31

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #19
  unreachable

_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i31: ; preds = %bb.e
  invoke void @_ZN8WasmEdge7Runtime8Instance14ModuleInstance17unsafeAddInstanceINS1_13TableInstanceEJRKNS_3AST9TableTypeERNS_10RefVariantEEEENSt9enable_ifIX11IsInstanceVIT_EEvE4typeERSt6vectorISt10unique_ptrISC_St14default_deleteISC_EESaISJ_EERSF_IPSC_SaISN_EEDpOT0_(ptr noundef nonnull align 8 dereferenceable(952) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 16 dereferenceable(16) %9)
          to label %_ZN8WasmEdge7Runtime8Instance14ModuleInstance8addTableIJRKNS_3AST9TableTypeERNS_10RefVariantEEEEvDpOT_.exit33 unwind label %_ZNSt11unique_lockISt12shared_mutexED2Ev.exit5.i32

_ZNSt11unique_lockISt12shared_mutexED2Ev.exit5.i32: ; preds = %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i, %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i31
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %10 = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #18 ; 0 uses
  resume { ptr, i32 } %i.ab

_ZN8WasmEdge7Runtime8Instance14ModuleInstance8addTableIJRKNS_3AST9TableTypeERNS_10RefVariantEEEEvDpOT_.exit33: ; preds = %_ZNSt11unique_lockISt12shared_mutexEC2ERS0_.exit.i31
  %i.ac = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.g

bb.g:                                             ; preds = %_ZN8WasmEdge7Runtime8Instance14ModuleInstance8addTableIJRKNS_3AST9TableTypeERNS_10RefVariantEEEEvDpOT_.exit33, %_ZN8WasmEdge7Runtime8Instance14ModuleInstance8addTableIJRKNS_3AST9TableTypeERNS_10RefVariantEEEEvDpOT_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.052, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

.critedge25:                                      ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.val26 = load i32, ptr %i.ae, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !108
  store i8 30, ptr %6, align 1, !tbaa !110, !noalias !108
  %i.af = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !108
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.af, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %6), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  store i8 0, ptr %0, align 4, !tbaa !103
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.val26, ptr %i.ag, align 4, !tbaa !19
  br label %bb.h

._crit_edge:                                      ; preds = %bb.g, %bb.a
  store i64 1, ptr %0, align 4
  br label %bb.h

bb.h:                                             ; preds = %.critedge25, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN8WasmEdge8Executor8Executor13runExpressionERNS_7Runtime12StackManagerEN5cxx204spanIKNS_3AST11InstructionELm18446744073709551615EEE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i8 @_ZNK8WasmEdge8Executor8Executor12toBottomTypeERNS_7Runtime12StackManagerERKNS_7ValTypeE(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN6spdlog18default_logger_rawEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %8 = alloca %"struct.spdlog::details::log_msg", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = tail call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.d) ; 2 uses
  %or.cond = or i1 %i.c, %i.e
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !26
  store i64 250, ptr %i.f, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.j = ptrtoint ptr %5 to i64
  %.sroa.2.0.insert.ext.i = zext i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge7ErrInfo7InfoASTENS0_9formatterIS8_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_ to i64) to i128
  %.sroa.2.0.insert.shift.i = shl nuw i128 %.sroa.2.0.insert.ext.i, 64
  %.sroa.01.0.insert.ext.i = zext i64 %i.j to i128
  %.sroa.01.0.insert.insert.i = or disjoint i128 %.sroa.2.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  store i128 %.sroa.01.0.insert.insert.i, ptr %7, align 16
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr %3, i64 %4, i64 15, ptr nonnull %7, ptr null)
          to label %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit unwind label %bb.g

_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !114
  %i.o = load ptr, ptr %6, align 8, !tbaa !26
  %i.p = load i64, ptr %i.h, align 8, !tbaa !28
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, ptr %i.l, i64 %i.n, i32 noundef %2, ptr %i.o, i64 %i.p)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.c, i1 noundef zeroext %i.e)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.q = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.f, align 8, !tbaa !27
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.r) #21
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit
  ret void

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.s, %bb.g ]
  %i.u = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.u, %i.i
  br i1 %.not.i.i15, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.f, align 8, !tbaa !27
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.v) #21
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

declare void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef byval(%"struct.spdlog::source_loc") align 8, ptr, i64, i32 noundef, ptr, i64) unnamed_addr #2

declare void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @llvm.umax.i64(i64 %1, i64 9223372036854775807)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i64 [ %1, %bb.a ], [ %i.g, %bb.c ]    ; 2 uses
  %i.h = icmp slt i64 %.0, 0
  br i1 %i.h, label %bb.e, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit, !prof !29

end_hunk_0
