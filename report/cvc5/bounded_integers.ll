Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/bounded_integers?download=true
inline.NumInlined: 5448
inline.NumDeleted: 1910
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers15BoundedIntegers13setBoundedVarENS0_12NodeTemplateILb1EEES5_NS2_12BoundVarTypeE:bb.a
  %i.dd = load ptr, ptr %1, align 8, !tbaa !44
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = and i64 %i.de, 1099511627775            ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i50
  %.012.i.i.i.i51 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i50 ], [ %.1.i.i.i.i56, %bb.l ] ; 3 uses
  %.0811.i.i.i.i52 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i50 ], [ %.19.i.i.i.i53, %bb.l ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i51, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !44
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = and i64 %i.di, 1099511627775
  %i.dk = icmp samesign ult i64 %i.dj, %i.df      ; 2 uses
  %.19.i.i.i.i53 = select i1 %i.dk, ptr %.0811.i.i.i.i52, ptr %.012.i.i.i.i51 ; 6 uses
  %.1.in.v.i.i.i.i54 = select i1 %i.dk, i64 24, i64 16
  %.1.in.i.i.i.i55 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i51, i64 %.1.in.v.i.i.i.i54
  %.1.i.i.i.i56 = load ptr, ptr %.1.in.i.i.i.i55, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i57 = icmp eq ptr %.1.i.i.i.i56, null
  br i1 %.not.i.i.i.i57, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i58, label %bb.l, !llvm.loop !9

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i58: ; preds = %bb.l
  %i.dl = icmp eq ptr %.19.i.i.i.i53, %i.aq
  br i1 %i.dl, label %.critedge.i60, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i58
  %i.dm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !44
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = and i64 %i.do, 1099511627775
  %i.dq = icmp samesign ult i64 %i.df, %i.dp
  br i1 %i.dq, label %.critedge.i60, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit62

.critedge.i60:                                    ; preds = %bb.m, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i58, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEiSt4lessIS3_ESaISt4pairIKS3_iEEEixERS7_.exit
  %.08.lcssa.i.i.i11.i61 = phi ptr [ %.19.i.i.i.i53, %bb.m ], [ %.19.i.i.i.i53, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i58 ], [ %i.aq, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEiSt4lessIS3_ESaISt4pairIKS3_iEEEixERS7_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %1, ptr %4, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dr = call ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr %.08.lcssa.i.i.i11.i61, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit62

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit62: ; preds = %bb.m, %.critedge.i60
  %.sroa.06.0.i59 = phi ptr [ %i.dr, %.critedge.i60 ], [ %.19.i.i.i.i53, %bb.m ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i59, i64 48 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !319 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i59, i64 56
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !320
  %.not.i = icmp eq ptr %i.dt, %i.dv
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit62
  %i.dw = load ptr, ptr %2, align 8, !tbaa !44    ; 5 uses
  store ptr %i.dw, ptr %i.dt, align 8, !tbaa !44
  %i.dx = load i64, ptr %i.dw, align 8            ; 3 uses
  %i.dy = lshr i64 %i.dx, 40
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 1048575                  ; 3 uses
  %i.eb = icmp samesign ult i32 %i.ea, 1048574
  br i1 %i.eb, label %bb.o, label %bb.p, !prof !45

bb.o:                                             ; preds = %bb.n
  %i.ec = add nuw nsw i32 %i.ea, 1
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, 40
  %i.ef = and i64 %i.dx, -1152920405095219201
  %i.eg = or i64 %i.ee, %i.ef
  store i64 %i.eg, ptr %i.dw, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.p:                                             ; preds = %bb.n
  %i.eh = icmp eq i32 %i.ea, 1048574
  br i1 %i.eh, label %bb.q, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !46

bb.q:                                             ; preds = %bb.p
  %i.ei = or i64 %i.dx, 1152920405095219200
  store i64 %i.ei, ptr %i.dw, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dw)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.ej = load ptr, ptr %i.ds, align 8, !tbaa !319
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.ek, ptr %i.ds, align 8, !tbaa !319
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

bb.r:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit62
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i59, i64 40
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers15BoundedIntegers14checkOwnershipENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(768) %0, ptr noundef align 8 %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<cvc5::internal::expr::NodeValue *, std::pair<cvc5::internal::expr::NodeValue *const, cvc5::internal::expr::attr::AttrHash<unsigned long>::IdMap>, std::allocator<std::pair<cvc5::internal::expr::NodeValue *const, cvc5::internal::expr::attr::AttrHash<unsigned long>::IdMap>>, std::__detail::_Select1st, std::equal_to<cvc5::internal::expr::NodeValue *>, cvc5::internal::expr::attr::AttrBoolHashFunction, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %3 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, bool>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, bool>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Auto_node", align 8 ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>, std::_Select1st<std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  %5 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, bool>>, std::_Select1st<std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, bool>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  %6 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>, std::_Select1st<std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  %7 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, std::vector<cvc5::internal::NodeTemplate<true>>>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, std::vector<cvc5::internal::NodeTemplate<true>>>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Auto_node", align 8 ; 6 uses
  %8 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, std::vector<cvc5::internal::NodeTemplate<true>>>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, std::vector<cvc5::internal::NodeTemplate<true>>>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Auto_node", align 8 ; 6 uses
  %9 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, std::vector<cvc5::internal::NodeTemplate<true>>>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, std::vector<cvc5::internal::NodeTemplate<true>>>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Auto_node", align 8 ; 6 uses
  %10 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, std::vector<cvc5::internal::NodeTemplate<true>>>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, std::vector<cvc5::internal::NodeTemplate<true>>>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Auto_node", align 8 ; 6 uses
  %11 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>, std::_Select1st<std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  %12 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>, std::_Select1st<std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  %13 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>, std::_Select1st<std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  %14 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>, std::_Select1st<std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  %15 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>, std::_Select1st<std::pair<const int, std::map<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  %16 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %17 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %18 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %19 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %20 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %21 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %22 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %23 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %24 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %25 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %26 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %27 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %28 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %29 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %30 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %31 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %32 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %33 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %34 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %35 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %36 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %37 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %38 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %39 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %40 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %41 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %42 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %43 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %44 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %45 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %46 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %47 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %48 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %49 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %50 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %51 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %52 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %53 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %54 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %55 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %56 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %57 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %58 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %59 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %60 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %61 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %62 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %63 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %64 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %65 = alloca %"class.cvc5::internal::NodeTemplate.383", align 8 ; 4 uses
  %66 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %67 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %68 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %69 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %70 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %71 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %72 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %73 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %74 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %75 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %76 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %77 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %78 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %79 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %80 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %81 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %82 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %83 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %84 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %85 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %86 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %87 = alloca %"class.cvc5::internal::NodeTemplate.383", align 8 ; 4 uses
  %88 = alloca %"class.cvc5::internal::NodeTemplate.383", align 8 ; 4 uses
  %89 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %90 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %91 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %92 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %93 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %94 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %95 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %96 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %97 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %98 = alloca %"class.std::tuple.830", align 1   ; 3 uses
  %99 = alloca %"class.std::tuple.827", align 8   ; 4 uses
  %100 = alloca %"class.std::tuple.830", align 1  ; 3 uses
  %101 = alloca %"class.std::tuple.827", align 8  ; 4 uses
  %102 = alloca %"class.std::tuple.830", align 1  ; 3 uses
  %103 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %104 = alloca %"class.std::map.577", align 8    ; 11 uses
  %105 = alloca %"class.std::map.582", align 8    ; 23 uses
  %106 = alloca %"class.std::map.588", align 8    ; 13 uses
  %107 = alloca %"class.std::map.582", align 8    ; 13 uses
  %108 = alloca %"class.std::map.390", align 8    ; 17 uses
  %109 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %110 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %111 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 46 uses
  %112 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %113 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %114 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %115 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %116 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %117 = alloca %"class.cvc5::internal::NodeTemplate.383", align 8 ; 2 uses
  %118 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %119 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %120 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %121 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %122 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %123 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %124 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %125 = alloca %"class.cvc5::internal::NodeTemplate.383", align 8 ; 2 uses
  %126 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %127 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %128 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %129 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 9 uses
  %130 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %131 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %132 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %133 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %134 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %135 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %136 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %137 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %138 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %139 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %140 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 11 uses
  %141 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 21 uses
  %142 = alloca %"class.cvc5::internal::NodeTemplate.383", align 8 ; 2 uses
  %143 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %144 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %145 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %146 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !252, !nonnull !253, !align !254
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 406
  %i.e = load i8, ptr %i.d, align 2, !tbaa !745, !range !294, !noundef !253
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !746, !nonnull !253, !align !254
  %i.i = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4cvc58internal6theory11quantifiers19QuantifiersRegistry18getQuantAttributesEv(ptr noundef nonnull align 8 dereferenceable(568) %i.h)
  %i.j = load ptr, ptr %1, align 8, !tbaa !44     ; 5 uses
  store ptr %i.j, ptr %103, align 8, !tbaa !44
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = lshr i64 %i.k, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = and i32 %i.m, 1048575                    ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 1048574
  br i1 %i.o, label %bb.c, label %bb.d, !prof !45

bb.c:                                             ; preds = %bb.b
  %i.p = add nuw nsw i32 %i.n, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 40
  %i.s = and i64 %i.k, -1152920405095219201
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %i.j, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.u = icmp eq i32 %i.n, 1048574
  br i1 %i.u, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.v = or i64 %i.k, 1152920405095219200
  store i64 %i.v, ptr %i.j, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.w = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers15QuantAttributes14isQuantBoundedENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 %103)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.x = load ptr, ptr %103, align 8, !tbaa !44   ; 3 uses
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = and i64 %i.y, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.z, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.g, !prof !46

bb.g:                                             ; preds = %bb.f
  %i.aa = add i64 %i.y, 1152920405095219200
  %i.ab = and i64 %i.aa, 1152920405095219200      ; 2 uses
  %i.ac = and i64 %i.y, -1152920405095219201
  %i.ad = or disjoint i64 %i.ab, %i.ac
  store i64 %i.ad, ptr %i.x, align 8
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !46

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #27
  unreachable

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %103) #25
  br label %bb.abw

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.h, %bb.g, %bb.f
  br i1 %i.w, label %bb.k, label %.critedge273

bb.k:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.a
  %i.ai = call noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %104, i64 8 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %104, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %104, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %104, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %104, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %105, i64 8 ; 33 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %105, i64 16 ; 9 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %105, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %105, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %105, i64 40 ; 13 uses
  %i.at = getelementptr inbounds nuw i8, ptr %106, i64 8 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %106, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %106, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %106, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %106, i64 40 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %107, i64 8 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %107, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %107, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %107, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %107, i64 40 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %108, i64 8 ; 13 uses
  %i.be = getelementptr inbounds nuw i8, ptr %108, i64 16 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %108, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %108, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %108, i64 40 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 15 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEED2Ev.exit.a, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #25
  store i32 0, ptr %i.aj, align 8, !tbaa !349
  store ptr null, ptr %i.ak, align 8, !tbaa !350
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !351
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !352
  store i64 0, ptr %i.an, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #25
  store i32 0, ptr %i.ao, align 8, !tbaa !349
  store ptr null, ptr %i.ap, align 8, !tbaa !350
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !351
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !352
  store i64 0, ptr %i.as, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #25
  store i32 0, ptr %i.at, align 8, !tbaa !349
  store ptr null, ptr %i.au, align 8, !tbaa !350
  store ptr %i.at, ptr %i.av, align 8, !tbaa !351
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !352
  store i64 0, ptr %i.ax, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #25
  store i32 0, ptr %i.ay, align 8, !tbaa !349
  store ptr null, ptr %i.az, align 8, !tbaa !350
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !351
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !352
  store i64 0, ptr %i.bc, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #25
  store i32 0, ptr %i.bd, align 8, !tbaa !349
  store ptr null, ptr %i.be, align 8, !tbaa !350
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !351
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !352
  store i64 0, ptr %i.bh, align 8, !tbaa !353
  %i.cy = load ptr, ptr %1, align 8, !tbaa !44    ; 5 uses
  store ptr %i.cy, ptr %109, align 8, !tbaa !44
  %i.cz = load i64, ptr %i.cy, align 8            ; 3 uses
  %i.da = lshr i64 %i.cz, 40
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = and i32 %i.db, 1048575                  ; 3 uses
  %i.dd = icmp samesign ult i32 %i.dc, 1048574
  br i1 %i.dd, label %bb.m, label %bb.n, !prof !45

bb.m:                                             ; preds = %bb.l
  %i.de = add nuw nsw i32 %i.dc, 1
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 40
  %i.dh = and i64 %i.cz, -1152920405095219201
  %i.di = or i64 %i.dg, %i.dh
  store i64 %i.di, ptr %i.cy, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit279

bb.n:                                             ; preds = %bb.l
  %i.dj = icmp eq i32 %i.dc, 1048574
  br i1 %i.dj, label %bb.o, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit279, !prof !46

bb.o:                                             ; preds = %bb.n
  %i.dk = or i64 %i.cz, 1152920405095219200
  store i64 %i.dk, ptr %i.cy, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit279 unwind label %bb.z

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit279: ; preds = %bb.n, %bb.m, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %i.dl = load ptr, ptr %1, align 8, !tbaa !44, !noalias !747 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !747
  %i.do = trunc i64 %i.dn to i32
  %i.dp = and i32 %i.do, 1023                     ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 1023
  %i.dr = select i1 %i.dq, i32 -1, i32 %i.dp
  %i.ds = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.dr)
          to label %.noexc280 unwind label %bb.aa

.noexc280:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit279
  %i.dt = icmp eq i32 %i.ds, 2
  %spec.select.i.i = select i1 %i.dt, i64 2, i64 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %spec.select.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !48, !noalias !747 ; 5 uses
  store ptr %i.dw, ptr %110, align 8, !tbaa !44, !alias.scope !747
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !747 ; 3 uses
  %i.dy = lshr i64 %i.dx, 40
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 1048575                  ; 3 uses
  %i.eb = icmp samesign ult i32 %i.ea, 1048574
  br i1 %i.eb, label %bb.p, label %bb.q, !prof !45

bb.p:                                             ; preds = %.noexc280
  %i.ec = add nuw nsw i32 %i.ea, 1
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, 40
  %i.ef = and i64 %i.dx, -1152920405095219201
  %i.eg = or i64 %i.ee, %i.ef
  store i64 %i.eg, ptr %i.dw, align 8, !noalias !747
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.q:                                             ; preds = %.noexc280
  %i.eh = icmp eq i32 %i.ea, 1048574
  br i1 %i.eh, label %bb.r, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !46

bb.r:                                             ; preds = %bb.q
  %i.ei = or i64 %i.dx, 1152920405095219200
  store i64 %i.ei, ptr %i.dw, align 8, !noalias !747
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit unwind label %bb.aa

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.q, %bb.p, %bb.r
  invoke void @_ZN4cvc58internal6theory11quantifiers15BoundedIntegers7processENS0_12NodeTemplateILb1EEES5_bRSt3mapIS5_jSt4lessIS5_ESaISt4pairIKS5_jEEERS6_IiS6_IS5_S5_S8_SaIS9_ISA_S5_EEES7_IiESaIS9_IKiSH_EEERS6_IiS6_IS5_bS8_SaIS9_ISA_bEEESI_SaIS9_ISJ_SQ_EEESN_RS6_IS5_St6vectorIS5_SaIS5_EES8_SaIS9_ISA_SX_EEE(ptr noundef nonnull align 8 dereferenceable(768) %0, ptr noundef nonnull align 8 %109, ptr noundef nonnull align 8 %110, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(48) %104, ptr noundef nonnull align 8 dereferenceable(48) %105, ptr noundef nonnull align 8 dereferenceable(48) %106, ptr noundef nonnull align 8 dereferenceable(48) %107, ptr noundef nonnull align 8 dereferenceable(48) %108)
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.ej = load ptr, ptr %110, align 8, !tbaa !44  ; 3 uses
  %i.ek = load i64, ptr %i.ej, align 8            ; 3 uses
  %i.el = and i64 %i.ek, 1152920405095219200
  %.not.i.i282 = icmp eq i64 %i.el, 1152920405095219200
  br i1 %.not.i.i282, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit283, label %bb.t, !prof !46

bb.t:                                             ; preds = %bb.s
  %i.em = add i64 %i.ek, 1152920405095219200
  %i.en = and i64 %i.em, 1152920405095219200      ; 2 uses
  %i.eo = and i64 %i.ek, -1152920405095219201
  %i.ep = or disjoint i64 %i.en, %i.eo
  store i64 %i.ep, ptr %i.ej, align 8
  %i.eq = icmp eq i64 %i.en, 0
  br i1 %i.eq, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit283, !prof !46

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit283 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit283: ; preds = %bb.s, %bb.t, %bb.u
  %i.et = load ptr, ptr %109, align 8, !tbaa !44  ; 3 uses
  %i.eu = load i64, ptr %i.et, align 8            ; 3 uses
  %i.ev = and i64 %i.eu, 1152920405095219200
  %.not.i.i284 = icmp eq i64 %i.ev, 1152920405095219200
  br i1 %.not.i.i284, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit285, label %bb.w, !prof !46

bb.w:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit283
  %i.ew = add i64 %i.eu, 1152920405095219200
  %i.ex = and i64 %i.ew, 1152920405095219200      ; 2 uses
  %i.ey = and i64 %i.eu, -1152920405095219201
  %i.ez = or disjoint i64 %i.ex, %i.ey
  store i64 %i.ez, ptr %i.et, align 8
  %i.fa = icmp eq i64 %i.ex, 0
  br i1 %i.fa, label %bb.x, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit285, !prof !46

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit285 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit285: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit283, %bb.w, %bb.x
  %i.fd = load ptr, ptr %i.al, align 8, !tbaa !351 ; 2 uses
  %.not27663729 = icmp eq ptr %i.fd, %i.aj
  br i1 %.not27663729, label %.preheader.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1137
  br i1 %.2161, label %.loopexit2772, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit285, %._crit_edge
  br label %.preheader

bb.z:                                             ; preds = %bb.o
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.wc

bb.aa:                                            ; preds = %bb.r, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit279
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %110) #25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.fg, %bb.ab ], [ %i.ff, %bb.aa ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %109) #25
  br label %bb.wc

