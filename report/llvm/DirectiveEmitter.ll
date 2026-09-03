Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DirectiveEmitter?download=true
inline.NumInlined: 3564
inline.NumDeleted: 1167
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
@.str.180 = private unnamed_addr constant [35 x i8] c"ClauseKindAndVersions(Str).first;\0A\00", align 1
@.str.181 = private unnamed_addr constant [41 x i8] c"ClauseName(Clause C, unsigned Ver = 0);\0A\00", align 1
@.str.182 = private unnamed_addr constant [66 x i8] c"/// Return true if \\p C is a valid clause for \\p D in version \\p \00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"Version.\0A\00", align 1
@.str.184 = private unnamed_addr constant [56 x i8] c"LLVM_ABI bool isAllowedClauseForDirective(Directive D, \00", align 1
@.str.185 = private unnamed_addr constant [30 x i8] c"Clause C, unsigned Version);\0A\00", align 1
@.str.186 = private unnamed_addr constant [50 x i8] c"constexpr std::size_t getMaxLeafCount() { return \00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"; }\0A\00", align 1
@.str.188 = private unnamed_addr constant [68 x i8] c"LLVM_ABI bool isAllowedLoopModifier(Directive D, LoopModifier LM);\0A\00", align 1
@.str.189 = private unnamed_addr constant [76 x i8] c"LLVM_ABI StringRef getLoopModifierName(LoopModifier LM, unsigned Ver = 0);\0A\00", align 1
@constinit = private unnamed_addr constant [5 x ptr] [ptr @.str.164, ptr @.str.165, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 8
@.str.190 = private unnamed_addr constant [42 x i8] c"template <> struct enum_iteration_traits<\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"> {\0A\00", align 1
@.str.192 = private unnamed_addr constant [45 x i8] c"  static constexpr bool is_iterable = true;\0A\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.194 = private unnamed_addr constant [9 x i8] c"#ifndef \00", align 1
@.str.195 = private unnamed_addr constant [9 x i8] c"#define \00", align 1
@.str.196 = private unnamed_addr constant [29 x i8] c"enableBitmaskEnumInNamespace\00", align 1
@.str.197 = private unnamed_addr constant [11 x i8] c"namespace \00", align 1
@.str.198 = private unnamed_addr constant [5 x i8] c" {\0A\0A\00", align 1
@.str.200 = private unnamed_addr constant [12 x i8] c"enum class \00", align 1
@.str.201 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.202 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.203 = private unnamed_addr constant [12 x i8] c"  First_ = \00", align 1
@.str.204 = private unnamed_addr constant [11 x i8] c"  Last_ = \00", align 1
@.str.205 = private unnamed_addr constant [30 x i8] c"static constexpr std::size_t \00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"_enumSize = \00", align 1
@.str.207 = private unnamed_addr constant [16 x i8] c"constexpr auto \00", align 1
@.str.208 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.209 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"uint32_t\00", align 1
@.str.211 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@.str.212 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"ULL\00", align 1
@.str.214 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.215 = private unnamed_addr constant [46 x i8] c"  LLVM_MARK_AS_BITMASK_ENUM(/*LargestValue=*/\00", align 1
@.str.216 = private unnamed_addr constant [29 x i8] c"makeEnumAvailableInNamespace\00", align 1
@.str.217 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.218 = private unnamed_addr constant [10 x i8] c"LLVM_ABI \00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c" get\00", align 1
@.str.220 = private unnamed_addr constant [18 x i8] c"(StringRef Str);\0A\00", align 1
@.str.221 = private unnamed_addr constant [6 x i8] c" x);\0A\00", align 1
@.str.222 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.223 = private unnamed_addr constant [25 x i8] c"// Constexpr functions.\0A\00", align 1
@.str.224 = private unnamed_addr constant [64 x i8] c"constexpr Association getDirectiveAssociation(Directive Dir) {\0A\00", align 1
@.str.225 = private unnamed_addr constant [18 x i8] c"  switch (Dir) {\0A\00", align 1
@.str.226 = private unnamed_addr constant [8 x i8] c"  case \00", align 1
@.str.227 = private unnamed_addr constant [25 x i8] c"    return Association::\00", align 1
@.str.228 = private unnamed_addr constant [21 x i8] c"  } // switch (Dir)\0A\00", align 1
@.str.229 = private unnamed_addr constant [62 x i8] c"#if !defined(__clang__) && defined(__GNUC__) && __GNUC__ < 9\0A\00", align 1
@.str.230 = private unnamed_addr constant [12 x i8] c"  abort();\0A\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"#else\0A\00", align 1
@.str.232 = private unnamed_addr constant [45 x i8] c"  llvm_unreachable(\22Unexpected directive\22);\0A\00", align 1
@.str.233 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.234 = private unnamed_addr constant [45 x i8] c"has an unrecognized value for association: '\00", align 1
@.str.235 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.236 = private unnamed_addr constant [70 x i8] c"requests association to be computed from leaves, but it has no leaves\00", align 1
@.str.237 = private unnamed_addr constant [50 x i8] c"has leaves with incompatible association values: \00", align 1
@.str.238 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.246 = private unnamed_addr constant [12 x i8] c"association\00", align 1
@.str.247 = private unnamed_addr constant [12 x i8] c"Directive '\00", align 1
@.str.248 = private unnamed_addr constant [17 x i8] c"' in namespace '\00", align 1
@.str.249 = private unnamed_addr constant [3 x i8] c"' \00", align 1
@.str.250 = private unnamed_addr constant [58 x i8] c"constexpr Category getDirectiveCategory(Directive Dir) {\0A\00", align 1
@.str.251 = private unnamed_addr constant [22 x i8] c"    return Category::\00", align 1
@.str.252 = private unnamed_addr constant [9 x i8] c"category\00", align 1
@.str.253 = private unnamed_addr constant [63 x i8] c"constexpr SourceLanguage getDirectiveLanguages(Directive D) {\0A\00", align 1
@.str.254 = private unnamed_addr constant [12 x i8] c"    return \00", align 1
@.str.255 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.256 = private unnamed_addr constant [18 x i8] c"  } // switch(D)\0A\00", align 1
@.str.257 = private unnamed_addr constant [17 x i8] c"SourceLanguage::\00", align 1
@.str.258 = private unnamed_addr constant [10 x i8] c"languages\00", align 1
@.str.259 = private unnamed_addr constant [17 x i8] c"\0A} // namespace \00", align 1
@.str.260 = private unnamed_addr constant [12 x i8] c"\0A#endif // \00", align 1
@.str.261 = private unnamed_addr constant [5 x i8] c"GEN_\00", align 1
@.str.262 = private unnamed_addr constant [23 x i8] c"_DIRECTIVE_CLAUSE_SETS\00", align 1
@.str.263 = private unnamed_addr constant [13 x i8] c"// Sets for \00", align 1
@.str.264 = private unnamed_addr constant [16 x i8] c"allowedClauses_\00", align 1
@.str.265 = private unnamed_addr constant [20 x i8] c"allowedOnceClauses_\00", align 1
@.str.266 = private unnamed_addr constant [25 x i8] c"allowedExclusiveClauses_\00", align 1
@.str.267 = private unnamed_addr constant [17 x i8] c"requiredClauses_\00", align 1
@.str.268 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.269 = private unnamed_addr constant [11 x i8] c"  Clause::\00", align 1
@.str.270 = private unnamed_addr constant [22 x i8] c"  OpenACCClauseKind::\00", align 1
@.str.271 = private unnamed_addr constant [19 x i8] c"clauseEnumSetClass\00", align 1
@.str.272 = private unnamed_addr constant [17 x i8] c"clangAccSpelling\00", align 1
@.str.273 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.274 = private unnamed_addr constant [22 x i8] c"_DIRECTIVE_CLAUSE_MAP\00", align 1
@.str.275 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.276 = private unnamed_addr constant [4 x i8] c"  {\00", align 1
@.str.277 = private unnamed_addr constant [12 x i8] c"Directive::\00", align 1
@.str.278 = private unnamed_addr constant [30 x i8] c"clang::OpenACCDirectiveKind::\00", align 1
@.str.279 = private unnamed_addr constant [7 x i8] c"    {\0A\00", align 1
@.str.280 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.281 = private unnamed_addr constant [6 x i8] c"  },\0A\00", align 1
@.str.283 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.284 = private unnamed_addr constant [3 x i8] c" _\00", align 1
@.str.285 = private unnamed_addr constant [32 x i8] c"GEN_FLANG_CLAUSE_PARSER_CLASSES\00", align 1
@.str.286 = private unnamed_addr constant [15 x i8] c"WRAPPER_CLASS(\00", align 1
@.str.287 = private unnamed_addr constant [25 x i8] c"std::optional<std::list<\00", align 1
@.str.288 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.289 = private unnamed_addr constant [15 x i8] c"std::optional<\00", align 1
@.str.290 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.291 = private unnamed_addr constant [11 x i8] c"std::list<\00", align 1
@.str.292 = private unnamed_addr constant [13 x i8] c"EMPTY_CLASS(\00", align 1
@.str.293 = private unnamed_addr constant [11 x i8] c"flangClass\00", align 1
@.str.294 = private unnamed_addr constant [16 x i8] c"isValueOptional\00", align 1
@.str.295 = private unnamed_addr constant [12 x i8] c"isValueList\00", align 1
@.str.296 = private unnamed_addr constant [37 x i8] c"GEN_FLANG_CLAUSE_PARSER_CLASSES_LIST\00", align 1
@.str.297 = private unnamed_addr constant [34 x i8] c"GEN_FLANG_DUMP_PARSE_TREE_CLAUSES\00", align 1
@.str.298 = private unnamed_addr constant [6 x i8] c"NODE(\00", align 1
@.str.299 = private unnamed_addr constant [21 x i8] c"flangClauseBaseClass\00", align 1
@.str.300 = private unnamed_addr constant [25 x i8] c"GEN_FLANG_CLAUSE_UNPARSE\00", align 1
@.str.301 = private unnamed_addr constant [20 x i8] c"void Unparse(const \00", align 1
@.str.302 = private unnamed_addr constant [8 x i8] c" &x) {\0A\00", align 1
@.str.303 = private unnamed_addr constant [9 x i8] c"  Word(\22\00", align 1
@.str.304 = private unnamed_addr constant [5 x i8] c"\22);\0A\00", align 1
@.str.305 = private unnamed_addr constant [24 x i8] c"  Walk(\22(\22, x.v, \22)\22);\0A\00", align 1
@.str.306 = private unnamed_addr constant [13 x i8] c"  Put(\22(\22);\0A\00", align 1
@.str.307 = private unnamed_addr constant [24 x i8] c"  if (x.v.has_value())\0A\00", align 1
@.str.308 = private unnamed_addr constant [21 x i8] c"    Walk(x.v, \22,\22);\0A\00", align 1
@.str.309 = private unnamed_addr constant [16 x i8] c"    Walk(x.v);\0A\00", align 1
@.str.310 = private unnamed_addr constant [8 x i8] c"  else\0A\00", align 1
@.str.311 = private unnamed_addr constant [10 x i8] c"    Put(\22\00", align 1
@.str.312 = private unnamed_addr constant [13 x i8] c"  Put(\22)\22);\0A\00", align 1
@.str.313 = private unnamed_addr constant [19 x i8] c"  Walk(x.v, \22,\22);\0A\00", align 1
@.str.314 = private unnamed_addr constant [14 x i8] c"  Walk(x.v);\0A\00", align 1
@.str.315 = private unnamed_addr constant [19 x i8] c"void Before(const \00", align 1
@.str.316 = private unnamed_addr constant [13 x i8] c" &) { Word(\22\00", align 1
@.str.317 = private unnamed_addr constant [7 x i8] c"\22); }\0A\00", align 1
@.str.318 = private unnamed_addr constant [18 x i8] c"skipFlangUnparser\00", align 1
@.str.319 = private unnamed_addr constant [13 x i8] c"defaultValue\00", align 1
@.str.320 = private unnamed_addr constant [29 x i8] c"GEN_FLANG_CLAUSE_CHECK_ENTER\00", align 1
@.str.321 = private unnamed_addr constant [26 x i8] c"void Enter(const parser::\00", align 1
@.str.322 = private unnamed_addr constant [6 x i8] c" &);\0A\00", align 1
@.str.323 = private unnamed_addr constant [33 x i8] c"GEN_FLANG_CLAUSE_PARSER_KIND_MAP\00", align 1
@.str.324 = private unnamed_addr constant [41 x i8] c"if constexpr (std::is_same_v<A, parser::\00", align 1
@.str.325 = private unnamed_addr constant [4 x i8] c">)\0A\00", align 1
@.str.326 = private unnamed_addr constant [10 x i8] c"  return \00", align 1
@.str.327 = private unnamed_addr constant [9 x i8] c"Clause::\00", align 1
@.str.328 = private unnamed_addr constant [27 x i8] c"llvm_unreachable(\22Invalid \00", align 1
@.str.329 = private unnamed_addr constant [19 x i8] c" Parser clause\22);\0A\00", align 1
@.str.330 = private unnamed_addr constant [25 x i8] c"GEN_FLANG_CLAUSES_PARSER\00", align 1
@.str.331 = private unnamed_addr constant [14 x i8] c"TYPE_PARSER(\0A\00", align 1
@.str.332 = private unnamed_addr constant [4 x i8] c"  \22\00", align 1
@.str.333 = private unnamed_addr constant [16 x i8] c"\22 >> construct<\00", align 1
@.str.334 = private unnamed_addr constant [13 x i8] c">(construct<\00", align 1
@.str.335 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str.336 = private unnamed_addr constant [4 x i8] c" ||\00", align 1
@.str.337 = private unnamed_addr constant [7 x i8] c"maybe(\00", align 1
@.str.338 = private unnamed_addr constant [15 x i8] c"parenthesized(\00", align 1
@.str.339 = private unnamed_addr constant [14 x i8] c"nonemptyList(\00", align 1
@.str.340 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.341 = private unnamed_addr constant [7 x i8] c":\22 >> \00", align 1
@.str.344 = private unnamed_addr constant [22 x i8] c"scalarIntConstantExpr\00", align 1
@.str.346 = private unnamed_addr constant [14 x i8] c"scalarIntExpr\00", align 1
@.str.348 = private unnamed_addr constant [11 x i8] c"scalarExpr\00", align 1
@.str.350 = private unnamed_addr constant [18 x i8] c"scalarLogicalExpr\00", align 1
@.str.351 = private unnamed_addr constant [8 x i8] c"Parser<\00", align 1
@.str.352 = private unnamed_addr constant [4 x i8] c">{}\00", align 1
@.str.353 = private unnamed_addr constant [5 x i8] c" || \00", align 1
@.str.354 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.355 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.356 = private unnamed_addr constant [17 x i8] c"isPrefixOptional\00", align 1
@.str.358 = private unnamed_addr constant [23 x i8] c"GEN_CLANG_CLAUSE_CLASS\00", align 1
@.str.359 = private unnamed_addr constant [16 x i8] c"#ifndef CLAUSE\0A\00", align 1
@.str.360 = private unnamed_addr constant [37 x i8] c"#define CLAUSE(Enum, Str, Implicit)\0A\00", align 1
@.str.361 = private unnamed_addr constant [22 x i8] c"#ifndef CLAUSE_CLASS\0A\00", align 1
@.str.362 = private unnamed_addr constant [40 x i8] c"#define CLAUSE_CLASS(Enum, Str, Class)\0A\00", align 1
@.str.363 = private unnamed_addr constant [25 x i8] c"#ifndef CLAUSE_NO_CLASS\0A\00", align 1
@.str.364 = private unnamed_addr constant [36 x i8] c"#define CLAUSE_NO_CLASS(Enum, Str)\0A\00", align 1
@.str.365 = private unnamed_addr constant [54 x i8] c"#define __CLAUSE(Name, Class)                      \\\0A\00", align 1
@.str.366 = private unnamed_addr constant [10 x i8] c"  CLAUSE(\00", align 1
@.str.367 = private unnamed_addr constant [40 x i8] c"##Name, #Name, /* Implicit */ false) \\\0A\00", align 1
@.str.368 = private unnamed_addr constant [16 x i8] c"  CLAUSE_CLASS(\00", align 1
@.str.369 = private unnamed_addr constant [23 x i8] c"##Name, #Name, Class)\0A\00", align 1
@.str.370 = private unnamed_addr constant [54 x i8] c"#define __CLAUSE_NO_CLASS(Name)                    \\\0A\00", align 1
@.str.371 = private unnamed_addr constant [19 x i8] c"  CLAUSE_NO_CLASS(\00", align 1
@.str.372 = private unnamed_addr constant [16 x i8] c"##Name, #Name)\0A\00", align 1
@.str.373 = private unnamed_addr constant [54 x i8] c"#define __IMPLICIT_CLAUSE_CLASS(Name, Str, Class)  \\\0A\00", align 1
@.str.374 = private unnamed_addr constant [40 x i8] c"##Name, Str, /* Implicit */ true)    \\\0A\00", align 1
@.str.375 = private unnamed_addr constant [21 x i8] c"##Name, Str, Class)\0A\00", align 1
@.str.376 = private unnamed_addr constant [54 x i8] c"#define __IMPLICIT_CLAUSE_NO_CLASS(Name, Str)      \\\0A\00", align 1
@.str.377 = private unnamed_addr constant [14 x i8] c"##Name, Str)\0A\00", align 1
@.str.378 = private unnamed_addr constant [28 x i8] c"__IMPLICIT_CLAUSE_NO_CLASS(\00", align 1
@.str.379 = private unnamed_addr constant [4 x i8] c", \22\00", align 1
@.str.380 = private unnamed_addr constant [4 x i8] c"\22)\0A\00", align 1
@.str.381 = private unnamed_addr constant [19 x i8] c"__CLAUSE_NO_CLASS(\00", align 1
@.str.382 = private unnamed_addr constant [25 x i8] c"__IMPLICIT_CLAUSE_CLASS(\00", align 1
@.str.383 = private unnamed_addr constant [4 x i8] c"\22, \00", align 1
@.str.384 = private unnamed_addr constant [10 x i8] c"__CLAUSE(\00", align 1
@.str.385 = private unnamed_addr constant [35 x i8] c"#undef __IMPLICIT_CLAUSE_NO_CLASS\0A\00", align 1
@.str.386 = private unnamed_addr constant [32 x i8] c"#undef __IMPLICIT_CLAUSE_CLASS\0A\00", align 1
@.str.387 = private unnamed_addr constant [26 x i8] c"#undef __CLAUSE_NO_CLASS\0A\00", align 1
@.str.388 = private unnamed_addr constant [17 x i8] c"#undef __CLAUSE\0A\00", align 1
@.str.389 = private unnamed_addr constant [24 x i8] c"#undef CLAUSE_NO_CLASS\0A\00", align 1
@.str.390 = private unnamed_addr constant [21 x i8] c"#undef CLAUSE_CLASS\0A\00", align 1
@.str.391 = private unnamed_addr constant [15 x i8] c"#undef CLAUSE\0A\00", align 1
@.str.392 = private unnamed_addr constant [11 x i8] c"clangClass\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DirectiveEmitter.cpp, ptr null }]
@switch.table._ZL27generateDirectiveClauseSetsRKN4llvm17DirectiveLanguageEN12_GLOBAL__N_18FrontendERNS_11raw_ostreamE = private unnamed_addr constant [3 x i8] c"\04\05\05", align 8
@switch.table._ZL27generateDirectiveClauseSetsRKN4llvm17DirectiveLanguageEN12_GLOBAL__N_18FrontendERNS_11raw_ostreamE.121 = private unnamed_addr constant [3 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53], align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17DirectiveLanguage17HasValidityErrorsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Directive", align 8   ; 8 uses
  %2 = alloca %"class.llvm::StringSet", align 8   ; 14 uses
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  %4 = alloca %"class.std::vector", align 8       ; 7 uses
  %5 = alloca %"class.std::vector", align 8       ; 7 uses
  %6 = alloca %"class.std::vector", align 8       ; 7 uses
  %7 = alloca %"class.std::vector", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.c = tail call { ptr, i64 } @_ZNK4llvm12RecordKeeper24getAllDerivedDefinitionsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr nonnull @.str.15, i64 17) #22
  %i.d = extractvalue { ptr, i64 } %i.c, 1
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !32
  store ptr @.str, ptr %9, align 8, !tbaa !33
  store i8 3, ptr %i.e, align 8, !tbaa !34
  call void @_ZN4llvm15PrintFatalErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %9) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.h = tail call { ptr, i64 } @_ZNK4llvm12RecordKeeper24getAllDerivedDefinitionsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240) %i.g, ptr nonnull @.str.5, i64 9) #22 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.j, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i
  %.not50.i = icmp eq i64 %i.j, 0
  br i1 %.not50.i, label %_ZL31hasDuplicateClausesInDirectivesN4llvm8ArrayRefIPKNS_6RecordEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEED2Ev.exit.i, %.lr.ph.i
  %.01951.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.dj, %_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEED2Ev.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.y = load ptr, ptr %.01951.i, align 8, !tbaa !35 ; 7 uses
  store ptr %i.y, ptr %1, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 16, i1 false)
  store i32 8, ptr %i.l, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNK4llvm6Record20getValueAsListOfDefsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(192) %i.y, ptr nonnull @.str.20, i64 14) #22
  %i.z = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = call fastcc noundef zeroext i1 @_ZL19hasDuplicateClausesN4llvm8ArrayRefIPKNS_6RecordEEERKNS_9DirectiveERNS_9StringSetINS_15MallocAllocatorEEE(ptr %i.z, i64 %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br i1 %i.af, label %.critedge21.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNK4llvm6Record20getValueAsListOfDefsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(192) %i.y, ptr nonnull @.str.21, i64 18) #22
  %i.ag = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = call fastcc noundef zeroext i1 @_ZL19hasDuplicateClausesN4llvm8ArrayRefIPKNS_6RecordEEERKNS_9DirectiveERNS_9StringSetINS_15MallocAllocatorEEE(ptr %i.ag, i64 %i.al, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br i1 %i.am, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZNK4llvm6Record20getValueAsListOfDefsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(192) %i.y, ptr nonnull @.str.22, i64 23) #22
  %i.an = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %i.at = call fastcc noundef zeroext i1 @_ZL19hasDuplicateClausesN4llvm8ArrayRefIPKNS_6RecordEEERKNS_9DirectiveERNS_9StringSetINS_15MallocAllocatorEEE(ptr %i.an, i64 %i.as, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  %i.au = load ptr, ptr %5, align 8, !tbaa !44    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %.critedge.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #24
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.thread.i, %bb.e
  %i.az = phi i1 [ %i.at, %.critedge.thread.i ], [ true, %bb.e ]
  %i.ba = load ptr, ptr %4, align 8, !tbaa !44    ; 3 uses
  %.not.i.i.i25.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i25.i, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit26.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !46
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.be) #24
  br label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit26.i

