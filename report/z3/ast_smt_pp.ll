Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/ast_smt_pp?download=true
inline.NumInlined: 1202
inline.NumDeleted: 540
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0

$_ZN19smt2_pp_environmentD2Ev = comdat any

$_ZN23smt2_pp_environment_dbgD0Ev = comdat any

$_ZNK23smt2_pp_environment_dbg11get_managerEv = comdat any

$_ZN23smt2_pp_environment_dbg9get_autilEv = comdat any

$_ZN23smt2_pp_environment_dbg10get_bvutilEv = comdat any

$_ZN23smt2_pp_environment_dbg10get_arutilEv = comdat any

$_ZN23smt2_pp_environment_dbg9get_futilEv = comdat any

$_ZN23smt2_pp_environment_dbg9get_sutilEv = comdat any

$_ZN23smt2_pp_environment_dbg10get_fsutilEv = comdat any

$_ZN23smt2_pp_environment_dbg10get_dlutilEv = comdat any

$_ZN23smt2_pp_environment_dbg10get_dtutilEv = comdat any

$_ZNK23smt2_pp_environment_dbg4usesERK6symbol = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZN14core_hashtableI17default_map_entryI6symbolN12smt_renaming5sym_bEEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE6insertEO9_key_dataIS1_S3_E = comdat any

$_ZN14core_hashtableI17default_map_entryI6symbolN12smt_renaming5sym_bEEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE12expand_tableEv = comdat any

$_ZN14core_hashtableI17default_map_entryI6symbolS1_EN9table2mapIS2_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS6_13entry_eq_procEE6insertEO9_key_dataIS1_S1_E = comdat any

$_ZN14core_hashtableI17default_map_entryI6symbolS1_EN9table2mapIS2_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS6_13entry_eq_procEE12expand_tableEv = comdat any

$_ZN6vectorISt4pairIP9func_declP4exprELb1EjE13expand_vectorEv = comdat any

$_ZTVN10ast_smt_pp11is_declaredE = comdat any

$_ZTIN10ast_smt_pp11is_declaredE = comdat any

$_ZTSN10ast_smt_pp11is_declaredE = comdat any

$_ZTISt18bad_variant_access = comdat any

$_ZTSSt18bad_variant_access = comdat any

$_ZTVSt18bad_variant_access = comdat any

$_ZTV23smt2_pp_environment_dbg = comdat any

$_ZTI23smt2_pp_environment_dbg = comdat any