.lr.ph:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit285, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1137
  %.01593731 = phi i1 [ %.2161, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1137 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit285 ] ; 8 uses
  %.sroa.02709.03730 = phi ptr [ %i.cas, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1137 ], [ %i.fd, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit285 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #25
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.02709.03730, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !44 ; 5 uses
  store ptr %i.fi, ptr %111, align 8, !tbaa !44
  %i.fj = load i64, ptr %i.fi, align 8            ; 3 uses
  %i.fk = lshr i64 %i.fj, 40
  %i.fl = trunc nuw nsw i64 %i.fk to i32
  %i.fm = and i32 %i.fl, 1048575                  ; 3 uses
  %i.fn = icmp samesign ult i32 %i.fm, 1048574
  br i1 %i.fn, label %bb.ad, label %bb.ae, !prof !45

bb.ad:                                            ; preds = %.lr.ph
  %i.fo = add nuw nsw i32 %i.fm, 1
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = shl nuw nsw i64 %i.fp, 40
  %i.fr = and i64 %i.fj, -1152920405095219201
  %i.fs = or i64 %i.fq, %i.fr
  store i64 %i.fs, ptr %i.fi, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit287

bb.ae:                                            ; preds = %.lr.ph
  %i.ft = icmp eq i32 %i.fm, 1048574
  br i1 %i.ft, label %bb.af, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit287, !prof !46

bb.af:                                            ; preds = %bb.ae
  %i.fu = or i64 %i.fj, 1152920405095219200
  store i64 %i.fu, ptr %i.fi, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit287 unwind label %bb.cn

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit287: ; preds = %bb.ae, %bb.ad, %bb.af
  %i.fv = load ptr, ptr %1, align 8, !tbaa !44    ; 9 uses
  store ptr %i.fv, ptr %112, align 8, !tbaa !44
  %i.fw = load i64, ptr %i.fv, align 8            ; 3 uses
  %i.fx = lshr i64 %i.fw, 40
  %i.fy = trunc nuw nsw i64 %i.fx to i32
  %i.fz = and i32 %i.fy, 1048575                  ; 3 uses
  %i.ga = icmp samesign ult i32 %i.fz, 1048574
  br i1 %i.ga, label %bb.ag, label %bb.ah, !prof !45

bb.ag:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit287
  %i.gb = add nuw nsw i32 %i.fz, 1
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = shl nuw nsw i64 %i.gc, 40
  %i.ge = and i64 %i.fw, -1152920405095219201
  %i.gf = or i64 %i.gd, %i.ge
  store i64 %i.gf, ptr %i.fv, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit289

bb.ah:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit287
  %i.gg = icmp eq i32 %i.fz, 1048574
  br i1 %i.gg, label %bb.ai, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit289, !prof !46

bb.ai:                                            ; preds = %bb.ah
  %i.gh = or i64 %i.fw, 1152920405095219200
  store i64 %i.gh, ptr %i.fv, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit289 unwind label %bb.co

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit289: ; preds = %bb.ah, %bb.ag, %bb.ai
  %i.gi = load ptr, ptr %111, align 8, !tbaa !44  ; 14 uses
  %i.gj = load i64, ptr %i.gi, align 8            ; 3 uses
  %i.gk = lshr i64 %i.gj, 40
  %i.gl = trunc nuw nsw i64 %i.gk to i32
  %i.gm = and i32 %i.gl, 1048575                  ; 3 uses
  %i.gn = icmp samesign ult i32 %i.gm, 1048574
  br i1 %i.gn, label %bb.aj, label %bb.ak, !prof !45

bb.aj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit289
  %i.go = add nuw nsw i32 %i.gm, 1
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = shl nuw nsw i64 %i.gp, 40
  %i.gr = and i64 %i.gj, -1152920405095219201
  %i.gs = or i64 %i.gq, %i.gr
  store i64 %i.gs, ptr %i.gi, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit291

bb.ak:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit289
  %i.gt = icmp eq i32 %i.gm, 1048574
  br i1 %i.gt, label %bb.al, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit291, !prof !46

bb.al:                                            ; preds = %bb.ak
  %i.gu = or i64 %i.gj, 1152920405095219200
  store i64 %i.gu, ptr %i.gi, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit291 unwind label %bb.cp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit291: ; preds = %bb.ak, %bb.aj, %bb.al
  %i.gv = load ptr, ptr %i.bi, align 8, !tbaa !350 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not10.i.i.i.i, label %_ZNK4cvc58internal6theory11quantifiers15BoundedIntegers7isBoundENS0_12NodeTemplateILb1EEES5_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit291
  %i.gw = load i64, ptr %i.fv, align 8
  %i.gx = and i64 %i.gw, 1099511627775            ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.am ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.am ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !44
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = and i64 %i.ha, 1099511627775
  %i.hc = icmp samesign ult i64 %i.hb, %i.gx      ; 2 uses
  %.19.i.i.i.i = select i1 %i.hc, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.hc, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %bb.am, !llvm.loop !3

_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %bb.am
  %i.hd = icmp eq ptr %.19.i.i.i.i, %i.bj
  br i1 %i.hd, label %_ZNK4cvc58internal6theory11quantifiers15BoundedIntegers7isBoundENS0_12NodeTemplateILb1EEES5_.exit, label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.i

_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.i: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !44
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = and i64 %i.hg, 1099511627775
  %i.hi = icmp samesign ult i64 %i.gx, %i.hh
  br i1 %i.hi, label %_ZNK4cvc58internal6theory11quantifiers15BoundedIntegers7isBoundENS0_12NodeTemplateILb1EEES5_.exit, label %bb.an

bb.an:                                            ; preds = %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !355 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !355 ; 4 uses
  %i.hn = ptrtoint ptr %i.hm to i64               ; 2 uses
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 3 uses
  %i.hq = ashr i64 %i.hp, 5                       ; 2 uses
  %i.hr = icmp sgt i64 %i.hq, 0
  br i1 %i.hr, label %.lr.ph.i.i.i3.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i3.i:                                  ; preds = %bb.an
  %i.hs = and i64 %i.hp, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.hk, i64 %i.hs ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.as, %.lr.ph.i.i.i3.i
  %.052.i.i.i.i = phi i64 [ %i.hq, %.lr.ph.i.i.i3.i ], [ %i.if, %bb.as ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.hk, %.lr.ph.i.i.i3.i ], [ %i.ie, %bb.as ] ; 9 uses
  %i.ht = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !44
  %i.hu = icmp eq ptr %i.ht, %i.gi
  br i1 %i.hu, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !44
  %i.hx = icmp eq ptr %i.hw, %i.gi
  br i1 %i.hx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !44
  %i.ia = icmp eq ptr %i.hz, %i.gi
  br i1 %i.ia, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit4270, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !44
  %i.id = icmp eq ptr %i.ic, %i.gi
  br i1 %i.id, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit4272, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.if = add nsw i64 %.052.i.i.i.i, -1
  %i.ig = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.ig, label %bb.ao, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !4

end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory11quantifiers15BoundedIntegers14checkOwnershipENS0_12NodeTemplateILb1EEE:bb.a

bb.bv:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i316, i64 56
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !350 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i316, i64 48 ; 2 uses
  %.not10.i.i.i322 = icmp eq ptr %i.mn, null
  br i1 %.not10.i.i.i322, label %.critedge265, label %.lr.ph.i.i.i323

.lr.ph.i.i.i323:                                  ; preds = %bb.bv, %.lr.ph.i.i.i323
  %.012.i.i.i324 = phi ptr [ %.1.i.i.i329, %.lr.ph.i.i.i323 ], [ %i.mn, %bb.bv ] ; 4 uses
  %.0811.i.i.i325 = phi ptr [ %.19.i.i.i326, %.lr.ph.i.i.i323 ], [ %i.mo, %bb.bv ] ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.012.i.i.i324, i64 32
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !44
  %i.mr = load i64, ptr %i.mq, align 8
  %i.ms = and i64 %i.mr, 1099511627775
  %i.mt = icmp samesign ult i64 %i.ms, %i.mb      ; 3 uses
  %.19.i.i.i326 = select i1 %i.mt, ptr %.0811.i.i.i325, ptr %.012.i.i.i324 ; 2 uses
  %.1.in.v.i.i.i327 = select i1 %i.mt, i64 24, i64 16
  %.1.in.i.i.i328 = getelementptr inbounds nuw i8, ptr %.012.i.i.i324, i64 %.1.in.v.i.i.i327
  %.1.i.i.i329 = load ptr, ptr %.1.in.i.i.i328, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i330 = icmp eq ptr %.1.i.i.i329, null
  br i1 %.not.i.i.i330, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i331, label %.lr.ph.i.i.i323, !llvm.loop !7

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i331: ; preds = %.lr.ph.i.i.i323
  %i.mu = icmp eq ptr %.19.i.i.i326, %i.mo
  br i1 %i.mu, label %.critedge265, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit334

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit334: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i331
  %.19.i.i.i326.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.mt, ptr %.0811.i.i.i325, ptr %.012.i.i.i324
  %.19.i.i.i326.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i326.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.mv = load ptr, ptr %.19.i.i.i326.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !44
  %i.mw = load i64, ptr %i.mv, align 8
  %i.mx = and i64 %i.mw, 1099511627775
  %i.my = icmp samesign ult i64 %i.mb, %i.mx
  br i1 %i.my, label %.critedge265, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit334
  %i.mz = load ptr, ptr %1, align 8, !tbaa !44    ; 5 uses
  store ptr %i.mz, ptr %113, align 8, !tbaa !44
  %i.na = load i64, ptr %i.mz, align 8            ; 3 uses
  %i.nb = lshr i64 %i.na, 40
  %i.nc = trunc nuw nsw i64 %i.nb to i32
  %i.nd = and i32 %i.nc, 1048575                  ; 3 uses
  %i.ne = icmp samesign ult i32 %i.nd, 1048574
  br i1 %i.ne, label %bb.bx, label %bb.by, !prof !45

bb.bx:                                            ; preds = %bb.bw
  %i.nf = add nuw nsw i32 %i.nd, 1
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = shl nuw nsw i64 %i.ng, 40
  %i.ni = and i64 %i.na, -1152920405095219201
  %i.nj = or i64 %i.nh, %i.ni
  store i64 %i.nj, ptr %i.mz, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit336

bb.by:                                            ; preds = %bb.bw
  %i.nk = icmp eq i32 %i.nd, 1048574
  br i1 %i.nk, label %bb.bz, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit336, !prof !46

bb.bz:                                            ; preds = %bb.by
  %i.nl = or i64 %i.na, 1152920405095219200
  store i64 %i.nl, ptr %i.mz, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit336 unwind label %bb.cs

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit336: ; preds = %bb.by, %bb.bx, %bb.bz
  %i.nm = load ptr, ptr %111, align 8, !tbaa !44  ; 5 uses
  store ptr %i.nm, ptr %114, align 8, !tbaa !44
  %i.nn = load i64, ptr %i.nm, align 8            ; 3 uses
  %i.no = lshr i64 %i.nn, 40
  %i.np = trunc nuw nsw i64 %i.no to i32
  %i.nq = and i32 %i.np, 1048575                  ; 3 uses
  %i.nr = icmp samesign ult i32 %i.nq, 1048574
  br i1 %i.nr, label %bb.ca, label %bb.cb, !prof !45

bb.ca:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit336
  %i.ns = add nuw nsw i32 %i.nq, 1
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = shl nuw nsw i64 %i.nt, 40
  %i.nv = and i64 %i.nn, -1152920405095219201
  %i.nw = or i64 %i.nu, %i.nv
  store i64 %i.nw, ptr %i.nm, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit338

bb.cb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit336
  %i.nx = icmp eq i32 %i.nq, 1048574
  br i1 %i.nx, label %bb.cc, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit338, !prof !46

bb.cc:                                            ; preds = %bb.cb
  %i.ny = or i64 %i.nn, 1152920405095219200
  store i64 %i.ny, ptr %i.nm, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit338 unwind label %bb.ct

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit338: ; preds = %bb.cb, %bb.ca, %bb.cc
  invoke void @_ZN4cvc58internal6theory11quantifiers15BoundedIntegers13setBoundedVarENS0_12NodeTemplateILb1EEES5_NS2_12BoundVarTypeE(ptr noundef nonnull align 8 dereferenceable(768) %0, ptr noundef nonnull align 8 %113, ptr noundef nonnull align 8 %114, i32 noundef 1)
          to label %bb.cd unwind label %bb.cu

bb.cd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit338
  %i.nz = load ptr, ptr %114, align 8, !tbaa !44  ; 3 uses
  %i.oa = load i64, ptr %i.nz, align 8            ; 3 uses
  %i.ob = and i64 %i.oa, 1152920405095219200
  %.not.i.i339 = icmp eq i64 %i.ob, 1152920405095219200
  br i1 %.not.i.i339, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit340, label %bb.ce, !prof !46

bb.ce:                                            ; preds = %bb.cd
  %i.oc = add i64 %i.oa, 1152920405095219200
  %i.od = and i64 %i.oc, 1152920405095219200      ; 2 uses
  %i.oe = and i64 %i.oa, -1152920405095219201
  %i.of = or disjoint i64 %i.od, %i.oe
  store i64 %i.of, ptr %i.nz, align 8
  %i.og = icmp eq i64 %i.od, 0
  br i1 %i.og, label %bb.cf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit340, !prof !46

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit340 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.oh = landingpad { ptr, i32 }
          catch ptr null
  %i.oi = extractvalue { ptr, i32 } %i.oh, 0
  call void @__clang_call_terminate(ptr %i.oi) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit340: ; preds = %bb.cd, %bb.ce, %bb.cf
  %i.oj = load ptr, ptr %113, align 8, !tbaa !44  ; 3 uses
  %i.ok = load i64, ptr %i.oj, align 8            ; 3 uses
  %i.ol = and i64 %i.ok, 1152920405095219200
  %.not.i.i341 = icmp eq i64 %i.ol, 1152920405095219200
  br i1 %.not.i.i341, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342.preheader, label %bb.ch, !prof !46

bb.ch:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit340
  %i.om = add i64 %i.ok, 1152920405095219200
  %i.on = and i64 %i.om, 1152920405095219200      ; 2 uses
  %i.oo = and i64 %i.ok, -1152920405095219201
  %i.op = or disjoint i64 %i.on, %i.oo
  store i64 %i.op, ptr %i.oj, align 8
  %i.oq = icmp eq i64 %i.on, 0
  br i1 %i.oq, label %bb.ci, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342.preheader, !prof !46

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342.preheader unwind label %bb.cj

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342.preheader: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit340, %bb.ch, %bb.ci
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342

bb.cj:                                            ; preds = %bb.ci
  %i.or = landingpad { ptr, i32 }
          catch ptr null
  %i.os = extractvalue { ptr, i32 } %i.or, 0
  call void @__clang_call_terminate(ptr %i.os) #27
  unreachable

bb.ck:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #25
  %i.ot = load ptr, ptr %i.ck, align 8, !tbaa !350 ; 2 uses
  %.not10.i.i.i.i343 = icmp eq ptr %i.ot, null
  br i1 %.not10.i.i.i.i343, label %.critedge.i353, label %.lr.ph.i.i.i.i344

.lr.ph.i.i.i.i344:                                ; preds = %bb.ck
  %i.ou = load ptr, ptr %1, align 8, !tbaa !44
  %i.ov = load i64, ptr %i.ou, align 8
  %i.ow = and i64 %i.ov, 1099511627775            ; 2 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.lr.ph.i.i.i.i344
  %.012.i.i.i.i345 = phi ptr [ %i.ot, %.lr.ph.i.i.i.i344 ], [ %.1.i.i.i.i350, %bb.cl ] ; 3 uses
  %.0811.i.i.i.i346 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i344 ], [ %.19.i.i.i.i347, %bb.cl ]
  %i.ox = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i345, i64 32
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !44
  %i.oz = load i64, ptr %i.oy, align 8
  %i.pa = and i64 %i.oz, 1099511627775
  %i.pb = icmp samesign ult i64 %i.pa, %i.ow      ; 2 uses
  %.19.i.i.i.i347 = select i1 %i.pb, ptr %.0811.i.i.i.i346, ptr %.012.i.i.i.i345 ; 6 uses
  %.1.in.v.i.i.i.i348 = select i1 %i.pb, i64 24, i64 16
  %.1.in.i.i.i.i349 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i345, i64 %.1.in.v.i.i.i.i348
  %.1.i.i.i.i350 = load ptr, ptr %.1.in.i.i.i.i349, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i351 = icmp eq ptr %.1.i.i.i.i350, null
  br i1 %.not.i.i.i.i351, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i, label %bb.cl, !llvm.loop !15

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i: ; preds = %bb.cl
  %i.pc = icmp eq ptr %.19.i.i.i.i347, %i.cl
  br i1 %i.pc, label %.critedge.i353, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i
  %i.pd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i347, i64 32
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !44
  %i.pf = load i64, ptr %i.pe, align 8
  %i.pg = and i64 %i.pf, 1099511627775
  %i.ph = icmp samesign ult i64 %i.ow, %i.pg
  br i1 %i.ph, label %.critedge.i353, label %bb.eo

.critedge.i353:                                   ; preds = %bb.cm, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i, %bb.ck
  %.08.lcssa.i.i.i11.i354 = phi ptr [ %.19.i.i.i.i347, %bb.cm ], [ %.19.i.i.i.i347, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i ], [ %i.cl, %bb.ck ]
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #25
  store ptr %1, ptr %101, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #25
  %i.pi = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapIS3_S3_St4lessIS3_ESaIS4_IS5_S3_EEEESt10_Select1stISC_ES8_SaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESL_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cj, ptr %.08.lcssa.i.i.i11.i354, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %101, ptr noundef nonnull align 1 dereferenceable(1) %102)
          to label %.noexc355 unwind label %bb.fy

.noexc355:                                        ; preds = %.critedge.i353
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #25
  br label %bb.eo

bb.cn:                                            ; preds = %bb.af
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1140

bb.co:                                            ; preds = %bb.ai
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %.body2395

bb.cp:                                            ; preds = %bb.al
  %i.pl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %112) #25
  br label %.body2395

bb.cq:                                            ; preds = %.critedge.i
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %.body2395

bb.cr:                                            ; preds = %.critedge.i317
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %.body2395

bb.cs:                                            ; preds = %bb.bz
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %.body2395

bb.ct:                                            ; preds = %bb.cc
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit338
  %i.pq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %114) #25
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.pn240 = phi { ptr, i32 } [ %i.pq, %bb.cu ], [ %i.pp, %bb.ct ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %113) #25
  br label %.body2395

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342.preheader, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.pr = phi i1 [ false, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit ], [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342.preheader ]
  %indvars.iv = phi i64 [ 1, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit ], [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342.preheader ] ; 4 uses
  %i.ps = trunc nuw nsw i64 %indvars.iv to i32
  %i.pt = load ptr, ptr %i.az, align 8, !tbaa !350 ; 2 uses
  %.not10.i.i.i.i356 = icmp eq ptr %i.pt, null
  br i1 %.not10.i.i.i.i356, label %.critedge.i367, label %.lr.ph.i.i.i.i357

.lr.ph.i.i.i.i357:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342, %.lr.ph.i.i.i.i357
  %.012.i.i.i.i358 = phi ptr [ %.1.i.i.i.i363, %.lr.ph.i.i.i.i357 ], [ %i.pt, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342 ] ; 4 uses
  %.0811.i.i.i.i359 = phi ptr [ %.19.i.i.i.i360, %.lr.ph.i.i.i.i357 ], [ %i.ay, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342 ] ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i358, i64 32
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !326
  %i.pw = sext i32 %i.pv to i64
  %i.px = icmp sgt i64 %indvars.iv, %i.pw         ; 3 uses
  %.19.i.i.i.i360 = select i1 %i.px, ptr %.0811.i.i.i.i359, ptr %.012.i.i.i.i358 ; 5 uses
  %.1.in.v.i.i.i.i361 = select i1 %i.px, i64 24, i64 16
  %.1.in.i.i.i.i362 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i358, i64 %.1.in.v.i.i.i.i361
  %.1.i.i.i.i363 = load ptr, ptr %.1.in.i.i.i.i362, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i364 = icmp eq ptr %.1.i.i.i.i363, null
  br i1 %.not.i.i.i.i364, label %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i365, label %.lr.ph.i.i.i.i357, !llvm.loop !6

_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i365: ; preds = %.lr.ph.i.i.i.i357
  %i.py = icmp eq ptr %.19.i.i.i.i360, %i.ay
  br i1 %i.py, label %.critedge.i367, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i365
  %.19.i.i.i.i360.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.px, ptr %.0811.i.i.i.i359, ptr %.012.i.i.i.i358
  %.19.i.i.i.i360.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i360.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.pz = load i32, ptr %.19.i.i.i.i360.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !326
  %i.qa = sext i32 %i.pz to i64
  %i.qb = icmp slt i64 %indvars.iv, %i.qa
  br i1 %i.qb, label %.critedge.i367, label %bb.dd

.critedge.i367:                                   ; preds = %bb.cw, %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i365, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342
  %.08.lcssa.i.i.i11.i368 = phi ptr [ %.19.i.i.i.i360, %bb.cw ], [ %.19.i.i.i.i360, %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i365 ], [ %i.ay, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr %107, ptr %13, align 8, !tbaa !373
  %i.qc = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %.noexc2258 unwind label %bb.en ; 11 uses

.noexc2258:                                       ; preds = %.critedge.i367
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 32 ; 3 uses
  store i32 %i.ps, ptr %i.qd, align 8, !tbaa !380
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 40 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 48 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qc, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qe, i8 0, i64 24, i1 false)
  store ptr %i.qf, ptr %i.qg, align 8, !tbaa !351
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qc, i64 72
  store ptr %i.qf, ptr %i.qh, align 8, !tbaa !352
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qc, i64 80
  store i64 0, ptr %i.qi, align 8, !tbaa !353
  store ptr %i.qc, ptr %i.ch, align 8, !tbaa !383
  %i.qj = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %107, ptr %.08.lcssa.i.i.i11.i368, ptr noundef nonnull align 4 dereferenceable(4) %i.qd)
          to label %bb.cx unwind label %bb.da     ; 2 uses

bb.cx:                                            ; preds = %.noexc2258
  %i.qk = extractvalue { ptr, ptr } %i.qj, 0      ; 2 uses
  %i.ql = extractvalue { ptr, ptr } %i.qj, 1      ; 4 uses
  %.not.i2252 = icmp eq ptr %i.ql, null
  br i1 %.not.i2252, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.not.i.i.i2253 = icmp ne ptr %i.qk, null
  %i.qm = icmp eq ptr %i.ql, %i.ay
  %or.cond.i.i.i2254 = or i1 %.not.i.i.i2253, %i.qm
  br i1 %or.cond.i.i.i2254, label %.thread.i2255, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 32
  %i.qo = load i32, ptr %i.qd, align 8, !tbaa !326
  %i.qp = load i32, ptr %i.qn, align 4, !tbaa !326
  %i.qq = icmp slt i32 %i.qo, %i.qp
  br label %.thread.i2255

.thread.i2255:                                    ; preds = %bb.cz, %bb.cy
  %i.qr = phi i1 [ %i.qq, %bb.cz ], [ true, %bb.cy ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.qr, ptr noundef nonnull %i.qc, ptr noundef nonnull %i.ql, ptr noundef nonnull align 8 dereferenceable(32) %i.ay) #25
  %i.qs = load i64, ptr %i.bc, align 8, !tbaa !353
  %i.qt = add i64 %i.qs, 1
  store i64 %i.qt, ptr %i.bc, align 8, !tbaa !353
  br label %.noexc369

bb.da:                                            ; preds = %.noexc2258
  %i.qu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.body2395

bb.db:                                            ; preds = %bb.cx
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qc, i64 56
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !350
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.qe, ptr noundef %i.qw)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i2257 unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qx = landingpad { ptr, i32 }
          catch ptr null
  %i.qy = extractvalue { ptr, i32 } %i.qx, 0
  call void @__clang_call_terminate(ptr %i.qy) #27
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i2257: ; preds = %bb.db
  call void @_ZdlPvm(ptr noundef nonnull %i.qc, i64 noundef 88) #28
  br label %.noexc369

