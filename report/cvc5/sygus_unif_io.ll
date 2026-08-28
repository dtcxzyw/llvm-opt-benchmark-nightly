Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sygus_unif_io?download=true
inline.NumInlined: 5166
inline.NumDeleted: 1788
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal6theory11quantifiers17EnumTypeInfoStratESt6vectorIS7_SaIS7_EEEERNS3_6RandomEEvT_SF_OT0_:bb.a
  store ptr %i.k, ptr %i.j, align 8, !tbaa !469
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt24uniform_int_distributionImEclIN4cvc58internal6RandomEEEmRT_.exit, %bb.c
  %.sroa.024.0 = phi ptr [ %i.g, %_ZNSt24uniform_int_distributionImEclIN4cvc58internal6RandomEEEmRT_.exit ], [ %.sroa.017.048, %bb.c ] ; 2 uses
  %.not46 = icmp eq ptr %.sroa.024.0, %1
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZSt22__gen_two_uniform_intsImRN4cvc58internal6RandomEESt4pairIT_S5_ES5_S5_OT0_.exit
  %.sroa.024.147 = phi ptr [ %i.an, %_ZSt22__gen_two_uniform_intsImRN4cvc58internal6RandomEESt4pairIT_S5_ES5_S5_OT0_.exit ], [ %.sroa.024.0, %bb.d ] ; 5 uses
  %i.m = ptrtoint ptr %.sroa.024.147 to i64
  %i.n = sub i64 %i.m, %i.c
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = add nsw i64 %i.o, 1
  %i.q = add nsw i64 %i.o, 2                      ; 3 uses
  %i.r = mul i64 %i.q, %i.p                       ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.s = add i64 %i.r, -1
  %i.t = tail call noundef i64 @_ZN4cvc58internal6RandomclEv(ptr noundef nonnull align 8 dereferenceable(2544) %2)
  %i.u = zext i64 %i.t to i128
  %i.v = zext i64 %i.r to i128                    ; 2 uses
  %i.w = mul nuw i128 %i.u, %i.v                  ; 2 uses
  %i.x = trunc i128 %i.w to i64                   ; 2 uses
  %.not21.i.i.i = icmp ult i64 %i.s, %i.x
  %extract15.i.i.i.i = lshr i128 %i.w, 64
  %extract.t16.i.i.i.i = trunc nuw i128 %extract15.i.i.i.i to i64 ; 2 uses
  br i1 %.not21.i.i.i, label %_ZSt22__gen_two_uniform_intsImRN4cvc58internal6RandomEESt4pairIT_S5_ES5_S5_OT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = sub i64 0, %i.r
  %i.z = urem i64 %i.y, %i.r                      ; 2 uses
  %i.aa = icmp ugt i64 %i.z, %i.x
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %_ZSt22__gen_two_uniform_intsImRN4cvc58internal6RandomEESt4pairIT_S5_ES5_S5_OT0_.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.ab = tail call noundef i64 @_ZN4cvc58internal6RandomclEv(ptr noundef nonnull align 8 dereferenceable(2544) %2)
  %i.ac = zext i64 %i.ab to i128
  %i.ad = mul nuw i128 %i.ac, %i.v                ; 2 uses
  %i.ae = trunc i128 %i.ad to i64
  %i.af = icmp ugt i64 %i.z, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %..loopexit_crit_edge.i.i.i.i, !llvm.loop !496

..loopexit_crit_edge.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %extract19.le.i.i.i.i = lshr i128 %i.ad, 64
  %extract.t20.le.i.i.i.i = trunc nuw i128 %extract19.le.i.i.i.i to i64
  br label %_ZSt22__gen_two_uniform_intsImRN4cvc58internal6RandomEESt4pairIT_S5_ES5_S5_OT0_.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ag = tail call noundef i64 @_ZN4cvc58internal6RandomclEv(ptr noundef nonnull align 8 dereferenceable(2544) %2)
  br label %_ZSt22__gen_two_uniform_intsImRN4cvc58internal6RandomEESt4pairIT_S5_ES5_S5_OT0_.exit

_ZSt22__gen_two_uniform_intsImRN4cvc58internal6RandomEESt4pairIT_S5_ES5_S5_OT0_.exit: ; preds = %bb.e, %bb.f, %..loopexit_crit_edge.i.i.i.i, %bb.g
  %.0.i.i.i = phi i64 [ %i.ag, %bb.g ], [ %extract.t16.i.i.i.i, %bb.e ], [ %extract.t20.le.i.i.i.i, %..loopexit_crit_edge.i.i.i.i ], [ %extract.t16.i.i.i.i, %bb.f ] ; 2 uses
  %i.ah = udiv i64 %.0.i.i.i, %i.q
  %i.ai = urem i64 %.0.i.i.i, %i.q
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.024.147, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.al = load ptr, ptr %.sroa.024.147, align 8, !tbaa !469
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !469
  store ptr %i.am, ptr %.sroa.024.147, align 8, !tbaa !469
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !469
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.024.147, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !469
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !469
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !469
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !469
  %.not = icmp eq ptr %i.an, %1
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !497

.lr.ph51:                                         ; preds = %.preheader, %_ZNSt24uniform_int_distributionImEclIN4cvc58internal6RandomEEEmRT_RKNS0_10param_typeE.exit
  %.sroa.017.050 = phi ptr [ %.sroa.017.0, %_ZNSt24uniform_int_distributionImEclIN4cvc58internal6RandomEEEmRT_RKNS0_10param_typeE.exit ], [ %.sroa.017.048, %.preheader ] ; 4 uses
  %i.ar = ptrtoint ptr %.sroa.017.050 to i64
  %i.as = sub i64 %i.ar, %i.c                     ; 2 uses
  %i.at = ashr exact i64 %i.as, 3                 ; 3 uses
  %.not.i = icmp eq i64 %i.as, -8
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph51
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.av = tail call noundef i64 @_ZN4cvc58internal6RandomclEv(ptr noundef nonnull align 8 dereferenceable(2544) %2)
  %i.aw = zext i64 %i.av to i128
  %i.ax = zext i64 %i.au to i128                  ; 2 uses
  %i.ay = mul nuw i128 %i.aw, %i.ax               ; 2 uses
  %i.az = trunc i128 %i.ay to i64                 ; 2 uses
  %.not21.i = icmp ult i64 %i.at, %i.az
  %extract15.i.i = lshr i128 %i.ay, 64
  %extract.t16.i.i = trunc nuw i128 %extract15.i.i to i64 ; 2 uses
  br i1 %.not21.i, label %_ZNSt24uniform_int_distributionImEclIN4cvc58internal6RandomEEEmRT_RKNS0_10param_typeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = xor i64 %i.at, -1
  %i.bb = urem i64 %i.ba, %i.au                   ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, %i.az
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZNSt24uniform_int_distributionImEclIN4cvc58internal6RandomEEEmRT_RKNS0_10param_typeE.exit

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %i.bd = tail call noundef i64 @_ZN4cvc58internal6RandomclEv(ptr noundef nonnull align 8 dereferenceable(2544) %2)
  %i.be = zext i64 %i.bd to i128
  %i.bf = mul nuw i128 %i.be, %i.ax               ; 2 uses
  %i.bg = trunc i128 %i.bf to i64
  %i.bh = icmp ugt i64 %i.bb, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i, label %..loopexit_crit_edge.i.i, !llvm.loop !496

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph.i.i
  %extract19.le.i.i = lshr i128 %i.bf, 64
  %extract.t20.le.i.i = trunc nuw i128 %extract19.le.i.i to i64
  br label %_ZNSt24uniform_int_distributionImEclIN4cvc58internal6RandomEEEmRT_RKNS0_10param_typeE.exit