_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit26.i: ; preds = %bb.h, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.critedge21.i

.critedge21.i:                                    ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit26.i, %bb.d
  %spec.select.i = phi i1 [ %i.az, %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit26.i ], [ true, %bb.d ]
  %i.bf = load ptr, ptr %3, align 8, !tbaa !44    ; 3 uses
  %.not.i.i.i27.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i27.i, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit28.i, label %bb.i

bb.i:                                             ; preds = %.critedge21.i
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #24
  br label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit28.i

_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit28.i: ; preds = %bb.i, %.critedge21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bk = load i32, ptr %i.s, align 4, !tbaa !47
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5clearEv.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit28.i
  %i.bm = load ptr, ptr %2, align 8, !tbaa !48    ; 2 uses
  %i.bn = load i32, ptr %i.t, align 8, !tbaa !49  ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %.idx.i.i = shl nuw nsw i64 %i.bo, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx.i.i
  %.not12.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not12.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.l, %bb.j
  store i32 0, ptr %i.s, align 4, !tbaa !47
  br label %_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5clearEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.l
  %.013.i.i = phi ptr [ %i.bt, %bb.l ], [ %i.bm, %bb.j ] ; 3 uses
  %i.bq = load ptr, ptr %.013.i.i, align 8, !tbaa !51 ; 3 uses
  %.not11.i.i = icmp eq ptr %i.bq, null
  br i1 %.not11.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !54
  %i.bs = add i64 %i.br, 9
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i64 noundef %i.bs, i64 noundef 8) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  store ptr null, ptr %.013.i.i, align 8, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, %i.bp
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5clearEv.exit.i: ; preds = %._crit_edge.i.i, %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZNK4llvm6Record20getValueAsListOfDefsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %6, ptr noundef nonnull align 8 dereferenceable(192) %i.y, ptr nonnull @.str.20, i64 14) #22
  %i.bu = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.bv = load ptr, ptr %i.u, align 8, !tbaa !45
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 3
  %i.ca = call fastcc noundef zeroext i1 @_ZL19hasDuplicateClausesN4llvm8ArrayRefIPKNS_6RecordEEERKNS_9DirectiveERNS_9StringSetINS_15MallocAllocatorEEE(ptr %i.bu, i64 %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br i1 %i.ca, label %.critedge23.i, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5clearEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZNK4llvm6Record20getValueAsListOfDefsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(192) %i.y, ptr nonnull @.str.23, i64 15) #22
  %i.cb = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.cc = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.cd = ptrtoint ptr %i.cc to i64