.noexc369:                                        ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i2257, %.thread.i2255
  %.sroa.0.010.i2256 = phi ptr [ %i.qc, %.thread.i2255 ], [ %i.qk, %_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i2257 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.dd

bb.dd:                                            ; preds = %.noexc369, %bb.cw
  %.sroa.06.0.i366 = phi ptr [ %.sroa.0.010.i2256, %.noexc369 ], [ %.19.i.i.i.i360, %bb.cw ] ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i366, i64 40 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i366, i64 56
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !350 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i366, i64 48 ; 5 uses
  %.not10.i.i.i.i371 = icmp eq ptr %i.rb, null
  br i1 %.not10.i.i.i.i371, label %.critedge.i381, label %.lr.ph.i.i.i.i372

.lr.ph.i.i.i.i372:                                ; preds = %bb.dd
  %i.rd = load ptr, ptr %111, align 8, !tbaa !44
  %i.re = load i64, ptr %i.rd, align 8
  %i.rf = and i64 %i.re, 1099511627775            ; 2 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.de, %.lr.ph.i.i.i.i372
  %.012.i.i.i.i373 = phi ptr [ %i.rb, %.lr.ph.i.i.i.i372 ], [ %.1.i.i.i.i378, %bb.de ] ; 4 uses
  %.0811.i.i.i.i374 = phi ptr [ %i.rc, %.lr.ph.i.i.i.i372 ], [ %.19.i.i.i.i375, %bb.de ] ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i373, i64 32
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !44
  %i.ri = load i64, ptr %i.rh, align 8
  %i.rj = and i64 %i.ri, 1099511627775
  %i.rk = icmp samesign ult i64 %i.rj, %i.rf      ; 3 uses
  %.19.i.i.i.i375 = select i1 %i.rk, ptr %.0811.i.i.i.i374, ptr %.012.i.i.i.i373 ; 5 uses
  %.1.in.v.i.i.i.i376 = select i1 %i.rk, i64 24, i64 16
  %.1.in.i.i.i.i377 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i373, i64 %.1.in.v.i.i.i.i376
  %.1.i.i.i.i378 = load ptr, ptr %.1.in.i.i.i.i377, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i379 = icmp eq ptr %.1.i.i.i.i378, null
  br i1 %.not.i.i.i.i379, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i, label %bb.de, !llvm.loop !7

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.de
  %i.rl = icmp eq ptr %.19.i.i.i.i375, %i.rc
  br i1 %i.rl, label %.critedge.i381, label %bb.df

end_hunk_1
begin_hunk_2_@_ZN4cvc58internal6theory11quantifiers15BoundedIntegers14checkOwnershipENS0_12NodeTemplateILb1EEE:bb.a
  %.not.i.i.i.i407 = icmp eq ptr %.1.i.i.i.i406, null
  br i1 %.not.i.i.i.i407, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i408, label %bb.du, !llvm.loop !7

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i408: ; preds = %bb.du
  %i.uk = icmp eq ptr %.19.i.i.i.i403, %i.ub
  br i1 %i.uk, label %.critedge.i410, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i408
  %i.ul = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i403, i64 32
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !44
  %i.un = load i64, ptr %i.um, align 8
  %i.uo = and i64 %i.un, 1099511627775
  %i.up = icmp samesign ult i64 %i.ue, %i.uo
  br i1 %i.up, label %.critedge.i410, label %bb.eg

.critedge.i410:                                   ; preds = %bb.dv, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i408, %bb.dt
  %.08.lcssa.i.i.i11.i411 = phi ptr [ %.19.i.i.i.i403, %bb.dv ], [ %.19.i.i.i.i403, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i408 ], [ %i.ub, %bb.dt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #25
  store ptr %111, ptr %95, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #25
  %i.uq = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc2276 unwind label %bb.en ; 7 uses

.noexc2276:                                       ; preds = %.critedge.i410
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEEvPSt13_Rb_tree_nodeIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ty, ptr noundef nonnull %i.uq, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef nonnull align 1 dereferenceable(1) %96)
          to label %.noexc2277 unwind label %bb.en

.noexc2277:                                       ; preds = %.noexc2276
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 32 ; 3 uses
  %i.us = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.ty, ptr %.08.lcssa.i.i.i11.i411, ptr noundef nonnull align 8 dereferenceable(8) %i.ur)
          to label %bb.dw unwind label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2270 ; 2 uses

bb.dw:                                            ; preds = %.noexc2277
  %i.ut = extractvalue { ptr, ptr } %i.us, 0      ; 2 uses
  %i.uu = extractvalue { ptr, ptr } %i.us, 1      ; 4 uses
  %.not.i2271 = icmp eq ptr %i.uu, null
  br i1 %.not.i2271, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.not.i.i.i2272 = icmp ne ptr %i.ut, null
  %i.uv = icmp eq ptr %i.uu, %i.ub
  %or.cond.i.i.i2273 = select i1 %.not.i.i.i2272, i1 true, i1 %i.uv
  br i1 %or.cond.i.i.i2273, label %.thread.i2274, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 32
  %i.ux = load ptr, ptr %i.ur, align 8, !tbaa !44
  %i.uy = load i64, ptr %i.ux, align 8
  %i.uz = and i64 %i.uy, 1099511627775
  %i.va = load ptr, ptr %i.uw, align 8, !tbaa !44
  %i.vb = load i64, ptr %i.va, align 8
  %i.vc = and i64 %i.vb, 1099511627775
  %i.vd = icmp samesign ult i64 %i.uz, %i.vc
  br label %.thread.i2274

.thread.i2274:                                    ; preds = %bb.dy, %bb.dx
  %i.ve = phi i1 [ %i.vd, %bb.dy ], [ true, %bb.dx ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ve, ptr noundef nonnull %i.uq, ptr noundef nonnull %i.uu, ptr noundef nonnull align 8 dereferenceable(32) %i.ub) #25
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i394, i64 80 ; 2 uses
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !353
  %i.vh = add i64 %i.vg, 1
  store i64 %i.vh, ptr %i.vf, align 8, !tbaa !353
  br label %.noexc412

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2270: ; preds = %.noexc2277
  %i.vi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ty, ptr noundef nonnull %i.uq) #25
  br label %.body2395

bb.dz:                                            ; preds = %bb.dw
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uq, i64 40
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !44 ; 3 uses
  %i.vl = load i64, ptr %i.vk, align 8            ; 3 uses
  %i.vm = and i64 %i.vl, 1152920405095219200
  %.not.i.i.i.i.i2604 = icmp eq i64 %i.vm, 1152920405095219200
  br i1 %.not.i.i.i.i.i2604, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i2605, label %bb.ea, !prof !46

bb.ea:                                            ; preds = %bb.dz
  %i.vn = add i64 %i.vl, 1152920405095219200
  %i.vo = and i64 %i.vn, 1152920405095219200      ; 2 uses
  %i.vp = and i64 %i.vl, -1152920405095219201
  %i.vq = or disjoint i64 %i.vo, %i.vp
  store i64 %i.vq, ptr %i.vk, align 8
  %i.vr = icmp eq i64 %i.vo, 0
  br i1 %i.vr, label %bb.eb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i2605, !prof !46

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i2605 unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.vs = landingpad { ptr, i32 }
          catch ptr null
  %i.vt = extractvalue { ptr, i32 } %i.vs, 0
  call void @__clang_call_terminate(ptr %i.vt) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i2605: ; preds = %bb.eb, %bb.ea, %bb.dz
  %i.vu = load ptr, ptr %i.ur, align 8, !tbaa !44 ; 3 uses
  %i.vv = load i64, ptr %i.vu, align 8            ; 3 uses
  %i.vw = and i64 %i.vv, 1152920405095219200
  %.not.i.i1.i.i.i2606 = icmp eq i64 %i.vw, 1152920405095219200
  br i1 %.not.i.i1.i.i.i2606, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit2607, label %bb.ed, !prof !46

bb.ed:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i2605
  %i.vx = add i64 %i.vv, 1152920405095219200
  %i.vy = and i64 %i.vx, 1152920405095219200      ; 2 uses
  %i.vz = and i64 %i.vv, -1152920405095219201
  %i.wa = or disjoint i64 %i.vy, %i.vz
  store i64 %i.wa, ptr %i.vu, align 8
  %i.wb = icmp eq i64 %i.vy, 0
  br i1 %i.wb, label %bb.ee, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit2607, !prof !46

bb.ee:                                            ; preds = %bb.ed
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vu)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit2607 unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.wc = landingpad { ptr, i32 }
          catch ptr null
  %i.wd = extractvalue { ptr, i32 } %i.wc, 0
  call void @__clang_call_terminate(ptr %i.wd) #27
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit2607: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i2605, %bb.ed, %bb.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.uq, i64 noundef 48) #28
  br label %.noexc412

.noexc412:                                        ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit2607, %.thread.i2274
  %.sroa.015.019.i2275 = phi ptr [ %i.uq, %.thread.i2274 ], [ %i.ut, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit2607 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #25
  br label %bb.eg

bb.eg:                                            ; preds = %.noexc412, %bb.dv
  %.sroa.06.0.i409 = phi ptr [ %.sroa.015.019.i2275, %.noexc412 ], [ %.19.i.i.i.i403, %bb.dv ]
  %i.we = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i409, i64 40 ; 2 uses
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !44 ; 4 uses
  %i.wg = load ptr, ptr %i.te, align 8, !tbaa !44
  %.not.i414 = icmp eq ptr %i.wf, %i.wg
  br i1 %.not.i414, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.eh, !prof !46

bb.eh:                                            ; preds = %bb.eg
  %i.wh = load i64, ptr %i.wf, align 8            ; 3 uses
  %i.wi = and i64 %i.wh, 1152920405095219200
  %.not.i.i415 = icmp eq i64 %i.wi, 1152920405095219200
  br i1 %.not.i.i415, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.ei, !prof !46

bb.ei:                                            ; preds = %bb.eh
  %i.wj = add i64 %i.wh, 1152920405095219200
  %i.wk = and i64 %i.wj, 1152920405095219200      ; 2 uses
  %i.wl = and i64 %i.wh, -1152920405095219201
  %i.wm = or disjoint i64 %i.wk, %i.wl
  store i64 %i.wm, ptr %i.wf, align 8
  %i.wn = icmp eq i64 %i.wk, 0
  br i1 %i.wn, label %bb.ej, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !46

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wf)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.en

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.ej, %bb.ei, %bb.eh
  %i.wo = load ptr, ptr %i.te, align 8, !tbaa !44 ; 5 uses
  store ptr %i.wo, ptr %i.we, align 8, !tbaa !44
  %i.wp = load i64, ptr %i.wo, align 8            ; 3 uses
  %i.wq = lshr i64 %i.wp, 40
  %i.wr = trunc nuw nsw i64 %i.wq to i32
  %i.ws = and i32 %i.wr, 1048575                  ; 3 uses
  %i.wt = icmp samesign ult i32 %i.ws, 1048574
  br i1 %i.wt, label %bb.ek, label %bb.el, !prof !45

bb.ek:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.wu = add nuw nsw i32 %i.ws, 1
  %i.wv = zext nneg i32 %i.wu to i64
  %i.ww = shl nuw nsw i64 %i.wv, 40
  %i.wx = and i64 %i.wp, -1152920405095219201
  %i.wy = or i64 %i.ww, %i.wx
  store i64 %i.wy, ptr %i.wo, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.el:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.wz = icmp eq i32 %i.ws, 1048574
  br i1 %i.wz, label %bb.em, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !46

bb.em:                                            ; preds = %bb.el
  %i.xa = or i64 %i.wp, 1152920405095219200
  store i64 %i.xa, ptr %i.wo, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.en

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.el, %bb.ek, %bb.eg, %bb.em
  br i1 %i.pr, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342, label %bb.ck, !llvm.loop !699

bb.en:                                            ; preds = %.noexc2276, %.critedge.i410, %.noexc2266, %.critedge.i381, %.critedge.i367, %bb.em, %bb.ej, %.critedge.i395
  %i.xb = landingpad { ptr, i32 }
          cleanup
  br label %.body2395

bb.eo:                                            ; preds = %.noexc355, %bb.cm
  %.sroa.06.0.i352 = phi ptr [ %i.pi, %.noexc355 ], [ %.19.i.i.i.i347, %bb.cm ] ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i352, i64 40
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i352, i64 56
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !350 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i352, i64 48 ; 3 uses
  %.not10.i.i.i.i418 = icmp eq ptr %i.xe, null
  br i1 %.not10.i.i.i.i418, label %.critedge.i429, label %.lr.ph.i.i.i.i419

.lr.ph.i.i.i.i419:                                ; preds = %bb.eo
  %i.xg = load ptr, ptr %111, align 8, !tbaa !44
  %i.xh = load i64, ptr %i.xg, align 8
  %i.xi = and i64 %i.xh, 1099511627775            ; 2 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ep, %.lr.ph.i.i.i.i419
  %.012.i.i.i.i420 = phi ptr [ %i.xe, %.lr.ph.i.i.i.i419 ], [ %.1.i.i.i.i425, %bb.ep ] ; 3 uses
  %.0811.i.i.i.i421 = phi ptr [ %i.xf, %.lr.ph.i.i.i.i419 ], [ %.19.i.i.i.i422, %bb.ep ]
  %i.xj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i420, i64 32
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !44
  %i.xl = load i64, ptr %i.xk, align 8
  %i.xm = and i64 %i.xl, 1099511627775
  %i.xn = icmp samesign ult i64 %i.xm, %i.xi      ; 2 uses
  %.19.i.i.i.i422 = select i1 %i.xn, ptr %.0811.i.i.i.i421, ptr %.012.i.i.i.i420 ; 6 uses
  %.1.in.v.i.i.i.i423 = select i1 %i.xn, i64 24, i64 16
  %.1.in.i.i.i.i424 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i420, i64 %.1.in.v.i.i.i.i423
  %.1.i.i.i.i425 = load ptr, ptr %.1.in.i.i.i.i424, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i426 = icmp eq ptr %.1.i.i.i.i425, null
  br i1 %.not.i.i.i.i426, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i427, label %bb.ep, !llvm.loop !7

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i427: ; preds = %bb.ep
  %i.xo = icmp eq ptr %.19.i.i.i.i422, %i.xf
  br i1 %i.xo, label %.critedge.i429, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i427
  %i.xp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i422, i64 32
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !44
  %i.xr = load i64, ptr %i.xq, align 8
  %i.xs = and i64 %i.xr, 1099511627775
  %i.xt = icmp samesign ult i64 %i.xi, %i.xs
  br i1 %i.xt, label %.critedge.i429, label %bb.er

.critedge.i429:                                   ; preds = %bb.eq, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i427, %bb.eo
  %.08.lcssa.i.i.i11.i430 = phi ptr [ %.19.i.i.i.i422, %bb.eq ], [ %.19.i.i.i.i422, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i427 ], [ %i.xf, %bb.eo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #25
  store ptr %111, ptr %93, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #25
  %147 = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.xc, ptr %.08.lcssa.i.i.i11.i430, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef nonnull align 1 dereferenceable(1) %94)
          to label %.noexc431 unwind label %bb.fy

.noexc431:                                        ; preds = %.critedge.i429
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #25
  br label %bb.er

bb.er:                                            ; preds = %.noexc431, %bb.eq
  %.sroa.06.0.i428 = phi ptr [ %147, %.noexc431 ], [ %.19.i.i.i.i422, %bb.eq ]
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i428, i64 40
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !44 ; 2 uses
  %i.xw = load ptr, ptr %i.cm, align 8, !tbaa !350 ; 2 uses
  %.not10.i.i.i.i433 = icmp eq ptr %i.xw, null
  br i1 %.not10.i.i.i.i433, label %.critedge.i444, label %.lr.ph.i.i.i.i434

.lr.ph.i.i.i.i434:                                ; preds = %bb.er
  %i.xx = load ptr, ptr %1, align 8, !tbaa !44
  %i.xy = load i64, ptr %i.xx, align 8
  %i.xz = and i64 %i.xy, 1099511627775            ; 2 uses
  br label %bb.es

bb.es:                                            ; preds = %bb.es, %.lr.ph.i.i.i.i434
  %.012.i.i.i.i435 = phi ptr [ %i.xw, %.lr.ph.i.i.i.i434 ], [ %.1.i.i.i.i440, %bb.es ] ; 3 uses
  %.0811.i.i.i.i436 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i434 ], [ %.19.i.i.i.i437, %bb.es ]
  %i.ya = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i435, i64 32
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !44
  %i.yc = load i64, ptr %i.yb, align 8
  %i.yd = and i64 %i.yc, 1099511627775
  %i.ye = icmp samesign ult i64 %i.yd, %i.xz      ; 2 uses
  %.19.i.i.i.i437 = select i1 %i.ye, ptr %.0811.i.i.i.i436, ptr %.012.i.i.i.i435 ; 6 uses
  %.1.in.v.i.i.i.i438 = select i1 %i.ye, i64 24, i64 16
  %.1.in.i.i.i.i439 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i435, i64 %.1.in.v.i.i.i.i438
  %.1.i.i.i.i440 = load ptr, ptr %.1.in.i.i.i.i439, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i441 = icmp eq ptr %.1.i.i.i.i440, null
  br i1 %.not.i.i.i.i441, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i442, label %bb.es, !llvm.loop !15

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i442: ; preds = %bb.es
  %i.yf = icmp eq ptr %.19.i.i.i.i437, %i.cn
  br i1 %i.yf, label %.critedge.i444, label %bb.et

bb.et:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i442
  %i.yg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i437, i64 32
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !44
  %i.yi = load i64, ptr %i.yh, align 8
  %i.yj = and i64 %i.yi, 1099511627775
  %i.yk = icmp samesign ult i64 %i.xz, %i.yj
  br i1 %i.yk, label %.critedge.i444, label %bb.eu

.critedge.i444:                                   ; preds = %bb.et, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i442, %bb.er
  %.08.lcssa.i.i.i11.i445 = phi ptr [ %.19.i.i.i.i437, %bb.et ], [ %.19.i.i.i.i437, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i442 ], [ %i.cn, %bb.er ]
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #25
  store ptr %1, ptr %91, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #25
  %i.yl = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapIS3_S3_St4lessIS3_ESaIS4_IS5_S3_EEEESt10_Select1stISC_ES8_SaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESL_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ci, ptr %.08.lcssa.i.i.i11.i445, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef nonnull align 1 dereferenceable(1) %92)
          to label %.noexc446 unwind label %bb.fz

.noexc446:                                        ; preds = %.critedge.i444
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #25
  br label %bb.eu

bb.eu:                                            ; preds = %.noexc446, %bb.et
  %.sroa.06.0.i443 = phi ptr [ %i.yl, %.noexc446 ], [ %.19.i.i.i.i437, %bb.et ] ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i443, i64 40
  %i.yn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i443, i64 56
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !350 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i443, i64 48 ; 3 uses
  %.not10.i.i.i.i448 = icmp eq ptr %i.yo, null
  br i1 %.not10.i.i.i.i448, label %.critedge.i459, label %.lr.ph.i.i.i.i449

.lr.ph.i.i.i.i449:                                ; preds = %bb.eu
  %i.yq = load ptr, ptr %111, align 8, !tbaa !44
  %i.yr = load i64, ptr %i.yq, align 8
  %i.ys = and i64 %i.yr, 1099511627775            ; 2 uses
  br label %bb.ev

bb.ev:                                            ; preds = %bb.ev, %.lr.ph.i.i.i.i449
  %.012.i.i.i.i450 = phi ptr [ %i.yo, %.lr.ph.i.i.i.i449 ], [ %.1.i.i.i.i455, %bb.ev ] ; 3 uses
  %.0811.i.i.i.i451 = phi ptr [ %i.yp, %.lr.ph.i.i.i.i449 ], [ %.19.i.i.i.i452, %bb.ev ]
  %i.yt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i450, i64 32
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !44
  %i.yv = load i64, ptr %i.yu, align 8
  %i.yw = and i64 %i.yv, 1099511627775
  %i.yx = icmp samesign ult i64 %i.yw, %i.ys      ; 2 uses
  %.19.i.i.i.i452 = select i1 %i.yx, ptr %.0811.i.i.i.i451, ptr %.012.i.i.i.i450 ; 6 uses
  %.1.in.v.i.i.i.i453 = select i1 %i.yx, i64 24, i64 16
  %.1.in.i.i.i.i454 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i450, i64 %.1.in.v.i.i.i.i453
  %.1.i.i.i.i455 = load ptr, ptr %.1.in.i.i.i.i454, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i456 = icmp eq ptr %.1.i.i.i.i455, null
  br i1 %.not.i.i.i.i456, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i457, label %bb.ev, !llvm.loop !7

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i457: ; preds = %bb.ev
  %i.yy = icmp eq ptr %.19.i.i.i.i452, %i.yp
  br i1 %i.yy, label %.critedge.i459, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i457
  %i.yz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i452, i64 32
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !44
  %i.zb = load i64, ptr %i.za, align 8
  %i.zc = and i64 %i.zb, 1099511627775
  %i.zd = icmp samesign ult i64 %i.ys, %i.zc
  br i1 %i.zd, label %.critedge.i459, label %bb.ex

.critedge.i459:                                   ; preds = %bb.ew, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i457, %bb.eu
  %.08.lcssa.i.i.i11.i460 = phi ptr [ %.19.i.i.i.i452, %bb.ew ], [ %.19.i.i.i.i452, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i457 ], [ %i.yp, %bb.eu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #25
  store ptr %111, ptr %89, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #25
  %148 = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ym, ptr %.08.lcssa.i.i.i11.i460, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef nonnull align 1 dereferenceable(1) %90)
          to label %.noexc461 unwind label %bb.fz

.noexc461:                                        ; preds = %.critedge.i459
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #25
  br label %bb.ex

bb.ex:                                            ; preds = %.noexc461, %bb.ew
  %.sroa.06.0.i458 = phi ptr [ %148, %.noexc461 ], [ %.19.i.i.i.i452, %bb.ew ]
  %i.ze = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i458, i64 40
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %87)
  call void @llvm.lifetime.start.p0(ptr nonnull %88)
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #25, !noalias !748
  %i.zg = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !325, !noalias !748
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %86, ptr noundef %i.zh, i32 noundef 43)
          to label %.noexc463 unwind label %bb.ga

.noexc463:                                        ; preds = %bb.ex
  store ptr %i.xv, ptr %87, align 8, !tbaa !305, !noalias !748
  %i.zi = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %86, ptr noundef nonnull align 8 %87)
          to label %bb.ey unwind label %bb.fb, !noalias !748

bb.ey:                                            ; preds = %.noexc463
  store ptr %i.zf, ptr %88, align 8, !tbaa !305, !noalias !748
  %i.zj = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.zi, ptr noundef nonnull align 8 %88)
          to label %bb.ez unwind label %bb.fc, !noalias !748 ; 0 uses

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %115, ptr noundef nonnull align 8 dereferenceable(124) %86)
          to label %bb.fe unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.zk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fb:                                            ; preds = %.noexc463
  %i.zl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fc:                                            ; preds = %bb.ey
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.fa
  %.pn5.i = phi { ptr, i32 } [ %i.zk, %bb.fa ], [ %i.zm, %bb.fc ], [ %i.zl, %bb.fb ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %86) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #25, !noalias !748
  br label %.body

bb.fe:                                            ; preds = %bb.ez
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %86) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #25, !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %87)
  call void @llvm.lifetime.end.p0(ptr nonnull %88)
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #25
  %i.zn = load ptr, ptr %115, align 8, !tbaa !44
  store ptr %i.zn, ptr %117, align 8, !tbaa !305
  invoke void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %116, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 %117)
          to label %bb.ff unwind label %bb.gb

bb.ff:                                            ; preds = %bb.fe
  %i.zo = load ptr, ptr %i.cd, align 8, !tbaa !350 ; 2 uses
  %.not10.i.i.i.i464 = icmp eq ptr %i.zo, null
  br i1 %.not10.i.i.i.i464, label %.critedge.i475, label %.lr.ph.i.i.i.i465

