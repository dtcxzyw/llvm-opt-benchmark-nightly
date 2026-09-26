Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/parser?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1457
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4bzla6parser4smt26Parser12parse_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bd = load i64, ptr %i.as, align 8, !tbaa !53 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !53
  %i.bf = load ptr, ptr %1, align 8, !tbaa !154
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !54
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !154
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ay, ptr %1, align 8, !tbaa !154
  %i.bi = load <2 x i64>, ptr %i.as, align 8, !tbaa !54
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !tbaa !54
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bj = load i64, ptr %i.aw, align 8, !tbaa !54
  store ptr %i.ay, ptr %1, align 8, !tbaa !154
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load <2 x i64>, ptr %i.as, align 8, !tbaa !54
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !tbaa !54
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.av, ptr %4, align 8, !tbaa !154
  store i64 %i.bj, ptr %i.aj, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aj, ptr %4, align 8, !tbaa !154
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.bm = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.av, %bb.q ], [ %i.aj, %bb.r ]
  store i64 0, ptr %i.as, align 8, !tbaa !53
  store i8 0, ptr %i.bm, align 1, !tbaa !54
  %i.bn = load ptr, ptr %4, align 8, !tbaa !154   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.aj
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bp = load i64, ptr %i.aj, align 8, !tbaa !54
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.v

bb.s:                                             ; preds = %.noexc10.i.i, %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.w

._crit_edge.i.i21:                                ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bs, ptr %5, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.bs, ptr noundef nonnull align 1 dereferenceable(15) @.str.81, i64 15, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 15, ptr %i.bt, align 8, !tbaa !53
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 31
  store i8 0, ptr %i.bu, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.bv, align 8, !tbaa !219
  %i.bw = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %._crit_edge.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bx = load ptr, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bs
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.t
  %i.bz = load i64, ptr %i.bs, align 8, !tbaa !54
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i21
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cc = load ptr, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bs
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

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

end_hunk_0
begin_hunk_1_@_ZN4bzla6parser4smt26Parser10close_termEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  %i.et = load ptr, ptr %12, align 8, !tbaa !154  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !54
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  %i.ey = load ptr, ptr %13, align 8, !tbaa !154  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !54
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.bf

bb.ac:                                            ; preds = %bb.y
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.ad:                                            ; preds = %bb.z
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

bb.ae:                                            ; preds = %bb.aa
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %i.fg = load ptr, ptr %11, align 8, !tbaa !154  ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.ae
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !54
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.ad
  %.pn56 = phi { ptr, i32 } [ %i.fe, %bb.ad ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %i.ff, %bb.ae ] ; 2 uses
  %i.fl = load ptr, ptr %12, align 8, !tbaa !154  ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !54
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.ac
  %.pn56.pn = phi { ptr, i32 } [ %i.fd, %bb.ac ], [ %.pn56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ]
  %i.fq = load ptr, ptr %13, align 8, !tbaa !154  ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !54
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.bg

bb.af:                                            ; preds = %bb.v
  %i.fv = tail call noundef zeroext i1 @_ZN4bzla6parser4smt26Parser15close_term_bangERNS2_10ParsedItemE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(145) %i.af)
  br i1 %i.fv, label %.thread, label %bb.bc

.thread:                                          ; preds = %bb.x, %bb.w, %.split193, %.split192, %.split191, %.split190, %.split189, %.split188, %.split187, %.split186, %.split185, %.split, %bb.af
  %i.fw = load ptr, ptr %i.d, align 8, !tbaa !316
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !164 ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread
  %i.ga = load ptr, ptr %i.ab, align 8, !tbaa !183
  %i.gb = getelementptr [152 x i8], ptr %i.ga, i64 %i.fy
  %i.gc = getelementptr i8, ptr %i.gb, i64 -152   ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !240
  %.not52 = icmp eq i32 %i.gd, 3
  br i1 %.not52, label %bb.ar, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, i32 noundef %i.ag)
  %i.ge = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.105, i64 noundef 20)
          to label %.noexc138 unwind label %bb.ao ; 6 uses

.noexc138:                                        ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.gf, ptr %16, align 8, !tbaa !51, !alias.scope !696
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !154 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 5 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

bb.ai:                                            ; preds = %.noexc138
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !53 ; 3 uses
  %i.gl = icmp ult i64 %i.gk, 16
  call void @llvm.assume(i1 %i.gl)
  %i.gm = add nuw nsw i64 %i.gk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gf, ptr noundef nonnull align 8 dereferenceable(1) %i.gh, i64 %i.gm, i1 false)
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %.noexc138
  store ptr %i.gg, ptr %16, align 8, !tbaa !154, !alias.scope !696
  %i.gn = load i64, ptr %i.gh, align 8, !tbaa !54
  store i64 %i.gn, ptr %i.gf, align 8, !tbaa !54, !alias.scope !696
  %.phi.trans.insert.i136 = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.pre.i137 = load i64, ptr %.phi.trans.insert.i136, align 8, !tbaa !53
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %bb.ai
  %i.go = phi i64 [ %i.gk, %bb.ai ], [ %.pre.i137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 %i.go, ptr %i.gq, align 8, !tbaa !53, !alias.scope !696
  store ptr %i.gh, ptr %i.ge, align 8, !tbaa !154
  store i64 0, ptr %i.gp, align 8, !tbaa !53
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
end_hunk_1
begin_hunk_2_@_ZN4bzla6parser4smt26Parser22parse_open_term_symbolEv:bb.a
  %i.aab = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS8_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.aaa, ptr noundef nonnull align 8 dereferenceable(16) %57) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %57) #30
  br label %bb.ew

