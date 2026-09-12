Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/LogConfigParser?download=true
inline.NumInlined: 2998
inline.NumDeleted: 1336
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN5folly18logConfigToDynamicERKNS_16LogHandlerConfigE:bb.a
  store i64 0, ptr %i.ad, align 8, !tbaa !75
  store i8 0, ptr %i.s, align 8, !tbaa !20
  %i.ap = load i32, ptr %6, align 8, !tbaa !117   ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.ap, 5
  br i1 %.not.i.not.i.i.i, label %_ZN5folly7dynamic6insertIS0_S0_EENSt9enable_ifIXntsr3std14is_convertibleIT_N9__gnu_cxx17__normal_iteratorIPS0_St6vectorIS0_SaIS0_EEEEEE5valueEvE4typeEOS3_OT0_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE, align 8, !tbaa !26
  invoke void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.aq, i32 noundef %i.ap) #3
          to label %.noexc37 unwind label %bb.s

.noexc37:                                         ; preds = %bb.n
  unreachable

_ZN5folly7dynamic6insertIS0_S0_EENSt9enable_ifIXntsr3std14is_convertibleIT_N9__gnu_cxx17__normal_iteratorIPS0_St6vectorIS0_SaIS0_EEEEEE5valueEvE4typeEOS3_OT0_.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !384
  store ptr %9, ptr %3, align 8, !tbaa !124, !alias.scope !385, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !384
  %i.ar = invoke noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %.noexc38 unwind label %bb.s   ; 2 uses

.noexc38:                                         ; preds = %_ZN5folly7dynamic6insertIS0_S0_EENSt9enable_ifIXntsr3std14is_convertibleIT_N9__gnu_cxx17__normal_iteratorIPS0_St6vectorIS0_SaIS0_EEEEEE5valueEvE4typeEOS3_OT0_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.at = lshr i64 %i.ar, 56
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplIS4_JRKSt21piecewise_construct_tSt5tupleIJOS4_EESE_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSI_IKS4_S4_EEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.145") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 %i.ar, i64 %.sroa.speculated.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %.noexc38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !384
  %.sroa.03.0.copyload.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !143, !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !384
  %i.au = load ptr, ptr %.sroa.03.0.copyload.i.i.i.i, align 8, !tbaa !121
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %10) #29 ; 0 uses
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #29
  %i.ax = load ptr, ptr %11, align 8, !tbaa !47   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.s
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.o
  %i.az = load i64, ptr %i.s, align 8, !tbaa !20
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #29
  br label %bb.t

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #29
  br label %bb.u

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.s:                                             ; preds = %.noexc38, %_ZN5folly7dynamic6insertIS0_S0_EENSt9enable_ifIXntsr3std14is_convertibleIT_N9__gnu_cxx17__normal_iteratorIPS0_St6vectorIS0_SaIS0_EEEEEE5valueEvE4typeEOS3_OT0_.exit.i, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #29
  %i.bf = load ptr, ptr %11, align 8, !tbaa !47   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.s
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.s
  %i.bh = load i64, ptr %i.s, align 8, !tbaa !20
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.r
  %.pn15.pn = phi { ptr, i32 } [ %i.bd, %bb.r ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.be, %bb.s ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #29
  br label %bb.u

bb.t:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i32 5, ptr %0, align 8, !tbaa !117
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !144
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !144
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bk, align 8, !tbaa !144
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.u:                                             ; preds = %bb.p, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.sink = phi ptr [ %6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %7, %bb.q ], [ %7, %bb.p ]
  %.pn18.pn = phi { ptr, i32 } [ %.pn15.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.bc, %bb.q ], [ %i.bb, %bb.p ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.sink) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.d
  %.pn21 = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn18.pn, %bb.u ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn21
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5folly7dynamic6objectES0_S0_(ptr dead_on_unwind noalias writable sret(%"struct.folly::dynamic::ObjectMaker") align 8 %0, ptr noundef align 8 %1, ptr noundef align 8 %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.145", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.173", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.134", align 1    ; 3 uses
  %6 = alloca %"struct.folly::dynamic", align 8   ; 6 uses
  %7 = alloca %"struct.folly::dynamic", align 8   ; 4 uses
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %1) #29
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %2) #29
  store i32 5, ptr %0, align 8, !tbaa !117
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !141
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !390
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !390
  store ptr %6, ptr %4, align 8, !tbaa !124, !alias.scope !391, !noalias !390
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29, !noalias !390
  %i.c = invoke noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %.noexc2.i unwind label %.body ; 2 uses