.lr.ph.i.i.i.i465:                                ; preds = %bb.ff
  %i.zp = load ptr, ptr %1, align 8, !tbaa !44
  %i.zq = load i64, ptr %i.zp, align 8
  %i.zr = and i64 %i.zq, 1099511627775            ; 2 uses
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fg, %.lr.ph.i.i.i.i465
  %.012.i.i.i.i466 = phi ptr [ %i.zo, %.lr.ph.i.i.i.i465 ], [ %.1.i.i.i.i471, %bb.fg ] ; 3 uses
  %.0811.i.i.i.i467 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i465 ], [ %.19.i.i.i.i468, %bb.fg ]
  %i.zs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i466, i64 32
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !44
  %i.zu = load i64, ptr %i.zt, align 8
  %i.zv = and i64 %i.zu, 1099511627775
  %i.zw = icmp samesign ult i64 %i.zv, %i.zr      ; 2 uses
  %.19.i.i.i.i468 = select i1 %i.zw, ptr %.0811.i.i.i.i467, ptr %.012.i.i.i.i466 ; 6 uses
  %.1.in.v.i.i.i.i469 = select i1 %i.zw, i64 24, i64 16
  %.1.in.i.i.i.i470 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i466, i64 %.1.in.v.i.i.i.i469
  %.1.i.i.i.i471 = load ptr, ptr %.1.in.i.i.i.i470, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i472 = icmp eq ptr %.1.i.i.i.i471, null
  br i1 %.not.i.i.i.i472, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i473, label %bb.fg, !llvm.loop !15

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i473: ; preds = %bb.fg
  %i.zx = icmp eq ptr %.19.i.i.i.i468, %i.ce
  br i1 %i.zx, label %.critedge.i475, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i473
  %i.zy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i468, i64 32
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !44
  %i.aaa = load i64, ptr %i.zz, align 8
  %i.aab = and i64 %i.aaa, 1099511627775
  %i.aac = icmp samesign ult i64 %i.zr, %i.aab
  br i1 %i.aac, label %.critedge.i475, label %bb.fi

.critedge.i475:                                   ; preds = %bb.fh, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i473, %bb.ff
  %.08.lcssa.i.i.i11.i476 = phi ptr [ %.19.i.i.i.i468, %bb.fh ], [ %.19.i.i.i.i468, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_S3_St4lessIS3_ESaISt4pairIKS3_S3_EEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i473 ], [ %i.ce, %bb.ff ]
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #25
  store ptr %1, ptr %84, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #25
  %i.aad = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapIS3_S3_St4lessIS3_ESaIS4_IS5_S3_EEEESt10_Select1stISC_ES8_SaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESL_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cc, ptr %.08.lcssa.i.i.i11.i476, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull align 1 dereferenceable(1) %85)
          to label %.noexc477 unwind label %bb.gc

.noexc477:                                        ; preds = %.critedge.i475
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #25
  br label %bb.fi

bb.fi:                                            ; preds = %.noexc477, %bb.fh
  %.sroa.06.0.i474 = phi ptr [ %i.aad, %.noexc477 ], [ %.19.i.i.i.i468, %bb.fh ] ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i474, i64 40
  %i.aaf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i474, i64 56
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !350 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i474, i64 48 ; 3 uses
  %.not10.i.i.i.i479 = icmp eq ptr %i.aag, null
  br i1 %.not10.i.i.i.i479, label %.critedge.i490, label %.lr.ph.i.i.i.i480

.lr.ph.i.i.i.i480:                                ; preds = %bb.fi
  %i.aai = load ptr, ptr %111, align 8, !tbaa !44
  %i.aaj = load i64, ptr %i.aai, align 8
  %i.aak = and i64 %i.aaj, 1099511627775          ; 2 uses
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fj, %.lr.ph.i.i.i.i480
  %.012.i.i.i.i481 = phi ptr [ %i.aag, %.lr.ph.i.i.i.i480 ], [ %.1.i.i.i.i486, %bb.fj ] ; 3 uses
  %.0811.i.i.i.i482 = phi ptr [ %i.aah, %.lr.ph.i.i.i.i480 ], [ %.19.i.i.i.i483, %bb.fj ]
  %i.aal = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i481, i64 32
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !44
  %i.aan = load i64, ptr %i.aam, align 8
  %i.aao = and i64 %i.aan, 1099511627775
  %i.aap = icmp samesign ult i64 %i.aao, %i.aak   ; 2 uses
  %.19.i.i.i.i483 = select i1 %i.aap, ptr %.0811.i.i.i.i482, ptr %.012.i.i.i.i481 ; 6 uses
  %.1.in.v.i.i.i.i484 = select i1 %i.aap, i64 24, i64 16
  %.1.in.i.i.i.i485 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i481, i64 %.1.in.v.i.i.i.i484
  %.1.i.i.i.i486 = load ptr, ptr %.1.in.i.i.i.i485, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i487 = icmp eq ptr %.1.i.i.i.i486, null
  br i1 %.not.i.i.i.i487, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i488, label %bb.fj, !llvm.loop !7

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i488: ; preds = %bb.fj
  %i.aaq = icmp eq ptr %.19.i.i.i.i483, %i.aah
  br i1 %i.aaq, label %.critedge.i490, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i488
  %i.aar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i483, i64 32
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !44
  %i.aat = load i64, ptr %i.aas, align 8
  %i.aau = and i64 %i.aat, 1099511627775
  %i.aav = icmp samesign ult i64 %i.aak, %i.aau
  br i1 %i.aav, label %.critedge.i490, label %bb.fl

.critedge.i490:                                   ; preds = %bb.fk, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i488, %bb.fi
  %.08.lcssa.i.i.i11.i491 = phi ptr [ %.19.i.i.i.i483, %bb.fk ], [ %.19.i.i.i.i483, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i488 ], [ %i.aah, %bb.fi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #25
  store ptr %111, ptr %82, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #25
  %149 = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.aae, ptr %.08.lcssa.i.i.i11.i491, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef nonnull align 1 dereferenceable(1) %83)
          to label %.noexc492 unwind label %bb.gc

.noexc492:                                        ; preds = %.critedge.i490
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #25
  br label %bb.fl

bb.fl:                                            ; preds = %.noexc492, %bb.fk
  %.sroa.06.0.i489 = phi ptr [ %149, %.noexc492 ], [ %.19.i.i.i.i483, %bb.fk ]
  %i.aaw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i489, i64 40 ; 2 uses
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !44 ; 4 uses
  %i.aay = load ptr, ptr %116, align 8, !tbaa !44
  %.not.i494 = icmp eq ptr %i.aax, %i.aay
  br i1 %.not.i494, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit499, label %bb.fm, !prof !46

bb.fm:                                            ; preds = %bb.fl
  %i.aaz = load i64, ptr %i.aax, align 8          ; 3 uses
  %i.aba = and i64 %i.aaz, 1152920405095219200
  %.not.i.i495 = icmp eq i64 %i.aba, 1152920405095219200
  br i1 %.not.i.i495, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i496, label %bb.fn, !prof !46

bb.fn:                                            ; preds = %bb.fm
  %i.abb = add i64 %i.aaz, 1152920405095219200
  %i.abc = and i64 %i.abb, 1152920405095219200    ; 2 uses
  %i.abd = and i64 %i.aaz, -1152920405095219201
  %i.abe = or disjoint i64 %i.abc, %i.abd
  store i64 %i.abe, ptr %i.aax, align 8
  %i.abf = icmp eq i64 %i.abc, 0
  br i1 %i.abf, label %bb.fo, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i496, !prof !46

bb.fo:                                            ; preds = %bb.fn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aax)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i496 unwind label %bb.gc

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i496: ; preds = %bb.fo, %bb.fn, %bb.fm
  %i.abg = load ptr, ptr %116, align 8, !tbaa !44 ; 5 uses
  store ptr %i.abg, ptr %i.aaw, align 8, !tbaa !44
  %i.abh = load i64, ptr %i.abg, align 8          ; 3 uses
  %i.abi = lshr i64 %i.abh, 40
  %i.abj = trunc nuw nsw i64 %i.abi to i32
  %i.abk = and i32 %i.abj, 1048575                ; 3 uses
  %i.abl = icmp samesign ult i32 %i.abk, 1048574
  br i1 %i.abl, label %bb.fp, label %bb.fq, !prof !45

bb.fp:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i496
  %i.abm = add nuw nsw i32 %i.abk, 1
  %i.abn = zext nneg i32 %i.abm to i64
  %i.abo = shl nuw nsw i64 %i.abn, 40
  %i.abp = and i64 %i.abh, -1152920405095219201
  %i.abq = or i64 %i.abo, %i.abp
  store i64 %i.abq, ptr %i.abg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit499

bb.fq:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i496
  %i.abr = icmp eq i32 %i.abk, 1048574
  br i1 %i.abr, label %bb.fr, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit499, !prof !46

bb.fr:                                            ; preds = %bb.fq
  %i.abs = or i64 %i.abh, 1152920405095219200
  store i64 %i.abs, ptr %i.abg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit499 unwind label %bb.gc

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit499: ; preds = %bb.fq, %bb.fp, %bb.fl, %bb.fr
  %i.abt = load ptr, ptr %116, align 8, !tbaa !44 ; 3 uses
  %i.abu = load i64, ptr %i.abt, align 8          ; 3 uses
  %i.abv = and i64 %i.abu, 1152920405095219200
  %.not.i.i500 = icmp eq i64 %i.abv, 1152920405095219200
  br i1 %.not.i.i500, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit601, label %bb.fs, !prof !46

bb.fs:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit499
  %i.abw = add i64 %i.abu, 1152920405095219200
  %i.abx = and i64 %i.abw, 1152920405095219200    ; 2 uses
  %i.aby = and i64 %i.abu, -1152920405095219201
  %i.abz = or disjoint i64 %i.abx, %i.aby
  store i64 %i.abz, ptr %i.abt, align 8
  %i.aca = icmp eq i64 %i.abx, 0
  br i1 %i.aca, label %bb.ft, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit601, !prof !46

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abt)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit601 unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.acb = landingpad { ptr, i32 }
          catch ptr null
  %i.acc = extractvalue { ptr, i32 } %i.acb, 0
  call void @__clang_call_terminate(ptr %i.acc) #27
  unreachable

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit601: ; preds = %bb.ft, %bb.fs, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit499
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #25
  %i.acd = load ptr, ptr %115, align 8, !tbaa !44 ; 3 uses
  %i.ace = load i64, ptr %i.acd, align 8          ; 3 uses
  %i.acf = and i64 %i.ace, 1152920405095219200
  %.not.i.i602 = icmp eq i64 %i.acf, 1152920405095219200
  br i1 %.not.i.i602, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604, label %bb.fv, !prof !46

bb.fv:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit601
  %i.acg = add i64 %i.ace, 1152920405095219200
  %i.ach = and i64 %i.acg, 1152920405095219200    ; 2 uses
  %i.aci = and i64 %i.ace, -1152920405095219201
  %i.acj = or disjoint i64 %i.ach, %i.aci
  store i64 %i.acj, ptr %i.acd, align 8
  %i.ack = icmp eq i64 %i.ach, 0
  br i1 %i.ack, label %bb.fw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604, !prof !46

bb.fw:                                            ; preds = %bb.fv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.acd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604 unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.acl = landingpad { ptr, i32 }
          catch ptr null
  %i.acm = extractvalue { ptr, i32 } %i.acl, 0
  call void @__clang_call_terminate(ptr %i.acm) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit601, %bb.fv, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #25
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048.preheader

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048.preheader: ; preds = %bb.mc, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit882, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048

bb.fy:                                            ; preds = %.critedge.i429, %.critedge.i353
  %i.acn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fz:                                            ; preds = %.critedge.i459, %.critedge.i444
  %i.aco = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ga:                                            ; preds = %bb.ex
  %i.acp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gb:                                            ; preds = %bb.fe
  %i.acq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.gc:                                            ; preds = %bb.fr, %bb.fo, %.critedge.i490, %.critedge.i475
  %150 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %116) #25
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.pn244 = phi { ptr, i32 } [ %150, %bb.gc ], [ %i.acq, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #25
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %115) #25
  br label %.body

.body:                                            ; preds = %bb.fz, %bb.fd, %bb.ga, %bb.gd, %bb.fy
  %.pn246.pn.pn.pn = phi { ptr, i32 } [ %.pn244, %bb.gd ], [ %i.acn, %bb.fy ], [ %i.aco, %bb.fz ], [ %i.acp, %bb.ga ], [ %.pn5.i, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #25
  br label %.body2395

bb.ge:                                            ; preds = %bb.bc
  %i.acr = load ptr, ptr %1, align 8, !tbaa !44   ; 5 uses
  store ptr %i.acr, ptr %118, align 8, !tbaa !44
  %i.acs = load i64, ptr %i.acr, align 8          ; 3 uses
  %i.act = lshr i64 %i.acs, 40
  %i.acu = trunc nuw nsw i64 %i.act to i32
  %i.acv = and i32 %i.acu, 1048575                ; 3 uses
  %i.acw = icmp samesign ult i32 %i.acv, 1048574
  br i1 %i.acw, label %bb.gf, label %bb.gg, !prof !45

bb.gf:                                            ; preds = %bb.ge
  %i.acx = add nuw nsw i32 %i.acv, 1
  %i.acy = zext nneg i32 %i.acx to i64
  %i.acz = shl nuw nsw i64 %i.acy, 40
  %i.ada = and i64 %i.acs, -1152920405095219201
  %i.adb = or i64 %i.acz, %i.ada
  store i64 %i.adb, ptr %i.acr, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit606

bb.gg:                                            ; preds = %bb.ge
  %i.adc = icmp eq i32 %i.acv, 1048574
  br i1 %i.adc, label %bb.gh, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit606, !prof !46

bb.gh:                                            ; preds = %bb.gg
  %i.add = or i64 %i.acs, 1152920405095219200
  store i64 %i.add, ptr %i.acr, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.acr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit606 unwind label %bb.kq

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit606: ; preds = %bb.gg, %bb.gf, %bb.gh
  %i.ade = load ptr, ptr %111, align 8, !tbaa !44 ; 5 uses
  store ptr %i.ade, ptr %119, align 8, !tbaa !44
  %i.adf = load i64, ptr %i.ade, align 8          ; 3 uses
  %i.adg = lshr i64 %i.adf, 40
  %i.adh = trunc nuw nsw i64 %i.adg to i32
  %i.adi = and i32 %i.adh, 1048575                ; 3 uses
  %i.adj = icmp samesign ult i32 %i.adi, 1048574
  br i1 %i.adj, label %bb.gi, label %bb.gj, !prof !45

bb.gi:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit606
  %i.adk = add nuw nsw i32 %i.adi, 1
  %i.adl = zext nneg i32 %i.adk to i64
  %i.adm = shl nuw nsw i64 %i.adl, 40
  %i.adn = and i64 %i.adf, -1152920405095219201
  %i.ado = or i64 %i.adm, %i.adn
  store i64 %i.ado, ptr %i.ade, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit608

bb.gj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit606
  %i.adp = icmp eq i32 %i.adi, 1048574
  br i1 %i.adp, label %bb.gk, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit608, !prof !46

bb.gk:                                            ; preds = %bb.gj
  %i.adq = or i64 %i.adf, 1152920405095219200
  store i64 %i.adq, ptr %i.ade, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ade)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit608 unwind label %bb.kr

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit608: ; preds = %bb.gj, %bb.gi, %bb.gk
  invoke void @_ZN4cvc58internal6theory11quantifiers15BoundedIntegers13setBoundedVarENS0_12NodeTemplateILb1EEES5_NS2_12BoundVarTypeE(ptr noundef nonnull align 8 dereferenceable(768) %0, ptr noundef nonnull align 8 %118, ptr noundef nonnull align 8 %119, i32 noundef 2)
          to label %bb.gl unwind label %bb.ks

bb.gl:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit608
  %i.adr = load ptr, ptr %119, align 8, !tbaa !44 ; 3 uses
  %i.ads = load i64, ptr %i.adr, align 8          ; 3 uses
  %i.adt = and i64 %i.ads, 1152920405095219200
  %.not.i.i609 = icmp eq i64 %i.adt, 1152920405095219200
  br i1 %.not.i.i609, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit611, label %bb.gm, !prof !46

bb.gm:                                            ; preds = %bb.gl
  %i.adu = add i64 %i.ads, 1152920405095219200
  %i.adv = and i64 %i.adu, 1152920405095219200    ; 2 uses
  %i.adw = and i64 %i.ads, -1152920405095219201
  %i.adx = or disjoint i64 %i.adv, %i.adw
  store i64 %i.adx, ptr %i.adr, align 8
  %i.ady = icmp eq i64 %i.adv, 0
  br i1 %i.ady, label %bb.gn, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit611, !prof !46

bb.gn:                                            ; preds = %bb.gm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.adr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit611 unwind label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.adz = landingpad { ptr, i32 }
          catch ptr null
  %i.aea = extractvalue { ptr, i32 } %i.adz, 0
  call void @__clang_call_terminate(ptr %i.aea) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit611: ; preds = %bb.gl, %bb.gm, %bb.gn
  %i.aeb = load ptr, ptr %118, align 8, !tbaa !44 ; 3 uses
  %i.aec = load i64, ptr %i.aeb, align 8          ; 3 uses
  %i.aed = and i64 %i.aec, 1152920405095219200
  %.not.i.i612 = icmp eq i64 %i.aed, 1152920405095219200
  br i1 %.not.i.i612, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit614, label %bb.gp, !prof !46

bb.gp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit611
  %i.aee = add i64 %i.aec, 1152920405095219200
  %i.aef = and i64 %i.aee, 1152920405095219200    ; 2 uses
  %i.aeg = and i64 %i.aec, -1152920405095219201
  %i.aeh = or disjoint i64 %i.aef, %i.aeg
  store i64 %i.aeh, ptr %i.aeb, align 8
  %i.aei = icmp eq i64 %i.aef, 0
  br i1 %i.aei, label %bb.gq, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit614, !prof !46

bb.gq:                                            ; preds = %bb.gp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aeb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit614 unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aej = landingpad { ptr, i32 }
          catch ptr null
  %i.aek = extractvalue { ptr, i32 } %i.aej, 0
  call void @__clang_call_terminate(ptr %i.aek) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit614: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit611, %bb.gp, %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #25
  %i.ael = load ptr, ptr %i.ap, align 8, !tbaa !350 ; 2 uses
  %.not10.i.i.i.i615 = icmp eq ptr %i.ael, null
  br i1 %.not10.i.i.i.i615, label %.critedge.i626, label %.lr.ph.i.i.i.i616

.lr.ph.i.i.i.i616:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit614, %.lr.ph.i.i.i.i616
  %.012.i.i.i.i617 = phi ptr [ %.1.i.i.i.i622, %.lr.ph.i.i.i.i616 ], [ %i.ael, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit614 ] ; 4 uses
  %.0811.i.i.i.i618 = phi ptr [ %.19.i.i.i.i619, %.lr.ph.i.i.i.i616 ], [ %i.ao, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit614 ] ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i617, i64 32
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !326
  %i.aeo = icmp slt i32 %i.aen, 2                 ; 3 uses
  %.19.i.i.i.i619 = select i1 %i.aeo, ptr %.0811.i.i.i.i618, ptr %.012.i.i.i.i617 ; 5 uses
  %.1.in.v.i.i.i.i620 = select i1 %i.aeo, i64 24, i64 16
  %.1.in.i.i.i.i621 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i617, i64 %.1.in.v.i.i.i.i620
  %.1.i.i.i.i622 = load ptr, ptr %.1.in.i.i.i.i621, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i623 = icmp eq ptr %.1.i.i.i.i622, null
  br i1 %.not.i.i.i.i623, label %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i624, label %.lr.ph.i.i.i.i616, !llvm.loop !6

_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i624: ; preds = %.lr.ph.i.i.i.i616
  %i.aep = icmp eq ptr %.19.i.i.i.i619, %i.ao
  br i1 %i.aep, label %.critedge.i626, label %bb.gs

bb.gs:                                            ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i624
  %.19.i.i.i.i619.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aeo, ptr %.0811.i.i.i.i618, ptr %.012.i.i.i.i617
  %.19.i.i.i.i619.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i619.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.aeq = load i32, ptr %.19.i.i.i.i619.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !326
  %i.aer = icmp sgt i32 %i.aeq, 2
  br i1 %i.aer, label %.critedge.i626, label %bb.gz

.critedge.i626:                                   ; preds = %bb.gs, %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i624, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit614
  %.08.lcssa.i.i.i11.i627 = phi ptr [ %.19.i.i.i.i619, %bb.gs ], [ %.19.i.i.i.i619, %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i624 ], [ %i.ao, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit614 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store ptr %105, ptr %12, align 8, !tbaa !373
  %i.aes = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %.noexc2297 unwind label %bb.ku ; 11 uses

.noexc2297:                                       ; preds = %.critedge.i626
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 32 ; 3 uses
  store i32 2, ptr %i.aet, align 8, !tbaa !380
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aes, i64 40 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aes, i64 48 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aes, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeu, i8 0, i64 24, i1 false)
  store ptr %i.aev, ptr %i.aew, align 8, !tbaa !351
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aes, i64 72
  store ptr %i.aev, ptr %i.aex, align 8, !tbaa !352
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aes, i64 80
  store i64 0, ptr %i.aey, align 8, !tbaa !353
  store ptr %i.aes, ptr %i.bu, align 8, !tbaa !383
  %i.aez = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %105, ptr %.08.lcssa.i.i.i11.i627, ptr noundef nonnull align 4 dereferenceable(4) %i.aet)
          to label %bb.gt unwind label %bb.gw     ; 2 uses