_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit411: ; preds = %bb.en
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !246, !nonnull !209, !align !210
  call void @_ZN8bitwuzla11TermManager11mk_rm_valueENS_12RoundingModeE(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Term") align 8 %58, ptr noundef nonnull align 8 dereferenceable(8) %i.aad, i32 noundef 3)
  store i32 8, ptr %i.f, align 8, !tbaa !240
  %i.aae = getelementptr inbounds i8, ptr %i.e, i64 -128
  %i.aaf = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS8_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.aae, ptr noundef nonnull align 8 dereferenceable(16) %58) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %58) #30
  br label %bb.ew

_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit412: ; preds = %bb.en
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !246, !nonnull !209, !align !210
  call void @_ZN8bitwuzla11TermManager11mk_rm_valueENS_12RoundingModeE(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Term") align 8 %59, ptr noundef nonnull align 8 dereferenceable(8) %i.aah, i32 noundef 4)
  store i32 8, ptr %i.f, align 8, !tbaa !240
  %i.aai = getelementptr inbounds i8, ptr %i.e, i64 -128
  %i.aaj = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS8_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.aai, ptr noundef nonnull align 8 dereferenceable(16) %59) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %59) #30
  br label %bb.ew

bb.eo:                                            ; preds = %bb.dp
  br i1 %i.ut, label %bb.ew, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #30
  call void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %62, i32 noundef %i.g)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %61, ptr noundef nonnull @.str.112, ptr noundef nonnull align 8 dereferenceable(32) %62)
          to label %bb.eq unwind label %bb.et

