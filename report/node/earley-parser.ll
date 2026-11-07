Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/earley-parser?download=true
inline.NumInlined: 1388
inline.NumDeleted: 771
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
%"struct.std::_Vector_base<v8::internal::torque::TorqueMessage, std::allocator<v8::internal::torque::TorqueMessage>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::torque::TorqueMessage, std::allocator<v8::internal::torque::TorqueMessage>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::torque::TorqueMessage, std::allocator<v8::internal::torque::TorqueMessage>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.v8::internal::torque::LexerResult" = type { %"class.std::vector.14", %"class.std::vector.19" }
%"class.std::vector.14" = type { %"struct.std::_Vector_base.15" }
%"struct.std::_Vector_base.15" = type { %"struct.std::_Vector_base<v8::internal::torque::Symbol *, std::allocator<v8::internal::torque::Symbol *>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::torque::Symbol *, std::allocator<v8::internal::torque::Symbol *>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::torque::Symbol *, std::allocator<v8::internal::torque::Symbol *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::torque::Symbol *, std::allocator<v8::internal::torque::Symbol *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.19" = type { %"struct.std::_Vector_base.20" }
%"struct.std::_Vector_base.20" = type { %"struct.std::_Vector_base<v8::internal::torque::MatchedInput, std::allocator<v8::internal::torque::MatchedInput>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::torque::MatchedInput, std::allocator<v8::internal::torque::MatchedInput>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::torque::MatchedInput, std::allocator<v8::internal::torque::MatchedInput>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::torque::MatchedInput, std::allocator<v8::internal::torque::MatchedInput>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.24" = type { i8 }
%"struct.std::_Hashtable<std::pair<unsigned long, v8::internal::torque::Symbol *>, std::pair<const std::pair<unsigned long, v8::internal::torque::Symbol *>, std::set<const v8::internal::torque::Item *>>, std::allocator<std::pair<const std::pair<unsigned long, v8::internal::torque::Symbol *>, std::set<const v8::internal::torque::Item *>>>, std::__detail::_Select1st, std::equal_to<std::pair<unsigned long, v8::internal::torque::Symbol *>>, v8::base::hash<std::pair<unsigned long, v8::internal::torque::Symbol *>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node" = type { ptr, ptr }
%"struct.std::__detail::_AllocNode" = type { ptr }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.v8::internal::torque::Symbol" = type { %"class.std::vector.9" }
%"class.std::vector.9" = type { %"struct.std::_Vector_base.10" }
%"struct.std::_Vector_base.10" = type { %"struct.std::_Vector_base<std::unique_ptr<v8::internal::torque::Rule>, std::allocator<std::unique_ptr<v8::internal::torque::Rule>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<v8::internal::torque::Rule>, std::allocator<std::unique_ptr<v8::internal::torque::Rule>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<v8::internal::torque::Rule>, std::allocator<std::unique_ptr<v8::internal::torque::Rule>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<v8::internal::torque::Rule>, std::allocator<std::unique_ptr<v8::internal::torque::Rule>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.v8::internal::torque::Rule" = type { ptr, %"class.std::vector.14", ptr }
%"class.v8::internal::torque::Item" = type { ptr, i64, i64, i64, ptr, ptr }

$_ZNK2v88internal6torque4Item15GetMatchedInputERKNS1_11LexerResultE = comdat any

$_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EED2Ev = comdat any

$_ZN2v88internal6torque19ParseResultIteratorD2Ev = comdat any

$_ZN2v88internal6torque6Symbol7AddRuleERKNS1_4RuleE = comdat any

$_ZNK2v88internal6torque12MatchedInput8ToStringB5cxx11Ev = comdat any

$_ZN2v88internal6torque11ReportErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_ = comdat any

$_ZN2v88internal6torque11LexerResultD2Ev = comdat any

$_ZN2v88internal6torque13DefaultActionEPNS1_19ParseResultIteratorE = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10unique_ptrIN2v88internal6torque4RuleESt14default_deleteIS3_EED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZNSt8_Rb_treeIPKN2v88internal6torque4ItemES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZN2v88internal6torque14MessageBuilderD2Ev = comdat any

$_ZN2v88internal6torque8ToStringIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_DpOT_ = comdat any

$_ZNSt10_HashtableIN2v88internal6torque4ItemES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_4base4hashIS3_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SK_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_ = comdat any

$_ZNSt10_HashtableIN2v88internal6torque4ItemES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_4base4hashIS3_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb1EEEm = comdat any

$_ZNSt10_HashtableIN2v88internal6torque4ItemES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_4base4hashIS3_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSI_10_Hash_nodeISG_Lb1EEEm = comdat any

$_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt10_HashtableISt4pairImPN2v88internal6torque6SymbolEES0_IKS6_St3setIPKNS3_4ItemESt4lessISB_ESaISB_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt10_HashtableIN2v88internal6torque4ItemES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ENS0_4base4hashIS3_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS3_ = comdat any

$_ZN2v84base18ContextualVariableINS_8internal6torque21CurrentSourcePositionENS3_14SourcePositionEE4top_E = comdat any

$_ZN2v84base18ContextualVariableINS_8internal6torque17CurrentSourceFileENS3_8SourceIdEE4top_E = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1, !guid !7
@.str.1 = private unnamed_addr constant [20 x i8] c"!iterator.HasNext()\00", align 1, !guid !8
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1, !guid !9
@.str.3 = private unnamed_addr constant [30 x i8] c"Ambiguous grammer rules for \22\00", align 1, !guid !10
@.str.4 = private unnamed_addr constant [7 x i8] c"\22:\0A   \00", align 1, !guid !11
@.str.5 = private unnamed_addr constant [8 x i8] c"\0Avs\0A   \00", align 1, !guid !12
@.str.6 = private unnamed_addr constant [13 x i8] c"  ...\0Avs\0A   \00", align 1, !guid !13
@.str.7 = private unnamed_addr constant [6 x i8] c"  ...\00", align 1, !guid !14
@.str.8 = private unnamed_addr constant [28 x i8] c"Lexer Error: unknown token \00", align 1, !guid !15
@.str.9 = private unnamed_addr constant [19 x i8] c"unexpected token \22\00", align 1, !guid !16
@.str.10 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !guid !17
@.str.11 = private unnamed_addr constant [24 x i8] c"unexpected end of input\00", align 1, !guid !18
@.str.12 = private unnamed_addr constant [15 x i8] c"Parser Error: \00", align 1, !guid !19
@.str.13 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1, !guid !20
@.str.14 = private unnamed_addr constant [35 x i8] c"start.pos.source == end.pos.source\00", align 1, !guid !21
@.str.16 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1, !guid !22
@.str.17 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1, !guid !23
@.str.21 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1, !guid !24
@_ZN2v84base18ContextualVariableINS_8internal6torque21CurrentSourcePositionENS3_14SourcePositionEE4top_E = linkonce_odr hidden thread_local local_unnamed_addr global ptr null, comdat, align 8, !guid !25
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZN2v84base18ContextualVariableINS_8internal6torque17CurrentSourceFileENS3_8SourceIdEE4top_E = linkonce_odr hidden thread_local local_unnamed_addr global ptr null, comdat, align 8, !guid !26

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2v88internal6torque4Rule9RunActionEPKNS1_4ItemERKNS1_11LexerResultE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !45 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 12 uses
  %5 = alloca %"class.std::vector.4", align 8     ; 8 uses
  %6 = alloca %"class.std::optional", align 8     ; 11 uses
  %7 = alloca %"class.v8::base::ContextualVariable<v8::internal::torque::CurrentSourcePosition, v8::internal::torque::SourcePosition>::Scope", align 8 ; 8 uses
  %8 = alloca %"class.v8::internal::torque::ParseResultIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNK2v88internal6torque4Item8ChildrenEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.4") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %bb.o, %bb.b
  %i.h = phi ptr [ null, %bb.b ], [ %i.ci, %bb.o ]
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.m) #25
  br label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit

_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !46 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !noalias !46 ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.p ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !46 ; 2 uses
  %i.u = icmp eq i64 %i.p, %i.t
  %i.v = getelementptr [48 x i8], ptr %i.q, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 -48
  %i.x = select i1 %i.u, ptr %i.r, ptr %i.w       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load i32, ptr %i.y, align 4, !noalias !46 ; 3 uses
  %i.ab = load i32, ptr %i.z, align 4, !noalias !46
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EED2Ev.exit, label %bb.d, !prof !27

bb.d:                                             ; preds = %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit
  invoke void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #26
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.lr.ph, %bb.o
  %i.ad = phi ptr [ null, %.lr.ph ], [ %i.ci, %bb.o ] ; 7 uses
  %.sroa.062.072 = phi ptr [ %i.a, %.lr.ph ], [ %i.cj, %bb.o ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.062.072, align 8   ; 3 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void @_ZNK2v88internal6torque4Rule9RunActionEPKNS1_4ItemERKNS1_11LexerResultE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %_ZN2v88internal6torque6Symbol9RunActionEPKNS1_4ItemERKNS1_11LexerResultE.exit unwind label %bb.l, !inline_history !34

_ZN2v88internal6torque6Symbol9RunActionEPKNS1_4ItemERKNS1_11LexerResultE.exit: ; preds = %bb.f
  %i.ag = load i8, ptr %i.e, align 8, !range !47, !noundef !48
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit28

bb.g:                                             ; preds = %_ZN2v88internal6torque6Symbol9RunActionEPKNS1_4ItemERKNS1_11LexerResultE.exit
  %i.ai = load ptr, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.ad, %i.ai
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load i64, ptr %6, align 8
  store i64 %i.aj, ptr %i.ad, align 8
  store ptr null, ptr %6, align 8
  %i.ak = load ptr, ptr %i.f, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.f, align 8
  br label %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE9push_backEOS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %4, align 8               ; 10 uses
  %i.an = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.j, label %_ZNKSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i47 = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i47)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #27
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  %i.az = load i64, ptr %6, align 8
  store i64 %i.az, ptr %i.ay, align 8
  store ptr null, ptr %6, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i48.preheader

.lr.ph.i.i.i.i48.preheader:                       ; preds = %.noexc51
  %i.ba = add i64 %i.an, -8
  %i.bb = sub i64 %i.ba, %i.ao                    ; 3 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i48.preheader101, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i48.preheader
  %i.be = and i64 %i.bb, -8
  %i.bf = add i64 %i.be, 8                        ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ax, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.am, i64 %i.bf
  %bound0 = icmp ult ptr %i.ax, %i.bh
  %bound1 = icmp ult ptr %i.am, %i.bg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i48.preheader101, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bd, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.am, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bl ; 2 uses
  %next.gep98 = getelementptr i8, ptr %i.am, i64 %i.bl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.bm = getelementptr i8, ptr %next.gep98, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep98, align 8, !alias.scope !51
  %wide.load99 = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !51
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !52, !noalias !53
  store <2 x i64> %wide.load99, ptr %i.bn, align 8, !alias.scope !52, !noalias !53
  %i.bo = getelementptr i8, ptr %next.gep98, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep98, align 8, !alias.scope !51
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !alias.scope !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i48.preheader101

.lr.ph.i.i.i.i48.preheader101:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i48.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i48.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i48.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i48

.lr.ph.i.i.i.i48:                                 ; preds = %.lr.ph.i.i.i.i48.preheader101, %.lr.ph.i.i.i.i48
  %.012.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i48 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i48.preheader101 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i48 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i48.preheader101 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.bq = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !50
  store i64 %i.bq, ptr %.012.i.i.i.i, align 8, !alias.scope !49
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !50
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.br, %i.ad
  br i1 %.not.i.i.i.i49, label %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i48, !llvm.loop !42

_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i48, %middle.block, %.noexc51
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ax, %.noexc51 ], [ %i.bj, %middle.block ], [ %i.bs, %.lr.ph.i.i.i.i48 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.am, null
  br i1 %.not.i23.i, label %.noexc25, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ap) #25
  br label %.noexc25