end_hunk_0
begin_hunk_1_@_ZL19hasDuplicateClausesN4llvm8ArrayRefIPKNS_6RecordEEERKNS_9DirectiveERNS_9StringSetINS_15MallocAllocatorEEE:bb.a

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1, %bb.e ]
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.051 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.e ]
  %.01850 = phi ptr [ %0, %.lr.ph ], [ %i.ag, %bb.e ] ; 2 uses
  %i.m = load ptr, ptr %.01850, align 8, !tbaa !35
  %i.n = call noundef ptr @_ZNK4llvm6Record13getValueAsDefENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.m, ptr nonnull @.str.19, i64 6) #22
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !92 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !93 ; 8 uses
  %i.q = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #22
  %i.r = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i, i32 noundef %i.q) #22 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !48
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !51
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4llvmplERKNS_5TwineES2_.exit41

bb.c:                                             ; preds = %bb.b
  %i.w = add i64 %.sroa.2.0.copyload.i.i.i, 9
  %i.x = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #22 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i, i1 false)
  br label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.thread

_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.thread: ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.2.0.copyload.i.i.i
  store i8 0, ptr %i.z, align 1, !tbaa !33
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.x, align 8, !tbaa !54
  store ptr %i.x, ptr %i.u, align 8, !tbaa !51
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !47
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.l, align 4, !tbaa !47
  %i.ac = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %3, i32 noundef %i.r) #22 ; 0 uses
  br label %bb.e

