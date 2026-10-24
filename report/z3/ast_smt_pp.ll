Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/ast_smt_pp?download=true
inline.NumInlined: 1202
inline.NumDeleted: 540
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
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
  %i.f = load i8, ptr %spec.select, align 1, !tbaa !15 ; 3 uses
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
  %.0.i.i = phi ptr [ %i.m, %.preheader12.i ], [ %1, %.preheader12.i.preheader ] ; 2 uses
  %i.l = load i8, ptr %.0.i.i, align 1, !tbaa !15 ; 2 uses
  %9 = add i8 %i.l, -48
  %isdigit.i.i = icmp ult i8 %9, 10
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br i1 %isdigit.i.i, label %.preheader12.i, label %_ZN12smt_renaming12is_numericalEPKc.exit.i, !llvm.loop !1

_ZN12smt_renaming12is_numericalEPKc.exit.i:       ; preds = %.preheader12.i
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %_ZN12smt_renaming12all_is_legalEPKc.exit.thread.thread, label %.preheader.i26

.preheader.i26:                                   ; preds = %_ZN12smt_renaming12is_numericalEPKc.exit.i, %_ZN12smt_renaming8is_legalEc.exit.thread.i
  %i.n = phi i8 [ %.pre, %_ZN12smt_renaming8is_legalEc.exit.thread.i ], [ %i.f, %_ZN12smt_renaming12is_numericalEPKc.exit.i ] ; 2 uses
  %.0.i27 = phi ptr [ %i.q, %_ZN12smt_renaming8is_legalEc.exit.thread.i ], [ %1, %_ZN12smt_renaming12is_numericalEPKc.exit.i ]
  switch i8 %i.n, label %_ZN12smt_renaming8is_legalEc.exit.i [
    i8 0, label %_ZN12smt_renaming12all_is_legalEPKc.exit
    i8 95, label %_ZN12smt_renaming8is_legalEc.exit.thread.i
    i8 63, label %_ZN12smt_renaming8is_legalEc.exit.thread.i
    i8 46, label %_ZN12smt_renaming8is_legalEc.exit.thread.i
    i8 39, label %_ZN12smt_renaming8is_legalEc.exit.thread.i
    i8 33, label %_ZN12smt_renaming8is_legalEc.exit.thread.i
  ]

_ZN12smt_renaming8is_legalEc.exit.i:              ; preds = %.preheader.i26
  %i.o = sext i8 %i.n to i32
  %i.p = call i32 @isalnum(i32 noundef %i.o) #22
  %.not11.i28 = icmp eq i32 %i.p, 0
  br i1 %.not11.i28, label %_ZN12smt_renaming12all_is_legalEPKc.exit.thread, label %_ZN12smt_renaming8is_legalEc.exit.thread.i

_ZN12smt_renaming8is_legalEc.exit.thread.i:       ; preds = %_ZN12smt_renaming8is_legalEc.exit.i, %.preheader.i26, %.preheader.i26, %.preheader.i26, %.preheader.i26, %.preheader.i26
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i27, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.q, align 1, !tbaa !15
  br label %.preheader.i26, !llvm.loop !2

_ZN12smt_renaming12all_is_legalEPKc.exit:         ; preds = %.preheader.i26
  store i64 %i.a, ptr %3, align 8, !tbaa !18
  br label %bb.ac

_ZN12smt_renaming12all_is_legalEPKc.exit.thread:  ; preds = %_ZN12smt_renaming8is_legalEc.exit.i, %bb.b, %bb.a
  br i1 %i.c, label %bb.h, label %_ZN12smt_renaming12all_is_legalEPKc.exit.thread.thread

bb.h:                                             ; preds = %_ZN12smt_renaming12all_is_legalEPKc.exit.thread
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.18, i64 noundef 2)
          to label %.noexc31 unwind label %bb.e   ; 0 uses

.noexc31:                                         ; preds = %bb.h
  %i.s = lshr i64 %i.a, 3
  %i.t = trunc i64 %i.s to i32
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.t)
          to label %_ZlsRSo6symbol.exit unwind label %bb.e ; 0 uses