bb.eq:                                            ; preds = %bb.ep
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @.str.2)
          to label %bb.er unwind label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #30
  %i.aak = getelementptr inbounds nuw i8, ptr %63, i64 16
  store i8 0, ptr %i.aak, align 8, !tbaa !219
  %i.aal = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull align 8 dereferenceable(24) %63)
          to label %bb.es unwind label %bb.ev     ; 0 uses

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  %i.aam = load ptr, ptr %60, align 8, !tbaa !154 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.aao = icmp eq ptr %i.aam, %i.aan
  br i1 %i.aao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %bb.es
  %i.aap = load i64, ptr %i.aan, align 8, !tbaa !54
  %i.aaq = add i64 %i.aap, 1
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aaq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413
  %i.aar = load ptr, ptr %61, align 8, !tbaa !154 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.aat = icmp eq ptr %i.aar, %i.aas
  br i1 %i.aat, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  %i.aau = load i64, ptr %i.aas, align 8, !tbaa !54
  %i.aav = add i64 %i.aau, 1
  call void @_ZdlPvm(ptr noundef %i.aar, i64 noundef %i.aav) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416
  %i.aaw = load ptr, ptr %62, align 8, !tbaa !154 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.aay = icmp eq ptr %i.aaw, %i.aax
  br i1 %i.aay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418
  %i.aaz = load i64, ptr %i.aax, align 8, !tbaa !54
  %i.aba = add i64 %i.aaz, 1
  call void @_ZdlPvm(ptr noundef %i.aaw, i64 noundef %i.aba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  br label %bb.ex

bb.et:                                            ; preds = %bb.ep
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

bb.eu:                                            ; preds = %bb.eq
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424

bb.ev:                                            ; preds = %bb.er
  %i.abd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  %i.abe = load ptr, ptr %60, align 8, !tbaa !154 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.abg = icmp eq ptr %i.abe, %i.abf
  br i1 %i.abg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422: ; preds = %bb.ev
  %i.abh = load i64, ptr %i.abf, align 8, !tbaa !54
  %i.abi = add i64 %i.abh, 1
  call void @_ZdlPvm(ptr noundef %i.abe, i64 noundef %i.abi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422, %bb.eu
  %.pn = phi { ptr, i32 } [ %i.abc, %bb.eu ], [ %i.abd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422 ], [ %i.abd, %bb.ev ] ; 2 uses
  %i.abj = load ptr, ptr %61, align 8, !tbaa !154 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.abl = icmp eq ptr %i.abj, %i.abk
  br i1 %i.abl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424
  %i.abm = load i64, ptr %i.abk, align 8, !tbaa !54
  %i.abn = add i64 %i.abm, 1
  call void @_ZdlPvm(ptr noundef %i.abj, i64 noundef %i.abn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425, %bb.et
  %.pn.pn = phi { ptr, i32 } [ %i.abb, %bb.et ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424 ]
  %i.abo = load ptr, ptr %62, align 8, !tbaa !154 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.abq = icmp eq ptr %i.abo, %i.abp
  br i1 %i.abq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427
  %i.abr = load i64, ptr %i.abp, align 8, !tbaa !54
  %i.abs = add i64 %i.abr, 1
  call void @_ZdlPvm(ptr noundef %i.abo, i64 noundef %i.abs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  br label %common.resume

bb.ew:                                            ; preds = %bb.en, %bb.bu, %bb.bi, %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit266, %bb.cn, %bb.dh, %bb.eo, %bb.ee, %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit409, %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit411, %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit412, %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit410, %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit408, %bb.cx, %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE5clearEv.exit, %bb.an, %bb.ap, %bb.ao, %bb.ag
  br label %bb.ex

bb.ex:                                            ; preds = %_ZN4bzla6parser4smt26Parser10parse_lparEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, %bb.ao, %bb.an, %bb.ag, %bb.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %.1115 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ true, %bb.ew ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421 ], [ false, %_ZN4bzla6parser4smt26Parser10parse_lparEv.exit ], [ false, %bb.ag ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214 ], [ false, %bb.an ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371 ], [ false, %bb.ao ]
  ret i1 %.1115
}

declare void @_ZN8bitwuzla11TermManager10mk_bv_sortEm(ptr dead_on_unwind writable sret(%"class.bitwuzla::Sort") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(145) ptr @_ZN4bzla6parser4smt26Parser9push_itemIN8bitwuzla4TermEEERNS2_10ParsedItemENS1_5TokenET_RKNS1_5Lexer10CoordinateE(ptr noundef nonnull align 8 dereferenceable(2056) %0, i32 noundef %1, ptr noundef align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %4 = alloca %"class.bitwuzla::Term", align 16   ; 3 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !221
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !183
  %.not.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i, label %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread, label %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit

_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -152 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !240
  %i.h = icmp eq i32 %i.g, 7
  br i1 %i.h, label %bb.b, label %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread

bb.b:                                             ; preds = %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !253  ; 2 uses
  %i.k = load <2 x ptr>, ptr %2, align 8, !tbaa !265
  store <2 x ptr> %i.k, ptr %4, align 16, !tbaa !265
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !254
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !254
  br label %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit

_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 8, !tbaa !164
  store i32 %1, ptr %i.f, align 8, !tbaa !240
  %i.q = getelementptr inbounds i8, ptr %i.d, i64 -128
  %i.r = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS8_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %4) #30 ; 0 uses
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !260
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -144
  store <2 x i64> %.sroa.0.sroa.0.0.copyload, ptr %i.t, align 8, !tbaa !164
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  br label %bb.f

_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread: ; preds = %bb.a, %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit
  %i.u = call noundef nonnull align 8 dereferenceable(145) ptr @_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE12emplace_backIJRNS2_5TokenERN8bitwuzla4TermERKNS2_5Lexer10CoordinateEEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4bzla6parser4smt26Parser18peek_item_is_tokenENS1_5TokenE.exit.thread, %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !260
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -152
  ret ptr %i.w
}

declare void @_ZN8bitwuzla11TermManager11mk_bv_valueERKNS_4SortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !296
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !336    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !51
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.204) #29
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.i, ptr %i.a, align 8, !tbaa !164
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !154
  %i.l = load i64, ptr %i.a, align 8, !tbaa !164
  store i64 %i.l, ptr %i.g, align 8, !tbaa !54
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JPKcEEEvPT_DpOT0_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !54
  store i8 %i.n, ptr %i.m, align 1, !tbaa !54
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JPKcEEEvPT_DpOT0_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JPKcEEEvPT_DpOT0_.exit

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JPKcEEEvPT_DpOT0_.exit: ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !164  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !53
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !154
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !295
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.b, align 8, !tbaa !295
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPKcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !340
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JPKcEEEvPT_DpOT0_.exit
  %i.u = phi ptr [ %.pre, %bb.f ], [ %i.t, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JPKcEEEvPT_DpOT0_.exit ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  ret ptr %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE12emplace_backIJRKS4_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !341  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !342
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !241
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !341  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !341
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !343    ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.200) #29
  unreachable

_ZNKSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !241
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i

_ZNSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i: ; preds = %_ZNKSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.not.i17.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !342
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #28
  br label %_ZNSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i, %bb.f
  store ptr %i.r, ptr %0, align 8, !tbaa !343
  store ptr %i.u, ptr %i.a, align 8, !tbaa !341
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.c, align 8, !tbaa !342
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.b
  %i.z = phi ptr [ %i.s, %_ZNSt6vectorIN4bzla6parser4smt25Lexer10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ], [ %i.e, %bb.b ]
  ret ptr %i.z
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bzla6parser4smt26Parser18parse_open_term_asEv(ptr noundef nonnull align 8 dereferenceable(2056) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::optional", align 8     ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::optional", align 8     ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::optional", align 8     ; 5 uses
  %6 = alloca %"class.bitwuzla::Sort", align 16   ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::optional", align 8     ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  %11 = alloca %"class.std::optional", align 8    ; 6 uses
  %12 = alloca %"class.bitwuzla::Sort", align 16  ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::optional", align 8    ; 5 uses
  %i.c = tail call noundef i32 @_ZN4bzla6parser4smt26Parser10next_tokenEb(ptr noundef nonnull align 8 dereferenceable(2056) %0, i1 noundef zeroext false)
  switch i32 %i.c, label %.noexc.i [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4bzla6parser4smt26Parser9error_eofEv(ptr noundef nonnull align 8 dereferenceable(2056) %0) ; 0 uses
  br label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !153
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4bzla6parser4smt25Lexer9error_msgB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(176) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
end_hunk_2
begin_hunk_3_@_ZN4bzla6parser4smt26Parser18parse_open_term_asEv:bb.a

bb.ai:                                            ; preds = %.noexc54
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !53 ; 3 uses
  %i.fi = icmp ult i64 %i.fh, 16
  call void @llvm.assume(i1 %i.fi)
  %i.fj = add nuw nsw i64 %i.fh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fc, ptr noundef nonnull align 8 dereferenceable(1) %i.fe, i64 %i.fj, i1 false)
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %.noexc54
  store ptr %i.fd, ptr %13, align 8, !tbaa !154, !alias.scope !733
  %i.fk = load i64, ptr %i.fe, align 8, !tbaa !54
  store i64 %i.fk, ptr %i.fc, align 8, !tbaa !54, !alias.scope !733
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.ai
  %i.fl = phi i64 [ %i.fh, %bb.ai ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.fl, ptr %i.fn, align 8, !tbaa !53, !alias.scope !733
  store ptr %i.fe, ptr %i.fb, align 8, !tbaa !154
  store i64 0, ptr %i.fm, align 8, !tbaa !53
  store i8 0, ptr %i.fe, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.fo = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i8 0, ptr %i.fo, align 8, !tbaa !219
  %i.fp = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.ak unwind label %bb.am     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.fq = load ptr, ptr %13, align 8, !tbaa !154  ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.fc
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.ak
  %i.fs = load i64, ptr %i.fc, align 8, !tbaa !54
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  %i.fu = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.ej
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.fw = load i64, ptr %i.ej, align 8, !tbaa !54
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.ah
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.am:                                            ; preds = %bb.aj
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.ga = load ptr, ptr %13, align 8, !tbaa !154  ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.fc
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.am
  %i.gc = load i64, ptr %i.fc, align 8, !tbaa !54
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.al
  %.pn = phi { ptr, i32 } [ %i.fy, %bb.al ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.fz, %bb.am ]
  %i.ge = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.ej
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.gg = load i64, ptr %i.ej, align 8, !tbaa !54
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %common.resume

_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread: ; preds = %bb.c, %bb.b, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.2 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %.0, %bb.ae ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.2
}

declare noundef zeroext i1 @_ZNK8bitwuzla4Sort8is_arrayEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !260    ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !260  ; 4 uses
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE.exit

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %i.m = udiv exact i64 %i.k, 152
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(145) ptr @_ZN4bzla6parser4smt26Parser10ParsedItemaSEOS3_(ptr noundef nonnull align 8 dereferenceable(145) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(145) %.0910.i.i.i.i.i.i) #30 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 152
  %i.p = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 152
  %i.q = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.r = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4bzla6parser4smt26Parser10ParsedItemESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i, !llvm.loop !18

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4bzla6parser4smt26Parser10ParsedItemESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !184
  br label %_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE.exit

_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE.exit: ; preds = %bb.a, %bb.b, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4bzla6parser4smt26Parser10ParsedItemESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i
  %i.s = phi ptr [ %.pre.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4bzla6parser4smt26Parser10ParsedItemESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i ], [ %i.h, %bb.b ], [ %i.h, %bb.a ]
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -152 ; 2 uses
  store ptr %i.t, ptr %i.g, align 8, !tbaa !184
  tail call void @_ZN4bzla6parser4smt26Parser10ParsedItemD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.t) #30
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bzla6parser4smt26Parser23parse_open_term_indexedEv(ptr noundef nonnull align 8 dereferenceable(2056) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.bitwuzla::Term", align 16   ; 14 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::optional", align 8     ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::optional", align 8     ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::optional", align 8     ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::optional", align 8    ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::optional", align 8    ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::optional", align 8    ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %25 = alloca %"class.std::optional", align 8    ; 5 uses
  %26 = alloca %"class.bitwuzla::Term", align 8   ; 14 uses
  %27 = alloca %"class.bitwuzla::Sort", align 8   ; 11 uses
  %28 = alloca %"class.bitwuzla::Term", align 8   ; 6 uses
  %29 = alloca %"class.bitwuzla::Term", align 8   ; 6 uses
  %30 = alloca %"class.bitwuzla::Term", align 8   ; 6 uses
  %31 = alloca %"class.bitwuzla::Term", align 8   ; 6 uses
  %32 = alloca %"class.bitwuzla::Term", align 8   ; 6 uses
  %33 = alloca %"class.bitwuzla::Sort", align 8   ; 7 uses
  %34 = alloca %"class.bitwuzla::Term", align 8   ; 6 uses
  %35 = alloca %"class.std::optional.222", align 16 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %37 = alloca %"class.std::optional", align 8    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.i, align 8, !tbaa !164
  %i.j = tail call noundef i32 @_ZN4bzla6parser4smt26Parser10next_tokenEb(ptr noundef nonnull align 8 dereferenceable(2056) %0, i1 noundef zeroext false) ; 6 uses
  switch i32 %i.j, label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4bzla6parser4smt26Parser9error_eofEv(ptr noundef nonnull align 8 dereferenceable(2056) %0) ; 0 uses
  br label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4bzla6parser4smt25Lexer9error_msgB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(176) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.n, align 8, !tbaa !219
  %i.o = call noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 8 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !316
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !164
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !183
  %i.v = getelementptr inbounds nuw [152 x i8], ptr %i.u, i64 %i.t ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !146
  store ptr %i.x, ptr %i.e, align 8, !tbaa !270
  %i.y = icmp eq i32 %i.j, 5
  %spec.select = select i1 %i.y, i32 16385, i32 %i.j
  switch i32 %i.j, label %bb.am [
    i32 16399, label %bb.bc
    i32 16402, label %bb.bc
    i32 16403, label %bb.bc
    i32 16408, label %bb.bc
    i32 16422, label %bb.bc
    i32 16391, label %bb.d
    i32 32814, label %bb.e
    i32 32815, label %bb.e
    i32 32804, label %bb.f
    i32 32806, label %bb.f
    i32 32807, label %bb.f
    i32 32808, label %bb.f
    i32 32809, label %bb.f
    i32 32816, label %bb.g
    i32 32817, label %bb.g
    i32 5, label %bb.h
  ]

bb.d:                                             ; preds = %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit
  br label %bb.bc

bb.e:                                             ; preds = %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit
  %i.z = phi i1 [ false, %bb.e ], [ true, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit ], [ true, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit ], [ true, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit ], [ true, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit ], [ true, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit ]
  br label %bb.bc

bb.g:                                             ; preds = %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit
  br label %bb.bc

bb.h:                                             ; preds = %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !159 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !51
  %i.ae = icmp eq ptr %i.ac, null
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.204) #29
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 %i.af, ptr %i.d, align 8, !tbaa !164
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.j
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc139 unwind label %bb.s  ; 2 uses

.noexc139:                                        ; preds = %.noexc.i
  store ptr %i.ah, ptr %5, align 8, !tbaa !154
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !164
  store i64 %i.ai, ptr %i.ad, align 8, !tbaa !54
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc139, %bb.j
  %i.aj = phi ptr [ %i.ah, %.noexc139 ], [ %i.ad, %bb.j ] ; 2 uses
  switch i64 %i.af, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !54
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !54
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %i.ac, i64 %i.af, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i
  %i.al = load i64, ptr %i.d, align 8, !tbaa !164 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !53
  %i.an = load ptr, ptr %5, align 8, !tbaa !154
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !53
  %i.aq = icmp ult i64 %i.ap, 2
  br i1 %i.aq, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !54
  %.not = icmp eq i8 %i.as, 98
  br i1 %.not, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !54
  %.not97 = icmp eq i8 %i.au, 118
  br i1 %.not97, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.95, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.2)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 0, ptr %i.av, align 8, !tbaa !219
  %i.aw = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.critedge unwind label %bb.v  ; 0 uses