_ZN4llvmplERKNS_5TwineES2_.exit41:                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i8 3, ptr %i.b, align 8, !tbaa !34, !alias.scope !569
  store i8 5, ptr %i.c, align 1, !tbaa !32, !alias.scope !569
  store ptr @.str.17, ptr %6, align 8, !tbaa !33, !alias.scope !569
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.d, align 8, !tbaa !33, !alias.scope !569
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.e, align 8, !tbaa !33, !alias.scope !569
  store ptr %6, ptr %5, align 8, !alias.scope !570
  store ptr @.str.18, ptr %i.f, align 8, !alias.scope !570
  store i8 2, ptr %i.g, align 8, !tbaa !34, !alias.scope !570
  store i8 3, ptr %i.h, align 1, !tbaa !32, !alias.scope !570
  %i.ad = load ptr, ptr %2, align 8, !tbaa !37
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !90 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i23 = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.2.0.copyload.i.i.i24 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i23, align 8, !tbaa !93
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.0.0.copyload.i.i.i22 = load ptr, ptr %i.af, align 8, !tbaa !92
  store ptr %5, ptr %4, align 8, !alias.scope !571
  store ptr %.sroa.0.0.copyload.i.i.i22, ptr %i.k, align 8, !alias.scope !571
  store i64 %.sroa.2.0.copyload.i.i.i24, ptr %.sroa.2.0..sroa_idx.i.i.i40, align 8, !tbaa !33, !alias.scope !571
  store i8 2, ptr %i.i, align 8, !tbaa !34, !alias.scope !571
  store i8 5, ptr %i.j, align 1, !tbaa !32, !alias.scope !571
  call void @_ZN4llvm10PrintErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.thread, %_ZN4llvmplERKNS_5TwineES2_.exit41
  %.1 = phi i1 [ %.051, %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.thread ], [ true, %_ZN4llvmplERKNS_5TwineES2_.exit41 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01850, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare void @_ZN4llvm10PrintErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Twine") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(34) %2) local_unnamed_addr #4 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !34, !noalias !574 ; 3 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !34, !noalias !574 ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.g, align 8, !tbaa !34, !alias.scope !574
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !32, !alias.scope !574
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.b, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !575
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i8 %i.e, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !575
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.l = load i8, ptr %i.k, align 1, !tbaa !32, !noalias !574
  %i.m = icmp eq i8 %i.l, 1                       ; 3 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %1, align 8, !noalias !574
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !574
  %.014.i = select i1 %i.m, i8 %i.b, i8 2
  %.sroa.05.0.i = select i1 %i.m, ptr %.sroa.05.0.copyload.i, ptr %1
  %.sroa.56.0.i = select i1 %i.m, i64 %.sroa.56.0.copyload.i, i64 undef
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !32, !noalias !574
  %i.p = icmp eq i8 %i.o, 1                       ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %2, align 8, !noalias !574
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !574
  %.0.i = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.04.0.i = select i1 %i.p, ptr %.sroa.04.0.copyload.i, ptr %2
  %.sroa.5.0.i = select i1 %i.p, i64 %.sroa.5.0.copyload.i, i64 undef
  store ptr %.sroa.05.0.i, ptr %0, align 8, !alias.scope !574
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.56.0.i, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !33, !alias.scope !574
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.04.0.i, ptr %i.q, align 8, !alias.scope !574
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !33, !alias.scope !574
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.014.i, ptr %i.r, align 8, !tbaa !34, !alias.scope !574
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !32, !alias.scope !574
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

_ZNK4llvm5Twine6concatERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

declare noundef ptr @_ZNK4llvm6Record13getValueAsDefENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #3

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #3

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNK4llvm6Record20getValueAsListOfDefsENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12getQualifierB5cxx11RKN4llvm17DirectiveLanguageEN12_GLOBAL__N_18FrontendE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.0.val, i32 noundef range(i32 0, 3) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.b = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL27generateDirectiveClauseSetsRKN4llvm17DirectiveLanguageEN12_GLOBAL__N_18FrontendERNS_11raw_ostreamE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %1 to i64
  %switch.gep15 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZL27generateDirectiveClauseSetsRKN4llvm17DirectiveLanguageEN12_GLOBAL__N_18FrontendERNS_11raw_ostreamE.121, i64 %i.c
  %switch.load16 = load ptr, ptr %switch.gep15, align 8
  store ptr %switch.load16, ptr %4, align 8, !alias.scope !590
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %switch.ext, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !33, !alias.scope !590
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.50, ptr %i.d, align 8, !alias.scope !590
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 5, ptr %i.e, align 8, !tbaa !34, !alias.scope !590
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.f, align 1, !tbaa !32, !alias.scope !590
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.g = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %.0.val, ptr nonnull @.str.54, i64 12) #22 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 3 uses
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %.not.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !110, !alias.scope !591
  br i1 %.not.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %switch.lookup
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !106, !alias.scope !591
  store i8 0, ptr %i.j, align 8, !tbaa !33, !alias.scope !591
  br label %_ZN4llvmplERKNS_5TwineES2_.exit30