_ZlsRSo6symbol.exit:                              ; preds = %.noexc31
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %2)
          to label %bb.i unwind label %bb.e       ; 0 uses

bb.i:                                             ; preds = %_ZlsRSo6symbol.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !21, !alias.scope !312
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !24, !alias.scope !312
  store i8 0, ptr %i.w, align 8, !tbaa !15, !alias.scope !312
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28, !noalias !312 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !312 ; 2 uses
  %i.ac = icmp ugt ptr %i.z, %i.ab
  %.08.i.i.i = select i1 %i.ac, ptr %i.z, ptr %i.ab ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i33 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i33, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29, !noalias !312 ; 2 uses
  %i.af = ptrtoint ptr %.08.i.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.ae, i64 noundef %i.ah)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !30, !alias.scope !312 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.w
  br i1 %i.al, label %.body, label %.body.sink.split

bb.l:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.an = load ptr, ptr %6, align 8, !tbaa !30
  invoke void @_ZN6symbolC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.an)
          to label %_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.m

_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ao = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.w
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aq = load i64, ptr %i.w, align 8, !tbaa !15
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ac

bb.m:                                             ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.w
  br i1 %i.au, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.m, %bb.k
  %.sink = phi ptr [ %i.ak, %bb.k ], [ %i.at, %bb.m ]
  %.pn22.ph = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.as, %bb.m ]
  %i.av = load i64, ptr %i.w, align 8, !tbaa !15
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.aw) #23
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m, %bb.k
  %.pn22 = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.as, %bb.m ], [ %.pn22.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ad

_ZN12smt_renaming12all_is_legalEPKc.exit.thread.thread: ; preds = %_ZN12smt_renaming12is_numericalEPKc.exit.i, %_ZN12smt_renaming12all_is_legalEPKc.exit.thread
  %.not18 = icmp eq ptr %1, null
  br i1 %.not18, label %.invoke, label %bb.n

bb.n:                                             ; preds = %_ZN12smt_renaming12all_is_legalEPKc.exit.thread.thread
  %i.ax = invoke noundef zeroext i1 @_Z21is_smt2_quoted_symbolRK6symbol(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.e

bb.o:                                             ; preds = %bb.n
  br i1 %i.ax, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_Z21mk_smt2_quoted_symbolB5cxx11RK6symbol(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %7, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !24
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.q
  %i.bc = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !15
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.r:                                             ; preds = %bb.p
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.s:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.s
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !15
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.bi, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ad

bb.t:                                             ; preds = %bb.o
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8, !tbaa !18 ; 4 uses
  %i.bo = ptrtoint ptr %.sroa.0.0.copyload to i64 ; 2 uses
  %i.bp = and i64 %i.bo, 7
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.u, label %bb.v

end_hunk_0
begin_hunk_1_@_ZN12smt_renaming10fix_symbolE6symboli:bb.a

.invoke:                                          ; preds = %bb.u, %_ZN12smt_renaming12all_is_legalEPKc.exit.thread.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i47
  %i.bs = phi ptr [ @.str.1, %_ZN12smt_renaming12all_is_legalEPKc.exit.thread.thread ], [ %.sroa.0.0.copyload, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i47 ], [ @.str.1, %bb.u ]
  %i.bt = phi i64 [ 4, %_ZN12smt_renaming12all_is_legalEPKc.exit.thread.thread ], [ %i.br, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i47 ], [ 4, %bb.u ]
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.bs, i64 noundef %i.bt)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

bb.v:                                             ; preds = %bb.t
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.18, i64 noundef 2)
          to label %.noexc50 unwind label %bb.e   ; 0 uses

.noexc50:                                         ; preds = %bb.v
  %i.bw = lshr i64 %i.bo, 3
  %i.bx = trunc i64 %i.bw to i32
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.bx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.invoke, %.noexc50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.bz = icmp sgt i32 %2, 0
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54: ; preds = %bb.w
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %2)
          to label %bb.x unwind label %bb.e       ; 0 uses

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.cc, ptr %8, align 8, !tbaa !21, !alias.scope !315
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.cd, align 8, !tbaa !24, !alias.scope !315
  store i8 0, ptr %i.cc, align 8, !tbaa !15, !alias.scope !315
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !28, !noalias !315 ; 3 uses
  %.not.i.not.i.i55 = icmp eq ptr %i.cf, null
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !315 ; 2 uses
  %i.ci = icmp ugt ptr %i.cf, %i.ch
  %.08.i.i.i56 = select i1 %i.ci, ptr %i.cf, ptr %i.ch ; 2 uses
  %.not5.i.i57 = icmp eq ptr %.08.i.i.i56, null
  %.not.i.i58 = select i1 %.not.i.not.i.i55, i1 true, i1 %.not5.i.i57
  br i1 %.not.i.i58, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !29, !noalias !315 ; 2 uses
  %i.cl = ptrtoint ptr %.08.i.i.i56 to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.ck, i64 noundef %i.cn)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit64 unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !315 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cc
  br i1 %i.cr, label %.body62, label %.body62.sink.split

