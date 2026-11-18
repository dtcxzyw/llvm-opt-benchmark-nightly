Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/generate_geocoding_data?download=true
inline.NumInlined: 2644
inline.NumDeleted: 981
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNSt6vectorIN4i18n12phonenumbers8DirEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !26
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #28
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEEE16try_emplace_implIRSE_JEEESD_INS1_14btree_iteratorINS1_10btree_nodeISH_EERSF_PSF_EEbEOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.93", align 1     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %2, ptr %3, align 8, !tbaa !119, !alias.scope !346
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !347
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #31, !noalias !347 ; 5 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !56, !noalias !347
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.e, align 8, !tbaa !26, !noalias !347
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !56, !noalias !347
  store ptr %i.d, ptr %1, align 8, !tbaa !56, !noalias !347
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i32, ptr %2, align 4, !noalias !347 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.0.0.in.i.i = phi ptr [ %1, %bb.c ], [ %i.u, %bb.g ]
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !56, !noalias !347 ; 6 uses
  %i.h = getelementptr i8, ptr %.sroa.0.0.i.i, i64 10
  %i.i = load i8, ptr %i.h, align 1, !tbaa !26, !noalias !347 ; 3 uses
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultIiLb0EEERKT_RKNS1_19key_compare_adapterISB_iE15checked_compareE.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d
  %zext.i.i.i.i = zext i8 %i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !28, !noalias !347
  %i.n = icmp slt i32 %i.m, %i.g
  br i1 %i.n, label %bb.f, label %._crit_edge.loopexit.split.loop.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.o = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %zext.i.i.i.i
  br i1 %i.o, label %_ZNK4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultIiLb0EEERKT_RKNS1_19key_compare_adapterISB_iE15checked_compareE.exit.i.i, label %bb.e, !llvm.loop !344

._crit_edge.loopexit.split.loop.exit.i.i.i.i.i:   ; preds = %bb.e
  %i.p = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  br label %_ZNK4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultIiLb0EEERKT_RKNS1_19key_compare_adapterISB_iE15checked_compareE.exit.i.i

_ZNK4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultIiLb0EEERKT_RKNS1_19key_compare_adapterISB_iE15checked_compareE.exit.i.i: ; preds = %bb.f, %._crit_edge.loopexit.split.loop.exit.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.p, %._crit_edge.loopexit.split.loop.exit.i.i.i.i.i ], [ %i.j, %bb.f ] ; 3 uses
  %i.q = getelementptr i8, ptr %.sroa.0.0.i.i, i64 11
  %i.r = load i8, ptr %i.q, align 1, !tbaa !26, !noalias !347
  %.not.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i, label %bb.g, label %_ZNK4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EELb0EEERKT_.exit.i

bb.g:                                             ; preds = %_ZNK4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultIiLb0EEERKT_RKNS1_19key_compare_adapterISB_iE15checked_compareE.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 256
  %i.t = sext i32 %.0.lcssa.i.i.i.i.i to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  br label %bb.d

_ZNK4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EELb0EEERKT_.exit.i: ; preds = %_ZNK4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultIiLb0EEERKT_RKNS1_19key_compare_adapterISB_iE15checked_compareE.exit.i.i, %bb.h
  %.sroa.7.0.i.i = phi i32 [ %i.ab, %bb.h ], [ %.0.lcssa.i.i.i.i.i, %_ZNK4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultIiLb0EEERKT_RKNS1_19key_compare_adapterISB_iE15checked_compareE.exit.i.i ] ; 3 uses
  %.sroa.0.0.i18.i = phi ptr [ %i.ac, %bb.h ], [ %.sroa.0.0.i.i, %_ZNK4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultIiLb0EEERKT_RKNS1_19key_compare_adapterISB_iE15checked_compareE.exit.i.i ] ; 5 uses
  %i.v = getelementptr i8, ptr %.sroa.0.0.i18.i, i64 10
  %i.w = load i8, ptr %i.v, align 1, !tbaa !26, !noalias !347
  %i.x = zext i8 %i.w to i32
  %i.y = icmp eq i32 %.sroa.7.0.i.i, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EELb0EEERKT_.exit.i
  %i.z = getelementptr i8, ptr %.sroa.0.0.i18.i, i64 8
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !26, !noalias !347
  %i.ab = zext i8 %i.aa to i32
  %i.ac = load ptr, ptr %.sroa.0.0.i18.i, align 8, !tbaa !56, !noalias !347 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 11
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !26, !noalias !347
  %.not.i21.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i21.i, label %_ZNK4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EELb0EEERKT_.exit.i, label %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEEET_SP_.exit.thread.i, !llvm.loop !345