bb.b:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !591
  store i64 %i.i, ptr %i.a, align 8, !tbaa !93, !noalias !591
  %i.l = icmp ugt i64 %i.i, 15
  br i1 %i.l, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !105, !alias.scope !591
  %i.n = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !591
  store i64 %i.n, ptr %i.j, align 8, !tbaa !33, !alias.scope !591
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.m, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.h, align 1, !tbaa !33
  store i8 %i.p, ptr %i.o, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.h, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !591 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !106, !alias.scope !591
  %i.s = load ptr, ptr %5, align 8, !tbaa !105, !alias.scope !591
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !591
  br label %_ZN4llvmplERKNS_5TwineES2_.exit30

_ZN4llvmplERKNS_5TwineES2_.exit30:                ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  store ptr %4, ptr %3, align 8, !alias.scope !592
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %i.u, align 8, !alias.scope !592
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !34, !alias.scope !592
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 4, ptr %i.w, align 1, !tbaa !32, !alias.scope !592
  store ptr %3, ptr %2, align 8, !alias.scope !593
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @.str.50, ptr %i.x, align 8, !alias.scope !593
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 2, ptr %i.y, align 8, !tbaa !34, !alias.scope !593
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 3, ptr %i.z, align 1, !tbaa !32, !alias.scope !593
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #22
  %i.aa = load ptr, ptr %5, align 8, !tbaa !105   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit30
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !33
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL17getIdentifierNameB5cxx11PKN4llvm6RecordENS_9StringRefE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, ptr nofree readonly captures(address_is_null) %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.llvm::BaseRecord", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %.not.i = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !110, !alias.scope !596
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !106, !alias.scope !596
  store i8 0, ptr %i.b, align 8, !tbaa !33, !alias.scope !596
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !596
  store i64 %3, ptr %i.a, align 8, !tbaa !93, !noalias !596
  %i.d = icmp ugt i64 %3, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !105, !alias.scope !596
  %i.f = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !596
  store i64 %i.f, ptr %i.b, align 8, !tbaa !33, !alias.scope !596
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ %i.e, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %3, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i8, ptr %2, align 1, !tbaa !33
  store i8 %i.h, ptr %i.g, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !596 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !106, !alias.scope !596
  %i.k = load ptr, ptr %4, align 8, !tbaa !105, !alias.scope !596
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !596
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %1, ptr %6, align 8, !tbaa !37
  call void @_ZNK4llvm10BaseRecord16getFormattedNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.m = load ptr, ptr %5, align 8, !tbaa !105    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !33
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.r = load ptr, ptr %4, align 8, !tbaa !105    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !33
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_1
begin_hunk_2_@_ZL23emitDirectivesFlangImplRKN4llvm17DirectiveLanguageERNS_11raw_ostreamE:bb.a

bb.jd:                                            ; preds = %bb.jc
  %i.aza = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.353, i64 noundef 4) #22 ; 2 uses
  %.phi.trans.insert304.i = getelementptr inbounds nuw i8, ptr %i.aza, i64 32
  %.pre305.i = load ptr, ptr %.phi.trans.insert304.i, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit165.i

bb.je:                                            ; preds = %bb.jc
  store i32 545029152, ptr %i.ayv, align 1
  %i.azb = load ptr, ptr %i.aga, align 8, !tbaa !100
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 4 ; 2 uses
  store ptr %i.azc, ptr %i.aga, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit165.i

_ZN4llvm11raw_ostreamlsEPKc.exit165.i:            ; preds = %bb.je, %bb.jd
  %i.azd = phi ptr [ %.pre305.i, %bb.jd ], [ %i.azc, %bb.je ] ; 2 uses
  %.0.i.i164.i = phi ptr [ %i.aza, %bb.jd ], [ %1, %bb.je ] ; 3 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %.0.i.i164.i, i64 24
  %i.azf = load ptr, ptr %i.aze, align 8, !tbaa !99
  %i.azg = getelementptr inbounds nuw i8, ptr %.0.i.i164.i, i64 32 ; 2 uses
  %i.azh = ptrtoint ptr %i.azf to i64
  %i.azi = ptrtoint ptr %i.azd to i64
  %i.azj = sub i64 %i.azh, %i.azi
  %i.azk = icmp ugt i64 %spec.select174, %i.azj
  br i1 %i.azk, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit165.i
  %i.azl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i164.i, ptr noundef %spec.select, i64 noundef %spec.select174) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit168.i

bb.jg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit165.i
  %.not.i166.i = icmp eq i64 %spec.select174, 0
  br i1 %.not.i166.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit168.i, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.azd, ptr align 1 %spec.select, i64 %spec.select174, i1 false)
  %i.azm = load ptr, ptr %i.azg, align 8, !tbaa !100
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 %spec.select174
  store ptr %i.azn, ptr %i.azg, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit168.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit168.i: ; preds = %bb.jh, %bb.jg, %bb.jf, %bb.jb, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit162.i
  %i.azo = load ptr, ptr %5, align 8, !tbaa !37
  %i.azp = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.azo, ptr nonnull @.str.295, i64 11) #22
  %.pre307.i = load ptr, ptr %i.aga, align 8, !tbaa !100 ; 3 uses
  br i1 %i.azp, label %bb.ji, label %_ZN4llvm11raw_ostreamlsEPKc.exit171.i

bb.ji:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit168.i
  %i.azq = load ptr, ptr %i.afy, align 8, !tbaa !99
  %i.azr = icmp eq ptr %i.azq, %.pre307.i
  br i1 %i.azr, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.azs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.354, i64 noundef 1) #22 ; 0 uses
  %.pre306.i = load ptr, ptr %i.aga, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit171.i

bb.jk:                                            ; preds = %bb.ji
  store i8 41, ptr %.pre307.i, align 1
  %i.azt = load ptr, ptr %i.aga, align 8, !tbaa !100
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 1 ; 2 uses
  store ptr %i.azu, ptr %i.aga, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit171.i

_ZN4llvm11raw_ostreamlsEPKc.exit171.i:            ; preds = %bb.jk, %bb.jj, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit168.i
  %i.azv = phi ptr [ %i.azu, %bb.jk ], [ %.pre306.i, %bb.jj ], [ %.pre307.i, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit168.i ] ; 2 uses
  %i.azw = load ptr, ptr %i.afy, align 8, !tbaa !99
  %i.azx = icmp eq ptr %i.azw, %i.azv
  br i1 %i.azx, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit171.i
  %i.azy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.354, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit174.i

bb.jm:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit171.i
  store i8 41, ptr %i.azv, align 1
  %i.azz = load ptr, ptr %i.aga, align 8, !tbaa !100
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 1
  store ptr %i.baa, ptr %i.aga, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit174.i