bb.aa:                                            ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.cs)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit64 unwind label %bb.z

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit64: ; preds = %bb.aa, %bb.y
  %i.ct = load ptr, ptr %8, align 8, !tbaa !30
  invoke void @_ZN6symbolC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ct)
          to label %_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit66 unwind label %bb.ab

_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit66: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit64
  %i.cu = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cc
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit66
  %i.cw = load i64, ptr %i.cc, align 8, !tbaa !15
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit64
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cc
  br i1 %i.da, label %.body62, label %.body62.sink.split

.body62.sink.split:                               ; preds = %bb.ab, %bb.z
  %.sink98 = phi ptr [ %i.cq, %bb.z ], [ %i.cz, %bb.ab ]
  %.pn20.ph = phi { ptr, i32 } [ %i.cp, %bb.z ], [ %i.cy, %bb.ab ]
  %i.db = load i64, ptr %i.cc, align 8, !tbaa !15
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %.sink98, i64 noundef %i.dc) #23
  br label %.body62

.body62:                                          ; preds = %.body62.sink.split, %bb.ab, %bb.z
  %.pn20 = phi { ptr, i32 } [ %i.cp, %bb.z ], [ %i.cy, %bb.ab ], [ %.pn20.ph, %.body62.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN12smt_renaming12all_is_legalEPKc.exit, %bb.g, %bb.d
  %i.dd = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dd, ptr %5, align 8, !tbaa !32
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.df = getelementptr i8, ptr %i.dd, i64 -24
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = getelementptr inbounds i8, ptr %5, i64 %i.dg
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !32
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.di, align 8, !tbaa !32
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !30 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !15
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.di, align 8, !tbaa !32
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dp) #21
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dq) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.dr = load ptr, ptr %3, align 8
  ret ptr %i.dr