.critedge:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ax = load ptr, ptr %6, align 8, !tbaa !154   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !54
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bc = load ptr, ptr %7, align 8, !tbaa !154   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !54
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bh = load ptr, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ad
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.bj = load i64, ptr %i.ad, align 8, !tbaa !54
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ej

bb.s:                                             ; preds = %.noexc.i, %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.t:                                             ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.u:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.v:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.bp = load ptr, ptr %6, align 8, !tbaa !154   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
end_hunk_3
begin_hunk_4_@_ZN4bzla6parser4smt26Parser23parse_open_term_indexedEv:bb.a
  %i.ue = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !253 ; 5 uses
  store ptr %i.ug, ptr %i.ue, align 8, !tbaa !253
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ug, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.thread, label %bb.dx

.thread:                                          ; preds = %bb.dw
  %i.uh = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  store i8 1, ptr %i.uh, align 16, !tbaa !339
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ui = load ptr, ptr %i.ua, align 8, !tbaa !260 ; 2 uses
  %i.uj = getelementptr inbounds i8, ptr %i.ui, i64 -152
  store ptr %i.ud, ptr %1, align 16, !tbaa !258
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.uk, align 8, !tbaa !253
  br label %.critedge460

bb.dx:                                            ; preds = %bb.dw
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ug, i64 8 ; 3 uses
  %i.um = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.um, 0
  %i.un = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.dy, label %.thread451