_ZN4llvm11raw_ostreamlsEPKc.exit174.i:            ; preds = %bb.jm, %bb.jl
  %i.bab = load ptr, ptr %5, align 8, !tbaa !37
  %i.bac = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.bab, ptr nonnull @.str.294, i64 15) #22
  %.pre309.i = load ptr, ptr %i.aga, align 8, !tbaa !100 ; 3 uses
  br i1 %i.bac, label %bb.jn, label %_ZN4llvm11raw_ostreamlsEPKc.exit177.i

bb.jn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit174.i
  %i.bad = load ptr, ptr %i.afy, align 8, !tbaa !99
  %i.bae = icmp eq ptr %i.bad, %.pre309.i
  br i1 %i.bae, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.baf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.354, i64 noundef 1) #22 ; 0 uses
  %.pre308.i = load ptr, ptr %i.aga, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit177.i

bb.jp:                                            ; preds = %bb.jn
  store i8 41, ptr %.pre309.i, align 1
  %i.bag = load ptr, ptr %i.aga, align 8, !tbaa !100
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 1 ; 2 uses
  store ptr %i.bah, ptr %i.aga, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit177.i

_ZN4llvm11raw_ostreamlsEPKc.exit177.i:            ; preds = %bb.jp, %bb.jo, %_ZN4llvm11raw_ostreamlsEPKc.exit174.i
  %i.bai = phi ptr [ %i.bah, %bb.jp ], [ %.pre308.i, %bb.jo ], [ %.pre309.i, %_ZN4llvm11raw_ostreamlsEPKc.exit174.i ] ; 2 uses
  %i.baj = load ptr, ptr %i.afy, align 8, !tbaa !99
  %i.bak = ptrtoint ptr %i.baj to i64
  %i.bal = ptrtoint ptr %i.bai to i64
  %i.bam = sub i64 %i.bak, %i.bal
  %i.ban = icmp ult i64 %i.bam, 2
  br i1 %i.ban, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit177.i
  %i.bao = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.335, i64 noundef 2) #22 ; 0 uses
  %.pre311.pre.i = load ptr, ptr %i.aga, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit180.i

bb.jr:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit177.i
  store i16 10537, ptr %i.bai, align 1
  %i.bap = load ptr, ptr %i.aga, align 8, !tbaa !100
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bap, i64 2 ; 2 uses
  store ptr %i.baq, ptr %i.aga, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit180.i

_ZN4llvm11raw_ostreamlsEPKc.exit180.i:            ; preds = %bb.jr, %bb.jq
  %.pre311.i = phi ptr [ %.pre311.pre.i, %bb.jq ], [ %i.baq, %bb.jr ] ; 3 uses
  %.not.i92 = icmp eq i64 %.sroa.7.0288.i, %i.aox
  br i1 %.not.i92, label %_ZN4llvm11raw_ostreamlsEPKc.exit183.i, label %bb.js

bb.js:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit180.i
  %i.bar = load ptr, ptr %i.afy, align 8, !tbaa !99
  %i.bas = ptrtoint ptr %i.bar to i64
  %i.bat = ptrtoint ptr %.pre311.i to i64
  %i.bau = sub i64 %i.bas, %i.bat
  %i.bav = icmp ult i64 %i.bau, 3
  br i1 %i.bav, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.baw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.336, i64 noundef 3) #22 ; 0 uses
  %.pre310.i = load ptr, ptr %i.aga, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit183.i

bb.ju:                                            ; preds = %bb.js
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.pre311.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.336, i64 3, i1 false)
  %i.bax = load ptr, ptr %i.aga, align 8, !tbaa !100
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 3 ; 2 uses
  store ptr %i.bay, ptr %i.aga, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit183.i

_ZN4llvm11raw_ostreamlsEPKc.exit183.i:            ; preds = %bb.ju, %bb.jt, %_ZN4llvm11raw_ostreamlsEPKc.exit180.i
  %i.baz = phi ptr [ %i.bay, %bb.ju ], [ %.pre310.i, %bb.jt ], [ %.pre311.i, %_ZN4llvm11raw_ostreamlsEPKc.exit180.i ] ; 2 uses
  %i.bba = load ptr, ptr %i.afy, align 8, !tbaa !99
  %i.bbb = icmp eq ptr %i.bba, %i.baz
  br i1 %i.bbb, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit183.i
  %i.bbc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.25, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit186.i

bb.jw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit183.i
  store i8 10, ptr %i.baz, align 1
  %i.bbd = load ptr, ptr %i.aga, align 8, !tbaa !100
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbd, i64 1
  store ptr %i.bbe, ptr %i.aga, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit186.i

_ZN4llvm11raw_ostreamlsEPKc.exit186.i:            ; preds = %bb.jw, %bb.jv
  %i.bbf = load ptr, ptr %7, align 8, !tbaa !811  ; 2 uses
  %i.bbg = icmp eq ptr %i.bbf, %i.aon
  br i1 %i.bbg, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit.i, label %bb.jx

bb.jx:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit186.i
  call void @free(ptr noundef %i.bbf) #22
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit.i

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit.i:        ; preds = %bb.jx, %_ZN4llvm11raw_ostreamlsEPKc.exit186.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit93.i93

_ZN4llvm11raw_ostreamlsEPKc.exit93.i93:           ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit.i, %bb.if, %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bbh = add i64 %.sroa.7.0288.i, 1
  %i.bbi = getelementptr inbounds nuw i8, ptr %.sroa.0226.0287.i, i64 32 ; 2 uses
  %.not285.i = icmp eq ptr %i.bbi, %.sroa.9.4253.i
  br i1 %.not285.i, label %._crit_edge.i94, label %bb.he

