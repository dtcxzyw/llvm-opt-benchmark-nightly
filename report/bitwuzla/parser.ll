Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/parser?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1457
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4bzla6parser4smt26Parser12parse_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.u
  %i.ce = load i64, ptr %i.bs, align 8, !tbaa !54
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.012 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  %i.cg = load ptr, ptr %3, align 8, !tbaa !154   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.n
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.v
  %i.ci = load i64, ptr %i.n, align 8, !tbaa !54
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %bb.s
  %.pn15 = phi { ptr, i32 } [ %i.br, %bb.s ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  %i.ck = load ptr, ptr %3, align 8, !tbaa !154   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.n
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.w
  %i.cm = load i64, ptr %i.n, align 8, !tbaa !54
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn15

_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread: ; preds = %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.113 = phi i1 [ %.012, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.113
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #0 align 2

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN8bitwuzla7Options28set_diagnostic_output_streamERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN4bzla4util6Logger10set_streamERSo(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK8bitwuzla7Options8is_validERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK8bitwuzla7Options7is_modeENS_6OptionE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK8bitwuzla7Options6optionEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare void @_ZN8bitwuzla7Options3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #14

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8bitwuzla9Exception3msgB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare noundef ptr @_ZNK8bitwuzla7Options3lngENS_6OptionE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #0 align 2

declare noundef ptr @_ZN4bzla6parser4smt211SymbolTable6insertENS1_5TokenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbm(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(145) ptr @_ZN4bzla6parser4smt26Parser9push_itemIPNS1_11SymbolTable4NodeEEERNS2_10ParsedItemENS1_5TokenET_RKNS1_5Lexer10CoordinateE(ptr noundef nonnull align 8 dereferenceable(2056) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !221
  store ptr %2, ptr %i.b, align 8, !tbaa !270
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !184  ; 12 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !183
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread, label %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit

_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -152 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !240
  %i.i = icmp eq i32 %i.h, 7
  br i1 %i.i, label %bb.b, label %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread

bb.b:                                             ; preds = %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit
  %.sroa.0.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 8, !tbaa !164
  store i32 %1, ptr %i.g, align 8, !tbaa !240
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -128 ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 -112 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !244
  switch i8 %i.l, label %bb.e [
    i8 0, label %_ZSt3getILm0EJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSD_.exit.i.i
    i8 -1, label %_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEE7emplaceILm0EJRS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS5_S7_S8_EE4typeEDpT0_EERSF_E4typeEDpOSG_.exit.i.i
    i8 2, label %bb.d
    i8 1, label %bb.c
  ], !prof !337

_ZSt3getILm0EJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSD_.exit.i.i: ; preds = %bb.b
  store ptr %2, ptr %i.j, align 8, !tbaa !270
  br label %_ZN4bzla6parser4smt26Parser8set_itemIPNS1_11SymbolTable4NodeEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(17) %i.j) #30
  br label %_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEE7emplaceILm0EJRS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS5_S7_S8_EE4typeEDpT0_EERSF_E4typeEDpOSG_.exit.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(17) %i.j) #30
  br label %_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEE7emplaceILm0EJRS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS5_S7_S8_EE4typeEDpT0_EERSF_E4typeEDpOSG_.exit.i.i

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEE7emplaceILm0EJRS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS5_S7_S8_EE4typeEDpT0_EERSF_E4typeEDpOSG_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store ptr %2, ptr %i.j, align 8, !tbaa !243
  store i8 0, ptr %i.k, align 8, !tbaa !244
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !260
  br label %_ZN4bzla6parser4smt26Parser8set_itemIPNS1_11SymbolTable4NodeEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit

_ZN4bzla6parser4smt26Parser8set_itemIPNS1_11SymbolTable4NodeEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit: ; preds = %_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEE7emplaceILm0EJRS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS5_S7_S8_EE4typeEDpT0_EERSF_E4typeEDpOSG_.exit.i.i, %_ZSt3getILm0EJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSD_.exit.i.i
  %i.m = phi ptr [ %.pre, %_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEE7emplaceILm0EJRS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS5_S7_S8_EE4typeEDpT0_EERSF_E4typeEDpOSG_.exit.i.i ], [ %i.e, %_ZSt3getILm0EJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSD_.exit.i.i ]
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -144
  store <2 x i64> %.sroa.0.sroa.0.0.copyload, ptr %i.n, align 8, !tbaa !164
  br label %_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE12emplace_backIJRNS2_5TokenERPNS2_11SymbolTable4NodeERKNS2_5Lexer10CoordinateEEEERS4_DpOT_.exit

_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread: ; preds = %bb.a, %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !185
  %.not.i3 = icmp eq ptr %i.e, %i.p
  br i1 %.not.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread
  store i32 %1, ptr %i.e, align 8, !tbaa !240
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !241
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %2, ptr %i.r, align 8, !tbaa !243
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i8 0, ptr %i.s, align 8, !tbaa !244
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(97) %i.t, i8 0, i64 97, i1 false)
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !184
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  store ptr %i.v, ptr %i.d, align 8, !tbaa !184
  br label %_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE12emplace_backIJRNS2_5TokenERPNS2_11SymbolTable4NodeERKNS2_5Lexer10CoordinateEEEERS4_DpOT_.exit

bb.g:                                             ; preds = %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread
  call void @_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE17_M_realloc_insertIJRNS2_5TokenERPNS2_11SymbolTable4NodeERKNS2_5Lexer10CoordinateEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE12emplace_backIJRNS2_5TokenERPNS2_11SymbolTable4NodeERKNS2_5Lexer10CoordinateEEEERS4_DpOT_.exit

_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE12emplace_backIJRNS2_5TokenERPNS2_11SymbolTable4NodeERKNS2_5Lexer10CoordinateEEEERS4_DpOT_.exit: ; preds = %bb.g, %bb.f, %_ZN4bzla6parser4smt26Parser8set_itemIPNS1_11SymbolTable4NodeEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !260
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -152
  ret ptr %i.x
}

declare void @_ZN8bitwuzla4TermC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bzla6parser4smt26Parser10close_termEv(ptr noundef nonnull align 8 dereferenceable(2056) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::optional", align 8     ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::optional", align 8     ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::optional", align 16    ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::optional", align 8    ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::optional", align 8    ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::optional", align 16   ; 6 uses
  %19 = alloca %"class.std::optional", align 8    ; 4 uses
  %20 = alloca %"class.std::optional.222", align 8 ; 4 uses
  %21 = alloca %"class.std::optional.222", align 16 ; 6 uses
  %22 = alloca %"class.bitwuzla::Term", align 16  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !165
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %.not = icmp eq i64 %i.i, 8
  br i1 %.not, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 19, ptr %i.b, align 8, !tbaa !164
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %1, align 8, !tbaa !154
  %i.l = load i64, ptr %i.b, align 8, !tbaa !164  ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.k, ptr noundef nonnull align 1 dereferenceable(19) @.str.113, i64 19, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !53
  %i.n = load ptr, ptr %1, align 8, !tbaa !154
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.p, align 8, !tbaa !219
  %i.q = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.r = load ptr, ptr %1, align 8, !tbaa !154    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.j
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.t = load i64, ptr %i.j, align 8, !tbaa !54
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.bf

bb.c:                                             ; preds = %.noexc.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.d:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.x = load ptr, ptr %1, align 8, !tbaa !154    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.d
  %i.z = load i64, ptr %i.j, align 8, !tbaa !54
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.c
  %.pn = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.bg

bb.e:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 6 uses
  %i.ac = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !164
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw [152 x i8], ptr %i.ae, i64 %i.ad ; 13 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !240 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.ah, align 8, !tbaa !164 ; 2 uses
  switch i32 %i.ag, label %bb.k [
    i32 7, label %._crit_edge.i.i72
    i32 8, label %.noexc.i83
  ]

._crit_edge.i.i72:                                ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.ai, ptr noundef nonnull align 1 dereferenceable(15) @.str.114, i64 15, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 15, ptr %i.aj, align 8, !tbaa !53
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 31
  store i8 0, ptr %i.ak, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.al, align 8, !tbaa !219
  %i.am = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %._crit_edge.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.an = load ptr, ptr %3, align 8, !tbaa !154   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ai
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.f
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !54
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.bf

bb.g:                                             ; preds = %._crit_edge.i.i72
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.as = load ptr, ptr %3, align 8, !tbaa !154   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ai
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.g
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !54
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.bg

.noexc.i83:                                       ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.aw, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 32, ptr %i.a, align 8, !tbaa !164
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc84 unwind label %bb.i   ; 2 uses

.noexc84:                                         ; preds = %.noexc.i83
  store ptr %i.ax, ptr %5, align 8, !tbaa !154
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !164 ; 3 uses
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ax, ptr noundef nonnull align 1 dereferenceable(32) @.str.115, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !53
  %i.ba = load ptr, ptr %5, align 8, !tbaa !154
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store <2 x i64> %.sroa.0.0.copyload, ptr %6, align 16, !tbaa !164
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 1, ptr %i.bc, align 16, !tbaa !219
  %i.bd = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.be = load ptr, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.aw
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.h
  %i.bg = load i64, ptr %i.aw, align 8, !tbaa !54
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.bf

bb.i:                                             ; preds = %.noexc.i83
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.j:                                             ; preds = %.noexc84
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bk = load ptr, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.aw
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.j
  %i.bm = load i64, ptr %i.aw, align 8, !tbaa !54
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.i
  %.pn63 = phi { ptr, i32 } [ %i.bi, %bb.i ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.bj, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.bg

bb.k:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 6 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !260
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -152
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !240
  %i.bs = icmp eq i32 %i.br, 14
  br i1 %i.bs, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i32 noundef %i.ag)
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.116, i64 noundef 17)
          to label %.noexc93 unwind label %bb.s   ; 6 uses

.noexc93:                                         ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bu, ptr %8, align 8, !tbaa !51, !alias.scope !694
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !154 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 5 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

bb.m:                                             ; preds = %.noexc93
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !53 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i64 %i.cb, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %.noexc93
  store ptr %i.bv, ptr %8, align 8, !tbaa !154, !alias.scope !694
  %i.cc = load i64, ptr %i.bw, align 8, !tbaa !54
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !54, !alias.scope !694
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.m
  %i.cd = phi i64 [ %i.bz, %bb.m ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !53, !alias.scope !694
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !154
  store i64 0, ptr %i.ce, align 8, !tbaa !53
  store i8 0, ptr %i.bw, align 8, !tbaa !54
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !53, !noalias !695
  %i.ch = icmp eq i64 %i.cg, 4611686018427387903
  br i1 %i.ch, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #29
          to label %.noexc97 unwind label %bb.t

.noexc97:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.n
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc98 unwind label %bb.t   ; 6 uses

.noexc98:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cj, ptr %7, align 8, !tbaa !51, !alias.scope !695
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !154 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 5 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

bb.p:                                             ; preds = %.noexc98
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !53 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cp)
  %i.cq = add nuw nsw i64 %i.co, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cj, ptr noundef nonnull align 8 dereferenceable(1) %i.cl, i64 %i.cq, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %.noexc98
  store ptr %i.ck, ptr %7, align 8, !tbaa !154, !alias.scope !695
  %i.cr = load i64, ptr %i.cl, align 8, !tbaa !54
  store i64 %i.cr, ptr %i.cj, align 8, !tbaa !54, !alias.scope !695
  %.phi.trans.insert.i95 = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.pre.i96 = load i64, ptr %.phi.trans.insert.i95, align 8, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.p
  %i.cs = phi i64 [ %i.co, %bb.p ], [ %.pre.i96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cs, ptr %i.cu, align 8, !tbaa !53, !alias.scope !695
  store ptr %i.cl, ptr %i.ci, align 8, !tbaa !154
  store i64 0, ptr %i.ct, align 8, !tbaa !53
  store i8 0, ptr %i.cl, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 0, ptr %i.cv, align 8, !tbaa !219
  %i.cw = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.r unwind label %bb.u       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.cx = load ptr, ptr %7, align 8, !tbaa !154   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cj
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.r
  %i.cz = load i64, ptr %i.cj, align 8, !tbaa !54
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  %i.db = load ptr, ptr %8, align 8, !tbaa !154   ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bu
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.dd = load i64, ptr %i.bu, align 8, !tbaa !54
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  %i.df = load ptr, ptr %9, align 8, !tbaa !154   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !54
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.bf

bb.s:                                             ; preds = %bb.l
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.o
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.u:                                             ; preds = %bb.q
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.dn = load ptr, ptr %7, align 8, !tbaa !154   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cj
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.u
  %i.dp = load i64, ptr %i.cj, align 8, !tbaa !54
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.t
  %.pn60 = phi { ptr, i32 } [ %i.dl, %bb.t ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %i.dm, %bb.u ] ; 2 uses
  %i.dr = load ptr, ptr %8, align 8, !tbaa !154   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.bu
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.dt = load i64, ptr %i.bu, align 8, !tbaa !54
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.s
  %.pn60.pn = phi { ptr, i32 } [ %i.dk, %bb.s ], [ %.pn60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ]
  %i.dv = load ptr, ptr %9, align 8, !tbaa !154   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !54
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.bg

bb.v:                                             ; preds = %bb.k
  switch i32 %i.ag, label %bb.y [
end_hunk_0
begin_hunk_1_@_ZN4bzla6parser4smt26Parser10close_termEv:bb.a
  store i8 0, ptr %i.gh, align 8, !tbaa !54
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !53, !noalias !697
  %i.gs = icmp eq i64 %i.gr, 4611686018427387903
  br i1 %i.gs, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i140

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #29
          to label %.noexc144 unwind label %bb.ap

.noexc144:                                        ; preds = %bb.ak
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i140: ; preds = %bb.aj
  %i.gt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc145 unwind label %bb.ap ; 6 uses

.noexc145:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i140
  %i.gu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.gu, ptr %15, align 8, !tbaa !51, !alias.scope !697
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !154 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 5 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

bb.al:                                            ; preds = %.noexc145
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !53 ; 3 uses
  %i.ha = icmp ult i64 %i.gz, 16
  call void @llvm.assume(i1 %i.ha)
  %i.hb = add nuw nsw i64 %i.gz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gu, ptr noundef nonnull align 8 dereferenceable(1) %i.gw, i64 %i.hb, i1 false)
  br label %bb.am

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %.noexc145
  store ptr %i.gv, ptr %15, align 8, !tbaa !154, !alias.scope !697
  %i.hc = load i64, ptr %i.gw, align 8, !tbaa !54
  store i64 %i.hc, ptr %i.gu, align 8, !tbaa !54, !alias.scope !697
  %.phi.trans.insert.i142 = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.pre.i143 = load i64, ptr %.phi.trans.insert.i142, align 8, !tbaa !53
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141, %bb.al
  %i.hd = phi i64 [ %i.gz, %bb.al ], [ %.pre.i143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141 ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.hd, ptr %i.hf, align 8, !tbaa !53, !alias.scope !697
  store ptr %i.gw, ptr %i.gt, align 8, !tbaa !154
  store i64 0, ptr %i.he, align 8, !tbaa !53
  store i8 0, ptr %i.gw, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  store <2 x i64> %.sroa.0.0.copyload, ptr %18, align 16, !tbaa !164
  %i.hg = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i8 1, ptr %i.hg, align 16, !tbaa !219
  %i.hh = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.an unwind label %bb.aq     ; 0 uses

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.hi = load ptr, ptr %15, align 8, !tbaa !154  ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.gu
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.an
  %i.hk = load i64, ptr %i.gu, align 8, !tbaa !54
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  %i.hm = load ptr, ptr %16, align 8, !tbaa !154  ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.gf
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.ho = load i64, ptr %i.gf, align 8, !tbaa !54
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  %i.hq = load ptr, ptr %17, align 8, !tbaa !154  ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !54
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.bf

bb.ao:                                            ; preds = %bb.ah
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i140, %bb.ak
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

bb.aq:                                            ; preds = %bb.am
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.hy = load ptr, ptr %15, align 8, !tbaa !154  ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.gu
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.aq
  %i.ia = load i64, ptr %i.gu, align 8, !tbaa !54
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %bb.ap
  %.pn53 = phi { ptr, i32 } [ %i.hw, %bb.ap ], [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %i.hx, %bb.aq ] ; 2 uses
  %i.ic = load ptr, ptr %16, align 8, !tbaa !154  ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.gf
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.ie = load i64, ptr %i.gf, align 8, !tbaa !54
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159, %bb.ao
  %.pn53.pn = phi { ptr, i32 } [ %i.hv, %bb.ao ], [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ]
  %i.ig = load ptr, ptr %17, align 8, !tbaa !154  ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !54
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.bg

bb.ar:                                            ; preds = %bb.ag
  switch i32 %i.ag, label %bb.av [
    i32 13, label %bb.as
    i32 10, label %bb.at
    i32 11, label %bb.au
    i32 65536, label %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit
  ]

bb.as:                                            ; preds = %bb.ar
  %i.il = tail call ptr @_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr nonnull %i.gc) ; 0 uses
  %i.im = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 -8
  store ptr %i.in, ptr %i.d, align 8, !tbaa !162
  br label %bb.bc

bb.at:                                            ; preds = %bb.ar
  %i.io = tail call noundef ptr @_ZN4bzla6parser4smt26Parser12pop_node_argEb(ptr noundef nonnull align 8 dereferenceable(2056) %0, i1 noundef zeroext false)
  %i.ip = load ptr, ptr %i.bo, align 8, !tbaa !184
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 -152 ; 2 uses
  store ptr %i.iq, ptr %i.bo, align 8, !tbaa !184
  tail call void @_ZN4bzla6parser4smt26Parser10ParsedItemD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.iq) #30
  %i.ir = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 -8
  store ptr %i.is, ptr %i.d, align 8, !tbaa !162
  %i.it = load ptr, ptr %i.bo, align 8, !tbaa !260
  %i.iu = getelementptr inbounds i8, ptr %i.it, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.iv = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i8 0, ptr %i.iv, align 8, !tbaa !219
  call void @_ZN4bzla6parser4smt26Parser8set_itemIPNS1_11SymbolTable4NodeEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(145) %i.iu, i32 noundef 5, ptr noundef %i.io, ptr noundef nonnull align 8 dereferenceable(24) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.bc

bb.au:                                            ; preds = %bb.ar
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 1336
  tail call void @_ZN4bzla6parser4smt211SymbolTable22insert_pending_symbolsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.iw)
  %i.ix = load ptr, ptr %i.ab, align 8, !tbaa !260
  %i.iy = getelementptr inbounds [152 x i8], ptr %i.ix, i64 %i.fy ; 2 uses
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -152
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 152
  %i.jb = tail call ptr @_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr nonnull %i.iz, ptr nonnull %i.ja) ; 0 uses
  %i.jc = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -8
  store ptr %i.jd, ptr %i.d, align 8, !tbaa !162
  br label %bb.bc