bb.i:                                             ; preds = %_ZNK4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EELb0EEERKT_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i18.i, i64 16
  %i.ag = sext i32 %.sroa.7.0.i.i to i64
  %i.ah = getelementptr inbounds [40 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !28, !noalias !347
  %i.aj = icmp slt i32 %i.g, %i.ai
  br i1 %i.aj, label %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEEET_SP_.exit.thread.i, label %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13insert_uniqueIiJRKSt21piecewise_construct_tSt5tupleIJRSD_EESM_IJEEEEESC_INS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEbERKT_DpOT0_.exit

_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEEET_SP_.exit.thread.i: ; preds = %bb.h, %bb.i
  %i.ak = call { ptr, i32 } @_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRSD_EESM_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESV_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %.sroa.0.0.i.i, i32 %.0.lcssa.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !347 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ak, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ak, 1
  br label %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13insert_uniqueIiJRKSt21piecewise_construct_tSt5tupleIJRSD_EESM_IJEEEEESC_INS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEbERKT_DpOT0_.exit

_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13insert_uniqueIiJRKSt21piecewise_construct_tSt5tupleIJRSD_EESM_IJEEEEESC_INS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEbERKT_DpOT0_.exit: ; preds = %bb.i, %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEEET_SP_.exit.thread.i
  %.sroa.0.0.i18.lcssa.sink.i = phi ptr [ %.fca.0.extract.i, %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEEET_SP_.exit.thread.i ], [ %.sroa.0.0.i18.i, %bb.i ]
  %.sroa.7.0.i.lcssa.sink.i = phi i32 [ %.fca.1.extract.i, %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEEET_SP_.exit.thread.i ], [ %.sroa.7.0.i.i, %bb.i ]
  %.sink.i = phi i8 [ 1, %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEEET_SP_.exit.thread.i ], [ 0, %bb.i ]
  store ptr %.sroa.0.0.i18.lcssa.sink.i, ptr %0, align 8, !tbaa !56, !alias.scope !347
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0.i.lcssa.sink.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !28, !alias.scope !347
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i, ptr %i.al, align 8, !tbaa !349, !alias.scope !347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRSD_EESM_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESV_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::debian3::container_internal::btree_iterator.90", align 8 ; 8 uses
  store ptr %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !26    ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert29 = getelementptr i8, ptr %1, i64 10
  %.pre30 = load i8, ptr %.phi.trans.insert29, align 1, !tbaa !26
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %storemerge3.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !56 ; 4 uses
  store ptr %storemerge3.i.i.i, ptr %6, align 8, !tbaa !61
  %i.g = getelementptr i8, ptr %storemerge3.i.i.i, i64 11
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26    ; 2 uses
  %.not.i4.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i4.i.i.i, label %.lr.ph6.i.i.i, label %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit

.lr.ph6.i.i.i:                                    ; preds = %.thread.i.i, %.lr.ph6.i.i.i
  %storemerge5.i.i.i = phi ptr [ %storemerge.i.i.i, %.lr.ph6.i.i.i ], [ %storemerge3.i.i.i, %.thread.i.i ] ; 2 uses
  %i.i = getelementptr i8, ptr %storemerge5.i.i.i, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge5.i.i.i, i64 256
  %i.l = zext i8 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %storemerge.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !56 ; 4 uses
  store ptr %storemerge.i.i.i, ptr %6, align 8, !tbaa !61
  %i.n = getelementptr i8, ptr %storemerge.i.i.i, i64 11
  %i.o = load i8, ptr %i.n, align 1, !tbaa !26    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %.lr.ph6.i.i.i, label %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit, !llvm.loop !350

_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit: ; preds = %.lr.ph6.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.h, %.thread.i.i ], [ %i.o, %.lr.ph6.i.i.i ]
  %storemerge.lcssa.i.i.i = phi ptr [ %storemerge3.i.i.i, %.thread.i.i ], [ %storemerge.i.i.i, %.lr.ph6.i.i.i ] ; 2 uses
  %i.p = getelementptr i8, ptr %storemerge.lcssa.i.i.i, i64 10
  %i.q = load i8, ptr %i.p, align 1, !tbaa !26    ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !63
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit
  %i.s = phi i32 [ %i.r, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit ], [ %2, %._crit_edge ] ; 2 uses
  %i.t = phi i8 [ %i.q, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit ], [ %.pre30, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %storemerge.lcssa.i.i.i, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit ], [ %1, %._crit_edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = icmp eq i8 %i.t, %i.u
  br i1 %i.x, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.y = icmp ult i8 %i.t, 6
  br i1 %i.y, label %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE18new_leaf_root_nodeEi.exit, label %bb.e

_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE18new_leaf_root_nodeEi.exit: ; preds = %bb.c
  %i.z = shl nuw nsw i8 %i.t, 1
  %i.aa = tail call i8 @llvm.umin.i8(i8 %i.z, i8 6) ; 2 uses
  %narrow = mul nuw i8 %i.aa, 40
  %i.ab = zext i8 %narrow to i64
  %i.ac = add nuw nsw i64 %i.ab, 16
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #31 ; 11 uses
  store ptr %i.ad, ptr %i.ad, align 8, !tbaa !56
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  store i8 0, ptr %i.ae, align 8, !tbaa !26
  %i.af = getelementptr i8, ptr %i.ad, i64 9
  store i8 0, ptr %i.af, align 1, !tbaa !26
  %i.ag = getelementptr i8, ptr %i.ad, i64 10     ; 2 uses
  store i8 0, ptr %i.ag, align 2, !tbaa !26
  %i.ah = getelementptr i8, ptr %i.ad, i64 11
  store i8 %i.aa, ptr %i.ah, align 1, !tbaa !26
  store ptr %i.ad, ptr %6, align 8, !tbaa !61
  %i.ai = load ptr, ptr %0, align 8, !tbaa !55    ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 10     ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !26  ; 2 uses
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.al, 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.ak, 0
  br i1 %.not13.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE18new_leaf_root_nodeEi.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.bf, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i ], [ %i.ao, %.lr.ph.preheader.i ] ; 5 uses
  %.01214.i = phi ptr [ %i.be, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i ], [ %i.am, %.lr.ph.preheader.i ] ; 6 uses
  %i.ap = load i32, ptr %.01214.i, align 8, !tbaa !123
  store i32 %i.ap, ptr %.015.i, align 8, !tbaa !123
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.015.i, i64 24 ; 3 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !30
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !25 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i, i64 24 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false)
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !25
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !26
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !29
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !25
  store i64 0, ptr %i.bb, align 8, !tbaa !29
  store i8 0, ptr %i.au, align 8, !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %.not.i22 = icmp eq ptr %i.be, %i.an
  br i1 %.not.i22, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit, label %.lr.ph.i, !llvm.loop !3

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i
  %.pre31 = load i8, ptr %i.aj, align 1, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit, %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE18new_leaf_root_nodeEi.exit
  %i.bg = phi i8 [ %.pre31, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit ], [ 0, %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE18new_leaf_root_nodeEi.exit ]
  store i8 %i.bg, ptr %i.ag, align 2, !tbaa !26
  store i8 0, ptr %i.aj, align 1, !tbaa !26
  tail call void @_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE16clear_and_deleteEPSH_PSF_(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.w)
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !56
  store ptr %i.ad, ptr %0, align 8, !tbaa !56
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6)
  %.pre32 = load ptr, ptr %6, align 8, !tbaa !61
  %.pre33 = load i32, ptr %i.a, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, %bb.e, %bb.b
  %i.bh = phi i32 [ %i.s, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit ], [ %.pre33, %bb.e ], [ %i.s, %bb.b ]
  %i.bi = phi ptr [ %i.ad, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit ], [ %.pre32, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.bj = sext i32 %i.bh to i64                   ; 4 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 10     ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !26  ; 2 uses
  %i.bm = zext i8 %i.bl to i64                    ; 4 uses
  %i.bn = icmp ult i64 %i.bj, %i.bm
  br i1 %i.bn, label %.lr.ph.preheader.i.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bo = sub nuw nsw i64 %i.bm, %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bq = add nuw nsw i64 %i.bm, 4294967295
  %i.br = and i64 %i.bq, 4294967295
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.bp, i64 %i.br ; 2 uses
  %.idx.i.i = mul nsw i64 %i.bo, -40
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %.idx.i.i
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bp, i64 %i.bm
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i, %.lr.ph.preheader.i.i
  %.018.i.i = phi ptr [ %i.cl, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i ], [ %i.bu, %.lr.ph.preheader.i.i ] ; 5 uses
  %.01417.i.i = phi ptr [ %i.ck, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i ], [ %i.bs, %.lr.ph.preheader.i.i ] ; 6 uses
  %i.bv = load i32, ptr %.01417.i.i, align 8, !tbaa !123
  store i32 %i.bv, ptr %.018.i.i, align 8, !tbaa !123
  %i.bw = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 24 ; 3 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !30
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !25 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 24 ; 5 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !29 ; 2 uses
  %i.ce = icmp ult i64 %i.cd, 16
  call void @llvm.assume(i1 %i.ce)
  %i.cf = add nuw nsw i64 %i.cd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %i.ca, i64 %i.cf, i1 false)
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !25
  %i.cg = load i64, ptr %i.ca, align 8, !tbaa !26
  store i64 %i.cg, ptr %i.by, align 8, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 16 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !29
  %i.cj = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 16
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !29
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !25
  store i64 0, ptr %i.ch, align 8, !tbaa !29
  store i8 0, ptr %i.ca, align 8, !tbaa !26
  %i.ck = getelementptr inbounds i8, ptr %.01417.i.i, i64 -40 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.018.i.i, i64 -40
  %.not.i.i24 = icmp eq ptr %i.ck, %i.bt
  br i1 %.not.i.i24, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.loopexit.i: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i
  %.pre.i = load i8, ptr %i.bk, align 1, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.i

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.i: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.loopexit.i, %bb.f
  %i.cm = phi i8 [ %.pre.i, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.loopexit.i ], [ %i.bl, %bb.f ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.co = and i64 %i.bj, 255
  %i.cp = getelementptr inbounds nuw [40 x i8], ptr %i.cn, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %4, align 8, !tbaa !119
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !28
  store i32 %i.cs, ptr %i.cp, align 8, !tbaa !123
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 2 uses
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !30
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 0, ptr %i.cv, align 8, !tbaa !29
  store i8 0, ptr %i.cu, align 8, !tbaa !26
  %i.cw = add i8 %i.cm, 1                         ; 2 uses
  store i8 %i.cw, ptr %i.bk, align 1, !tbaa !26
  %i.cx = getelementptr i8, ptr %i.bi, i64 11
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !26
  %.not.i19.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i19.i, label %bb.h, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJRSD_EESM_IJEEEEEvmPSF_DpOT_.exit

end_hunk_0
begin_hunk_1_@_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE5splitEiPSH_PSF_:bb.a

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 16 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 16
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !29
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !25
  store i64 0, ptr %i.bo, align 8, !tbaa !29
  store i8 0, ptr %i.bh, align 8, !tbaa !26
  %i.br = getelementptr inbounds i8, ptr %.01417.i.i, i64 -40 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.018.i.i, i64 -40
  %.not.i.i = icmp eq ptr %i.br, %i.ba
  br i1 %.not.i.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.i: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIiS9_EESK_PSF_.exit.i.i, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.ao ; 4 uses
  %i.bv = load i32, ptr %i.aq, align 8, !tbaa !123
  store i32 %i.bv, ptr %i.bu, align 8, !tbaa !123
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 3 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !30
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !25 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 5 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27

bb.g:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !29 ; 2 uses
  %i.ce = icmp ult i64 %i.cd, 16
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = add nuw nsw i64 %i.cd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %i.ca, i64 %i.cf, i1 false)
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIiS9_EEEEEvhPSF_DpOT_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit.i
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !25
  %i.cg = load i64, ptr %i.ca, align 8, !tbaa !26
  store i64 %i.cg, ptr %i.by, align 8, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIiS9_EEEEEvhPSF_DpOT_.exit.i

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIiS9_EEEEEvhPSF_DpOT_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27, %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !29
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !25
  store i64 0, ptr %i.ch, align 8, !tbaa !29
  store i8 0, ptr %i.ca, align 8, !tbaa !26
  %i.ck = load i8, ptr %i.ar, align 1, !tbaa !26
  %i.cl = add i8 %i.ck, 1                         ; 2 uses
  store i8 %i.cl, ptr %i.ar, align 1, !tbaa !26
  %i.cm = getelementptr i8, ptr %i.al, i64 11
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !26
  %.not.i17.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i17.i, label %bb.h, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS9_EEEEEvmPSF_DpOT_.exit