bb.gt:                                            ; preds = %.noexc2297
  %i.afa = extractvalue { ptr, ptr } %i.aez, 0    ; 2 uses
  %i.afb = extractvalue { ptr, ptr } %i.aez, 1    ; 4 uses
  %.not.i2291 = icmp eq ptr %i.afb, null
  br i1 %.not.i2291, label %bb.gx, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %.not.i.i.i2292 = icmp ne ptr %i.afa, null
  %i.afc = icmp eq ptr %i.afb, %i.ao
  %or.cond.i.i.i2293 = or i1 %.not.i.i.i2292, %i.afc
  br i1 %or.cond.i.i.i2293, label %.thread.i2294, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afb, i64 32
  %i.afe = load i32, ptr %i.aet, align 8, !tbaa !326
  %i.aff = load i32, ptr %i.afd, align 4, !tbaa !326
  %i.afg = icmp slt i32 %i.afe, %i.aff
  br label %.thread.i2294

.thread.i2294:                                    ; preds = %bb.gv, %bb.gu
  %i.afh = phi i1 [ %i.afg, %bb.gv ], [ true, %bb.gu ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.afh, ptr noundef nonnull %i.aes, ptr noundef nonnull %i.afb, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #25
  %i.afi = load i64, ptr %i.as, align 8, !tbaa !353
  %i.afj = add i64 %i.afi, 1
  store i64 %i.afj, ptr %i.as, align 8, !tbaa !353
  br label %.noexc628

bb.gw:                                            ; preds = %.noexc2297
end_hunk_2
begin_hunk_3_@_ZN4cvc58internal6theory11quantifiers15BoundedIntegers14checkOwnershipENS0_12NodeTemplateILb1EEE:bb.a
  %i.atn = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapIS3_S3_St4lessIS3_ESaIS4_IS5_S3_EEEESt10_Select1stISC_ES8_SaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESL_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cc, ptr %.08.lcssa.i.i.i11.i799, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 1 dereferenceable(1) %63)
          to label %.noexc800 unwind label %bb.kz

.noexc800:                                        ; preds = %.critedge.i798
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #25
  br label %bb.jz

bb.jz:                                            ; preds = %.noexc800, %bb.jy
  %.sroa.06.0.i797 = phi ptr [ %i.atn, %.noexc800 ], [ %.19.i.i.i.i791, %bb.jy ] ; 4 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i797, i64 40 ; 4 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i797, i64 56
  %i.atq = load ptr, ptr %i.atp, align 8, !tbaa !350 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i797, i64 48 ; 5 uses
  %.not10.i.i.i.i802 = icmp eq ptr %i.atq, null
  br i1 %.not10.i.i.i.i802, label %.critedge.i813, label %.lr.ph.i.i.i.i803

.lr.ph.i.i.i.i803:                                ; preds = %bb.jz
  %i.ats = load ptr, ptr %111, align 8, !tbaa !44
  %i.att = load i64, ptr %i.ats, align 8
  %i.atu = and i64 %i.att, 1099511627775          ; 2 uses
  br label %bb.ka

bb.ka:                                            ; preds = %bb.ka, %.lr.ph.i.i.i.i803
  %.012.i.i.i.i804 = phi ptr [ %i.atq, %.lr.ph.i.i.i.i803 ], [ %.1.i.i.i.i809, %bb.ka ] ; 3 uses
  %.0811.i.i.i.i805 = phi ptr [ %i.atr, %.lr.ph.i.i.i.i803 ], [ %.19.i.i.i.i806, %bb.ka ]
  %i.atv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i804, i64 32
  %i.atw = load ptr, ptr %i.atv, align 8, !tbaa !44
  %i.atx = load i64, ptr %i.atw, align 8
  %i.aty = and i64 %i.atx, 1099511627775
  %i.atz = icmp samesign ult i64 %i.aty, %i.atu   ; 2 uses
  %.19.i.i.i.i806 = select i1 %i.atz, ptr %.0811.i.i.i.i805, ptr %.012.i.i.i.i804 ; 6 uses
  %.1.in.v.i.i.i.i807 = select i1 %i.atz, i64 24, i64 16
  %.1.in.i.i.i.i808 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i804, i64 %.1.in.v.i.i.i.i807
  %.1.i.i.i.i809 = load ptr, ptr %.1.in.i.i.i.i808, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i810 = icmp eq ptr %.1.i.i.i.i809, null
  br i1 %.not.i.i.i.i810, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i811, label %bb.ka, !llvm.loop !7

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i811: ; preds = %bb.ka
  %i.aua = icmp eq ptr %.19.i.i.i.i806, %i.atr
  br i1 %i.aua, label %.critedge.i813, label %bb.kb

bb.kb:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i811
  %i.aub = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i806, i64 32
  %i.auc = load ptr, ptr %i.aub, align 8, !tbaa !44
  %i.aud = load i64, ptr %i.auc, align 8
  %i.aue = and i64 %i.aud, 1099511627775
  %i.auf = icmp samesign ult i64 %i.atu, %i.aue
  br i1 %i.auf, label %.critedge.i813, label %bb.kg

.critedge.i813:                                   ; preds = %bb.kb, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i811, %bb.jz
  %.08.lcssa.i.i.i11.i814 = phi ptr [ %.19.i.i.i.i806, %bb.kb ], [ %.19.i.i.i.i806, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE11lower_boundERS7_.exit.i811 ], [ %i.atr, %bb.jz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #25
  store ptr %111, ptr %60, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #25
  %i.aug = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc2372 unwind label %bb.kz ; 6 uses

.noexc2372:                                       ; preds = %.critedge.i813
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEEvPSt13_Rb_tree_nodeIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ato, ptr noundef nonnull %i.aug, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull align 1 dereferenceable(1) %61)
          to label %.noexc2373 unwind label %bb.kz

.noexc2373:                                       ; preds = %.noexc2372
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 32 ; 2 uses
  %i.aui = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.ato, ptr %.08.lcssa.i.i.i11.i814, ptr noundef nonnull align 8 dereferenceable(8) %i.auh)
          to label %bb.kc unwind label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2366 ; 2 uses

bb.kc:                                            ; preds = %.noexc2373
  %i.auj = extractvalue { ptr, ptr } %i.aui, 0    ; 2 uses
  %i.auk = extractvalue { ptr, ptr } %i.aui, 1    ; 4 uses
  %.not.i2367 = icmp eq ptr %i.auk, null
  br i1 %.not.i2367, label %bb.kf, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %.not.i.i.i2368 = icmp ne ptr %i.auj, null
  %i.aul = icmp eq ptr %i.auk, %i.atr
  %or.cond.i.i.i2369 = select i1 %.not.i.i.i2368, i1 true, i1 %i.aul
  br i1 %or.cond.i.i.i2369, label %.thread.i2370, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.aum = getelementptr inbounds nuw i8, ptr %i.auk, i64 32
  %i.aun = load ptr, ptr %i.auh, align 8, !tbaa !44
  %i.auo = load i64, ptr %i.aun, align 8
  %i.aup = and i64 %i.auo, 1099511627775
  %i.auq = load ptr, ptr %i.aum, align 8, !tbaa !44
  %i.aur = load i64, ptr %i.auq, align 8
  %i.aus = and i64 %i.aur, 1099511627775
  %i.aut = icmp samesign ult i64 %i.aup, %i.aus
  br label %.thread.i2370

.thread.i2370:                                    ; preds = %bb.ke, %bb.kd
  %i.auu = phi i1 [ %i.aut, %bb.ke ], [ true, %bb.kd ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.auu, ptr noundef nonnull %i.aug, ptr noundef nonnull %i.auk, ptr noundef nonnull align 8 dereferenceable(32) %i.atr) #25
  %i.auv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i797, i64 80 ; 2 uses
  %i.auw = load i64, ptr %i.auv, align 8, !tbaa !353
  %i.aux = add i64 %i.auw, 1
  store i64 %i.aux, ptr %i.auv, align 8, !tbaa !353
  br label %.noexc815

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2366: ; preds = %.noexc2373
  %i.auy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ato, ptr noundef nonnull %i.aug) #25
  br label %.body2374

bb.kf:                                            ; preds = %bb.kc
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ato, ptr noundef nonnull %i.aug) #25
  br label %.noexc815

.noexc815:                                        ; preds = %bb.kf, %.thread.i2370
  %.sroa.015.019.i2371 = phi ptr [ %i.aug, %.thread.i2370 ], [ %i.auj, %bb.kf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #25
  br label %bb.kg

bb.kg:                                            ; preds = %.noexc815, %bb.kb
  %.sroa.06.0.i812 = phi ptr [ %.sroa.015.019.i2371, %.noexc815 ], [ %.19.i.i.i.i806, %bb.kb ]
  %i.auz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i812, i64 40 ; 2 uses
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !44 ; 4 uses
  %i.avb = load ptr, ptr %121, align 8, !tbaa !44
  %.not.i817 = icmp eq ptr %i.ava, %i.avb
  br i1 %.not.i817, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit879, label %bb.kh, !prof !46

bb.kh:                                            ; preds = %bb.kg
  %i.avc = load i64, ptr %i.ava, align 8          ; 3 uses
  %i.avd = and i64 %i.avc, 1152920405095219200
  %.not.i.i818 = icmp eq i64 %i.avd, 1152920405095219200
  br i1 %.not.i.i818, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i819, label %bb.ki, !prof !46

bb.ki:                                            ; preds = %bb.kh
  %i.ave = add i64 %i.avc, 1152920405095219200
  %i.avf = and i64 %i.ave, 1152920405095219200    ; 2 uses
  %i.avg = and i64 %i.avc, -1152920405095219201
  %i.avh = or disjoint i64 %i.avf, %i.avg
  store i64 %i.avh, ptr %i.ava, align 8
  %i.avi = icmp eq i64 %i.avf, 0
  br i1 %i.avi, label %bb.kj, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i819, !prof !46

bb.kj:                                            ; preds = %bb.ki
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ava)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i819 unwind label %bb.kz

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i819: ; preds = %bb.kj, %bb.ki, %bb.kh
  %i.avj = load ptr, ptr %121, align 8, !tbaa !44 ; 5 uses
  store ptr %i.avj, ptr %i.auz, align 8, !tbaa !44
  %i.avk = load i64, ptr %i.avj, align 8          ; 3 uses
  %i.avl = lshr i64 %i.avk, 40
  %i.avm = trunc nuw nsw i64 %i.avl to i32
  %i.avn = and i32 %i.avm, 1048575                ; 3 uses
  %i.avo = icmp samesign ult i32 %i.avn, 1048574
  br i1 %i.avo, label %bb.kk, label %bb.kl, !prof !45

bb.kk:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i819
  %i.avp = add nuw nsw i32 %i.avn, 1
  %i.avq = zext nneg i32 %i.avp to i64
  %i.avr = shl nuw nsw i64 %i.avq, 40
  %i.avs = and i64 %i.avk, -1152920405095219201
  %i.avt = or i64 %i.avr, %i.avs
  store i64 %i.avt, ptr %i.avj, align 8
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit879

bb.kl:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i819
  %i.avu = icmp eq i32 %i.avn, 1048574
  br i1 %i.avu, label %bb.km, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit879, !prof !46

bb.km:                                            ; preds = %bb.kl
  %i.avv = or i64 %i.avk, 1152920405095219200
  store i64 %i.avv, ptr %i.avj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.avj)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit879 unwind label %bb.kz

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit879: ; preds = %bb.km, %bb.kg, %bb.kk, %bb.kl
  %i.avw = load ptr, ptr %121, align 8, !tbaa !44 ; 3 uses
  %i.avx = load i64, ptr %i.avw, align 8          ; 3 uses
  %i.avy = and i64 %i.avx, 1152920405095219200
  %.not.i.i880 = icmp eq i64 %i.avy, 1152920405095219200
  br i1 %.not.i.i880, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit882, label %bb.kn, !prof !46

bb.kn:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit879
  %i.avz = add i64 %i.avx, 1152920405095219200
  %i.awa = and i64 %i.avz, 1152920405095219200    ; 2 uses
  %i.awb = and i64 %i.avx, -1152920405095219201
  %i.awc = or disjoint i64 %i.awa, %i.awb
  store i64 %i.awc, ptr %i.avw, align 8
  %i.awd = icmp eq i64 %i.awa, 0
  br i1 %i.awd, label %bb.ko, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit882, !prof !46

bb.ko:                                            ; preds = %bb.kn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.avw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit882 unwind label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.awe = landingpad { ptr, i32 }
          catch ptr null
  %i.awf = extractvalue { ptr, i32 } %i.awe, 0
  call void @__clang_call_terminate(ptr %i.awf) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit882: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit879, %bb.kn, %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #25
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048.preheader

bb.kq:                                            ; preds = %bb.ld, %bb.gh
  %i.awg = landingpad { ptr, i32 }
          cleanup
  br label %.body2395

bb.kr:                                            ; preds = %bb.gk
  %i.awh = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.ks:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit608
  %i.awi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %119) #25
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  %.pn230 = phi { ptr, i32 } [ %i.awi, %bb.ks ], [ %i.awh, %bb.kr ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %118) #25
  br label %.body2395

bb.ku:                                            ; preds = %.noexc2307, %.critedge.i641, %.critedge.i626, %bb.hj, %bb.hg
  %i.awj = landingpad { ptr, i32 }
          cleanup
  br label %.body2298

bb.kv:                                            ; preds = %.noexc2318, %.critedge.i675, %bb.hz, %bb.hw, %.critedge.i660
  %i.awk = landingpad { ptr, i32 }
          cleanup
  br label %.body2320

.body2320:                                        ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2312, %bb.kv
  %eh.lpad-body2321 = phi { ptr, i32 } [ %i.awk, %bb.kv ], [ %i.ajy, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2312 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %120) #25
  br label %.body2298

.body2298:                                        ; preds = %bb.gw, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2301, %bb.ku, %.body2320
  %.pn232 = phi { ptr, i32 } [ %eh.lpad-body2321, %.body2320 ], [ %i.afk, %bb.gw ], [ %i.awj, %bb.ku ], [ %i.agy, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2301 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #25
  br label %.body2395

bb.kw:                                            ; preds = %.noexc2350, %.critedge.i744, %.noexc2339, %.critedge.i714, %.critedge.i699, %bb.jh, %bb.je, %.critedge.i729
  %i.awl = landingpad { ptr, i32 }
          cleanup
  br label %.body2395

bb.kx:                                            ; preds = %.noexc2361, %.critedge.i780, %.critedge.i765
  %i.awm = landingpad { ptr, i32 }
          cleanup
  br label %.body2363

bb.ky:                                            ; preds = %bb.jr
  %i.awn = landingpad { ptr, i32 }
          cleanup
  br label %.body2363

bb.kz:                                            ; preds = %.noexc2372, %.critedge.i813, %bb.km, %bb.kj, %.critedge.i798
  %i.awo = landingpad { ptr, i32 }
          cleanup
  br label %.body2374

.body2374:                                        ; preds = %bb.kz, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2366
  %.pn234.pn = phi { ptr, i32 } [ %i.auy, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2366 ], [ %i.awo, %bb.kz ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %121) #25
  br label %.body2363

.body2363:                                        ; preds = %bb.ky, %bb.jv, %bb.kx, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2355, %.body2374
  %.pn234.pn.pn = phi { ptr, i32 } [ %.pn234.pn, %.body2374 ], [ %i.asq, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2355 ], [ %i.awm, %bb.kx ], [ %i.awn, %bb.ky ], [ %.pn.i, %bb.jv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #25
  br label %.body2395

bb.la:                                            ; preds = %bb.bc
  %i.awp = load ptr, ptr %1, align 8, !tbaa !44   ; 5 uses
  store ptr %i.awp, ptr %122, align 8, !tbaa !44
  %i.awq = load i64, ptr %i.awp, align 8          ; 3 uses
  %i.awr = lshr i64 %i.awq, 40
  %i.aws = trunc nuw nsw i64 %i.awr to i32
  %i.awt = and i32 %i.aws, 1048575                ; 3 uses
  %i.awu = icmp samesign ult i32 %i.awt, 1048574
  br i1 %i.awu, label %bb.lb, label %bb.lc, !prof !45

bb.lb:                                            ; preds = %bb.la
  %i.awv = add nuw nsw i32 %i.awt, 1
  %i.aww = zext nneg i32 %i.awv to i64
  %i.awx = shl nuw nsw i64 %i.aww, 40
  %i.awy = and i64 %i.awq, -1152920405095219201
  %i.awz = or i64 %i.awx, %i.awy
  store i64 %i.awz, ptr %i.awp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit884

bb.lc:                                            ; preds = %bb.la
  %i.axa = icmp eq i32 %i.awt, 1048574
  br i1 %i.axa, label %bb.ld, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit884, !prof !46

bb.ld:                                            ; preds = %bb.lc
  %i.axb = or i64 %i.awq, 1152920405095219200
  store i64 %i.axb, ptr %i.awp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.awp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit884 unwind label %bb.kq

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit884: ; preds = %bb.lc, %bb.lb, %bb.ld
  %i.axc = load ptr, ptr %111, align 8, !tbaa !44 ; 5 uses
  store ptr %i.axc, ptr %123, align 8, !tbaa !44
  %i.axd = load i64, ptr %i.axc, align 8          ; 3 uses
  %i.axe = lshr i64 %i.axd, 40
  %i.axf = trunc nuw nsw i64 %i.axe to i32
  %i.axg = and i32 %i.axf, 1048575                ; 3 uses
  %i.axh = icmp samesign ult i32 %i.axg, 1048574
  br i1 %i.axh, label %bb.le, label %bb.lf, !prof !45

bb.le:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit884
  %i.axi = add nuw nsw i32 %i.axg, 1
  %i.axj = zext nneg i32 %i.axi to i64
  %i.axk = shl nuw nsw i64 %i.axj, 40
  %i.axl = and i64 %i.axd, -1152920405095219201
  %i.axm = or i64 %i.axk, %i.axl
  store i64 %i.axm, ptr %i.axc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit886

bb.lf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit884
  %i.axn = icmp eq i32 %i.axg, 1048574
  br i1 %i.axn, label %bb.lg, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit886, !prof !46

bb.lg:                                            ; preds = %bb.lf
  %i.axo = or i64 %i.axd, 1152920405095219200
  store i64 %i.axo, ptr %i.axc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.axc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit886 unwind label %bb.md

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit886: ; preds = %bb.lf, %bb.le, %bb.lg
  invoke void @_ZN4cvc58internal6theory11quantifiers15BoundedIntegers13setBoundedVarENS0_12NodeTemplateILb1EEES5_NS2_12BoundVarTypeE(ptr noundef nonnull align 8 dereferenceable(768) %0, ptr noundef nonnull align 8 %122, ptr noundef nonnull align 8 %123, i32 noundef 3)
          to label %bb.lh unwind label %bb.me

bb.lh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit886
  %i.axp = load ptr, ptr %123, align 8, !tbaa !44 ; 3 uses
  %i.axq = load i64, ptr %i.axp, align 8          ; 3 uses
  %i.axr = and i64 %i.axq, 1152920405095219200
  %.not.i.i887 = icmp eq i64 %i.axr, 1152920405095219200
  br i1 %.not.i.i887, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit889, label %bb.li, !prof !46

bb.li:                                            ; preds = %bb.lh
  %i.axs = add i64 %i.axq, 1152920405095219200
  %i.axt = and i64 %i.axs, 1152920405095219200    ; 2 uses
  %i.axu = and i64 %i.axq, -1152920405095219201
  %i.axv = or disjoint i64 %i.axt, %i.axu
  store i64 %i.axv, ptr %i.axp, align 8
  %i.axw = icmp eq i64 %i.axt, 0
  br i1 %i.axw, label %bb.lj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit889, !prof !46

bb.lj:                                            ; preds = %bb.li
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.axp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit889 unwind label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.axx = landingpad { ptr, i32 }
          catch ptr null
  %i.axy = extractvalue { ptr, i32 } %i.axx, 0
  call void @__clang_call_terminate(ptr %i.axy) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit889: ; preds = %bb.lh, %bb.li, %bb.lj
  %i.axz = load ptr, ptr %122, align 8, !tbaa !44 ; 3 uses
  %i.aya = load i64, ptr %i.axz, align 8          ; 3 uses
  %i.ayb = and i64 %i.aya, 1152920405095219200
  %.not.i.i890 = icmp eq i64 %i.ayb, 1152920405095219200
  br i1 %.not.i.i890, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit892.preheader, label %bb.ll, !prof !46

bb.ll:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit889
  %i.ayc = add i64 %i.aya, 1152920405095219200
  %i.ayd = and i64 %i.ayc, 1152920405095219200    ; 2 uses
  %i.aye = and i64 %i.aya, -1152920405095219201
  %i.ayf = or disjoint i64 %i.ayd, %i.aye
  store i64 %i.ayf, ptr %i.axz, align 8
  %i.ayg = icmp eq i64 %i.ayd, 0
  br i1 %i.ayg, label %bb.lm, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit892.preheader, !prof !46

bb.lm:                                            ; preds = %bb.ll
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.axz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit892.preheader unwind label %bb.ln

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit892.preheader: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit889, %bb.ll, %bb.lm
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit892

bb.ln:                                            ; preds = %bb.lm
  %i.ayh = landingpad { ptr, i32 }
          catch ptr null
  %i.ayi = extractvalue { ptr, i32 } %i.ayh, 0
  call void @__clang_call_terminate(ptr %i.ayi) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit892: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit892.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit991
  %.0155 = phi i32 [ %i.bmx, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit991 ], [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit892.preheader ] ; 2 uses
  %i.ayj = zext i32 %.0155 to i64                 ; 2 uses
  %i.ayk = load ptr, ptr %i.be, align 8, !tbaa !350 ; 2 uses
  %.not10.i.i.i.i893 = icmp eq ptr %i.ayk, null
  br i1 %.not10.i.i.i.i893, label %.critedge.i903, label %.lr.ph.i.i.i.i894

.lr.ph.i.i.i.i894:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit892
  %i.ayl = load ptr, ptr %111, align 8, !tbaa !44
  %i.aym = load i64, ptr %i.ayl, align 8
  %i.ayn = and i64 %i.aym, 1099511627775          ; 2 uses
  br label %bb.lo

bb.lo:                                            ; preds = %bb.lo, %.lr.ph.i.i.i.i894
  %.012.i.i.i.i895 = phi ptr [ %i.ayk, %.lr.ph.i.i.i.i894 ], [ %.1.i.i.i.i900, %bb.lo ] ; 4 uses
  %.0811.i.i.i.i896 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i894 ], [ %.19.i.i.i.i897, %bb.lo ] ; 2 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i895, i64 32
  %i.ayp = load ptr, ptr %i.ayo, align 8, !tbaa !44
  %i.ayq = load i64, ptr %i.ayp, align 8
  %i.ayr = and i64 %i.ayq, 1099511627775
  %i.ays = icmp samesign ult i64 %i.ayr, %i.ayn   ; 3 uses
  %.19.i.i.i.i897 = select i1 %i.ays, ptr %.0811.i.i.i.i896, ptr %.012.i.i.i.i895 ; 5 uses
  %.1.in.v.i.i.i.i898 = select i1 %i.ays, i64 24, i64 16
  %.1.in.i.i.i.i899 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i895, i64 %.1.in.v.i.i.i.i898
  %.1.i.i.i.i900 = load ptr, ptr %.1.in.i.i.i.i899, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i901 = icmp eq ptr %.1.i.i.i.i900, null
  br i1 %.not.i.i.i.i901, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i, label %bb.lo, !llvm.loop !9

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i: ; preds = %bb.lo
  %i.ayt = icmp eq ptr %.19.i.i.i.i897, %i.bd
  br i1 %i.ayt, label %.critedge.i903, label %bb.lp

bb.lp:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i
  %.19.i.i.i.i897.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ays, ptr %.0811.i.i.i.i896, ptr %.012.i.i.i.i895
  %.19.i.i.i.i897.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i897.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ayu = load ptr, ptr %.19.i.i.i.i897.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !44
  %i.ayv = load i64, ptr %i.ayu, align 8
  %i.ayw = and i64 %i.ayv, 1099511627775
  %i.ayx = icmp samesign ult i64 %i.ayn, %i.ayw
  br i1 %i.ayx, label %.critedge.i903, label %bb.mc

.critedge.i903:                                   ; preds = %bb.lp, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit892
  %.08.lcssa.i.i.i11.i904 = phi ptr [ %.19.i.i.i.i897, %bb.lp ], [ %.19.i.i.i.i897, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i ], [ %i.bd, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit892 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #25
  store ptr %111, ptr %58, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %108, ptr %10, align 8, !tbaa !385
  %i.ayy = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %.noexc2393 unwind label %bb.mg ; 9 uses

.noexc2393:                                       ; preds = %.critedge.i903
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %108, ptr noundef nonnull %i.ayy, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 1 dereferenceable(1) %59)
          to label %.noexc2394 unwind label %bb.mg

.noexc2394:                                       ; preds = %.noexc2393
  store ptr %i.ayy, ptr %i.bk, align 8, !tbaa !388
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 32 ; 3 uses
  %i.aza = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %108, ptr %.08.lcssa.i.i.i11.i904, ptr noundef nonnull align 8 dereferenceable(8) %i.ayz)
          to label %bb.lq unwind label %bb.lt     ; 2 uses