_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit: ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.je = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i8 0, ptr %i.je, align 8, !tbaa !339
  call void @_ZN4bzla6parser4smt26Parser16close_term_scopeERKSt8optionalIN8bitwuzla4TermEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(24) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.bc

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.jf = load ptr, ptr %i.bo, align 8, !tbaa !260
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -152
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !240
  %i.ji = icmp eq i32 %i.jh, 8
  br i1 %i.ji, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @_ZN4bzla6parser4smt26Parser12pop_term_argEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Term") align 8 %22, ptr noundef nonnull align 8 dereferenceable(2056) %0)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  call void @_ZN8bitwuzla4TermC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %22)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jj = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !253 ; 2 uses
  %i.jl = load <2 x ptr>, ptr %22, align 16, !tbaa !265
  store <2 x ptr> %i.jl, ptr %21, align 16, !tbaa !265
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit166, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 3 uses
  %i.jn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.jn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jo = load i32, ptr %i.jm, align 4, !tbaa !254
  %i.jp = add nsw i32 %i.jo, 1
  store i32 %i.jp, ptr %i.jm, align 4, !tbaa !254
  br label %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit166

bb.bb:                                            ; preds = %bb.az
  %i.jq = atomicrmw volatile add ptr %i.jm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit166

_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit166: ; preds = %bb.ay, %bb.ba, %bb.bb
  %i.jr = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store i8 1, ptr %i.jr, align 16, !tbaa !339
  call void @_ZN4bzla6parser4smt26Parser16close_term_scopeERKSt8optionalIN8bitwuzla4TermEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(24) %21)
  store i8 0, ptr %i.jr, align 16, !tbaa !339
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %21) #30
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.bc