.noexc25:                                         ; preds = %bb.k, %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.ax, ptr %4, align 8
  store ptr %i.bt, ptr %i.f, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bu, ptr %i.g, align 8
  br label %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE9push_backEOS3_.exit

bb.l:                                             ; preds = %bb.f
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE12_M_check_lenEmPKc.exit.i, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bw = load i8, ptr %i.e, align 8, !range !47, !noundef !48
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  store i8 0, ptr %i.e, align 8
  %i.by = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(12) %i.by) #24, !inline_history !43
  br label %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit

_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE9push_backEOS3_.exit: ; preds = %.noexc25, %bb.h
  %9 = phi ptr [ %i.bt, %.noexc25 ], [ %i.al, %bb.h ] ; 3 uses
  %i.cc = load i8, ptr %i.e, align 8
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.n, label %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit28

bb.n:                                             ; preds = %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE9push_backEOS3_.exit
  store i8 0, ptr %i.e, align 8
  %i.ce = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i.i.i.i26 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i26, label %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit28, label %_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i27

_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i27: ; preds = %bb.n
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(12) %i.ce) #24, !inline_history !43
  br label %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit28

_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit28: ; preds = %_ZN2v88internal6torque6Symbol9RunActionEPKNS1_4ItemERKNS1_11LexerResultE.exit, %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE9push_backEOS3_.exit, %bb.n, %_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i27
  %10 = phi ptr [ %i.ad, %_ZN2v88internal6torque6Symbol9RunActionEPKNS1_4ItemERKNS1_11LexerResultE.exit ], [ %9, %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EE9push_backEOS3_.exit ], [ %9, %bb.n ], [ %9, %_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit28
  %i.ci = phi ptr [ %i.ad, %bb.e ], [ %10, %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit28 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.062.072, i64 8 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.c
  br i1 %i.ck, label %._crit_edge, label %bb.e

_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i, %bb.m, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %.pn20 = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %bb.m ], [ %lpad.loopexit.split-lp, %_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i29 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit30, label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.a to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.cp) #25
  br label %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit30

_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit30: ; preds = %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.z

_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.cr, i64 12, i1 false)
  %i.cs = load ptr, ptr %i.r, align 8, !noalias !46
  %i.ct = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i32 %i.aa, ptr %7, align 8
  %.sroa.857.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.857.16..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.cq, i64 12, i1 false)
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.9.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.cr, i64 12, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque21CurrentSourcePositionENS3_14SourcePositionEE4top_E) ; 4 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  store ptr %i.cx, ptr %i.cv, align 8
  store ptr %7, ptr %i.cw, align 8
  %i.cy = load ptr, ptr %4, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr %i.cy, ptr %8, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.da, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i64 0, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.cs, ptr %i.de, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.cu, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 %i.aa, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.668.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.cq, i64 12, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr dead_on_unwind writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull %8)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EED2Ev.exit
  %i.dh = load i64, ptr %i.dd, align 8
  %i.di = load ptr, ptr %i.db, align 8            ; 3 uses
  %i.dj = load ptr, ptr %8, align 8               ; 4 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3
  %i.do = icmp ult i64 %i.dh, %i.dn
  br i1 %i.do, label %bb.r, label %bb.x, !prof !31

