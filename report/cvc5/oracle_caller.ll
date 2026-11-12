Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/oracle_caller?download=true
inline.NumInlined: 554
inline.NumDeleted: 297
begin_hunk_0
    ".globl _ZSt21ios_base_library_initv"

%"class.cvc5::internal::NodeTemplate" = type { ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.cvc5::internal::expr::Attribute" = type { i8 }
%"class.std::tuple.89" = type { %"struct.std::_Tuple_impl.90" }
%"struct.std::_Tuple_impl.90" = type { %"struct.std::_Head_base.91" }
%"struct.std::_Head_base.91" = type { ptr }
%"class.std::tuple.92" = type { i8 }
%"class.std::vector.78" = type { %"struct.std::_Vector_base.79" }
%"struct.std::_Vector_base.79" = type { %"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl" }
%"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cvc5::internal::NodeTemplate.87" = type { ptr }
%"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, std::vector<cvc5::internal::NodeTemplate<true>>>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, std::vector<cvc5::internal::NodeTemplate<true>>>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Auto_node" = type { ptr, ptr }
%"struct.std::pair.201" = type { %"struct.std::pair.188", %"class.cvc5::internal::NodeTemplate" }
%"struct.std::pair.188" = type { i64, ptr }

$_ZN4cvc58internal12NodeTemplateILb1EED2Ev = comdat any

$_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEaSERKS5_ = comdat any

$_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev = comdat any

$_ZNK4cvc58internal12NodeTemplateILb1EE11getOperatorEv = comdat any

$_ZN4cvc58internal4expr9AttributeINS0_6theory26OracleInterfaceAttributeIdENS0_12NodeTemplateILb1EEEE4s_idE = comdat any

$_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE = comdat any

$__clang_call_terminate = comdat any

$_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_ = comdat any

$_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_ = comdat any

$_ZSt16__do_uninit_copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_ = comdat any

$_ZSt16__do_uninit_copyIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb1EEEEEPS6_ET0_T_SA_S9_ = comdat any

$_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS5_ = comdat any

$_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_ = comdat any

$_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev = comdat any

$_ZNK4cvc58internal4expr4attr8AttrHashINS0_12NodeTemplateILb1EEEE5IdMap4findEm = comdat any

$_ZNK4cvc58internal4expr4attr16AttributeManager12getAttributeINS1_9AttributeINS0_6theory26OracleInterfaceAttributeIdENS0_12NodeTemplateILb1EEEEEEENT_10value_typeEPNS1_9NodeValueERKSB_ = comdat any

$_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb1EEEED2Ev = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZZN4cvc58internal4expr4attr15LastAttributeIdINS0_12NodeTemplateILb1EEEE6raw_idEvE4s_id = comdat any

$_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null = comdat any

$_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null = comdat any

@_ZN4cvc58internal4expr9AttributeINS0_6theory26OracleInterfaceAttributeIdENS0_12NodeTemplateILb1EEEE4s_idE = linkonce_odr hidden global i64 0, comdat, align 8
@_ZGVN4cvc58internal4expr9AttributeINS0_6theory26OracleInterfaceAttributeIdENS0_12NodeTemplateILb1EEEE4s_idE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN4cvc58internal4expr9AttributeINS0_6theory26OracleInterfaceAttributeIdENS0_12NodeTemplateILb1EEEE4s_idE), align 8
@_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE = linkonce_odr hidden global %"class.cvc5::internal::NodeTemplate" zeroinitializer, comdat, align 8
@_ZGVN4cvc58internal12NodeTemplateILb1EE6s_nullE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE), align 8
@__dso_handle = external hidden global i8
@.str.4 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZZN4cvc58internal4expr4attr15LastAttributeIdINS0_12NodeTemplateILb1EEEE6raw_idEvE4s_id = linkonce_odr hidden local_unnamed_addr global i64 0, comdat, align 8
@_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null = linkonce_odr local_unnamed_addr global ptr null, comdat, align 8
@_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null = linkonce_odr global i64 0, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4cvc58internal4expr9AttributeINS0_6theory26OracleInterfaceAttributeIdENS0_12NodeTemplateILb1EEEE4s_idE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.3, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE }]
@llvm.used = appending global [2 x ptr] [ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, ptr @_ZN4cvc58internal4expr9AttributeINS0_6theory26OracleInterfaceAttributeIdENS0_12NodeTemplateILb1EEEE4s_idE], section "llvm.metadata"