bb.bc:                                            ; preds = %.split193, %.split192, %.split191, %.split190, %.split189, %.split188, %.split187, %.split186, %.split185, %.split, %bb.as, %bb.au, %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit166, %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit, %bb.at, %bb.af
  %.049.shrunk183 = phi i1 [ true, %bb.as ], [ true, %bb.au ], [ true, %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit166 ], [ true, %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit ], [ true, %bb.at ], [ false, %bb.af ], [ false, %.split ], [ false, %.split185 ], [ false, %.split186 ], [ false, %.split187 ], [ false, %.split188 ], [ false, %.split189 ], [ false, %.split190 ], [ false, %.split191 ], [ false, %.split192 ], [ false, %.split193 ] ; 3 uses
  %i.js = load ptr, ptr %i.bo, align 8, !tbaa !184
  %i.jt = load ptr, ptr %i.ab, align 8, !tbaa !183 ; 2 uses
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv                    ; 2 uses
  %i.jx = sdiv exact i64 %i.jw, 152
  %i.jy = icmp ugt i64 %i.jx, 1
  br i1 %i.jy, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.jz = getelementptr i8, ptr %i.jt, i64 %i.jw
  %i.ka = getelementptr i8, ptr %i.jz, i64 -304
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !240
  %i.kc = icmp eq i32 %i.kb, 14
  br i1 %i.kc, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 1712
  store i8 1, ptr %i.kd, align 8, !tbaa !196
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.bc, %bb.bd, %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.2 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %.049.shrunk183, %bb.be ], [ %.049.shrunk183, %bb.bd ], [ %.049.shrunk183, %bb.bc ]
  ret i1 %.2

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.pn65.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn60.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ]
  resume { ptr, i32 } %.pn65.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bzla6parser4smt26Parser15parse_open_termENS1_5TokenE(ptr noundef nonnull align 8 dereferenceable(2056) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.std::optional", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.bitwuzla::Sort", align 8    ; 10 uses
  %9 = alloca %"class.bitwuzla::Term", align 8    ; 7 uses
  %10 = alloca %"class.std::optional.193", align 8 ; 13 uses
  %11 = alloca %"class.bitwuzla::Term", align 16  ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::optional", align 8    ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::optional", align 8    ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::optional", align 8    ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::allocator", align 1   ; 4 uses
  %27 = alloca %"class.bitwuzla::Sort", align 8   ; 7 uses
  %28 = alloca %"class.bitwuzla::Term", align 8   ; 4 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::allocator", align 1   ; 4 uses
  %31 = alloca %"class.bitwuzla::Sort", align 8   ; 7 uses
  %32 = alloca %"class.bitwuzla::Term", align 8   ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::allocator", align 1   ; 4 uses
  %35 = alloca %"class.std::optional", align 8    ; 5 uses
  %i.h = icmp eq i32 %1, 3
  br i1 %i.h, label %bb.b, label %bb.bd

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4bzla6parser4smt26Parser15open_term_scopeEv(ptr noundef nonnull align 8 dereferenceable(2056) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1649 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !198, !range !211, !noundef !209
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !153
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 10, ptr %i.f, align 4, !tbaa !221
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !184  ; 10 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !183
  %.not.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i, label %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread.i, label %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.i

_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.i: ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -152 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !240
  %i.u = icmp eq i32 %i.t, 7
  br i1 %i.u, label %bb.d, label %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread.i

bb.d:                                             ; preds = %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.i
  store i32 10, ptr %i.s, align 8, !tbaa !240
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 -144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !241
  br label %_ZN4bzla6parser4smt26Parser9push_itemENS1_5TokenERKNS1_5Lexer10CoordinateE.exit

_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread.i: ; preds = %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !185
  %.not.i3.i = icmp eq ptr %i.q, %i.x
  br i1 %.not.i3.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread.i
  store i32 10, ptr %i.q, align 8, !tbaa !240
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !241
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr null, ptr %i.z, align 8, !tbaa !243
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i8 0, ptr %i.aa, align 8, !tbaa !244
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(97) %i.ab, i8 0, i64 97, i1 false)
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !184
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  store ptr %i.ad, ptr %i.p, align 8, !tbaa !184
  br label %_ZN4bzla6parser4smt26Parser9push_itemENS1_5TokenERKNS1_5Lexer10CoordinateE.exit

bb.f:                                             ; preds = %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread.i
  call void @_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE17_M_realloc_insertIJRNS2_5TokenERKNS2_5Lexer10CoordinateEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  br label %_ZN4bzla6parser4smt26Parser9push_itemENS1_5TokenERKNS1_5Lexer10CoordinateE.exit

_ZN4bzla6parser4smt26Parser9push_itemENS1_5TokenERKNS1_5Lexer10CoordinateE.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i8 0, ptr %i.i, align 1, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !53
  store i8 0, ptr %i.ae, align 8, !tbaa !54
  %i.ag = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser12parse_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbbNS1_5TokenE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN4bzla6parser4smt26Parser9push_itemENS1_5TokenERKNS1_5Lexer10CoordinateE.exit
  %i.ah = load ptr, ptr %4, align 8, !tbaa !154   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.ae
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aj = load i64, ptr %i.ae, align 8, !tbaa !54
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.ag, label %bb.i, label %bb.dr

bb.h:                                             ; preds = %_ZN4bzla6parser4smt26Parser9push_itemENS1_5TokenERKNS1_5Lexer10CoordinateE.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %4, align 8, !tbaa !154   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ae
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.h
  %i.ao = load i64, ptr %i.ae, align 8, !tbaa !54
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !260 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -112
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !244
  switch i8 %i.as, label %bb.j [
    i8 0, label %_ZNK4bzla6parser4smt26Parser13peek_node_argEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !261

bb.j:                                             ; preds = %bb.i
  %i.at = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.at, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @.str.202, ptr %i.au, align 8, !tbaa !264
  call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.i
end_hunk_1