bb.lq:                                            ; preds = %.noexc2394
  %i.azb = extractvalue { ptr, ptr } %i.aza, 0    ; 2 uses
  %i.azc = extractvalue { ptr, ptr } %i.aza, 1    ; 4 uses
  %.not.i2388 = icmp eq ptr %i.azc, null
  br i1 %.not.i2388, label %bb.lu, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %.not.i.i.i2389 = icmp ne ptr %i.azb, null
  %i.azd = icmp eq ptr %i.azc, %i.bd
  %or.cond.i.i.i2390 = or i1 %.not.i.i.i2389, %i.azd
  br i1 %or.cond.i.i.i2390, label %.thread.i2391, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azc, i64 32
  %i.azf = load ptr, ptr %i.ayz, align 8, !tbaa !44
  %i.azg = load i64, ptr %i.azf, align 8
  %i.azh = and i64 %i.azg, 1099511627775
  %i.azi = load ptr, ptr %i.aze, align 8, !tbaa !44
  %i.azj = load i64, ptr %i.azi, align 8
  %i.azk = and i64 %i.azj, 1099511627775
  %i.azl = icmp samesign ult i64 %i.azh, %i.azk
  br label %.thread.i2391

.thread.i2391:                                    ; preds = %bb.ls, %bb.lr
  %i.azm = phi i1 [ %i.azl, %bb.ls ], [ true, %bb.lr ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.azm, ptr noundef nonnull %i.ayy, ptr noundef nonnull %i.azc, ptr noundef nonnull align 8 dereferenceable(32) %i.bd) #25
  %i.azn = load i64, ptr %i.bh, align 8, !tbaa !353
  %i.azo = add i64 %i.azn, 1
  store i64 %i.azo, ptr %i.bh, align 8, !tbaa !353
  br label %.noexc905

bb.lt:                                            ; preds = %.noexc2394
  %i.azp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.body2395

bb.lu:                                            ; preds = %bb.lq
  %i.azq = getelementptr inbounds nuw i8, ptr %i.ayy, i64 40 ; 2 uses
  %i.azr = load ptr, ptr %i.azq, align 8, !tbaa !318 ; 3 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %i.ayy, i64 48
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !319 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.azr, %i.azt
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i2608

.lr.ph.i.i.i.i2608:                               ; preds = %bb.lu, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bae, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i ], [ %i.azr, %bb.lu ] ; 2 uses
  %i.azu = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !44 ; 3 uses
  %i.azv = load i64, ptr %i.azu, align 8          ; 3 uses
  %i.azw = and i64 %i.azv, 1152920405095219200
  %.not.i.i.i.i.i.i.i2609 = icmp eq i64 %i.azw, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i2609, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, label %bb.lv, !prof !46

bb.lv:                                            ; preds = %.lr.ph.i.i.i.i2608
  %i.azx = add i64 %i.azv, 1152920405095219200
  %i.azy = and i64 %i.azx, 1152920405095219200    ; 2 uses
  %i.azz = and i64 %i.azv, -1152920405095219201
  %i.baa = or disjoint i64 %i.azy, %i.azz
  store i64 %i.baa, ptr %i.azu, align 8
  %i.bab = icmp eq i64 %i.azy, 0
  br i1 %i.bab, label %bb.lw, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, !prof !46

bb.lw:                                            ; preds = %bb.lv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.azu)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i unwind label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.bac = landingpad { ptr, i32 }
          catch ptr null
  %i.bad = extractvalue { ptr, i32 } %i.bac, 0
  call void @__clang_call_terminate(ptr %i.bad) #27
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i: ; preds = %bb.lw, %bb.lv, %.lr.ph.i.i.i.i2608
  %i.bae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i2610 = icmp eq ptr %i.bae, %i.azt
  br i1 %.not.i.i.i.i2610, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i2608, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.azq, align 8, !tbaa !318
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %bb.lu
  %i.baf = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.azr, %bb.lu ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.baf, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i, label %bb.ly

bb.ly:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.bag = getelementptr inbounds nuw i8, ptr %i.ayy, i64 56
  %i.bah = load ptr, ptr %i.bag, align 8, !tbaa !320
  %i.bai = ptrtoint ptr %i.bah to i64
  %i.baj = ptrtoint ptr %i.baf to i64
  %i.bak = sub i64 %i.bai, %i.baj
  call void @_ZdlPvm(ptr noundef nonnull %i.baf, i64 noundef %i.bak) #28
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i: ; preds = %bb.ly, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.bal = load ptr, ptr %i.ayz, align 8, !tbaa !44 ; 3 uses
  %i.bam = load i64, ptr %i.bal, align 8          ; 3 uses
  %i.ban = and i64 %i.bam, 1152920405095219200
  %.not.i.i.i2611 = icmp eq i64 %i.ban, 1152920405095219200
  br i1 %.not.i.i.i2611, label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit, label %bb.lz, !prof !46

bb.lz:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i
  %i.bao = add i64 %i.bam, 1152920405095219200
  %i.bap = and i64 %i.bao, 1152920405095219200    ; 2 uses
  %i.baq = and i64 %i.bam, -1152920405095219201
  %i.bar = or disjoint i64 %i.bap, %i.baq
  store i64 %i.bar, ptr %i.bal, align 8
  %i.bas = icmp eq i64 %i.bap, 0
  br i1 %i.bas, label %bb.ma, label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit, !prof !46

bb.ma:                                            ; preds = %bb.lz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bal)
          to label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.bat = landingpad { ptr, i32 }
          catch ptr null
  %i.bau = extractvalue { ptr, i32 } %i.bat, 0
  call void @__clang_call_terminate(ptr %i.bau) #27
  unreachable

_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i, %bb.lz, %bb.ma
  call void @_ZdlPvm(ptr noundef nonnull %i.ayy, i64 noundef 64) #28
  br label %.noexc905

.noexc905:                                        ; preds = %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit, %.thread.i2391
  %.sroa.0.010.i2392 = phi ptr [ %i.ayy, %.thread.i2391 ], [ %i.azb, %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25
  br label %bb.mc

bb.mc:                                            ; preds = %.noexc905, %bb.lp
  %.sroa.06.0.i902 = phi ptr [ %.sroa.0.010.i2392, %.noexc905 ], [ %.19.i.i.i.i897, %bb.lp ] ; 2 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i902, i64 40
  %i.baw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i902, i64 48
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !319
  %i.bay = load ptr, ptr %i.bav, align 8, !tbaa !318
  %i.baz = ptrtoint ptr %i.bax to i64
  %i.bba = ptrtoint ptr %i.bay to i64
  %i.bbb = sub i64 %i.baz, %i.bba
  %i.bbc = ashr exact i64 %i.bbb, 3
  %i.bbd = icmp ugt i64 %i.bbc, %i.ayj
  br i1 %i.bbd, label %bb.mh, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048.preheader

bb.md:                                            ; preds = %bb.lg
  %i.bbe = landingpad { ptr, i32 }
          cleanup
  br label %bb.mf

bb.me:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit886
  %i.bbf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %123) #25
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  %.pn222 = phi { ptr, i32 } [ %i.bbf, %bb.me ], [ %i.bbe, %bb.md ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %122) #25
  br label %.body2395

bb.mg:                                            ; preds = %.noexc2393, %.critedge.i903
  %i.bbg = landingpad { ptr, i32 }
          cleanup
  br label %.body2395

bb.mh:                                            ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #25
  %i.bbh = load ptr, ptr %i.be, align 8, !tbaa !350 ; 2 uses
  %.not10.i.i.i.i906 = icmp eq ptr %i.bbh, null
  br i1 %.not10.i.i.i.i906, label %.critedge.i917, label %.lr.ph.i.i.i.i907

.lr.ph.i.i.i.i907:                                ; preds = %bb.mh
  %i.bbi = load ptr, ptr %111, align 8, !tbaa !44
  %i.bbj = load i64, ptr %i.bbi, align 8
  %i.bbk = and i64 %i.bbj, 1099511627775          ; 2 uses
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mi, %.lr.ph.i.i.i.i907
  %.012.i.i.i.i908 = phi ptr [ %i.bbh, %.lr.ph.i.i.i.i907 ], [ %.1.i.i.i.i913, %bb.mi ] ; 4 uses
  %.0811.i.i.i.i909 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i907 ], [ %.19.i.i.i.i910, %bb.mi ] ; 2 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i908, i64 32
  %i.bbm = load ptr, ptr %i.bbl, align 8, !tbaa !44
  %i.bbn = load i64, ptr %i.bbm, align 8
  %i.bbo = and i64 %i.bbn, 1099511627775
  %i.bbp = icmp samesign ult i64 %i.bbo, %i.bbk   ; 3 uses
  %.19.i.i.i.i910 = select i1 %i.bbp, ptr %.0811.i.i.i.i909, ptr %.012.i.i.i.i908 ; 5 uses
  %.1.in.v.i.i.i.i911 = select i1 %i.bbp, i64 24, i64 16
  %.1.in.i.i.i.i912 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i908, i64 %.1.in.v.i.i.i.i911
  %.1.i.i.i.i913 = load ptr, ptr %.1.in.i.i.i.i912, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i914 = icmp eq ptr %.1.i.i.i.i913, null
  br i1 %.not.i.i.i.i914, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i915, label %bb.mi, !llvm.loop !9

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i915: ; preds = %bb.mi
  %i.bbq = icmp eq ptr %.19.i.i.i.i910, %i.bd
  br i1 %i.bbq, label %.critedge.i917, label %bb.mj

bb.mj:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i915
  %.19.i.i.i.i910.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bbp, ptr %.0811.i.i.i.i909, ptr %.012.i.i.i.i908
  %.19.i.i.i.i910.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i910.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bbr = load ptr, ptr %.19.i.i.i.i910.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !44
  %i.bbs = load i64, ptr %i.bbr, align 8
  %i.bbt = and i64 %i.bbs, 1099511627775
  %i.bbu = icmp samesign ult i64 %i.bbk, %i.bbt
  br i1 %i.bbu, label %.critedge.i917, label %bb.mw

.critedge.i917:                                   ; preds = %bb.mj, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i915, %bb.mh
  %.08.lcssa.i.i.i11.i918 = phi ptr [ %.19.i.i.i.i910, %bb.mj ], [ %.19.i.i.i.i910, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i915 ], [ %i.bd, %bb.mh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #25
  store ptr %111, ptr %56, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %108, ptr %9, align 8, !tbaa !385
  %i.bbv = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %.noexc2402 unwind label %bb.ny ; 9 uses

.noexc2402:                                       ; preds = %.critedge.i917
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %108, ptr noundef nonnull %i.bbv, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 1 dereferenceable(1) %57)
          to label %.noexc2403 unwind label %bb.ny

.noexc2403:                                       ; preds = %.noexc2402
  store ptr %i.bbv, ptr %i.bl, align 8, !tbaa !388
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbv, i64 32 ; 3 uses
  %i.bbx = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %108, ptr %.08.lcssa.i.i.i11.i918, ptr noundef nonnull align 8 dereferenceable(8) %i.bbw)
          to label %bb.mk unwind label %bb.mn     ; 2 uses

bb.mk:                                            ; preds = %.noexc2403
  %i.bby = extractvalue { ptr, ptr } %i.bbx, 0    ; 2 uses
  %i.bbz = extractvalue { ptr, ptr } %i.bbx, 1    ; 4 uses
  %.not.i2397 = icmp eq ptr %i.bbz, null
  br i1 %.not.i2397, label %bb.mo, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %.not.i.i.i2398 = icmp ne ptr %i.bby, null
  %i.bca = icmp eq ptr %i.bbz, %i.bd
  %or.cond.i.i.i2399 = or i1 %.not.i.i.i2398, %i.bca
  br i1 %or.cond.i.i.i2399, label %.thread.i2400, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bbz, i64 32
  %i.bcc = load ptr, ptr %i.bbw, align 8, !tbaa !44
  %i.bcd = load i64, ptr %i.bcc, align 8
  %i.bce = and i64 %i.bcd, 1099511627775
  %i.bcf = load ptr, ptr %i.bcb, align 8, !tbaa !44
  %i.bcg = load i64, ptr %i.bcf, align 8
  %i.bch = and i64 %i.bcg, 1099511627775
  %i.bci = icmp samesign ult i64 %i.bce, %i.bch
  br label %.thread.i2400

.thread.i2400:                                    ; preds = %bb.mm, %bb.ml
  %i.bcj = phi i1 [ %i.bci, %bb.mm ], [ true, %bb.ml ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bcj, ptr noundef nonnull %i.bbv, ptr noundef nonnull %i.bbz, ptr noundef nonnull align 8 dereferenceable(32) %i.bd) #25
  %i.bck = load i64, ptr %i.bh, align 8, !tbaa !353
  %i.bcl = add i64 %i.bck, 1
  store i64 %i.bcl, ptr %i.bh, align 8, !tbaa !353
  br label %.noexc919

bb.mn:                                            ; preds = %.noexc2403
  %i.bcm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.body2404

bb.mo:                                            ; preds = %bb.mk
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bbv, i64 40 ; 2 uses
  %i.bco = load ptr, ptr %i.bcn, align 8, !tbaa !318 ; 3 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bbv, i64 48
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !319 ; 2 uses
  %.not4.i.i.i.i2612 = icmp eq ptr %i.bco, %i.bcq
  br i1 %.not4.i.i.i.i2612, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i2620, label %.lr.ph.i.i.i.i2613

.lr.ph.i.i.i.i2613:                               ; preds = %bb.mo, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i2616
  %.05.i.i.i.i2614 = phi ptr [ %i.bdb, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i2616 ], [ %i.bco, %bb.mo ] ; 2 uses
  %i.bcr = load ptr, ptr %.05.i.i.i.i2614, align 8, !tbaa !44 ; 3 uses
  %i.bcs = load i64, ptr %i.bcr, align 8          ; 3 uses
  %i.bct = and i64 %i.bcs, 1152920405095219200
  %.not.i.i.i.i.i.i.i2615 = icmp eq i64 %i.bct, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i2615, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i2616, label %bb.mp, !prof !46

bb.mp:                                            ; preds = %.lr.ph.i.i.i.i2613
  %i.bcu = add i64 %i.bcs, 1152920405095219200
  %i.bcv = and i64 %i.bcu, 1152920405095219200    ; 2 uses
  %i.bcw = and i64 %i.bcs, -1152920405095219201
  %i.bcx = or disjoint i64 %i.bcv, %i.bcw
  store i64 %i.bcx, ptr %i.bcr, align 8
  %i.bcy = icmp eq i64 %i.bcv, 0
  br i1 %i.bcy, label %bb.mq, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i2616, !prof !46

bb.mq:                                            ; preds = %bb.mp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bcr)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i2616 unwind label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.bcz = landingpad { ptr, i32 }
          catch ptr null
  %i.bda = extractvalue { ptr, i32 } %i.bcz, 0
  call void @__clang_call_terminate(ptr %i.bda) #27
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i2616: ; preds = %bb.mq, %bb.mp, %.lr.ph.i.i.i.i2613
  %i.bdb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2614, i64 8 ; 2 uses
  %.not.i.i.i.i2617 = icmp eq ptr %i.bdb, %i.bcq
  br i1 %.not.i.i.i.i2617, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i2618, label %.lr.ph.i.i.i.i2613, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i2618: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i2616
  %.pr.i.i2619 = load ptr, ptr %i.bcn, align 8, !tbaa !318
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i2620

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i2620: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i2618, %bb.mo
  %i.bdc = phi ptr [ %.pr.i.i2619, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i2618 ], [ %i.bco, %bb.mo ] ; 3 uses
  %.not.i.i1.i.i2621 = icmp eq ptr %i.bdc, null
  br i1 %.not.i.i1.i.i2621, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i2622, label %bb.ms

bb.ms:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i2620
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bbv, i64 56
  %i.bde = load ptr, ptr %i.bdd, align 8, !tbaa !320
  %i.bdf = ptrtoint ptr %i.bde to i64
  %i.bdg = ptrtoint ptr %i.bdc to i64
  %i.bdh = sub i64 %i.bdf, %i.bdg
  call void @_ZdlPvm(ptr noundef nonnull %i.bdc, i64 noundef %i.bdh) #28
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i2622

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i2622: ; preds = %bb.ms, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i2620
  %i.bdi = load ptr, ptr %i.bbw, align 8, !tbaa !44 ; 3 uses
  %i.bdj = load i64, ptr %i.bdi, align 8          ; 3 uses
  %i.bdk = and i64 %i.bdj, 1152920405095219200
  %.not.i.i.i2623 = icmp eq i64 %i.bdk, 1152920405095219200
  br i1 %.not.i.i.i2623, label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit2624, label %bb.mt, !prof !46

bb.mt:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i2622
  %i.bdl = add i64 %i.bdj, 1152920405095219200
  %i.bdm = and i64 %i.bdl, 1152920405095219200    ; 2 uses
  %i.bdn = and i64 %i.bdj, -1152920405095219201
  %i.bdo = or disjoint i64 %i.bdm, %i.bdn
  store i64 %i.bdo, ptr %i.bdi, align 8
  %i.bdp = icmp eq i64 %i.bdm, 0
  br i1 %i.bdp, label %bb.mu, label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit2624, !prof !46

bb.mu:                                            ; preds = %bb.mt
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bdi)
          to label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit2624 unwind label %bb.mv

bb.mv:                                            ; preds = %bb.mu
end_hunk_3
begin_hunk_4_@_ZN4cvc58internal6theory11quantifiers15BoundedIntegers14checkOwnershipENS0_12NodeTemplateILb1EEE:bb.a
  store i64 %i.bkl, ptr %i.bkj, align 8, !tbaa !353
  br label %.noexc982

bb.ok:                                            ; preds = %.noexc2423
  %i.bkm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body2414

bb.ol:                                            ; preds = %bb.oh
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bju, i64 40 ; 2 uses
  %i.bko = load ptr, ptr %i.bkn, align 8, !tbaa !318 ; 3 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bju, i64 48
  %i.bkq = load ptr, ptr %i.bkp, align 8, !tbaa !319 ; 2 uses
  %.not4.i.i.i.i2638 = icmp eq ptr %i.bko, %i.bkq
  br i1 %.not4.i.i.i.i2638, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i2646, label %.lr.ph.i.i.i.i2639

.lr.ph.i.i.i.i2639:                               ; preds = %bb.ol, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i2642
  %.05.i.i.i.i2640 = phi ptr [ %i.blb, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i2642 ], [ %i.bko, %bb.ol ] ; 2 uses
  %i.bkr = load ptr, ptr %.05.i.i.i.i2640, align 8, !tbaa !44 ; 3 uses
  %i.bks = load i64, ptr %i.bkr, align 8          ; 3 uses
  %i.bkt = and i64 %i.bks, 1152920405095219200
  %.not.i.i.i.i.i.i.i2641 = icmp eq i64 %i.bkt, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i2641, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i2642, label %bb.om, !prof !46

bb.om:                                            ; preds = %.lr.ph.i.i.i.i2639
  %i.bku = add i64 %i.bks, 1152920405095219200
  %i.bkv = and i64 %i.bku, 1152920405095219200    ; 2 uses
  %i.bkw = and i64 %i.bks, -1152920405095219201
  %i.bkx = or disjoint i64 %i.bkv, %i.bkw
  store i64 %i.bkx, ptr %i.bkr, align 8
  %i.bky = icmp eq i64 %i.bkv, 0
  br i1 %i.bky, label %bb.on, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i2642, !prof !46