.noexc2.i:                                        ; preds = %bb.a
  %i.d = lshr i64 %i.c, 56
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.d, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplIS4_JRKSt21piecewise_construct_tSt5tupleIJOS4_EESE_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSI_IKS4_S4_EEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.145") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 %i.c, i64 %.sroa.speculated.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %.noexc2.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #29
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #29
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #29
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29, !noalias !390
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !390
  %.sroa.03.0.copyload.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !143, !noalias !390
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !390
  %i.f = load ptr, ptr %.sroa.03.0.copyload.i.i.i.i, align 8, !tbaa !121
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %7) #29 ; 0 uses
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #29
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #29
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKSt21piecewise_construct_tSt5tupleIJRKSG_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSP_IKS4_S4_EEEEEbESP_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.145") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !149  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !141   ; 3 uses
  br i1 %.not, label %.thread70, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.024.i83 = phi i64 [ %i.j, %bb.b ], [ %i.as, %bb.f ]
  %.026.i82 = phi i64 [ %2, %bb.b ], [ %i.at, %bb.f ] ; 2 uses
  %i.m = and i64 %.026.i82, %i.k
  %i.n = shl nuw nsw i64 %i.m, 7
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not72 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not72, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.aa, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.z = add nsw i32 %.sroa.044.0, -1
  %i.aa = and i32 %i.z, %.sroa.044.0              ; 2 uses
  %i.ab = zext nneg i32 %i.y to i64               ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = getelementptr i8, ptr %i.o, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !121 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !117
  %i.ah = icmp eq i32 %i.ag, 6
  br i1 %i.ah, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %.critedge.i, !prof !52

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.d
  %i.ai = load ptr, ptr %4, align 8, !tbaa !47
  %i.aj = load i64, ptr %i.l, align 8, !tbaa !75  ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !75
  %.not.i.i.i.i = icmp eq i64 %i.aj, %i.an
  br i1 %.not.i.i.i.i, label %bb.e, label %.critedge.i, !prof !395

bb.e:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.ao = icmp samesign eq i64 %i.aj, 0
  br i1 %i.ao, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.e
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.ai, ptr %i.al, i64 %i.aj)
  %i.ap = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ap, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49, label %.critedge.i, !prof !396

.critedge.i:                                      ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.d, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.aq = and i32 %i.aa, 16382
  %.not73 = icmp eq i32 %i.aq, 0
  br i1 %.not73, label %.loopexit, label %bb.d, !llvm.loop !392

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ar = icmp eq i8 %i.v, 0
  br i1 %i.ar, label %.thread70, label %bb.f, !prof !52

bb.f:                                             ; preds = %.loopexit
  %i.as = add i64 %.024.i83, -1                   ; 2 uses
  %i.at = add i64 %i.e, %.026.i82
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %.thread70, label %bb.c, !llvm.loop !393

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49: ; preds = %bb.e, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.au = getelementptr i8, ptr %i.ad, i64 16
  br label %bb.n

