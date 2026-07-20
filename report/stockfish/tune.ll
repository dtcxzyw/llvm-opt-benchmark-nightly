inline.NumInlined: 399
inline.NumDeleted: 246
begin_hunk_0
%union.anon = type { i64, [8 x i8] }
%"class.std::function.9" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::tuple.24" = type { %"struct.std::_Tuple_impl.25" }
%"struct.std::_Tuple_impl.25" = type { %"struct.std::_Head_base.26" }
%"struct.std::_Head_base.26" = type { ptr }
%"class.std::tuple.27" = type { i8 }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEixERS9_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZN9Stockfish4TuneD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEPSC_E9_M_invokeERKSt9_Any_dataSB_ = comdat any

$_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEPSC_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation = comdat any

$_ZZN9Stockfish4Tune8instanceEvE1t = comdat any

$_ZGVZN9Stockfish4Tune8instanceEvE1t = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTIPFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEE = comdat any

$_ZTSPFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEE = comdat any

$_ZTIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEE = comdat any

$_ZTSFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEE = comdat any

@_ZN9Stockfish4Tune14update_on_lastE = dso_local local_unnamed_addr global i8 0, align 1
@_ZN9Stockfish10LastOptionE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN9Stockfish4Tune7optionsE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN9Stockfish12_GLOBAL__N_111TuneResultsB5cxx11E = internal global %"class.std::map" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0.0020\00", align 1
@_ZZN9Stockfish4Tune8instanceEvE1t = linkonce_odr dso_local global %"class.Stockfish::Tune" zeroinitializer, comdat, align 8
@_ZGVZN9Stockfish4Tune8instanceEvE1t = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTIPFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEE = linkonce_odr dso_local constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSPFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEE, i32 0, ptr @_ZTIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEE }, comdat, align 8
@_ZTVN10__cxxabiv119__pointer_type_infoE = external global [0 x ptr]
@_ZTSPFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEE = linkonce_odr dso_local constant [90 x i8] c"PFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEE\00", comdat, align 1
@_ZTIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__function_type_infoE, i64 2), ptr @_ZTSFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEE }, comdat, align 8
@_ZTVN10__cxxabiv120__function_type_infoE = external global [0 x ptr]
@_ZTSFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEE = linkonce_odr dso_local constant [89 x i8] c"FSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEE\00", comdat, align 1
@_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external constant { [5 x ptr], [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_tune.cpp, ptr null }]

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish4Tune11make_optionEPNS_10OptionsMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS_8SetRangeE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %5 = alloca %"class.std::function.9", align 8   ; 7 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK9Stockfish8SetRangeclEi.exit.thread, label %_ZNK9Stockfish8SetRangeclEi.exit

_ZNK9Stockfish8SetRangeclEi.exit.thread:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8 ; 2 uses
  br label %_ZNK9Stockfish8SetRangeclEi.exit40

_ZNK9Stockfish8SetRangeclEi.exit:                 ; preds = %bb.a
  %i.c = tail call i64 %i.a(i32 noundef %2) #16, !inline_history !21 ; 2 uses
  %.pr = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %.not.i37 = icmp eq ptr %.pr, null
  br i1 %.not.i37, label %_ZNK9Stockfish8SetRangeclEi.exit._crit_edge, label %bb.b

_ZNK9Stockfish8SetRangeclEi.exit._crit_edge:      ; preds = %_ZNK9Stockfish8SetRangeclEi.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i39.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNK9Stockfish8SetRangeclEi.exit40

bb.b:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit
  %i.d = tail call i64 %.pr(i32 noundef %2) #16, !inline_history !21
  br label %_ZNK9Stockfish8SetRangeclEi.exit40