bb.r:                                             ; preds = %bb.q
  invoke void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #26
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.a, %bb.d
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EED2Ev.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit34

bb.v:                                             ; preds = %bb.r
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 8, !range !47, !noundef !48
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.w, label %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit34

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.ds, align 8
  %i.dv = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i.i.i.i32 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i32, label %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit34, label %_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i33

_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i33: ; preds = %bb.w
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(12) %i.dv) #24, !inline_history !43
  br label %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit34

bb.x:                                             ; preds = %bb.q
  %.not4.i.i.i.i = icmp eq ptr %i.dj, %i.di
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal6torque11ParseResultES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %_ZSt8_DestroyIN2v88internal6torque11ParseResultEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ed, %_ZSt8_DestroyIN2v88internal6torque11ParseResultEEvPT_.exit.i.i.i.i ], [ %i.dj, %bb.x ] ; 2 uses
  %i.dz = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2v88internal6torque11ParseResultEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(12) %i.dz) #24, !inline_history !44
  br label %_ZSt8_DestroyIN2v88internal6torque11ParseResultEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2v88internal6torque11ParseResultEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ed, %i.di
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal6torque11ParseResultES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2v88internal6torque11ParseResultES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN2v88internal6torque11ParseResultEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %8, align 8
  br label %_ZSt8_DestroyIPN2v88internal6torque11ParseResultES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2v88internal6torque11ParseResultES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN2v88internal6torque11ParseResultES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %bb.x
  %i.ee = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN2v88internal6torque11ParseResultES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dj, %bb.x ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EED2Ev.exit46, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPN2v88internal6torque11ParseResultES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ef = load ptr, ptr %i.dc, align 8
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #25
  br label %_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EED2Ev.exit46