.thread70:                                        ; preds = %bb.f, %.loopexit, %bb.a
  %.pre-phi94 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.f ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20
  %i.ax = and i8 %i.aw, 15
  %i.ay = zext nneg i8 %i.ax to i64               ; 2 uses
  %i.az = shl i64 %i.ay, %.pre-phi94              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.az
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread70
  %i.ba = shl nuw i64 1, %.pre-phi94
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ba, i64 noundef %i.ay, i64 noundef %i.az)
  %.pre90 = load i64, ptr %i.a, align 8, !tbaa !149
  %.pre91 = load ptr, ptr %1, align 8, !tbaa !141
  %.pre92 = and i64 %.pre90, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit: ; preds = %.thread70, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi94, %.thread70 ], [ %.pre92, %bb.g ]
  %i.bb = phi ptr [ %.pre, %.thread70 ], [ %.pre91, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.bc = xor i64 %notmask.i33, -1                ; 2 uses
  %i.bd = and i64 %2, %i.bc
  %i.be = shl nuw nsw i64 %i.bd, 7                ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be ; 2 uses
  %i.bg = load <16 x i8>, ptr %i.bf, align 16, !tbaa !20
  %i.bh = icmp eq <16 x i8> %i.bg, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = and i16 %i.bi, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bj, 0
  br i1 %.not74, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %i.bk = shl i64 %3, 1
  %i.bl = or disjoint i64 %i.bk, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bm = phi i64 [ %i.be, %bb.h ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 15 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !152 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bp, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = add i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !152
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.br = add i64 %i.bl, %.030                    ; 2 uses
  %i.bs = and i64 %i.br, %i.bc
  %i.bt = shl nuw nsw i64 %i.bs, 7                ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bt
  %i.bv = load <16 x i8>, ptr %i.bu, align 16     ; 2 uses
  %i.bw = icmp eq <16 x i8> %i.bv, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = and i16 %i.bx, 16383                    ; 2 uses
  %.not75 = icmp eq i16 %i.by, 0
  br i1 %.not75, label %bb.i, label %bb.k, !llvm.loop !394

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bt ; 2 uses
  %i.ca = extractelement <16 x i8> %i.bv, i64 14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 14
  %i.cc = add i8 %i.ca, 16
  store i8 %i.cc, ptr %i.cb, align 2, !tbaa !153
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.bj, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.by, %bb.k ]
  %.1 = phi ptr [ %i.bf, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bz, %bb.k ] ; 3 uses
  %i.cd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64              ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !20
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.81) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit: ; preds = %bb.l
  %i.ci = trunc i64 %3 to i8
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !20
  %i.cj = shl nuw nsw i64 %i.ce, 3
  %i.ck = getelementptr i8, ptr %.1, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 16     ; 3 uses
  %i.cm = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESR_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.cl, i64 %i.ce, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit
  %.sink110 = phi ptr [ %i.au, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49 ], [ %i.cl, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.lcssa105.sink = phi i64 [ %i.ab, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49 ], [ %i.ce, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread49 ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  store ptr %.sink110, ptr %0, align 8, !tbaa !143
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa105.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !84
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cn, align 8, !tbaa !156
  ret void
}

declare void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESR_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE20constructValueAtItemIRNS1_8F14TableIS7_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvOT_PPSt4pairIKS3_S3_EDpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  %i.c = tail call ptr @__cxa_begin_catch(ptr %i.b) #29 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef nonnull %0, ptr %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.c, !inline_history !7

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %bb.a, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %i.g = and i64 %2, 255                          ; 2 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = lshr i64 %i.g, 1
  %i.j = ptrtoint ptr %1 to i64
  %i.k = or i64 %i.i, %i.j                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !119
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %bb.f, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit
  store i64 %i.k, ptr %i.l, align 8, !tbaa !84
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESS_ImmEDpOT_EUlvE_PFvPSA_SY_SZ_EJS14_RSY_RSZ_EvEET2_OT_OT0_DpOT1_.exit, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !149  ; 2 uses
  %i.q = and i64 %i.p, -256
  %i.r = add i64 %i.q, 256
  %i.s = and i64 %i.p, 255
  %i.t = or disjoint i64 %i.r, %i.s
  store i64 %i.t, ptr %i.o, align 8, !tbaa !149
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #20

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #3
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !149
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.158", align 1   ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !84
  store i64 %2, ptr %i.b, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.k = load ptr, ptr %0, align 8, !tbaa !141    ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7                            ; 2 uses
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !84
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 %.056154 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.81) #35
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !20
  %i.bo = shl i64 %.056154, 3
  %i.bp = getelementptr i8, ptr %i.v, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16     ; 2 uses
  call void @llvm.assume(i1 %i.bi)
  %i.br = shl i64 %.058153, 3
  %i.bs = getelementptr i8, ptr %i.k, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 16     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !121
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !121
  store ptr null, ptr %i.bt, align 8, !tbaa !121
  %i.bv = add nuw i64 %.056154, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.157 = phi i64 [ %i.bv, %bb.g ], [ %.056154, %bb.d ] ; 3 uses
  %i.bw = add i64 %.058153, 1
  %i.bx = icmp ult i64 %.157, %1
  br i1 %i.bx, label %bb.d, label %bb.i, !llvm.loop !401

bb.i:                                             ; preds = %bb.h
  %i.by = add i64 %.157, -1                       ; 2 uses
  %i.bz = shl i64 %i.by, 3
  %i.ca = getelementptr i8, ptr %i.v, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 16     ; 2 uses
  %i.cc = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.cd = and i64 %i.by, 255                      ; 2 uses
  %i.ce = icmp samesign ult i64 %i.cd, 16
  call void @llvm.assume(i1 %i.ce)
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = or i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !84
  br label %bb.af

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %4, i1 false)
  br label %.lr.ph152.preheader

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp slt i64 %4, 0
  br i1 %i.cj, label %bb.l, label %bb.m, !prof !74

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #33
          to label %bb.o unwind label %bb.n       ; 3 uses

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit83

bb.o:                                             ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !144
  %.pre163 = load i64, ptr %i.b, align 8, !tbaa !84
  %.pre164 = load i64, ptr %i.a, align 8, !tbaa !84 ; 2 uses
  %.pre165 = shl i64 %.pre163, 7
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %4, i1 false)
  %.not60149 = icmp eq i64 %.pre164, 0
  br i1 %.not60149, label %._crit_edge, label %.lr.ph152.preheader