bb.j:                                             ; preds = %.lr.ph51
  %i.bi = tail call noundef i64 @_ZN4cvc58internal6RandomclEv(ptr noundef nonnull align 8 dereferenceable(2544) %2)
  br label %_ZNSt24uniform_int_distributionImEclIN4cvc58internal6RandomEEEmRT_RKNS0_10param_typeE.exit

_ZNSt24uniform_int_distributionImEclIN4cvc58internal6RandomEEEmRT_RKNS0_10param_typeE.exit: ; preds = %bb.h, %bb.i, %..loopexit_crit_edge.i.i, %bb.j
  %.0.i = phi i64 [ %i.bi, %bb.j ], [ %extract.t16.i.i, %bb.h ], [ %extract.t20.le.i.i, %..loopexit_crit_edge.i.i ], [ %extract.t16.i.i, %bb.i ]
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.i ; 2 uses
  %i.bk = load ptr, ptr %.sroa.017.050, align 8, !tbaa !469
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !469
  store ptr %i.bl, ptr %.sroa.017.050, align 8, !tbaa !469
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !469
  %.sroa.017.0 = getelementptr inbounds nuw i8, ptr %.sroa.017.050, i64 8 ; 2 uses
  %.not43 = icmp eq ptr %.sroa.017.0, %1
  br i1 %.not43, label %.loopexit, label %.lr.ph51, !llvm.loop !498

.loopexit:                                        ; preds = %_ZSt22__gen_two_uniform_intsImRN4cvc58internal6RandomEESt4pairIT_S5_ES5_S5_OT0_.exit, %_ZNSt24uniform_int_distributionImEclIN4cvc58internal6RandomEEEmRT_RKNS0_10param_typeE.exit, %bb.d, %.preheader, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers17EnumTypeInfoStrat7isValidERNS2_11UnifContextE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEiSt4lessIS3_ESaISt4pairIKS3_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_iESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_iESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_iESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIiSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIiESaISt4pairIKiS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIiESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIiESaIS9_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIiESaIS9_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers11SygusUnifIo24constructBestConditionalENS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(640) %1, ptr noundef align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, unsigned int>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, unsigned int>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Auto_node", align 8 ; 6 uses
  %5 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::map<cvc5::internal::NodeTemplate<true>, unsigned int>>, std::_Select1st<std::pair<const unsigned int, std::map<cvc5::internal::NodeTemplate<true>, unsigned int>>>, std::less<unsigned int>>::_Auto_node", align 8 ; 6 uses
  %6 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, unsigned int>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, unsigned int>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Auto_node", align 8 ; 6 uses
  %7 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::map<cvc5::internal::NodeTemplate<true>, unsigned int>>, std::_Select1st<std::pair<const unsigned int, std::map<cvc5::internal::NodeTemplate<true>, unsigned int>>>, std::less<unsigned int>>::_Auto_node", align 8 ; 6 uses
  %8 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, unsigned int>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, unsigned int>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Auto_node", align 8 ; 6 uses
  %9 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::map<cvc5::internal::NodeTemplate<true>, std::map<cvc5::internal::NodeTemplate<true>, unsigned int>>>, std::_Select1st<std::pair<const unsigned int, std::map<cvc5::internal::NodeTemplate<true>, std::map<cvc5::internal::NodeTemplate<true>, unsigned int>>>>, std::less<unsigned int>>::_Auto_node", align 8 ; 6 uses
  %10 = alloca %"class.std::tuple.793", align 8   ; 4 uses
  %11 = alloca %"class.std::tuple.796", align 1   ; 3 uses
  %12 = alloca %"class.std::tuple.919", align 8   ; 4 uses
  %13 = alloca %"class.std::tuple.796", align 1   ; 3 uses
  %14 = alloca %"class.std::tuple.793", align 8   ; 4 uses
  %15 = alloca %"class.std::tuple.796", align 1   ; 3 uses
  %16 = alloca %"class.std::tuple.793", align 8   ; 4 uses
  %17 = alloca %"class.std::tuple.796", align 1   ; 3 uses
  %18 = alloca %"class.std::tuple.793", align 8   ; 4 uses
  %19 = alloca %"class.std::tuple.796", align 1   ; 3 uses
  %20 = alloca %"class.std::tuple.793", align 8   ; 4 uses
  %21 = alloca %"class.std::tuple.796", align 1   ; 3 uses
  %22 = alloca %"class.std::tuple.793", align 8   ; 4 uses
  %23 = alloca %"class.std::tuple.796", align 1   ; 3 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %25 = alloca %"class.std::map.710", align 8     ; 13 uses
  %26 = alloca %"class.std::map.716", align 8     ; 14 uses
  %27 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %28 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %29 = alloca %"class.cvc5::internal::FatalStream", align 1 ; 6 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.c = load i8, ptr %i.b, align 1, !tbaa !141, !range !89, !noundef !90
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !45     ; 5 uses
  store ptr %i.e, ptr %24, align 8, !tbaa !45
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i64 %i.f, 40
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = and i32 %i.h, 1048575                    ; 3 uses
  %i.j = icmp samesign ult i32 %i.i, 1048574
  br i1 %i.j, label %bb.c, label %bb.d, !prof !50

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw nsw i32 %i.i, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 40
  %i.n = and i64 %i.f, -1152920405095219201
  %i.o = or i64 %i.m, %i.n
  store i64 %i.o, ptr %i.e, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %i.i, 1048574
  br i1 %i.p, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !49

bb.e:                                             ; preds = %bb.d
  %i.q = or i64 %i.f, 1152920405095219200
  store i64 %i.q, ptr %i.e, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.c, %bb.d, %bb.e
  invoke void @_ZN4cvc58internal6theory11quantifiers9SygusUnif24constructBestConditionalENS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(193) %1, ptr noundef nonnull align 8 %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.r = load ptr, ptr %24, align 8, !tbaa !45    ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = and i64 %i.s, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.t, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.g, !prof !49

bb.g:                                             ; preds = %bb.f
  %i.u = add i64 %i.s, 1152920405095219200
  %i.v = and i64 %i.u, 1152920405095219200        ; 2 uses
  %i.w = and i64 %i.s, -1152920405095219201
  %i.x = or disjoint i64 %i.v, %i.w
  store i64 %i.x, ptr %i.r, align 8
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !49

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #28
  unreachable

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #21
  br label %bb.eb