bb.h:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIiS9_EEEEEvhPSF_DpOT_.exit.i
  %i.co = zext i8 %i.cl to i64                    ; 2 uses
  %i.cp = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %i.cq = icmp samesign ult i64 %i.cp, %i.co
  br i1 %i.cq, label %.lr.ph.i28, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS9_EEEEEvmPSF_DpOT_.exit

.lr.ph.i28:                                       ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %i.al, i64 256
  %i.cs = trunc nuw i64 %i.cp to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i28
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %i.co, %.lr.ph.i28 ] ; 3 uses
  %i.ct = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !56 ; 2 uses
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !56
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %i.cx = trunc nuw i64 %indvars.iv to i8
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !26
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i8
  %i.cy = icmp ugt i8 %indvars, %i.cs
  br i1 %i.cy, label %bb.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS9_EEEEEvmPSF_DpOT_.exit, !llvm.loop !356

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS9_EEEEEvmPSF_DpOT_.exit: ; preds = %bb.i, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIiS9_EEEEEvhPSF_DpOT_.exit.i, %bb.h
  %i.cz = load i8, ptr %i.h, align 2, !tbaa !26
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !25 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13value_destroyEhPSF_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS9_EEEEEvmPSF_DpOT_.exit
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !26
  %i.dh = add i64 %i.dg, 1
  tail call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #27
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13value_destroyEhPSF_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13value_destroyEhPSF_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS9_EEEEEvmPSF_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29
  %i.di = load ptr, ptr %0, align 8, !tbaa !56    ; 2 uses
  %i.dj = load i8, ptr %i.am, align 8, !tbaa !26
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.dk, 1                ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 256
  %i.dn = zext nneg i32 %i.dl to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn
  store ptr %2, ptr %i.do, align 8, !tbaa !56
  %i.dp = trunc i32 %i.dl to i8
  %i.dq = getelementptr i8, ptr %2, i64 8
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !26
  store ptr %i.di, ptr %2, align 8, !tbaa !56
  %i.dr = getelementptr i8, ptr %0, i64 11
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !26
  %.not.i30 = icmp eq i8 %i.ds, 0
  br i1 %.not.i30, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13value_destroyEhPSF_.exit
  %i.dt = load i8, ptr %i.h, align 2, !tbaa !26
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.dw = zext i8 %i.dt to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.k
  %indvars.iv36 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next37, %bb.k ] ; 4 uses
  %indvars.iv34 = phi i64 [ %i.dw, %bb.j ], [ %indvars.iv.next35, %bb.k ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next35
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !56 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv36
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !56
  %i.ea = trunc nuw i64 %indvars.iv36 to i8
  %i.eb = getelementptr i8, ptr %i.dy, i64 8
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !26
  store ptr %2, ptr %i.dy, align 8, !tbaa !56
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %i.ec = load i8, ptr %i.j, align 2, !tbaa !26
  %i.ed = zext i8 %i.ec to i64
  %.not.not = icmp samesign ult i64 %indvars.iv36, %i.ed
  br i1 %.not.not, label %bb.k, label %.loopexit, !llvm.loop !357

.loopexit:                                        ; preds = %bb.k, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE13value_destroyEhPSF_.exit
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #22

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #17

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #17

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl7debian318container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE16internal_emplaceIJiEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERiPiEESF_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::debian3::container_internal::btree_iterator.24", align 8 ; 8 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !26    ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert28 = getelementptr i8, ptr %1, i64 10
  %.pre29 = load i8, ptr %.phi.trans.insert28, align 1, !tbaa !26
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %storemerge3.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !83 ; 4 uses
  store ptr %storemerge3.i.i.i, ptr %4, align 8, !tbaa !125
  %i.g = getelementptr i8, ptr %storemerge3.i.i.i, i64 11
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26    ; 2 uses
  %.not.i4.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i4.i.i.i, label %.lr.ph6.i.i.i, label %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERiPiEmmEv.exit

.lr.ph6.i.i.i:                                    ; preds = %.thread.i.i, %.lr.ph6.i.i.i
  %storemerge5.i.i.i = phi ptr [ %storemerge.i.i.i, %.lr.ph6.i.i.i ], [ %storemerge3.i.i.i, %.thread.i.i ] ; 2 uses
  %i.i = getelementptr i8, ptr %storemerge5.i.i.i, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge5.i.i.i, i64 256
  %i.l = zext i8 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %storemerge.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !83 ; 4 uses
  store ptr %storemerge.i.i.i, ptr %4, align 8, !tbaa !125
  %i.n = getelementptr i8, ptr %storemerge.i.i.i, i64 11
  %i.o = load i8, ptr %i.n, align 1, !tbaa !26    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %.lr.ph6.i.i.i, label %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERiPiEmmEv.exit, !llvm.loop !358

_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERiPiEmmEv.exit: ; preds = %.lr.ph6.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.h, %.thread.i.i ], [ %i.o, %.lr.ph6.i.i.i ]
  %storemerge.lcssa.i.i.i = phi ptr [ %storemerge3.i.i.i, %.thread.i.i ], [ %storemerge.i.i.i, %.lr.ph6.i.i.i ] ; 2 uses
  %i.p = getelementptr i8, ptr %storemerge.lcssa.i.i.i, i64 10
  %i.q = load i8, ptr %i.p, align 1, !tbaa !26    ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !126
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERiPiEmmEv.exit
  %i.s = phi i32 [ %i.r, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERiPiEmmEv.exit ], [ %2, %._crit_edge ] ; 2 uses
  %i.t = phi i8 [ %i.q, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERiPiEmmEv.exit ], [ %.pre29, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERiPiEmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %storemerge.lcssa.i.i.i, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERiPiEmmEv.exit ], [ %1, %._crit_edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = icmp eq i8 %i.t, %i.u
  br i1 %i.x, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.y = icmp ult i8 %i.t, 61
  br i1 %i.y, label %_ZN4absl7debian318container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE18new_leaf_root_nodeEi.exit, label %bb.d

_ZN4absl7debian318container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE18new_leaf_root_nodeEi.exit: ; preds = %bb.c
  %i.z = shl nuw nsw i8 %i.t, 1
  %i.aa = tail call i8 @llvm.umin.i8(i8 %i.z, i8 61) ; 2 uses
  %i.ab = shl nuw i8 %i.aa, 2
  %reass.mul.i.i.i.i = zext i8 %i.ab to i64
  %i.ac = add nuw nsw i64 %reass.mul.i.i.i.i, 16
  %i.ad = and i64 %i.ac, 504
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #31 ; 12 uses
  store ptr %i.ae, ptr %i.ae, align 8, !tbaa !83
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  store i8 0, ptr %i.af, align 8, !tbaa !26
  %i.ag = getelementptr i8, ptr %i.ae, i64 9
  store i8 0, ptr %i.ag, align 1, !tbaa !26
  %i.ah = getelementptr i8, ptr %i.ae, i64 10     ; 2 uses
  store i8 0, ptr %i.ah, align 2, !tbaa !26
  %i.ai = getelementptr i8, ptr %i.ae, i64 11
  store i8 %i.aa, ptr %i.ai, align 1, !tbaa !26
  store ptr %i.ae, ptr %4, align 8, !tbaa !125
  %i.aj = load ptr, ptr %0, align 8, !tbaa !81    ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 10     ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !26  ; 2 uses
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.am, 2              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.al, 0
  br i1 %.not13.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4absl7debian318container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE18new_leaf_root_nodeEi.exit
  %i.ap = ptrtoaddr ptr %i.aj to i64
  %i.aq = ptrtoaddr ptr %i.ae to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 3 uses
  %i.as = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.at = lshr exact i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 44
  %i.av = sub i64 %i.ap, %i.aq
  %diff.check = icmp ugt i64 %i.av, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ar, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.an, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.az ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.an, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep41, align 4, !tbaa !28
  %wide.load42 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !28
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !28
  store <4 x i32> %wide.load42, ptr %i.bb, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !359

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.015.i.ph = phi ptr [ %i.ar, %.lr.ph.preheader.i ], [ %i.ax, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.an, %.lr.ph.preheader.i ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01214.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bd = load i32, ptr %.01214.i, align 4, !tbaa !28
  store i32 %i.bd, ptr %.015.i, align 4, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i20 = icmp eq ptr %i.be, %i.ao
  br i1 %.not.i20, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !360

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre30 = load i8, ptr %i.ak, align 1, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %_ZN4absl7debian318container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE18new_leaf_root_nodeEi.exit
  %i.bg = phi i8 [ %.pre30, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ 0, %_ZN4absl7debian318container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE18new_leaf_root_nodeEi.exit ]
  store i8 %i.bg, ptr %i.ah, align 2, !tbaa !26
  store i8 0, ptr %i.ak, align 1, !tbaa !26
  tail call void @_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE16clear_and_deleteEPS8_PS6_(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.w)
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !83
  store ptr %i.ae, ptr %0, align 8, !tbaa !83
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN4absl7debian318container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERiPiEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4)
  %.pre31 = load ptr, ptr %4, align 8, !tbaa !125
  %.pre32 = load i32, ptr %i.a, align 8, !tbaa !126
  br label %bb.e

bb.e:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, %bb.d, %bb.b
  %i.bh = phi i32 [ %i.s, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit ], [ %.pre32, %bb.d ], [ %i.s, %bb.b ]
  %i.bi = phi ptr [ %i.ae, %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit ], [ %.pre31, %bb.d ], [ %i.v, %bb.b ] ; 5 uses
  %i.bj = sext i32 %i.bh to i64                   ; 5 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 10     ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !26  ; 2 uses
  %i.bm = zext i8 %i.bl to i64                    ; 4 uses
  %i.bn = icmp ult i64 %i.bj, %i.bm
  br i1 %i.bn, label %.lr.ph.preheader.i.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %.neg.i = sub nsw i64 %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 12 ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bm, 32
  %sext.i.i = add nsw i64 %i.bp, -4294967296
  %i.bq = lshr exact i64 %sext.i.i, 30            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq ; 4 uses
  %.neg.i.i = shl nsw i64 %.neg.i, 2
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %.neg.i.i
  %i.bt = shl nuw nsw i64 %i.bm, 2                ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bt ; 3 uses
  %i.bv = shl nsw i64 %i.bj, 2
  %i.bw = add nsw i64 %i.bt, -4
  %i.bx = sub nsw i64 %i.bw, %i.bv                ; 2 uses
  %i.by = lshr exact i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check47 = icmp ult i64 %i.bx, 44
  %i.ca = sub nsw i64 %i.bt, %i.bq
  %diff.check49 = icmp ugt i64 %i.ca, -32
  %or.cond63 = select i1 %min.iters.check47, i1 true, i1 %diff.check49
  br i1 %or.cond63, label %.lr.ph.i.i.preheader, label %vector.ph50

vector.ph50:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec51 = and i64 %i.bz, 9223372036854775800   ; 3 uses
  %i.cb = mul i64 %n.vec51, -4                    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bu, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.br, i64 %i.cb
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next58, %vector.body52 ] ; 2 uses
  %i.ce = mul i64 %index53, -4                    ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.bu, i64 %i.ce ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.br, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep55, i64 -12
  %i.cg = getelementptr i8, ptr %next.gep55, i64 -28
  %wide.load56 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !28
  %wide.load57 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !28
  %i.ch = getelementptr i8, ptr %next.gep54, i64 -12
  %i.ci = getelementptr i8, ptr %next.gep54, i64 -28
  store <4 x i32> %wide.load56, ptr %i.ch, align 4, !tbaa !28
  store <4 x i32> %wide.load57, ptr %i.ci, align 4, !tbaa !28
  %index.next58 = add nuw i64 %index53, 8         ; 2 uses
  %i.cj = icmp eq i64 %index.next58, %n.vec51
  br i1 %i.cj, label %middle.block59, label %vector.body52, !llvm.loop !361

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %i.bz, %n.vec51
  br i1 %cmp.n60, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block59
  %.018.i.i.ph = phi ptr [ %i.bu, %.lr.ph.preheader.i.i ], [ %i.cc, %middle.block59 ]
  %.01417.i.i.ph = phi ptr [ %i.br, %.lr.ph.preheader.i.i ], [ %i.cd, %middle.block59 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.018.i.i = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01417.i.i = phi ptr [ %i.cl, %.lr.ph.i.i ], [ %.01417.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ck = load i32, ptr %.01417.i.i, align 4, !tbaa !28
  store i32 %i.ck, ptr %.018.i.i, align 4, !tbaa !28
  %i.cl = getelementptr inbounds i8, ptr %.01417.i.i, i64 -4 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.018.i.i, i64 -4
  %.not.i.i22 = icmp eq ptr %i.cl, %i.bs
  br i1 %.not.i.i22, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !362

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block59
  %.pre.i = load i8, ptr %i.bk, align 1, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i

_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.loopexit.i, %bb.e
end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !106
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !108
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !105
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !106
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #28 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #27
  invoke void @__cxa_rethrow() #30
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bn

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #33
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13insert_uniqueIS9_JRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJEEEEESC_INS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EEbERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.122") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31 ; 5 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !90
  store ptr %i.d, ptr %1, align 8, !tbaa !90
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !397 ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !noalias !397
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.sroa.02.0.in.i = phi ptr [ %1, %bb.c ], [ %i.ae, %bb.i ]
  %.sroa.02.0.i = load ptr, ptr %.sroa.02.0.in.i, align 8, !tbaa !90, !noalias !397 ; 6 uses
  %i.j = getelementptr i8, ptr %.sroa.02.0.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26, !noalias !397 ; 2 uses
  %.not27.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not27.i.i.i.i, label %_ZNK4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE11lower_boundIS9_EENS1_12SearchResultIiLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.thread39.i.i.i.i, %.lr.ph.i.i.i.i
  %.01629.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %.2.i.i.i.i, %.thread39.i.i.i.i ] ; 3 uses
  %.01728.i.i.i.i = phi i32 [ %i.l, %.lr.ph.i.i.i.i ], [ %.219.i.i.i.i, %.thread39.i.i.i.i ] ; 2 uses
  %i.n = add nsw i32 %.01728.i.i.i.i, %.01629.i.i.i.i
  %i.o = ashr i32 %i.n, 1                         ; 5 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [64 x i8], ptr %i.m, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !29, !noalias !397 ; 3 uses
  %i.t = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 %i.h) ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZNK4absl7debian318container_internal22StringBtreeDefaultLessclENS0_11string_viewES3_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !25, !noalias !397
  %i.w = tail call i32 @memcmp(ptr noundef %i.v, ptr noundef %i.i, i64 noundef %i.t) #28, !noalias !397 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZNK4absl7debian318container_internal22StringBtreeDefaultLessclENS0_11string_viewES3_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.inv.i.i.i.i.i.i.i = icmp sgt i32 %i.w, -1
  br i1 %.inv.i.i.i.i.i.i.i, label %.thread39.i.i.i.i, label %_ZNK4absl7debian318container_internal22StringBtreeDefaultLessclENS0_11string_viewES3_.exit.thread.i.i.i.i