.lr.ph152.preheader:                              ; preds = %.thread, %bb.o
  %.0127178 = phi ptr [ %7, %.thread ], [ %i.ck, %bb.o ] ; 5 uses
  %i.cm = phi ptr [ %i.k, %.thread ], [ %.pre, %bb.o ]
  %i.cn = phi i64 [ %1, %.thread ], [ %.pre164, %bb.o ]
  %.pre-phi177 = phi i64 [ %i.p, %.thread ], [ %.pre165, %bb.o ]
  %i.co = getelementptr i8, ptr %i.cm, i64 %.pre-phi177
  br label %.lr.ph152

.loopexit:                                        ; preds = %bb.aa, %.lr.ph152
  %.1.lcssa = phi i64 [ %.042150, %.lr.ph152 ], [ %i.de, %bb.aa ] ; 2 uses
  %.not60 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph152, !llvm.loop !402

.lr.ph152:                                        ; preds = %.lr.ph152.preheader, %.loopexit
  %.043151.pn = phi ptr [ %.043151, %.loopexit ], [ %i.co, %.lr.ph152.preheader ]
  %.042150 = phi i64 [ %.1.lcssa, %.loopexit ], [ %i.cn, %.lr.ph152.preheader ] ; 2 uses
  %.043151 = getelementptr i8, ptr %.043151.pn, i64 -128 ; 6 uses
  %i.cp = load <16 x i8>, ptr %.043151, align 16, !tbaa !20
  %i.cq = icmp eq <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = and i16 %i.cr, 16383                    ; 2 uses
  %i.ct = xor i16 %i.cs, 16383
  %.sroa.090.0.extract.trunc = zext nneg i16 %i.ct to i32 ; 2 uses
  %cond = icmp eq i16 %i.cs, 16383
  br i1 %cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph152
  %i.cu = icmp ne ptr %.043151, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cu)
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.087.0142 = phi i32 [ %.sroa.090.0.extract.trunc, %.lr.ph ], [ %.sroa.087.1, %bb.r ] ; 3 uses
  %.sroa.8.0141 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.r ] ; 2 uses
  %i.cv = and i32 %.sroa.087.0142, 1
  %.not.i76 = icmp eq i32 %i.cv, 0
  br i1 %.not.i76, label %bb.q, label %bb.r, !prof !74

bb.q:                                             ; preds = %bb.p
  %i.cw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.087.0142, i1 true) ; 2 uses
  %i.cx = add i32 %i.cw, %.sroa.8.0141
  %i.cy = add nuw nsw i32 %i.cw, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.8.1.in = phi i32 [ %i.cx, %bb.q ], [ %.sroa.8.0141, %bb.p ] ; 2 uses
  %.pn131 = phi i32 [ %i.cy, %bb.q ], [ 1, %bb.p ]
  %.sroa.087.1 = lshr i32 %.sroa.087.0142, %.pn131 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.cz = zext i32 %.sroa.8.1.in to i64
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = getelementptr i8, ptr %.043151, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !121
  call void @llvm.prefetch.p0(ptr %i.dd, i32 0, i32 3, i32 1)
  %.not128 = icmp eq i32 %.sroa.087.1, 0
  br i1 %.not128, label %.lr.ph147, label %bb.p

.lr.ph147:                                        ; preds = %bb.r, %bb.aa
  %.1146 = phi i64 [ %i.de, %bb.aa ], [ %.042150, %bb.r ]
  %.sroa.090.0145 = phi i32 [ %.sroa.090.1, %bb.aa ], [ %.sroa.090.0.extract.trunc, %bb.r ] ; 3 uses
  %.sroa.892.0144 = phi i32 [ %.sroa.892.1, %bb.aa ], [ 0, %bb.r ] ; 2 uses
  %i.de = add i64 %.1146, -1                      ; 2 uses
  %i.df = and i32 %.sroa.090.0145, 1
  %.not.i78 = icmp eq i32 %i.df, 0
  br i1 %.not.i78, label %bb.s, label %bb.t, !prof !74

bb.s:                                             ; preds = %.lr.ph147
  %i.dg = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.090.0145, i1 true) ; 2 uses
  %i.dh = add i32 %i.dg, %.sroa.892.0144
  %i.di = add nuw nsw i32 %i.dg, 1
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph147, %bb.s
  %.sroa.892.1.in = phi i32 [ %i.dh, %bb.s ], [ %.sroa.892.0144, %.lr.ph147 ] ; 2 uses
  %.pn130 = phi i32 [ %i.di, %bb.s ], [ 1, %.lr.ph147 ]
  %.sroa.090.1 = lshr i32 %.sroa.090.0145, %.pn130 ; 2 uses
  %.sroa.892.1 = add i32 %.sroa.892.1.in, 1
  %i.dj = zext i32 %.sroa.892.1.in to i64         ; 2 uses
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = getelementptr i8, ptr %.043151, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 16     ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !121
  %i.do = invoke noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dn)
          to label %bb.u unwind label %bb.w       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.dp = lshr i64 %i.do, 56
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dp, i64 1) ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.043151, i64 %i.dj
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !20
  %i.ds = zext i8 %i.dr to i64
  %i.dt = icmp eq i64 %.sroa.speculated.i.i, %i.ds
  br i1 %i.dt, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.81) #35
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not, label %bb.ae, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit83