bb.k:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  tail call void @_ZN4cvc58internal6theory11quantifiers9SygusUnif9print_valEPKcRSt6vectorINS0_12NodeTemplateILb1EEESaIS8_EEb(ptr noundef nonnull @.str.103, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 11 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %25, i64 32
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 3 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 13 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %26, i64 24
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 5 uses
  store i64 0, ptr %i.am, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54
  %i.ap = load ptr, ptr %3, align 8, !tbaa !53
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr i64 %i.as, 3                       ; 2 uses
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !17 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k
  %i.az = load ptr, ptr %2, align 8, !tbaa !45
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = and i64 %i.ba, 1099511627775            ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.l ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.l ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !45
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = and i64 %i.be, 1099511627775
  %i.bg = icmp samesign ult i64 %i.bf, %i.bb      ; 2 uses
  %.19.i.i.i.i = select i1 %i.bg, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.bg, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers11SygusUnifIo9EnumCacheESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i, label %bb.l, !llvm.loop !154

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers11SygusUnifIo9EnumCacheESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i: ; preds = %bb.l
  %i.bh = icmp eq ptr %.19.i.i.i.i, %i.ay
  br i1 %i.bh, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers11SygusUnifIo9EnumCacheESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !45
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = and i64 %i.bk, 1099511627775
  %i.bm = icmp samesign ult i64 %i.bb, %i.bl
  br i1 %i.bm, label %.critedge.i, label %bb.n

.critedge.i:                                      ; preds = %bb.m, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers11SygusUnifIo9EnumCacheESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i, %bb.k
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.m ], [ %.19.i.i.i.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers11SygusUnifIo9EnumCacheESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i ], [ %i.ay, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  store ptr %2, ptr %22, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.bn = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers11SygusUnifIo9EnumCacheEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.n

bb.n:                                             ; preds = %.noexc, %bb.m
  %.sroa.06.0.i = phi ptr [ %i.bn, %.noexc ], [ %.19.i.i.i.i, %bb.m ] ; 4 uses
  %.not558 = icmp eq i32 %i.au, 0                 ; 3 uses
  br i1 %.not558, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 112
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 120 ; 3 uses
  %wide.trip.count = and i64 %i.at, 4294967295
  br label %bb.p

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.n
  %.sroa.0431.0.lcssa = phi ptr [ null, %bb.n ], [ %.sroa.0431.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 9 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %bb.n ], [ %.sroa.12.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !54
  %i.bt = load ptr, ptr %i.ac, align 8, !tbaa !53
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = and i64 %i.bw, 34359738360
  %.not559 = icmp eq i64 %i.bx, 0
  br i1 %.not559, label %._crit_edge539.thread, label %.lr.ph538.a

.lr.ph538.a:                                      ; preds = %._crit_edge
  %i.by = lshr exact i64 %i.bw, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %wide.trip.count578 = and i64 %i.by, 4294967295
  br label %bb.y

bb.o:                                             ; preds = %.critedge.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit349

bb.p:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory11quantifiers11SygusUnifIo24constructBestConditionalENS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EE:bb.a
          to label %bb.br unwind label %bb.bu     ; 2 uses

bb.br:                                            ; preds = %.noexc379
  %i.lj = extractvalue { ptr, ptr } %i.li, 0      ; 2 uses
  %i.lk = extractvalue { ptr, ptr } %i.li, 1      ; 4 uses
  %.not.i371 = icmp eq ptr %i.lk, null
  br i1 %.not.i371, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.not.i.i.i372 = icmp ne ptr %i.lj, null
  %i.ll = icmp eq ptr %i.lk, %i.ks
  %or.cond.i.i.i373 = select i1 %.not.i.i.i372, i1 true, i1 %i.ll
  br i1 %or.cond.i.i.i373, label %.thread.i374, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  %i.ln = load ptr, ptr %i.lh, align 8, !tbaa !45
  %i.lo = load i64, ptr %i.ln, align 8
  %i.lp = and i64 %i.lo, 1099511627775
  %i.lq = load ptr, ptr %i.lm, align 8, !tbaa !45
  %i.lr = load i64, ptr %i.lq, align 8
  %i.ls = and i64 %i.lr, 1099511627775
  %i.lt = icmp samesign ult i64 %i.lp, %i.ls
  br label %.thread.i374

.thread.i374:                                     ; preds = %bb.bt, %bb.bs
  %i.lu = phi i1 [ %i.lt, %bb.bt ], [ true, %bb.bs ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.lu, ptr noundef nonnull %i.lg, ptr noundef nonnull %i.lk, ptr noundef nonnull align 8 dereferenceable(32) %i.ks) #21
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i174, i64 80 ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !20
  %i.lx = add i64 %i.lw, 1
  store i64 %i.lx, ptr %i.lv, align 8, !tbaa !20
  br label %.noexc191

bb.bu:                                            ; preds = %.noexc379
  %i.ly = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body

bb.bv:                                            ; preds = %bb.br
  %i.lz = load ptr, ptr %i.lh, align 8, !tbaa !45 ; 3 uses
  %i.ma = load i64, ptr %i.lz, align 8            ; 3 uses
  %i.mb = and i64 %i.ma, 1152920405095219200
  %.not.i.i.i.i.i.i.i376 = icmp eq i64 %i.mb, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i376, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i377, label %bb.bw, !prof !49

bb.bw:                                            ; preds = %bb.bv
  %i.mc = add i64 %i.ma, 1152920405095219200
  %i.md = and i64 %i.mc, 1152920405095219200      ; 2 uses
  %i.me = and i64 %i.ma, -1152920405095219201
  %i.mf = or disjoint i64 %i.md, %i.me
  store i64 %i.mf, ptr %i.lz, align 8
  %i.mg = icmp eq i64 %i.md, 0
  br i1 %i.mg, label %bb.bx, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i377, !prof !49

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lz)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i377 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mh = landingpad { ptr, i32 }
          catch ptr null
  %i.mi = extractvalue { ptr, i32 } %i.mh, 0
  call void @__clang_call_terminate(ptr %i.mi) #28
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i377: ; preds = %bb.bx, %bb.bw, %bb.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef 48) #29
  br label %.noexc191

.noexc191:                                        ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i377, %.thread.i374
  %.sroa.0.010.i375 = phi ptr [ %i.lg, %.thread.i374 ], [ %i.lj, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i377 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %.pre = load ptr, ptr %28, align 8, !tbaa !45
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc191, %bb.bq
  %i.mj = phi ptr [ %.pre, %.noexc191 ], [ %i.kt, %bb.bq ] ; 3 uses
  %.sroa.06.0.i188 = phi ptr [ %.sroa.0.010.i375, %.noexc191 ], [ %.19.i.i.i.i182, %bb.bq ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i188, i64 40 ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !64
  %i.mm = add i32 %i.ml, 1
  store i32 %i.mm, ptr %i.mk, align 4, !tbaa !64
  %i.mn = load i64, ptr %i.mj, align 8            ; 3 uses
  %i.mo = and i64 %i.mn, 1152920405095219200
  %.not.i.i193 = icmp eq i64 %i.mo, 1152920405095219200
  br i1 %.not.i.i193, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit194, label %bb.ca, !prof !49

bb.ca:                                            ; preds = %bb.bz
  %i.mp = add i64 %i.mn, 1152920405095219200
  %i.mq = and i64 %i.mp, 1152920405095219200      ; 2 uses
  %i.mr = and i64 %i.mn, -1152920405095219201
  %i.ms = or disjoint i64 %i.mq, %i.mr
  store i64 %i.ms, ptr %i.mj, align 8
  %i.mt = icmp eq i64 %i.mq, 0
  br i1 %i.mt, label %bb.cb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit194, !prof !49

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit194 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mu = landingpad { ptr, i32 }
          catch ptr null
  %i.mv = extractvalue { ptr, i32 } %i.mu, 0
  call void @__clang_call_terminate(ptr %i.mv) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit194: ; preds = %bb.bz, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  %i.mw = add nuw i32 %.0.a, 1                    ; 2 uses
  %i.mx = icmp ult i32 %i.mw, %i.au
  br i1 %i.mx, label %.lr.ph533, label %._crit_edge534, !llvm.loop !526

bb.cd:                                            ; preds = %bb.ak
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %.noexc378, %.critedge.i189, %.critedge.i175, %.noexc359, %.critedge.i161, %.critedge.i134, %.critedge.i147
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bb, %bb.ce, %bb.bu, %bb.bl, %bb.ap
  %eh.lpad-body = phi { ptr, i32 } [ %i.gr, %bb.ap ], [ %i.ix, %bb.bb ], [ %i.kk, %bb.bl ], [ %i.mz, %bb.ce ], [ %i.ly, %bb.bu ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #21
  br label %bb.cf

bb.cf:                                            ; preds = %.body, %bb.cd
  %.pn92 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.my, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #21
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ah
  %.pn92.pn = phi { ptr, i32 } [ %.pn92, %bb.cf ], [ %i.ew, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %bb.dz

bb.ch:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstIbEERKT_v.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit121
  %.165 = phi i32 [ %i.dv, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit121 ], [ %.064535, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstIbEERKT_v.exit ] ; 3 uses
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %exitcond579.not = icmp eq i64 %indvars.iv.next576, %wide.trip.count578
  br i1 %exitcond579.not, label %._crit_edge539, label %bb.y, !llvm.loop !527

._crit_edge539.thread:                            ; preds = %._crit_edge, %._crit_edge539
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  invoke void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4cvc58internal6theory11quantifiers11SygusUnifIo24constructBestConditionalENS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EE, ptr noundef nonnull @.str.78, i32 noundef 1610)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %._crit_edge539.thread
  %i.na = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.cj unwind label %bb.cl     ; 3 uses

bb.cj:                                            ; preds = %bb.ci
  %i.nb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.na, ptr noundef nonnull @.str.79, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.cl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.cj
  %i.nc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.na, ptr noundef nonnull @.str.104, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197 unwind label %bb.cl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.nd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.na, ptr noundef nonnull @.str.81, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199 unwind label %bb.cl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %29) #28
  unreachable

bb.ck:                                            ; preds = %._crit_edge539.thread
  %i.ne = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br label %bb.dz

bb.cl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.cj, %bb.ci
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %29) #28
  unreachable

.critedge:                                        ; preds = %._crit_edge539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !64
  br i1 %.not558, label %._crit_edge556, label %.lr.ph555

.lr.ph555:                                        ; preds = %.critedge
  %i.ng = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ni = uitofp i32 %.165 to double
  %i.nj = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4cvc58internal6Random9getRandomEvE9s_current)
  br label %bb.cp