.thread451:                                       ; preds = %bb.dx
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.up = load i32, ptr %i.ul, align 4, !tbaa !254
  %i.uq = add nsw i32 %i.up, 1
  store i32 %i.uq, ptr %i.ul, align 4, !tbaa !254
  store i8 1, ptr %i.un, align 16, !tbaa !339
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ur = load ptr, ptr %i.ua, align 8, !tbaa !260 ; 2 uses
  %i.us = getelementptr inbounds i8, ptr %i.ur, i64 -152
  store ptr %i.ud, ptr %1, align 16, !tbaa !258
  store ptr %i.ug, ptr %i.uo, align 8, !tbaa !253
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.ut = atomicrmw volatile add ptr %i.ul, i32 1 acq_rel, align 4 ; 0 uses
  store i8 1, ptr %i.un, align 16, !tbaa !339
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.uu = load ptr, ptr %i.ua, align 8, !tbaa !260 ; 3 uses
  %i.uv = getelementptr inbounds i8, ptr %i.uu, i64 -152 ; 2 uses
  %.pre335 = load ptr, ptr %i.ue, align 8, !tbaa !253 ; 2 uses
  %i.uw = load <2 x ptr>, ptr %35, align 16, !tbaa !265
  store <2 x ptr> %i.uw, ptr %1, align 16, !tbaa !265
  %.not.i.i.i.i.i = icmp eq ptr %.pre335, null
  br i1 %.not.i.i.i.i.i, label %.critedge460, label %bb.dz

