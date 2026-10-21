Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/command_line_interface?download=true
inline.NumInlined: 8840
inline.NumDeleted: 3439
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_28GeneratedCodeInfo_AnnotationEEEEEPNT_4TypeEPNS0_5ArenaE:bb.a

_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.h, %bb.i
  %.1.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.e ], [ %i.l, %bb.f ], [ %i.ar, %bb.i ], [ %.1.i.pre, %bb.h ]
  ret ptr %.1.i
}

declare noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #25

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_28GeneratedCodeInfo_AnnotationEEEPvPS1_(ptr noundef %0) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 72)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  tail call void @_ZN6google8protobuf28GeneratedCodeInfo_AnnotationC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef %0)
  ret ptr %i.c
}

declare void @_ZN6google8protobuf28GeneratedCodeInfo_AnnotationC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #2

declare void @_ZN6google8protobuf28GeneratedCodeInfo_Annotation8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13insert_uniqueIS9_JRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJRA1_KcEEEEESC_INS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEbERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.112") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !84
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #43 ; 5 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !119
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !119
  store ptr %i.d, ptr %1, align 8, !tbaa !119
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !1015 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !noalias !1015
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.sroa.02.0.in.i = phi ptr [ %1, %bb.c ], [ %i.ad, %bb.i ]
  %.sroa.02.0.i = load ptr, ptr %.sroa.02.0.in.i, align 8, !tbaa !119, !noalias !1015 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !38, !noalias !1015 ; 2 uses
  %.not30.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not30.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.01932.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %.2.i.i.i.i, %bb.h ] ; 2 uses
  %.02031.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %.222.i.i.i.i, %bb.h ] ; 2 uses
  %i.n = add i64 %.02031.i.i.i.i, %.01932.i.i.i.i
  %i.o = lshr i64 %i.n, 1                         ; 4 uses
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !96, !noalias !1015 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.r) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !97, !noalias !1015
  %i.u = tail call i32 @memcmp(ptr noundef %i.t, ptr noundef %i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #37, !noalias !1015 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.e
  %i.w = sub i64 %i.r, %i.h
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i

_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ], [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ] ; 2 uses
  %i.x = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i
  %i.y = add nuw i64 %i.o, 1
  br label %bb.h