bb.x:                                             ; preds = %bb.u
  %i.dv = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.dw = or disjoint i64 %i.dv, 1
  %i.dx = load i64, ptr %i.ba, align 8, !tbaa !149
  %i.dy = and i64 %i.dx, 255
  %notmask.i.i = shl nsw i64 -1, %i.dy
  %i.dz = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.ea = load ptr, ptr %0, align 8, !tbaa !141   ; 2 uses
  %i.eb = and i64 %i.do, %i.dz                    ; 4 uses
  %i.ec = shl nuw nsw i64 %i.eb, 7                ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0127178, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !20  ; 2 uses
  %i.ef = icmp ult i8 %i.ee, 14
  br i1 %i.ef, label %._crit_edge.i, label %.lr.ph.i82, !prof !413

.lr.ph.i82:                                       ; preds = %bb.x, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i
  %i.eg = phi i64 [ %i.eo, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ], [ %i.ec, %bb.x ]
  %i.eh = phi i64 [ %i.en, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ], [ %i.eb, %bb.x ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 15 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !152 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ek, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i82
  %i.el = add i8 %i.ek, 1
  store i8 %i.el, ptr %i.ej, align 1, !tbaa !152
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.y, %.lr.ph.i82
  %i.em = add nuw i64 %i.dw, %i.eh
  %i.en = and i64 %i.em, %i.dz                    ; 4 uses
  %i.eo = shl nuw nsw i64 %i.en, 7                ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0127178, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !20  ; 2 uses
  %i.er = icmp ult i8 %i.eq, 14
  br i1 %i.er, label %._crit_edge.i, label %.lr.ph.i82, !prof !414, !llvm.loop !403

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i, %bb.x
  %.lcssa22.i = phi i64 [ %i.eb, %bb.x ], [ %i.en, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %bb.x ], [ 16, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.ec, %bb.x ], [ %i.eo, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.ee, %bb.x ], [ %i.eq, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.pn.i ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0127178, i64 %.lcssa22.i
  %i.et = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.et, ptr %i.es, align 1, !tbaa !20
  %i.eu = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.eu ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !20
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.81) #35
  unreachable

bb.aa:                                            ; preds = %._crit_edge.i
  %i.ey = trunc nuw i64 %.sroa.speculated.i.i to i8
  store i8 %i.ey, ptr %i.ev, align 1, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 2, !tbaa !153
  %i.fb = add i8 %i.fa, %.0.lcssa.i
  store i8 %i.fb, ptr %i.ez, align 2, !tbaa !153
  %i.fc = shl nuw nsw i64 %i.eu, 3
  %i.fd = getelementptr i8, ptr %.lcssa21.i, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 16     ; 2 uses
  %i.ff = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ff)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fe) ]
  %i.fg = load ptr, ptr %i.dm, align 8, !tbaa !121
  store ptr %i.fg, ptr %i.fe, align 8, !tbaa !121
  store ptr null, ptr %i.dm, align 8, !tbaa !121
  %.not129 = icmp eq i32 %.sroa.090.1, 0
  br i1 %.not129, label %.loopexit, label %.lr.ph147, !llvm.loop !404

._crit_edge:                                      ; preds = %.loopexit, %bb.o
  %.0127179 = phi ptr [ %i.ck, %bb.o ], [ %.0127178, %.loopexit ] ; 2 uses
  %i.fh = load i64, ptr %i.ba, align 8, !tbaa !149
  %i.fi = and i64 %i.fh, 255
  %i.fj = shl nuw i64 1, %i.fi
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %bb.ab
  %.0.in = phi i64 [ %i.fj, %._crit_edge ], [ %.0, %bb.ab ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0127179, i64 %.0
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !20  ; 3 uses
  %i.fm = icmp eq i8 %i.fl, 0
  br i1 %i.fm, label %bb.ab, label %bb.ac, !llvm.loop !405

bb.ac:                                            ; preds = %bb.ab
  %i.fn = load ptr, ptr %0, align 8, !tbaa !141
  %i.fo = shl nsw i64 %.0, 7
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 %i.fo ; 2 uses
  %i.fq = zext nneg i8 %i.fl to i64
  %i.fr = add nsw i64 %i.fq, -1                   ; 2 uses
  %i.fs = shl nuw nsw i64 %i.fr, 3
  %i.ft = getelementptr i8, ptr %i.fp, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 16     ; 2 uses
  %i.fv = icmp ne ptr %i.fp, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fu) ]
  %i.fw = icmp ult i8 %i.fl, 17
  call void @llvm.assume(i1 %i.fw)
  %i.fx = lshr i64 %i.fr, 1
  %i.fy = ptrtoint ptr %i.fu to i64
  %i.fz = or i64 %i.fx, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !84
  br i1 %.not, label %bb.ad, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPvm(ptr noundef nonnull %.0127179, i64 noundef %4) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.af