_ZNK9Stockfish8SetRangeclEi.exit40:               ; preds = %_ZNK9Stockfish8SetRangeclEi.exit.thread, %_ZNK9Stockfish8SetRangeclEi.exit._crit_edge, %bb.b
  %.sroa.012.0.extract.trunc70.in = phi i64 [ %i.c, %bb.b ], [ %.sroa.0.0.copyload.i, %_ZNK9Stockfish8SetRangeclEi.exit.thread ], [ %i.c, %_ZNK9Stockfish8SetRangeclEi.exit._crit_edge ]
  %.sroa.0.0.i38 = phi i64 [ %i.d, %bb.b ], [ %.sroa.0.0.copyload.i, %_ZNK9Stockfish8SetRangeclEi.exit.thread ], [ %.sroa.0.0.copyload.i39.pre, %_ZNK9Stockfish8SetRangeclEi.exit._crit_edge ]
  %.sroa.012.0.extract.trunc70 = trunc i64 %.sroa.012.0.extract.trunc70.in to i32
  %.sroa.311.0.extract.shift = lshr i64 %.sroa.0.0.i38, 32
  %.sroa.311.0.extract.trunc = trunc nuw i64 %.sroa.311.0.extract.shift to i32
  %i.e = icmp eq i32 %.sroa.012.0.extract.trunc70, %.sroa.311.0.extract.trunc
  br i1 %i.e, label %bb.r, label %bb.c

bb.c:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit40
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111TuneResultsB5cxx11E, i64 16), align 8, !tbaa !11 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 4 uses
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111TuneResultsB5cxx11E, i64 8), %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.k) ; 2 uses
  %i.l = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.l, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.d
  %i.p = sub i64 %i.k, %i.h
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.q, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.d, !llvm.loop !28

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.r = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111TuneResultsB5cxx11E, i64 8)
  br i1 %i.r, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.h) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.x = tail call i32 @memcmp(ptr noundef %i.i, ptr noundef %i.w, i64 noundef %.sroa.speculated.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.e
  %i.y = sub i64 %i.h, %i.t
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %6 = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %6, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit
  %i.z = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN9Stockfish12_GLOBAL__N_111TuneResultsB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !30
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit.thread

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.c, %bb.f, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit
  %.0 = phi i32 [ %i.aa, %bb.f ], [ %2, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit ], [ %2, %bb.c ], [ %2, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ab = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %.not.i41 = icmp eq ptr %i.ab, null
  br i1 %.not.i41, label %_ZNK9Stockfish8SetRangeclEi.exit44.thread, label %_ZNK9Stockfish8SetRangeclEi.exit44

_ZNK9Stockfish8SetRangeclEi.exit44.thread:        ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.ac, align 8 ; 2 uses
  br label %_ZNK9Stockfish8SetRangeclEi.exit48

_ZNK9Stockfish8SetRangeclEi.exit44:               ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit.thread
  %i.ad = tail call i64 %i.ab(i32 noundef %.0) #16, !inline_history !21 ; 2 uses
  %.pr74 = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %.not.i45 = icmp eq ptr %.pr74, null
  br i1 %.not.i45, label %_ZNK9Stockfish8SetRangeclEi.exit44._crit_edge, label %bb.g

_ZNK9Stockfish8SetRangeclEi.exit44._crit_edge:    ; preds = %_ZNK9Stockfish8SetRangeclEi.exit44
  %.phi.trans.insert88 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i47.pre = load i64, ptr %.phi.trans.insert88, align 8
  br label %_ZNK9Stockfish8SetRangeclEi.exit48

bb.g:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit44
  %i.ae = tail call i64 %.pr74(i32 noundef %.0) #16, !inline_history !21
  br label %_ZNK9Stockfish8SetRangeclEi.exit48

_ZNK9Stockfish8SetRangeclEi.exit48:               ; preds = %_ZNK9Stockfish8SetRangeclEi.exit44.thread, %_ZNK9Stockfish8SetRangeclEi.exit44._crit_edge, %bb.g
  %.sroa.08.0.extract.trunc78.in = phi i64 [ %i.ad, %bb.g ], [ %.sroa.0.0.copyload.i43, %_ZNK9Stockfish8SetRangeclEi.exit44.thread ], [ %i.ad, %_ZNK9Stockfish8SetRangeclEi.exit44._crit_edge ]
  %.sroa.0.0.i46 = phi i64 [ %i.ae, %bb.g ], [ %.sroa.0.0.copyload.i43, %_ZNK9Stockfish8SetRangeclEi.exit44.thread ], [ %.sroa.0.0.copyload.i47.pre, %_ZNK9Stockfish8SetRangeclEi.exit44._crit_edge ]
  %.sroa.08.0.extract.trunc78 = trunc i64 %.sroa.08.0.extract.trunc78.in to i32
  %.sroa.37.0.extract.shift = lshr i64 %.sroa.0.0.i46, 32
  %.sroa.37.0.extract.trunc = trunc nuw i64 %.sroa.37.0.extract.shift to i32
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ah, align 8
  store ptr @_ZN9Stockfish12_GLOBAL__N_17on_tuneB5cxx11ERKNS_6OptionE, ptr %5, align 8, !tbaa !31
  store ptr @_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEPSC_E9_M_invokeERKSt9_Any_dataSB_, ptr %i.ag, align 8, !tbaa !32
  store ptr @_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEPSC_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.af, align 8, !tbaa !35
  call void @_ZN9Stockfish6OptionC1EiiiSt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKS0_EE(ptr noundef nonnull align 8 dereferenceable(152) %4, i32 noundef %.0, i32 noundef %.sroa.08.0.extract.trunc78, i32 noundef %.sroa.37.0.extract.trunc, ptr noundef nonnull align 8 %5) #16
  call void @_ZN9Stockfish10OptionsMap3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(152) %4) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit48
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.al = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i32 noundef 3) #16, !inline_history !36 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.h, %_ZNK9Stockfish8SetRangeclEi.exit48
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !37
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !26 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !37
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ay = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZN9Stockfish6OptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !37
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #17
  br label %_ZN9Stockfish6OptionD2Ev.exit