@_ZN4cvc58internal12OracleCallerC1ERKNS0_12NodeTemplateILb1EEE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4cvc58internal12OracleCallerC2ERKNS0_12NodeTemplateILb1EEE

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal12OracleCallerC2ERKNS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4cvc58internal12OracleCaller12getOracleForERKNS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = load ptr, ptr %1, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal11NodeManager12getOracleForERKNS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(3592) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !127
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.g, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.f, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %i.i, align 8, !tbaa !128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.j, align 8, !tbaa !26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal12OracleCaller12getOracleForERKNS0_12NodeTemplateILb1EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::expr::Attribute", align 1 ; 3 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023
  %i.f = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.e)
  %i.g = icmp eq i32 %i.f, 0
  %i.h = load ptr, ptr %1, align 8, !tbaa !14     ; 4 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18, !noalias !141
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !98, !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !142
  call void @_ZNK4cvc58internal4expr4attr16AttributeManager12getAttributeINS1_9AttributeINS0_6theory26OracleInterfaceAttributeIdENS0_12NodeTemplateILb1EEEEEEENT_10value_typeEPNS1_9NodeValueERKSB_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(344) %i.l, ptr noundef nonnull %i.h, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !142
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 1023
  %i.p = icmp eq i64 %i.o, 369
  br i1 %i.p, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.q = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 369), !noalias !143
  %i.r = icmp eq i32 %i.q, 2
  %spec.select.i.i = select i1 %i.r, i64 3, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %spec.select.i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99, !noalias !143 ; 10 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !14, !alias.scope !143
  %i.v = load i64, ptr %i.u, align 8, !noalias !143 ; 3 uses
  %i.w = lshr i64 %i.v, 40
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = and i32 %i.x, 1048575                    ; 3 uses
  %i.z = icmp samesign ult i32 %i.y, 1048574
  br i1 %i.z, label %bb.e, label %bb.f, !prof !100

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw nsw i32 %i.y, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 40
  %i.ad = and i64 %i.v, -1152920405095219201
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.u, align 8, !noalias !143
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.f:                                             ; preds = %bb.d
  %i.af = icmp eq i32 %i.y, 1048574
  br i1 %i.af, label %bb.g, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !101

bb.g:                                             ; preds = %bb.f
  %i.ag = or i64 %i.v, 1152920405095219200
  store i64 %i.ag, ptr %i.u, align 8, !noalias !143
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u), !noalias !143
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.e, %bb.f, %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !144
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 1023                     ; 2 uses
  %i.al = icmp eq i32 %i.ak, 1023
  %i.am = select i1 %i.al, i32 -1, i32 %i.ak
  %i.an = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.am)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.ao = icmp eq i32 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aq = zext i1 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !99, !noalias !144 ; 12 uses
  store ptr %i.as, ptr %3, align 8, !tbaa !14, !alias.scope !144
  %i.at = load i64, ptr %i.as, align 8, !noalias !144 ; 3 uses
  %i.au = lshr i64 %i.at, 40
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = and i32 %i.av, 1048575                  ; 3 uses
  %i.ax = icmp samesign ult i32 %i.aw, 1048574
  br i1 %i.ax, label %bb.h, label %bb.i, !prof !100

bb.h:                                             ; preds = %.noexc
  %i.ay = add nuw nsw i32 %i.aw, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 40
  %i.bb = and i64 %i.at, -1152920405095219201
  %i.bc = or i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.as, align 8, !noalias !144
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit24