$_ZTS23smt2_pp_environment_dbg = comdat any

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@_ZL14m_predef_names = internal constant [21 x [8 x i8]] [[8 x i8] c"=\00\00\00\00\00\00\00", [8 x i8] c">=\00\00\00\00\00\00", [8 x i8] c"<=\00\00\00\00\00\00", [8 x i8] c"+\00\00\00\00\00\00\00", [8 x i8] c"-\00\00\00\00\00\00\00", [8 x i8] c"*\00\00\00\00\00\00\00", [8 x i8] c">\00\00\00\00\00\00\00", [8 x i8] c"<\00\00\00\00\00\00\00", [8 x i8] c"!=\00\00\00\00\00\00", [8 x i8] c"or\00\00\00\00\00\00", [8 x i8] c"and\00\00\00\00\00", [8 x i8] c"implies\00", [8 x i8] c"not\00\00\00\00\00", [8 x i8] c"iff\00\00\00\00\00", [8 x i8] c"xor\00\00\00\00\00", [8 x i8] c"true\00\00\00\00", [8 x i8] c"false\00\00\00", [8 x i8] c"forall\00\00", [8 x i8] c"exists\00\00", [8 x i8] c"let\00\00\00\00\00", [8 x i8] c"flet\00\00\00\00"], align 16
@_ZN6symbol4nullE = external local_unnamed_addr global %class.symbol, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"datatype\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"; :source { \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"(set-info :status \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"; :category { \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"(set-logic \00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"(assert\0A \00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"(check-sat)\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"(proof\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"k!\00", align 1
@_ZTVN10ast_smt_pp11is_declaredE = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN10ast_smt_pp11is_declaredE, ptr @_ZNK10ast_smt_pp11is_declaredclEP9func_decl, ptr @_ZNK10ast_smt_pp11is_declaredclEP4sort, ptr @_ZN10ast_smt_pp11is_declaredD2Ev, ptr @_ZN10ast_smt_pp11is_declaredD0Ev] }, comdat, align 8
@_ZTIN10ast_smt_pp11is_declaredE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN10ast_smt_pp11is_declaredE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN10ast_smt_pp11is_declaredE = linkonce_odr hidden constant [28 x i8] c"N10ast_smt_pp11is_declaredE\00", comdat, align 1
@_ZN10params_ref18g_empty_params_refE = external global %class.params_ref, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"pp\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"no_lets\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"AUFLIRA\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"bv\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"arith\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"fpa\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"Overflow encountered when expanding vector\00", align 1
@_ZTI17default_exception = external constant ptr
@.str.30 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8
@_ZTISt9exception = external constant ptr
@.str.32 = private unnamed_addr constant [45 x i8] c"/opt-bench/work/z3/z3/src/ast/ast_smt_pp.cpp\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"UNEXPECTED CODE WAS REACHED.\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"(let ((\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"$x\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"@x\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"?x\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"forall \00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"exists \00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"lambda \00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"choice \00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"(! \00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c" :pattern ( \00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c" :qid \00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"BitVec\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"Bool\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"FloatingPoint\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"RoundingMode\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"(as \00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"(_ \00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"std::get: variant is valueless\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"std::get: wrong index for variant\00", align 1
@_ZTISt18bad_variant_access = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt18bad_variant_access, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt18bad_variant_access = linkonce_odr constant [23 x i8] c"St18bad_variant_access\00", comdat, align 1
@_ZTVSt18bad_variant_access = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt18bad_variant_access, ptr @_ZNSt9exceptionD2Ev, ptr @_ZNSt18bad_variant_accessD0Ev, ptr @_ZNKSt18bad_variant_access4whatEv] }, comdat, align 8
@.str.59 = private unnamed_addr constant [4 x i8] c"ite\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"=>\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"(- \00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"(_ bv\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"(= ((_ extract \00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c") (_ bv1 1))\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c":lblpos\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c":lblneg\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"(! true :lblpos \00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"(=> (and\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"(and\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c" (distinct\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c" true)\00", align 1
@_ZN8rational13g_mpq_managerE = external local_unnamed_addr global ptr, align 8
@.str.75 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"(/ \00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"(declare-fun \00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"(declare-sort \00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c" 0)\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"(declare-datatypes (\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c") (\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"(par (\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@_ZTV8ast_mark = external constant { [6 x ptr] }, align 8
@_ZTV23smt2_pp_environment_dbg = linkonce_odr hidden constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr @_ZTI23smt2_pp_environment_dbg, ptr @_ZN23smt2_pp_environment_dbgD2Ev, ptr @_ZN23smt2_pp_environment_dbgD0Ev, ptr @_ZNK23smt2_pp_environment_dbg11get_managerEv, ptr @_ZN23smt2_pp_environment_dbg9get_autilEv, ptr @_ZN23smt2_pp_environment_dbg10get_bvutilEv, ptr @_ZN23smt2_pp_environment_dbg10get_arutilEv, ptr @_ZN23smt2_pp_environment_dbg9get_futilEv, ptr @_ZN23smt2_pp_environment_dbg9get_sutilEv, ptr @_ZN23smt2_pp_environment_dbg10get_fsutilEv, ptr @_ZN23smt2_pp_environment_dbg10get_dlutilEv, ptr @_ZN23smt2_pp_environment_dbg10get_dtutilEv, ptr @_ZNK23smt2_pp_environment_dbg4usesERK6symbol, ptr @_ZN19smt2_pp_environment8pp_fdeclEP9func_declRj, ptr @_ZN19smt2_pp_environment13pp_bv_literalEP3appbb, ptr @_ZN19smt2_pp_environment16pp_arith_literalEP3appbj, ptr @_ZN19smt2_pp_environment16pp_float_literalEP3appbb, ptr @_ZN19smt2_pp_environment18pp_datalog_literalEP3app, ptr @_ZN19smt2_pp_environment17pp_string_literalEP3app, ptr @_ZN19smt2_pp_environment7pp_sortEP4sort, ptr @_ZN19smt2_pp_environment12pp_fdecl_refEP9func_decl] }, comdat, align 8
@_ZTI23smt2_pp_environment_dbg = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS23smt2_pp_environment_dbg, ptr @_ZTI19smt2_pp_environment }, comdat, align 8
@_ZTS23smt2_pp_environment_dbg = linkonce_odr hidden constant [26 x i8] c"23smt2_pp_environment_dbg\00", comdat, align 1
@_ZTI19smt2_pp_environment = external constant ptr
@_ZTV19smt2_pp_environment = external constant { [22 x ptr] }, align 8
@.str.88 = private unnamed_addr constant [11 x i8] c"finite_set\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.90 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.92 = private unnamed_addr constant [43 x i8] c"/opt-bench/work/z3/z3/src/util/hashtable.h\00", align 1
@switch.table._ZN11smt_printer16visit_quantifierEP10quantifier = private unnamed_addr constant [4 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], align 8

@_ZN12smt_renamingC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN12smt_renamingC2Ev
@_ZN10ast_smt_ppC1ER11ast_manager = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN10ast_smt_ppC2ER11ast_manager

; Function Attrs: mustprogress uwtable
define hidden ptr @_ZN12smt_renaming10fix_symbolE6symboli(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.symbol, align 8              ; 6 uses
  %4 = alloca %class.symbol, align 8              ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 29 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr %1, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %i.a = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.b = and i64 %i.a, 7
  %i.c = icmp eq i64 %i.b, 1                      ; 3 uses
  %spec.select = select i1 %i.c, ptr @.str, ptr %1 ; 2 uses
  %i.d = icmp eq i32 %2, 0
  %i.e = icmp ne ptr %spec.select, null
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %_ZN12smt_renaming12all_is_legalEPKc.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %spec.select, align 1, !tbaa !15 ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %_ZN12smt_renaming12all_is_legalEPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store i64 %i.a, ptr %3, align 8, !tbaa !18
  br label %bb.ac

bb.e:                                             ; preds = %.invoke, %bb.w, %.noexc50, %bb.v, %.noexc31, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54, %bb.n, %_ZlsRSo6symbol.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.f:                                             ; preds = %bb.c
  %.not11.i = icmp eq i8 %i.f, 124
  br i1 %.not11.i, label %.preheader.i, label %.preheader12.i.preheader

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.pn.i = phi ptr [ %.0.i, %.preheader.i ], [ %1, %bb.f ] ; 2 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %i.h = load i8, ptr %.0.i, align 1, !tbaa !15
  switch i8 %i.h, label %.preheader.i [
    i8 0, label %.preheader12.i.preheader
    i8 124, label %_ZN12smt_renaming10is_specialEPKc.exit
  ], !llvm.loop !0

_ZN12smt_renaming10is_specialEPKc.exit:           ; preds = %.preheader.i
  %i.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.g, label %.preheader12.i.preheader

.preheader12.i.preheader:                         ; preds = %.preheader.i, %bb.f, %_ZN12smt_renaming10is_specialEPKc.exit
  br label %.preheader12.i

bb.g:                                             ; preds = %_ZN12smt_renaming10is_specialEPKc.exit
  store i64 %i.a, ptr %3, align 8, !tbaa !18
  br label %bb.ac

.preheader12.i:                                   ; preds = %.preheader12.i.preheader, %.preheader12.i
  %.0.i.i = phi ptr [ %i.o, %.preheader12.i ], [ %1, %.preheader12.i.preheader ] ; 2 uses
  %i.l = load i8, ptr %.0.i.i, align 1, !tbaa !15 ; 2 uses
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -58
  %isdigit.i.i = icmp ult i32 %i.n, -10
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br i1 %isdigit.i.i, label %_ZN12smt_renaming12is_numericalEPKc.exit.i, label %.preheader12.i, !llvm.loop !1

_ZN12smt_renaming12is_numericalEPKc.exit.i:       ; preds = %.preheader12.i
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %_ZN12smt_renaming12all_is_legalEPKc.exit.thread.thread, label %.preheader.i26

.preheader.i26:                                   ; preds = %_ZN12smt_renaming12is_numericalEPKc.exit.i, %_ZN12smt_renaming8is_legalEc.exit.thread.i
  %.0.i27 = phi ptr [ %i.r, %_ZN12smt_renaming8is_legalEc.exit.thread.i ], [ %1, %_ZN12smt_renaming12is_numericalEPKc.exit.i ] ; 2 uses
  %9 = load i8, ptr %.0.i27, align 1, !tbaa !15   ; 2 uses
  switch i8 %9, label %_ZN12smt_renaming8is_legalEc.exit.i [
    i8 0, label %_ZN12smt_renaming12all_is_legalEPKc.exit
    i8 95, label %_ZN12smt_renaming8is_legalEc.exit.thread.i
    i8 63, label %_ZN12smt_renaming8is_legalEc.exit.thread.i
    i8 46, label %_ZN12smt_renaming8is_legalEc.exit.thread.i
    i8 39, label %_ZN12smt_renaming8is_legalEc.exit.thread.i
    i8 33, label %_ZN12smt_renaming8is_legalEc.exit.thread.i
  ]

_ZN12smt_renaming8is_legalEc.exit.i:              ; preds = %.preheader.i26
  %i.p = sext i8 %9 to i32
  %i.q = call i32 @isalnum(i32 noundef %i.p) #22
  %.not11.i28 = icmp eq i32 %i.q, 0
  br i1 %.not11.i28, label %_ZN12smt_renaming12all_is_legalEPKc.exit.thread, label %_ZN12smt_renaming8is_legalEc.exit.thread.i

_ZN12smt_renaming8is_legalEc.exit.thread.i:       ; preds = %_ZN12smt_renaming8is_legalEc.exit.i, %.preheader.i26, %.preheader.i26, %.preheader.i26, %.preheader.i26, %.preheader.i26
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i27, i64 1
  br label %.preheader.i26, !llvm.loop !2

_ZN12smt_renaming12all_is_legalEPKc.exit:         ; preds = %.preheader.i26
  store i64 %i.a, ptr %3, align 8, !tbaa !18
  br label %bb.ac

_ZN12smt_renaming12all_is_legalEPKc.exit.thread:  ; preds = %_ZN12smt_renaming8is_legalEc.exit.i, %bb.b, %bb.a
  br i1 %i.c, label %bb.h, label %_ZN12smt_renaming12all_is_legalEPKc.exit.thread.thread

bb.h:                                             ; preds = %_ZN12smt_renaming12all_is_legalEPKc.exit.thread
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.18, i64 noundef 2)
          to label %.noexc31 unwind label %bb.e   ; 0 uses

.noexc31:                                         ; preds = %bb.h
  %i.t = lshr i64 %i.a, 3
  %i.u = trunc i64 %i.t to i32
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.u)
          to label %_ZlsRSo6symbol.exit unwind label %bb.e ; 0 uses