._crit_edge556.loopexit:                          ; preds = %bb.du
  %i.nk = zext i32 %36 to i64
  br label %._crit_edge556

._crit_edge556:                                   ; preds = %._crit_edge556.loopexit, %.critedge
  %.057.lcssa = phi i64 [ 0, %.critedge ], [ %i.nk, %._crit_edge556.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.nl = load ptr, ptr %3, align 8, !tbaa !53
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %.057.lcssa
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !45 ; 5 uses
  store ptr %i.nn, ptr %0, align 8, !tbaa !45
  %i.no = load i64, ptr %i.nn, align 8            ; 3 uses
  %i.np = lshr i64 %i.no, 40
  %i.nq = trunc nuw nsw i64 %i.np to i32
  %i.nr = and i32 %i.nq, 1048575                  ; 3 uses
  %i.ns = icmp samesign ult i32 %i.nr, 1048574
  br i1 %i.ns, label %bb.cm, label %bb.cn, !prof !50

bb.cm:                                            ; preds = %._crit_edge556
  %i.nt = add nuw nsw i32 %i.nr, 1
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = shl nuw nsw i64 %i.nu, 40
  %i.nw = and i64 %i.no, -1152920405095219201
  %i.nx = or i64 %i.nv, %i.nw
  store i64 %i.nx, ptr %i.nn, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit201

bb.cn:                                            ; preds = %._crit_edge556
  %i.ny = icmp eq i32 %i.nr, 1048574
  br i1 %i.ny, label %bb.co, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit201, !prof !49

bb.co:                                            ; preds = %bb.cn
  %i.nz = or i64 %i.no, 1152920405095219200
  store i64 %i.nz, ptr %i.nn, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit201 unwind label %bb.dy

bb.cp:                                            ; preds = %.lr.ph555, %bb.du
  %i.oa = phi i32 [ 0, %.lr.ph555 ], [ %i.sq, %bb.du ] ; 2 uses
  %.055554 = phi i32 [ 1, %.lr.ph555 ], [ %.156456466, %bb.du ] ; 2 uses
  %.057553 = phi i32 [ 0, %.lr.ph555 ], [ %36, %bb.du ] ; 2 uses
  %.059552 = phi double [ 2.000000e+00, %.lr.ph555 ], [ %34, %bb.du ] ; 4 uses
  %i.ob = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %.not10.i.i.i.i206 = icmp eq ptr %i.ob, null
  br i1 %.not10.i.i.i.i206, label %.critedge.i217, label %.lr.ph.i.i.i.i207

.lr.ph.i.i.i.i207:                                ; preds = %bb.cp, %.lr.ph.i.i.i.i207
  %.012.i.i.i.i208 = phi ptr [ %.1.i.i.i.i213, %.lr.ph.i.i.i.i207 ], [ %i.ob, %bb.cp ] ; 4 uses
  %.0811.i.i.i.i209 = phi ptr [ %.19.i.i.i.i210, %.lr.ph.i.i.i.i207 ], [ %i.ad, %bb.cp ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i208, i64 32
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !64
  %i.oe = icmp ult i32 %i.od, %i.oa               ; 3 uses
  %.19.i.i.i.i210 = select i1 %i.oe, ptr %.0811.i.i.i.i209, ptr %.012.i.i.i.i208 ; 5 uses
  %.1.in.v.i.i.i.i211 = select i1 %i.oe, i64 24, i64 16
  %.1.in.i.i.i.i212 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i208, i64 %.1.in.v.i.i.i.i211
  %.1.i.i.i.i213 = load ptr, ptr %.1.in.i.i.i.i212, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i214 = icmp eq ptr %.1.i.i.i.i213, null
  br i1 %.not.i.i.i.i214, label %_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEES4_IjESaIS6_IKjSD_EEE11lower_boundERSF_.exit.i215, label %.lr.ph.i.i.i.i207, !llvm.loop !501

_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEES4_IjESaIS6_IKjSD_EEE11lower_boundERSF_.exit.i215: ; preds = %.lr.ph.i.i.i.i207
  %i.of = icmp eq ptr %.19.i.i.i.i210, %i.ad
  br i1 %i.of, label %.critedge.i217, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEES4_IjESaIS6_IKjSD_EEE11lower_boundERSF_.exit.i215
  %.19.i.i.i.i210.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.oe, ptr %.0811.i.i.i.i209, ptr %.012.i.i.i.i208
  %.19.i.i.i.i210.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i210.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.og = load i32, ptr %.19.i.i.i.i210.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !64
  %i.oh = icmp ult i32 %i.oa, %i.og
  br i1 %i.oh, label %.critedge.i217, label %bb.cr

.critedge.i217:                                   ; preds = %bb.cq, %_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEES4_IjESaIS6_IKjSD_EEE11lower_boundERSF_.exit.i215, %bb.cp
  %.08.lcssa.i.i.i11.i218 = phi ptr [ %.19.i.i.i.i210, %bb.cq ], [ %.19.i.i.i.i210, %_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEES4_IjESaIS6_IKjSD_EEE11lower_boundERSF_.exit.i215 ], [ %i.ad, %bb.cp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store ptr %i.a, ptr %12, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.oi = invoke ptr @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEES2_IS6_jSt4lessIS6_ESaIS0_IKS6_jEEES8_SaIS0_IS9_SC_EEEESt10_Select1stISG_ES7_IjESaISG_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESQ_IJEEEEESt17_Rb_tree_iteratorISG_ESt23_Rb_tree_const_iteratorISG_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr %.08.lcssa.i.i.i11.i218, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc219 unwind label %bb.cs

.noexc219:                                        ; preds = %.critedge.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.cr

bb.cr:                                            ; preds = %.noexc219, %bb.cq
  %.sroa.06.0.i216 = phi ptr [ %i.oi, %.noexc219 ], [ %.19.i.i.i.i210, %bb.cq ] ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i216, i64 64
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !18 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i216, i64 48 ; 2 uses
  %.not468546 = icmp eq ptr %i.ok, %i.ol
  br i1 %.not468546, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit341, label %.lr.ph550

bb.cs:                                            ; preds = %.critedge.i217
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %.body390

.lr.ph550:                                        ; preds = %bb.cr, %_ZN4cvc58internal11Cvc5ostreamlsIA3_cEERS1_RKT_.exit
  %.sroa.0423.0548 = phi ptr [ %i.sf, %_ZN4cvc58internal11Cvc5ostreamlsIA3_cEERS1_RKT_.exit ], [ %i.ok, %bb.cr ] ; 4 uses
  %.0450547 = phi double [ %.3, %_ZN4cvc58internal11Cvc5ostreamlsIA3_cEERS1_RKT_.exit ], [ 0.000000e+00, %bb.cr ] ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0423.0548, i64 32 ; 2 uses
  %i.oo = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %.not10.i.i.i.i221 = icmp eq ptr %i.oo, null
  br i1 %.not10.i.i.i.i221, label %.critedge.i232, label %.lr.ph.i.i.i.i222

.lr.ph.i.i.i.i222:                                ; preds = %.lr.ph550
  %i.op = load i32, ptr %i.a, align 4, !tbaa !64  ; 2 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ct, %.lr.ph.i.i.i.i222
  %.012.i.i.i.i223 = phi ptr [ %i.oo, %.lr.ph.i.i.i.i222 ], [ %.1.i.i.i.i228, %bb.ct ] ; 4 uses
  %.0811.i.i.i.i224 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i222 ], [ %.19.i.i.i.i225, %bb.ct ] ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i223, i64 32
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !64
  %i.os = icmp ult i32 %i.or, %i.op               ; 3 uses
  %.19.i.i.i.i225 = select i1 %i.os, ptr %.0811.i.i.i.i224, ptr %.012.i.i.i.i223 ; 5 uses
  %.1.in.v.i.i.i.i226 = select i1 %i.os, i64 24, i64 16
  %.1.in.i.i.i.i227 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i223, i64 %.1.in.v.i.i.i.i226
  %.1.i.i.i.i228 = load ptr, ptr %.1.in.i.i.i.i227, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i229 = icmp eq ptr %.1.i.i.i.i228, null
  br i1 %.not.i.i.i.i229, label %_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEES4_IjESaIS6_IKjSA_EEE11lower_boundERSC_.exit.i230, label %bb.ct, !llvm.loop !518

_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEES4_IjESaIS6_IKjSA_EEE11lower_boundERSC_.exit.i230: ; preds = %bb.ct
  %i.ot = icmp eq ptr %.19.i.i.i.i225, %i.ai
  br i1 %i.ot, label %.critedge.i232, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEES4_IjESaIS6_IKjSA_EEE11lower_boundERSC_.exit.i230
  %.19.i.i.i.i225.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.os, ptr %.0811.i.i.i.i224, ptr %.012.i.i.i.i223
  %.19.i.i.i.i225.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i225.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ou = load i32, ptr %.19.i.i.i.i225.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !64
  %i.ov = icmp ult i32 %i.op, %i.ou
  br i1 %i.ov, label %.critedge.i232, label %bb.db

.critedge.i232:                                   ; preds = %bb.cu, %_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEES4_IjESaIS6_IKjSA_EEE11lower_boundERSC_.exit.i230, %.lr.ph550
  %.08.lcssa.i.i.i11.i233 = phi ptr [ %.19.i.i.i.i225, %bb.cu ], [ %.19.i.i.i.i225, %_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEES4_IjESaIS6_IKjSA_EEE11lower_boundERSC_.exit.i230 ], [ %i.ai, %.lr.ph550 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %26, ptr %5, align 8, !tbaa !519
  %i.ow = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27
          to label %.noexc389 unwind label %bb.dn ; 11 uses

.noexc389:                                        ; preds = %.critedge.i232
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 32 ; 3 uses
  %i.oy = load i32, ptr %i.a, align 4, !tbaa !64
  store i32 %i.oy, ptr %i.ox, align 8, !tbaa !521
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 40 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 48 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oz, i8 0, i64 24, i1 false)
  store ptr %i.pa, ptr %i.pb, align 8, !tbaa !18
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ow, i64 72
  store ptr %i.pa, ptr %i.pc, align 8, !tbaa !19
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 80
  store i64 0, ptr %i.pd, align 8, !tbaa !20
  store ptr %i.ow, ptr %i.ng, align 8, !tbaa !523
  %i.pe = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS6_ESaIS0_IKS6_jEEEESt10_Select1stISD_ES7_IjESaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr %.08.lcssa.i.i.i11.i233, ptr noundef nonnull align 4 dereferenceable(4) %i.ox)
          to label %bb.cv unwind label %bb.cy     ; 2 uses

bb.cv:                                            ; preds = %.noexc389
  %i.pf = extractvalue { ptr, ptr } %i.pe, 0      ; 2 uses
  %i.pg = extractvalue { ptr, ptr } %i.pe, 1      ; 4 uses
  %.not.i383 = icmp eq ptr %i.pg, null
  br i1 %.not.i383, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %.not.i.i.i384 = icmp ne ptr %i.pf, null
  %i.ph = icmp eq ptr %i.pg, %i.ai
  %or.cond.i.i.i385 = or i1 %.not.i.i.i384, %i.ph
  br i1 %or.cond.i.i.i385, label %.thread.i386, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 32
  %i.pj = load i32, ptr %i.ox, align 8, !tbaa !64
  %i.pk = load i32, ptr %i.pi, align 4, !tbaa !64
  %i.pl = icmp ult i32 %i.pj, %i.pk
  br label %.thread.i386

.thread.i386:                                     ; preds = %bb.cx, %bb.cw
  %i.pm = phi i1 [ %i.pl, %bb.cx ], [ true, %bb.cw ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.pm, ptr noundef nonnull %i.ow, ptr noundef nonnull %i.pg, ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #21
  %i.pn = load i64, ptr %i.am, align 8, !tbaa !20
  %i.po = add i64 %i.pn, 1
  store i64 %i.po, ptr %i.am, align 8, !tbaa !20
  br label %.noexc234

bb.cy:                                            ; preds = %.noexc389
  %i.pp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS6_ESaIS0_IKS6_jEEEESt10_Select1stISD_ES7_IjESaISD_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.body390

bb.cz:                                            ; preds = %bb.cv
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ow, i64 56
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !17
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.oz, ptr noundef %i.pr)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS6_ESaIS0_IKS6_jEEEESt10_Select1stISD_ES7_IjESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i388 unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ps = landingpad { ptr, i32 }
          catch ptr null
  %i.pt = extractvalue { ptr, i32 } %i.ps, 0
  call void @__clang_call_terminate(ptr %i.pt) #28
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS6_ESaIS0_IKS6_jEEEESt10_Select1stISD_ES7_IjESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i388: ; preds = %bb.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.ow, i64 noundef 88) #29
  br label %.noexc234