_ZL26generateFlangClausesParserRKN4llvm17DirectiveLanguageERNS_11raw_ostreamE.exit: ; preds = %_ZNSt6vectorISt4pairIPKN4llvm6RecordENS1_9directive8SpellingEESaIS7_EED2Ev.exit.i, %bb.hd
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL27generateDirectiveClauseSetsRKN4llvm17DirectiveLanguageEN12_GLOBAL__N_18FrontendERNS_11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 1, 3) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #0 {
_ZL13getFESpellingN12_GLOBAL__N_18FrontendE.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.llvm::IfDefEmitter", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.llvm::NamespaceEmitter", align 8 ; 8 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvm::Directive", align 8  ; 12 uses
  %14 = alloca %"class.std::vector", align 8      ; 7 uses
  %15 = alloca %"class.std::vector", align 8      ; 7 uses
  %16 = alloca %"class.std::vector", align 8      ; 7 uses
  %17 = alloca %"class.std::vector", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.b = icmp eq i32 %1, 2
  %.str.53..str.52 = select i1 %i.b, ptr @.str.53, ptr @.str.52
  store ptr %.str.53..str.52, ptr %7, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 5, ptr %i.c, align 8
  call void @_ZNK4llvm9StringRef5upperB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.d = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.261, i64 noundef 4) #22, !noalias !834 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !110, !alias.scope !834
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.a:                                             ; preds = %_ZL13getFESpellingN12_GLOBAL__N_18FrontendE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !106  ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZL13getFESpellingN12_GLOBAL__N_18FrontendE.exit
  store ptr %i.f, ptr %5, align 8, !tbaa !105, !alias.scope !834
  %i.m = load i64, ptr %i.g, align 8, !tbaa !33
  store i64 %i.m, ptr %i.e, align 8, !tbaa !33, !alias.scope !834
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !106
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.n = phi i64 [ %i.j, %bb.a ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !106, !alias.scope !834
  store ptr %i.g, ptr %i.d, align 8, !tbaa !105
  store i64 0, ptr %i.o, align 8, !tbaa !106
  store i8 0, ptr %i.g, align 8, !tbaa !33
  call void @llvm.experimental.noalias.scope.decl(metadata !835)
  %i.q = add i64 %i.n, -4611686018427387882
  %i.r = icmp ult i64 %i.q, 22
  br i1 %i.r, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23, !noalias !835
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.s = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.262, i64 noundef 22) #22, !noalias !835 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !110, !alias.scope !835
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !105  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !106  ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.u, ptr %4, align 8, !tbaa !105, !alias.scope !835
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !33
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !33, !alias.scope !835
  %.phi.trans.insert.i27 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.pre.i28 = load i64, ptr %.phi.trans.insert.i27, align 8, !tbaa !106
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.ac = phi i64 [ %i.y, %bb.c ], [ %.pre.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !106, !alias.scope !835
  store ptr %i.v, ptr %i.s, align 8, !tbaa !105
  store i64 0, ptr %i.ad, align 8, !tbaa !106
  store i8 0, ptr %i.v, align 8, !tbaa !33
  %i.af = load ptr, ptr %4, align 8, !tbaa !105
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !106
  call void @_ZN4llvm12IfDefEmitterC2ERNS_11raw_ostreamENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %i.af, i64 %i.ag, i1 noundef zeroext false)
  %i.ah = load ptr, ptr %4, align 8, !tbaa !105   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.t
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !33
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.al = load ptr, ptr %5, align 8, !tbaa !105   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.e
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load i64, ptr %i.e, align 8, !tbaa !33
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  %i.ap = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !33
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %18 = icmp eq i32 %1, 1
  %19 = select i1 %18, i32 0, i32 %1              ; 2 uses
  %20 = zext nneg i32 %19 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL27generateDirectiveClauseSetsRKN4llvm17DirectiveLanguageEN12_GLOBAL__N_18FrontendERNS_11raw_ostreamE, i64 %20
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 3 uses
  %21 = zext nneg i32 %19 to i64
  %switch.gep128 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZL27generateDirectiveClauseSetsRKN4llvm17DirectiveLanguageEN12_GLOBAL__N_18FrontendERNS_11raw_ostreamE.121, i64 %21
  %switch.load129 = load ptr, ptr %switch.gep128, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.au, ptr %8, align 8, !tbaa !110, !alias.scope !836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 1 dereferenceable(1) %switch.load129, i64 %switch.ext, i1 false)
  %22 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %switch.ext, ptr %22, align 8, !tbaa !106, !alias.scope !836
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %switch.ext
  store i8 0, ptr %i.av, align 1, !tbaa !33
  %i.aw = load ptr, ptr %0, align 8, !tbaa !94
  %i.ax = call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.aw, ptr nonnull @.str.54, i64 12) #22
  %i.ay = extractvalue { ptr, i64 } %i.ax, 1
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ba = load ptr, ptr %0, align 8, !tbaa !94
  %i.bb = call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.ba, ptr nonnull @.str.54, i64 12) #22 ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0      ; 3 uses
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %.not.i42 = icmp eq ptr %i.bc, null
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.be, ptr %10, align 8, !tbaa !110, !alias.scope !837
  br i1 %.not.i42, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !106, !alias.scope !837
  store i8 0, ptr %i.be, align 8, !tbaa !33, !alias.scope !837
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit45

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !837
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !93, !noalias !837
  %i.bg = icmp ugt i64 %i.bd, 15
  br i1 %i.bg, label %bb.g, label %._crit_edge.i.i.i43

bb.g:                                             ; preds = %bb.f
  %i.bh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.bh, ptr %10, align 8, !tbaa !105, !alias.scope !837
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !837
  store i64 %i.bi, ptr %i.be, align 8, !tbaa !33, !alias.scope !837
  br label %._crit_edge.i.i.i43

._crit_edge.i.i.i43:                              ; preds = %bb.g, %bb.f
  %i.bj = phi ptr [ %i.bh, %bb.g ], [ %i.be, %bb.f ] ; 2 uses
  switch i64 %i.bd, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i44
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i43
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !33
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i44

bb.i:                                             ; preds = %._crit_edge.i.i.i43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull align 1 %i.bc, i64 %i.bd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i44: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i43
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !837 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !106, !alias.scope !837
  %i.bn = load ptr, ptr %10, align 8, !tbaa !105, !alias.scope !837
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !837
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit45

_ZNK4llvm9StringRef3strB5cxx11Ev.exit45:          ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i44
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.bp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.50, i64 noundef 2) #22, !noalias !838 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.bq, ptr %9, align 8, !tbaa !110, !alias.scope !838
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !105 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 5 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

bb.j:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit45
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !106 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.bx, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit45
  store ptr %i.br, ptr %9, align 8, !tbaa !105, !alias.scope !838
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !33
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !33, !alias.scope !838
  %.phi.trans.insert.i47 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.pre.i48 = load i64, ptr %.phi.trans.insert.i47, align 8, !tbaa !106
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit49

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit49: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %i.bz = phi i64 [ %i.bv, %bb.j ], [ %.pre.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !106, !alias.scope !838
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !105
  store i64 0, ptr %i.ca, align 8, !tbaa !106
  store i8 0, ptr %i.bs, align 8, !tbaa !33
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !106 ; 2 uses
  %i.cd = load i64, ptr %22, align 8, !tbaa !106
  %i.ce = sub i64 4611686018427387903, %i.cd
  %i.cf = icmp ult i64 %i.ce, %i.cc
  br i1 %i.cf, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.k:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit49
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit49
  %i.cg = load ptr, ptr %9, align 8, !tbaa !105
  %i.ch = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.cg, i64 noundef %i.cc) #22 ; 0 uses
  %i.ci = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bq
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ck = load i64, ptr %i.bq, align 8, !tbaa !33
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  %i.cm = load ptr, ptr %10, align 8, !tbaa !105  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !33
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.cr, align 8, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.cs, align 1, !tbaa !32
  store ptr %8, ptr %12, align 8, !tbaa !33
  call void @_ZN4llvm16NamespaceEmitterC2ERNS_11raw_ostreamERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(34) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.cv = call { ptr, i64 } @_ZNK4llvm12RecordKeeper24getAllDerivedDefinitionsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240) %i.cu, ptr nonnull @.str.5, i64 9) #22 ; 2 uses
  %i.cw = extractvalue { ptr, i64 } %i.cv, 0      ; 2 uses
  %i.cx = extractvalue { ptr, i64 } %i.cv, 1      ; 2 uses
  %.idx = shl nuw nsw i64 %i.cx, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx
  %.not94 = icmp eq i64 %i.cx, 0
  br i1 %.not94, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 16
  br label %bb.r

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit72, %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !106
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZN4llvm11raw_ostreamlsEPKc.exit3.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !174, !nonnull !28, !align !29 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !99
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 32 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !100 ; 2 uses
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = icmp ult i64 %i.du, 16
  br i1 %i.dv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dn, ptr noundef nonnull @.str.259, i64 noundef 16) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dr, ptr noundef nonnull align 1 dereferenceable(16) @.str.259, i64 16, i1 false)
  %i.dx = load ptr, ptr %i.dq, align 8, !tbaa !100
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store ptr %i.dy, ptr %i.dq, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.o, %bb.n
  %.0.i.i.i = phi ptr [ %i.dw, %bb.n ], [ %i.dn, %bb.o ]
  %i.dz = load ptr, ptr %11, align 8, !tbaa !105
  %i.ea = load i64, ptr %i.dj, align 8, !tbaa !106
  %i.eb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, ptr noundef %i.dz, i64 noundef %i.ea) #22 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !99
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 32 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !100 ; 2 uses
  %i.eg = icmp eq ptr %i.ed, %i.ef
  br i1 %i.eg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.eh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.eb, ptr noundef nonnull @.str.25, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit3.i

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  store i8 10, ptr %i.ef, align 1
  %i.ei = load ptr, ptr %i.ee, align 8, !tbaa !100
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store ptr %i.ej, ptr %i.ee, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit3.i