bb.g:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i
  %.not29.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.222.i.i.i.i = phi i64 [ %.02031.i.i.i.i, %bb.f ], [ %i.o, %bb.g ] ; 3 uses
  %.2.i.i.i.i = phi i64 [ %i.y, %bb.f ], [ %.01932.i.i.i.i, %bb.g ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.2.i.i.i.i, %.222.i.i.i.i
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %bb.e

.loopexit.i:                                      ; preds = %bb.h, %bb.d
  %.sroa.018.2.i.i.i.ph.i = phi i64 [ 0, %bb.d ], [ %.222.i.i.i.i, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !38, !noalias !1015
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.loopexit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 272
  %i.ac = and i64 %.sroa.018.2.i.i.i.ph.i, 255
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  br label %bb.d

bb.j:                                             ; preds = %bb.g
  %i.ae = trunc i64 %i.o to i32
  br label %bb.l

bb.k:                                             ; preds = %.loopexit.i
  %i.af = trunc i64 %.sroa.018.2.i.i.i.ph.i to i32
  %i.ag = tail call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJRA1_KcEEEEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESY_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.02.0.i, i32 %i.af, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ag, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.fca.0.extract.sink = phi ptr [ %.fca.0.extract, %bb.k ], [ %.sroa.02.0.i, %bb.j ]
  %.fca.1.extract.sink = phi i32 [ %.fca.1.extract, %bb.k ], [ %i.ae, %bb.j ]
  %.sink = phi i8 [ 1, %bb.k ], [ 0, %bb.j ]
  store ptr %.fca.0.extract.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract.sink, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ah, align 8, !tbaa !130
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJRA1_KcEEEEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESY_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 7 uses
  store ptr %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !38    ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre14.a = load i8, ptr %.phi.trans.insert13, align 1, !tbaa !38
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !119 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38    ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 272
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !119 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !38    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit, !llvm.loop !12

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !38    ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %6, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !132
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit ], [ %.pre14.a, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 3 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 4
  br i1 %i.z, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 4) ; 2 uses
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 6
  %i.ae = or disjoint i64 %i.ad, 16
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #43 ; 11 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !38
  store ptr %i.af, ptr %6, align 8, !tbaa !131
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !38   ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 6
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJRA1_KcEEEEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESY_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.015.i.i.i = phi ptr [ %i.bp, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i.i.i ], [ %i.an, %.lr.ph.preheader.i.i.i ] ; 8 uses
  %.01214.i.i.i = phi ptr [ %i.bo, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i.i.i ], [ %i.al, %.lr.ph.preheader.i.i.i ] ; 12 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16 ; 3 uses
  store ptr %i.ao, ptr %.015.i.i.i, align 8, !tbaa !120
  %i.ap = load ptr, ptr %.01214.i.i.i, align 8, !tbaa !97 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i6
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !96 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i6
  store ptr %i.ap, ptr %.015.i.i.i, align 8, !tbaa !97
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !38
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !38
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ax = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.at, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !96
  store ptr %i.aq, ptr %.01214.i.i.i, align 8, !tbaa !97
  store i64 0, ptr %i.ay, align 8, !tbaa !96
  store i8 0, ptr %i.aq, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 48 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !120
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !97 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 48 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !96 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !97
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !38
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !38
  %.phi.trans.insert4.i = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40
  %.pre5.i = load i64, ptr %.phi.trans.insert4.i, align 8, !tbaa !96
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i, %bb.f
  %i.bl = phi i64 [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i ], [ %i.bh, %bb.f ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 40
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !96
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !97
  store i64 0, ptr %i.bm, align 8, !tbaa !96
  store i8 0, ptr %i.be, align 8, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 64 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 64
  %.not.i.i.i7 = icmp eq ptr %i.bo, %i.am
  br i1 %.not.i.i.i7, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit.i.i, label %.lr.ph.i.i.i6, !llvm.loop !13

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i.i.i
  %.pre.i.i = load i8, ptr %i.x, align 1, !tbaa !38
  br label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJRA1_KcEEEEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESY_DpOT_ENKUlhE_clEh.exit

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJRA1_KcEEEEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESY_DpOT_ENKUlhE_clEh.exit: ; preds = %bb.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit.i.i
  %i.bq = phi i8 [ %.pre.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit.i.i ], [ 0, %bb.d ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  store i8 %i.bq, ptr %i.br, align 2, !tbaa !38
  store i8 0, ptr %i.x, align 1, !tbaa !38
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16clear_and_deleteEPSH_PSF_(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8, !tbaa !119
  store ptr %i.af, ptr %0, align 8, !tbaa !119
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6)
  %.pre15.a = load ptr, ptr %6, align 8, !tbaa !131
  br label %bb.h

bb.h:                                             ; preds = %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJRA1_KcEEEEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESY_DpOT_ENKUlhE_clEh.exit, %bb.g, %bb.b
  %7 = phi ptr [ %i.af, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJRA1_KcEEEEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESY_DpOT_ENKUlhE_clEh.exit ], [ %.pre15.a, %bb.g ], [ %i.v, %bb.b ]
  %8 = load i32, ptr %i.a, align 8, !tbaa !132
  %i.bs = trunc i32 %8 to i8
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJRA1_KcEEEEEvhPSF_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %7, i8 noundef zeroext %i.bs, ptr noundef nonnull %i.w, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !84
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !84
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #26

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #26

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !119    ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119  ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !83
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !38    ; 5 uses
  %.not112 = icmp eq i8 %i.f, 0
  br i1 %.not112, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !38    ; 3 uses
  %i.n = icmp ult i8 %i.m, 4
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 4, %i.m
  %i.o = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.p = and i32 %i.o, 252
  %i.q = icmp eq i32 %i.p, 0
  %i.r = zext i1 %i.q to i8
  %i.s = lshr i8 %narrow, %i.r
  %.sroa.speculated99 = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1) ; 3 uses
  %i.t = and i32 %i.o, 255
  %i.u = zext nneg i8 %.sroa.speculated99 to i32  ; 2 uses
  %.not84 = icmp samesign uge i32 %i.t, %i.u
  %narrow113.a = add nuw nsw i8 %.sroa.speculated99, %i.m
  %i.v = icmp samesign ult i8 %narrow113.a, 4
  %or.cond = select i1 %.not84, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE23rebalance_right_to_leftEhPSH_PSF_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext %.sroa.speculated99, ptr noundef nonnull %i.b, ptr noundef nonnull %i.w)
  %i.x = load i32, ptr %i.a, align 8, !tbaa !28
  %i.y = and i32 %i.x, 255
  %i.z = sub nsw i32 %i.y, %i.u                   ; 3 uses
  store i32 %i.z, ptr %i.a, align 8, !tbaa !28
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %i.l, align 1, !tbaa !38
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.z, 1
  %i.ae = add nsw i32 %i.ad, %i.ac
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38  ; 2 uses
  %i.ah = icmp ult i8 %i.f, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw i8 %i.f, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.ak = zext i8 %i.ai to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !38  ; 3 uses
  %i.ap = icmp ult i8 %i.ao, 4
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow114 = sub nuw nsw i8 4, %i.ao
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i8
  %i.at = lshr i8 %narrow114, %i.as
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.at, i8 1) ; 3 uses
  %i.au = and i32 %i.aq, 255
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !38
  %i.ax = zext i8 %i.aw to i32
  %i.ay = zext nneg i8 %.sroa.speculated to i32
  %i.az = sub nsw i32 %i.ax, %i.ay
  %.not85 = icmp sle i32 %i.au, %i.az
  %narrow115 = add nuw nsw i8 %.sroa.speculated, %i.ao
  %i.ba = icmp samesign ult i8 %narrow115, 4
  %or.cond111 = select i1 %.not85, i1 true, i1 %i.ba
  br i1 %or.cond111, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE23rebalance_left_to_rightEhPSH_PSF_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.am, ptr noundef nonnull %i.bb)
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !119
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 10
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !38
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = icmp sgt i32 %i.bc, %i.bg
  br i1 %i.bh, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bi = xor i32 %i.bg, -1
  %i.bj = add nsw i32 %i.bc, %i.bi
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bk = icmp eq i8 %i.ag, 4
  br i1 %i.bk, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.bl = zext i8 %i.f to i32
  store ptr %i.c, ptr %2, align 8, !tbaa !131
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !132
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
  %i.bn = load ptr, ptr %1, align 8, !tbaa !119   ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bp = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #43 ; 6 uses
  store ptr %i.c, ptr %i.bp, align 8, !tbaa !119
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 0, ptr %i.bq, align 8
  %i.br = load ptr, ptr %1, align 8, !tbaa !119   ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 272
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !119
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i8 0, ptr %i.bt, align 1, !tbaa !38
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !119
  store ptr %i.bp, ptr %0, align 8, !tbaa !119
  %.pre = load ptr, ptr %1, align 8, !tbaa !119
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bu = phi ptr [ %i.bn, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 2 uses
  %.083 = phi ptr [ %i.bo, %bb.m ], [ %i.c, %bb.l ], [ %i.bp, %bb.n ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !38
  %.not116 = icmp eq i8 %i.bw, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !38
  %i.bz = add i8 %i.by, 1                         ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #43 ; 9 uses
  store ptr %.083, ptr %i.cb, align 8, !tbaa !119
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i8 %i.bz, ptr %i.cc, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 9
  store i8 0, ptr %i.cd, align 1, !tbaa !38
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 10
  store i8 0, ptr %i.ce, align 2, !tbaa !38
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 11
  store i8 4, ptr %i.cf, align 1, !tbaa !38
  %i.cg = load ptr, ptr %1, align 8, !tbaa !119
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !28
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE5splitEiPSH_PSF_(ptr noundef nonnull align 1 dereferenceable(1) %i.cg, i32 noundef %i.ch, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.ca)
  %i.ci = load ptr, ptr %i.ca, align 8, !tbaa !119
  %i.cj = load ptr, ptr %1, align 8, !tbaa !119
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !119
  br label %bb.s

bb.r:                                             ; preds = %bb.o
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSL_PFvSL_hmmE:bb.a
bb.f:                                             ; preds = %bb.e
  %i.ar = and i64 %i.ah, %i.a                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ar
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !38
  %i.au = icmp slt <16 x i8> %i.at, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.av, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !40

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ar, %i.ax
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.aj, i64 noundef %i.w, i64 noundef %i.ah)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.ay, %bb.g ], [ %i.ap, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.aj, ptr %i.az, align 1, !tbaa !264
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i
  %i.bb = load i64, ptr %i.x, align 8
  store i64 %i.bb, ptr %i.ba, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.bc = add i16 %.sroa.054.061, -1
  %i.bd = and i16 %i.bc, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.bd, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13insert_uniqueIS9_JSE_EEESC_INS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEbERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.112") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !84
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #43 ; 5 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !119
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !119
  store ptr %i.d, ptr %1, align 8, !tbaa !119
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !1218 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !noalias !1218
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.sroa.02.0.in.i = phi ptr [ %1, %bb.c ], [ %i.ad, %bb.i ]
  %.sroa.02.0.i = load ptr, ptr %.sroa.02.0.in.i, align 8, !tbaa !119, !noalias !1218 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !38, !noalias !1218 ; 2 uses
  %.not30.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not30.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.01932.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %.2.i.i.i.i, %bb.h ] ; 2 uses
  %.02031.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %.222.i.i.i.i, %bb.h ] ; 2 uses
  %i.n = add i64 %.02031.i.i.i.i, %.01932.i.i.i.i
  %i.o = lshr i64 %i.n, 1                         ; 4 uses
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !96, !noalias !1218 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.r) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !97, !noalias !1218
  %i.u = tail call i32 @memcmp(ptr noundef %i.t, ptr noundef %i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #37, !noalias !1218 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.e
  %i.w = sub i64 %i.r, %i.h
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i

_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ], [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ] ; 2 uses
  %i.x = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i
  %i.y = add nuw i64 %i.o, 1
  br label %bb.h