bb.ae:                                            ; preds = %bb.w
  call void @_ZdlPvm(ptr noundef nonnull %.0127178, i64 noundef %4) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit83

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit83: ; preds = %bb.ae, %bb.w, %bb.n
  %.pn66.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.n ], [ %i.du, %bb.w ], [ %i.du, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  resume { ptr, i32 } %.pn66.pn.pn.pn

bb.af:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !122
  %i.gb = load i64, ptr %i.d, align 8, !tbaa !84
  %.not.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gc = load ptr, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gd = load i64, ptr %i.e, align 8, !tbaa !84
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gd) #29
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !72
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #3
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !72
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !158, !range !64, !noundef !65
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416, !nonnull !65
  %i.e = load i8, ptr %i.d, align 1, !tbaa !122, !range !64, !noundef !65
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !417, !nonnull !65, !align !136
  %i.i = load i64, ptr %i.h, align 8, !tbaa !84
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !418, !nonnull !65, !align !136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !419, !nonnull !65, !align !136
  %i.o = load i64, ptr %i.n, align 8, !tbaa !84
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !420  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev:bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !421, !nonnull !65, !align !136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !422, !nonnull !65, !align !136
  %i.w = load i64, ptr %i.v, align 8, !tbaa !84
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !418, !nonnull !65, !align !136
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !144
  store ptr %i.z, ptr %i.q, align 8, !tbaa !141
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !423, !nonnull !65, !align !136
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !84 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !149
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !149
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #29
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #20

declare noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #24

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() local_unnamed_addr #2

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #25 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4)
  tail call void @__cxa_rethrow() #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE20constructValueAtItemIRNS1_8F14TableIS7_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_IJEEEEEvOT_PPSt4pairIKS3_S3_EDpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #33 ; 8 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !121
  %i.b = load i64, ptr %4, align 8, !tbaa !100
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !73
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !75   ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i.i.i.i, label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
          to label %.noexc unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESG_IJEEEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit13

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc6.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !74

.noexc6.i.i.i.i:                                  ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc11 unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESG_IJEEEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit13

.noexc11:                                         ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #33
          to label %.noexc12 unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESG_IJEEEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit13 ; 2 uses