bb.dz:                                            ; preds = %.thread451, %bb.dy
  %i.ux = phi ptr [ %i.us, %.thread451 ], [ %i.uv, %bb.dy ] ; 2 uses
  %i.uy = phi ptr [ %i.ur, %.thread451 ], [ %i.uu, %bb.dy ] ; 2 uses
  %i.uz = phi ptr [ %i.ug, %.thread451 ], [ %.pre335, %bb.dy ]
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8 ; 3 uses
  %i.vb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i = icmp eq i8 %i.vb, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.vc = load i32, ptr %i.va, align 4, !tbaa !254
  %i.vd = add nsw i32 %i.vc, 1
  store i32 %i.vd, ptr %i.va, align 4, !tbaa !254
  br label %.critedge460

bb.eb:                                            ; preds = %bb.dz
  %i.ve = atomicrmw volatile add ptr %i.va, i32 1 acq_rel, align 4 ; 0 uses
  %.pre336 = load i8, ptr %i.un, align 16, !tbaa !339, !range !211
  %i.vf = trunc nuw i8 %.pre336 to i1
  store i32 8, ptr %i.ux, align 8, !tbaa !240
  %i.vg = getelementptr inbounds i8, ptr %i.uy, i64 -128
  %i.vh = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS8_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.vg, ptr noundef nonnull align 8 dereferenceable(16) %1) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  %i.vi = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.vj = getelementptr inbounds i8, ptr %i.vi, i64 -8
  store ptr %i.vj, ptr %i.q, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store i8 0, ptr %i.un, align 16, !tbaa !339
  br i1 %i.vf, label %bb.ec, label %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit

.critedge460:                                     ; preds = %.thread, %bb.dy, %bb.ea
  %.ph = phi ptr [ %i.uj, %.thread ], [ %i.uv, %bb.dy ], [ %i.ux, %bb.ea ]
  %.ph458 = phi ptr [ %i.ui, %.thread ], [ %i.uu, %bb.dy ], [ %i.uy, %bb.ea ]
  %.ph459 = phi ptr [ %i.uh, %.thread ], [ %i.un, %bb.dy ], [ %i.un, %bb.ea ]
  store i32 8, ptr %.ph, align 8, !tbaa !240
  %i.vk = getelementptr inbounds i8, ptr %.ph458, i64 -128
  %i.vl = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS8_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.vk, ptr noundef nonnull align 8 dereferenceable(16) %1) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  %i.vm = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.vn = getelementptr inbounds i8, ptr %i.vm, i64 -8
  store ptr %i.vn, ptr %i.q, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store i8 0, ptr %.ph459, align 8, !tbaa !339
  br label %bb.ec

bb.ec:                                            ; preds = %.critedge460, %bb.eb
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %35) #30
  br label %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit: ; preds = %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %bb.ej

bb.ed:                                            ; preds = %bb.dv, %bb.dp
  %.pn126 = phi { ptr, i32 } [ %.pn121.pn, %bb.dp ], [ %.pn124, %bb.dv ]
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %bb.ek