_ZNK4absl7debian318container_internal22StringBtreeDefaultLessclENS0_11string_viewES3_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.y = icmp ult i64 %i.s, %i.h
  br i1 %i.y, label %_ZNK4absl7debian318container_internal22StringBtreeDefaultLessclENS0_11string_viewES3_.exit.thread.i.i.i.i, label %bb.h

_ZNK4absl7debian318container_internal22StringBtreeDefaultLessclENS0_11string_viewES3_.exit.thread.i.i.i.i: ; preds = %_ZNK4absl7debian318container_internal22StringBtreeDefaultLessclENS0_11string_viewES3_.exit.i.i.i.i, %bb.g
  %i.z = add nsw i32 %i.o, 1
  br label %.thread39.i.i.i.i

bb.h:                                             ; preds = %_ZNK4absl7debian318container_internal22StringBtreeDefaultLessclENS0_11string_viewES3_.exit.i.i.i.i
  %.not26.i.i.i.i = icmp eq i64 %i.s, %i.h
  br i1 %.not26.i.i.i.i, label %.loopexit, label %.thread39.i.i.i.i

.thread39.i.i.i.i:                                ; preds = %bb.h, %_ZNK4absl7debian318container_internal22StringBtreeDefaultLessclENS0_11string_viewES3_.exit.thread.i.i.i.i, %bb.g
  %.219.i.i.i.i = phi i32 [ %.01728.i.i.i.i, %_ZNK4absl7debian318container_internal22StringBtreeDefaultLessclENS0_11string_viewES3_.exit.thread.i.i.i.i ], [ %i.o, %bb.h ], [ %i.o, %bb.g ] ; 3 uses
  %.2.i.i.i.i = phi i32 [ %i.z, %_ZNK4absl7debian318container_internal22StringBtreeDefaultLessclENS0_11string_viewES3_.exit.thread.i.i.i.i ], [ %.01629.i.i.i.i, %bb.h ], [ %.01629.i.i.i.i, %bb.g ] ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.2.i.i.i.i, %.219.i.i.i.i
  br i1 %.not.i.i.i.i, label %_ZNK4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE11lower_boundIS9_EENS1_12SearchResultIiLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i, label %bb.e