bb.i:                                             ; preds = %.noexc
  %i.bd = icmp eq i32 %i.aw, 1048574
  br i1 %i.bd, label %bb.j, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit24, !prof !101

bb.j:                                             ; preds = %bb.i
  %i.be = or i64 %i.at, 1152920405095219200
  store i64 %i.be, ptr %i.as, align 8, !noalias !144
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit24 unwind label %bb.o

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit24: ; preds = %bb.i, %bb.h, %bb.j
  %i.bf = load i64, ptr %i.u, align 8             ; 3 uses
  %i.bg = and i64 %i.bf, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bg, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.k, !prof !101

bb.k:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit24
  %i.bh = add i64 %i.bf, 1152920405095219200
  %i.bi = and i64 %i.bh, 1152920405095219200      ; 2 uses
  %i.bj = and i64 %i.bf, -1152920405095219201
  %i.bk = or disjoint i64 %i.bi, %i.bj
  store i64 %i.bk, ptr %i.u, align 8
  %i.bl = icmp eq i64 %i.bi, 0
  br i1 %i.bl, label %bb.l, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !101

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #20
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit24, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = trunc i64 %i.bp to i32
  %i.br = and i32 %i.bq, 1023                     ; 2 uses
  %i.bs = icmp eq i32 %i.br, 1023
  %i.bt = select i1 %i.bs, i32 -1, i32 %i.br
  %i.bu = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bt)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bv = icmp eq i32 %i.bu, 2
  %spec.select.v.i.i = select i1 %i.bv, i64 32, i64 24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 3
  %9 = and i32 %8, 536870904
  %narrow = add nuw nsw i32 %9, 24
  %10 = zext nneg i32 %narrow to i64              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.as, i64 %10
  %.not3946 = icmp samesign eq i64 %spec.select.v.i.i, %10
  br i1 %.not3946, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %spec.select.i.i25 = getelementptr inbounds nuw i8, ptr %i.as, i64 %spec.select.v.i.i
  br label %.lr.ph