.noexc234:                                        ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS6_ESaIS0_IKS6_jEEEESt10_Select1stISD_ES7_IjESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i388, %.thread.i386
  %.sroa.0.010.i387 = phi ptr [ %i.ow, %.thread.i386 ], [ %i.pf, %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS6_ESaIS0_IKS6_jEEEESt10_Select1stISD_ES7_IjESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i388 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.db

bb.db:                                            ; preds = %.noexc234, %bb.cu
  %.sroa.06.0.i231 = phi ptr [ %.sroa.0.010.i387, %.noexc234 ], [ %.19.i.i.i.i225, %bb.cu ] ; 4 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i231, i64 40 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i231, i64 56
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !17 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i231, i64 48 ; 5 uses
  %.not10.i.i.i.i236 = icmp eq ptr %i.pw, null
  br i1 %.not10.i.i.i.i236, label %.critedge.i247, label %.lr.ph.i.i.i.i237

.lr.ph.i.i.i.i237:                                ; preds = %bb.db
  %i.py = load ptr, ptr %i.on, align 8, !tbaa !45
  %i.pz = load i64, ptr %i.py, align 8
  %i.qa = and i64 %i.pz, 1099511627775            ; 2 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %.lr.ph.i.i.i.i237
  %.012.i.i.i.i238 = phi ptr [ %i.pw, %.lr.ph.i.i.i.i237 ], [ %.1.i.i.i.i243, %bb.dc ] ; 4 uses
  %.0811.i.i.i.i239 = phi ptr [ %i.px, %.lr.ph.i.i.i.i237 ], [ %.19.i.i.i.i240, %bb.dc ] ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i238, i64 32
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !45
  %i.qd = load i64, ptr %i.qc, align 8
  %i.qe = and i64 %i.qd, 1099511627775
  %i.qf = icmp samesign ult i64 %i.qe, %i.qa      ; 3 uses
  %.19.i.i.i.i240 = select i1 %i.qf, ptr %.0811.i.i.i.i239, ptr %.012.i.i.i.i238 ; 5 uses
  %.1.in.v.i.i.i.i241 = select i1 %i.qf, i64 24, i64 16
  %.1.in.i.i.i.i242 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i238, i64 %.1.in.v.i.i.i.i241
  %.1.i.i.i.i243 = load ptr, ptr %.1.in.i.i.i.i242, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i244 = icmp eq ptr %.1.i.i.i.i243, null
  br i1 %.not.i.i.i.i244, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i245, label %bb.dc, !llvm.loop !197

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i245: ; preds = %bb.dc
  %i.qg = icmp eq ptr %.19.i.i.i.i240, %i.px
  br i1 %i.qg, label %.critedge.i247, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i245
  %.19.i.i.i.i240.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.qf, ptr %.0811.i.i.i.i239, ptr %.012.i.i.i.i238
  %.19.i.i.i.i240.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i240.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.qh = load ptr, ptr %.19.i.i.i.i240.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !45
  %i.qi = load i64, ptr %i.qh, align 8
  %i.qj = and i64 %i.qi, 1099511627775
  %i.qk = icmp samesign ult i64 %i.qa, %i.qj
  br i1 %i.qk, label %.critedge.i247, label %bb.dm

.critedge.i247:                                   ; preds = %bb.dd, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i245, %bb.db
  %.08.lcssa.i.i.i11.i248 = phi ptr [ %.19.i.i.i.i240, %bb.dd ], [ %.19.i.i.i.i240, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i245 ], [ %i.px, %bb.db ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %i.on, ptr %10, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %i.pu, ptr %4, align 8, !tbaa !513
  %i.ql = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %.noexc400 unwind label %bb.dn ; 6 uses

.noexc400:                                        ; preds = %.critedge.i247
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEEvPSt13_Rb_tree_nodeIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.pu, ptr noundef nonnull %i.ql, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc401 unwind label %bb.dn

.noexc401:                                        ; preds = %.noexc400
  store ptr %i.ql, ptr %i.nh, align 8, !tbaa !515
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 32 ; 3 uses
  %i.qn = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.pu, ptr %.08.lcssa.i.i.i11.i248, ptr noundef nonnull align 8 dereferenceable(8) %i.qm)
          to label %bb.de unwind label %bb.dh     ; 2 uses

bb.de:                                            ; preds = %.noexc401
  %i.qo = extractvalue { ptr, ptr } %i.qn, 0      ; 2 uses
  %i.qp = extractvalue { ptr, ptr } %i.qn, 1      ; 4 uses
  %.not.i393 = icmp eq ptr %i.qp, null
  br i1 %.not.i393, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.not.i.i.i394 = icmp ne ptr %i.qo, null
  %i.qq = icmp eq ptr %i.qp, %i.px
  %or.cond.i.i.i395 = select i1 %.not.i.i.i394, i1 true, i1 %i.qq
  br i1 %or.cond.i.i.i395, label %.thread.i396, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 32
  %i.qs = load ptr, ptr %i.qm, align 8, !tbaa !45
  %i.qt = load i64, ptr %i.qs, align 8
  %i.qu = and i64 %i.qt, 1099511627775
  %i.qv = load ptr, ptr %i.qr, align 8, !tbaa !45
  %i.qw = load i64, ptr %i.qv, align 8
  %i.qx = and i64 %i.qw, 1099511627775
  %i.qy = icmp samesign ult i64 %i.qu, %i.qx
  br label %.thread.i396

.thread.i396:                                     ; preds = %bb.dg, %bb.df
  %i.qz = phi i1 [ %i.qy, %bb.dg ], [ true, %bb.df ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.qz, ptr noundef nonnull %i.ql, ptr noundef nonnull %i.qp, ptr noundef nonnull align 8 dereferenceable(32) %i.px) #21
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i231, i64 80 ; 2 uses
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !20
  %i.rc = add i64 %i.rb, 1
  store i64 %i.rc, ptr %i.ra, align 8, !tbaa !20
  br label %.noexc249

bb.dh:                                            ; preds = %.noexc401
  %i.rd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body390

bb.di:                                            ; preds = %bb.de
  %i.re = load ptr, ptr %i.qm, align 8, !tbaa !45 ; 3 uses
  %i.rf = load i64, ptr %i.re, align 8            ; 3 uses
  %i.rg = and i64 %i.rf, 1152920405095219200
  %.not.i.i.i.i.i.i.i398 = icmp eq i64 %i.rg, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i398, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i399, label %bb.dj, !prof !49

bb.dj:                                            ; preds = %bb.di
  %i.rh = add i64 %i.rf, 1152920405095219200
  %i.ri = and i64 %i.rh, 1152920405095219200      ; 2 uses
  %i.rj = and i64 %i.rf, -1152920405095219201
  %i.rk = or disjoint i64 %i.ri, %i.rj
  store i64 %i.rk, ptr %i.re, align 8
  %i.rl = icmp eq i64 %i.ri, 0
  br i1 %i.rl, label %bb.dk, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i399, !prof !49

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.re)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i399 unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.rm = landingpad { ptr, i32 }
          catch ptr null
  %i.rn = extractvalue { ptr, i32 } %i.rm, 0
  call void @__clang_call_terminate(ptr %i.rn) #28
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i399: ; preds = %bb.dk, %bb.dj, %bb.di
  call void @_ZdlPvm(ptr noundef nonnull %i.ql, i64 noundef 48) #29
  br label %.noexc249