_ZN4llvm11raw_ostreamlsEPKc.exit3.i:              ; preds = %bb.q, %bb.p, %._crit_edge
  %i.ek = load ptr, ptr %11, align 8, !tbaa !105  ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZN4llvm16NamespaceEmitterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit3.i
  %i.en = load i64, ptr %i.el, align 8, !tbaa !33
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #24
  br label %_ZN4llvm16NamespaceEmitterD2Ev.exit

_ZN4llvm16NamespaceEmitterD2Ev.exit:              ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ep = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.au
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZN4llvm16NamespaceEmitterD2Ev.exit
  %i.er = load i64, ptr %i.au, align 8, !tbaa !33
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZN4llvm16NamespaceEmitterD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN4llvm12IfDefEmitterD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.r:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit72
  %.095 = phi ptr [ %i.cw, %.lr.ph ], [ %i.hv, %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit72 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.et = load ptr, ptr %.095, align 8, !tbaa !35
  store ptr %i.et, ptr %13, align 8, !tbaa !37
  %i.eu = load ptr, ptr %i.cz, align 8, !tbaa !99
  %i.ev = load ptr, ptr %i.da, align 8, !tbaa !100 ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = icmp ult i64 %i.ey, 12
  br i1 %i.ez, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.263, i64 noundef 12) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ev, ptr noundef nonnull align 1 dereferenceable(12) @.str.263, i64 12, i1 false)
  %i.fb = load ptr, ptr %i.da, align 8, !tbaa !100
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store ptr %i.fc, ptr %i.da, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.s, %bb.t
  %.0.i.i = phi ptr [ %i.fa, %bb.s ], [ %2, %bb.t ] ; 5 uses
  %i.fd = call { ptr, i64 } @_ZNK4llvm10BaseRecord24getSpellingForIdentifierEv(ptr noundef nonnull align 8 dereferenceable(8) %13) ; 2 uses
  %i.fe = extractvalue { ptr, i64 } %i.fd, 0      ; 2 uses
  %i.ff = extractvalue { ptr, i64 } %i.fd, 1      ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !99
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !100 ; 3 uses
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = icmp ugt i64 %i.ff, %i.fm
  br i1 %i.fn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.fo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.fe, i64 noundef %i.ff) #22 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i59 = icmp eq i64 %i.ff, 0
  br i1 %.not.i59, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fj, ptr align 1 %i.fe, i64 %i.ff, i1 false)
  %i.fp = load ptr, ptr %i.fi, align 8, !tbaa !100
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ff ; 2 uses
  store ptr %i.fq, ptr %i.fi, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.u, %bb.v, %bb.w
  %i.fr = phi ptr [ %.pre, %bb.u ], [ %i.fq, %bb.w ], [ %i.fj, %bb.v ] ; 2 uses
  %.0.i = phi ptr [ %i.fo, %bb.u ], [ %.0.i.i, %bb.w ], [ %.0.i.i, %bb.v ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !99
  %i.fu = icmp eq ptr %i.ft, %i.fr
  br i1 %i.fu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.fv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.25, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i8 10, ptr %i.fr, align 1
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !100
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  store ptr %i.fy, ptr %i.fw, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

_ZN4llvm11raw_ostreamlsEPKc.exit62:               ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.fz = load ptr, ptr %13, align 8, !tbaa !37, !noalias !839
  call void @_ZNK4llvm6Record20getValueAsListOfDefsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %14, ptr noundef nonnull align 8 dereferenceable(192) %i.fz, ptr nonnull @.str.20, i64 14) #22
  %i.ga = load ptr, ptr %14, align 8, !tbaa !44   ; 2 uses
  %i.gb = load ptr, ptr %i.db, align 8, !tbaa !45
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.ga to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = ashr exact i64 %i.ge, 3
  call fastcc void @_ZL17generateClauseSetN4llvm8ArrayRefIPKNS_6RecordEEERNS_11raw_ostreamENS_9StringRefERKNS_9DirectiveERKNS_17DirectiveLanguageEN12_GLOBAL__N_18FrontendE(ptr %i.ga, i64 %i.gf, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nonnull @.str.264, i64 15, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  %i.gg = load ptr, ptr %14, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  %i.gh = load ptr, ptr %i.dc, align 8, !tbaa !46
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gk) #24
  br label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit:   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.gl = load ptr, ptr %13, align 8, !tbaa !37, !noalias !840
  call void @_ZNK4llvm6Record20getValueAsListOfDefsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %15, ptr noundef nonnull align 8 dereferenceable(192) %i.gl, ptr nonnull @.str.21, i64 18) #22
  %i.gm = load ptr, ptr %15, align 8, !tbaa !44   ; 2 uses
  %i.gn = load ptr, ptr %i.dd, align 8, !tbaa !45
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gm to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = ashr exact i64 %i.gq, 3
  call fastcc void @_ZL17generateClauseSetN4llvm8ArrayRefIPKNS_6RecordEEERNS_11raw_ostreamENS_9StringRefERKNS_9DirectiveERKNS_17DirectiveLanguageEN12_GLOBAL__N_18FrontendE(ptr %i.gm, i64 %i.gr, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nonnull @.str.265, i64 19, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  %i.gs = load ptr, ptr %15, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit66, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit
  %i.gt = load ptr, ptr %i.de, align 8, !tbaa !46
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gw) #24
  br label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit66

_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit66: ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.gx = load ptr, ptr %13, align 8, !tbaa !37, !noalias !841
  call void @_ZNK4llvm6Record20getValueAsListOfDefsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %16, ptr noundef nonnull align 8 dereferenceable(192) %i.gx, ptr nonnull @.str.22, i64 23) #22
  %i.gy = load ptr, ptr %16, align 8, !tbaa !44   ; 2 uses
  %i.gz = load ptr, ptr %i.df, align 8, !tbaa !45
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gy to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = ashr exact i64 %i.hc, 3
  call fastcc void @_ZL17generateClauseSetN4llvm8ArrayRefIPKNS_6RecordEEERNS_11raw_ostreamENS_9StringRefERKNS_9DirectiveERKNS_17DirectiveLanguageEN12_GLOBAL__N_18FrontendE(ptr %i.gy, i64 %i.hd, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nonnull @.str.266, i64 24, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  %i.he = load ptr, ptr %16, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit69, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit66
  %i.hf = load ptr, ptr %i.dg, align 8, !tbaa !46
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.he to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hi) #24
  br label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit69

_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit69: ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit66, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.hj = load ptr, ptr %13, align 8, !tbaa !37, !noalias !842
  call void @_ZNK4llvm6Record20getValueAsListOfDefsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %17, ptr noundef nonnull align 8 dereferenceable(192) %i.hj, ptr nonnull @.str.23, i64 15) #22
  %i.hk = load ptr, ptr %17, align 8, !tbaa !44   ; 2 uses
  %i.hl = load ptr, ptr %i.dh, align 8, !tbaa !45
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hk to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = ashr exact i64 %i.ho, 3
  call fastcc void @_ZL17generateClauseSetN4llvm8ArrayRefIPKNS_6RecordEEERNS_11raw_ostreamENS_9StringRefERKNS_9DirectiveERKNS_17DirectiveLanguageEN12_GLOBAL__N_18FrontendE(ptr %i.hk, i64 %i.hp, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nonnull @.str.267, i64 16, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  %i.hq = load ptr, ptr %17, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit72, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit69
  %i.hr = load ptr, ptr %i.di, align 8, !tbaa !46
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hq to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.hu) #24
  br label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit72

_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit72: ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit69, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.hv = getelementptr inbounds nuw i8, ptr %.095, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.hv, %i.cy
  br i1 %.not, label %._crit_edge, label %bb.r
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL26generateDirectiveClauseMapRKN4llvm17DirectiveLanguageEN12_GLOBAL__N_18FrontendERNS_11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 1, 3) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #0 {
_ZL13getFESpellingN12_GLOBAL__N_18FrontendE.exit:
  %3 = alloca %"class.llvm::IfDefEmitter", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.llvm::Directive", align 8   ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
end_hunk_2