_ZN9Stockfish6OptionD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.bd = load ptr, ptr %i.af, align 8, !tbaa !35 ; 2 uses
  %.not.i49 = icmp eq ptr %i.bd, null
  br i1 %.not.i49, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9Stockfish6OptionD2Ev.exit
  %i.be = call noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #16, !inline_history !38 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN9Stockfish6OptionD2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bf = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  store ptr %i.bf, ptr @_ZN9Stockfish10LastOptionE, align 8, !tbaa !39
  %i.bg = load ptr, ptr %1, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !22
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bg, i64 noundef %i.bi) #16 ; 2 uses
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i32 noundef %.0) #16 ; 2 uses
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %.not.i50 = icmp eq ptr %i.bn, null
  br i1 %.not.i50, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bo = call i64 %i.bn(i32 noundef %.0) #16, !inline_history !21
  br label %_ZNK9Stockfish8SetRangeclEi.exit53

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i52 = load i64, ptr %i.bp, align 8
  br label %_ZNK9Stockfish8SetRangeclEi.exit53

_ZNK9Stockfish8SetRangeclEi.exit53:               ; preds = %bb.j, %bb.k
  %.sroa.0.0.i51 = phi i64 [ %i.bo, %bb.j ], [ %.sroa.0.0.copyload.i52, %bb.k ]
  %.sroa.04.0.extract.trunc = trunc i64 %.sroa.0.0.i51 to i32
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i32 noundef %.sroa.04.0.extract.trunc) #16 ; 2 uses
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  %i.bs = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %.not.i54 = icmp eq ptr %i.bs, null
  br i1 %.not.i54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit53
  %i.bt = call i64 %i.bs(i32 noundef %.0) #16, !inline_history !21
  br label %_ZNK9Stockfish8SetRangeclEi.exit57

bb.m:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit53
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i56 = load i64, ptr %i.bu, align 8
  br label %_ZNK9Stockfish8SetRangeclEi.exit57