.noexc12:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.l, ptr %6, align 8, !tbaa !47
  store i64 %i.g, ptr %i.d, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc12, %bb.a
  %i.m = phi ptr [ %i.l, %.noexc12 ], [ %i.d, %bb.a ] ; 3 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !20
  store i8 %i.n, ptr %i.m, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.g, ptr %i.o, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !20
  store i32 6, ptr %i.a, align 8, !tbaa !117
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !73
  %i.s = load ptr, ptr %6, align 8, !tbaa !47     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  %i.u = load i64, ptr %i.o, align 8, !tbaa !75   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.w, i1 false)
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESG_IJEEEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  store ptr %i.s, ptr %i.q, align 8, !tbaa !47
  %i.x = load i64, ptr %i.d, align 8, !tbaa !20
  store i64 %i.x, ptr %i.r, align 8, !tbaa !20
  %.pre.i.i.i = load i64, ptr %i.o, align 8, !tbaa !75
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESG_IJEEEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESG_IJEEEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.y = phi i64 [ %i.u, %bb.f ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.y, ptr %i.z, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.aa, align 8, !tbaa !117
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.ab, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKSt21piecewise_construct_tSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESG_IJEEEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.noexc6.i.i.i.i, %.noexc.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #30
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i = mul i64 %2, -8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg.i.i ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %2 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.81) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit: ; preds = %bb.a
  store i8 0, ptr %i.c, align 1, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.f = load i8, ptr %i.e, align 2, !tbaa !153
  %.not = icmp ult i8 %i.f, 16
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit
  %i.g = shl i64 %4, 1
  %i.h = or disjoint i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !149
  %i.k = and i64 %i.j, 255
  %notmask.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i, -1                   ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !141    ; 4 uses
  %i.n = and i64 %3, %i.l
  %i.o = shl nuw nsw i64 %i.n, 7                  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.e, %bb.c
  %.010.lcssa = phi i8 [ 0, %bb.c ], [ -16, %bb.e ]
  %i.r = phi i64 [ %i.o, %bb.c ], [ %i.ad, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 14 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !tbaa !153
  %i.v = add i8 %i.u, %.010.lcssa
  store i8 %i.v, ptr %i.t, align 2, !tbaa !153
  br label %bb.f

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.w = phi i64 [ %i.ad, %bb.e ], [ %i.o, %bb.c ]
  %.01126 = phi i64 [ %i.ab, %bb.e ], [ %3, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 15 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !152   ; 2 uses
  %.not.i17 = icmp eq i8 %i.z, -2
  br i1 %.not.i17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aa = add i8 %i.z, -1
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !152
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.ab = add i64 %i.h, %.01126                   ; 2 uses
  %i.ac = and i64 %i.ab, %i.l
  %i.ad = shl nuw nsw i64 %i.ac, 7                ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ad
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %.thread, label %.lr.ph

bb.f:                                             ; preds = %.thread, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplIS4_JRKSt21piecewise_construct_tSt5tupleIJOS4_EESE_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSI_IKS4_S4_EEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.145") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !149  ; 3 uses
  %.not = icmp ult i64 %i.b, 256
  br i1 %.not, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i64 %3, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = trunc i64 %3 to i8
  %i.f = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.h = and i64 %i.b, 255
  %i.i = shl nuw i64 1, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i82 = phi i64 [ %i.i, %bb.b ], [ %i.al, %bb.e ]
  %.026.i81 = phi i64 [ %2, %bb.b ], [ %i.am, %bb.e ] ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !149
  %i.k = and i64 %i.j, 255
  %notmask.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i, -1
  %i.m = and i64 %.026.i81, %i.l
  %i.n = load ptr, ptr %1, align 8, !tbaa !141
  %i.o = shl nuw nsw i64 %i.m, 7
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 5 uses
  %i.q = getelementptr i8, ptr %i.p, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.q, i32 0, i32 3, i32 1)
  %i.r = load <16 x i8>, ptr %i.p, align 16       ; 2 uses
  %i.s = icmp eq <16 x i8> %i.r, %i.g
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = and i32 %i.u, 16383
  %.not71 = icmp eq i32 %i.v, 0
  %i.w = extractelement <16 x i8> %i.r, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.x = icmp ne ptr %i.p, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.x)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.ah, %.critedge.i ], [ %i.u, %.preheader ] ; 4 uses
  %i.y = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = getelementptr i8, ptr %i.p, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !121
  %i.af = tail call noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.ae)
  br i1 %i.af, label %bb.f, label %.critedge.i, !prof !52

.critedge.i:                                      ; preds = %bb.d
  %i.ag = add nsw i32 %.sroa.044.0, -1
  %i.ah = and i32 %i.ag, %.sroa.044.0             ; 2 uses
  %i.ai = and i32 %i.ah, 16382
  %.not72 = icmp eq i32 %i.ai, 0
  br i1 %.not72, label %.loopexit.loopexit, label %bb.d, !llvm.loop !424

.loopexit.loopexit:                               ; preds = %.critedge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !152
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.aj = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.w, %bb.c ]
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %.thread69.loopexit, label %bb.e, !prof !52

bb.e:                                             ; preds = %.loopexit
  %i.al = add i64 %.024.i82, -1                   ; 2 uses
  %i.am = add i64 %i.d, %.026.i81
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %.thread69.loopexit, label %bb.c, !llvm.loop !425

bb.f:                                             ; preds = %bb.d
  %i.an = getelementptr i8, ptr %i.ac, i64 16
  br label %bb.n

.thread69.loopexit:                               ; preds = %.loopexit, %bb.e
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !149
  br label %.thread69