bb.o:                                             ; preds = %bb.j, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ah

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ad
  %.sroa.035.047 = phi ptr [ %i.dt, %bb.ad ], [ %spec.select.i.i25, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.by = load ptr, ptr %.sroa.035.047, align 8, !tbaa !99, !noalias !145 ; 17 uses
  store ptr %i.by, ptr %5, align 8, !tbaa !14, !alias.scope !145
  %i.bz = load i64, ptr %i.by, align 8, !noalias !145 ; 3 uses
  %i.ca = lshr i64 %i.bz, 40
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = and i32 %i.cb, 1048575                  ; 3 uses
  %i.cd = icmp samesign ult i32 %i.cc, 1048574
  br i1 %i.cd, label %bb.p, label %bb.q, !prof !100

bb.p:                                             ; preds = %.lr.ph
  %i.ce = add nuw nsw i32 %i.cc, 1
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 40
  %i.ch = and i64 %i.bz, -1152920405095219201
  %i.ci = or i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %i.by, align 8, !noalias !145
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

bb.q:                                             ; preds = %.lr.ph
  %i.cj = icmp eq i32 %i.cc, 1048574
  br i1 %i.cj, label %bb.r, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, !prof !101

bb.r:                                             ; preds = %bb.q
  %i.ck = or i64 %i.bz, 1152920405095219200
  store i64 %i.ck, ptr %i.by, align 8, !noalias !145
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit: ; preds = %bb.q, %bb.p, %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = and i64 %i.cm, 1023
  %.not = icmp eq i64 %i.cn, 372
  br i1 %.not, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  store ptr %i.by, ptr %0, align 8, !tbaa !14
  %i.co = load i64, ptr %i.by, align 8            ; 4 uses
  %i.cp = lshr i64 %i.co, 40
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = and i32 %i.cq, 1048575                  ; 3 uses
  %i.cs = icmp samesign ult i32 %i.cr, 1048574
  br i1 %i.cs, label %bb.t, label %bb.u, !prof !100

bb.t:                                             ; preds = %bb.s
  %i.ct = add nuw nsw i32 %i.cr, 1
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 40
  %i.cw = and i64 %i.co, -1152920405095219201
  %i.cx = or i64 %i.cv, %i.cw                     ; 2 uses
  store i64 %i.cx, ptr %i.by, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.u:                                             ; preds = %bb.s
  %i.cy = icmp eq i32 %i.cr, 1048574
  br i1 %i.cy, label %bb.v, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !101

bb.v:                                             ; preds = %bb.u
  %i.cz = or i64 %i.co, 1152920405095219200
  store i64 %i.cz, ptr %i.by, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit_crit_edge unwind label %bb.w

._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit_crit_edge: ; preds = %bb.v
  %.pre = load i64, ptr %i.by, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %lpad.loopexit.split-lp68 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit_crit_edge, %bb.u, %bb.t
  %i.db = phi i64 [ %.pre, %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit_crit_edge ], [ %i.co, %bb.u ], [ %i.cx, %bb.t ] ; 3 uses
  %i.dc = and i64 %i.db, 1152920405095219200
  %.not.i.i29 = icmp eq i64 %i.dc, 1152920405095219200
  br i1 %.not.i.i29, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30, label %bb.x, !prof !101

bb.x:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.dd = add i64 %i.db, 1152920405095219200
  %i.de = and i64 %i.dd, 1152920405095219200      ; 2 uses
  %i.df = and i64 %i.db, -1152920405095219201
  %i.dg = or disjoint i64 %i.de, %i.df
  store i64 %i.dg, ptr %i.by, align 8
  %i.dh = icmp eq i64 %i.de, 0
  br i1 %i.dh, label %bb.y, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30, !prof !101

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  tail call void @__clang_call_terminate(ptr %i.dj) #20
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.loopexit

.critedge:                                        ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.dk = load i64, ptr %i.by, align 8            ; 3 uses
  %i.dl = and i64 %i.dk, 1152920405095219200
  %.not.i.i31 = icmp eq i64 %i.dl, 1152920405095219200
  br i1 %.not.i.i31, label %bb.ad, label %bb.aa, !prof !101

bb.aa:                                            ; preds = %.critedge
  %i.dm = add i64 %i.dk, 1152920405095219200
  %i.dn = and i64 %i.dm, 1152920405095219200      ; 2 uses
  %i.do = and i64 %i.dk, -1152920405095219201
  %i.dp = or disjoint i64 %i.dn, %i.do
  store i64 %i.dp, ptr %i.by, align 8
  %i.dq = icmp eq i64 %i.dn, 0
  br i1 %i.dq, label %bb.ab, label %bb.ad, !prof !101

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  tail call void @__clang_call_terminate(ptr %i.ds) #20
  unreachable

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.035.047, i64 8 ; 2 uses
  %.not39 = icmp eq ptr %i.dt, %i.bw
  br i1 %.not39, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.ad, %bb.n, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30
  %.not3944 = phi i1 [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30 ], [ true, %bb.n ], [ true, %bb.ad ]
  %i.du = load i64, ptr %i.as, align 8            ; 3 uses
  %i.dv = and i64 %i.du, 1152920405095219200
  %.not.i.i33 = icmp eq i64 %i.dv, 1152920405095219200
  br i1 %.not.i.i33, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34, label %bb.ae, !prof !101

bb.ae:                                            ; preds = %.loopexit
  %i.dw = add i64 %i.du, 1152920405095219200
  %i.dx = and i64 %i.dw, 1152920405095219200      ; 2 uses
  %i.dy = and i64 %i.du, -1152920405095219201
  %i.dz = or disjoint i64 %i.dx, %i.dy
  store i64 %i.dz, ptr %i.as, align 8
  %i.ea = icmp eq i64 %i.dx, 0
  br i1 %i.ea, label %bb.af, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34, !prof !101

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  tail call void @__clang_call_terminate(ptr %i.ec) #20
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34: ; preds = %.loopexit, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %.not3944, label %bb.ai, label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn.pn.pn = phi { ptr, i32 } [ %i.da, %bb.w ], [ %lpad.loopexit.split-lp68, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.loopexit.split-lp ], [ %i.bx, %bb.o ]
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.ai:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.ed = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !14, !noalias !146 ; 5 uses
  store ptr %i.ed, ptr %0, align 8, !tbaa !14, !alias.scope !146
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !146 ; 3 uses
  %i.ef = lshr i64 %i.ee, 40
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = and i32 %i.eg, 1048575                  ; 3 uses
  %i.ei = icmp samesign ult i32 %i.eh, 1048574
  br i1 %i.ei, label %bb.aj, label %bb.ak, !prof !100

bb.aj:                                            ; preds = %bb.ai
  %i.ej = add nuw nsw i32 %i.eh, 1
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 40
  %i.em = and i64 %i.ee, -1152920405095219201
  %i.en = or i64 %i.el, %i.em
  store i64 %i.en, ptr %i.ed, align 8, !noalias !146
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

bb.ak:                                            ; preds = %bb.ai
  %i.eo = icmp eq i32 %i.eh, 1048574
  br i1 %i.eo, label %bb.al, label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit, !prof !101

bb.al:                                            ; preds = %bb.ak
  %i.ep = or i64 %i.ee, 1152920405095219200
  store i64 %i.ep, ptr %i.ed, align 8, !noalias !146
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ed), !noalias !146
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit: ; preds = %bb.al, %bb.ak, %bb.aj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34, %bb.b
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal11NodeManager12getOracleForERKNS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(3592), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !101

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !101

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal12OracleCaller10callOracleERKNS0_12NodeTemplateILb1EEERSt6vectorIS3_SaIS3_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.89", align 8     ; 4 uses
  %4 = alloca %"class.std::tuple.92", align 1     ; 3 uses
  %5 = alloca %"class.std::vector.78", align 8    ; 13 uses
  %6 = alloca %"class.std::vector.78", align 8    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !14    ; 3 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = load i64, ptr %.pre, align 8
  %i.f = and i64 %i.e, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 1099511627775
  %i.k = icmp samesign ult i64 %i.j, %i.f         ; 2 uses
  %.19.i.i.i = select i1 %i.k, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.k, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.b, !llvm.loop !147

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.b
  %i.l = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.l, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 1099511627775
  %i.q = icmp samesign ult i64 %i.f, %i.p
  br i1 %i.q, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.s = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.r) ; 0 uses
  br label %bb.y

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.a, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 1023                       ; 2 uses
  %i.x = icmp eq i32 %i.w, 1023
  %i.y = select i1 %i.x, i32 -1, i32 %i.w
  %i.z = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.y)
  %i.aa = icmp eq i32 %i.z, 2
  %spec.select.v.i.i = select i1 %i.aa, i64 32, i64 24
  %spec.select.i.i31 = getelementptr inbounds nuw i8, ptr %.pre, i64 %spec.select.v.i.i ; 3 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %7 = load i32, ptr %i.ad, align 4
  %8 = and i32 %7, 67108863
  %9 = zext nneg i32 %8 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %9 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %spec.select.i.i31 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.d, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.d:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread
  %.not.i.i.i32 = icmp eq ptr %i.ae, %spec.select.i.i31
  br i1 %.not.i.i.i32, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #22
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i unwind label %bb.e

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.ak = phi ptr [ null, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.aj, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i ] ; 3 uses
  store ptr %i.ak, ptr %5, align 8, !tbaa !106
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !107
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb1EEEEEPS6_ET0_T_SA_S9_(ptr nonnull %spec.select.i.i31, ptr nonnull %i.ae, ptr noundef %i.ak)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !106   ; 3 uses
  %.not.i.i7.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i7.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !107
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #23
  br label %.body

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.av, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !159, !nonnull !160, !align !161 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !163, !noalias !164
  %.not.i.i.i33 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i33, label %bb.h, label %_ZNKSt8functionIFSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EERKS6_EEclES8_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt25__throw_bad_function_callv() #21
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt8functionIFSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EERKS6_EEclES8_.exit.i: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !166, !noalias !164
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.78") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZNK4cvc58internal6Oracle3runERKSt6vectorINS0_12NodeTemplateILb1EEESaIS4_EE.exit unwind label %bb.v, !inline_history !152