bb.on:                                            ; preds = %bb.om
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bkr)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i2642 unwind label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.bkz = landingpad { ptr, i32 }
          catch ptr null
  %i.bla = extractvalue { ptr, i32 } %i.bkz, 0
  call void @__clang_call_terminate(ptr %i.bla) #27
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i2642: ; preds = %bb.on, %bb.om, %.lr.ph.i.i.i.i2639
  %i.blb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2640, i64 8 ; 2 uses
  %.not.i.i.i.i2643 = icmp eq ptr %i.blb, %i.bkq
  br i1 %.not.i.i.i.i2643, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i2644, label %.lr.ph.i.i.i.i2639, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i2644: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i2642
  %.pr.i.i2645 = load ptr, ptr %i.bkn, align 8, !tbaa !318
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i2646

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i2646: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i2644, %bb.ol
  %i.blc = phi ptr [ %.pr.i.i2645, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i2644 ], [ %i.bko, %bb.ol ] ; 3 uses
  %.not.i.i1.i.i2647 = icmp eq ptr %i.blc, null
  br i1 %.not.i.i1.i.i2647, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i2648, label %bb.op

bb.op:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i2646
  %i.bld = getelementptr inbounds nuw i8, ptr %i.bju, i64 56
  %i.ble = load ptr, ptr %i.bld, align 8, !tbaa !320
  %i.blf = ptrtoint ptr %i.ble to i64
  %i.blg = ptrtoint ptr %i.blc to i64
  %i.blh = sub i64 %i.blf, %i.blg
  call void @_ZdlPvm(ptr noundef nonnull %i.blc, i64 noundef %i.blh) #28
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i2648

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i2648: ; preds = %bb.op, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i2646
  %i.bli = load ptr, ptr %i.bjv, align 8, !tbaa !44 ; 3 uses
  %i.blj = load i64, ptr %i.bli, align 8          ; 3 uses
  %i.blk = and i64 %i.blj, 1152920405095219200
  %.not.i.i.i2649 = icmp eq i64 %i.blk, 1152920405095219200
  br i1 %.not.i.i.i2649, label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit2650, label %bb.oq, !prof !46

bb.oq:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i2648
  %i.bll = add i64 %i.blj, 1152920405095219200
  %i.blm = and i64 %i.bll, 1152920405095219200    ; 2 uses
  %i.bln = and i64 %i.blj, -1152920405095219201
  %i.blo = or disjoint i64 %i.blm, %i.bln
  store i64 %i.blo, ptr %i.bli, align 8
  %i.blp = icmp eq i64 %i.blm, 0
  br i1 %i.blp, label %bb.or, label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit2650, !prof !46

bb.or:                                            ; preds = %bb.oq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bli)
          to label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit2650 unwind label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.blq = landingpad { ptr, i32 }
          catch ptr null
  %i.blr = extractvalue { ptr, i32 } %i.blq, 0
  call void @__clang_call_terminate(ptr %i.blr) #27
  unreachable

_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit2650: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i2648, %bb.oq, %bb.or
  call void @_ZdlPvm(ptr noundef nonnull %i.bju, i64 noundef 64) #28
  br label %.noexc982

.noexc982:                                        ; preds = %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit2650, %.thread.i2420
  %.sroa.0.010.i2421 = phi ptr [ %i.bju, %.thread.i2420 ], [ %i.bjx, %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev.exit2650 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #25
  br label %bb.ot

bb.ot:                                            ; preds = %.noexc982, %bb.og
  %.sroa.06.0.i979 = phi ptr [ %.sroa.0.010.i2421, %.noexc982 ], [ %.19.i.i.i.i973, %bb.og ] ; 3 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i979, i64 48 ; 3 uses
  %i.blt = load ptr, ptr %i.bls, align 8, !tbaa !319 ; 3 uses
  %i.blu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i979, i64 56
  %i.blv = load ptr, ptr %i.blu, align 8, !tbaa !320
  %.not.i984 = icmp eq ptr %i.blt, %i.blv
  br i1 %.not.i984, label %.invoke, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.blw = load ptr, ptr %124, align 8, !tbaa !44 ; 5 uses
  store ptr %i.blw, ptr %i.blt, align 8, !tbaa !44
  %i.blx = load i64, ptr %i.blw, align 8          ; 3 uses
  %i.bly = lshr i64 %i.blx, 40
  %i.blz = trunc nuw nsw i64 %i.bly to i32
  %i.bma = and i32 %i.blz, 1048575                ; 3 uses
  %i.bmb = icmp samesign ult i32 %i.bma, 1048574
  br i1 %i.bmb, label %bb.ov, label %bb.ow, !prof !45

bb.ov:                                            ; preds = %bb.ou
  %i.bmc = add nuw nsw i32 %i.bma, 1
  %i.bmd = zext nneg i32 %i.bmc to i64
  %i.bme = shl nuw nsw i64 %i.bmd, 40
  %i.bmf = and i64 %i.blx, -1152920405095219201
  %i.bmg = or i64 %i.bme, %i.bmf
  store i64 %i.bmg, ptr %i.blw, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i985

bb.ow:                                            ; preds = %bb.ou
  %i.bmh = icmp eq i32 %i.bma, 1048574
  br i1 %i.bmh, label %bb.ox, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i985, !prof !46

bb.ox:                                            ; preds = %bb.ow
  %i.bmi = or i64 %i.blx, 1152920405095219200
  store i64 %i.bmi, ptr %i.blw, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.blw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i985 unwind label %bb.nz

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i985: ; preds = %bb.ox, %bb.ow, %bb.ov
  %i.bmj = load ptr, ptr %i.bls, align 8, !tbaa !319
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmj, i64 8
  store ptr %i.bmk, ptr %i.bls, align 8, !tbaa !319
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

.invoke:                                          ; preds = %bb.ot, %bb.nt
  %.sroa.06.0.i946.sink = phi ptr [ %.sroa.06.0.i946, %bb.nt ], [ %.sroa.06.0.i979, %bb.ot ]
  %i.bml = phi ptr [ %i.bhr, %bb.nt ], [ %i.blt, %bb.ot ]
  %i.bmm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i946.sink, i64 40
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bmm, ptr %i.bml, ptr noundef nonnull align 8 dereferenceable(8) %124)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.nz

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %.invoke, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i985, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i
  %i.bmn = load ptr, ptr %124, align 8, !tbaa !44 ; 3 uses
  %i.bmo = load i64, ptr %i.bmn, align 8          ; 3 uses
  %i.bmp = and i64 %i.bmo, 1152920405095219200
  %.not.i.i989 = icmp eq i64 %i.bmp, 1152920405095219200
  br i1 %.not.i.i989, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit991, label %bb.oy, !prof !46

bb.oy:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.bmq = add i64 %i.bmo, 1152920405095219200
  %i.bmr = and i64 %i.bmq, 1152920405095219200    ; 2 uses
  %i.bms = and i64 %i.bmo, -1152920405095219201
  %i.bmt = or disjoint i64 %i.bmr, %i.bms
  store i64 %i.bmt, ptr %i.bmn, align 8
  %i.bmu = icmp eq i64 %i.bmr, 0
  br i1 %i.bmu, label %bb.oz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit991, !prof !46

bb.oz:                                            ; preds = %bb.oy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bmn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit991 unwind label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.bmv = landingpad { ptr, i32 }
          catch ptr null
  %i.bmw = extractvalue { ptr, i32 } %i.bmv, 0
  call void @__clang_call_terminate(ptr %i.bmw) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit991: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit, %bb.oy, %bb.oz
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #25
  %i.bmx = add i32 %.0155, 1
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit892, !llvm.loop !706

.body2414:                                        ; preds = %bb.nk, %bb.ok, %bb.nz, %bb.oa
  %.pn226 = phi { ptr, i32 } [ %i.bil, %bb.oa ], [ %i.bgk, %bb.nk ], [ %i.bik, %bb.nz ], [ %i.bkm, %bb.ok ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %124) #25
  br label %.body2404

.body2404:                                        ; preds = %bb.ny, %bb.mn, %.body2414
  %.pn226.pn = phi { ptr, i32 } [ %.pn226, %.body2414 ], [ %i.bij, %bb.ny ], [ %i.bcm, %bb.mn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #25
  br label %.body2395

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048.preheader, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1076.thread
  %i.bmy = phi i1 [ false, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1076.thread ], [ true, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048.preheader ]
  %.01543724 = phi i32 [ 1, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1076.thread ], [ 0, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048.preheader ] ; 9 uses
  %i.bmz = load ptr, ptr %i.ap, align 8, !tbaa !350 ; 2 uses
  %.not10.i.i.i.i1049 = icmp eq ptr %i.bmz, null
  br i1 %.not10.i.i.i.i1049, label %.critedge.i1060, label %.lr.ph.i.i.i.i1050

.lr.ph.i.i.i.i1050:                               ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048, %.lr.ph.i.i.i.i1050
  %.012.i.i.i.i1051 = phi ptr [ %.1.i.i.i.i1056, %.lr.ph.i.i.i.i1050 ], [ %i.bmz, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048 ] ; 4 uses
  %.0811.i.i.i.i1052 = phi ptr [ %.19.i.i.i.i1053, %.lr.ph.i.i.i.i1050 ], [ %i.ao, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048 ] ; 2 uses
  %i.bna = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1051, i64 32
  %i.bnb = load i32, ptr %i.bna, align 4, !tbaa !326
  %i.bnc = icmp slt i32 %i.bnb, %.01543724        ; 3 uses
  %.19.i.i.i.i1053 = select i1 %i.bnc, ptr %.0811.i.i.i.i1052, ptr %.012.i.i.i.i1051 ; 5 uses
  %.1.in.v.i.i.i.i1054 = select i1 %i.bnc, i64 24, i64 16
  %.1.in.i.i.i.i1055 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1051, i64 %.1.in.v.i.i.i.i1054
  %.1.i.i.i.i1056 = load ptr, ptr %.1.in.i.i.i.i1055, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i1057 = icmp eq ptr %.1.i.i.i.i1056, null
  br i1 %.not.i.i.i.i1057, label %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i1058, label %.lr.ph.i.i.i.i1050, !llvm.loop !6

_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i1058: ; preds = %.lr.ph.i.i.i.i1050
  %i.bnd = icmp eq ptr %.19.i.i.i.i1053, %i.ao
  br i1 %i.bnd, label %.critedge.i1060, label %bb.pb

bb.pb:                                            ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i1058
  %.19.i.i.i.i1053.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bnc, ptr %.0811.i.i.i.i1052, ptr %.012.i.i.i.i1051
  %.19.i.i.i.i1053.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1053.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bne = load i32, ptr %.19.i.i.i.i1053.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !326
  %i.bnf = icmp slt i32 %.01543724, %i.bne
  br i1 %i.bnf, label %.critedge.i1060, label %bb.pi

.critedge.i1060:                                  ; preds = %bb.pb, %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i1058, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048
  %.08.lcssa.i.i.i11.i1061 = phi ptr [ %.19.i.i.i.i1053, %bb.pb ], [ %.19.i.i.i.i1053, %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i1058 ], [ %i.ao, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %105, ptr %6, align 8, !tbaa !373
  %i.bng = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %.noexc2444 unwind label %bb.rk ; 11 uses

.noexc2444:                                       ; preds = %.critedge.i1060
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 32 ; 3 uses
  store i32 %.01543724, ptr %i.bnh, align 8, !tbaa !380
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bng, i64 40 ; 2 uses
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bng, i64 48 ; 2 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bng, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bni, i8 0, i64 24, i1 false)
  store ptr %i.bnj, ptr %i.bnk, align 8, !tbaa !351
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bng, i64 72
  store ptr %i.bnj, ptr %i.bnl, align 8, !tbaa !352
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bng, i64 80
  store i64 0, ptr %i.bnm, align 8, !tbaa !353
  store ptr %i.bng, ptr %i.co, align 8, !tbaa !383
  %i.bnn = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %105, ptr %.08.lcssa.i.i.i11.i1061, ptr noundef nonnull align 4 dereferenceable(4) %i.bnh)
          to label %bb.pc unwind label %bb.pf     ; 2 uses

bb.pc:                                            ; preds = %.noexc2444
  %i.bno = extractvalue { ptr, ptr } %i.bnn, 0    ; 2 uses
  %i.bnp = extractvalue { ptr, ptr } %i.bnn, 1    ; 4 uses
  %.not.i2438 = icmp eq ptr %i.bnp, null
  br i1 %.not.i2438, label %bb.pg, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %.not.i.i.i2439 = icmp ne ptr %i.bno, null
  %i.bnq = icmp eq ptr %i.bnp, %i.ao
  %or.cond.i.i.i2440 = or i1 %.not.i.i.i2439, %i.bnq
  br i1 %or.cond.i.i.i2440, label %.thread.i2441, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnp, i64 32
  %i.bns = load i32, ptr %i.bnh, align 8, !tbaa !326
  %i.bnt = load i32, ptr %i.bnr, align 4, !tbaa !326
  %i.bnu = icmp slt i32 %i.bns, %i.bnt
  br label %.thread.i2441

.thread.i2441:                                    ; preds = %bb.pe, %bb.pd
  %i.bnv = phi i1 [ %i.bnu, %bb.pe ], [ true, %bb.pd ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bnv, ptr noundef nonnull %i.bng, ptr noundef nonnull %i.bnp, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #25
  %i.bnw = load i64, ptr %i.as, align 8, !tbaa !353
  %i.bnx = add i64 %i.bnw, 1
  store i64 %i.bnx, ptr %i.as, align 8, !tbaa !353
  br label %.noexc1062

bb.pf:                                            ; preds = %.noexc2444
  %i.bny = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body2395

bb.pg:                                            ; preds = %bb.pc
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bng, i64 56
  %i.boa = load ptr, ptr %i.bnz, align 8, !tbaa !350
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bni, ptr noundef %i.boa)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i2443 unwind label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.bob = landingpad { ptr, i32 }
          catch ptr null
  %i.boc = extractvalue { ptr, i32 } %i.bob, 0
  call void @__clang_call_terminate(ptr %i.boc) #27
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i2443: ; preds = %bb.pg
  call void @_ZdlPvm(ptr noundef nonnull %i.bng, i64 noundef 88) #28
  br label %.noexc1062

.noexc1062:                                       ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i2443, %.thread.i2441
  %.sroa.0.010.i2442 = phi ptr [ %i.bng, %.thread.i2441 ], [ %i.bno, %_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i2443 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.pi

bb.pi:                                            ; preds = %.noexc1062, %bb.pb
  %.sroa.06.0.i1059 = phi ptr [ %.sroa.0.010.i2442, %.noexc1062 ], [ %.19.i.i.i.i1053, %bb.pb ] ; 2 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1059, i64 56
  %i.boe = load ptr, ptr %i.bod, align 8, !tbaa !350 ; 2 uses
  %i.bof = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1059, i64 48 ; 2 uses
  %.not10.i.i.i1064 = icmp eq ptr %i.boe, null
  br i1 %.not10.i.i.i1064, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1076.thread, label %.lr.ph.i.i.i1065

.lr.ph.i.i.i1065:                                 ; preds = %bb.pi
  %i.bog = load ptr, ptr %111, align 8, !tbaa !44
  %i.boh = load i64, ptr %i.bog, align 8
  %i.boi = and i64 %i.boh, 1099511627775          ; 2 uses
  br label %bb.pj

bb.pj:                                            ; preds = %bb.pj, %.lr.ph.i.i.i1065
  %.012.i.i.i1066 = phi ptr [ %i.boe, %.lr.ph.i.i.i1065 ], [ %.1.i.i.i1071, %bb.pj ] ; 4 uses
  %.0811.i.i.i1067 = phi ptr [ %i.bof, %.lr.ph.i.i.i1065 ], [ %.19.i.i.i1068, %bb.pj ] ; 2 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %.012.i.i.i1066, i64 32
  %i.bok = load ptr, ptr %i.boj, align 8, !tbaa !44
  %i.bol = load i64, ptr %i.bok, align 8
  %i.bom = and i64 %i.bol, 1099511627775
  %i.bon = icmp samesign ult i64 %i.bom, %i.boi   ; 3 uses
  %.19.i.i.i1068 = select i1 %i.bon, ptr %.0811.i.i.i1067, ptr %.012.i.i.i1066 ; 2 uses
  %.1.in.v.i.i.i1069 = select i1 %i.bon, i64 24, i64 16
  %.1.in.i.i.i1070 = getelementptr inbounds nuw i8, ptr %.012.i.i.i1066, i64 %.1.in.v.i.i.i1069
  %.1.i.i.i1071 = load ptr, ptr %.1.in.i.i.i1070, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i1072 = icmp eq ptr %.1.i.i.i1071, null
  br i1 %.not.i.i.i1072, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i1073, label %bb.pj, !llvm.loop !7

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i1073: ; preds = %bb.pj
  %i.boo = icmp eq ptr %.19.i.i.i1068, %i.bof
  br i1 %i.boo, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1076.thread, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1076

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1076: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i1073
  %.19.i.i.i1068.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bon, ptr %.0811.i.i.i1067, ptr %.012.i.i.i1066
  %.19.i.i.i1068.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i1068.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bop = load ptr, ptr %.19.i.i.i1068.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !44
  %i.boq = load i64, ptr %i.bop, align 8
  %i.bor = and i64 %i.boq, 1099511627775
  %i.bos = icmp samesign ult i64 %i.boi, %i.bor
  br i1 %i.bos, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1076.thread, label %bb.pk

bb.pk:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1076
  %i.bot = load ptr, ptr %i.au, align 8, !tbaa !350 ; 2 uses
  %.not10.i.i.i.i1077 = icmp eq ptr %i.bot, null
  br i1 %.not10.i.i.i.i1077, label %.critedge.i1087, label %.lr.ph.i.i.i.i1078

.lr.ph.i.i.i.i1078:                               ; preds = %bb.pk, %.lr.ph.i.i.i.i1078
  %.012.i.i.i.i1079 = phi ptr [ %.1.i.i.i.i1084, %.lr.ph.i.i.i.i1078 ], [ %i.bot, %bb.pk ] ; 4 uses
  %.0811.i.i.i.i1080 = phi ptr [ %.19.i.i.i.i1081, %.lr.ph.i.i.i.i1078 ], [ %i.at, %bb.pk ] ; 2 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1079, i64 32
  %i.bov = load i32, ptr %i.bou, align 4, !tbaa !326
  %i.bow = icmp slt i32 %i.bov, %.01543724        ; 3 uses
  %.19.i.i.i.i1081 = select i1 %i.bow, ptr %.0811.i.i.i.i1080, ptr %.012.i.i.i.i1079 ; 5 uses
  %.1.in.v.i.i.i.i1082 = select i1 %i.bow, i64 24, i64 16
  %.1.in.i.i.i.i1083 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1079, i64 %.1.in.v.i.i.i.i1082
  %.1.i.i.i.i1084 = load ptr, ptr %.1.in.i.i.i.i1083, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i1085 = icmp eq ptr %.1.i.i.i.i1084, null
  br i1 %.not.i.i.i.i1085, label %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i, label %.lr.ph.i.i.i.i1078, !llvm.loop !8

_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i: ; preds = %.lr.ph.i.i.i.i1078
  %i.box = icmp eq ptr %.19.i.i.i.i1081, %i.at
  br i1 %i.box, label %.critedge.i1087, label %bb.pl

bb.pl:                                            ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i
  %.19.i.i.i.i1081.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bow, ptr %.0811.i.i.i.i1080, ptr %.012.i.i.i.i1079
  %.19.i.i.i.i1081.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1081.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.boy = load i32, ptr %.19.i.i.i.i1081.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !326
  %i.boz = icmp slt i32 %.01543724, %i.boy
  br i1 %i.boz, label %.critedge.i1087, label %bb.ps

.critedge.i1087:                                  ; preds = %bb.pl, %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i, %bb.pk
  %.08.lcssa.i.i.i11.i1088 = phi ptr [ %.19.i.i.i.i1081, %bb.pl ], [ %.19.i.i.i.i1081, %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEES4_IiESaIS6_IKiSA_EEE11lower_boundERSC_.exit.i ], [ %i.at, %bb.pk ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %106, ptr %5, align 8, !tbaa !390
  %i.bpa = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %.noexc2453 unwind label %bb.rl ; 11 uses

.noexc2453:                                       ; preds = %.critedge.i1087
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bpa, i64 32 ; 3 uses
  store i32 %.01543724, ptr %i.bpb, align 8, !tbaa !395
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bpa, i64 40 ; 2 uses
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpa, i64 48 ; 2 uses
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpa, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bpc, i8 0, i64 24, i1 false)
  store ptr %i.bpd, ptr %i.bpe, align 8, !tbaa !351
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpa, i64 72
  store ptr %i.bpd, ptr %i.bpf, align 8, !tbaa !352
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bpa, i64 80
  store i64 0, ptr %i.bpg, align 8, !tbaa !353
  store ptr %i.bpa, ptr %i.cp, align 8, !tbaa !398
  %i.bph = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS6_ESaIS0_IKS6_bEEEESt10_Select1stISD_ES7_IiESaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %106, ptr %.08.lcssa.i.i.i11.i1088, ptr noundef nonnull align 4 dereferenceable(4) %i.bpb)
          to label %bb.pm unwind label %bb.pp     ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4cvc58internal6theory11quantifiers15BoundedIntegers14checkOwnershipENS0_12NodeTemplateILb1EEE:bb.a
  %i.cpi = and i64 %i.cph, 1152920405095219200    ; 2 uses
  %i.cpj = and i64 %i.cpf, -1152920405095219201
  %i.cpk = or disjoint i64 %i.cpi, %i.cpj
  store i64 %i.cpk, ptr %i.cnj, align 8
  %i.cpl = icmp eq i64 %i.cpi, 0
  br i1 %i.cpl, label %bb.ut, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1239, !prof !46