.thread69:                                        ; preds = %.thread69.loopexit, %bb.a
  %i.ao = phi i64 [ %.pre89, %.thread69.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.ap = lshr i64 %i.ao, 8                       ; 2 uses
  %i.aq = and i64 %i.ao, 255                      ; 3 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !141   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.at = load i8, ptr %i.as, align 1, !tbaa !20
  %i.au = and i8 %i.at, 15
  %i.av = zext nneg i8 %i.au to i64               ; 2 uses
  %i.aw = shl i64 %i.av, %i.aq                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.ap, %i.aw
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ax = shl nuw i64 1, %i.aq
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ap, i64 noundef %i.ax, i64 noundef %i.av, i64 noundef %i.aw)
  %.pre90 = load i64, ptr %i.a, align 8, !tbaa !149
  %.pre91 = load ptr, ptr %1, align 8, !tbaa !141
  %.pre92 = and i64 %.pre90, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %i.aq, %.thread69 ], [ %.pre92, %bb.g ]
  %i.ay = phi ptr [ %i.ar, %.thread69 ], [ %.pre91, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.az = xor i64 %notmask.i33, -1                ; 2 uses
  %i.ba = and i64 %2, %i.az
  %i.bb = shl nuw nsw i64 %i.ba, 7                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16, !tbaa !20
  %i.be = icmp eq <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.bg, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %i.bh = shl i64 %3, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bj = phi i64 [ %i.bb, %bb.h ], [ %i.bq, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bo, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 15 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !152 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bm, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = add i8 %i.bm, 1
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !152
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bo = add i64 %i.bi, %.030                    ; 2 uses
  %i.bp = and i64 %i.bo, %i.az
  %i.bq = shl nuw nsw i64 %i.bp, 7                ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bq
  %i.bs = load <16 x i8>, ptr %i.br, align 16     ; 2 uses
  %i.bt = icmp eq <16 x i8> %i.bs, zeroinitializer
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %i.bv = and i16 %i.bu, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bv, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !426

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bq ; 2 uses
  %i.bx = extractelement <16 x i8> %i.bs, i64 14
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 14
  %i.bz = add i8 %i.bx, 16
  store i8 %i.bz, ptr %i.by, align 2, !tbaa !153
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.bg, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bv, %bb.k ]
  %.1 = phi ptr [ %i.bc, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bw, %bb.k ] ; 3 uses
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64              ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !20
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.81) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit: ; preds = %bb.l
  %i.cf = trunc i64 %3 to i8
  store i8 %i.cf, ptr %i.cc, align 1, !tbaa !20
  %i.cg = shl nuw nsw i64 %i.cb, 3
  %i.ch = getelementptr i8, ptr %.1, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 16     ; 3 uses
  %i.cj = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cj)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESK_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.ci, i64 %i.cb, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit
  %.sink109 = phi ptr [ %i.an, %bb.f ], [ %i.ci, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.lcssa104.sink = phi i64 [ %i.aa, %bb.f ], [ %i.cb, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  store ptr %.sink109, ptr %0, align 8, !tbaa !143
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa104.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !84
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ck, align 8, !tbaa !156
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESK_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #33
          to label %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit unwind label %bb.b ; 4 uses

_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit: ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !121
  %i.b = load i64, ptr %6, align 8, !tbaa !124
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c) #29
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.e, align 8, !tbaa !20
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESL_ImmEDpOT_EUlvE_PFvPSA_SR_SS_EJSX_RSR_RSS_EvEET2_OT_OT0_DpOT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #29 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i unwind label %bb.c, !inline_history !7

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESL_ImmEDpOT_EUlvE_PFvPSA_SR_SS_EJSX_RSR_RSS_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #34
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESL_ImmEDpOT_EUlvE_PFvPSA_SR_SS_EJSX_RSR_RSS_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i
  %i.l = and i64 %2, 255                          ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = lshr i64 %i.l, 1
  %i.o = ptrtoint ptr %1 to i64
  %i.p = or i64 %i.n, %i.o                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !119
  %i.s = icmp ult i64 %i.r, %i.p
  br i1 %i.s, label %bb.f, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESL_ImmEDpOT_EUlvE_PFvPSA_SR_SS_EJSX_RSR_RSS_EvEET2_OT_OT0_DpOT1_.exit
  store i64 %i.p, ptr %i.q, align 8, !tbaa !84
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESF_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESL_ImmEDpOT_EUlvE_PFvPSA_SR_SS_EJSX_RSR_RSS_EvEET2_OT_OT0_DpOT1_.exit, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !149  ; 2 uses
  %i.v = and i64 %i.u, -256
  %i.w = add i64 %i.v, 256
  %i.x = and i64 %i.u, 255
  %i.y = or disjoint i64 %i.w, %i.x
  store i64 %i.y, ptr %i.t, align 8, !tbaa !149
  ret void
}

declare noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5folly7dynamic6insertIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENSt9enable_ifIXntsr3std14is_convertibleIT_N9__gnu_cxx17__normal_iteratorIPS0_St6vectorIS0_SaIS0_EEEEEE5valueEvE4typeEOSB_OT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"struct.std::pair.145", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple", align 8        ; 4 uses
  %5 = alloca %"class.std::tuple.134", align 1    ; 3 uses
  %6 = alloca %"struct.folly::dynamic", align 8   ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !117    ; 2 uses
  %.not.i.not.i = icmp eq i32 %i.c, 5
  br i1 %.not.i.not.i, label %_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE, align 8, !tbaa !26
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.d, i32 noundef %i.c) #3
  unreachable

_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 12 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !73
  %i.g = load ptr, ptr %2, align 8, !tbaa !47     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !75   ; 8 uses
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i64 %i.i, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !74

.noexc6.i:                                        ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.n = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #33 ; 2 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !47
  store i64 %i.i, ptr %i.f, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.f, %_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit ] ; 3 uses
  switch i64 %i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.g, align 1, !tbaa !20
  store i8 %i.p, ptr %i.o, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
end_hunk_2