.noexc249:                                        ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i399, %.thread.i396
  %.sroa.0.010.i397 = phi ptr [ %i.ql, %.thread.i396 ], [ %i.qo, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i399 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.dm

bb.dm:                                            ; preds = %.noexc249, %bb.dd
  %.sroa.06.0.i246 = phi ptr [ %.sroa.0.010.i397, %.noexc249 ], [ %.19.i.i.i.i240, %bb.dd ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i246, i64 40
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !64 ; 2 uses
  %.not84 = icmp eq i32 %i.rp, 0
  br i1 %.not84, label %_ZN4cvc58internal11Cvc5ostreamlsIA3_cEERS1_RKT_.exit, label %_ZN4cvc58internal11Cvc5ostreamlsIA7_cEERS1_RKT_.exit

_ZN4cvc58internal11Cvc5ostreamlsIA7_cEERS1_RKT_.exit: ; preds = %bb.dm
  %i.rq = uitofp i32 %i.rp to double              ; 2 uses
  %i.rr = fdiv double %i.rq, %i.ni
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0423.0548, i64 64
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !18 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.0423.0548, i64 48 ; 2 uses
  %.not469541 = icmp eq ptr %i.rt, %i.ru
  br i1 %.not469541, label %_ZN4cvc58internal11Cvc5ostreamlsIA3_cEERS1_RKT_.exit, label %.lr.ph544

bb.dn:                                            ; preds = %.noexc400, %.critedge.i247, %.critedge.i232
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %.body390

.lr.ph544:                                        ; preds = %_ZN4cvc58internal11Cvc5ostreamlsIA7_cEERS1_RKT_.exit, %bb.do
  %.sroa.0418.0543 = phi ptr [ %i.se, %bb.do ], [ %i.rt, %_ZN4cvc58internal11Cvc5ostreamlsIA7_cEERS1_RKT_.exit ] ; 2 uses
  %.1542 = phi double [ %.2, %bb.do ], [ %.0450547, %_ZN4cvc58internal11Cvc5ostreamlsIA7_cEERS1_RKT_.exit ] ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.0418.0543, i64 40
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !528 ; 2 uses
  %.not85 = icmp eq i32 %i.rx, 0
  br i1 %.not85, label %bb.do, label %_ZN4cvc58internal11Cvc5ostreamlsIA2_cEERS1_RKT_.exit316

_ZN4cvc58internal11Cvc5ostreamlsIA2_cEERS1_RKT_.exit316: ; preds = %.lr.ph544
  %i.ry = uitofp i32 %i.rx to double
  %i.rz = fdiv double %i.ry, %i.rq                ; 2 uses
  %i.sa = fneg double %i.rz
  %i.sb = call double @log2(double noundef %i.rz) #21
  %i.sc = fmul double %i.sb, %i.sa
  %i.sd = call double @llvm.fmuladd.f64(double %i.rr, double %i.sc, double %.1542)
  br label %bb.do

bb.do:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsIA2_cEERS1_RKT_.exit316, %.lr.ph544
  %.2 = phi double [ %.1542, %.lr.ph544 ], [ %i.sd, %_ZN4cvc58internal11Cvc5ostreamlsIA2_cEERS1_RKT_.exit316 ] ; 2 uses
  %i.se = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0418.0543) #31 ; 2 uses
  %.not469 = icmp eq ptr %i.se, %i.ru
  br i1 %.not469, label %_ZN4cvc58internal11Cvc5ostreamlsIA3_cEERS1_RKT_.exit, label %.lr.ph544

_ZN4cvc58internal11Cvc5ostreamlsIA3_cEERS1_RKT_.exit: ; preds = %bb.do, %_ZN4cvc58internal11Cvc5ostreamlsIA7_cEERS1_RKT_.exit, %bb.dm
  %.3 = phi double [ %.0450547, %bb.dm ], [ %.0450547, %_ZN4cvc58internal11Cvc5ostreamlsIA7_cEERS1_RKT_.exit ], [ %.2, %bb.do ] ; 2 uses
  %i.sf = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0423.0548) #31 ; 2 uses
  %.not468 = icmp eq ptr %i.sf, %i.ol
  br i1 %.not468, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit341, label %.lr.ph550

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit341: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsIA3_cEERS1_RKT_.exit, %bb.cr
  %.0450.lcssa = phi double [ 0.000000e+00, %bb.cr ], [ %.3, %_ZN4cvc58internal11Cvc5ostreamlsIA3_cEERS1_RKT_.exit ] ; 4 uses
  %i.sg = fcmp oeq double %.0450.lcssa, %.059552
  br i1 %i.sg, label %bb.dp, label %bb.dt