bb.ee:                                            ; preds = %bb.ct
  %i.vo = load ptr, ptr %i.q, align 8, !tbaa !316
  %i.vp = getelementptr inbounds i8, ptr %i.vo, i64 -8
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !164 ; 5 uses
  %i.vr = icmp ult i64 %i.vq, 2
  br i1 %i.vr, label %.noexc.i300, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.vs = load ptr, ptr %i.p, align 8, !tbaa !183
  %i.vt = getelementptr [152 x i8], ptr %i.vs, i64 %i.vq ; 3 uses
  %i.vu = getelementptr i8, ptr %i.vt, i64 -304
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !240
  %.not118 = icmp eq i32 %i.vv, 3
  br i1 %.not118, label %bb.ei, label %.noexc.i300

.noexc.i300:                                      ; preds = %bb.ef, %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  %i.vw = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  store ptr %i.vw, ptr %36, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 23, ptr %i.a, align 8, !tbaa !164
  %i.vx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc301 unwind label %bb.eg ; 2 uses

.noexc301:                                        ; preds = %.noexc.i300
  store ptr %i.vx, ptr %36, align 8, !tbaa !154
  %i.vy = load i64, ptr %i.a, align 8, !tbaa !164 ; 3 uses
  store i64 %i.vy, ptr %i.vw, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.vx, ptr noundef nonnull align 1 dereferenceable(23) @.str.101, i64 23, i1 false)
  %i.vz = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %i.vy, ptr %i.vz, align 8, !tbaa !53
  %i.wa = load ptr, ptr %36, align 8, !tbaa !154
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.vy
  store i8 0, ptr %i.wb, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  %i.wc = load ptr, ptr %i.p, align 8, !tbaa !183
  %i.wd = getelementptr [152 x i8], ptr %i.wc, i64 %i.vq
  %i.we = getelementptr i8, ptr %i.wd, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(16) %i.we, i64 16, i1 false), !tbaa.struct !241
  %i.wf = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i8 1, ptr %i.wf, align 8, !tbaa !219
  %i.wg = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %.critedge138 unwind label %bb.eh ; 0 uses

.critedge138:                                     ; preds = %.noexc301
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  %i.wh = load ptr, ptr %36, align 8, !tbaa !154  ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.vw
  br i1 %i.wi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %.critedge138
  %i.wj = load i64, ptr %i.vw, align 8, !tbaa !54
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wh, i64 noundef %i.wk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %.critedge138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %bb.ej

bb.eg:                                            ; preds = %.noexc.i300
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

bb.eh:                                            ; preds = %.noexc301
  %i.wm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  %i.wn = load ptr, ptr %36, align 8, !tbaa !154  ; 2 uses
  %i.wo = icmp eq ptr %i.wn, %i.vw
  br i1 %i.wo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %bb.eh
  %i.wp = load i64, ptr %i.vw, align 8, !tbaa !54
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306, %bb.eg
  %.pn119 = phi { ptr, i32 } [ %i.wl, %bb.eg ], [ %i.wm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306 ], [ %i.wm, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %bb.ek

bb.ei:                                            ; preds = %bb.ef
  store i32 %spec.select, ptr %i.vt, align 8, !tbaa !240
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vt, i64 24
  %i.ws = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS5_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.wr, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #30 ; 0 uses
  %i.wt = load ptr, ptr %i.p, align 8, !tbaa !183 ; 2 uses
  %i.wu = getelementptr inbounds nuw [152 x i8], ptr %i.wt, i64 %i.vq
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.wv, align 8, !tbaa !164
  %i.ww = getelementptr inbounds [152 x i8], ptr %i.wt, i64 %i.vq
  %i.wx = getelementptr inbounds i8, ptr %i.ww, i64 -152
  %i.wy = call ptr @_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr nonnull %i.wx) ; 0 uses
  %i.wz = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.xa = getelementptr inbounds i8, ptr %i.wz, i64 -8
  store ptr %i.xa, ptr %i.q, align 8, !tbaa !162
  br label %bb.ej