_ZNK4cvc58internal6Oracle3runERKSt6vectorINS0_12NodeTemplateILb1EEESaIS4_EE.exit: ; preds = %_ZNKSt8functionIFSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EERKS6_EEclES8_.exit.i
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK4cvc58internal6Oracle3runERKSt6vectorINS0_12NodeTemplateILb1EEESaIS4_EE.exit
  %i.bd = load ptr, ptr %1, align 8, !tbaa !14
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = and i64 %i.be, 1099511627775            ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !14
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = and i64 %i.bi, 1099511627775
  %i.bk = icmp samesign ult i64 %i.bj, %i.bf      ; 2 uses
  %.19.i.i.i.i = select i1 %i.bk, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.bk, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i, label %bb.i, !llvm.loop !147

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i: ; preds = %bb.i
  %i.bl = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.bl, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !14
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = and i64 %i.bo, 1099511627775
  %i.bq = icmp samesign ult i64 %i.bf, %i.bp
  br i1 %i.bq, label %.critedge.i, label %bb.k

.critedge.i:                                      ; preds = %bb.j, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i, %_ZNK4cvc58internal6Oracle3runERKSt6vectorINS0_12NodeTemplateILb1EEESaIS4_EE.exit
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.j ], [ %.19.i.i.i.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i ], [ %i.d, %_ZNK4cvc58internal6Oracle3runERKSt6vectorINS0_12NodeTemplateILb1EEESaIS4_EE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %1, ptr %3, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.br = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc46 unwind label %bb.w

.noexc46:                                         ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.k

bb.k:                                             ; preds = %.noexc46, %bb.j
  %.sroa.06.0.i = phi ptr [ %i.br, %.noexc46 ], [ %.19.i.i.i.i, %bb.j ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.bt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.l unwind label %bb.w       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.m unwind label %bb.w       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bv = load ptr, ptr %6, align 8, !tbaa !106   ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !108 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bv, %i.bx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i47

.lr.ph.i.i.i47:                                   ; preds = %bb.m, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ci, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.bv, %bb.m ] ; 2 uses
  %i.by = load ptr, ptr %.05.i.i.i, align 8, !tbaa !14 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8            ; 3 uses
  %i.ca = and i64 %i.bz, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ca, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.n, !prof !101

bb.n:                                             ; preds = %.lr.ph.i.i.i47
  %i.cb = add i64 %i.bz, 1152920405095219200
  %i.cc = and i64 %i.cb, 1152920405095219200      ; 2 uses
  %i.cd = and i64 %i.bz, -1152920405095219201
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.by, align 8
  %i.cf = icmp eq i64 %i.cc, 0
  br i1 %i.cf, label %bb.o, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !101

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #20
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.o, %bb.n, %.lr.ph.i.i.i47
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.ci, %i.bx
  br i1 %.not.i.i.i48, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i47, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.m
  %i.cj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.bv, %bb.m ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !107
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cp = load ptr, ptr %5, align 8, !tbaa !106   ; 3 uses
  %i.cq = load ptr, ptr %i.av, align 8, !tbaa !108 ; 2 uses
  %.not4.i.i.i50 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not4.i.i.i50, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i58, label %.lr.ph.i.i.i51

.lr.ph.i.i.i51:                                   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i54
  %.05.i.i.i52 = phi ptr [ %i.db, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i54 ], [ %i.cp, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit ] ; 2 uses
end_hunk_0