bb.dp:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit341
  %i.sh = add nsw i32 %.055554, 1                 ; 3 uses
  %i.si = load i8, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  %i.sj = icmp eq i8 %i.si, 0
  br i1 %i.sj, label %bb.dq, label %bb.dr, !prof !467

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN4cvc58internal6RandomC1Em(ptr noundef nonnull align 8 dereferenceable(2544) @_ZZN4cvc58internal6Random9getRandomEvE9s_current, i64 noundef 0)
          to label %.noexc342 unwind label %bb.ds

.noexc342:                                        ; preds = %bb.dq
  %i.sk = call i32 @__cxa_thread_atexit(ptr nonnull @_ZN4cvc58internal6RandomD1Ev, ptr nonnull @_ZZN4cvc58internal6Random9getRandomEvE9s_current, ptr nonnull @__dso_handle) #21 ; 0 uses
  store i8 1, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  br label %bb.dr

bb.dr:                                            ; preds = %.noexc342, %bb.dp
  %i.sl = sitofp i32 %i.sh to double
  %i.sm = fdiv double 1.000000e+00, %i.sl
  %i.sn = invoke noundef zeroext i1 @_ZN4cvc58internal6Random12pickWithProbEd(ptr noundef nonnull align 8 dereferenceable(2544) %i.nj, double noundef %i.sm)
          to label %31 unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dq, %bb.dr
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %.body390

bb.dt:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit341
  %i.sp = fcmp olt double %.0450.lcssa, %.059552  ; 3 uses
  %30 = load i32, ptr %i.a, align 4               ; 2 uses
  %.0450..059 = select i1 %i.sp, double %.0450.lcssa, double %.059552
  %..055 = select i1 %i.sp, i32 1, i32 %.055554
  %..057 = select i1 %i.sp, i32 %30, i32 %.057553
  br label %bb.du

31:                                               ; preds = %bb.dr
  %32 = load i32, ptr %i.a, align 4               ; 3 uses
  br i1 %i.sn, label %33, label %bb.du

33:                                               ; preds = %31
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %33, %31
  %34 = phi double [ %.059552, %31 ], [ %.0450..059, %bb.dt ], [ %.0450.lcssa, %33 ]
  %.156456466 = phi i32 [ %i.sh, %31 ], [ %..055, %bb.dt ], [ %i.sh, %33 ]
  %35 = phi i32 [ %32, %31 ], [ %30, %bb.dt ], [ %32, %33 ]
  %36 = phi i32 [ %.057553, %31 ], [ %..057, %bb.dt ], [ %32, %33 ] ; 2 uses
  %i.sq = add i32 %35, 1                          ; 3 uses
  store i32 %i.sq, ptr %i.a, align 4, !tbaa !64
  %i.sr = icmp ult i32 %i.sq, %i.au
  br i1 %i.sr, label %bb.cp, label %._crit_edge556.loopexit, !llvm.loop !530