bb.ad:                                            ; preds = %.body62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %.body, %bb.e
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %.body ], [ %i.g, %bb.e ], [ %.pn20, %.body62 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn22.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN12smt_renaming10is_specialEPKc(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !15
  %.not11 = icmp eq i8 %i.a, 124
  br i1 %.not11, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b, %.preheader
  %.pn = phi ptr [ %.0, %.preheader ], [ %1, %bb.b ] ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.b = load i8, ptr %.0, align 1, !tbaa !15
  switch i8 %i.b, label %.preheader [
    i8 0, label %.loopexit
    i8 124, label %bb.c
  ], !llvm.loop !0

bb.c:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.pn, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !15
  %i.e = icmp eq i8 %i.d, 0
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b, %bb.a, %bb.c
  %.08 = phi i1 [ false, %bb.a ], [ %i.e, %bb.c ], [ false, %bb.b ], [ false, %.preheader ]
  ret i1 %.08
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden noundef zeroext i1 @_ZN12smt_renaming12all_is_legalEPKc(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %.preheader12

.preheader12:                                     ; preds = %bb.a, %.preheader12
  %.0.i = phi ptr [ %i.b, %.preheader12 ], [ %1, %bb.a ] ; 2 uses
  %i.a = load i8, ptr %.0.i, align 1, !tbaa !15   ; 2 uses
  %2 = add i8 %i.a, -48
  %isdigit.i = icmp ult i8 %2, 10
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %isdigit.i, label %.preheader12, label %_ZN12smt_renaming12is_numericalEPKc.exit, !llvm.loop !1

_ZN12smt_renaming12is_numericalEPKc.exit:         ; preds = %.preheader12
  %.not.i = icmp eq i8 %i.a, 0
  br i1 %.not.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZN12smt_renaming12is_numericalEPKc.exit, %_ZN12smt_renaming8is_legalEc.exit.thread
  %.0 = phi ptr [ %i.f, %_ZN12smt_renaming8is_legalEc.exit.thread ], [ %1, %_ZN12smt_renaming12is_numericalEPKc.exit ] ; 2 uses
  %i.c = load i8, ptr %.0, align 1, !tbaa !15     ; 2 uses
  switch i8 %i.c, label %_ZN12smt_renaming8is_legalEc.exit [
    i8 0, label %.loopexit
    i8 95, label %_ZN12smt_renaming8is_legalEc.exit.thread
    i8 63, label %_ZN12smt_renaming8is_legalEc.exit.thread
    i8 46, label %_ZN12smt_renaming8is_legalEc.exit.thread
    i8 39, label %_ZN12smt_renaming8is_legalEc.exit.thread
    i8 33, label %_ZN12smt_renaming8is_legalEc.exit.thread
  ]

_ZN12smt_renaming8is_legalEc.exit:                ; preds = %.preheader
  %i.d = sext i8 %i.c to i32
  %i.e = tail call i32 @isalnum(i32 noundef %i.d) #22
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %.loopexit, label %_ZN12smt_renaming8is_legalEc.exit.thread

_ZN12smt_renaming8is_legalEc.exit.thread:         ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %_ZN12smt_renaming8is_legalEc.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %.preheader, !llvm.loop !2

.loopexit:                                        ; preds = %.preheader, %_ZN12smt_renaming8is_legalEc.exit, %_ZN12smt_renaming12is_numericalEPKc.exit, %bb.a
  %.07 = phi i1 [ false, %bb.a ], [ false, %_ZN12smt_renaming12is_numericalEPKc.exit ], [ true, %.preheader ], [ false, %_ZN12smt_renaming8is_legalEc.exit ]
  ret i1 %.07
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSo6symbol(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 7
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.d) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 4) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.18, i64 noundef 2) ; 0 uses
  %i.h = lshr i64 %i.a, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.i) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.d
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_Z21is_smt2_quoted_symbolRK6symbol(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_Z21mk_smt2_quoted_symbolB5cxx11RK6symbol(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden noundef zeroext i1 @_ZN12smt_renaming8is_legalEc(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, i8 noundef signext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %switch.tableidx = add i8 %1, -33               ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 63
  br i1 %i.a, label %switch.hole_check, label %bb.b

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  %i.b = sext i8 %1 to i32
  %i.c = tail call i32 @isalnum(i32 noundef %i.b) #22
  %i.d = icmp ne i32 %i.c, 0
  br label %switch.lookup

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 4611686019501137985, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check, %bb.b
  %i.e = phi i1 [ %i.d, %bb.b ], [ true, %switch.hole_check ]
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN12smt_renaming12is_numericalEPKc(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.b, %bb.b ]    ; 2 uses
  %i.a = load i8, ptr %.0, align 1, !tbaa !15     ; 2 uses
  %2 = add i8 %i.a, -48
  %isdigit = icmp ult i8 %2, 10
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br i1 %isdigit, label %bb.b, label %bb.c, !llvm.loop !1

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i8 %i.a, 0
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12smt_renamingC2Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 20), (32, 44)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct._key_data, align 8          ; 5 uses
  %2 = alloca %struct._key_data.61, align 8       ; 7 uses
  %3 = alloca %class.symbol, align 8              ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 8, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !37
  %i.d = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 320) ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 25, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  store ptr null, ptr %i.l, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.e, i8 0, i64 33, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.f, i8 0, i64 33, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i8 0, i64 33, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.h, i8 0, i64 33, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.i, i8 0, i64 33, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.j, i8 0, i64 33, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.k, i8 0, i64 33, i1 false)
  store ptr %i.d, ptr %0, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 8, ptr %i.n, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.o, align 4, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.p, align 8, !tbaa !45
  %i.q = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 192)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.q, i8 0, i64 192, i1 false)
  store ptr %i.q, ptr %i.m, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