_ZNK4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE11lower_boundIS9_EENS1_12SearchResultIiLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i: ; preds = %.thread39.i.i.i.i, %bb.d
  %.sroa.0.0.extract.trunc14.i = phi i32 [ 0, %bb.d ], [ %.219.i.i.i.i, %.thread39.i.i.i.i ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.sroa.02.0.i, i64 11
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !26, !noalias !397
  %.not.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i, label %bb.i, label %_ZNK4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15internal_locateIS9_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EELb1EEERKT_.exit

bb.i:                                             ; preds = %_ZNK4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE11lower_boundIS9_EENS1_12SearchResultIiLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 272
  %i.ad = sext i32 %.sroa.0.0.extract.trunc14.i to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  br label %bb.d

_ZNK4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15internal_locateIS9_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EELb1EEERKT_.exit: ; preds = %_ZNK4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE11lower_boundIS9_EENS1_12SearchResultIiLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i
  %i.af = tail call { ptr, i32 } @_ZN4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESV_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.02.0.i, i32 %.sroa.0.0.extract.trunc14.i, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.af, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.af, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %_ZNK4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15internal_locateIS9_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EELb1EEERKT_.exit
  %.fca.0.extract.sink = phi ptr [ %.fca.0.extract, %_ZNK4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15internal_locateIS9_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EELb1EEERKT_.exit ], [ %.sroa.02.0.i, %bb.h ]
  %.fca.1.extract.sink = phi i32 [ %.fca.1.extract, %_ZNK4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15internal_locateIS9_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EELb1EEERKT_.exit ], [ %i.o, %bb.h ]
  %.sink = phi i8 [ 1, %_ZNK4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15internal_locateIS9_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EELb1EEERKT_.exit ], [ 0, %bb.h ]
  store ptr %.fca.0.extract.sink, ptr %0, align 8, !tbaa !90
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract.sink, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ag, align 8, !tbaa !399
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESV_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::debian3::container_internal::btree_iterator.124", align 8 ; 8 uses
  store ptr %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !26    ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert26 = getelementptr i8, ptr %1, i64 10
  %.pre27 = load i8, ptr %.phi.trans.insert26, align 1, !tbaa !26
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %storemerge3.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !90 ; 4 uses
  store ptr %storemerge3.i.i.i, ptr %6, align 8, !tbaa !116
  %i.g = getelementptr i8, ptr %storemerge3.i.i.i, i64 11
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26    ; 2 uses
  %.not.i4.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i4.i.i.i, label %.lr.ph6.i.i.i, label %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit

.lr.ph6.i.i.i:                                    ; preds = %.thread.i.i, %.lr.ph6.i.i.i
  %storemerge5.i.i.i = phi ptr [ %storemerge.i.i.i, %.lr.ph6.i.i.i ], [ %storemerge3.i.i.i, %.thread.i.i ] ; 2 uses
  %i.i = getelementptr i8, ptr %storemerge5.i.i.i, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge5.i.i.i, i64 272
  %i.l = zext i8 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %storemerge.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !90 ; 4 uses
  store ptr %storemerge.i.i.i, ptr %6, align 8, !tbaa !116
  %i.n = getelementptr i8, ptr %storemerge.i.i.i, i64 11
  %i.o = load i8, ptr %i.n, align 1, !tbaa !26    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %.lr.ph6.i.i.i, label %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit, !llvm.loop !400

_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit: ; preds = %.lr.ph6.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.h, %.thread.i.i ], [ %i.o, %.lr.ph6.i.i.i ]
  %storemerge.lcssa.i.i.i = phi ptr [ %storemerge3.i.i.i, %.thread.i.i ], [ %storemerge.i.i.i, %.lr.ph6.i.i.i ] ; 2 uses
  %i.p = getelementptr i8, ptr %storemerge.lcssa.i.i.i, i64 10
  %i.q = load i8, ptr %i.p, align 1, !tbaa !26    ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !117
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit
  %i.s = phi i32 [ %i.r, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit ], [ %2, %._crit_edge ] ; 2 uses
  %i.t = phi i8 [ %i.q, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit ], [ %.pre27, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %storemerge.lcssa.i.i.i, %_ZN4absl7debian318container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EELi256ELb0EEEEERSF_PSF_EmmEv.exit ], [ %1, %._crit_edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = icmp eq i8 %i.t, %i.u
  br i1 %i.x, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.y = icmp ult i8 %i.t, 4
  br i1 %i.y, label %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE18new_leaf_root_nodeEi.exit, label %bb.f

_ZN4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE18new_leaf_root_nodeEi.exit: ; preds = %bb.c
  %i.z = shl nuw nsw i8 %i.t, 1
  %i.aa = tail call i8 @llvm.umin.i8(i8 %i.z, i8 4) ; 2 uses
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 6
  %i.ad = or disjoint i64 %i.ac, 16
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #31 ; 11 uses
  store ptr %i.ae, ptr %i.ae, align 8, !tbaa !90
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  store i8 0, ptr %i.af, align 8, !tbaa !26
  %i.ag = getelementptr i8, ptr %i.ae, i64 9
  store i8 0, ptr %i.ag, align 1, !tbaa !26
  %i.ah = getelementptr i8, ptr %i.ae, i64 10     ; 2 uses
  store i8 0, ptr %i.ah, align 2, !tbaa !26
  %i.ai = getelementptr i8, ptr %i.ae, i64 11
  store i8 %i.aa, ptr %i.ai, align 1, !tbaa !26
  store ptr %i.ae, ptr %6, align 8, !tbaa !116
  %i.aj = load ptr, ptr %0, align 8, !tbaa !89    ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 10     ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !26  ; 2 uses
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.am, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.al, 0
  br i1 %.not13.i, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE18new_leaf_root_nodeEi.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.bv, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.ap, %.lr.ph.preheader.i ] ; 8 uses
  %.01214.i = phi ptr [ %i.bu, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.an, %.lr.ph.preheader.i ] ; 11 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i, i64 16 ; 3 uses
  store ptr %i.aq, ptr %.015.i, align 8, !tbaa !30
  %i.ar = load ptr, ptr %.01214.i, align 8, !tbaa !25 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 7 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !29 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.ar, ptr %.015.i, align 8, !tbaa !25
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !26
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !29
  store ptr %i.as, ptr %.01214.i, align 8, !tbaa !25
  store i64 0, ptr %i.az, align 8, !tbaa !29
  store i8 0, ptr %i.as, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %.015.i, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.015.i, i64 48 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !30
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !25 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !29 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 16
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !25
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !26
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !29
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !25
  store i64 0, ptr %i.bn, align 8, !tbaa !29
  store i8 0, ptr %i.bg, align 8, !tbaa !26
  %i.bq = load ptr, ptr %.01214.i, align 8, !tbaa !25 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.as
  br i1 %i.br, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.bs = load i64, ptr %i.as, align 8, !tbaa !26
  %i.bt = add i64 %i.bs, 1
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #27
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i, i64 64 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.015.i, i64 64
  %.not.i22 = icmp eq ptr %i.bu, %i.ao
  br i1 %.not.i22, label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit, label %.lr.ph.i, !llvm.loop !5

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i
  %.pre28 = load i8, ptr %i.ak, align 1, !tbaa !26
  br label %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit

_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit: ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit, %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE18new_leaf_root_nodeEi.exit
  %i.bw = phi i8 [ %.pre28, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit ], [ 0, %_ZN4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE18new_leaf_root_nodeEi.exit ]
  store i8 %i.bw, ptr %i.ah, align 2, !tbaa !26
  store i8 0, ptr %i.ak, align 1, !tbaa !26
  tail call void @_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16clear_and_deleteEPSH_PSF_(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.w)
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !90
  store ptr %i.ae, ptr %0, align 8, !tbaa !90
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @_ZN4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6)
  %.pre29 = load ptr, ptr %6, align 8, !tbaa !116
  %.pre30 = load i32, ptr %i.a, align 8, !tbaa !117
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, %bb.f, %bb.b
  %i.bx = phi i32 [ %i.s, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit ], [ %.pre30, %bb.f ], [ %i.s, %bb.b ]
  %i.by = phi ptr [ %i.ae, %_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit ], [ %.pre29, %bb.f ], [ %i.v, %bb.b ]
  %i.bz = sext i32 %i.bx to i64
  call void @_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJEEEEEvmPSF_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %i.by, i64 noundef %i.bz, ptr noundef nonnull %i.w, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !109
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !109
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !90
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8, !tbaa !28
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::debian3::container_internal::btree_iterator.124", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !90     ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 7 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !89     ; 4 uses
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !26    ; 5 uses
  %.not106 = icmp eq i8 %i.f, 0
  br i1 %.not106, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr i8, ptr %i.c, i64 264
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !90   ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 10       ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !26    ; 2 uses
  %i.m = icmp ult i8 %i.l, 4
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.o = sub nuw nsw i32 4, %i.n
  %i.p = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
end_hunk_2