.body390:                                         ; preds = %bb.dn, %bb.dh, %bb.cy, %bb.cs, %bb.ds
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rd, %bb.dh ], [ %i.so, %bb.ds ], [ %i.pp, %bb.cy ], [ %i.om, %bb.cs ], [ %i.rv, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.dz

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit201: ; preds = %bb.cn, %bb.cm, %bb.co
  %.not.i.i.i343 = icmp eq ptr %.sroa.0431.0.lcssa, null
  br i1 %.not.i.i.i343, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.dv

bb.dv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit201
  %i.ss = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.st = ptrtoint ptr %.sroa.0431.0.lcssa to i64
  %i.su = sub i64 %i.ss, %i.st
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0431.0.lcssa, i64 noundef %i.su) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit201, %bb.dv
  %i.sv = load ptr, ptr %i.aj, align 8, !tbaa !17
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS6_ESaIS0_IKS6_jEEEESt10_Select1stISD_ES7_IjESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef %i.sv)
          to label %_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEES4_IjESaIS6_IKjSA_EEED2Ev.exit unwind label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.sw = landingpad { ptr, i32 }
          catch ptr null
  %i.sx = extractvalue { ptr, i32 } %i.sw, 0
  call void @__clang_call_terminate(ptr %i.sx) #28
  unreachable

_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEES4_IjESaIS6_IKjSA_EEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  %i.sy = load ptr, ptr %i.ae, align 8, !tbaa !17
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEES2_IS6_jSt4lessIS6_ESaIS0_IKS6_jEEES8_SaIS0_IS9_SC_EEEESt10_Select1stISG_ES7_IjESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef %i.sy)
          to label %_ZNSt6vectorIjSaIjEED2Ev.exit345 unwind label %bb.dx

bb.dx:                                            ; preds = %_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEES4_IjESaIS6_IKjSA_EEED2Ev.exit
  %i.sz = landingpad { ptr, i32 }
          catch ptr null
  %i.ta = extractvalue { ptr, i32 } %i.sz, 0
  call void @__clang_call_terminate(ptr %i.ta) #28
  unreachable

_ZNSt6vectorIjSaIjEED2Ev.exit345:                 ; preds = %_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEES4_IjESaIS6_IKjSA_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit

bb.dy:                                            ; preds = %bb.co
  %i.tb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dz:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ck, %bb.cg, %bb.ag, %bb.dy, %.body390
  %.sroa.0431.0521 = phi ptr [ %.sroa.0431.0.lcssa, %bb.dy ], [ %.sroa.0431.0.lcssa, %bb.ck ], [ %.sroa.0431.0.lcssa, %bb.ag ], [ %.sroa.0431.0.lcssa, %bb.cg ], [ %.sroa.0431.0.lcssa, %.body390 ], [ %.sroa.0431.0527, %.loopexit ], [ %.sroa.0431.0527, %.loopexit.split-lp ] ; 3 uses
  %.sroa.12.0513 = phi ptr [ %.sroa.12.0.lcssa, %bb.dy ], [ %.sroa.12.0.lcssa, %bb.ck ], [ %.sroa.12.0.lcssa, %bb.ag ], [ %.sroa.12.0.lcssa, %bb.cg ], [ %.sroa.12.0.lcssa, %.body390 ], [ %.sroa.12.0529, %.loopexit ], [ %.sroa.12.0529, %.loopexit.split-lp ]
  %.pn97 = phi { ptr, i32 } [ %i.tb, %bb.dy ], [ %i.ne, %bb.ck ], [ %i.ev, %bb.ag ], [ %.pn92.pn, %bb.cg ], [ %.pn.pn.pn.pn, %.body390 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i346 = icmp eq ptr %.sroa.0431.0521, null
  br i1 %.not.i.i.i346, label %_ZNSt6vectorIjSaIjEED2Ev.exit349, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.tc = ptrtoint ptr %.sroa.12.0513 to i64
  %i.td = ptrtoint ptr %.sroa.0431.0521 to i64
  %i.te = sub i64 %i.tc, %i.td
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0431.0521, i64 noundef %i.te) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit349

_ZNSt6vectorIjSaIjEED2Ev.exit349:                 ; preds = %bb.o, %bb.dz, %bb.ea
  %.pn97.pn = phi { ptr, i32 } [ %i.cf, %bb.o ], [ %.pn97, %bb.dz ], [ %.pn97, %bb.ea ]
  call void @_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEES4_IjESaIS6_IKjSA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEES4_IjESaIS6_IKjSD_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %bb.eb

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.h, %bb.g, %bb.f, %_ZNSt6vectorIjSaIjEED2Ev.exit345
  ret void

bb.eb:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit349, %bb.j
  %.pn97.pn.pn = phi { ptr, i32 } [ %.pn97.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit349 ], [ %i.ab, %bb.j ]
  resume { ptr, i32 } %.pn97.pn.pn
}

declare void @_ZN4cvc58internal6theory11quantifiers9SygusUnif24constructBestConditionalENS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(193), ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

declare noundef zeroext i1 @_ZN4cvc58internal6Random12pickWithProbEd(ptr noundef nonnull align 8 dereferenceable(2544), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEES4_IjESaIS6_IKjSA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS6_ESaIS0_IKS6_jEEEESt10_Select1stISD_ES7_IjESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS6_ESaIS0_IKS6_jEEEESt10_Select1stISD_ES7_IjESaISD_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS6_ESaIS0_IKS6_jEEEESt10_Select1stISD_ES7_IjESaISD_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIjS_IN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEES4_IjESaIS6_IKjSD_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEES2_IS6_jSt4lessIS6_ESaIS0_IKS6_jEEES8_SaIS0_IS9_SC_EEEESt10_Select1stISG_ES7_IjESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEES2_IS6_jSt4lessIS6_ESaIS0_IKS6_jEEES8_SaIS0_IS9_SC_EEEESt10_Select1stISG_ES7_IjESaISG_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjSt3mapIN4cvc58internal12NodeTemplateILb1EEES2_IS6_jSt4lessIS6_ESaIS0_IKS6_jEEES8_SaIS0_IS9_SC_EEEESt10_Select1stISG_ES7_IjESaISG_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory11quantifiers13UnifContextIoD0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN4cvc58internal6theory11quantifiers13UnifContextIoD2Ev(ptr noundef nonnull align 8 dead_on_return(132) dereferenceable(132) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #29
  ret void
}

declare void @_ZN4cvc58internal6theory11quantifiers9SygusUnif23constructBestSolvedTermENS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(193), ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN4cvc58internal6theory11quantifiers9SygusUnif27constructBestStringToConcatERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EERKSt3mapIS6_mSt4lessIS6_ESaISt4pairIKS6_mEEERKSB_IS6_S4_ImSaImEESD_SaISE_ISF_SM_EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(193), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #13 section ".text.startup" comdat($_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZGVN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8
  %i.c = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.e unwind label %bb.f       ; 3 uses

bb.e:                                             ; preds = %bb.d
  store i64 1152920405095219200, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !44
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  resume { ptr, i32 } %i.h

_ZN4cvc58internal4expr9NodeValue4nullEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.i = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !44 ; 5 uses
  store ptr %i.i, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !45
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = lshr i64 %i.j, 40
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = and i32 %i.l, 1048575                    ; 3 uses
  %i.n = icmp samesign ult i32 %i.m, 1048574
  br i1 %i.n, label %bb.g, label %bb.h, !prof !50

bb.g:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue4nullEv.exit
  %i.o = add nuw nsw i32 %i.m, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 40
  %i.r = and i64 %i.j, -1152920405095219201
  %i.s = or i64 %i.q, %i.r
  store i64 %i.s, ptr %i.i, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

bb.h:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue4nullEv.exit
end_hunk_1