bb.ut:                                            ; preds = %bb.us
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cnj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1239 unwind label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.cpm = landingpad { ptr, i32 }
          catch ptr null
  %i.cpn = extractvalue { ptr, i32 } %i.cpm, 0
  call void @__clang_call_terminate(ptr %i.cpn) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1239: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1236, %bb.us, %bb.ut
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #25
  %i.cpo = load ptr, ptr %134, align 8, !tbaa !44 ; 3 uses
  %i.cpp = load i64, ptr %i.cpo, align 8          ; 3 uses
  %i.cpq = and i64 %i.cpp, 1152920405095219200
  %.not.i.i1240 = icmp eq i64 %i.cpq, 1152920405095219200
  br i1 %.not.i.i1240, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1242, label %bb.uv, !prof !46

bb.uv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1239
  %i.cpr = add i64 %i.cpp, 1152920405095219200
  %i.cps = and i64 %i.cpr, 1152920405095219200    ; 2 uses
  %i.cpt = and i64 %i.cpp, -1152920405095219201
  %i.cpu = or disjoint i64 %i.cps, %i.cpt
  store i64 %i.cpu, ptr %i.cpo, align 8
  %i.cpv = icmp eq i64 %i.cps, 0
  br i1 %i.cpv, label %bb.uw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1242, !prof !46

bb.uw:                                            ; preds = %bb.uv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cpo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1242 unwind label %bb.ux

bb.ux:                                            ; preds = %bb.uw
  %i.cpw = landingpad { ptr, i32 }
          catch ptr null
  %i.cpx = extractvalue { ptr, i32 } %i.cpw, 0
  call void @__clang_call_terminate(ptr %i.cpx) #27
  unreachable

bb.uy:                                            ; preds = %.critedge.i1159
  %i.cpy = landingpad { ptr, i32 }
          cleanup
  br label %bb.wc

bb.uz:                                            ; preds = %bb.sj, %bb.sg
  %i.cpz = landingpad { ptr, i32 }
          cleanup
  br label %bb.vd

bb.va:                                            ; preds = %bb.sm, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1165
  %i.cqa = landingpad { ptr, i32 }
          cleanup
  br label %bb.vc

bb.vb:                                            ; preds = %.critedge.i1192
  %i.cqb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %127) #25
  br label %bb.vc

bb.vc:                                            ; preds = %bb.vb, %bb.va
  %.pn174.pn = phi { ptr, i32 } [ %i.cqb, %bb.vb ], [ %i.cqa, %bb.va ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %128) #25
  br label %bb.vd

bb.vd:                                            ; preds = %bb.vc, %bb.uz
  %.pn174.pn.pn = phi { ptr, i32 } [ %.pn174.pn, %bb.vc ], [ %i.cpz, %bb.uz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #25
  br label %bb.wc

bb.ve:                                            ; preds = %bb.tb, %bb.sy
  %i.cqc = landingpad { ptr, i32 }
          cleanup
  br label %bb.vi

bb.vf:                                            ; preds = %bb.te, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1205
  %i.cqd = landingpad { ptr, i32 }
          cleanup
  br label %bb.vh

bb.vg:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1209
  %i.cqe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %130) #25
  br label %bb.vh

bb.vh:                                            ; preds = %bb.vg, %bb.vf
  %.pn179 = phi { ptr, i32 } [ %i.cqe, %bb.vg ], [ %i.cqd, %bb.vf ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %131) #25
  br label %bb.vi

bb.vi:                                            ; preds = %bb.vh, %bb.ve
  %.pn179.pn = phi { ptr, i32 } [ %.pn179, %bb.vh ], [ %i.cqc, %bb.ve ]
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #25
  br label %bb.vv

bb.vj:                                            ; preds = %bb.uh, %bb.tq, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1215
  %i.cqf = landingpad { ptr, i32 }
          cleanup
  br label %bb.vu

.split:                                           ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit1218
  %i.cqg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %133) #25
  br i1 %i.ckh, label %bb.vl, label %bb.vu

bb.vk:                                            ; preds = %bb.ts, %bb.tw
  %i.cqh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ckh, label %bb.vl, label %bb.vu

bb.vl:                                            ; preds = %.thread2755, %.split, %bb.vk
  %.pn1822754 = phi { ptr, i32 } [ %i.cqg, %.split ], [ %i.cqh, %bb.vk ], [ %i.ckx, %.thread2755 ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %132) #25
  br label %bb.vu

bb.vm:                                            ; preds = %bb.uk, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1225
  %i.cqi = landingpad { ptr, i32 }
          cleanup
  br label %bb.vq

bb.vn:                                            ; preds = %bb.un, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1229
  %i.cqj = landingpad { ptr, i32 }
          cleanup
  br label %bb.vp

bb.vo:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1233
  %i.cqk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %135) #25
  br label %bb.vp

bb.vp:                                            ; preds = %bb.vo, %bb.vn
  %.pn184 = phi { ptr, i32 } [ %i.cqk, %bb.vo ], [ %i.cqj, %bb.vn ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %136) #25
  br label %bb.vq

bb.vq:                                            ; preds = %bb.vp, %bb.vm
  %.pn184.pn = phi { ptr, i32 } [ %.pn184, %bb.vp ], [ %i.cqi, %bb.vm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #25
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %134) #25
  br label %bb.vu

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1242: ; preds = %bb.uw, %bb.uv, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1239, %_ZN4cvc58internal8TypeNodeD2Ev.exit1223
  %.4163 = phi i1 [ %.3162, %_ZN4cvc58internal8TypeNodeD2Ev.exit1223 ], [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1239 ], [ true, %bb.uv ], [ true, %bb.uw ] ; 2 uses
  %i.cql = load ptr, ptr %129, align 8, !tbaa !302 ; 3 uses
  %i.cqm = load i64, ptr %i.cql, align 8          ; 3 uses
  %i.cqn = and i64 %i.cqm, 1152920405095219200
  %.not.i.i1243 = icmp eq i64 %i.cqn, 1152920405095219200
  br i1 %.not.i.i1243, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1245, label %bb.vr, !prof !46

bb.vr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1242
  %i.cqo = add i64 %i.cqm, 1152920405095219200
  %i.cqp = and i64 %i.cqo, 1152920405095219200    ; 2 uses
  %i.cqq = and i64 %i.cqm, -1152920405095219201
  %i.cqr = or disjoint i64 %i.cqp, %i.cqq
  store i64 %i.cqr, ptr %i.cql, align 8
  %i.cqs = icmp eq i64 %i.cqp, 0
  br i1 %i.cqs, label %bb.vs, label %_ZN4cvc58internal8TypeNodeD2Ev.exit1245, !prof !46

bb.vs:                                            ; preds = %bb.vr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cql)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit1245 unwind label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  %i.cqt = landingpad { ptr, i32 }
          catch ptr null
  %i.cqu = extractvalue { ptr, i32 } %i.cqt, 0
  call void @__clang_call_terminate(ptr %i.cqu) #27
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit1245:          ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1242, %bb.vr, %bb.vs
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #25
  br i1 %i.cmj, label %.loopexit2772, label %bb.vw

bb.vu:                                            ; preds = %.split, %bb.vk, %bb.vl, %bb.vq, %bb.vj
  %.pn184.pn.pn = phi { ptr, i32 } [ %.pn184.pn, %bb.vq ], [ %i.cqf, %bb.vj ], [ %.pn1822754, %bb.vl ], [ %i.cqh, %bb.vk ], [ %i.cqg, %.split ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %129) #25
  br label %bb.vv

bb.vv:                                            ; preds = %bb.vu, %bb.vi
  %.pn184.pn.pn.pn = phi { ptr, i32 } [ %.pn184.pn.pn, %bb.vu ], [ %.pn179.pn, %bb.vi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #25
  br label %bb.wc

bb.vw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1201, %_ZN4cvc58internal8TypeNodeD2Ev.exit1245
  %.5164 = phi i1 [ %.4163, %_ZN4cvc58internal8TypeNodeD2Ev.exit1245 ], [ %.3162, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1201 ]
  %indvars.iv.next3871 = add nuw nsw i64 %indvars.iv3870, 1
  br label %.preheader, !llvm.loop !734

.loopexit2772:                                    ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit1245, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1148, %._crit_edge
  %.7166 = phi i1 [ true, %._crit_edge ], [ %.3162, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1148 ], [ %.4163, %_ZN4cvc58internal8TypeNodeD2Ev.exit1245 ]
  %i.cqv = load ptr, ptr %i.be, align 8, !tbaa !350
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %108, ptr noundef %i.cqv)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit.a unwind label %bb.vx

bb.vx:                                            ; preds = %.loopexit2772
  %i.cqw = landingpad { ptr, i32 }
          catch ptr null
  %i.cqx = extractvalue { ptr, i32 } %i.cqw, 0
  call void @__clang_call_terminate(ptr %i.cqx) #27
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit.a: ; preds = %.loopexit2772
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #25
  %i.cqy = load ptr, ptr %i.az, align 8, !tbaa !350
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %107, ptr noundef %i.cqy)
          to label %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit.a unwind label %bb.vy

bb.vy:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit.a
  %i.cqz = landingpad { ptr, i32 }
          catch ptr null
  %i.cra = extractvalue { ptr, i32 } %i.cqz, 0
  call void @__clang_call_terminate(ptr %i.cra) #27
  unreachable

_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit.a: ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit.a
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #25
  %i.crb = load ptr, ptr %i.au, align 8, !tbaa !350
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS6_ESaIS0_IKS6_bEEEESt10_Select1stISD_ES7_IiESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %106, ptr noundef %i.crb)
          to label %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEES4_IiESaIS6_IKiSA_EEED2Ev.exit.a unwind label %bb.vz

bb.vz:                                            ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit.a
  %i.crc = landingpad { ptr, i32 }
          catch ptr null
  %i.crd = extractvalue { ptr, i32 } %i.crc, 0
  call void @__clang_call_terminate(ptr %i.crd) #27
  unreachable

_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEES4_IiESaIS6_IKiSA_EEED2Ev.exit.a: ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit.a
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #25
  %i.cre = load ptr, ptr %i.ap, align 8, !tbaa !350
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %105, ptr noundef %i.cre)
          to label %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit1246 unwind label %bb.wa

bb.wa:                                            ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEES4_IiESaIS6_IKiSA_EEED2Ev.exit.a
  %i.crf = landingpad { ptr, i32 }
          catch ptr null
  %i.crg = extractvalue { ptr, i32 } %i.crf, 0
  call void @__clang_call_terminate(ptr %i.crg) #27
  unreachable

_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit1246: ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEES4_IiESaIS6_IKiSA_EEED2Ev.exit.a
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #25
  %i.crh = load ptr, ptr %i.ak, align 8, !tbaa !350
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %104, ptr noundef %i.crh)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEED2Ev.exit.a unwind label %bb.wb

bb.wb:                                            ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit1246
  %i.cri = landingpad { ptr, i32 }
          catch ptr null
  %i.crj = extractvalue { ptr, i32 } %i.cri, 0
  call void @__clang_call_terminate(ptr %i.crj) #27
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEED2Ev.exit.a: ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit1246
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #25
  br i1 %.7166, label %bb.l, label %.critedge269, !llvm.loop !735

bb.wc:                                            ; preds = %bb.uy, %bb.vd, %bb.sc, %bb.vv, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1140, %bb.ac, %bb.z
  %.pn255.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn255.pn.pn.pn.pn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1140 ], [ %i.fe, %bb.z ], [ %.pn, %bb.ac ], [ %.pn184.pn.pn.pn, %bb.vv ], [ %.pn172, %bb.sc ], [ %.pn174.pn.pn, %bb.vd ], [ %i.cpy, %bb.uy ]
  %i.crk = load ptr, ptr %i.be, align 8, !tbaa !350
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %108, ptr noundef %i.crk)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit1258 unwind label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.crl = landingpad { ptr, i32 }
          catch ptr null
  %i.crm = extractvalue { ptr, i32 } %i.crl, 0
  call void @__clang_call_terminate(ptr %i.crm) #27
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit1258: ; preds = %bb.wc
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #25
  %i.crn = load ptr, ptr %i.az, align 8, !tbaa !350
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %107, ptr noundef %i.crn)
          to label %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit1259 unwind label %bb.we

bb.we:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit1258
  %i.cro = landingpad { ptr, i32 }
          catch ptr null
  %i.crp = extractvalue { ptr, i32 } %i.cro, 0
  call void @__clang_call_terminate(ptr %i.crp) #27
  unreachable

_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit1259: ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit1258
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #25
  %i.crq = load ptr, ptr %i.au, align 8, !tbaa !350
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS6_ESaIS0_IKS6_bEEEESt10_Select1stISD_ES7_IiESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %106, ptr noundef %i.crq)
          to label %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEES4_IiESaIS6_IKiSA_EEED2Ev.exit1260 unwind label %bb.wf

bb.wf:                                            ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit1259
  %i.crr = landingpad { ptr, i32 }
          catch ptr null
  %i.crs = extractvalue { ptr, i32 } %i.crr, 0
  call void @__clang_call_terminate(ptr %i.crs) #27
  unreachable

_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEES4_IiESaIS6_IKiSA_EEED2Ev.exit1260: ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit1259
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #25
  %i.crt = load ptr, ptr %i.ap, align 8, !tbaa !350
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN4cvc58internal12NodeTemplateILb1EEES6_St4lessIS6_ESaIS0_IKS6_S6_EEEESt10_Select1stISD_ES7_IiESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %105, ptr noundef %i.crt)
          to label %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit1261 unwind label %bb.wg

bb.wg:                                            ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEES4_IiESaIS6_IKiSA_EEED2Ev.exit1260
  %i.cru = landingpad { ptr, i32 }
          catch ptr null
  %i.crv = extractvalue { ptr, i32 } %i.cru, 0
  call void @__clang_call_terminate(ptr %i.crv) #27
  unreachable

_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit1261: ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEES4_IiESaIS6_IKiSA_EEED2Ev.exit1260
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #25
  %i.crw = load ptr, ptr %i.ak, align 8, !tbaa !350
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %104, ptr noundef %i.crw)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEED2Ev.exit1262 unwind label %bb.wh

bb.wh:                                            ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit1261
  %i.crx = landingpad { ptr, i32 }
          catch ptr null
  %i.cry = extractvalue { ptr, i32 } %i.crx, 0
  call void @__clang_call_terminate(ptr %i.cry) #27
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEED2Ev.exit1262: ; preds = %_ZNSt3mapIiS_IN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEES4_IiESaIS6_IKiSA_EEED2Ev.exit1261
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #25
  br label %bb.abw

.critedge269:                                     ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEED2Ev.exit.a, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1937
  %indvars.iv3872 = phi i64 [ %indvars.iv.next3873, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1937 ], [ 0, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEED2Ev.exit.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %i.crz = load ptr, ptr %1, align 8, !tbaa !44, !noalias !774 ; 2 uses
  %i.csa = getelementptr inbounds nuw i8, ptr %i.crz, i64 8
  %i.csb = load i64, ptr %i.csa, align 8, !noalias !774
  %i.csc = trunc i64 %i.csb to i32
  %i.csd = and i32 %i.csc, 1023                   ; 2 uses
  %i.cse = icmp eq i32 %i.csd, 1023
  %i.csf = select i1 %i.cse, i32 -1, i32 %i.csd
  %i.csg = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.csf), !noalias !774
  %i.csh = icmp eq i32 %i.csg, 2
  %i.csi = getelementptr inbounds nuw i8, ptr %i.crz, i64 24
  %i.csj = zext i1 %i.csh to i64
  %i.csk = getelementptr inbounds nuw [8 x i8], ptr %i.csi, i64 %i.csj
  %i.csl = load ptr, ptr %i.csk, align 8, !tbaa !48, !noalias !774 ; 9 uses
  store ptr %i.csl, ptr %137, align 8, !tbaa !44, !alias.scope !774
  %i.csm = load i64, ptr %i.csl, align 8, !noalias !774 ; 3 uses
  %i.csn = lshr i64 %i.csm, 40
  %i.cso = trunc nuw nsw i64 %i.csn to i32
  %i.csp = and i32 %i.cso, 1048575                ; 3 uses
  %i.csq = icmp samesign ult i32 %i.csp, 1048574
  br i1 %i.csq, label %bb.wi, label %bb.wj, !prof !45

bb.wi:                                            ; preds = %.critedge269
  %i.csr = add nuw nsw i32 %i.csp, 1
  %i.css = zext nneg i32 %i.csr to i64
  %i.cst = shl nuw nsw i64 %i.css, 40
  %i.csu = and i64 %i.csm, -1152920405095219201
  %i.csv = or i64 %i.cst, %i.csu
  store i64 %i.csv, ptr %i.csl, align 8, !noalias !774
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1878

bb.wj:                                            ; preds = %.critedge269
  %i.csw = icmp eq i32 %i.csp, 1048574
  br i1 %i.csw, label %bb.wk, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1878, !prof !46

bb.wk:                                            ; preds = %bb.wj
  %i.csx = or i64 %i.csm, 1152920405095219200
  store i64 %i.csx, ptr %i.csl, align 8, !noalias !774
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.csl), !noalias !774
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1878

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1878: ; preds = %bb.wi, %bb.wj, %bb.wk
  %i.csy = getelementptr inbounds nuw i8, ptr %i.csl, i64 8 ; 2 uses
  %i.csz = load i64, ptr %i.csy, align 8
  %i.cta = trunc i64 %i.csz to i32
  %i.ctb = and i32 %i.cta, 1023                   ; 2 uses
  %i.ctc = icmp eq i32 %i.ctb, 1023
  %i.ctd = select i1 %i.ctc, i32 -1, i32 %i.ctb
  %i.cte = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ctd)
          to label %bb.wl unwind label %bb.wp

bb.wl:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1878
  %i.ctf = icmp eq i32 %i.cte, 2
  %i.ctg = load i64, ptr %i.csy, align 8
  %i.cth = lshr i64 %i.ctg, 32
  %i.cti = and i64 %i.cth, 67108863
  %i.ctj = sext i1 %i.ctf to i64
  %i.ctk = add nsw i64 %i.cti, %i.ctj
  %i.ctl = and i64 %i.ctk, 4294967295
  %.not = icmp samesign ugt i64 %i.ctl, %indvars.iv3872
  %i.ctm = load i64, ptr %i.csl, align 8          ; 3 uses
  %i.ctn = and i64 %i.ctm, 1152920405095219200
  %.not.i.i1881 = icmp eq i64 %i.ctn, 1152920405095219200
  br i1 %.not.i.i1881, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1883, label %bb.wm, !prof !46

bb.wm:                                            ; preds = %bb.wl
  %i.cto = add i64 %i.ctm, 1152920405095219200
  %i.ctp = and i64 %i.cto, 1152920405095219200    ; 2 uses
  %i.ctq = and i64 %i.ctm, -1152920405095219201
  %i.ctr = or disjoint i64 %i.ctp, %i.ctq
  store i64 %i.ctr, ptr %i.csl, align 8
  %i.cts = icmp eq i64 %i.ctp, 0
  br i1 %i.cts, label %bb.wn, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1883, !prof !46

bb.wn:                                            ; preds = %bb.wm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.csl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1883 unwind label %bb.wo

bb.wo:                                            ; preds = %bb.wn
  %i.ctt = landingpad { ptr, i32 }
          catch ptr null
  %i.ctu = extractvalue { ptr, i32 } %i.ctt, 0
  call void @__clang_call_terminate(ptr %i.ctu) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1883: ; preds = %bb.wl, %bb.wm, %bb.wn
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #25
  br i1 %.not, label %bb.wq, label %.critedge275.a

bb.wp:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1878
  %i.ctv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %137) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #25
  br label %bb.abw

bb.wq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1883
  %i.ctw = load ptr, ptr %i.cu, align 8, !tbaa !350 ; 2 uses
  %.not10.i.i.i.i1884 = icmp eq ptr %i.ctw, null
  br i1 %.not10.i.i.i.i1884, label %.critedge.i1895, label %.lr.ph.i.i.i.i1885

.lr.ph.i.i.i.i1885:                               ; preds = %bb.wq
  %i.ctx = load ptr, ptr %1, align 8, !tbaa !44   ; 2 uses
  %i.cty = load i64, ptr %i.ctx, align 8
  %i.ctz = and i64 %i.cty, 1099511627775          ; 2 uses
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wr, %.lr.ph.i.i.i.i1885
  %.012.i.i.i.i1886 = phi ptr [ %i.ctw, %.lr.ph.i.i.i.i1885 ], [ %.1.i.i.i.i1891, %bb.wr ] ; 3 uses
  %.0811.i.i.i.i1887 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i1885 ], [ %.19.i.i.i.i1888, %bb.wr ]
  %i.cua = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1886, i64 32
  %i.cub = load ptr, ptr %i.cua, align 8, !tbaa !44
  %i.cuc = load i64, ptr %i.cub, align 8
  %i.cud = and i64 %i.cuc, 1099511627775
  %i.cue = icmp samesign ult i64 %i.cud, %i.ctz   ; 2 uses
  %.19.i.i.i.i1888 = select i1 %i.cue, ptr %.0811.i.i.i.i1887, ptr %.012.i.i.i.i1886 ; 6 uses
  %.1.in.v.i.i.i.i1889 = select i1 %i.cue, i64 24, i64 16
  %.1.in.i.i.i.i1890 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1886, i64 %.1.in.v.i.i.i.i1889
  %.1.i.i.i.i1891 = load ptr, ptr %.1.in.i.i.i.i1890, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i1892 = icmp eq ptr %.1.i.i.i.i1891, null
  br i1 %.not.i.i.i.i1892, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_NS1_6theory11quantifiers12BoundVarTypeESt4lessIS3_ESaISt4pairIKS3_S6_EEES8_SaIS9_ISA_SD_EEE11lower_boundERSA_.exit.i1893, label %bb.wr, !llvm.loop !11

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_NS1_6theory11quantifiers12BoundVarTypeESt4lessIS3_ESaISt4pairIKS3_S6_EEES8_SaIS9_ISA_SD_EEE11lower_boundERSA_.exit.i1893: ; preds = %bb.wr
  %i.cuf = icmp eq ptr %.19.i.i.i.i1888, %i.cv
  br i1 %i.cuf, label %.critedge.i1895, label %bb.ws

bb.ws:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_NS1_6theory11quantifiers12BoundVarTypeESt4lessIS3_ESaISt4pairIKS3_S6_EEES8_SaIS9_ISA_SD_EEE11lower_boundERSA_.exit.i1893
end_hunk_5