_ZlsRSo6symbol.exit:                              ; preds = %.noexc31
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %2)
          to label %bb.i unwind label %bb.e       ; 0 uses

bb.i:                                             ; preds = %_ZlsRSo6symbol.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.x, ptr %6, align 8, !tbaa !21, !alias.scope !312
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !24, !alias.scope !312
  store i8 0, ptr %i.x, align 8, !tbaa !15, !alias.scope !312
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28, !noalias !312 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !312 ; 2 uses
  %i.ad = icmp ugt ptr %i.aa, %i.ac
  %.08.i.i.i = select i1 %i.ad, ptr %i.aa, ptr %i.ac ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i33 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i33, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29, !noalias !312 ; 2 uses
  %i.ag = ptrtoint ptr %.08.i.i.i to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.af, i64 noundef %i.ai)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !30, !alias.scope !312 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.x
  br i1 %i.am, label %.body, label %.body.sink.split

bb.l:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.ao = load ptr, ptr %6, align 8, !tbaa !30
  invoke void @_ZN6symbolC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ao)
          to label %_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.m

_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ap = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.x
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ar = load i64, ptr %i.x, align 8, !tbaa !15
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ac

bb.m:                                             ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.x
  br i1 %i.av, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.m, %bb.k
  %.sink = phi ptr [ %i.al, %bb.k ], [ %i.au, %bb.m ]
  %.pn22.ph = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.at, %bb.m ]
  %i.aw = load i64, ptr %i.x, align 8, !tbaa !15
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ax) #23
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m, %bb.k
  %.pn22 = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.at, %bb.m ], [ %.pn22.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ad

_ZN12smt_renaming12all_is_legalEPKc.exit.thread.thread: ; preds = %_ZN12smt_renaming12is_numericalEPKc.exit.i, %_ZN12smt_renaming12all_is_legalEPKc.exit.thread
  %.not18 = icmp eq ptr %1, null
  br i1 %.not18, label %.invoke, label %bb.n

bb.n:                                             ; preds = %_ZN12smt_renaming12all_is_legalEPKc.exit.thread.thread
  %i.ay = invoke noundef zeroext i1 @_Z21is_smt2_quoted_symbolRK6symbol(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.e

bb.o:                                             ; preds = %bb.n
  br i1 %i.ay, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_Z21mk_smt2_quoted_symbolB5cxx11RK6symbol(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.az = load ptr, ptr %7, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !24
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.az, i64 noundef %i.bb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.q
  %i.bd = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !15
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.r:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.s:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.s
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !15
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.r ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.bj, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ad

bb.t:                                             ; preds = %bb.o
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8, !tbaa !18 ; 4 uses
  %i.bp = ptrtoint ptr %.sroa.0.0.copyload to i64 ; 2 uses
  %i.bq = and i64 %i.bp, 7
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.not.i46 = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i46, label %.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i47

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i47: ; preds = %bb.u
  %i.bs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.0.copyload) #21
  br label %.invoke

.invoke:                                          ; preds = %bb.u, %_ZN12smt_renaming12all_is_legalEPKc.exit.thread.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i47
  %i.bt = phi ptr [ @.str.1, %_ZN12smt_renaming12all_is_legalEPKc.exit.thread.thread ], [ %.sroa.0.0.copyload, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i47 ], [ @.str.1, %bb.u ]
  %i.bu = phi i64 [ 4, %_ZN12smt_renaming12all_is_legalEPKc.exit.thread.thread ], [ %i.bs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i47 ], [ 4, %bb.u ]
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.bt, i64 noundef %i.bu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

bb.v:                                             ; preds = %bb.t
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.18, i64 noundef 2)
          to label %.noexc50 unwind label %bb.e   ; 0 uses

.noexc50:                                         ; preds = %bb.v
  %i.bx = lshr i64 %i.bp, 3
  %i.by = trunc i64 %i.bx to i32
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.by)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.invoke, %.noexc50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.ca = icmp sgt i32 %2, 0
end_hunk_0