_ZNK9Stockfish8SetRangeclEi.exit57:               ; preds = %bb.l, %bb.m
  %.sroa.0.0.i55 = phi i64 [ %i.bt, %bb.l ], [ %.sroa.0.0.copyload.i56, %bb.m ]
  %.sroa.33.0.extract.shift = lshr i64 %.sroa.0.0.i55, 32
  %.sroa.33.0.extract.trunc = trunc nuw i64 %.sroa.33.0.extract.shift to i32
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i32 noundef %.sroa.33.0.extract.trunc) #16 ; 2 uses
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  %i.bx = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %.not.i58 = icmp eq ptr %i.bx, null
  br i1 %.not.i58, label %_ZNK9Stockfish8SetRangeclEi.exit61.thread, label %_ZNK9Stockfish8SetRangeclEi.exit61

_ZNK9Stockfish8SetRangeclEi.exit61.thread:        ; preds = %_ZNK9Stockfish8SetRangeclEi.exit57
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i60 = load i64, ptr %i.by, align 8 ; 2 uses
  br label %_ZNK9Stockfish8SetRangeclEi.exit65

_ZNK9Stockfish8SetRangeclEi.exit61:               ; preds = %_ZNK9Stockfish8SetRangeclEi.exit57
  %i.bz = call i64 %i.bx(i32 noundef %.0) #16, !inline_history !21 ; 2 uses
  %.pr80 = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %.not.i62 = icmp eq ptr %.pr80, null
  br i1 %.not.i62, label %_ZNK9Stockfish8SetRangeclEi.exit61._crit_edge, label %bb.n

_ZNK9Stockfish8SetRangeclEi.exit61._crit_edge:    ; preds = %_ZNK9Stockfish8SetRangeclEi.exit61
  %.phi.trans.insert90 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i64.pre = load i64, ptr %.phi.trans.insert90, align 8
  br label %_ZNK9Stockfish8SetRangeclEi.exit65

bb.n:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit61
  %i.ca = call i64 %.pr80(i32 noundef %.0) #16, !inline_history !21
  br label %_ZNK9Stockfish8SetRangeclEi.exit65

_ZNK9Stockfish8SetRangeclEi.exit65:               ; preds = %_ZNK9Stockfish8SetRangeclEi.exit61.thread, %_ZNK9Stockfish8SetRangeclEi.exit61._crit_edge, %bb.n
  %.sroa.3.0.extract.trunc85.in.in = phi i64 [ %i.bz, %bb.n ], [ %.sroa.0.0.copyload.i60, %_ZNK9Stockfish8SetRangeclEi.exit61.thread ], [ %i.bz, %_ZNK9Stockfish8SetRangeclEi.exit61._crit_edge ]
  %.sroa.0.0.i63 = phi i64 [ %i.ca, %bb.n ], [ %.sroa.0.0.copyload.i60, %_ZNK9Stockfish8SetRangeclEi.exit61.thread ], [ %.sroa.0.0.copyload.i64.pre, %_ZNK9Stockfish8SetRangeclEi.exit61._crit_edge ]
  %.sroa.3.0.extract.trunc85.in = lshr i64 %.sroa.3.0.extract.trunc85.in.in, 32
  %.sroa.3.0.extract.trunc85 = trunc nuw i64 %.sroa.3.0.extract.trunc85.in to i32
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.i63 to i32
  %i.cb = sub nsw i32 %.sroa.3.0.extract.trunc85, %.sroa.0.0.extract.trunc
  %i.cc = sitofp i32 %i.cb to double
  %i.cd = fdiv double %i.cc, 2.000000e+01
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, double noundef %i.cd) #16 ; 5 uses
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.1, i64 noundef 6) #16 ; 0 uses
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.ci = getelementptr i8, ptr %i.ch, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 240
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !43 ; 6 uses
  %.not.i.i.i66 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i66, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.o:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit65
  call void @_ZSt16__throw_bad_castv() #18
end_hunk_0