bb.ej:                                            ; preds = %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit, %.critedge134, %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit, %bb.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %.7 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ false, %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ false, %.critedge134 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ true, %bb.ei ], [ true, %_ZNSt14_Optional_baseIN8bitwuzla4TermELb0ELb0EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

bb.ek:                                            ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %bb.ed, %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %.pn128.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %.pn126, %bb.ed ], [ %.pn119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %.pn114.pn, %bb.cq ], [ %.pn103.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %i.bl, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %common.resume

_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread: ; preds = %bb.c, %bb.b, %bb.ej
  %.8 = phi i1 [ %.7, %bb.ej ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.8
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0EbT_SF_T0_"(ptr %0, ptr %1) unnamed_addr #15 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 2                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.f = and i64 %i.c, -4
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.preheader.i.i.i
  %.051.i.i.i = phi i64 [ %i.w, %bb.e ], [ %i.d, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.031.050.i.i.i = phi ptr [ %i.v, %bb.e ], [ %0, %.lr.ph.preheader.i.i.i ] ; 9 uses
  %i.g = load i8, ptr %.sroa.031.050.i.i.i, align 1, !tbaa !54
  %i.h = sext i8 %i.g to i32
  %i.i = add nsw i32 %i.h, -58
  %isdigit.i.i.i.i.i = icmp ult i32 %i.i, -10
  br i1 %isdigit.i.i.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !54
  %i.l = sext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -58
  %isdigit.i.i16.i.i.i = icmp ult i32 %i.m, -10
  br i1 %isdigit.i.i16.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !54
  %i.p = sext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -58
  %isdigit.i.i17.i.i.i = icmp ult i32 %i.q, -10
  br i1 %isdigit.i.i17.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit16", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !54
  %i.t = sext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -58
  %isdigit.i.i18.i.i.i = icmp ult i32 %i.u, -10
  br i1 %isdigit.i.i18.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit18", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 4
  %i.w = add nsw i64 %.051.i.i.i, -1
  %i.x = icmp sgt i64 %.051.i.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !759

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ]
  %.sroa.031.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %0, %bb.a ] ; 5 uses
  %i.y = sub i64 %i.a, %.pre-phi.i.i.i
  switch i64 %i.y, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %.sroa.031.0.lcssa.i.i.i, align 1, !tbaa !54
  %i.aa = sext i8 %i.z to i32
  %i.ab = add nsw i32 %i.aa, -58
  %isdigit.i.i19.i.i.i = icmp ult i32 %i.ab, -10
  br i1 %isdigit.i.i19.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa.i.i.i, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.sroa.031.1.i.i.i = phi ptr [ %i.ac, %bb.g ], [ %.sroa.031.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ad = load i8, ptr %.sroa.031.1.i.i.i, align 1, !tbaa !54
  %i.ae = sext i8 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -58
  %isdigit.i.i20.i.i.i = icmp ult i32 %i.af, -10
  br i1 %isdigit.i.i20.i.i.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.031.1.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.sroa.031.2.i.i.i = phi ptr [ %i.ag, %bb.i ], [ %.sroa.031.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ah = load i8, ptr %.sroa.031.2.i.i.i, align 1, !tbaa !54
  %i.ai = sext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -58
  %isdigit.i.i21.i.i.i = icmp ult i32 %i.aj, -10
  %spec.select.i.i.i = select i1 %isdigit.i.i21.i.i.i, ptr %.sroa.031.2.i.i.i, ptr %1
  br label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit"

"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 1
  br label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit"

"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit16": ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 2
  br label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit"

"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit18": ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i, i64 3
  br label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit"

"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit": ; preds = %.lr.ph.i.i.i, %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit", %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit16", %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit18", %._crit_edge.i.i.i, %bb.f, %bb.h, %bb.j
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.031.1.i.i.i, %bb.h ], [ %spec.select.i.i.i, %bb.j ], [ %1, %._crit_edge.i.i.i ], [ %.sroa.031.0.lcssa.i.i.i, %bb.f ], [ %i.am, %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit18" ], [ %i.al, %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit16" ], [ %i.ak, %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN4bzla6parser4smt26Parser23parse_open_term_indexedEvE3$_0ET_SF_SF_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.031.050.i.i.i, %.lr.ph.i.i.i ]
  %i.an = icmp eq ptr %1, %.sroa.08.0.in.sroa.speculated.i.i.i
  ret i1 %i.an
}

declare void @_ZN8bitwuzla11TermManager10mk_fp_sortEmm(ptr dead_on_unwind writable sret(%"class.bitwuzla::Sort") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager9mk_fp_nanERKNS_4SortE(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager13mk_fp_neg_infERKNS_4SortE(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager13mk_fp_pos_infERKNS_4SortE(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager14mk_fp_neg_zeroERKNS_4SortE(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager14mk_fp_pos_zeroERKNS_4SortE(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4bzla6parser4smt26Parser16close_term_scopeERKSt8optionalIN8bitwuzla4TermEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2056) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.bitwuzla::Term", align 16   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !339, !range !211, !noundef !209
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !260  ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -152 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !253  ; 2 uses
  %i.i = load <2 x ptr>, ptr %1, align 8, !tbaa !265
  store <2 x ptr> %i.i, ptr %2, align 16, !tbaa !265
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.j, align 4, !tbaa !254
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !254
  br label %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit

bb.e:                                             ; preds = %bb.c
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit

_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit: ; preds = %bb.e, %bb.d, %bb.b
  store i32 8, ptr %i.f, align 8, !tbaa !240
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 -128
  %i.p = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS8_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %2) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  store ptr %i.f, ptr %i.d, align 8, !tbaa !184
  tail call void @_ZN4bzla6parser4smt26Parser10ParsedItemD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.f) #30
  br label %bb.g

end_hunk_4