bb.g:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i
  %.not29.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.222.i.i.i.i = phi i64 [ %.02031.i.i.i.i, %bb.f ], [ %i.o, %bb.g ] ; 3 uses
  %.2.i.i.i.i = phi i64 [ %i.y, %bb.f ], [ %.01932.i.i.i.i, %bb.g ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.2.i.i.i.i, %.222.i.i.i.i
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %bb.e

.loopexit.i:                                      ; preds = %bb.h, %bb.d
  %.sroa.018.2.i.i.i.ph.i = phi i64 [ 0, %bb.d ], [ %.222.i.i.i.i, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !38, !noalias !1218
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.loopexit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 272
  %i.ac = and i64 %.sroa.018.2.i.i.i.ph.i, 255
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  br label %bb.d

bb.j:                                             ; preds = %bb.g
  %i.ae = trunc i64 %i.o to i32
  br label %bb.l

bb.k:                                             ; preds = %.loopexit.i
  %i.af = trunc i64 %.sroa.018.2.i.i.i.ph.i to i32
  %i.ag = tail call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJSE_EEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESO_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.02.0.i, i32 %i.af, ptr noundef nonnull align 8 dereferenceable(64) %3) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ag, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.fca.0.extract.sink = phi ptr [ %.fca.0.extract, %bb.k ], [ %.sroa.02.0.i, %bb.j ]
  %.fca.1.extract.sink = phi i32 [ %.fca.1.extract, %bb.k ], [ %i.ae, %bb.j ]
  %.sink = phi i8 [ 1, %bb.k ], [ 0, %bb.j ]
  store ptr %.fca.0.extract.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract.sink, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ah, align 8, !tbaa !130
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJSE_EEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESO_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 7 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !38    ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre12.a = load i8, ptr %.phi.trans.insert11, align 1, !tbaa !38
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !119 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38    ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 272
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !119 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !38    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit, !llvm.loop !12

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !38    ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !132
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit ], [ %.pre12.a, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 3 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 4
  br i1 %i.z, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 4) ; 2 uses
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 6
  %i.ae = or disjoint i64 %i.ad, 16
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #43 ; 11 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !38
  store ptr %i.af, ptr %4, align 8, !tbaa !131
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !38   ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 6
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJSE_EEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESO_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.015.i.i.i = phi ptr [ %i.bp, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i.i.i ], [ %i.an, %.lr.ph.preheader.i.i.i ] ; 8 uses
  %.01214.i.i.i = phi ptr [ %i.bo, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i.i.i ], [ %i.al, %.lr.ph.preheader.i.i.i ] ; 12 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16 ; 3 uses
  store ptr %i.ao, ptr %.015.i.i.i, align 8, !tbaa !120
  %i.ap = load ptr, ptr %.01214.i.i.i, align 8, !tbaa !97 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i4
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !96 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i4
  store ptr %i.ap, ptr %.015.i.i.i, align 8, !tbaa !97
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !38
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !38
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ax = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.at, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !96
  store ptr %i.aq, ptr %.01214.i.i.i, align 8, !tbaa !97
  store i64 0, ptr %i.ay, align 8, !tbaa !96
  store i8 0, ptr %i.aq, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 48 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !120
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !97 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 48 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !96 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !97
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !38
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !38
  %.phi.trans.insert4.i = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40
  %.pre5.i = load i64, ptr %.phi.trans.insert4.i, align 8, !tbaa !96
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i, %bb.f
  %i.bl = phi i64 [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i ], [ %i.bh, %bb.f ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 40
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !96
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !97
  store i64 0, ptr %i.bm, align 8, !tbaa !96
  store i8 0, ptr %i.be, align 8, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 64 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 64
  %.not.i.i.i5 = icmp eq ptr %i.bo, %i.am
  br i1 %.not.i.i.i5, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit.i.i, label %.lr.ph.i.i.i4, !llvm.loop !13

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i.i.i
  %.pre.i.i = load i8, ptr %i.x, align 1, !tbaa !38
  br label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJSE_EEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESO_DpOT_ENKUlhE_clEh.exit

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJSE_EEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESO_DpOT_ENKUlhE_clEh.exit: ; preds = %bb.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit.i.i
  %i.bq = phi i8 [ %.pre.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit.i.i ], [ 0, %bb.d ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  store i8 %i.bq, ptr %i.br, align 2, !tbaa !38
  store i8 0, ptr %i.x, align 1, !tbaa !38
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16clear_and_deleteEPSH_PSF_(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8, !tbaa !119
  store ptr %i.af, ptr %0, align 8, !tbaa !119
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4)
  %.pre13.a = load ptr, ptr %4, align 8, !tbaa !131
  br label %bb.h

bb.h:                                             ; preds = %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJSE_EEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESO_DpOT_ENKUlhE_clEh.exit, %bb.g, %bb.b
  %5 = phi ptr [ %i.af, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJSE_EEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESO_DpOT_ENKUlhE_clEh.exit ], [ %.pre13.a, %bb.g ], [ %i.v, %bb.b ]
  %6 = load i32, ptr %i.a, align 8, !tbaa !132
  %i.bs = trunc i32 %6 to i8
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13emplace_valueIJSE_EEEvhPSF_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 noundef zeroext %i.bs, ptr noundef nonnull %i.w, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !84
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !84
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13emplace_valueIJSE_EEEvhPSF_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = zext i8 %1 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !38    ; 2 uses
  %i.e = icmp ult i8 %1, %i.d
  %i.f = zext i8 %1 to i64                        ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr [64 x i8], ptr %i.g, i64 %i.f ; 3 uses
  %narrow = sub nuw i8 %i.d, %1
  %i.i = zext i8 %narrow to i64                   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.i, 6
  %i.j = getelementptr i8, ptr %i.h, i64 64
  %i.k = getelementptr [64 x i8], ptr %i.j, i64 %i.i
  %i.l = getelementptr i8, ptr %i.h, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.m, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.k, %.lr.ph.preheader.i ] ; 6 uses
  %.01416.i = phi ptr [ %i.n, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.l, %.lr.ph.preheader.i ] ; 8 uses
  %i.m = getelementptr inbounds i8, ptr %.017.i, i64 -64 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i, i64 -64 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %.017.i, i64 -48 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !120
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !97   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.01416.i, i64 -48 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds i8, ptr %.01416.i, i64 -56
  %i.t = load i64, ptr %i.s, align 8, !tbaa !96   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.p, ptr %i.m, align 8, !tbaa !97
  %i.w = load i64, ptr %i.q, align 8, !tbaa !38
  store i64 %i.w, ptr %i.o, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.x = getelementptr inbounds i8, ptr %.01416.i, i64 -56 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !96
  %i.z = getelementptr inbounds i8, ptr %.017.i, i64 -56
  store i64 %i.y, ptr %i.z, align 8, !tbaa !96
  store ptr %i.q, ptr %i.n, align 8, !tbaa !97
  store i64 0, ptr %i.x, align 8, !tbaa !96
  store i8 0, ptr %i.q, align 8, !tbaa !38
  %i.aa = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.017.i, i64 -16 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !120
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !97 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.01416.i, i64 -16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !96 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !97
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !38
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.c
  %i.al = getelementptr inbounds i8, ptr %.01416.i, i64 -24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !96
  %i.an = getelementptr inbounds i8, ptr %.017.i, i64 -24
  store i64 %i.am, ptr %i.an, align 8, !tbaa !96
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !97
  store i64 0, ptr %i.al, align 8, !tbaa !96
  store i8 0, ptr %i.ae, align 8, !tbaa !38
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !97  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.q
  br i1 %i.ap, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !38
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #42
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %.not.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit, label %.lr.ph.i, !llvm.loop !14

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %i.f ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !120
  %i.av = load ptr, ptr %3, align 8, !tbaa !97    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !96 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !34
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit
  %i.az = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.az, ptr %i.at, align 8, !tbaa !97
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.ba, ptr %i.au, align 8, !tbaa !38
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit
  %i.bb = phi ptr [ %i.az, %.noexc.i.i.i.i.i ], [ %i.au, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit ] ; 2 uses
  switch i64 %i.ax, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bc = load i8, ptr %i.av, align 1, !tbaa !38
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.av, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !96
  %i.bf = load ptr, ptr %i.at, align 8, !tbaa !97
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 3 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !120
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !97 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !96 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10value_initIJSE_EEEvhPSF_DpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !97
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !38
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !38
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10value_initIJSE_EEEvhPSF_DpOT_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10value_initIJSE_EEEvhPSF_DpOT_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !96
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !97
  store i64 0, ptr %i.bs, align 8, !tbaa !96
  store i8 0, ptr %i.bl, align 8, !tbaa !38
  %i.bv = load i8, ptr %i.c, align 1, !tbaa !38
  %i.bw = add i8 %i.bv, 1                         ; 3 uses
  store i8 %i.bw, ptr %i.c, align 1, !tbaa !38
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !38
  %.not.i18 = icmp eq i8 %i.by, 0
  br i1 %.not.i18, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10value_initIJSE_EEEvhPSF_DpOT_.exit
  %i.bz = zext i8 %i.bw to i32
end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
bb.j:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #37 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #42
  invoke void @__cxa_rethrow() #41
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bn

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #39
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE13insert_uniqueIS9_JRKSt21piecewise_construct_tSt5tupleIJRSI_EESR_IJEEEEESH_INS1_14btree_iteratorINS1_10btree_nodeISL_EERSJ_PSJ_EEbERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.587") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !212
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #43 ; 5 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !341
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !341
  store ptr %i.d, ptr %1, align 8, !tbaa !341
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !1234 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !noalias !1234
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.sroa.02.0.in.i = phi ptr [ %1, %bb.c ], [ %i.ad, %bb.i ]
  %.sroa.02.0.i = load ptr, ptr %.sroa.02.0.in.i, align 8, !tbaa !341, !noalias !1234 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !38, !noalias !1234 ; 2 uses
  %.not30.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not30.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.01932.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %.2.i.i.i.i, %bb.h ] ; 2 uses
  %.02031.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %.222.i.i.i.i, %bb.h ] ; 2 uses
  %i.n = add i64 %.02031.i.i.i.i, %.01932.i.i.i.i
  %i.o = lshr i64 %i.n, 1                         ; 4 uses
  %i.p = getelementptr inbounds nuw [136 x i8], ptr %i.m, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !96, !noalias !1234 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.r) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !97, !noalias !1234
  %i.u = tail call i32 @memcmp(ptr noundef %i.t, ptr noundef %i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #37, !noalias !1234 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.e
  %i.w = sub i64 %i.r, %i.h
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i

_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ], [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ] ; 2 uses
  %i.x = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i
  %i.y = add nuw i64 %i.o, 1
  br label %bb.h