bb.c:                                             ; preds = %bb.h
  ret void

bb.d:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.b, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZL14m_predef_names, i64 %indvars.iv
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.u)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %.cast = ptrtoint ptr %.sroa.0.0.copyload to i64
  store i64 %.cast, ptr %2, align 8, !tbaa !18
  store ptr %.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !18
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !48
  store ptr null, ptr %.sroa.612.0..sroa_idx, align 8, !tbaa !18
  invoke void @_ZN14core_hashtableI17default_map_entryI6symbolN12smt_renaming5sym_bEEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE6insertEO9_key_dataIS1_S3_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.v = load i64, ptr %3, align 8, !tbaa !18     ; 2 uses
  store i64 %i.v, ptr %1, align 8, !tbaa !18
  store i64 %i.v, ptr %i.s, align 8, !tbaa !18
  invoke void @_ZN14core_hashtableI17default_map_entryI6symbolS1_EN9table2mapIS2_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS6_13entry_eq_procEE6insertEO9_key_dataIS1_S1_E(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 21
  br i1 %exitcond.not, label %bb.c, label %bb.e, !llvm.loop !316

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN9table2mapI17default_map_entryI6symbolS1_E16symbol_hash_proc14symbol_eq_procED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.t, %bb.d ]
  call void @_ZN9table2mapI17default_map_entryI6symbolN12smt_renaming5sym_bEE16symbol_hash_proc14symbol_eq_procED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #21
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9table2mapI17default_map_entryI6symbolS1_E16symbol_hash_proc14symbol_eq_procED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN14core_hashtableI17default_map_entryI6symbolS1_EN9table2mapIS2_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS6_13entry_eq_procEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN14core_hashtableI17default_map_entryI6symbolS1_EN9table2mapIS2_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS6_13entry_eq_procEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZN14core_hashtableI17default_map_entryI6symbolS1_EN9table2mapIS2_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS6_13entry_eq_procEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9table2mapI17default_map_entryI6symbolN12smt_renaming5sym_bEE16symbol_hash_proc14symbol_eq_procED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN14core_hashtableI17default_map_entryI6symbolN12smt_renaming5sym_bEEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN14core_hashtableI17default_map_entryI6symbolN12smt_renaming5sym_bEEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZN14core_hashtableI17default_map_entryI6symbolN12smt_renaming5sym_bEEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden ptr @_ZN12smt_renaming10get_symbolE6symbolb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct._key_data, align 8          ; 5 uses
  %4 = alloca %struct._key_data.61, align 8       ; 7 uses
  %5 = alloca %struct._key_data.61, align 8       ; 8 uses
  %6 = alloca %struct._key_data, align 8          ; 5 uses
  %.sroa.7 = alloca [7 x i8], align 1             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.a = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %_ZNK14core_hashtableI17default_map_entryI6symbolN12smt_renaming5sym_bEEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8get_hashERK9_key_dataIS1_S3_E.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 7
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %i.a, 3
  %i.f = trunc i64 %i.e to i32
  br label %_ZNK14core_hashtableI17default_map_entryI6symbolN12smt_renaming5sym_bEEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8get_hashERK9_key_dataIS1_S3_E.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %1, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49
  %i.i = trunc i64 %i.h to i32
  br label %_ZNK14core_hashtableI17default_map_entryI6symbolN12smt_renaming5sym_bEEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8get_hashERK9_key_dataIS1_S3_E.exit.i.i.i

_ZNK14core_hashtableI17default_map_entryI6symbolN12smt_renaming5sym_bEEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8get_hashERK9_key_dataIS1_S3_E.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.d ], [ %i.f, %bb.c ], [ -1640531495, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !35   ; 3 uses
  %i.l = add i32 %i.k, -1
  %i.m = and i32 %i.l, %.0.i.i.i.i.i.i.i          ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.o = zext i32 %i.m to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.o, 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i.i ; 2 uses
  %i.q = zext i32 %i.k to i64
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.q
  %.not30.i.i.i = icmp eq i32 %i.m, %i.k
  br i1 %.not30.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i
end_hunk_1