_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EED2Ev.exit46: ; preds = %_ZSt8_DestroyIPN2v88internal6torque11ParseResultES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ej = load ptr, ptr %i.cv, align 8
  store ptr %i.ej, ptr %i.cw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit34: ; preds = %_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i33, %bb.w, %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.dq, %bb.u ], [ %i.dr, %bb.v ], [ %i.dr, %bb.w ], [ %i.dr, %_ZNKSt14default_deleteIN2v88internal6torque21ParseResultHolderBaseEEclEPS3_.exit.i.i.i.i.i.i33 ]
  call void @_ZN2v88internal6torque19ParseResultIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ek = load ptr, ptr %i.cv, align 8
  store ptr %i.ek, ptr %i.cw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit34, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit30
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.t ], [ %.pn20, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EED2Ev.exit30 ], [ %.pn, %_ZNSt14_Optional_baseIN2v88internal6torque11ParseResultELb0ELb0EED2Ev.exit34 ]
  call void @_ZNSt6vectorIN2v88internal6torque11ParseResultESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn20.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2v88internal6torque4Item8ChildrenEv(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.4") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !56 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not20 = icmp eq ptr %i.b, null
  br i1 %.not20, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal6torque4ItemESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE9push_backERKS5_.exit
  store ptr %i.ah, ptr %0, align 8
  %i.e = icmp ne ptr %i.ah, %i.ag
  %.sroa.0.010.i.i = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
end_hunk_0