bb.g:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i
  %.not29.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.222.i.i.i.i = phi i64 [ %.02031.i.i.i.i, %bb.f ], [ %i.o, %bb.g ] ; 3 uses
  %.2.i.i.i.i = phi i64 [ %i.y, %bb.f ], [ %.01932.i.i.i.i, %bb.g ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.2.i.i.i.i, %.222.i.i.i.i
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %bb.e

.loopexit.i:                                      ; preds = %bb.h, %bb.d
  %.sroa.018.2.i.i.i.ph.i = phi i64 [ 0, %bb.d ], [ %.222.i.i.i.i, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !38, !noalias !1234
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.loopexit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 560
  %i.ac = and i64 %.sroa.018.2.i.i.i.ph.i, 255
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  br label %bb.d

bb.j:                                             ; preds = %bb.g
  %i.ae = trunc i64 %i.o to i32
  br label %bb.l

bb.k:                                             ; preds = %.loopexit.i
  %i.af = trunc i64 %.sroa.018.2.i.i.i.ph.i to i32
  %i.ag = tail call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRSI_EESR_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISL_EERSJ_PSJ_EES10_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.02.0.i, i32 %i.af, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ag, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.fca.0.extract.sink = phi ptr [ %.fca.0.extract, %bb.k ], [ %.sroa.02.0.i, %bb.j ]
  %.fca.1.extract.sink = phi i32 [ %.fca.1.extract, %bb.k ], [ %i.ae, %bb.j ]
  %.sink = phi i8 [ 1, %bb.k ], [ 0, %bb.j ]
  store ptr %.fca.0.extract.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract.sink, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ah, align 8, !tbaa !1236
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRSI_EESR_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISL_EERSJ_PSJ_EES10_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator.282", align 8 ; 7 uses
  store ptr %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !38    ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre16.a = load i8, ptr %.phi.trans.insert15, align 1, !tbaa !38
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !341 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38    ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessISA_ESaISt4pairIKSA_SF_EELi256ELb0EEEEERSK_PSK_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 560
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !341 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !38    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessISA_ESaISt4pairIKSA_SF_EELi256ELb0EEEEERSK_PSK_EmmEv.exit, !llvm.loop !1237

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessISA_ESaISt4pairIKSA_SF_EELi256ELb0EEEEERSK_PSK_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !38    ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %6, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !218
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessISA_ESaISt4pairIKSA_SF_EELi256ELb0EEEEERSK_PSK_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessISA_ESaISt4pairIKSA_SF_EELi256ELb0EEEEERSK_PSK_EmmEv.exit ], [ %.pre16.a, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessISA_ESaISt4pairIKSA_SF_EELi256ELb0EEEEERSK_PSK_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessISA_ESaISt4pairIKSA_SF_EELi256ELb0EEEEERSK_PSK_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 3 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 4
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 4) ; 2 uses
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 136
  %i.ae = add nuw nsw i64 %i.ad, 16
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #43 ; 11 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !341
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 10 ; 2 uses
  store i8 0, ptr %i.ai, align 2, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.aj, align 1, !tbaa !38
  store ptr %i.af, ptr %6, align 8, !tbaa !217
  %i.ak = load i8, ptr %i.x, align 1, !tbaa !38   ; 2 uses
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.al, 136
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRSI_EESR_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISL_EERSJ_PSJ_EES10_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph.i.i.i6, %.lr.ph.preheader.i.i.i
  %.015.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i6 ], [ %i.ao, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01214.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i6 ], [ %i.am, %.lr.ph.preheader.i.i.i ] ; 2 uses
  tail call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_(ptr noundef nonnull %i.w, ptr noundef nonnull %.015.i.i.i, ptr noundef nonnull %.01214.i.i.i)
  %i.ap = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 136 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 136
  %.not.i.i.i7 = icmp eq ptr %i.ap, %i.an
  br i1 %.not.i.i.i7, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit.i.i, label %.lr.ph.i.i.i6, !llvm.loop !20

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i6
  %.pre.i.i = load i8, ptr %i.x, align 1, !tbaa !38
  br label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRSI_EESR_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISL_EERSJ_PSJ_EES10_DpOT_ENKUlhE_clEh.exit

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRSI_EESR_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISL_EERSJ_PSJ_EES10_DpOT_ENKUlhE_clEh.exit: ; preds = %bb.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit.i.i
  %i.ar = phi i8 [ %.pre.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit.i.i ], [ 0, %bb.d ]
  store i8 %i.ar, ptr %i.ai, align 2, !tbaa !38
  store i8 0, ptr %i.x, align 1, !tbaa !38
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE16clear_and_deleteEPSM_PSK_(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8, !tbaa !341
  store ptr %i.af, ptr %0, align 8, !tbaa !341
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISL_EERSJ_PSJ_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6)
  %.pre17 = load ptr, ptr %6, align 8, !tbaa !217
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRSI_EESR_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISL_EERSJ_PSJ_EES10_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %7 = phi ptr [ %i.af, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRSI_EESR_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISL_EERSJ_PSJ_EES10_DpOT_ENKUlhE_clEh.exit ], [ %.pre17, %bb.e ], [ %i.v, %bb.b ]
  %8 = load i32, ptr %i.a, align 8, !tbaa !218
  %i.as = trunc i32 %8 to i8
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJRSI_EESR_IJEEEEEvhPSK_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %7, i8 noundef zeroext %i.as, ptr noundef nonnull %i.w, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !212
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !212
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISL_EERSJ_PSJ_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator.282", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !341    ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !341  ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !161
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !38    ; 5 uses
  %.not112 = icmp eq i8 %i.f, 0
  br i1 %.not112, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !341  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !38    ; 3 uses
  %i.n = icmp ult i8 %i.m, 4
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 4, %i.m
  %i.o = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.p = and i32 %i.o, 252
  %i.q = icmp eq i32 %i.p, 0
  %i.r = zext i1 %i.q to i8
  %i.s = lshr i8 %narrow, %i.r
  %.sroa.speculated99 = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1) ; 3 uses
  %i.t = and i32 %i.o, 255
  %i.u = zext nneg i8 %.sroa.speculated99 to i32  ; 2 uses
  %.not84 = icmp samesign uge i32 %i.t, %i.u
  %narrow113.a = add nuw nsw i8 %.sroa.speculated99, %i.m
  %i.v = icmp samesign ult i8 %narrow113.a, 4
  %or.cond = select i1 %.not84, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE23rebalance_right_to_leftEhPSM_PSK_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext %.sroa.speculated99, ptr noundef nonnull %i.b, ptr noundef nonnull %i.w)
  %i.x = load i32, ptr %i.a, align 8, !tbaa !28
  %i.y = and i32 %i.x, 255
  %i.z = sub nsw i32 %i.y, %i.u                   ; 3 uses
  store i32 %i.z, ptr %i.a, align 8, !tbaa !28
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %i.l, align 1, !tbaa !38
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.z, 1
  %i.ae = add nsw i32 %i.ad, %i.ac
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38  ; 2 uses
  %i.ah = icmp ult i8 %i.f, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw i8 %i.f, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  %i.ak = zext i8 %i.ai to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !341 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !38  ; 3 uses
  %i.ap = icmp ult i8 %i.ao, 4
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow114 = sub nuw nsw i8 4, %i.ao
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i8
  %i.at = lshr i8 %narrow114, %i.as
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.at, i8 1) ; 3 uses
  %i.au = and i32 %i.aq, 255
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !38
  %i.ax = zext i8 %i.aw to i32
  %i.ay = zext nneg i8 %.sroa.speculated to i32
  %i.az = sub nsw i32 %i.ax, %i.ay
  %.not85 = icmp sle i32 %i.au, %i.az
  %narrow115 = add nuw nsw i8 %.sroa.speculated, %i.ao
  %i.ba = icmp samesign ult i8 %narrow115, 4
  %or.cond111 = select i1 %.not85, i1 true, i1 %i.ba
  br i1 %or.cond111, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE23rebalance_left_to_rightEhPSM_PSK_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.am, ptr noundef nonnull %i.bb)
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !341
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 10
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !38
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = icmp sgt i32 %i.bc, %i.bg
  br i1 %i.bh, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bi = xor i32 %i.bg, -1
  %i.bj = add nsw i32 %i.bc, %i.bi
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bk = icmp eq i8 %i.ag, 4
  br i1 %i.bk, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.bl = zext i8 %i.f to i32
  store ptr %i.c, ptr %2, align 8, !tbaa !217
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !218
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISL_EERSJ_PSJ_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
  %i.bn = load ptr, ptr %1, align 8, !tbaa !341   ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !341
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bp = tail call noalias noundef nonnull dereferenceable(600) ptr @_Znwm(i64 noundef 600) #43 ; 6 uses
  store ptr %i.c, ptr %i.bp, align 8, !tbaa !341
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 0, ptr %i.bq, align 8
  %i.br = load ptr, ptr %1, align 8, !tbaa !341   ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 560
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !341
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i8 0, ptr %i.bt, align 1, !tbaa !38
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !341
  store ptr %i.bp, ptr %0, align 8, !tbaa !341
  %.pre = load ptr, ptr %1, align 8, !tbaa !341
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bu = phi ptr [ %i.bn, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 2 uses
  %.083 = phi ptr [ %i.bo, %bb.m ], [ %i.c, %bb.l ], [ %i.bp, %bb.n ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !38
  %.not116 = icmp eq i8 %i.bw, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !38
  %i.bz = add i8 %i.by, 1                         ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = call noalias noundef nonnull dereferenceable(560) ptr @_Znwm(i64 noundef 560) #43 ; 9 uses
  store ptr %.083, ptr %i.cb, align 8, !tbaa !341
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i8 %i.bz, ptr %i.cc, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 9
  store i8 0, ptr %i.cd, align 1, !tbaa !38
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 10
  store i8 0, ptr %i.ce, align 2, !tbaa !38
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 11
  store i8 4, ptr %i.cf, align 1, !tbaa !38
  %i.cg = load ptr, ptr %1, align 8, !tbaa !341
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !28
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE5splitEiPSM_PSK_(ptr noundef nonnull align 1 dereferenceable(1) %i.cg, i32 noundef %i.ch, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.ca)
  %i.ci = load ptr, ptr %i.ca, align 8, !tbaa !341
  %i.cj = load ptr, ptr %1, align 8, !tbaa !341
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !341
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.cl = call noalias noundef nonnull dereferenceable(600) ptr @_Znwm(i64 noundef 600) #43 ; 7 uses
  store ptr %.083, ptr %i.cl, align 8, !tbaa !341
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i8 %i.bz, ptr %i.cm, align 8, !tbaa !38
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 9
  store i8 0, ptr %i.cn, align 1, !tbaa !38
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 10
  store i8 0, ptr %i.co, align 2, !tbaa !38
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 11
end_hunk_2
