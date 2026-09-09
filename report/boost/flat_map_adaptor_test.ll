Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_adaptor_test?download=true
inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 252
loop-unroll.NumUnrolled: 523
begin_hunk_0_@_ZN5boost9container4test32flat_tree_ordered_insertion_testINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEENS0_13flat_multimapIiiS5_S9_EEEEbv:bb.a
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.jl)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit303 unwind label %bb.ci

bb.ci:                                            ; preds = %.critedge117
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  %i.jn = extractvalue { ptr, i32 } %i.jm, 0
  call void @__clang_call_terminate(ptr %i.jn) #25
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit303: ; preds = %.critedge117
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.jo = load ptr, ptr %i.b, align 8, !tbaa !327
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.jo)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit304 unwind label %bb.cj

bb.cj:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit303
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #25
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit304: ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit303
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.cn

.critedge119:                                     ; preds = %.lr.ph.i187, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.thread.i185, %.loopexit343, %_ZN5boost9container4test20CheckEqualContainersISt8multimapIiiSt4lessIiESaISt4pairIKiiEEENS0_13flat_multimapIiiS5_NS0_13static_vectorIS6_IiiELm500EvEEEEEEbRKT_RKT0_.exit193
  %i.jr = load ptr, ptr %i.cl, align 8, !tbaa !327
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.jr)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit305 unwind label %bb.ck

bb.ck:                                            ; preds = %.critedge119
  %i.js = landingpad { ptr, i32 }
          catch ptr null
  %i.jt = extractvalue { ptr, i32 } %i.js, 0
  call void @__clang_call_terminate(ptr %i.jt) #25
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit305: ; preds = %.critedge119
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.ju = load ptr, ptr %i.bf, align 8, !tbaa !327
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.ju)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit306 unwind label %bb.cl

bb.cl:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit305
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #25
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit306: ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit305
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.jx = load ptr, ptr %i.b, align 8, !tbaa !327
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.jx)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit307 unwind label %bb.cm

bb.cm:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit306
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #25
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit307: ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit306
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit307, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit304, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit302, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit234
  %.8 = phi i1 [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit302 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit304 ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit234 ], [ %.791, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit ], [ false, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit307 ]
  ret i1 %.8

bb.co:                                            ; preds = %bb.cg, %bb.ap
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %bb.ap ], [ %.pn103, %bb.cg ]
  resume { ptr, i32 } %.pn113.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test28flat_tree_extract_adopt_testINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEENS0_13flat_multimapIiiS5_S9_EEEEbv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::flat_map.114", align 8 ; 15 uses
  %1 = alloca %"class.boost::container::flat_map.114", align 8 ; 13 uses
  %2 = alloca %"class.boost::container::static_vector", align 8 ; 16 uses
  %.sroa.0359 = alloca %"struct.boost::container::vector_alloc_holder.117", align 8 ; 6 uses
  %3 = alloca %"class.boost::container::flat_map.114", align 8 ; 15 uses
  %4 = alloca %"class.boost::container::flat_map.114", align 8 ; 13 uses
  %5 = alloca %"class.boost::container::static_vector", align 8 ; 11 uses
  %.sroa.0340 = alloca %"struct.boost::container::vector_alloc_holder.117", align 8 ; 6 uses
  %6 = alloca %"class.boost::container::flat_multimap.120", align 8 ; 17 uses
  %7 = alloca %"class.boost::container::flat_multimap.120", align 8 ; 15 uses
  %8 = alloca %"class.boost::container::static_vector", align 8 ; 13 uses
  %.sroa.0323 = alloca %"struct.boost::container::vector_alloc_holder.117", align 8 ; 6 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::flat_multimap.120", align 8 ; 11 uses
  %12 = alloca %"class.boost::container::flat_multimap.120", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %13 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %14 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %16 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %17 = alloca %"class.boost::container::static_vector", align 8 ; 9 uses
  %.sroa.0 = alloca %"struct.boost::container::vector_alloc_holder.117", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4000 ; 7 uses
  store i64 0, ptr %i.i, align 8, !tbaa !442
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4000 ; 6 uses
  store i64 0, ptr %i.j, align 8, !tbaa !442
  br label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit117
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0359)
  call void @llvm.experimental.noalias.scope.decl(metadata !8259)
  %i.k = load i64, ptr %i.i, align 8, !tbaa !442, !noalias !8259 ; 3 uses
  %.sroa.0359.4000..sroa_idx598 = getelementptr inbounds nuw i8, ptr %.sroa.0359, i64 4000
  store i64 %i.k, ptr %.sroa.0359.4000..sroa_idx598, align 8, !tbaa !442, !alias.scope !8259
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %bb.n, !prof !344

.thread:                                          ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4000 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !442
  br label %bb.p

thread-pre-split:                                 ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit117
  %.pr534 = load i64, ptr %i.i, align 8, !tbaa !444, !noalias !8260
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.m = phi i64 [ %.pr534, %thread-pre-split ], [ 0, %bb.a ] ; 7 uses
  %.065428 = phi i64 [ %i.bw, %thread-pre-split ], [ 0, %bb.a ] ; 2 uses
  %i.n = trunc i64 %.065428 to i32                ; 9 uses
  %i.o = sub nsw i32 0, %i.n                      ; 4 uses
  %.idx.i.i.i.i = shl nsw i64 %i.m, 3
  %i.p = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i.i
  %.not12.i.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.q = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %0, %bb.c ] ; 2 uses
  %.013.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.r = lshr i64 %.013.i.i.i.i.i.i, 1            ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !338, !noalias !8261
  %i.u = icmp slt i32 %i.t, %i.n                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.neg.i.i.i.i.i.i = xor i64 %i.r, -1
  %i.w = add i64 %.013.i.i.i.i.i.i, %.neg.i.i.i.i.i.i
  %i.x = select i1 %i.u, ptr %i.v, ptr %i.q       ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.u, i64 %i.w, i64 %i.r ; 2 uses
  %.not.i.i.i.i.i.i99 = icmp eq i64 %.1.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i99, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !118

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  %i.y = phi ptr [ %0, %bb.c ], [ %i.x, %.lr.ph.i.i.i.i.i.i ] ; 8 uses
  %i.z = icmp eq ptr %i.y, %i.p
  br i1 %i.z, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !338, !noalias !8262
  %i.ab = icmp sgt i32 %i.aa, %i.n
  br i1 %i.ab, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i
  %.not.i.i.i3.i.i.i = icmp eq i64 %i.m, 500
  br i1 %.not.i.i.i3.i.i.i, label %.noexc.i.i, label %bb.d, !prof !344

bb.d:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.n, ptr %i.y, align 4, !tbaa !338, !noalias !8263
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.o, ptr %i.ad, align 4, !tbaa !338, !noalias !8263
  %i.ae = add i64 %i.m, 1
  store i64 %i.ae, ptr %i.i, align 8, !tbaa !444, !noalias !8263
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = ashr exact i64 %i.ah, 3                 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  %i.ak = load <2 x i32>, ptr %i.aj, align 8, !tbaa !338, !noalias !8263
  store <2 x i32> %i.ak, ptr %i.ac, align 8, !tbaa !338, !noalias !8263
  %i.al = add nsw i64 %i.m, 1
  store i64 %i.al, ptr %i.i, align 8, !tbaa !444, !noalias !8263
  %i.am = add nsw i64 %i.ai, -1                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i, label %bb.g, !prof !344

bb.g:                                             ; preds = %bb.f
  %i.an = sub nsw i64 1, %i.ai                    ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.an
  %i.aq = shl i64 %i.am, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr nonnull align 8 %i.ap, i64 %i.aq, i1 false), !noalias !8263
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  store i32 %i.n, ptr %i.y, align 4, !tbaa !347, !noalias !8263
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.o, ptr %i.ar, align 4, !tbaa !348, !noalias !8263
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit

.noexc.i.i:                                       ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i, %bb.e
  %i.as = load i64, ptr %i.j, align 8, !tbaa !444, !noalias !8264 ; 7 uses
  %.idx.i.i.i.i100 = shl nsw i64 %i.as, 3
  %i.at = getelementptr inbounds i8, ptr %1, i64 %.idx.i.i.i.i100
  %.not12.i.i.i.i.i.i101 = icmp eq i64 %i.as, 0
  br i1 %.not12.i.i.i.i.i.i101, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i107, label %.lr.ph.i.i.i.i.i.i102

.lr.ph.i.i.i.i.i.i102:                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit, %.lr.ph.i.i.i.i.i.i102
  %i.au = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i102 ], [ %1, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit ] ; 2 uses
  %.013.i.i.i.i.i.i103 = phi i64 [ %.1.i.i.i.i.i.i105, %.lr.ph.i.i.i.i.i.i102 ], [ %i.as, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit ] ; 2 uses
  %i.av = lshr i64 %.013.i.i.i.i.i.i103, 1        ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !338, !noalias !8265
  %i.ay = icmp slt i32 %i.ax, %i.n                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.neg.i.i.i.i.i.i104 = xor i64 %i.av, -1
  %i.ba = add i64 %.013.i.i.i.i.i.i103, %.neg.i.i.i.i.i.i104
  %i.bb = select i1 %i.ay, ptr %i.az, ptr %i.au   ; 2 uses
  %.1.i.i.i.i.i.i105 = select i1 %i.ay, i64 %i.ba, i64 %i.av ; 2 uses
  %.not.i.i.i.i.i.i106 = icmp eq i64 %.1.i.i.i.i.i.i105, 0
  br i1 %.not.i.i.i.i.i.i106, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i107, label %.lr.ph.i.i.i.i.i.i102, !llvm.loop !118

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i107: ; preds = %.lr.ph.i.i.i.i.i.i102, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit
  %i.bc = phi ptr [ %1, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit ], [ %i.bb, %.lr.ph.i.i.i.i.i.i102 ] ; 8 uses
  %i.bd = icmp eq ptr %i.bc, %i.at
  br i1 %i.bd, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i115, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i108

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i108: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i107
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !338, !noalias !8266
  %i.bf = icmp sgt i32 %i.be, %i.n
  br i1 %i.bf, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i115, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit117

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i115: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i107, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i108
  %.not.i.i.i3.i.i.i110 = icmp eq i64 %i.as, 500
  br i1 %.not.i.i.i3.i.i.i110, label %.noexc.i.i114, label %bb.h, !prof !344

bb.h:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i115
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.as ; 5 uses
  %.not.i.i.i.i.i.i.i111 = icmp eq ptr %i.bg, %i.bc
  br i1 %.not.i.i.i.i.i.i.i111, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.n, ptr %i.bc, align 4, !tbaa !338, !noalias !8267
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.o, ptr %i.bh, align 4, !tbaa !338, !noalias !8267
  %i.bi = add i64 %i.as, 1
  store i64 %i.bi, ptr %i.j, align 8, !tbaa !444, !noalias !8267
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit117

bb.j:                                             ; preds = %bb.h
  %i.bj = ptrtoint ptr %i.bc to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bk, %i.bj
  %i.bm = ashr exact i64 %i.bl, 3                 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 -8 ; 2 uses
  %i.bo = load <2 x i32>, ptr %i.bn, align 8, !tbaa !338, !noalias !8267
  store <2 x i32> %i.bo, ptr %i.bg, align 8, !tbaa !338, !noalias !8267
  %i.bp = add nsw i64 %i.as, 1
  store i64 %i.bp, ptr %i.j, align 8, !tbaa !444, !noalias !8267
  %i.bq = add nsw i64 %i.bm, -1                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i112 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i.i112, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i113, label %bb.k, !prof !344

bb.k:                                             ; preds = %bb.j
  %i.br = sub nsw i64 1, %i.bm                    ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.br
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.br
  %i.bu = shl i64 %i.bq, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr nonnull align 8 %i.bt, i64 %i.bu, i1 false), !noalias !8267
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i113

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i113: ; preds = %bb.k, %bb.j
  store i32 %i.n, ptr %i.bc, align 4, !tbaa !347, !noalias !8267
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.o, ptr %i.bv, align 4, !tbaa !348, !noalias !8267
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit117

.noexc.i.i114:                                    ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i115
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc116 unwind label %bb.m

.noexc116:                                        ; preds = %.noexc.i.i114
  unreachable

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit117: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i108, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i113, %bb.i
  %i.bw = add nuw nsw i64 %.065428, 1             ; 2 uses
  %.not = icmp eq i64 %i.bw, 100
  br i1 %.not, label %bb.b, label %thread-pre-split, !llvm.loop !8126

bb.l:                                             ; preds = %.noexc.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %.noexc.i.i114
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.n:                                             ; preds = %bb.b
  %i.bz = shl i64 %i.k, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %.sroa.0359, ptr nonnull align 8 dereferenceable(4008) %0, i64 %i.bz, i1 false)
  %.sroa.0359.4000..sroa_idx599 = getelementptr inbounds nuw i8, ptr %.sroa.0359, i64 4000
  %.sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..pr = load i64, ptr %.sroa.0359.4000..sroa_idx599, align 8, !tbaa !442 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !442, !noalias !8259
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 4000 ; 4 uses
  store i64 %.sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..pr, ptr %i.ca, align 8, !tbaa !442
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..pr, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o, !prof !445

bb.o:                                             ; preds = %bb.n
  %i.cb = shl i64 %.sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..sroa.0359.4000..pr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %2, ptr nonnull align 8 dereferenceable(4008) %.sroa.0359, i64 %i.cb, i1 false)
  %.pr = load i64, ptr %i.ca, align 8, !tbaa !444
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread
  %i.cc = phi i64 [ %.pr, %bb.o ], [ 0, %bb.n ], [ 0, %.thread ] ; 8 uses
  %i.cd = phi ptr [ %i.ca, %bb.o ], [ %i.ca, %bb.n ], [ %i.l, %.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0359)
  %i.ce = load i64, ptr %i.j, align 8, !tbaa !444
  %.not.i = icmp eq i64 %i.cc, %i.ce
  br i1 %.not.i, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %.idx.i = shl nsw i64 %i.cc, 3
  %i.cf = getelementptr inbounds i8, ptr %2, i64 %.idx.i
  %.not2526.i = icmp eq i64 %i.cc, 0
  br i1 %.not2526.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %.sroa.021.028.i = phi ptr [ %i.cm, %bb.r ], [ %2, %bb.q ] ; 2 uses
  %.sroa.016.027.i = phi ptr [ %i.cn, %bb.r ], [ %1, %bb.q ] ; 2 uses
  %i.cg = load <2 x i32>, ptr %.sroa.021.028.i, align 4
  %i.ch = load <2 x i32>, ptr %.sroa.016.027.i, align 4
  %i.ci = icmp eq <2 x i32> %i.cg, %i.ch          ; 2 uses
  %i.cj = extractelement <2 x i1> %i.ci, i64 0
  %i.ck = extractelement <2 x i1> %i.ci, i64 1
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.lr.ph.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 8
  %.not25.i = icmp eq ptr %i.cm, %i.cf
  br i1 %.not25.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !8127

_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit: ; preds = %bb.r, %bb.q
  %i.co = sub i64 500, %i.cc                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.co, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.dd, ptr %i.cd, align 8, !tbaa !444
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit
  %.ph = phi i64 [ %i.cc, %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit ], [ %i.cu, %scalar.ph.preheader.loopexit ]
  %.047429.ph = phi i64 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

vector.ph:                                        ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEENS0_8flat_mapIiiSt4lessIiES6_EEEEbRKT_RKT0_.exit
  %i.cp = call i64 @llvm.umin.i64(i64 %i.co, i64 99)
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.cr = and i64 %i.cq, 3                        ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  %i.ct = select i1 %i.cs, i64 4, i64 %i.cr
  %n.vec = sub nsw i64 %i.cq, %i.ct               ; 3 uses
  %i.cu = add i64 %i.cc, %n.vec
  %i.cv = add nsw i64 %i.cc, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = phi i64 [ %i.cv, %vector.ph ], [ %i.de, %vector.body ] ; 2 uses
  %vec.ind569 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next572, %vector.body ] ; 5 uses
  %step.add570 = add <2 x i32> %vec.ind569, splat (i32 2)
  %i.cx = add i64 %i.cc, %index                   ; 2 uses
  %i.cy = sub nsw <2 x i32> zeroinitializer, %vec.ind569
  %i.cz = sub <2 x i32> splat (i32 -2), %vec.ind569
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cx
  %i.db = getelementptr [8 x i8], ptr %2, i64 %i.cx
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %interleaved.vec = shufflevector <2 x i32> %vec.ind569, <2 x i32> %i.cy, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.da, align 8, !tbaa !338
  %interleaved.vec571 = shufflevector <2 x i32> %step.add570, <2 x i32> %i.cz, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec571, ptr %i.dc, align 8, !tbaa !338
  %i.dd = add nsw i64 %i.cw, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = add nsw i64 %i.cw, 4
  %vec.ind.next572 = add <2 x i32> %vec.ind569, splat (i32 4)
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !8128

bb.s:                                             ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.t:                                             ; preds = %bb.x
  %i.dh = icmp sgt i64 %i.dq, 0
  br i1 %i.dh, label %.lr.ph.i118, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit

.lr.ph.i118:                                      ; preds = %bb.t, %bb.v
  %.0.in10.i = phi i64 [ %.011.i, %bb.v ], [ %i.dv, %bb.t ] ; 3 uses
  %.011.i = add nsw i64 %.0.in10.i, -1            ; 3 uses
  %i.di = call i32 @rand() #23
  %i.dj = sext i32 %i.di to i64
  %i.dk = srem i64 %i.dj, %.0.in10.i              ; 2 uses
  %.not.i119 = icmp eq i64 %i.dk, %.011.i
  br i1 %.not.i119, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i118
  %i.dl = getelementptr inbounds [8 x i8], ptr %2, i64 %.011.i ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dk ; 2 uses
  %i.dn = load <2 x i32>, ptr %i.dl, align 8, !tbaa !338
  %i.do = load <2 x i32>, ptr %i.dm, align 8, !tbaa !338
  store <2 x i32> %i.do, ptr %i.dl, align 8, !tbaa !338
  store <2 x i32> %i.dn, ptr %i.dm, align 8, !tbaa !338
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i118
  %i.dp = icmp samesign ugt i64 %.0.in10.i, 2
  br i1 %i.dp, label %.lr.ph.i118, label %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit, !llvm.loop !9

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.x
  %i.dq = phi i64 [ %i.dv, %bb.x ], [ %.ph, %scalar.ph.preheader ] ; 4 uses
  %.047429 = phi i64 [ %i.dw, %bb.x ], [ %.047429.ph, %scalar.ph.preheader ] ; 2 uses
  %.not.i120 = icmp eq i64 %i.dq, 500
  br i1 %.not.i120, label %bb.w, label %bb.x, !prof !344

bb.w:                                             ; preds = %scalar.ph
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc121 unwind label %bb.y

.noexc121:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %scalar.ph
  %i.dr = trunc i64 %.047429 to i32               ; 2 uses
  %i.ds = sub nsw i32 0, %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dq ; 2 uses
  store i32 %i.dr, ptr %i.dt, align 8, !tbaa !338
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i32 %i.ds, ptr %i.du, align 4, !tbaa !338
  %i.dv = add nsw i64 %i.dq, 1                    ; 3 uses
  store i64 %i.dv, ptr %i.cd, align 8, !tbaa !444
  %i.dw = add nuw nsw i64 %.047429, 1             ; 2 uses
  %.not71 = icmp eq i64 %i.dw, 100
  br i1 %.not71, label %bb.t, label %scalar.ph, !llvm.loop !8129

bb.y:                                             ; preds = %bb.w
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit: ; preds = %bb.v, %bb.t
  invoke void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_OSD_T0_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(4008) %0, ptr noundef nonnull align 8 dereferenceable(4008) %2)
          to label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE14adopt_sequenceEOS7_.exit unwind label %bb.s

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE14adopt_sequenceEOS7_.exit: ; preds = %_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_.exit
  %i.dy = load i64, ptr %i.i, align 8, !tbaa !444 ; 3 uses
  %i.dz = load i64, ptr %i.j, align 8, !tbaa !444
  %.not.i123 = icmp eq i64 %i.dy, %i.dz
  br i1 %.not.i123, label %bb.z, label %.critedge

bb.z:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE14adopt_sequenceEOS7_.exit
  %.idx.i125 = shl nsw i64 %i.dy, 3
  %i.ea = getelementptr inbounds i8, ptr %0, i64 %.idx.i125 ; 2 uses
  %.not2526.i126 = icmp eq i64 %i.dy, 0
  br i1 %.not2526.i126, label %.thread380, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %bb.z, %bb.aa
  %.sroa.021.028.i128 = phi ptr [ %i.eh, %bb.aa ], [ %0, %bb.z ] ; 2 uses
  %.sroa.016.027.i129 = phi ptr [ %i.ei, %bb.aa ], [ %1, %bb.z ] ; 2 uses
  %i.eb = load <2 x i32>, ptr %.sroa.021.028.i128, align 4
  %i.ec = load <2 x i32>, ptr %.sroa.016.027.i129, align 4
  %i.ed = icmp eq <2 x i32> %i.eb, %i.ec          ; 2 uses
  %i.ee = extractelement <2 x i1> %i.ed, i64 0
  %i.ef = extractelement <2 x i1> %i.ed, i64 1
  %i.eg = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %i.eg, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %.lr.ph.i127
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i128, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i129, i64 8
  %.not25.i130 = icmp eq ptr %i.eh, %i.ea
  br i1 %.not25.i130, label %.lr.ph.i135, label %.lr.ph.i127, !llvm.loop !8130

.lr.ph.i135:                                      ; preds = %bb.aa, %bb.ab
  %.sroa.021.028.i136 = phi ptr [ %i.ep, %bb.ab ], [ %0, %bb.aa ] ; 2 uses
  %.sroa.016.027.i137 = phi ptr [ %i.eq, %bb.ab ], [ %1, %bb.aa ] ; 2 uses
  %i.ej = load <2 x i32>, ptr %.sroa.021.028.i136, align 4
  %i.ek = load <2 x i32>, ptr %.sroa.016.027.i137, align 4
  %i.el = icmp eq <2 x i32> %i.ej, %i.ek          ; 2 uses
  %i.em = extractelement <2 x i1> %i.el, i64 0
  %i.en = extractelement <2 x i1> %i.el, i64 1
  %i.eo = select i1 %i.em, i1 %i.en, i1 false
  br i1 %i.eo, label %bb.ab, label %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEES6_EEbRKT_RKT0_.exit

bb.ab:                                            ; preds = %.lr.ph.i135
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i136, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i137, i64 8
  %.not25.i138 = icmp eq ptr %i.ep, %i.ea
  br i1 %.not25.i138, label %.thread380, label %.lr.ph.i135, !llvm.loop !8131

_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEES6_EEbRKT_RKT0_.exit: ; preds = %.lr.ph.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %bb.cx

.thread380:                                       ; preds = %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 4000 ; 7 uses
  store i64 0, ptr %i.er, align 8, !tbaa !442
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 4000 ; 6 uses
  store i64 0, ptr %i.es, align 8, !tbaa !442
  br label %bb.af

bb.ac:                                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0340)
  call void @llvm.experimental.noalias.scope.decl(metadata !8268)
  %i.et = load i64, ptr %i.er, align 8, !tbaa !442, !noalias !8268 ; 3 uses
  %.sroa.0340.4000..sroa_idx596 = getelementptr inbounds nuw i8, ptr %.sroa.0340, i64 4000
  store i64 %i.et, ptr %.sroa.0340.4000..sroa_idx596, align 8, !tbaa !442, !alias.scope !8268
  %.not.i.i.i.i.i.i139 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i.i.i.i.i139, label %.thread384, label %bb.aq, !prof !344

.thread384:                                       ; preds = %bb.ac
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 4000
  store i64 0, ptr %i.eu, align 8, !tbaa !442
  br label %bb.as

bb.ad:                                            ; preds = %bb.s, %bb.y
  %.pn85.pn = phi { ptr, i32 } [ %i.dg, %bb.s ], [ %i.dx, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.l, %bb.m, %bb.ad
  %.pn88.pn = phi { ptr, i32 } [ %.pn85.pn, %bb.ad ], [ %i.by, %bb.m ], [ %i.bx, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %bb.cy

thread-pre-split535:                              ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit176
  %.pr536 = load i64, ptr %i.er, align 8, !tbaa !444, !noalias !8269
  br label %bb.af

bb.af:                                            ; preds = %thread-pre-split535, %.thread380
  %i.ev = phi i64 [ %.pr536, %thread-pre-split535 ], [ 0, %.thread380 ] ; 7 uses
  %.046430 = phi i64 [ %i.hf, %thread-pre-split535 ], [ 0, %.thread380 ] ; 2 uses
  %i.ew = trunc i64 %.046430 to i32               ; 9 uses
  %i.ex = sub nsw i32 0, %i.ew                    ; 4 uses
  %.idx.i.i.i.i141 = shl nsw i64 %i.ev, 3
  %i.ey = getelementptr inbounds i8, ptr %3, i64 %.idx.i.i.i.i141
  %.not12.i.i.i.i.i.i142 = icmp eq i64 %i.ev, 0
  br i1 %.not12.i.i.i.i.i.i142, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i148, label %.lr.ph.i.i.i.i.i.i143

.lr.ph.i.i.i.i.i.i143:                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i143
  %i.ez = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i143 ], [ %3, %bb.af ] ; 2 uses
  %.013.i.i.i.i.i.i144 = phi i64 [ %.1.i.i.i.i.i.i146, %.lr.ph.i.i.i.i.i.i143 ], [ %i.ev, %bb.af ] ; 2 uses
  %i.fa = lshr i64 %.013.i.i.i.i.i.i144, 1        ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fa ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !338, !noalias !8270
  %i.fd = icmp slt i32 %i.fc, %i.ew               ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.neg.i.i.i.i.i.i145 = xor i64 %i.fa, -1
  %i.ff = add i64 %.013.i.i.i.i.i.i144, %.neg.i.i.i.i.i.i145
  %i.fg = select i1 %i.fd, ptr %i.fe, ptr %i.ez   ; 2 uses
  %.1.i.i.i.i.i.i146 = select i1 %i.fd, i64 %i.ff, i64 %i.fa ; 2 uses
  %.not.i.i.i.i.i.i147 = icmp eq i64 %.1.i.i.i.i.i.i146, 0
  br i1 %.not.i.i.i.i.i.i147, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i148, label %.lr.ph.i.i.i.i.i.i143, !llvm.loop !118

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i148: ; preds = %.lr.ph.i.i.i.i.i.i143, %bb.af
  %i.fh = phi ptr [ %3, %bb.af ], [ %i.fg, %.lr.ph.i.i.i.i.i.i143 ] ; 8 uses
  %i.fi = icmp eq ptr %i.fh, %i.ey
  br i1 %i.fi, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i156, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i149

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i149: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i148
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !338, !noalias !8271
  %i.fk = icmp sgt i32 %i.fj, %i.ew
  br i1 %i.fk, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i156, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit158

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i156: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i148, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i149
  %.not.i.i.i3.i.i.i151 = icmp eq i64 %i.ev, 500
  br i1 %.not.i.i.i3.i.i.i151, label %.noexc.i.i155, label %bb.ag, !prof !344

bb.ag:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i156
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ev ; 5 uses
  %.not.i.i.i.i.i.i.i152 = icmp eq ptr %i.fl, %i.fh
  br i1 %.not.i.i.i.i.i.i.i152, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.ew, ptr %i.fh, align 4, !tbaa !338, !noalias !8272
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i32 %i.ex, ptr %i.fm, align 4, !tbaa !338, !noalias !8272
  %i.fn = add i64 %i.ev, 1
  store i64 %i.fn, ptr %i.er, align 8, !tbaa !444, !noalias !8272
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit158

bb.ai:                                            ; preds = %bb.ag
  %i.fo = ptrtoint ptr %i.fh to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fp, %i.fo
  %i.fr = ashr exact i64 %i.fq, 3                 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fl, i64 -8 ; 2 uses
  %i.ft = load <2 x i32>, ptr %i.fs, align 8, !tbaa !338, !noalias !8272
  store <2 x i32> %i.ft, ptr %i.fl, align 8, !tbaa !338, !noalias !8272
  %i.fu = add nsw i64 %i.ev, 1
  store i64 %i.fu, ptr %i.er, align 8, !tbaa !444, !noalias !8272
  %i.fv = add nsw i64 %i.fr, -1                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i153 = icmp eq i64 %i.fv, 0
  br i1 %.not.i.i.i.i.i.i.i.i153, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i154, label %bb.aj, !prof !344

bb.aj:                                            ; preds = %bb.ai
  %i.fw = sub nsw i64 1, %i.fr                    ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fw
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.fw
  %i.fz = shl i64 %i.fv, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fx, ptr nonnull align 8 %i.fy, i64 %i.fz, i1 false), !noalias !8272
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i154

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i154: ; preds = %bb.aj, %bb.ai
  store i32 %i.ew, ptr %i.fh, align 4, !tbaa !347, !noalias !8272
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i32 %i.ex, ptr %i.ga, align 4, !tbaa !348, !noalias !8272
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit158

.noexc.i.i155:                                    ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i156
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc157 unwind label %bb.ao

.noexc157:                                        ; preds = %.noexc.i.i155
  unreachable

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit158: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i149, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i154, %bb.ah
  %i.gb = load i64, ptr %i.es, align 8, !tbaa !444, !noalias !8273 ; 7 uses
  %.idx.i.i.i.i159 = shl nsw i64 %i.gb, 3
  %i.gc = getelementptr inbounds i8, ptr %4, i64 %.idx.i.i.i.i159
  %.not12.i.i.i.i.i.i160 = icmp eq i64 %i.gb, 0
  br i1 %.not12.i.i.i.i.i.i160, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i166, label %.lr.ph.i.i.i.i.i.i161

.lr.ph.i.i.i.i.i.i161:                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit158, %.lr.ph.i.i.i.i.i.i161
  %i.gd = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i161 ], [ %4, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit158 ] ; 2 uses
  %.013.i.i.i.i.i.i162 = phi i64 [ %.1.i.i.i.i.i.i164, %.lr.ph.i.i.i.i.i.i161 ], [ %i.gb, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit158 ] ; 2 uses
  %i.ge = lshr i64 %.013.i.i.i.i.i.i162, 1        ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.ge ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !338, !noalias !8274
  %i.gh = icmp slt i32 %i.gg, %i.ew               ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %.neg.i.i.i.i.i.i163 = xor i64 %i.ge, -1
  %i.gj = add i64 %.013.i.i.i.i.i.i162, %.neg.i.i.i.i.i.i163
  %i.gk = select i1 %i.gh, ptr %i.gi, ptr %i.gd   ; 2 uses
  %.1.i.i.i.i.i.i164 = select i1 %i.gh, i64 %i.gj, i64 %i.ge ; 2 uses
  %.not.i.i.i.i.i.i165 = icmp eq i64 %.1.i.i.i.i.i.i164, 0
  br i1 %.not.i.i.i.i.i.i165, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i166, label %.lr.ph.i.i.i.i.i.i161, !llvm.loop !118

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i166: ; preds = %.lr.ph.i.i.i.i.i.i161, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit158
  %i.gl = phi ptr [ %4, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit158 ], [ %i.gk, %.lr.ph.i.i.i.i.i.i161 ] ; 8 uses
  %i.gm = icmp eq ptr %i.gl, %i.gc
  br i1 %i.gm, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i174, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i167

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i167: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i166
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !338, !noalias !8275
  %i.go = icmp sgt i32 %i.gn, %i.ew
  br i1 %i.go, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i174, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit176

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i174: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i166, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i167
  %.not.i.i.i3.i.i.i169 = icmp eq i64 %i.gb, 500
  br i1 %.not.i.i.i3.i.i.i169, label %.noexc.i.i173, label %bb.ak, !prof !344

bb.ak:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i174
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gb ; 5 uses
  %.not.i.i.i.i.i.i.i170 = icmp eq ptr %i.gp, %i.gl
  br i1 %.not.i.i.i.i.i.i.i170, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 %i.ew, ptr %i.gl, align 4, !tbaa !338, !noalias !8276
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 %i.ex, ptr %i.gq, align 4, !tbaa !338, !noalias !8276
  %i.gr = add i64 %i.gb, 1
  store i64 %i.gr, ptr %i.es, align 8, !tbaa !444, !noalias !8276
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit176

bb.am:                                            ; preds = %bb.ak
  %i.gs = ptrtoint ptr %i.gl to i64
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = sub i64 %i.gt, %i.gs
  %i.gv = ashr exact i64 %i.gu, 3                 ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gp, i64 -8 ; 2 uses
  %i.gx = load <2 x i32>, ptr %i.gw, align 8, !tbaa !338, !noalias !8276
  store <2 x i32> %i.gx, ptr %i.gp, align 8, !tbaa !338, !noalias !8276
  %i.gy = add nsw i64 %i.gb, 1
  store i64 %i.gy, ptr %i.es, align 8, !tbaa !444, !noalias !8276
  %i.gz = add nsw i64 %i.gv, -1                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i171 = icmp eq i64 %i.gz, 0
  br i1 %.not.i.i.i.i.i.i.i.i171, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i172, label %bb.an, !prof !344

bb.an:                                            ; preds = %bb.am
  %i.ha = sub nsw i64 1, %i.gv                    ; 2 uses
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.ha
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.ha
  %i.hd = shl i64 %i.gz, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hb, ptr nonnull align 8 %i.hc, i64 %i.hd, i1 false), !noalias !8276
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i172

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i172: ; preds = %bb.an, %bb.am
  store i32 %i.ew, ptr %i.gl, align 4, !tbaa !347, !noalias !8276
  %i.he = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 %i.ex, ptr %i.he, align 4, !tbaa !348, !noalias !8276
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit176

.noexc.i.i173:                                    ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i174
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc175 unwind label %bb.ap

.noexc175:                                        ; preds = %.noexc.i.i173
  unreachable

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEDpOT_.exit176: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i167, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i172, %bb.al
  %i.hf = add nuw nsw i64 %.046430, 1             ; 2 uses
  %.not72 = icmp eq i64 %i.hf, 100
  br i1 %.not72, label %bb.ac, label %thread-pre-split535, !llvm.loop !8174

bb.ao:                                            ; preds = %.noexc.i.i155
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ap:                                            ; preds = %.noexc.i.i173
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.aq:                                            ; preds = %bb.ac
  %i.hi = shl i64 %i.et, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %.sroa.0340, ptr nonnull align 8 dereferenceable(4008) %3, i64 %i.hi, i1 false)
  %.sroa.0340.4000..sroa_idx597 = getelementptr inbounds nuw i8, ptr %.sroa.0340, i64 4000
  %.sroa.0340.4000..sroa.0340.4000..sroa.0340.4000..sroa.0340.4000..pr = load i64, ptr %.sroa.0340.4000..sroa_idx597, align 8, !tbaa !442 ; 3 uses
  store i64 0, ptr %i.er, align 8, !tbaa !442, !noalias !8268
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 4000 ; 2 uses
  store i64 %.sroa.0340.4000..sroa.0340.4000..sroa.0340.4000..sroa.0340.4000..pr, ptr %i.hj, align 8, !tbaa !442
  %.not.i.i.i.i.i177 = icmp eq i64 %.sroa.0340.4000..sroa.0340.4000..sroa.0340.4000..sroa.0340.4000..pr, 0
  br i1 %.not.i.i.i.i.i177, label %bb.as, label %bb.ar, !prof !445

bb.ar:                                            ; preds = %bb.aq
  %i.hk = shl i64 %.sroa.0340.4000..sroa.0340.4000..sroa.0340.4000..sroa.0340.4000..pr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %5, ptr nonnull align 8 dereferenceable(4008) %.sroa.0340, i64 %i.hk, i1 false)
  %.pr387 = load i64, ptr %i.hj, align 8, !tbaa !444
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.thread384
  %i.hl = phi i64 [ %.pr387, %bb.ar ], [ 0, %bb.aq ], [ 0, %.thread384 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0340)
  %i.hm = load i64, ptr %i.es, align 8, !tbaa !444
  %.not.i180 = icmp eq i64 %i.hl, %i.hm
  br i1 %.not.i180, label %bb.at, label %.critedge94

bb.at:                                            ; preds = %bb.as
  %.idx.i182 = shl nsw i64 %i.hl, 3
  %i.hn = getelementptr inbounds i8, ptr %5, i64 %.idx.i182
  %.not2526.i183 = icmp eq i64 %i.hl, 0
  br i1 %.not2526.i183, label %.loopexit419, label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %bb.at, %bb.au
  %.sroa.021.028.i185 = phi ptr [ %i.hu, %bb.au ], [ %5, %bb.at ] ; 2 uses
  %.sroa.016.027.i186 = phi ptr [ %i.hv, %bb.au ], [ %4, %bb.at ] ; 2 uses
  %i.ho = load <2 x i32>, ptr %.sroa.021.028.i185, align 4
  %i.hp = load <2 x i32>, ptr %.sroa.016.027.i186, align 4
  %i.hq = icmp eq <2 x i32> %i.ho, %i.hp          ; 2 uses
  %i.hr = extractelement <2 x i1> %i.hq, i64 0
  %i.hs = extractelement <2 x i1> %i.hq, i64 1
  %i.ht = select i1 %i.hr, i1 %i.hs, i1 false
  br i1 %i.ht, label %bb.au, label %.critedge94

bb.au:                                            ; preds = %.lr.ph.i184
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i185, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i186, i64 8
  %.not25.i187 = icmp eq ptr %i.hu, %i.hn
  br i1 %.not25.i187, label %.loopexit419, label %.lr.ph.i184, !llvm.loop !8127

bb.av:                                            ; preds = %.loopexit419
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bc

.loopexit419:                                     ; preds = %bb.au, %bb.at
  invoke void @_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE14adopt_sequenceENS0_22ordered_unique_range_tEOS7_(ptr noundef nonnull align 8 dereferenceable(4008) %3, ptr noundef nonnull align 8 dereferenceable(4008) %5)
          to label %bb.aw unwind label %bb.av

bb.aw:                                            ; preds = %.loopexit419
  %i.hx = load i64, ptr %i.er, align 8, !tbaa !444 ; 3 uses
  %i.hy = load i64, ptr %i.es, align 8, !tbaa !444
  %.not.i189 = icmp eq i64 %i.hx, %i.hy
  br i1 %.not.i189, label %bb.ax, label %.critedge94

bb.ax:                                            ; preds = %bb.aw
  %.idx.i191 = shl nsw i64 %i.hx, 3
  %i.hz = getelementptr inbounds i8, ptr %3, i64 %.idx.i191 ; 2 uses
  %.not2526.i192 = icmp eq i64 %i.hx, 0
  br i1 %.not2526.i192, label %.thread391, label %.lr.ph.i193

.lr.ph.i193:                                      ; preds = %bb.ax, %bb.ay
  %.sroa.021.028.i194 = phi ptr [ %i.ig, %bb.ay ], [ %3, %bb.ax ] ; 2 uses
  %.sroa.016.027.i195 = phi ptr [ %i.ih, %bb.ay ], [ %4, %bb.ax ] ; 2 uses
  %i.ia = load <2 x i32>, ptr %.sroa.021.028.i194, align 4
  %i.ib = load <2 x i32>, ptr %.sroa.016.027.i195, align 4
  %i.ic = icmp eq <2 x i32> %i.ia, %i.ib          ; 2 uses
  %i.id = extractelement <2 x i1> %i.ic, i64 0
  %i.ie = extractelement <2 x i1> %i.ic, i64 1
  %i.if = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %i.if, label %bb.ay, label %.critedge94

bb.ay:                                            ; preds = %.lr.ph.i193
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i194, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i195, i64 8
  %.not25.i196 = icmp eq ptr %i.ig, %i.hz
  br i1 %.not25.i196, label %.lr.ph.i202, label %.lr.ph.i193, !llvm.loop !8130

.lr.ph.i202:                                      ; preds = %bb.ay, %bb.az
  %.sroa.021.028.i203 = phi ptr [ %i.io, %bb.az ], [ %3, %bb.ay ] ; 2 uses
  %.sroa.016.027.i204 = phi ptr [ %i.ip, %bb.az ], [ %4, %bb.ay ] ; 2 uses
  %i.ii = load <2 x i32>, ptr %.sroa.021.028.i203, align 4
  %i.ij = load <2 x i32>, ptr %.sroa.016.027.i204, align 4
  %i.ik = icmp eq <2 x i32> %i.ii, %i.ij          ; 2 uses
  %i.il = extractelement <2 x i1> %i.ik, i64 0
  %i.im = extractelement <2 x i1> %i.ik, i64 1
  %i.in = select i1 %i.il, i1 %i.im, i1 false
  br i1 %i.in, label %bb.az, label %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEES6_EEbRKT_RKT0_.exit206

bb.az:                                            ; preds = %.lr.ph.i202
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i203, i64 8 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i204, i64 8
  %.not25.i205 = icmp eq ptr %i.io, %i.hz
  br i1 %.not25.i205, label %.thread391, label %.lr.ph.i202, !llvm.loop !8131

_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEES6_EEbRKT_RKT0_.exit206: ; preds = %.lr.ph.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.cx

.thread391:                                       ; preds = %bb.az, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 4000 ; 10 uses
  store i64 0, ptr %i.iq, align 8, !tbaa !442
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 4000 ; 9 uses
  store i64 0, ptr %i.ir, align 8, !tbaa !442
  br label %bb.bd

bb.ba:                                            ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit260
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0323)
  call void @llvm.experimental.noalias.scope.decl(metadata !8277)
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !442, !noalias !8277 ; 3 uses
  %.sroa.0323.4000..sroa_idx594 = getelementptr inbounds nuw i8, ptr %.sroa.0323, i64 4000
  store i64 %i.is, ptr %.sroa.0323.4000..sroa_idx594, align 8, !tbaa !442, !alias.scope !8277
  %.not.i.i.i.i.i.i207 = icmp eq i64 %i.is, 0
  br i1 %.not.i.i.i.i.i.i207, label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16extract_sequenceEv.exit.thread, label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16extract_sequenceEv.exit, !prof !344

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16extract_sequenceEv.exit.thread: ; preds = %bb.ba
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 4000
  store i64 0, ptr %i.it, align 8, !tbaa !442
  br label %bb.bu

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16extract_sequenceEv.exit: ; preds = %bb.ba
  %i.iu = shl i64 %i.is, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %.sroa.0323, ptr nonnull align 8 dereferenceable(4008) %6, i64 %i.iu, i1 false)
  %.sroa.0323.4000..sroa_idx595 = getelementptr inbounds nuw i8, ptr %.sroa.0323, i64 4000
  %.sroa.0323.4000..sroa.0323.4000..sroa.0323.4000..sroa.0323.4000..pr = load i64, ptr %.sroa.0323.4000..sroa_idx595, align 8, !tbaa !442 ; 3 uses
  store i64 0, ptr %i.iq, align 8, !tbaa !442, !noalias !8277
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 4000 ; 2 uses
  store i64 %.sroa.0323.4000..sroa.0323.4000..sroa.0323.4000..sroa.0323.4000..pr, ptr %i.iv, align 8, !tbaa !442
  %.not.i.i.i.i.i208 = icmp eq i64 %.sroa.0323.4000..sroa.0323.4000..sroa.0323.4000..sroa.0323.4000..pr, 0
  br i1 %.not.i.i.i.i.i208, label %bb.bu, label %bb.bb, !prof !445

bb.bb:                                            ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16extract_sequenceEv.exit
  %i.iw = shl i64 %.sroa.0323.4000..sroa.0323.4000..sroa.0323.4000..sroa.0323.4000..pr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %8, ptr nonnull align 8 dereferenceable(4008) %.sroa.0323, i64 %i.iw, i1 false)
  %.pr397 = load i64, ptr %i.iv, align 8, !tbaa !444
  br label %bb.bu

bb.bc:                                            ; preds = %bb.ao, %bb.ap, %bb.av
  %.pn82.pn = phi { ptr, i32 } [ %i.hw, %bb.av ], [ %i.hh, %bb.ap ], [ %i.hg, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.cy

thread-pre-split537:                              ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit260
  %.pr538 = load i64, ptr %i.iq, align 8, !tbaa !444, !noalias !8278
  br label %bb.bd

bb.bd:                                            ; preds = %thread-pre-split537, %.thread391
  %i.ix = phi i64 [ %.pr538, %thread-pre-split537 ], [ 0, %.thread391 ] ; 6 uses
  %.045431 = phi i64 [ %i.mz, %thread-pre-split537 ], [ 0, %.thread391 ] ; 2 uses
  %i.iy = trunc i64 %.045431 to i32               ; 13 uses
  %i.iz = sub nsw i32 0, %i.iy                    ; 8 uses
  %.not12.i.i.i.i.i = icmp eq i64 %i.ix, 0
  br i1 %.not12.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bd, %.lr.ph.i.i.i.i.i
  %i.ja = phi ptr [ %i.jh, %.lr.ph.i.i.i.i.i ], [ %6, %bb.bd ] ; 2 uses
  %.013.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ix, %bb.bd ] ; 2 uses
  %i.jb = lshr i64 %.013.i.i.i.i.i, 1             ; 3 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jb ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !338, !noalias !8279
  %i.je = icmp sgt i32 %i.jd, %i.iy               ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %.neg.i.i.i.i.i = xor i64 %i.jb, -1
  %i.jg = add i64 %.013.i.i.i.i.i, %.neg.i.i.i.i.i
  %i.jh = select i1 %i.je, ptr %i.ja, ptr %i.jf   ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.je, i64 %i.jb, i64 %i.jg ; 2 uses
  %.not.i.i.i.i.i211 = icmp eq i64 %.1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i211, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !119

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i3.i.i.i = icmp eq i64 %i.ix, 500
  br i1 %.not.i.i3.i.i.i, label %.noexc.i.i214, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i, !prof !446

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i, %bb.bd
  %i.ji = phi ptr [ %i.jh, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i ], [ %6, %bb.bd ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ix ; 5 uses
  %.not.i.i.i.i.i.i212 = icmp eq ptr %i.jj, %i.ji
  br i1 %.not.i.i.i.i.i.i212, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i
  store i32 %i.iy, ptr %i.ji, align 4, !tbaa !338, !noalias !8280
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  store i32 %i.iz, ptr %i.jk, align 4, !tbaa !338, !noalias !8280
  %i.jl = add i64 %i.ix, 1
  store i64 %i.jl, ptr %i.iq, align 8, !tbaa !444, !noalias !8280
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit

bb.bf:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i
  %i.jm = ptrtoint ptr %i.ji to i64
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = sub i64 %i.jn, %i.jm
  %i.jp = ashr exact i64 %i.jo, 3                 ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %i.jj, i64 -8 ; 2 uses
  %i.jr = load <2 x i32>, ptr %i.jq, align 8, !tbaa !338, !noalias !8280
  store <2 x i32> %i.jr, ptr %i.jj, align 8, !tbaa !338, !noalias !8280
  %i.js = add nsw i64 %i.ix, 1
  store i64 %i.js, ptr %i.iq, align 8, !tbaa !444, !noalias !8280
  %i.jt = add nsw i64 %i.jp, -1                   ; 2 uses
  %.not.i.i.i.i.i.i.i213 = icmp eq i64 %i.jt, 0
  br i1 %.not.i.i.i.i.i.i.i213, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i, label %bb.bg, !prof !344

bb.bg:                                            ; preds = %bb.bf
  %i.ju = sub nsw i64 1, %i.jp                    ; 2 uses
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %i.ju
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.ju
  %i.jx = shl i64 %i.jt, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jv, ptr nonnull align 8 %i.jw, i64 %i.jx, i1 false), !noalias !8280
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  store i32 %i.iy, ptr %i.ji, align 4, !tbaa !347, !noalias !8280
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  store i32 %i.iz, ptr %i.jy, align 4, !tbaa !348, !noalias !8280
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit

.noexc.i.i214:                                    ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc215 unwind label %bb.bq

.noexc215:                                        ; preds = %.noexc.i.i214
  unreachable

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit: ; preds = %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i, %bb.be
  %i.jz = load i64, ptr %i.ir, align 8, !tbaa !444, !noalias !8281 ; 6 uses
  %.not12.i.i.i.i.i216 = icmp eq i64 %i.jz, 0
  br i1 %.not12.i.i.i.i.i216, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i224, label %.lr.ph.i.i.i.i.i217

.lr.ph.i.i.i.i.i217:                              ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit, %.lr.ph.i.i.i.i.i217
  %i.ka = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i217 ], [ %7, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit ] ; 2 uses
  %.013.i.i.i.i.i218 = phi i64 [ %.1.i.i.i.i.i220, %.lr.ph.i.i.i.i.i217 ], [ %i.jz, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit ] ; 2 uses
  %i.kb = lshr i64 %.013.i.i.i.i.i218, 1          ; 3 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.kb ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !338, !noalias !8282
  %i.ke = icmp sgt i32 %i.kd, %i.iy               ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %.neg.i.i.i.i.i219 = xor i64 %i.kb, -1
  %i.kg = add i64 %.013.i.i.i.i.i218, %.neg.i.i.i.i.i219
  %i.kh = select i1 %i.ke, ptr %i.ka, ptr %i.kf   ; 2 uses
  %.1.i.i.i.i.i220 = select i1 %i.ke, i64 %i.kb, i64 %i.kg ; 2 uses
  %.not.i.i.i.i.i221 = icmp eq i64 %.1.i.i.i.i.i220, 0
  br i1 %.not.i.i.i.i.i221, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i222, label %.lr.ph.i.i.i.i.i217, !llvm.loop !119

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i222: ; preds = %.lr.ph.i.i.i.i.i217
  %.not.i.i3.i.i.i223 = icmp eq i64 %i.jz, 500
  br i1 %.not.i.i3.i.i.i223, label %.noexc.i.i228, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i224, !prof !446

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i224: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i222, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit
  %i.ki = phi ptr [ %i.kh, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i222 ], [ %7, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit ] ; 6 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.jz ; 5 uses
  %.not.i.i.i.i.i.i225 = icmp eq ptr %i.kj, %i.ki
  br i1 %.not.i.i.i.i.i.i225, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i224
  store i32 %i.iy, ptr %i.ki, align 4, !tbaa !338, !noalias !8283
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  store i32 %i.iz, ptr %i.kk, align 4, !tbaa !338, !noalias !8283
  %i.kl = add i64 %i.jz, 1
  store i64 %i.kl, ptr %i.ir, align 8, !tbaa !444, !noalias !8283
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit230

bb.bi:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i224
  %i.km = ptrtoint ptr %i.ki to i64
  %i.kn = ptrtoint ptr %i.kj to i64
  %i.ko = sub i64 %i.kn, %i.km
  %i.kp = ashr exact i64 %i.ko, 3                 ; 2 uses
  %i.kq = getelementptr inbounds i8, ptr %i.kj, i64 -8 ; 2 uses
  %i.kr = load <2 x i32>, ptr %i.kq, align 8, !tbaa !338, !noalias !8283
  store <2 x i32> %i.kr, ptr %i.kj, align 8, !tbaa !338, !noalias !8283
  %i.ks = add nsw i64 %i.jz, 1
  store i64 %i.ks, ptr %i.ir, align 8, !tbaa !444, !noalias !8283
  %i.kt = add nsw i64 %i.kp, -1                   ; 2 uses
  %.not.i.i.i.i.i.i.i226 = icmp eq i64 %i.kt, 0
  br i1 %.not.i.i.i.i.i.i.i226, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i227, label %bb.bj, !prof !344

bb.bj:                                            ; preds = %bb.bi
  %i.ku = sub nsw i64 1, %i.kp                    ; 2 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.ku
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.ku
  %i.kx = shl i64 %i.kt, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kv, ptr nonnull align 8 %i.kw, i64 %i.kx, i1 false), !noalias !8283
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i227

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i227: ; preds = %bb.bj, %bb.bi
  store i32 %i.iy, ptr %i.ki, align 4, !tbaa !347, !noalias !8283
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  store i32 %i.iz, ptr %i.ky, align 4, !tbaa !348, !noalias !8283
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit230

.noexc.i.i228:                                    ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i222
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc229 unwind label %bb.br

.noexc229:                                        ; preds = %.noexc.i.i228
  unreachable

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit230: ; preds = %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i227, %bb.bh
  %i.kz = load i64, ptr %i.iq, align 8, !tbaa !444, !noalias !8284 ; 6 uses
  %.not12.i.i.i.i.i231 = icmp eq i64 %i.kz, 0
  br i1 %.not12.i.i.i.i.i231, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i239, label %.lr.ph.i.i.i.i.i232

.lr.ph.i.i.i.i.i232:                              ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit230, %.lr.ph.i.i.i.i.i232
  %i.la = phi ptr [ %i.lh, %.lr.ph.i.i.i.i.i232 ], [ %6, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit230 ] ; 2 uses
  %.013.i.i.i.i.i233 = phi i64 [ %.1.i.i.i.i.i235, %.lr.ph.i.i.i.i.i232 ], [ %i.kz, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit230 ] ; 2 uses
  %i.lb = lshr i64 %.013.i.i.i.i.i233, 1          ; 3 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lb ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !338, !noalias !8285
  %i.le = icmp sgt i32 %i.ld, %i.iy               ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %.neg.i.i.i.i.i234 = xor i64 %i.lb, -1
  %i.lg = add i64 %.013.i.i.i.i.i233, %.neg.i.i.i.i.i234
  %i.lh = select i1 %i.le, ptr %i.la, ptr %i.lf   ; 2 uses
  %.1.i.i.i.i.i235 = select i1 %i.le, i64 %i.lb, i64 %i.lg ; 2 uses
  %.not.i.i.i.i.i236 = icmp eq i64 %.1.i.i.i.i.i235, 0
  br i1 %.not.i.i.i.i.i236, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i237, label %.lr.ph.i.i.i.i.i232, !llvm.loop !119

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i237: ; preds = %.lr.ph.i.i.i.i.i232
  %.not.i.i3.i.i.i238 = icmp eq i64 %i.kz, 500
  br i1 %.not.i.i3.i.i.i238, label %.noexc.i.i243, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i239, !prof !446

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i239: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i237, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit230
  %i.li = phi ptr [ %i.lh, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i237 ], [ %6, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit230 ] ; 6 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.kz ; 5 uses
  %.not.i.i.i.i.i.i240 = icmp eq ptr %i.lj, %i.li
  br i1 %.not.i.i.i.i.i.i240, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i239
  store i32 %i.iy, ptr %i.li, align 4, !tbaa !338, !noalias !8286
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i32 %i.iz, ptr %i.lk, align 4, !tbaa !338, !noalias !8286
  %i.ll = add i64 %i.kz, 1
  store i64 %i.ll, ptr %i.iq, align 8, !tbaa !444, !noalias !8286
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit245

bb.bl:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i239
  %i.lm = ptrtoint ptr %i.li to i64
  %i.ln = ptrtoint ptr %i.lj to i64
  %i.lo = sub i64 %i.ln, %i.lm
  %i.lp = ashr exact i64 %i.lo, 3                 ; 2 uses
  %i.lq = getelementptr inbounds i8, ptr %i.lj, i64 -8 ; 2 uses
  %i.lr = load <2 x i32>, ptr %i.lq, align 8, !tbaa !338, !noalias !8286
  store <2 x i32> %i.lr, ptr %i.lj, align 8, !tbaa !338, !noalias !8286
  %i.ls = add nsw i64 %i.kz, 1
  store i64 %i.ls, ptr %i.iq, align 8, !tbaa !444, !noalias !8286
  %i.lt = add nsw i64 %i.lp, -1                   ; 2 uses
  %.not.i.i.i.i.i.i.i241 = icmp eq i64 %i.lt, 0
  br i1 %.not.i.i.i.i.i.i.i241, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i242, label %bb.bm, !prof !344

bb.bm:                                            ; preds = %bb.bl
  %i.lu = sub nsw i64 1, %i.lp                    ; 2 uses
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.lu
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %i.lu
  %i.lx = shl i64 %i.lt, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lv, ptr nonnull align 8 %i.lw, i64 %i.lx, i1 false), !noalias !8286
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i242

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i242: ; preds = %bb.bm, %bb.bl
  store i32 %i.iy, ptr %i.li, align 4, !tbaa !347, !noalias !8286
  %i.ly = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i32 %i.iz, ptr %i.ly, align 4, !tbaa !348, !noalias !8286
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit245

.noexc.i.i243:                                    ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i237
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc244 unwind label %bb.bs

.noexc244:                                        ; preds = %.noexc.i.i243
  unreachable

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit245: ; preds = %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i242, %bb.bk
  %i.lz = load i64, ptr %i.ir, align 8, !tbaa !444, !noalias !8287 ; 6 uses
  %.not12.i.i.i.i.i246 = icmp eq i64 %i.lz, 0
  br i1 %.not12.i.i.i.i.i246, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i254, label %.lr.ph.i.i.i.i.i247

.lr.ph.i.i.i.i.i247:                              ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit245, %.lr.ph.i.i.i.i.i247
  %i.ma = phi ptr [ %i.mh, %.lr.ph.i.i.i.i.i247 ], [ %7, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit245 ] ; 2 uses
  %.013.i.i.i.i.i248 = phi i64 [ %.1.i.i.i.i.i250, %.lr.ph.i.i.i.i.i247 ], [ %i.lz, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit245 ] ; 2 uses
  %i.mb = lshr i64 %.013.i.i.i.i.i248, 1          ; 3 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.mb ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !338, !noalias !8288
  %i.me = icmp sgt i32 %i.md, %i.iy               ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %.neg.i.i.i.i.i249 = xor i64 %i.mb, -1
  %i.mg = add i64 %.013.i.i.i.i.i248, %.neg.i.i.i.i.i249
  %i.mh = select i1 %i.me, ptr %i.ma, ptr %i.mf   ; 2 uses
  %.1.i.i.i.i.i250 = select i1 %i.me, i64 %i.mb, i64 %i.mg ; 2 uses
  %.not.i.i.i.i.i251 = icmp eq i64 %.1.i.i.i.i.i250, 0
  br i1 %.not.i.i.i.i.i251, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i252, label %.lr.ph.i.i.i.i.i247, !llvm.loop !119

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i252: ; preds = %.lr.ph.i.i.i.i.i247
  %.not.i.i3.i.i.i253 = icmp eq i64 %i.lz, 500
  br i1 %.not.i.i3.i.i.i253, label %.noexc.i.i258, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i254, !prof !446

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i254: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i252, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit245
  %i.mi = phi ptr [ %i.mh, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i252 ], [ %7, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit245 ] ; 6 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.lz ; 5 uses
  %.not.i.i.i.i.i.i255 = icmp eq ptr %i.mj, %i.mi
  br i1 %.not.i.i.i.i.i.i255, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i254
  store i32 %i.iy, ptr %i.mi, align 4, !tbaa !338, !noalias !8289
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store i32 %i.iz, ptr %i.mk, align 4, !tbaa !338, !noalias !8289
  %i.ml = add i64 %i.lz, 1
  store i64 %i.ml, ptr %i.ir, align 8, !tbaa !444, !noalias !8289
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit260

bb.bo:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i254
  %i.mm = ptrtoint ptr %i.mi to i64
  %i.mn = ptrtoint ptr %i.mj to i64
  %i.mo = sub i64 %i.mn, %i.mm
  %i.mp = ashr exact i64 %i.mo, 3                 ; 2 uses
  %i.mq = getelementptr inbounds i8, ptr %i.mj, i64 -8 ; 2 uses
  %i.mr = load <2 x i32>, ptr %i.mq, align 8, !tbaa !338, !noalias !8289
  store <2 x i32> %i.mr, ptr %i.mj, align 8, !tbaa !338, !noalias !8289
  %i.ms = add nsw i64 %i.lz, 1
  store i64 %i.ms, ptr %i.ir, align 8, !tbaa !444, !noalias !8289
  %i.mt = add nsw i64 %i.mp, -1                   ; 2 uses
  %.not.i.i.i.i.i.i.i256 = icmp eq i64 %i.mt, 0
  br i1 %.not.i.i.i.i.i.i.i256, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i257, label %bb.bp, !prof !344

bb.bp:                                            ; preds = %bb.bo
  %i.mu = sub nsw i64 1, %i.mp                    ; 2 uses
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.mu
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.mq, i64 %i.mu
  %i.mx = shl i64 %i.mt, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mv, ptr nonnull align 8 %i.mw, i64 %i.mx, i1 false), !noalias !8289
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i257

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i257: ; preds = %bb.bp, %bb.bo
  store i32 %i.iy, ptr %i.mi, align 4, !tbaa !347, !noalias !8289
  %i.my = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store i32 %i.iz, ptr %i.my, align 4, !tbaa !348, !noalias !8289
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit260

.noexc.i.i258:                                    ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i252
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc259 unwind label %bb.bt

.noexc259:                                        ; preds = %.noexc.i.i258
  unreachable

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE7emplaceIJiiEEENS0_12vec_iteratorIPS6_Lb0EEEDpOT_.exit260: ; preds = %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i257, %bb.bn
  %i.mz = add nuw nsw i64 %.045431, 1             ; 2 uses
  %.not74 = icmp eq i64 %i.mz, 100
  br i1 %.not74, label %bb.ba, label %thread-pre-split537, !llvm.loop !8249

bb.bq:                                            ; preds = %.noexc.i.i214
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.br:                                            ; preds = %.noexc.i.i228
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bs:                                            ; preds = %.noexc.i.i243
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bt:                                            ; preds = %.noexc.i.i258
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bu:                                            ; preds = %bb.bb, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16extract_sequenceEv.exit, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16extract_sequenceEv.exit.thread
  %i.ne = phi i64 [ %.pr397, %bb.bb ], [ 0, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16extract_sequenceEv.exit ], [ 0, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16extract_sequenceEv.exit.thread ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0323)
  %i.nf = load i64, ptr %i.ir, align 8, !tbaa !444
  %.not.i261 = icmp eq i64 %i.ne, %i.nf
  br i1 %.not.i261, label %bb.bv, label %.critedge97

bb.bv:                                            ; preds = %bb.bu
  %.idx.i263 = shl nsw i64 %i.ne, 3
  %i.ng = getelementptr inbounds i8, ptr %8, i64 %.idx.i263
  %.not2526.i264 = icmp eq i64 %i.ne, 0
  br i1 %.not2526.i264, label %.loopexit417, label %.lr.ph.i265

.lr.ph.i265:                                      ; preds = %bb.bv, %bb.bw
  %.sroa.021.028.i266 = phi ptr [ %i.nn, %bb.bw ], [ %8, %bb.bv ] ; 2 uses
  %.sroa.016.027.i267 = phi ptr [ %i.no, %bb.bw ], [ %7, %bb.bv ] ; 2 uses
  %i.nh = load <2 x i32>, ptr %.sroa.021.028.i266, align 4
  %i.ni = load <2 x i32>, ptr %.sroa.016.027.i267, align 4
  %i.nj = icmp eq <2 x i32> %i.nh, %i.ni          ; 2 uses
  %i.nk = extractelement <2 x i1> %i.nj, i64 0
  %i.nl = extractelement <2 x i1> %i.nj, i64 1
  %i.nm = select i1 %i.nk, i1 %i.nl, i1 false
  br i1 %i.nm, label %bb.bw, label %.critedge97

bb.bw:                                            ; preds = %.lr.ph.i265
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i266, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i267, i64 8
  %.not25.i268 = icmp eq ptr %i.nn, %i.ng
  br i1 %.not25.i268, label %.loopexit417, label %.lr.ph.i265, !llvm.loop !8250

bb.bx:                                            ; preds = %bb.by, %.loopexit417
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.cf

.loopexit417:                                     ; preds = %bb.bw, %bb.bv
  store ptr %8, ptr %9, align 8, !tbaa !350, !alias.scope !8290
  %i.nq = getelementptr inbounds [8 x i8], ptr %8, i64 %i.ne
  store ptr %i.nq, ptr %10, align 8, !tbaa !350, !alias.scope !8291
  invoke void @_ZN5boost9container4test14random_shuffleINS0_12vec_iteratorIPSt4pairIiiELb0EEEEEvT_S8_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
          to label %bb.by unwind label %bb.bx

bb.by:                                            ; preds = %.loopexit417
  invoke void @_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE14adopt_sequenceEOS7_(ptr noundef nonnull align 8 dereferenceable(4008) %6, ptr noundef nonnull align 8 dereferenceable(4008) %8)
          to label %bb.bz unwind label %bb.bx

bb.bz:                                            ; preds = %bb.by
  %i.nr = load i64, ptr %i.iq, align 8, !tbaa !444 ; 3 uses
  %i.ns = load i64, ptr %i.ir, align 8, !tbaa !444
  %.not.i269 = icmp eq i64 %i.nr, %i.ns
  br i1 %.not.i269, label %bb.ca, label %.critedge97

bb.ca:                                            ; preds = %bb.bz
  %.idx.i271 = shl nsw i64 %i.nr, 3
  %i.nt = getelementptr inbounds i8, ptr %6, i64 %.idx.i271 ; 2 uses
  %.not2526.i272 = icmp eq i64 %i.nr, 0
  br i1 %.not2526.i272, label %.thread401, label %.lr.ph.i273

.lr.ph.i273:                                      ; preds = %bb.ca, %bb.cb
  %.sroa.021.028.i274 = phi ptr [ %i.oa, %bb.cb ], [ %6, %bb.ca ] ; 2 uses
  %.sroa.016.027.i275 = phi ptr [ %i.ob, %bb.cb ], [ %7, %bb.ca ] ; 2 uses
  %i.nu = load <2 x i32>, ptr %.sroa.021.028.i274, align 4
  %i.nv = load <2 x i32>, ptr %.sroa.016.027.i275, align 4
  %i.nw = icmp eq <2 x i32> %i.nu, %i.nv          ; 2 uses
  %i.nx = extractelement <2 x i1> %i.nw, i64 0
  %i.ny = extractelement <2 x i1> %i.nw, i64 1
  %i.nz = select i1 %i.nx, i1 %i.ny, i1 false
  br i1 %i.nz, label %bb.cb, label %.critedge97

bb.cb:                                            ; preds = %.lr.ph.i273
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i274, i64 8 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i275, i64 8
  %.not25.i276 = icmp eq ptr %i.oa, %i.nt
  br i1 %.not25.i276, label %.lr.ph.i281, label %.lr.ph.i273, !llvm.loop !8255

.lr.ph.i281:                                      ; preds = %bb.cb, %bb.cc
  %.sroa.021.028.i282 = phi ptr [ %i.oi, %bb.cc ], [ %6, %bb.cb ] ; 2 uses
  %.sroa.016.027.i283 = phi ptr [ %i.oj, %bb.cc ], [ %7, %bb.cb ] ; 2 uses
  %i.oc = load <2 x i32>, ptr %.sroa.021.028.i282, align 4
  %i.od = load <2 x i32>, ptr %.sroa.016.027.i283, align 4
  %i.oe = icmp eq <2 x i32> %i.oc, %i.od          ; 2 uses
  %i.of = extractelement <2 x i1> %i.oe, i64 0
  %i.og = extractelement <2 x i1> %i.oe, i64 1
  %i.oh = select i1 %i.of, i1 %i.og, i1 false
  br i1 %i.oh, label %bb.cc, label %_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEES6_EEbRKT_RKT0_.exit285

bb.cc:                                            ; preds = %.lr.ph.i281
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i282, i64 8 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i283, i64 8
  %.not25.i284 = icmp eq ptr %i.oi, %i.nt
  br i1 %.not25.i284, label %.thread401, label %.lr.ph.i281, !llvm.loop !8131

_ZN5boost9container4test20CheckEqualContainersINS0_13static_vectorISt4pairIiiELm500EvEES6_EEbRKT_RKT0_.exit285: ; preds = %.lr.ph.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.cx

.thread401:                                       ; preds = %bb.cc, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.ok = getelementptr inbounds nuw i8, ptr %11, i64 4000 ; 4 uses
  store i64 0, ptr %i.ok, align 8, !tbaa !442
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ol = getelementptr inbounds nuw i8, ptr %12, i64 4000 ; 3 uses
  store i64 0, ptr %i.ol, align 8, !tbaa !442
  br label %bb.cg

bb.cd:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !8292)
  %i.om = load i64, ptr %i.ok, align 8, !tbaa !442, !noalias !8292 ; 3 uses
  %.sroa.0.4000..sroa_idx592 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4000
  store i64 %i.om, ptr %.sroa.0.4000..sroa_idx592, align 8, !tbaa !442, !alias.scope !8292
  %.not.i.i.i.i.i.i286 = icmp eq i64 %i.om, 0
  br i1 %.not.i.i.i.i.i.i286, label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16extract_sequenceEv.exit287.thread, label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16extract_sequenceEv.exit287, !prof !344

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16extract_sequenceEv.exit287.thread: ; preds = %bb.cd
  %i.on = getelementptr inbounds nuw i8, ptr %17, i64 4000
  store i64 0, ptr %i.on, align 8, !tbaa !442
  br label %bb.cp

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16extract_sequenceEv.exit287: ; preds = %bb.cd
  %i.oo = shl i64 %i.om, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %.sroa.0, ptr nonnull align 8 dereferenceable(4008) %11, i64 %i.oo, i1 false)
  %.sroa.0.4000..sroa_idx593 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4000
  %.sroa.0.4000..sroa.0.4000..sroa.0.4000..sroa.0.4000..pr = load i64, ptr %.sroa.0.4000..sroa_idx593, align 8, !tbaa !442 ; 3 uses
  store i64 0, ptr %i.ok, align 8, !tbaa !442, !noalias !8292
  %i.op = getelementptr inbounds nuw i8, ptr %17, i64 4000 ; 2 uses
  store i64 %.sroa.0.4000..sroa.0.4000..sroa.0.4000..sroa.0.4000..pr, ptr %i.op, align 8, !tbaa !442
  %.not.i.i.i.i.i288 = icmp eq i64 %.sroa.0.4000..sroa.0.4000..sroa.0.4000..sroa.0.4000..pr, 0
  br i1 %.not.i.i.i.i.i288, label %bb.cp, label %bb.ce, !prof !445

bb.ce:                                            ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16extract_sequenceEv.exit287
  %i.oq = shl i64 %.sroa.0.4000..sroa.0.4000..sroa.0.4000..sroa.0.4000..pr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(4008) %17, ptr nonnull align 8 dereferenceable(4008) %.sroa.0, i64 %i.oq, i1 false)
  %.pr407 = load i64, ptr %i.op, align 8, !tbaa !444
  br label %bb.cp

bb.cf:                                            ; preds = %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bx
  %.pn79.pn = phi { ptr, i32 } [ %i.np, %bb.bx ], [ %i.nd, %bb.bt ], [ %i.nc, %bb.bs ], [ %i.nb, %bb.br ], [ %i.na, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.cy

end_hunk_0
begin_hunk_1_@_ZN5boost9container4test14map_test_mergeINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_:bb.a
bb.bt:                                            ; preds = %.lr.ph.i310
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i311, i64 36
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !366
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i312, i64 4
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !348
  %.not11.i314 = icmp eq i32 %i.oz, %i.ox
  br i1 %.not11.i314, label %bb.bu, label %_ZN5boost7movelib10unique_ptrINS_9container8flat_mapIiiSt4lessIiENS2_13static_vectorISt4pairIiiELm500EvEEEENS0_14default_deleteISA_EEED2Ev.exit

bb.bu:                                            ; preds = %bb.bt
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i312, i64 8 ; 2 uses
  %i.pb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i311) #27
  %.not19.i315 = icmp eq ptr %i.pa, %i.or
  br i1 %.not19.i315, label %_ZN5boost7movelib10unique_ptrINS_9container8flat_mapIiiSt4lessIiENS2_13static_vectorISt4pairIiiELm500EvEEEENS0_14default_deleteISA_EEED2Ev.exit, label %.lr.ph.i310, !llvm.loop !123

_ZN5boost7movelib10unique_ptrINS_9container8flat_mapIiiSt4lessIiENS2_13static_vectorISt4pairIiiELm500EvEEEENS0_14default_deleteISA_EEED2Ev.exit: ; preds = %bb.x, %.lr.ph.i, %bb.ai, %.lr.ph.i232, %bb.bf, %.lr.ph.i273, %bb.bt, %.lr.ph.i310, %bb.bu, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE5mergeIS3_EEvRNS0_8flat_mapIiiT_S7_EE.exit, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE5mergeIS3_EEvRNS1_IiiT_S7_EE.exit, %bb.ag, %bb.v, %bb.bs
  %not. = phi i32 [ 1, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE5mergeIS3_EEvRNS1_IiiT_S7_EE.exit ], [ 0, %bb.bs ], [ 1, %bb.ai ], [ 1, %bb.bf ], [ 1, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE5mergeIS3_EEvRNS0_8flat_mapIiiT_S7_EE.exit ], [ 1, %bb.v ], [ 0, %bb.bu ], [ 1, %bb.ag ], [ 1, %bb.bt ], [ 1, %.lr.ph.i310 ], [ 1, %.lr.ph.i273 ], [ 1, %.lr.ph.i232 ], [ 1, %.lr.ph.i ], [ 1, %bb.x ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 4008) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4008) #26
  ret i32 %not.

_ZN5boost7movelib10unique_ptrINS_9container13flat_multimapIiiSt4lessIiENS2_13static_vectorISt4pairIiiELm500EvEEEENS0_14default_deleteISA_EEED2Ev.exit321: ; preds = %bb.br, %bb.bd, %bb.as, %bb.ap, %bb.af, %bb.z, %bb.u, %bb.o, %bb.i
  %.pn171 = phi { ptr, i32 } [ %i.dx, %bb.o ], [ %i.eu, %bb.u ], [ %i.gf, %bb.af ], [ %i.kr, %bb.as ], [ %i.mj, %bb.bd ], [ %i.oo, %bb.br ], [ %i.fi, %bb.z ], [ %.pn167.pn, %bb.ap ], [ %.pn148.pn, %bb.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 4008) #26
  br label %_ZN5boost7movelib10unique_ptrINS_9container8flat_mapIiiSt4lessIiENS2_13static_vectorISt4pairIiiELm500EvEEEENS0_14default_deleteISA_EEED2Ev.exit324

_ZN5boost7movelib10unique_ptrINS_9container8flat_mapIiiSt4lessIiENS2_13static_vectorISt4pairIiiELm500EvEEEENS0_14default_deleteISA_EEED2Ev.exit324: ; preds = %_ZN5boost7movelib10unique_ptrINS_9container13flat_multimapIiiSt4lessIiENS2_13static_vectorISt4pairIiiELm500EvEEEENS0_14default_deleteISA_EEED2Ev.exit321, %bb.e
  %.pn171.pn = phi { ptr, i32 } [ %.pn171, %_ZN5boost7movelib10unique_ptrINS_9container13flat_multimapIiiSt4lessIiENS2_13static_vectorISt4pairIiiELm500EvEEEENS0_14default_deleteISA_EEED2Ev.exit321 ], [ %i.da, %bb.e ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4008) #26
  resume { ptr, i32 } %.pn171.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test17map_test_copyableINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiNS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %1 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %2 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator.12", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator.12", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.12", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::vec_iterator.12", align 8 ; 4 uses
  %8 = alloca %"class.boost::movelib::unique_ptr.0", align 8 ; 6 uses
  %9 = alloca %"class.boost::movelib::unique_ptr.8", align 8 ; 6 uses
  %10 = alloca %"class.boost::container::flat_map.114", align 8 ; 8 uses
  %11 = alloca %"class.std::map", align 8         ; 9 uses
  %12 = alloca %"class.boost::container::flat_multimap.120", align 8 ; 8 uses
  %13 = alloca %"class.std::multimap", align 8    ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(4008) ptr @_Znwm(i64 noundef 4008) #24, !noalias !9101 ; 29 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4000 ; 17 uses
  store i64 0, ptr %i.b, align 8, !tbaa !442, !noalias !9101
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9102)
  %i.c = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %bb.b unwind label %bb.v       ; 9 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !noalias !9102
  store ptr %i.d, ptr %i.e, align 8, !tbaa !315, !noalias !9102
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.d, ptr %i.f, align 16, !tbaa !316, !noalias !9102
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 10 uses
  store i64 0, ptr %i.g, align 8, !tbaa !317, !noalias !9102
  store ptr %i.c, ptr %8, align 8, !tbaa !320, !alias.scope !9102
  %i.h = invoke noalias noundef nonnull dereferenceable(4008) ptr @_Znwm(i64 noundef 4008) #24
          to label %bb.c unwind label %bb.w       ; 26 uses

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4000 ; 18 uses
  store i64 0, ptr %i.i, align 8, !tbaa !442, !noalias !9103
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9104)
  %i.j = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %bb.d unwind label %bb.x       ; 11 uses

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 21 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.j, i8 0, i64 32, i1 false), !noalias !9104
  store ptr %i.k, ptr %i.l, align 8, !tbaa !315, !noalias !9104
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  store ptr %i.k, ptr %i.m, align 16, !tbaa !316, !noalias !9104
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 9 uses
  store i64 0, ptr %i.n, align 8, !tbaa !317, !noalias !9104
  store ptr %i.j, ptr %9, align 8, !tbaa !326, !alias.scope !9104
  %i.o = load i64, ptr %i.b, align 8, !tbaa !444, !noalias !9105
  %i.p = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %6, align 8, !tbaa !370
  store ptr %i.p, ptr %7, align 8, !tbaa !370
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE19insert_unique_rangeINS0_12vec_iteratorIPS4_Lb1EEEEEvT_SG_(ptr noundef nonnull align 8 dereferenceable(4008) %i.a, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7)
          to label %bb.e unwind label %bb.y

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.q = load i64, ptr %i.i, align 8, !tbaa !444, !noalias !9106
  %i.r = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.h, ptr %4, align 8, !tbaa !370
  store ptr %i.r, ptr %5, align 8, !tbaa !370
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE18insert_equal_rangeINS0_12vec_iteratorIPS4_Lb1EEEEEvT_SG_(ptr noundef nonnull align 8 dereferenceable(4008) %i.h, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5)
          to label %bb.f unwind label %bb.y

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.s = load i64, ptr %i.b, align 8, !tbaa !444, !noalias !9107
  %i.t = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.a, ptr %2, align 8, !tbaa !350
  store ptr %i.t, ptr %3, align 8, !tbaa !350
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE19insert_unique_rangeINS0_12vec_iteratorIPS4_Lb0EEEEEvT_SG_(ptr noundef nonnull align 8 dereferenceable(4008) %i.a, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3)
          to label %bb.g unwind label %bb.y

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.u = load i64, ptr %i.i, align 8, !tbaa !444, !noalias !9108
  %i.v = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.h, ptr %0, align 8, !tbaa !350
  store ptr %i.v, ptr %1, align 8, !tbaa !350
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE18insert_equal_rangeINS0_12vec_iteratorIPS4_Lb0EEEEEvT_SG_(ptr noundef nonnull align 8 dereferenceable(4008) %i.h, ptr noundef nonnull align 8 dead_on_return %0, ptr noundef nonnull align 8 dead_on_return %1)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 7 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.u
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.u ] ; 14 uses
  %i.y = load i64, ptr %i.b, align 8, !tbaa !444, !noalias !9109 ; 7 uses
  %.idx.i.i.i.i = shl nsw i64 %i.y, 3
  %i.z = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i.i.i.i
  %.not12.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i
  %i.aa = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %i.a, %bb.i ] ; 2 uses
  %.013.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %bb.i ] ; 2 uses
  %i.ab = lshr i64 %.013.i.i.i.i.i.i, 1           ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !338, !noalias !9110
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp sgt i64 %indvars.iv, %i.ae         ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.neg.i.i.i.i.i.i = xor i64 %i.ab, -1
  %i.ah = add i64 %.013.i.i.i.i.i.i, %.neg.i.i.i.i.i.i
  %i.ai = select i1 %i.af, ptr %i.ag, ptr %i.aa   ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.af, i64 %i.ah, i64 %i.ab ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !118

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.i
  %i.aj = phi ptr [ %i.a, %bb.i ], [ %i.ai, %.lr.ph.i.i.i.i.i.i ] ; 8 uses
  %i.ak = icmp eq ptr %i.aj, %i.z
  br i1 %i.ak, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !338, !noalias !9111
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv, %i.am
  br i1 %i.an, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSF_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i
  %.not.i.i.i3.i.i.i = icmp eq i64 %i.y, 500
  br i1 %.not.i.i.i3.i.i.i, label %.noexc.i.i, label %bb.j, !prof !344

bb.j:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.aj
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.ap, ptr %i.aj, align 4, !tbaa !338, !noalias !9112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !338, !noalias !9112
  %i.ar = add i64 %i.y, 1
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !444, !noalias !9112
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSF_.exit

bb.l:                                             ; preds = %bb.j
  %i.as = ptrtoint ptr %i.aj to i64
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = sub i64 %i.at, %i.as
  %i.av = ashr exact i64 %i.au, 3                 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.ax = load <2 x i32>, ptr %i.aw, align 4, !tbaa !338, !noalias !9112
  store <2 x i32> %i.ax, ptr %i.ao, align 4, !tbaa !338, !noalias !9112
  %i.ay = add nsw i64 %i.y, 1
  store i64 %i.ay, ptr %i.b, align 8, !tbaa !444, !noalias !9112
  %i.az = add nsw i64 %i.av, -1                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i, label %bb.m, !prof !344

bb.m:                                             ; preds = %bb.l
  %i.ba = sub nsw i64 1, %i.av                    ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ba
  %i.bd = shl i64 %i.az, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.bc, i64 %i.bd, i1 false), !noalias !9112
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.be = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.be, ptr %i.aj, align 4, !tbaa !347, !noalias !9112
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !348, !noalias !9112
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSF_.exit

.noexc.i.i:                                       ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSF_.exit: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i, %bb.k
  %.02022.i.i.i = load ptr, ptr %i.w, align 16, !tbaa !337 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSF_.exit, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSF_.exit ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !338
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = icmp slt i64 %indvars.iv, %i.bi         ; 2 uses
  %.in.v.i.i.i = select i1 %i.bj, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !337 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !7

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.bj, label %._crit_edge.thread.i.i.i, label %bb.o

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSF_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.d, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSF_.exit ] ; 4 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !315
  %i.bl = icmp eq ptr %.019.lcssa29.i.i.i, %i.bk
  br i1 %i.bl, label %select.unfold.i.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.bm = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #27
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !338
  %.pre498 = sext i32 %.pre.i.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i
  %.pre-phi499 = phi i64 [ %.pre498, %bb.n ], [ %i.bi, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.n ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.bn = icmp slt i64 %.pre-phi499, %indvars.iv
  br i1 %i.bn, label %select.unfold.i.i, label %bb.q

select.unfold.i.i:                                ; preds = %bb.o, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.o ] ; 3 uses
  %i.bo = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.d
  br i1 %i.bo, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %select.unfold.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !338
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv, %i.br
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i: ; preds = %bb.p, %select.unfold.i.i
  %i.bt = phi i1 [ %i.bs, %bb.p ], [ true, %select.unfold.i.i ]
  %i.bu = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc92 unwind label %bb.aa  ; 2 uses

.noexc92:                                         ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %.sroa.0380.0.insert.insert = mul nuw nsw i64 %indvars.iv, 4294967297
  store i64 %.sroa.0380.0.insert.insert, ptr %i.bv, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bt, ptr noundef nonnull %i.bu, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #23
  %i.bw = load i64, ptr %i.g, align 8, !tbaa !317
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.g, align 8, !tbaa !317
  br label %bb.q

bb.q:                                             ; preds = %.noexc92, %bb.o
  %i.by = load i64, ptr %i.i, align 8, !tbaa !444, !noalias !9113 ; 6 uses
  %.not12.i.i.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not12.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q, %.lr.ph.i.i.i.i.i
  %i.bz = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.q ] ; 2 uses
  %.013.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.by, %bb.q ] ; 2 uses
  %i.ca = lshr i64 %.013.i.i.i.i.i, 1             ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !338, !noalias !9114
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv, %i.cd         ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.neg.i.i.i.i.i = xor i64 %i.ca, -1
  %i.cg = add i64 %.013.i.i.i.i.i, %.neg.i.i.i.i.i
  %i.ch = select i1 %i.ce, ptr %i.bz, ptr %i.cf   ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.ce, i64 %i.ca, i64 %i.cg ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !119

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i3.i.i.i = icmp eq i64 %i.by, 500
  br i1 %.not.i.i3.i.i.i, label %.noexc.i.i95, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i, !prof !446

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i, %bb.q
  %i.ci = phi ptr [ %i.ch, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i ], [ %i.h, %bb.q ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.by ; 5 uses
  %.not.i.i.i.i.i.i93 = icmp eq ptr %i.cj, %i.ci
  br i1 %.not.i.i.i.i.i.i93, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i
  %i.ck = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !338, !noalias !9115
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !338, !noalias !9115
  %i.cm = add i64 %i.by, 1
  store i64 %i.cm, ptr %i.i, align 8, !tbaa !444, !noalias !9115
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSF_.exit

bb.s:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i
  %i.cn = ptrtoint ptr %i.ci to i64
  %i.co = ptrtoint ptr %i.cj to i64
  %i.cp = sub i64 %i.co, %i.cn
  %i.cq = ashr exact i64 %i.cp, 3                 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cj, i64 -8 ; 2 uses
  %i.cs = load <2 x i32>, ptr %i.cr, align 4, !tbaa !338, !noalias !9115
  store <2 x i32> %i.cs, ptr %i.cj, align 4, !tbaa !338, !noalias !9115
  %i.ct = add nsw i64 %i.by, 1
  store i64 %i.ct, ptr %i.i, align 8, !tbaa !444, !noalias !9115
  %i.cu = add nsw i64 %i.cq, -1                   ; 2 uses
  %.not.i.i.i.i.i.i.i94 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i.i94, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i, label %bb.t, !prof !344

bb.t:                                             ; preds = %bb.s
  %i.cv = sub nsw i64 1, %i.cq                    ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cv
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cv
  %i.cy = shl i64 %i.cu, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr nonnull align 8 %i.cx, i64 %i.cy, i1 false), !noalias !9115
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %i.cz = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.cz, ptr %i.ci, align 4, !tbaa !347, !noalias !9115
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !348, !noalias !9115
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSF_.exit

.noexc.i.i95:                                     ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc96 unwind label %bb.ab

.noexc96:                                         ; preds = %.noexc.i.i95
  unreachable

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSF_.exit: ; preds = %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i, %bb.r
  %.078.i.i.i = load ptr, ptr %i.x, align 16, !tbaa !337 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %.078.i.i.i, null
  br i1 %.not9.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i, label %.lr.ph.i.i.i97

.lr.ph.i.i.i97:                                   ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSF_.exit, %.lr.ph.i.i.i97
  %.0710.i.i.i = phi ptr [ %.07.i.i.i, %.lr.ph.i.i.i97 ], [ %.078.i.i.i, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSF_.exit ] ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 32
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !338
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv, %i.dd         ; 2 uses
  %.in.v.i.i.i98 = select i1 %i.de, i64 16, i64 24
  %.in.i.i.i99 = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 %.in.v.i.i.i98
  %.07.i.i.i = load ptr, ptr %.in.i.i.i99, align 8, !tbaa !337 ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %.07.i.i.i, null
  br i1 %.not.i.i.i100, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i, label %.lr.ph.i.i.i97, !llvm.loop !2

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i: ; preds = %.lr.ph.i.i.i97
  %i.df = icmp eq ptr %.0710.i.i.i, %i.k
  %spec.select.i.i = or i1 %i.df, %i.de
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSF_.exit
  %.0.lcssa.i10.i.i = phi ptr [ %i.k, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSF_.exit ], [ %.0710.i.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i ]
  %i.dg = phi i1 [ true, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSF_.exit ], [ %spec.select.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i ]
  %i.dh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %bb.u unwind label %bb.ac      ; 2 uses

bb.u:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %.sroa.0372.0.insert.insert = mul nuw nsw i64 %indvars.iv, 4294967297
  store i64 %.sroa.0372.0.insert.insert, ptr %i.di, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dg, ptr noundef nonnull %i.dh, ptr noundef nonnull %.0.lcssa.i10.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #23
  %i.dj = load i64, ptr %i.n, align 8, !tbaa !317
  %i.dk = add i64 %i.dj, 1                        ; 5 uses
  store i64 %i.dk, ptr %i.n, align 8, !tbaa !317
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond.not, label %bb.ad, label %bb.i, !llvm.loop !9028

bb.v:                                             ; preds = %bb.a
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost7movelib10unique_ptrINS_9container8flat_mapIiiSt4lessIiENS2_13static_vectorISt4pairIiiELm500EvEEEENS0_14default_deleteISA_EEED2Ev.exit323

bb.w:                                             ; preds = %bb.b
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.x:                                             ; preds = %bb.c
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost7movelib10unique_ptrINS_9container13flat_multimapIiiSt4lessIiENS2_13static_vectorISt4pairIiiELm500EvEEEENS0_14default_deleteISA_EEED2Ev.exit320

bb.y:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.z:                                             ; preds = %.noexc.i.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.aa:                                            ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.ab:                                            ; preds = %.noexc.i.i95
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.ac:                                            ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.ad:                                            ; preds = %bb.u
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !444 ; 4 uses
  %i.du = load i64, ptr %i.g, align 8, !tbaa !317
  %.not.i = icmp eq i64 %i.dt, %i.du
  br i1 %.not.i, label %bb.ae, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %.idx.i = shl nsw i64 %i.dt, 3
  %i.dv = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !315 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.dw, %i.d
  br i1 %.not4.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i, label %.lr.ph.i.i.i102

.lr.ph.i.i.i102:                                  ; preds = %bb.ae, %.lr.ph.i.i.i102
  %.06.i.i.i = phi i64 [ %i.dx, %.lr.ph.i.i.i102 ], [ 0, %bb.ae ]
  %.sroa.02.05.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i102 ], [ %i.dw, %bb.ae ]
  %i.dx = add nuw nsw i64 %.06.i.i.i, 1           ; 2 uses
  %i.dy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i) #27 ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %i.dy, %i.d
  br i1 %.not.i.i.i103, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i, label %.lr.ph.i.i.i102, !llvm.loop !3

_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i: ; preds = %.lr.ph.i.i.i102, %bb.ae
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.ae ], [ %i.dx, %.lr.ph.i.i.i102 ]
  %.not13.i = icmp eq i64 %.0.lcssa.i.i.i, %i.dt
  br i1 %.not13.i, label %.preheader.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

.preheader.i:                                     ; preds = %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i
  %.not2324.i = icmp eq i64 %i.dt, 0
  br i1 %.not2324.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.af
  %.sroa.019.026.i = phi ptr [ %i.eg, %bb.af ], [ %i.a, %.preheader.i ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.eh, %bb.af ], [ %i.dw, %.preheader.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 32
  %i.ea = load <2 x i32>, ptr %.sroa.019.026.i, align 4
  %i.eb = load <2 x i32>, ptr %i.dz, align 4
  %i.ec = icmp eq <2 x i32> %i.ea, %i.eb          ; 2 uses
  %i.ed = extractelement <2 x i1> %i.ec, i64 0
  %i.ee = extractelement <2 x i1> %i.ec, i64 1
  %i.ef = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %i.ef, label %bb.af, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

bb.af:                                            ; preds = %.lr.ph.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 8 ; 2 uses
  %i.eh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025.i) #27
  %.not23.i = icmp eq ptr %i.eg, %i.dv
  br i1 %.not23.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !120

_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.af, %.preheader.i
  %i.ei = load i64, ptr %i.i, align 8, !tbaa !444
  %.not.i104 = icmp eq i64 %i.ei, %i.dk
  br i1 %.not.i104, label %bb.ag, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

bb.ag:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %.idx.i106 = shl nsw i64 %i.dk, 3
  %i.ej = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i106
  %i.ek = load ptr, ptr %i.l, align 8, !tbaa !315 ; 3 uses
  %.not4.i.i.i107 = icmp eq ptr %i.ek, %i.k
  br i1 %.not4.i.i.i107, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i112, label %.lr.ph.i.i.i108

.lr.ph.i.i.i108:                                  ; preds = %bb.ag, %.lr.ph.i.i.i108
  %.06.i.i.i109 = phi i64 [ %i.el, %.lr.ph.i.i.i108 ], [ 0, %bb.ag ]
  %.sroa.02.05.i.i.i110 = phi ptr [ %i.em, %.lr.ph.i.i.i108 ], [ %i.ek, %bb.ag ]
  %i.el = add nuw nsw i64 %.06.i.i.i109, 1        ; 2 uses
  %i.em = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i110) #27 ; 2 uses
  %.not.i.i.i111 = icmp eq ptr %i.em, %i.k
  br i1 %.not.i.i.i111, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i112, label %.lr.ph.i.i.i108, !llvm.loop !3

_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i112: ; preds = %.lr.ph.i.i.i108, %bb.ag
  %.0.lcssa.i.i.i113 = phi i64 [ 0, %bb.ag ], [ %i.el, %.lr.ph.i.i.i108 ]
  %.not13.i114 = icmp eq i64 %.0.lcssa.i.i.i113, %i.dk
  br i1 %.not13.i114, label %.preheader.i115, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

.preheader.i115:                                  ; preds = %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i112
  %.not2324.i116 = icmp eq i64 %i.dk, 0
  br i1 %.not2324.i116, label %_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %.preheader.i115, %bb.ah
  %.sroa.019.026.i118 = phi ptr [ %i.eu, %bb.ah ], [ %i.h, %.preheader.i115 ] ; 2 uses
  %.sroa.015.025.i119 = phi ptr [ %i.ev, %bb.ah ], [ %i.ek, %.preheader.i115 ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i119, i64 32
  %i.eo = load <2 x i32>, ptr %.sroa.019.026.i118, align 4
  %i.ep = load <2 x i32>, ptr %i.en, align 4
  %i.eq = icmp eq <2 x i32> %i.eo, %i.ep          ; 2 uses
  %i.er = extractelement <2 x i1> %i.eq, i64 0
  %i.es = extractelement <2 x i1> %i.eq, i64 1
  %i.et = select i1 %i.er, i1 %i.es, i1 false
  br i1 %i.et, label %bb.ah, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

bb.ah:                                            ; preds = %.lr.ph.i117
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i118, i64 8 ; 2 uses
  %i.ev = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025.i119) #27
  %.not23.i120 = icmp eq ptr %i.eu, %i.ej
  br i1 %.not23.i120, label %_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i117, !llvm.loop !121

_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.ah, %.preheader.i115
  store i64 0, ptr %i.b, align 8, !tbaa !444
  store i64 0, ptr %i.i, align 8, !tbaa !444
  %i.ew = load ptr, ptr %i.x, align 16, !tbaa !327
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.ew)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #25
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit
  store ptr null, ptr %i.x, align 16, !tbaa !327
  store ptr %i.k, ptr %i.l, align 8, !tbaa !315
  store ptr %i.k, ptr %i.m, align 16, !tbaa !316
  store i64 0, ptr %i.n, align 8, !tbaa !317
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.av
  %indvars.iv488 = phi i64 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %indvars.iv.next489, %bb.av ] ; 14 uses
  %i.ez = load i64, ptr %i.b, align 8, !tbaa !444, !noalias !9116 ; 7 uses
  %.idx.i.i.i.i121 = shl nsw i64 %i.ez, 3
  %i.fa = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i.i.i.i121
  %.not12.i.i.i.i.i.i122 = icmp eq i64 %i.ez, 0
  br i1 %.not12.i.i.i.i.i.i122, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i128, label %.lr.ph.i.i.i.i.i.i123

.lr.ph.i.i.i.i.i.i123:                            ; preds = %bb.aj, %.lr.ph.i.i.i.i.i.i123
  %i.fb = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i.i123 ], [ %i.a, %bb.aj ] ; 2 uses
  %.013.i.i.i.i.i.i124 = phi i64 [ %.1.i.i.i.i.i.i126, %.lr.ph.i.i.i.i.i.i123 ], [ %i.ez, %bb.aj ] ; 2 uses
  %i.fc = lshr i64 %.013.i.i.i.i.i.i124, 1        ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !338, !noalias !9117
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp sgt i64 %indvars.iv488, %i.ff      ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.neg.i.i.i.i.i.i125 = xor i64 %i.fc, -1
  %i.fi = add i64 %.013.i.i.i.i.i.i124, %.neg.i.i.i.i.i.i125
  %i.fj = select i1 %i.fg, ptr %i.fh, ptr %i.fb   ; 2 uses
  %.1.i.i.i.i.i.i126 = select i1 %i.fg, i64 %i.fi, i64 %i.fc ; 2 uses
  %.not.i.i.i.i.i.i127 = icmp eq i64 %.1.i.i.i.i.i.i126, 0
  br i1 %.not.i.i.i.i.i.i127, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i128, label %.lr.ph.i.i.i.i.i.i123, !llvm.loop !118

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i128: ; preds = %.lr.ph.i.i.i.i.i.i123, %bb.aj
  %i.fk = phi ptr [ %i.a, %bb.aj ], [ %i.fj, %.lr.ph.i.i.i.i.i.i123 ] ; 8 uses
  %i.fl = icmp eq ptr %i.fk, %i.fa
  br i1 %i.fl, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i136, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i129

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i129: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i128
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !338, !noalias !9118
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv488, %i.fn
  br i1 %i.fo, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i136, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSD_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i136: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i.i.i128, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i129
  %.not.i.i.i3.i.i.i131 = icmp eq i64 %i.ez, 500
  br i1 %.not.i.i.i3.i.i.i131, label %.noexc.i.i135, label %bb.ak, !prof !344

bb.ak:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i136
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ez ; 5 uses
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %i.fp, %i.fk
  br i1 %.not.i.i.i.i.i.i.i132, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fq = trunc nuw nsw i64 %indvars.iv488 to i32 ; 2 uses
  store i32 %i.fq, ptr %i.fk, align 4, !tbaa !338, !noalias !9119
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !338, !noalias !9119
  %i.fs = add i64 %i.ez, 1
  store i64 %i.fs, ptr %i.b, align 8, !tbaa !444, !noalias !9119
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSD_.exit

bb.am:                                            ; preds = %bb.ak
  %i.ft = ptrtoint ptr %i.fk to i64
  %i.fu = ptrtoint ptr %i.fp to i64
  %i.fv = sub i64 %i.fu, %i.ft
  %i.fw = ashr exact i64 %i.fv, 3                 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fp, i64 -8 ; 2 uses
  %i.fy = load <2 x i32>, ptr %i.fx, align 4, !tbaa !338, !noalias !9119
  store <2 x i32> %i.fy, ptr %i.fp, align 4, !tbaa !338, !noalias !9119
  %i.fz = add nsw i64 %i.ez, 1
  store i64 %i.fz, ptr %i.b, align 8, !tbaa !444, !noalias !9119
  %i.ga = add nsw i64 %i.fw, -1                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i133 = icmp eq i64 %i.ga, 0
  br i1 %.not.i.i.i.i.i.i.i.i133, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i134, label %bb.an, !prof !344

bb.an:                                            ; preds = %bb.am
  %i.gb = sub nsw i64 1, %i.fw                    ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.gb
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.gb
  %i.ge = shl i64 %i.ga, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr nonnull align 8 %i.gd, i64 %i.ge, i1 false), !noalias !9119
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i134

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i134: ; preds = %bb.an, %bb.am
  %i.gf = trunc nuw nsw i64 %indvars.iv488 to i32 ; 2 uses
  store i32 %i.gf, ptr %i.fk, align 4, !tbaa !347, !noalias !9119
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !348, !noalias !9119
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSD_.exit

.noexc.i.i135:                                    ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i.i.i136
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc137 unwind label %bb.aw

.noexc137:                                        ; preds = %.noexc.i.i135
  unreachable

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSD_.exit: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i.i.i129, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i.i134, %bb.al
  %.02022.i.i.i138 = load ptr, ptr %i.w, align 16, !tbaa !337 ; 2 uses
  %.not23.i.i.i139 = icmp eq ptr %.02022.i.i.i138, null
  br i1 %.not23.i.i.i139, label %._crit_edge.thread.i.i.i156, label %.lr.ph.i.i.i140

.lr.ph.i.i.i140:                                  ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSD_.exit, %.lr.ph.i.i.i140
  %.02024.i.i.i141 = phi ptr [ %.020.i.i.i144, %.lr.ph.i.i.i140 ], [ %.02022.i.i.i138, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSD_.exit ] ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.02024.i.i.i141, i64 32
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !338
  %i.gj = sext i32 %i.gi to i64                   ; 2 uses
  %i.gk = icmp slt i64 %indvars.iv488, %i.gj      ; 2 uses
  %.in.v.i.i.i142 = select i1 %i.gk, i64 16, i64 24
  %.in.i.i.i143 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i141, i64 %.in.v.i.i.i142
  %.020.i.i.i144 = load ptr, ptr %.in.i.i.i143, align 8, !tbaa !337 ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %.020.i.i.i144, null
  br i1 %.not.i.i.i145, label %._crit_edge.i.i.i146, label %.lr.ph.i.i.i140, !llvm.loop !7

._crit_edge.i.i.i146:                             ; preds = %.lr.ph.i.i.i140
  br i1 %i.gk, label %._crit_edge.thread.i.i.i156, label %bb.ap

._crit_edge.thread.i.i.i156:                      ; preds = %._crit_edge.i.i.i146, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSD_.exit
  %.019.lcssa29.i.i.i157 = phi ptr [ %.02024.i.i.i141, %._crit_edge.i.i.i146 ], [ %i.d, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueES5_INS0_12vec_iteratorIPS6_Lb0EEEbEE4typeEOSD_.exit ] ; 4 uses
  %i.gl = load ptr, ptr %i.e, align 8, !tbaa !315
  %i.gm = icmp eq ptr %.019.lcssa29.i.i.i157, %i.gl
  br i1 %i.gm, label %select.unfold.i.i153, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.thread.i.i.i156
  %i.gn = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i157) #27
  %.phi.trans.insert.i.i158 = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %.pre.i.i159 = load i32, ptr %.phi.trans.insert.i.i158, align 4, !tbaa !338
  %.pre496 = sext i32 %.pre.i.i159 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge.i.i.i146
  %.pre-phi497 = phi i64 [ %.pre496, %bb.ao ], [ %i.gj, %._crit_edge.i.i.i146 ]
  %.019.lcssa28.i.i.i147 = phi ptr [ %.019.lcssa29.i.i.i157, %bb.ao ], [ %.02024.i.i.i141, %._crit_edge.i.i.i146 ]
  %i.go = icmp slt i64 %.pre-phi497, %indvars.iv488
  br i1 %i.go, label %select.unfold.i.i153, label %bb.ar

select.unfold.i.i153:                             ; preds = %bb.ap, %._crit_edge.thread.i.i.i156
  %.sroa.4.0.i.ph.i.i154 = phi ptr [ %.019.lcssa29.i.i.i157, %._crit_edge.thread.i.i.i156 ], [ %.019.lcssa28.i.i.i147, %bb.ap ] ; 3 uses
  %i.gp = icmp eq ptr %.sroa.4.0.i.ph.i.i154, %i.d
  br i1 %i.gp, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i155, label %bb.aq

bb.aq:                                            ; preds = %select.unfold.i.i153
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i154, i64 32
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !338
  %i.gs = sext i32 %i.gr to i64
  %i.gt = icmp slt i64 %indvars.iv488, %i.gs
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i155

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i155: ; preds = %bb.aq, %select.unfold.i.i153
  %i.gu = phi i1 [ %i.gt, %bb.aq ], [ true, %select.unfold.i.i153 ]
  %i.gv = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc161 unwind label %bb.ax ; 2 uses

.noexc161:                                        ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i155
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %.sroa.0361.0.insert.insert = mul nuw nsw i64 %indvars.iv488, 4294967297
  store i64 %.sroa.0361.0.insert.insert, ptr %i.gw, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gu, ptr noundef nonnull %i.gv, ptr noundef nonnull %.sroa.4.0.i.ph.i.i154, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #23
  %i.gx = load i64, ptr %i.g, align 8, !tbaa !317
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.g, align 8, !tbaa !317
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc161, %bb.ap
  %i.gz = load i64, ptr %i.i, align 8, !tbaa !444, !noalias !9120 ; 6 uses
  %.not12.i.i.i.i.i163 = icmp eq i64 %i.gz, 0
  br i1 %.not12.i.i.i.i.i163, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i171, label %.lr.ph.i.i.i.i.i164

.lr.ph.i.i.i.i.i164:                              ; preds = %bb.ar, %.lr.ph.i.i.i.i.i164
  %i.ha = phi ptr [ %i.hi, %.lr.ph.i.i.i.i.i164 ], [ %i.h, %bb.ar ] ; 2 uses
  %.013.i.i.i.i.i165 = phi i64 [ %.1.i.i.i.i.i167, %.lr.ph.i.i.i.i.i164 ], [ %i.gz, %bb.ar ] ; 2 uses
  %i.hb = lshr i64 %.013.i.i.i.i.i165, 1          ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hb ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !338, !noalias !9121
  %i.he = sext i32 %i.hd to i64
  %i.hf = icmp slt i64 %indvars.iv488, %i.he      ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.neg.i.i.i.i.i166 = xor i64 %i.hb, -1
  %i.hh = add i64 %.013.i.i.i.i.i165, %.neg.i.i.i.i.i166
  %i.hi = select i1 %i.hf, ptr %i.ha, ptr %i.hg   ; 2 uses
  %.1.i.i.i.i.i167 = select i1 %i.hf, i64 %i.hb, i64 %i.hh ; 2 uses
  %.not.i.i.i.i.i168 = icmp eq i64 %.1.i.i.i.i.i167, 0
  br i1 %.not.i.i.i.i.i168, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i169, label %.lr.ph.i.i.i.i.i164, !llvm.loop !119

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i169: ; preds = %.lr.ph.i.i.i.i.i164
  %.not.i.i3.i.i.i170 = icmp eq i64 %i.gz, 500
  br i1 %.not.i.i3.i.i.i170, label %.noexc.i.i175, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i171, !prof !446

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i171: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i169, %bb.ar
  %i.hj = phi ptr [ %i.hi, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i169 ], [ %i.h, %bb.ar ] ; 6 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.gz ; 5 uses
  %.not.i.i.i.i.i.i172 = icmp eq ptr %i.hk, %i.hj
  br i1 %.not.i.i.i.i.i.i172, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i171
  %i.hl = trunc nuw nsw i64 %indvars.iv488 to i32 ; 2 uses
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !338, !noalias !9122
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !338, !noalias !9122
  %i.hn = add i64 %i.gz, 1
  store i64 %i.hn, ptr %i.i, align 8, !tbaa !444, !noalias !9122
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSD_.exit

bb.at:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i.i171
  %i.ho = ptrtoint ptr %i.hj to i64
  %i.hp = ptrtoint ptr %i.hk to i64
  %i.hq = sub i64 %i.hp, %i.ho
  %i.hr = ashr exact i64 %i.hq, 3                 ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %i.hk, i64 -8 ; 2 uses
  %i.ht = load <2 x i32>, ptr %i.hs, align 4, !tbaa !338, !noalias !9122
  store <2 x i32> %i.ht, ptr %i.hk, align 4, !tbaa !338, !noalias !9122
  %i.hu = add nsw i64 %i.gz, 1
  store i64 %i.hu, ptr %i.i, align 8, !tbaa !444, !noalias !9122
  %i.hv = add nsw i64 %i.hr, -1                   ; 2 uses
  %.not.i.i.i.i.i.i.i173 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.i.i.i.i.i173, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i174, label %bb.au, !prof !344

bb.au:                                            ; preds = %bb.at
  %i.hw = sub nsw i64 1, %i.hr                    ; 2 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.hw
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.hw
  %i.hz = shl i64 %i.hv, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hx, ptr nonnull align 8 %i.hy, i64 %i.hz, i1 false), !noalias !9122
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i174

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i174: ; preds = %bb.au, %bb.at
  %i.ia = trunc nuw nsw i64 %indvars.iv488 to i32 ; 2 uses
  store i32 %i.ia, ptr %i.hj, align 4, !tbaa !347, !noalias !9122
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !348, !noalias !9122
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSD_.exit

.noexc.i.i175:                                    ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i.i169
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc176 unwind label %bb.ay

.noexc176:                                        ; preds = %.noexc.i.i175
  unreachable

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSD_.exit: ; preds = %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i.i174, %bb.as
  %.078.i.i.i177 = load ptr, ptr %i.x, align 16, !tbaa !337 ; 2 uses
  %.not9.i.i.i178 = icmp eq ptr %.078.i.i.i177, null
  br i1 %.not9.i.i.i178, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i187, label %.lr.ph.i.i.i179

.lr.ph.i.i.i179:                                  ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSD_.exit, %.lr.ph.i.i.i179
  %.0710.i.i.i180 = phi ptr [ %.07.i.i.i183, %.lr.ph.i.i.i179 ], [ %.078.i.i.i177, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSD_.exit ] ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.0710.i.i.i180, i64 32
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !338
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv488, %i.ie      ; 2 uses
  %.in.v.i.i.i181 = select i1 %i.if, i64 16, i64 24
  %.in.i.i.i182 = getelementptr inbounds nuw i8, ptr %.0710.i.i.i180, i64 %.in.v.i.i.i181
  %.07.i.i.i183 = load ptr, ptr %.in.i.i.i182, align 8, !tbaa !337 ; 2 uses
  %.not.i.i.i184 = icmp eq ptr %.07.i.i.i183, null
  br i1 %.not.i.i.i184, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i185, label %.lr.ph.i.i.i179, !llvm.loop !2

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i185: ; preds = %.lr.ph.i.i.i179
  %i.ig = icmp eq ptr %.0710.i.i.i180, %i.k
  %spec.select.i.i186 = or i1 %i.ig, %i.if
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i187

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i187: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i185, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSD_.exit
  %.0.lcssa.i10.i.i188 = phi ptr [ %i.k, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSD_.exit ], [ %.0710.i.i.i180, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i185 ]
  %i.ih = phi i1 [ true, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertIS5_IssEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_NS0_3dtl4pairIiiEEEE5valueENS0_12vec_iteratorIPS6_Lb0EEEE4typeEOSD_.exit ], [ %spec.select.i.i186, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i185 ]
  %i.ii = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %bb.av unwind label %bb.az     ; 2 uses

bb.av:                                            ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i187
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %.sroa.0354.0.insert.insert = mul nuw nsw i64 %indvars.iv488, 4294967297
  store i64 %.sroa.0354.0.insert.insert, ptr %i.ij, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ih, ptr noundef nonnull %i.ii, ptr noundef nonnull %.0.lcssa.i10.i.i188, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #23
  %i.ik = load i64, ptr %i.n, align 8, !tbaa !317
  %i.il = add i64 %i.ik, 1                        ; 5 uses
  store i64 %i.il, ptr %i.n, align 8, !tbaa !317
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond491.not = icmp eq i64 %indvars.iv.next489, 50
  br i1 %exitcond491.not, label %bb.ba, label %bb.aj, !llvm.loop !9067

bb.aw:                                            ; preds = %.noexc.i.i135
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.ax:                                            ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i155
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.ay:                                            ; preds = %.noexc.i.i175
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.az:                                            ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i187
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.ba:                                            ; preds = %bb.av
  %i.iq = load i64, ptr %i.b, align 8, !tbaa !444 ; 4 uses
  %i.ir = load i64, ptr %i.g, align 8, !tbaa !317
  %.not.i191 = icmp eq i64 %i.iq, %i.ir
  br i1 %.not.i191, label %bb.bb, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %.idx.i193 = shl nsw i64 %i.iq, 3
  %i.is = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i193
  %i.it = load ptr, ptr %i.e, align 8, !tbaa !315 ; 3 uses
  %.not4.i.i.i194 = icmp eq ptr %i.it, %i.d
  br i1 %.not4.i.i.i194, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i199, label %.lr.ph.i.i.i195

.lr.ph.i.i.i195:                                  ; preds = %bb.bb, %.lr.ph.i.i.i195
  %.06.i.i.i196 = phi i64 [ %i.iu, %.lr.ph.i.i.i195 ], [ 0, %bb.bb ]
  %.sroa.02.05.i.i.i197 = phi ptr [ %i.iv, %.lr.ph.i.i.i195 ], [ %i.it, %bb.bb ]
  %i.iu = add nuw nsw i64 %.06.i.i.i196, 1        ; 2 uses
  %i.iv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i197) #27 ; 2 uses
  %.not.i.i.i198 = icmp eq ptr %i.iv, %i.d
  br i1 %.not.i.i.i198, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i199, label %.lr.ph.i.i.i195, !llvm.loop !3

_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i199: ; preds = %.lr.ph.i.i.i195, %bb.bb
  %.0.lcssa.i.i.i200 = phi i64 [ 0, %bb.bb ], [ %i.iu, %.lr.ph.i.i.i195 ]
  %.not13.i201 = icmp eq i64 %.0.lcssa.i.i.i200, %i.iq
  br i1 %.not13.i201, label %.preheader.i202, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

.preheader.i202:                                  ; preds = %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i199
  %.not2324.i203 = icmp eq i64 %i.iq, 0
  br i1 %.not2324.i203, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit208, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %.preheader.i202, %bb.bc
  %.sroa.019.026.i205 = phi ptr [ %i.jd, %bb.bc ], [ %i.a, %.preheader.i202 ] ; 2 uses
  %.sroa.015.025.i206 = phi ptr [ %i.je, %bb.bc ], [ %i.it, %.preheader.i202 ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i206, i64 32
  %i.ix = load <2 x i32>, ptr %.sroa.019.026.i205, align 4
  %i.iy = load <2 x i32>, ptr %i.iw, align 4
  %i.iz = icmp eq <2 x i32> %i.ix, %i.iy          ; 2 uses
  %i.ja = extractelement <2 x i1> %i.iz, i64 0
  %i.jb = extractelement <2 x i1> %i.iz, i64 1
  %i.jc = select i1 %i.ja, i1 %i.jb, i1 false
  br i1 %i.jc, label %bb.bc, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

bb.bc:                                            ; preds = %.lr.ph.i204
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i205, i64 8 ; 2 uses
  %i.je = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025.i206) #27
  %.not23.i207 = icmp eq ptr %i.jd, %i.is
  br i1 %.not23.i207, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit208, label %.lr.ph.i204, !llvm.loop !120

_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit208: ; preds = %bb.bc, %.preheader.i202
  %i.jf = load i64, ptr %i.i, align 8, !tbaa !444
  %.not.i209 = icmp eq i64 %i.jf, %i.il
  br i1 %.not.i209, label %bb.bd, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

bb.bd:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit208
  %.idx.i211 = shl nsw i64 %i.il, 3
  %i.jg = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i211
  %i.jh = load ptr, ptr %i.l, align 8, !tbaa !315 ; 3 uses
  %.not4.i.i.i212 = icmp eq ptr %i.jh, %i.k
  br i1 %.not4.i.i.i212, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i217, label %.lr.ph.i.i.i213

.lr.ph.i.i.i213:                                  ; preds = %bb.bd, %.lr.ph.i.i.i213
  %.06.i.i.i214 = phi i64 [ %i.ji, %.lr.ph.i.i.i213 ], [ 0, %bb.bd ]
  %.sroa.02.05.i.i.i215 = phi ptr [ %i.jj, %.lr.ph.i.i.i213 ], [ %i.jh, %bb.bd ]
  %i.ji = add nuw nsw i64 %.06.i.i.i214, 1        ; 2 uses
  %i.jj = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i215) #27 ; 2 uses
  %.not.i.i.i216 = icmp eq ptr %i.jj, %i.k
  br i1 %.not.i.i.i216, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i217, label %.lr.ph.i.i.i213, !llvm.loop !3

_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i217: ; preds = %.lr.ph.i.i.i213, %bb.bd
  %.0.lcssa.i.i.i218 = phi i64 [ 0, %bb.bd ], [ %i.ji, %.lr.ph.i.i.i213 ]
  %.not13.i219 = icmp eq i64 %.0.lcssa.i.i.i218, %i.il
  br i1 %.not13.i219, label %.preheader.i220, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

.preheader.i220:                                  ; preds = %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i217
  %.not2324.i221 = icmp eq i64 %i.il, 0
  br i1 %.not2324.i221, label %_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit226, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %.preheader.i220, %bb.be
  %.sroa.019.026.i223 = phi ptr [ %i.jr, %bb.be ], [ %i.h, %.preheader.i220 ] ; 2 uses
  %.sroa.015.025.i224 = phi ptr [ %i.js, %bb.be ], [ %i.jh, %.preheader.i220 ] ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i224, i64 32
  %i.jl = load <2 x i32>, ptr %.sroa.019.026.i223, align 4
  %i.jm = load <2 x i32>, ptr %i.jk, align 4
  %i.jn = icmp eq <2 x i32> %i.jl, %i.jm          ; 2 uses
  %i.jo = extractelement <2 x i1> %i.jn, i64 0
  %i.jp = extractelement <2 x i1> %i.jn, i64 1
  %i.jq = select i1 %i.jo, i1 %i.jp, i1 false
  br i1 %i.jq, label %bb.be, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

bb.be:                                            ; preds = %.lr.ph.i222
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i223, i64 8 ; 2 uses
  %i.js = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025.i224) #27
  %.not23.i225 = icmp eq ptr %i.jr, %i.jg
  br i1 %.not23.i225, label %_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit226, label %.lr.ph.i222, !llvm.loop !121

_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit226: ; preds = %bb.be, %.preheader.i220
  store i64 0, ptr %i.b, align 8, !tbaa !444
  store i64 0, ptr %i.i, align 8, !tbaa !444
  %i.jt = load ptr, ptr %i.x, align 16, !tbaa !327
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.jt)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit227 unwind label %bb.bf

bb.bf:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit226
  %i.ju = landingpad { ptr, i32 }
          catch ptr null
  %i.jv = extractvalue { ptr, i32 } %i.ju, 0
  call void @__clang_call_terminate(ptr %i.jv) #25
  unreachable

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit227: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit226
  store ptr null, ptr %i.x, align 16, !tbaa !327
  store ptr %i.k, ptr %i.l, align 8, !tbaa !315
  store ptr %i.k, ptr %i.m, align 16, !tbaa !316
  store i64 0, ptr %i.n, align 8, !tbaa !317
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit227, %bb.bu
  %indvars.iv492 = phi i64 [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit227 ], [ %indvars.iv.next493, %bb.bu ] ; 14 uses
  %i.jw = load i64, ptr %i.b, align 8, !tbaa !444, !noalias !9123 ; 7 uses
  %.idx.i.i = shl nsw i64 %i.jw, 3
  %i.jx = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i.i
  %.not12.i.i.i.i324 = icmp eq i64 %i.jw, 0
  br i1 %.not12.i.i.i.i324, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i, label %.lr.ph.i.i.i.i325

.lr.ph.i.i.i.i325:                                ; preds = %bb.bg, %.lr.ph.i.i.i.i325
  %i.jy = phi ptr [ %i.kg, %.lr.ph.i.i.i.i325 ], [ %i.a, %bb.bg ] ; 2 uses
  %.013.i.i.i.i326 = phi i64 [ %.1.i.i.i.i328, %.lr.ph.i.i.i.i325 ], [ %i.jw, %bb.bg ] ; 2 uses
  %i.jz = lshr i64 %.013.i.i.i.i326, 1            ; 3 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !338, !noalias !9124
  %i.kc = sext i32 %i.kb to i64
  %i.kd = icmp sgt i64 %indvars.iv492, %i.kc      ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %.neg.i.i.i.i327 = xor i64 %i.jz, -1
  %i.kf = add i64 %.013.i.i.i.i326, %.neg.i.i.i.i327
  %i.kg = select i1 %i.kd, ptr %i.ke, ptr %i.jy   ; 2 uses
  %.1.i.i.i.i328 = select i1 %i.kd, i64 %i.kf, i64 %i.jz ; 2 uses
  %.not.i.i.i.i329 = icmp eq i64 %.1.i.i.i.i328, 0
  br i1 %.not.i.i.i.i329, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i, label %.lr.ph.i.i.i.i325, !llvm.loop !118

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i325, %bb.bg
  %i.kh = phi ptr [ %i.a, %bb.bg ], [ %i.kg, %.lr.ph.i.i.i.i325 ] ; 8 uses
  %i.ki = icmp eq ptr %i.kh, %i.jx
  br i1 %i.ki, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i
  %i.kj = load i32, ptr %i.kh, align 4, !tbaa !338, !noalias !9125
  %i.kk = sext i32 %i.kj to i64
  %i.kl = icmp slt i64 %indvars.iv492, %i.kk
  br i1 %i.kl, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertEOS6_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i
  %.not.i.i.i3.i = icmp eq i64 %i.jw, 500
  br i1 %.not.i.i.i3.i, label %bb.bl, label %bb.bh, !prof !344

bb.bh:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jw ; 5 uses
  %.not.i.i.i.i.i330 = icmp eq ptr %i.km, %i.kh
  br i1 %.not.i.i.i.i.i330, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.kn = trunc nuw nsw i64 %indvars.iv492 to i32 ; 2 uses
  store i32 %i.kn, ptr %i.kh, align 4, !tbaa !338, !noalias !9126
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !338, !noalias !9126
  %i.kp = add i64 %i.jw, 1
  store i64 %i.kp, ptr %i.b, align 8, !tbaa !444, !noalias !9126
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertEOS6_.exit

bb.bj:                                            ; preds = %bb.bh
  %i.kq = ptrtoint ptr %i.kh to i64
  %i.kr = ptrtoint ptr %i.km to i64
  %i.ks = sub i64 %i.kr, %i.kq
  %i.kt = ashr exact i64 %i.ks, 3                 ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %i.km, i64 -8 ; 2 uses
  %i.kv = load <2 x i32>, ptr %i.ku, align 4, !tbaa !338, !noalias !9126
  store <2 x i32> %i.kv, ptr %i.km, align 4, !tbaa !338, !noalias !9126
  %i.kw = add nsw i64 %i.jw, 1
  store i64 %i.kw, ptr %i.b, align 8, !tbaa !444, !noalias !9126
  %i.kx = add nsw i64 %i.kt, -1                   ; 2 uses
  %.not.i.i.i.i.i.i331 = icmp eq i64 %i.kx, 0
  br i1 %.not.i.i.i.i.i.i331, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i332, label %bb.bk, !prof !344

bb.bk:                                            ; preds = %bb.bj
  %i.ky = sub nsw i64 1, %i.kt                    ; 2 uses
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.ky
  %i.la = getelementptr inbounds [8 x i8], ptr %i.ku, i64 %i.ky
  %i.lb = shl i64 %i.kx, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kz, ptr nonnull align 8 %i.la, i64 %i.lb, i1 false), !noalias !9126
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i332

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i332: ; preds = %bb.bk, %bb.bj
  %i.lc = trunc nuw nsw i64 %indvars.iv492 to i32 ; 2 uses
  store i32 %i.lc, ptr %i.kh, align 4, !tbaa !347, !noalias !9126
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  store i32 %i.lc, ptr %i.ld, align 4, !tbaa !348, !noalias !9126
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertEOS6_.exit

bb.bl:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc333 unwind label %bb.bv

.noexc333:                                        ; preds = %bb.bl
  unreachable

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertEOS6_.exit: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i, %bb.bi, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i332
  %.02022.i.i.i229 = load ptr, ptr %i.w, align 16, !tbaa !337 ; 2 uses
  %.not23.i.i.i230 = icmp eq ptr %.02022.i.i.i229, null
  br i1 %.not23.i.i.i230, label %._crit_edge.thread.i.i.i247, label %.lr.ph.i.i.i231

.lr.ph.i.i.i231:                                  ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertEOS6_.exit, %.lr.ph.i.i.i231
  %.02024.i.i.i232 = phi ptr [ %.020.i.i.i235, %.lr.ph.i.i.i231 ], [ %.02022.i.i.i229, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertEOS6_.exit ] ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.02024.i.i.i232, i64 32
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !338
  %i.lg = sext i32 %i.lf to i64                   ; 2 uses
  %i.lh = icmp slt i64 %indvars.iv492, %i.lg      ; 2 uses
  %.in.v.i.i.i233 = select i1 %i.lh, i64 16, i64 24
  %.in.i.i.i234 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i232, i64 %.in.v.i.i.i233
  %.020.i.i.i235 = load ptr, ptr %.in.i.i.i234, align 8, !tbaa !337 ; 2 uses
  %.not.i.i.i236 = icmp eq ptr %.020.i.i.i235, null
  br i1 %.not.i.i.i236, label %._crit_edge.i.i.i237, label %.lr.ph.i.i.i231, !llvm.loop !7

._crit_edge.i.i.i237:                             ; preds = %.lr.ph.i.i.i231
  br i1 %i.lh, label %._crit_edge.thread.i.i.i247, label %bb.bn

._crit_edge.thread.i.i.i247:                      ; preds = %._crit_edge.i.i.i237, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertEOS6_.exit
  %.019.lcssa29.i.i.i248 = phi ptr [ %.02024.i.i.i232, %._crit_edge.i.i.i237 ], [ %i.d, %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertEOS6_.exit ] ; 4 uses
  %i.li = load ptr, ptr %i.e, align 8, !tbaa !315
  %i.lj = icmp eq ptr %.019.lcssa29.i.i.i248, %i.li
  br i1 %i.lj, label %select.unfold.i.i244, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge.thread.i.i.i247
  %i.lk = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i248) #27
  %.phi.trans.insert.i.i249 = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  %.pre.i.i250 = load i32, ptr %.phi.trans.insert.i.i249, align 4, !tbaa !338
  %.pre = sext i32 %.pre.i.i250 to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %._crit_edge.i.i.i237
  %.pre-phi = phi i64 [ %.pre, %bb.bm ], [ %i.lg, %._crit_edge.i.i.i237 ]
  %.019.lcssa28.i.i.i238 = phi ptr [ %.019.lcssa29.i.i.i248, %bb.bm ], [ %.02024.i.i.i232, %._crit_edge.i.i.i237 ]
  %i.ll = icmp slt i64 %.pre-phi, %indvars.iv492
  br i1 %i.ll, label %select.unfold.i.i244, label %bb.bp

select.unfold.i.i244:                             ; preds = %bb.bn, %._crit_edge.thread.i.i.i247
  %.sroa.4.0.i.ph.i.i245 = phi ptr [ %.019.lcssa29.i.i.i248, %._crit_edge.thread.i.i.i247 ], [ %.019.lcssa28.i.i.i238, %bb.bn ] ; 3 uses
  %i.lm = icmp eq ptr %.sroa.4.0.i.ph.i.i245, %i.d
  br i1 %i.lm, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i246, label %bb.bo

bb.bo:                                            ; preds = %select.unfold.i.i244
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i245, i64 32
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !338
  %i.lp = sext i32 %i.lo to i64
  %i.lq = icmp slt i64 %indvars.iv492, %i.lp
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i246

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i246: ; preds = %bb.bo, %select.unfold.i.i244
  %i.lr = phi i1 [ %i.lq, %bb.bo ], [ true, %select.unfold.i.i244 ]
  %i.ls = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc252 unwind label %bb.bw ; 2 uses

.noexc252:                                        ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i246
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  %.sroa.0341.0.insert.insert = mul nuw nsw i64 %indvars.iv492, 4294967297
  store i64 %.sroa.0341.0.insert.insert, ptr %i.lt, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.lr, ptr noundef nonnull %i.ls, ptr noundef nonnull %.sroa.4.0.i.ph.i.i245, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #23
  %i.lu = load i64, ptr %i.g, align 8, !tbaa !317
  %i.lv = add i64 %i.lu, 1
  store i64 %i.lv, ptr %i.g, align 8, !tbaa !317
  br label %bb.bp

bb.bp:                                            ; preds = %.noexc252, %bb.bn
  %i.lw = load i64, ptr %i.i, align 8, !tbaa !444, !noalias !9127 ; 6 uses
  %.not12.i.i.i.i = icmp eq i64 %i.lw, 0
  br i1 %.not12.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bp, %.lr.ph.i.i.i.i
  %i.lx = phi ptr [ %i.mf, %.lr.ph.i.i.i.i ], [ %i.h, %bb.bp ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.lw, %bb.bp ] ; 2 uses
  %i.ly = lshr i64 %.013.i.i.i.i, 1               ; 3 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.ly ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !338, !noalias !9128
  %i.mb = sext i32 %i.ma to i64
  %i.mc = icmp slt i64 %indvars.iv492, %i.mb      ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %.neg.i.i.i.i = xor i64 %i.ly, -1
  %i.me = add i64 %.013.i.i.i.i, %.neg.i.i.i.i
  %i.mf = select i1 %i.mc, ptr %i.lx, ptr %i.md   ; 2 uses
  %.1.i.i.i.i = select i1 %i.mc, i64 %i.ly, i64 %i.me ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !119

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not.i.i3.i.i = icmp eq i64 %i.lw, 500
  br i1 %.not.i.i3.i.i, label %bb.bt, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i, !prof !446

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i, %bb.bp
  %i.mg = phi ptr [ %i.mf, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i ], [ %i.h, %bb.bp ] ; 6 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.lw ; 5 uses
  %.not.i.i.i.i.i254 = icmp eq ptr %i.mh, %i.mg
  br i1 %.not.i.i.i.i.i254, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i
  %i.mi = trunc nuw nsw i64 %indvars.iv492 to i32 ; 2 uses
  store i32 %i.mi, ptr %i.mg, align 4, !tbaa !338, !noalias !9129
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !338, !noalias !9129
  %i.mk = add i64 %i.lw, 1
  store i64 %i.mk, ptr %i.i, align 8, !tbaa !444, !noalias !9129
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertERKS6_.exit

bb.br:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.thread.i.i
  %i.ml = ptrtoint ptr %i.mg to i64
  %i.mm = ptrtoint ptr %i.mh to i64
  %i.mn = sub i64 %i.mm, %i.ml
  %i.mo = ashr exact i64 %i.mn, 3                 ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %i.mh, i64 -8 ; 2 uses
  %i.mq = load <2 x i32>, ptr %i.mp, align 4, !tbaa !338, !noalias !9129
  store <2 x i32> %i.mq, ptr %i.mh, align 4, !tbaa !338, !noalias !9129
  %i.mr = add nsw i64 %i.lw, 1
  store i64 %i.mr, ptr %i.i, align 8, !tbaa !444, !noalias !9129
  %i.ms = add nsw i64 %i.mo, -1                   ; 2 uses
  %.not.i.i.i.i.i.i255 = icmp eq i64 %i.ms, 0
  br i1 %.not.i.i.i.i.i.i255, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, label %bb.bs, !prof !344

bb.bs:                                            ; preds = %bb.br
  %i.mt = sub nsw i64 1, %i.mo                    ; 2 uses
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.mt
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.mp, i64 %i.mt
  %i.mw = shl i64 %i.ms, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mu, ptr nonnull align 8 %i.mv, i64 %i.mw, i1 false), !noalias !9129
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i: ; preds = %bb.bs, %bb.br
  %i.mx = trunc nuw nsw i64 %indvars.iv492 to i32 ; 2 uses
  store i32 %i.mx, ptr %i.mg, align 4, !tbaa !347, !noalias !9129
  %i.my = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !348, !noalias !9129
  br label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertERKS6_.exit

bb.bt:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE11upper_boundERKi.exit.i.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc256 unwind label %bb.bx

.noexc256:                                        ; preds = %bb.bt
  unreachable

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertERKS6_.exit: ; preds = %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i.i, %bb.bq
  %.078.i.i.i257 = load ptr, ptr %i.x, align 16, !tbaa !337 ; 2 uses
  %.not9.i.i.i258 = icmp eq ptr %.078.i.i.i257, null
  br i1 %.not9.i.i.i258, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i267, label %.lr.ph.i.i.i259

.lr.ph.i.i.i259:                                  ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertERKS6_.exit, %.lr.ph.i.i.i259
  %.0710.i.i.i260 = phi ptr [ %.07.i.i.i263, %.lr.ph.i.i.i259 ], [ %.078.i.i.i257, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertERKS6_.exit ] ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.0710.i.i.i260, i64 32
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !338
  %i.nb = sext i32 %i.na to i64
  %i.nc = icmp slt i64 %indvars.iv492, %i.nb      ; 2 uses
  %.in.v.i.i.i261 = select i1 %i.nc, i64 16, i64 24
  %.in.i.i.i262 = getelementptr inbounds nuw i8, ptr %.0710.i.i.i260, i64 %.in.v.i.i.i261
  %.07.i.i.i263 = load ptr, ptr %.in.i.i.i262, align 8, !tbaa !337 ; 2 uses
  %.not.i.i.i264 = icmp eq ptr %.07.i.i.i263, null
  br i1 %.not.i.i.i264, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i265, label %.lr.ph.i.i.i259, !llvm.loop !2

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i265: ; preds = %.lr.ph.i.i.i259
  %i.nd = icmp eq ptr %.0710.i.i.i260, %i.k
  %spec.select.i.i266 = or i1 %i.nd, %i.nc
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i267

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i267: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i265, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertERKS6_.exit
  %.0.lcssa.i10.i.i268 = phi ptr [ %i.k, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertERKS6_.exit ], [ %.0710.i.i.i260, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i265 ]
  %i.ne = phi i1 [ true, %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE6insertERKS6_.exit ], [ %spec.select.i.i266, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i265 ]
  %i.nf = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %bb.bu unwind label %bb.by     ; 2 uses

bb.bu:                                            ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i267
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  %.sroa.0.0.insert.insert = mul nuw nsw i64 %indvars.iv492, 4294967297
  store i64 %.sroa.0.0.insert.insert, ptr %i.ng, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ne, ptr noundef nonnull %i.nf, ptr noundef nonnull %.0.lcssa.i10.i.i268, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #23
  %i.nh = load i64, ptr %i.n, align 8, !tbaa !317
  %i.ni = add i64 %i.nh, 1                        ; 5 uses
  store i64 %i.ni, ptr %i.n, align 8, !tbaa !317
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 2 uses
  %exitcond495.not = icmp eq i64 %indvars.iv.next493, 50
  br i1 %exitcond495.not, label %bb.bz, label %bb.bg, !llvm.loop !9100

bb.bv:                                            ; preds = %bb.bl
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.bw:                                            ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i246
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.bx:                                            ; preds = %bb.bt
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.by:                                            ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE15_M_insert_equalIS2_EESt17_Rb_tree_iteratorIS2_EOT_.exit.i267
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.bz:                                            ; preds = %bb.bu
  %i.nn = load i64, ptr %i.b, align 8, !tbaa !444 ; 6 uses
  %i.no = load i64, ptr %i.g, align 8, !tbaa !317
  %.not.i271 = icmp eq i64 %i.nn, %i.no
  br i1 %.not.i271, label %bb.ca, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

bb.ca:                                            ; preds = %bb.bz
  %.idx.i273 = shl nsw i64 %i.nn, 3               ; 2 uses
  %i.np = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i273
  %i.nq = load ptr, ptr %i.e, align 8, !tbaa !315 ; 3 uses
  %.not4.i.i.i274 = icmp eq ptr %i.nq, %i.d
  br i1 %.not4.i.i.i274, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i279, label %.lr.ph.i.i.i275

.lr.ph.i.i.i275:                                  ; preds = %bb.ca, %.lr.ph.i.i.i275
  %.06.i.i.i276 = phi i64 [ %i.nr, %.lr.ph.i.i.i275 ], [ 0, %bb.ca ]
  %.sroa.02.05.i.i.i277 = phi ptr [ %i.ns, %.lr.ph.i.i.i275 ], [ %i.nq, %bb.ca ]
  %i.nr = add nuw nsw i64 %.06.i.i.i276, 1        ; 2 uses
  %i.ns = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i277) #27 ; 2 uses
  %.not.i.i.i278 = icmp eq ptr %i.ns, %i.d
  br i1 %.not.i.i.i278, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i279, label %.lr.ph.i.i.i275, !llvm.loop !3

_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i279: ; preds = %.lr.ph.i.i.i275, %bb.ca
  %.0.lcssa.i.i.i280 = phi i64 [ 0, %bb.ca ], [ %i.nr, %.lr.ph.i.i.i275 ]
  %.not13.i281 = icmp eq i64 %.0.lcssa.i.i.i280, %i.nn
  br i1 %.not13.i281, label %.preheader.i282, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

.preheader.i282:                                  ; preds = %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i279
  %.not2324.i283 = icmp eq i64 %i.nn, 0           ; 2 uses
  br i1 %.not2324.i283, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit288, label %.lr.ph.i284

.lr.ph.i284:                                      ; preds = %.preheader.i282, %bb.cb
  %.sroa.019.026.i285 = phi ptr [ %i.oa, %bb.cb ], [ %i.a, %.preheader.i282 ] ; 2 uses
  %.sroa.015.025.i286 = phi ptr [ %i.ob, %bb.cb ], [ %i.nq, %.preheader.i282 ] ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i286, i64 32
  %i.nu = load <2 x i32>, ptr %.sroa.019.026.i285, align 4
  %i.nv = load <2 x i32>, ptr %i.nt, align 4
  %i.nw = icmp eq <2 x i32> %i.nu, %i.nv          ; 2 uses
  %i.nx = extractelement <2 x i1> %i.nw, i64 0
  %i.ny = extractelement <2 x i1> %i.nw, i64 1
  %i.nz = select i1 %i.nx, i1 %i.ny, i1 false
  br i1 %i.nz, label %bb.cb, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

bb.cb:                                            ; preds = %.lr.ph.i284
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i285, i64 8 ; 2 uses
  %i.ob = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025.i286) #27
  %.not23.i287 = icmp eq ptr %i.oa, %i.np
  br i1 %.not23.i287, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit288, label %.lr.ph.i284, !llvm.loop !120

_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit288: ; preds = %bb.cb, %.preheader.i282
  %i.oc = load i64, ptr %i.i, align 8, !tbaa !444
  %.not.i289 = icmp eq i64 %i.oc, %i.ni
  br i1 %.not.i289, label %bb.cc, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

bb.cc:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit288
  %.idx.i291 = shl nsw i64 %i.ni, 3
  %i.od = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i291
  %i.oe = load ptr, ptr %i.l, align 8, !tbaa !315 ; 3 uses
  %.not4.i.i.i292 = icmp eq ptr %i.oe, %i.k
  br i1 %.not4.i.i.i292, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i297, label %.lr.ph.i.i.i293

.lr.ph.i.i.i293:                                  ; preds = %bb.cc, %.lr.ph.i.i.i293
  %.06.i.i.i294 = phi i64 [ %i.of, %.lr.ph.i.i.i293 ], [ 0, %bb.cc ]
  %.sroa.02.05.i.i.i295 = phi ptr [ %i.og, %.lr.ph.i.i.i293 ], [ %i.oe, %bb.cc ]
  %i.of = add nuw nsw i64 %.06.i.i.i294, 1        ; 2 uses
  %i.og = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i295) #27 ; 2 uses
  %.not.i.i.i296 = icmp eq ptr %i.og, %i.k
  br i1 %.not.i.i.i296, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i297, label %.lr.ph.i.i.i293, !llvm.loop !3

_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i297: ; preds = %.lr.ph.i.i.i293, %bb.cc
  %.0.lcssa.i.i.i298 = phi i64 [ 0, %bb.cc ], [ %i.of, %.lr.ph.i.i.i293 ]
  %.not13.i299 = icmp eq i64 %.0.lcssa.i.i.i298, %i.ni
  br i1 %.not13.i299, label %.preheader.i300, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

.preheader.i300:                                  ; preds = %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i297
  %.not2324.i301 = icmp eq i64 %i.ni, 0
  br i1 %.not2324.i301, label %_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit306, label %.lr.ph.i302

.lr.ph.i302:                                      ; preds = %.preheader.i300, %bb.cd
  %.sroa.019.026.i303 = phi ptr [ %i.oo, %bb.cd ], [ %i.h, %.preheader.i300 ] ; 2 uses
  %.sroa.015.025.i304 = phi ptr [ %i.op, %bb.cd ], [ %i.oe, %.preheader.i300 ] ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i304, i64 32
  %i.oi = load <2 x i32>, ptr %.sroa.019.026.i303, align 4
  %i.oj = load <2 x i32>, ptr %i.oh, align 4
  %i.ok = icmp eq <2 x i32> %i.oi, %i.oj          ; 2 uses
  %i.ol = extractelement <2 x i1> %i.ok, i64 0
  %i.om = extractelement <2 x i1> %i.ok, i64 1
  %i.on = select i1 %i.ol, i1 %i.om, i1 false
  br i1 %i.on, label %bb.cd, label %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit.thread

bb.cd:                                            ; preds = %.lr.ph.i302
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i303, i64 8 ; 2 uses
  %i.op = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025.i304) #27
  %.not23.i305 = icmp eq ptr %i.oo, %i.od
  br i1 %.not23.i305, label %_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit306, label %.lr.ph.i302, !llvm.loop !121

_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit306: ; preds = %bb.cd, %.preheader.i300
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.oq = getelementptr inbounds nuw i8, ptr %10, i64 4000
  store i64 %i.nn, ptr %i.oq, align 8, !tbaa !442
  %i.or = icmp ugt i64 %i.nn, 500
  br i1 %i.or, label %bb.ce, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.i.i.i

bb.ce:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit306
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc308 unwind label %bb.cl

.noexc308:                                        ; preds = %bb.ce
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.i.i.i: ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit306
  br i1 %.not2324.i283, label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEC2ERKS8_.exit, label %bb.cf, !prof !344

bb.cf:                                            ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5boost9container4test30map_test_insert_or_assign_implINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEENS1_12const_ref_opEEEiv:.preheader214.preheader
  store ptr %i.f, ptr %i.h, align 8, !tbaa !315
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.f, ptr %i.i, align 8, !tbaa !316
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i64 0, ptr %i.j, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %6, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.k, align 4, !tbaa !338
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.l, align 4, !tbaa !338
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.m, align 4, !tbaa !338
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.n, align 4, !tbaa !338
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.o, align 4, !tbaa !338
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.p, align 4, !tbaa !338
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.q, align 4, !tbaa !338
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.r, align 4, !tbaa !338
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.s, align 4, !tbaa !338
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.t, align 4, !tbaa !338
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.u, align 4, !tbaa !338
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.v, align 4, !tbaa !338
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.w, align 4, !tbaa !338
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.x, align 4, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.y, align 4, !tbaa !338
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.z, align 4, !tbaa !338
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.aa, align 4, !tbaa !338
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.ab, align 4, !tbaa !338
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.ac, align 4, !tbaa !338
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.ad, align 4, !tbaa !338
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.ae, align 4, !tbaa !338
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.af, align 4, !tbaa !338
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.ag, align 4, !tbaa !338
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.ah, align 4, !tbaa !338
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 388
  store i32 2, ptr %i.ai, align 4, !tbaa !363
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 392
  store i32 49, ptr %i.aj, align 8, !tbaa !362
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 396
  store i32 1, ptr %i.ak, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %7, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 1, i32 1, i32 2, i32 2>, ptr %i.al, align 8, !tbaa !338
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <4 x i32> <i32 3, i32 3, i32 4, i32 4>, ptr %i.am, align 8, !tbaa !338
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 40
  store <4 x i32> <i32 5, i32 5, i32 6, i32 6>, ptr %i.an, align 8, !tbaa !338
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <4 x i32> <i32 7, i32 7, i32 8, i32 8>, ptr %i.ao, align 8, !tbaa !338
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 72
  store <4 x i32> <i32 9, i32 9, i32 10, i32 10>, ptr %i.ap, align 8, !tbaa !338
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 88
  store <4 x i32> <i32 11, i32 11, i32 12, i32 12>, ptr %i.aq, align 8, !tbaa !338
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 104
  store <4 x i32> <i32 13, i32 13, i32 14, i32 14>, ptr %i.ar, align 8, !tbaa !338
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 120
  store <4 x i32> <i32 15, i32 15, i32 16, i32 16>, ptr %i.as, align 8, !tbaa !338
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 136
  store <4 x i32> <i32 17, i32 17, i32 18, i32 18>, ptr %i.at, align 8, !tbaa !338
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 152
  store <4 x i32> <i32 19, i32 19, i32 20, i32 20>, ptr %i.au, align 8, !tbaa !338
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 168
  store <4 x i32> <i32 21, i32 21, i32 22, i32 22>, ptr %i.av, align 8, !tbaa !338
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 184
  store <4 x i32> <i32 23, i32 23, i32 24, i32 24>, ptr %i.aw, align 8, !tbaa !338
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 200
  store <4 x i32> <i32 25, i32 25, i32 26, i32 26>, ptr %i.ax, align 8, !tbaa !338
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 216
  store <4 x i32> <i32 27, i32 27, i32 28, i32 28>, ptr %i.ay, align 8, !tbaa !338
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 232
  store <4 x i32> <i32 29, i32 29, i32 30, i32 30>, ptr %i.az, align 8, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 248
  store <4 x i32> <i32 31, i32 31, i32 32, i32 32>, ptr %i.ba, align 8, !tbaa !338
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 264
  store <4 x i32> <i32 33, i32 33, i32 34, i32 34>, ptr %i.bb, align 8, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 280
  store <4 x i32> <i32 35, i32 35, i32 36, i32 36>, ptr %i.bc, align 8, !tbaa !338
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 296
  store <4 x i32> <i32 37, i32 37, i32 38, i32 38>, ptr %i.bd, align 8, !tbaa !338
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 312
  store <4 x i32> <i32 39, i32 39, i32 40, i32 40>, ptr %i.be, align 8, !tbaa !338
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 328
  store <4 x i32> <i32 41, i32 41, i32 42, i32 42>, ptr %i.bf, align 8, !tbaa !338
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 344
  store <4 x i32> <i32 43, i32 43, i32 44, i32 44>, ptr %i.bg, align 8, !tbaa !338
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 360
  store <4 x i32> <i32 45, i32 45, i32 46, i32 46>, ptr %i.bh, align 8, !tbaa !338
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 376
  store <4 x i32> <i32 47, i32 47, i32 48, i32 48>, ptr %i.bi, align 8, !tbaa !338
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 392
  store i32 49, ptr %i.bj, align 8, !tbaa !362
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 396
  store i32 49, ptr %i.bk, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !338
  %i.bl = ptrtoint ptr %4 to i64                  ; 2 uses
  br label %bb.b

bb.a:                                             ; preds = %bb.m
  %i.bm = add nsw i32 %i.de, 1                    ; 2 uses
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !338
  %i.bn = icmp sgt i32 %i.de, 48
  br i1 %i.bn, label %bb.n, label %bb.b, !llvm.loop !9412

bb.b:                                             ; preds = %.preheader214.preheader, %bb.a
  %storemerge218 = phi i32 [ 0, %.preheader214.preheader ], [ %i.bm, %bb.a ] ; 2 uses
  %i.bo = sext i32 %storemerge218 to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %6, i64 %i.bo ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i64, ptr %i.e, align 8, !tbaa !444, !noalias !9460 ; 7 uses
  %.idx.i.i = shl nsw i64 %i.br, 3
  %i.bs = getelementptr inbounds i8, ptr %4, i64 %.idx.i.i
  %.not12.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not12.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.bt = load i32, ptr %i.bp, align 8, !tbaa !338, !noalias !9461
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.bu = phi ptr [ %4, %.lr.ph.i.i.i.i ], [ %i.cb, %bb.c ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.c ] ; 2 uses
  %i.bv = lshr i64 %.013.i.i.i.i, 1               ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !338, !noalias !9461
  %i.by = icmp slt i32 %i.bx, %i.bt               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.neg.i.i.i.i = xor i64 %i.bv, -1
  %i.ca = add i64 %.013.i.i.i.i, %.neg.i.i.i.i
  %i.cb = select i1 %i.by, ptr %i.bz, ptr %i.bu   ; 2 uses
  %.1.i.i.i.i = select i1 %i.by, i64 %i.ca, i64 %i.bv ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i, label %bb.c, !llvm.loop !118

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.cc = phi ptr [ %4, %bb.b ], [ %i.cb, %bb.c ] ; 9 uses
  %i.cd = icmp eq ptr %i.cc, %i.bs
  br i1 %i.cd, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i
  %i.ce = load i32, ptr %i.bp, align 8, !tbaa !338, !noalias !9462
  %i.cf = load i32, ptr %i.cc, align 4, !tbaa !338, !noalias !9462
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = sub i64 %i.ch, %i.bl
  %i.cj = getelementptr inbounds i8, ptr %4, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.bq, align 4, !tbaa !338, !noalias !9462
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !348, !noalias !9462
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIRKiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbESB_OT_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i
  %.not.i.i.i = icmp eq i64 %i.br, 500
  br i1 %.not.i.i.i, label %bb.i, label %bb.e, !prof !344

bb.e:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.br ; 5 uses
  %.not.i.i.i6.i = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i6.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cn = load <2 x i32>, ptr %i.bp, align 8, !tbaa !338, !noalias !9463
  store <2 x i32> %i.cn, ptr %i.cc, align 4, !tbaa !338, !noalias !9463
  %i.co = add i64 %i.br, 1
  store i64 %i.co, ptr %i.e, align 8, !tbaa !444, !noalias !9463
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIRKiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbESB_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.cp = ptrtoint ptr %i.cc to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cq, %i.cp
  %i.cs = ashr exact i64 %i.cr, 3                 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 2 uses
  %i.cu = load <2 x i32>, ptr %i.ct, align 8, !tbaa !338, !noalias !9463
  store <2 x i32> %i.cu, ptr %i.cm, align 8, !tbaa !338, !noalias !9463
  %i.cv = add nsw i64 %i.br, 1
  store i64 %i.cv, ptr %i.e, align 8, !tbaa !444, !noalias !9463
  %i.cw = add nsw i64 %i.cs, -1                   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i, label %bb.h, !prof !344

bb.h:                                             ; preds = %bb.g
  %i.cx = sub nsw i64 1, %i.cs                    ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cx
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cx
  %i.da = shl i64 %i.cw, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr nonnull align 8 %i.cz, i64 %i.da, i1 false), !noalias !9463
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.db = load <2 x i32>, ptr %i.bp, align 8, !tbaa !338, !noalias !9463
  store <2 x i32> %i.db, ptr %i.cc, align 4, !tbaa !338, !noalias !9463
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIRKiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbESB_OT_.exit

bb.i:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc unwind label %.loopexit.split-lp209

.noexc:                                           ; preds = %bb.i
  unreachable

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIRKiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbESB_OT_.exit: ; preds = %bb.f, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i, %bb.d
  %.sroa.0195.0 = phi ptr [ %i.cj, %bb.d ], [ %i.cc, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i ], [ %i.cc, %bb.f ] ; 2 uses
  %.sroa.8197.1 = phi i1 [ false, %bb.d ], [ true, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i ], [ true, %bb.f ]
  %i.dc = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.j unwind label %.loopexit208

bb.j:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIRKiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbESB_OT_.exit
  %i.dd = sub nsw i32 50, %storemerge218
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !338
  br i1 %.sroa.8197.1, label %bb.l, label %.critedge

.loopexit208:                                     ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIRKiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbESB_OT_.exit
  %lpad.loopexit210 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp209:                            ; preds = %bb.i
  %lpad.loopexit.split-lp211 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp209, %.loopexit208
  %lpad.phi212 = phi { ptr, i32 } [ %lpad.loopexit210, %.loopexit208 ], [ %lpad.loopexit.split-lp211, %.loopexit.split-lp209 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.aj

bb.l:                                             ; preds = %bb.j
  %i.de = load i32, ptr %i.a, align 4, !tbaa !338 ; 4 uses
  %i.df = load i32, ptr %.sroa.0195.0, align 4, !tbaa !347
  %.not = icmp eq i32 %i.df, %i.de
  br i1 %.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.dg = sub nsw i32 50, %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0195.0, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !348
  %.not84 = icmp eq i32 %i.di, %i.dg
  br i1 %.not84, label %bb.a, label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge116

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.dj = load i64, ptr %i.e, align 8, !tbaa !444 ; 3 uses
  %i.dk = load i64, ptr %i.j, align 8, !tbaa !317
  %.not.i = icmp eq i64 %i.dj, %i.dk
  br i1 %.not.i, label %bb.o, label %.critedge116

bb.o:                                             ; preds = %bb.n
  %.idx.i = shl nsw i64 %i.dj, 3
  %i.dl = getelementptr inbounds i8, ptr %4, i64 %.idx.i
  %.not1920.i = icmp eq i64 %i.dj, 0
  br i1 %.not1920.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.dm = load ptr, ptr %i.h, align 8, !tbaa !315
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.preheader.i
  %.sroa.0.022.i = phi ptr [ %i.dv, %bb.q ], [ %i.dm, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.021.i = phi ptr [ %i.du, %bb.q ], [ %4, %.lr.ph.preheader.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 32
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !365
  %i.dp = load i32, ptr %.sroa.015.021.i, align 4, !tbaa !347
  %.not10.i = icmp eq i32 %i.dp, %i.do
  br i1 %.not10.i, label %bb.p, label %.critedge116

bb.p:                                             ; preds = %.lr.ph.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !366
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !348
  %.not11.i = icmp eq i32 %i.dt, %i.dr
  br i1 %.not11.i, label %bb.q, label %.critedge116

bb.q:                                             ; preds = %bb.p
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 8 ; 2 uses
  %i.dv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i) #27
  %.not19.i = icmp eq ptr %i.du, %i.dl
  br i1 %.not19.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !122

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !338
  br label %bb.s

bb.r:                                             ; preds = %bb.ad
  %i.dw = add nsw i32 %i.fn, 1                    ; 2 uses
  store i32 %i.dw, ptr %i.b, align 4, !tbaa !338
  %i.dx = icmp sgt i32 %i.fn, 48
  br i1 %i.dx, label %bb.ae, label %bb.s, !llvm.loop !9427

bb.s:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, %bb.r
  %storemerge85219 = phi i32 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.dw, %bb.r ] ; 2 uses
  %i.dy = sext i32 %storemerge85219 to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %7, i64 %i.dy ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i64, ptr %i.e, align 8, !tbaa !444, !noalias !9464 ; 7 uses
  %.idx.i.i166 = shl nsw i64 %i.eb, 3
  %i.ec = getelementptr inbounds i8, ptr %4, i64 %.idx.i.i166
  %.not12.i.i.i.i167 = icmp eq i64 %i.eb, 0
  br i1 %.not12.i.i.i.i167, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i173, label %.lr.ph.i.i.i.i168

.lr.ph.i.i.i.i168:                                ; preds = %bb.s
  %i.ed = load i32, ptr %i.dz, align 8, !tbaa !338, !noalias !9465
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i168
  %i.ee = phi ptr [ %4, %.lr.ph.i.i.i.i168 ], [ %i.el, %bb.t ] ; 2 uses
  %.013.i.i.i.i169 = phi i64 [ %i.eb, %.lr.ph.i.i.i.i168 ], [ %.1.i.i.i.i171, %bb.t ] ; 2 uses
  %i.ef = lshr i64 %.013.i.i.i.i169, 1            ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !338, !noalias !9465
  %i.ei = icmp slt i32 %i.eh, %i.ed               ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.neg.i.i.i.i170 = xor i64 %i.ef, -1
  %i.ek = add i64 %.013.i.i.i.i169, %.neg.i.i.i.i170
  %i.el = select i1 %i.ei, ptr %i.ej, ptr %i.ee   ; 2 uses
  %.1.i.i.i.i171 = select i1 %i.ei, i64 %i.ek, i64 %i.ef ; 2 uses
  %.not.i.i.i.i172 = icmp eq i64 %.1.i.i.i.i171, 0
  br i1 %.not.i.i.i.i172, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i173, label %bb.t, !llvm.loop !118

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i173: ; preds = %bb.t, %bb.s
  %i.em = phi ptr [ %4, %bb.s ], [ %i.el, %bb.t ] ; 9 uses
  %i.en = icmp eq ptr %i.em, %i.ec
  br i1 %i.en, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i180, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i174

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i174: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i173
  %i.eo = load i32, ptr %i.dz, align 8, !tbaa !338, !noalias !9466
  %i.ep = load i32, ptr %i.em, align 4, !tbaa !338, !noalias !9466
  %i.eq = icmp slt i32 %i.eo, %i.ep
  br i1 %i.eq, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i180, label %bb.u

bb.u:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i174
  %i.er = ptrtoint ptr %i.em to i64
  %i.es = sub i64 %i.er, %i.bl
  %i.et = getelementptr inbounds i8, ptr %4, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.ea, align 4, !tbaa !338, !noalias !9466
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !348, !noalias !9466
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIRKiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbESB_OT_.exit126

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i180: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i173, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i174
  %.not.i.i.i175 = icmp eq i64 %i.eb, 500
  br i1 %.not.i.i.i175, label %bb.z, label %bb.v, !prof !344

bb.v:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i180
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.eb ; 5 uses
  %.not.i.i.i6.i176 = icmp eq ptr %i.ew, %i.em
  br i1 %.not.i.i.i6.i176, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ex = load <2 x i32>, ptr %i.dz, align 8, !tbaa !338, !noalias !9467
  store <2 x i32> %i.ex, ptr %i.em, align 4, !tbaa !338, !noalias !9467
  %i.ey = add i64 %i.eb, 1
  store i64 %i.ey, ptr %i.e, align 8, !tbaa !444, !noalias !9467
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIRKiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbESB_OT_.exit126

bb.x:                                             ; preds = %bb.v
  %i.ez = ptrtoint ptr %i.em to i64
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = sub i64 %i.fa, %i.ez
  %i.fc = ashr exact i64 %i.fb, 3                 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.ew, i64 -8 ; 2 uses
  %i.fe = load <2 x i32>, ptr %i.fd, align 8, !tbaa !338, !noalias !9467
  store <2 x i32> %i.fe, ptr %i.ew, align 8, !tbaa !338, !noalias !9467
  %i.ff = add nsw i64 %i.eb, 1
  store i64 %i.ff, ptr %i.e, align 8, !tbaa !444, !noalias !9467
  %i.fg = add nsw i64 %i.fc, -1                   ; 2 uses
  %.not.i.i.i.i.i177 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i.i.i177, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i178, label %bb.y, !prof !344

bb.y:                                             ; preds = %bb.x
  %i.fh = sub nsw i64 1, %i.fc                    ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fh
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fh
  %i.fk = shl i64 %i.fg, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fi, ptr nonnull align 8 %i.fj, i64 %i.fk, i1 false), !noalias !9467
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i178

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i178: ; preds = %bb.y, %bb.x
  %i.fl = load <2 x i32>, ptr %i.dz, align 8, !tbaa !338, !noalias !9467
  store <2 x i32> %i.fl, ptr %i.em, align 4, !tbaa !338, !noalias !9467
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIRKiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbESB_OT_.exit126

bb.z:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i180
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc181 unwind label %.loopexit.split-lp

.noexc181:                                        ; preds = %bb.z
  unreachable

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIRKiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbESB_OT_.exit126: ; preds = %bb.w, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i178, %bb.u
  %.sroa.0193.0 = phi ptr [ %i.et, %bb.u ], [ %i.em, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i178 ], [ %i.em, %bb.w ] ; 2 uses
  %.sroa.8.1 = phi i1 [ false, %bb.u ], [ true, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i178 ], [ true, %bb.w ]
  %i.fm = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.aa unwind label %.loopexit

bb.aa:                                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIRKiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbESB_OT_.exit126
  store i32 %storemerge85219, ptr %i.fm, align 4, !tbaa !338
  br i1 %.sroa.8.1, label %.critedge112, label %bb.ac

.loopexit:                                        ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIRKiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbESB_OT_.exit126
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.aj

bb.ac:                                            ; preds = %bb.aa
  %i.fn = load i32, ptr %i.b, align 4, !tbaa !338 ; 4 uses
  %i.fo = load i32, ptr %.sroa.0193.0, align 4, !tbaa !347
  %.not87 = icmp eq i32 %i.fo, %i.fn
  br i1 %.not87, label %bb.ad, label %.critedge112

bb.ad:                                            ; preds = %bb.ac
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0193.0, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !348
  %.not88 = icmp eq i32 %i.fq, %i.fn
  br i1 %.not88, label %bb.r, label %.critedge112

.critedge112:                                     ; preds = %bb.aa, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.critedge116

bb.ae:                                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.fr = load i64, ptr %i.e, align 8, !tbaa !444 ; 3 uses
  %i.fs = load i64, ptr %i.j, align 8, !tbaa !317
  %.not.i127 = icmp eq i64 %i.fr, %i.fs
  br i1 %.not.i127, label %bb.af, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138

bb.af:                                            ; preds = %bb.ae
  %.idx.i129 = shl nsw i64 %i.fr, 3
  %i.ft = getelementptr inbounds i8, ptr %4, i64 %.idx.i129
  %.not1920.i130 = icmp eq i64 %i.fr, 0
  br i1 %.not1920.i130, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138, label %.lr.ph.preheader.i131

.lr.ph.preheader.i131:                            ; preds = %bb.af
  %i.fu = load ptr, ptr %i.h, align 8, !tbaa !315
  br label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %bb.ah, %.lr.ph.preheader.i131
  %.sroa.0.022.i133 = phi ptr [ %i.gd, %bb.ah ], [ %i.fu, %.lr.ph.preheader.i131 ] ; 3 uses
  %.sroa.015.021.i134 = phi ptr [ %i.gc, %bb.ah ], [ %4, %.lr.ph.preheader.i131 ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i133, i64 32
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !365
  %i.fx = load i32, ptr %.sroa.015.021.i134, align 4, !tbaa !347
  %.not10.i135 = icmp eq i32 %i.fx, %i.fw
  br i1 %.not10.i135, label %bb.ag, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138

bb.ag:                                            ; preds = %.lr.ph.i132
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i133, i64 36
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !366
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i134, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !348
  %.not11.i136 = icmp eq i32 %i.gb, %i.fz
  br i1 %.not11.i136, label %bb.ah, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138

bb.ah:                                            ; preds = %bb.ag
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i134, i64 8 ; 2 uses
  %i.gd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i133) #27
  %.not19.i137 = icmp eq ptr %i.gc, %i.ft
  br i1 %.not19.i137, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138, label %.lr.ph.i132, !llvm.loop !122

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138: ; preds = %.lr.ph.i132, %bb.ag, %bb.ah, %bb.ae, %bb.af
  %.4.i128 = phi i1 [ false, %bb.ae ], [ true, %bb.af ], [ false, %bb.ag ], [ true, %bb.ah ], [ false, %.lr.ph.i132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ge = load ptr, ptr %i.g, align 8, !tbaa !327
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ge)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #25
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit: ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.4.i128, label %.preheader207.preheader, label %bb.bl

.preheader207.preheader:                          ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 4000 ; 5 uses
  store i64 0, ptr %i.gh, align 8, !tbaa !442
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.gi, align 8, !tbaa !332
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr null, ptr %i.gj, align 8, !tbaa !327
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !315
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.gi, ptr %i.gl, align 8, !tbaa !316
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i64 0, ptr %i.gm, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.gn = getelementptr inbounds nuw i8, ptr %10, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %10, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.gn, align 4, !tbaa !338
  %i.go = getelementptr inbounds nuw i8, ptr %10, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.go, align 4, !tbaa !338
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.gp, align 4, !tbaa !338
  %i.gq = getelementptr inbounds nuw i8, ptr %10, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.gq, align 4, !tbaa !338
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.gr, align 4, !tbaa !338
  %i.gs = getelementptr inbounds nuw i8, ptr %10, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.gs, align 4, !tbaa !338
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.gt, align 4, !tbaa !338
  %i.gu = getelementptr inbounds nuw i8, ptr %10, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.gu, align 4, !tbaa !338
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.gv, align 4, !tbaa !338
  %i.gw = getelementptr inbounds nuw i8, ptr %10, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.gw, align 4, !tbaa !338
  %i.gx = getelementptr inbounds nuw i8, ptr %10, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.gx, align 4, !tbaa !338
  %i.gy = getelementptr inbounds nuw i8, ptr %10, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.gy, align 4, !tbaa !338
  %i.gz = getelementptr inbounds nuw i8, ptr %10, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.gz, align 4, !tbaa !338
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.ha, align 4, !tbaa !338
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.hb, align 4, !tbaa !338
  %i.hc = getelementptr inbounds nuw i8, ptr %10, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.hc, align 4, !tbaa !338
  %i.hd = getelementptr inbounds nuw i8, ptr %10, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.hd, align 4, !tbaa !338
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.he, align 4, !tbaa !338
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.hf, align 4, !tbaa !338
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.hg, align 4, !tbaa !338
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.hh, align 4, !tbaa !338
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.hi, align 4, !tbaa !338
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.hj, align 4, !tbaa !338
  %i.hk = getelementptr inbounds nuw i8, ptr %10, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.hk, align 4, !tbaa !338
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 388
  store i32 2, ptr %i.hl, align 4, !tbaa !363
  %i.hm = getelementptr inbounds nuw i8, ptr %10, i64 392
  store i32 49, ptr %i.hm, align 8, !tbaa !362
  %i.hn = getelementptr inbounds nuw i8, ptr %10, i64 396
  store i32 1, ptr %i.hn, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.ho = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %11, i8 0, i64 400, i1 false)
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test30map_test_insert_or_assign_implINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEENS1_7move_opEEEiv:.preheader214.preheader
  store ptr %i.f, ptr %i.h, align 8, !tbaa !315
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.f, ptr %i.i, align 8, !tbaa !316
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i64 0, ptr %i.j, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %6, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.k, align 4, !tbaa !338
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.l, align 4, !tbaa !338
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.m, align 4, !tbaa !338
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.n, align 4, !tbaa !338
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.o, align 4, !tbaa !338
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.p, align 4, !tbaa !338
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.q, align 4, !tbaa !338
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.r, align 4, !tbaa !338
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.s, align 4, !tbaa !338
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.t, align 4, !tbaa !338
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.u, align 4, !tbaa !338
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.v, align 4, !tbaa !338
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.w, align 4, !tbaa !338
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.x, align 4, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.y, align 4, !tbaa !338
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.z, align 4, !tbaa !338
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.aa, align 4, !tbaa !338
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.ab, align 4, !tbaa !338
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.ac, align 4, !tbaa !338
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.ad, align 4, !tbaa !338
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.ae, align 4, !tbaa !338
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.af, align 4, !tbaa !338
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.ag, align 4, !tbaa !338
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.ah, align 4, !tbaa !338
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 388
  store i32 2, ptr %i.ai, align 4, !tbaa !363
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 392
  store i32 49, ptr %i.aj, align 8, !tbaa !362
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 396
  store i32 1, ptr %i.ak, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %7, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 1, i32 1, i32 2, i32 2>, ptr %i.al, align 8, !tbaa !338
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <4 x i32> <i32 3, i32 3, i32 4, i32 4>, ptr %i.am, align 8, !tbaa !338
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 40
  store <4 x i32> <i32 5, i32 5, i32 6, i32 6>, ptr %i.an, align 8, !tbaa !338
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <4 x i32> <i32 7, i32 7, i32 8, i32 8>, ptr %i.ao, align 8, !tbaa !338
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 72
  store <4 x i32> <i32 9, i32 9, i32 10, i32 10>, ptr %i.ap, align 8, !tbaa !338
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 88
  store <4 x i32> <i32 11, i32 11, i32 12, i32 12>, ptr %i.aq, align 8, !tbaa !338
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 104
  store <4 x i32> <i32 13, i32 13, i32 14, i32 14>, ptr %i.ar, align 8, !tbaa !338
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 120
  store <4 x i32> <i32 15, i32 15, i32 16, i32 16>, ptr %i.as, align 8, !tbaa !338
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 136
  store <4 x i32> <i32 17, i32 17, i32 18, i32 18>, ptr %i.at, align 8, !tbaa !338
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 152
  store <4 x i32> <i32 19, i32 19, i32 20, i32 20>, ptr %i.au, align 8, !tbaa !338
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 168
  store <4 x i32> <i32 21, i32 21, i32 22, i32 22>, ptr %i.av, align 8, !tbaa !338
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 184
  store <4 x i32> <i32 23, i32 23, i32 24, i32 24>, ptr %i.aw, align 8, !tbaa !338
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 200
  store <4 x i32> <i32 25, i32 25, i32 26, i32 26>, ptr %i.ax, align 8, !tbaa !338
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 216
  store <4 x i32> <i32 27, i32 27, i32 28, i32 28>, ptr %i.ay, align 8, !tbaa !338
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 232
  store <4 x i32> <i32 29, i32 29, i32 30, i32 30>, ptr %i.az, align 8, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 248
  store <4 x i32> <i32 31, i32 31, i32 32, i32 32>, ptr %i.ba, align 8, !tbaa !338
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 264
  store <4 x i32> <i32 33, i32 33, i32 34, i32 34>, ptr %i.bb, align 8, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 280
  store <4 x i32> <i32 35, i32 35, i32 36, i32 36>, ptr %i.bc, align 8, !tbaa !338
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 296
  store <4 x i32> <i32 37, i32 37, i32 38, i32 38>, ptr %i.bd, align 8, !tbaa !338
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 312
  store <4 x i32> <i32 39, i32 39, i32 40, i32 40>, ptr %i.be, align 8, !tbaa !338
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 328
  store <4 x i32> <i32 41, i32 41, i32 42, i32 42>, ptr %i.bf, align 8, !tbaa !338
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 344
  store <4 x i32> <i32 43, i32 43, i32 44, i32 44>, ptr %i.bg, align 8, !tbaa !338
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 360
  store <4 x i32> <i32 45, i32 45, i32 46, i32 46>, ptr %i.bh, align 8, !tbaa !338
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 376
  store <4 x i32> <i32 47, i32 47, i32 48, i32 48>, ptr %i.bi, align 8, !tbaa !338
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 392
  store i32 49, ptr %i.bj, align 8, !tbaa !362
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 396
  store i32 49, ptr %i.bk, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !338
  %i.bl = ptrtoint ptr %4 to i64                  ; 2 uses
  br label %bb.b

bb.a:                                             ; preds = %bb.m
  %i.bm = add nsw i32 %i.de, 1                    ; 2 uses
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !338
  %i.bn = icmp sgt i32 %i.de, 48
  br i1 %i.bn, label %bb.n, label %bb.b, !llvm.loop !9472

bb.b:                                             ; preds = %.preheader214.preheader, %bb.a
  %storemerge218 = phi i32 [ 0, %.preheader214.preheader ], [ %i.bm, %bb.a ] ; 2 uses
  %i.bo = sext i32 %storemerge218 to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %6, i64 %i.bo ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i64, ptr %i.e, align 8, !tbaa !444, !noalias !9520 ; 7 uses
  %.idx.i.i = shl nsw i64 %i.br, 3
  %i.bs = getelementptr inbounds i8, ptr %4, i64 %.idx.i.i
  %.not12.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not12.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.bt = load i32, ptr %i.bp, align 8, !tbaa !338, !noalias !9521
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.bu = phi ptr [ %4, %.lr.ph.i.i.i.i ], [ %i.cb, %bb.c ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.c ] ; 2 uses
  %i.bv = lshr i64 %.013.i.i.i.i, 1               ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !338, !noalias !9521
  %i.by = icmp slt i32 %i.bx, %i.bt               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.neg.i.i.i.i = xor i64 %i.bv, -1
  %i.ca = add i64 %.013.i.i.i.i, %.neg.i.i.i.i
  %i.cb = select i1 %i.by, ptr %i.bz, ptr %i.bu   ; 2 uses
  %.1.i.i.i.i = select i1 %i.by, i64 %i.ca, i64 %i.bv ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i, label %bb.c, !llvm.loop !118

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.cc = phi ptr [ %4, %bb.b ], [ %i.cb, %bb.c ] ; 9 uses
  %i.cd = icmp eq ptr %i.cc, %i.bs
  br i1 %i.cd, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i
  %i.ce = load i32, ptr %i.bp, align 8, !tbaa !338, !noalias !9522
  %i.cf = load i32, ptr %i.cc, align 4, !tbaa !338, !noalias !9522
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = sub i64 %i.ch, %i.bl
  %i.cj = getelementptr inbounds i8, ptr %4, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.bq, align 4, !tbaa !338, !noalias !9522
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !348, !noalias !9522
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEOiOT_.exit

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i
  %.not.i.i.i = icmp eq i64 %i.br, 500
  br i1 %.not.i.i.i, label %bb.i, label %bb.e, !prof !344

bb.e:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.br ; 5 uses
  %.not.i.i.i6.i = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i6.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cn = load <2 x i32>, ptr %i.bp, align 8, !tbaa !338, !noalias !9523
  store <2 x i32> %i.cn, ptr %i.cc, align 4, !tbaa !338, !noalias !9523
  %i.co = add i64 %i.br, 1
  store i64 %i.co, ptr %i.e, align 8, !tbaa !444, !noalias !9523
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEOiOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.cp = ptrtoint ptr %i.cc to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cq, %i.cp
  %i.cs = ashr exact i64 %i.cr, 3                 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 2 uses
  %i.cu = load <2 x i32>, ptr %i.ct, align 8, !tbaa !338, !noalias !9523
  store <2 x i32> %i.cu, ptr %i.cm, align 8, !tbaa !338, !noalias !9523
  %i.cv = add nsw i64 %i.br, 1
  store i64 %i.cv, ptr %i.e, align 8, !tbaa !444, !noalias !9523
  %i.cw = add nsw i64 %i.cs, -1                   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i, label %bb.h, !prof !344

bb.h:                                             ; preds = %bb.g
  %i.cx = sub nsw i64 1, %i.cs                    ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cx
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cx
  %i.da = shl i64 %i.cw, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr nonnull align 8 %i.cz, i64 %i.da, i1 false), !noalias !9523
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.db = load <2 x i32>, ptr %i.bp, align 8, !tbaa !338, !noalias !9523
  store <2 x i32> %i.db, ptr %i.cc, align 4, !tbaa !338, !noalias !9523
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEOiOT_.exit

bb.i:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc unwind label %.loopexit.split-lp209

.noexc:                                           ; preds = %bb.i
  unreachable

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEOiOT_.exit: ; preds = %bb.f, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i, %bb.d
  %.sroa.0195.0 = phi ptr [ %i.cj, %bb.d ], [ %i.cc, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i ], [ %i.cc, %bb.f ] ; 2 uses
  %.sroa.8197.1 = phi i1 [ false, %bb.d ], [ true, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i ], [ true, %bb.f ]
  %i.dc = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.j unwind label %.loopexit208

bb.j:                                             ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEOiOT_.exit
  %i.dd = sub nsw i32 50, %storemerge218
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !338
  br i1 %.sroa.8197.1, label %bb.l, label %.critedge

.loopexit208:                                     ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEOiOT_.exit
  %lpad.loopexit210 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp209:                            ; preds = %bb.i
  %lpad.loopexit.split-lp211 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp209, %.loopexit208
  %lpad.phi212 = phi { ptr, i32 } [ %lpad.loopexit210, %.loopexit208 ], [ %lpad.loopexit.split-lp211, %.loopexit.split-lp209 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.aj

bb.l:                                             ; preds = %bb.j
  %i.de = load i32, ptr %i.a, align 4, !tbaa !338 ; 4 uses
  %i.df = load i32, ptr %.sroa.0195.0, align 4, !tbaa !347
  %.not = icmp eq i32 %i.df, %i.de
  br i1 %.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.dg = sub nsw i32 50, %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0195.0, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !348
  %.not84 = icmp eq i32 %i.di, %i.dg
  br i1 %.not84, label %bb.a, label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge116

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.dj = load i64, ptr %i.e, align 8, !tbaa !444 ; 3 uses
  %i.dk = load i64, ptr %i.j, align 8, !tbaa !317
  %.not.i = icmp eq i64 %i.dj, %i.dk
  br i1 %.not.i, label %bb.o, label %.critedge116

bb.o:                                             ; preds = %bb.n
  %.idx.i = shl nsw i64 %i.dj, 3
  %i.dl = getelementptr inbounds i8, ptr %4, i64 %.idx.i
  %.not1920.i = icmp eq i64 %i.dj, 0
  br i1 %.not1920.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.dm = load ptr, ptr %i.h, align 8, !tbaa !315
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.preheader.i
  %.sroa.0.022.i = phi ptr [ %i.dv, %bb.q ], [ %i.dm, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.021.i = phi ptr [ %i.du, %bb.q ], [ %4, %.lr.ph.preheader.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 32
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !365
  %i.dp = load i32, ptr %.sroa.015.021.i, align 4, !tbaa !347
  %.not10.i = icmp eq i32 %i.dp, %i.do
  br i1 %.not10.i, label %bb.p, label %.critedge116

bb.p:                                             ; preds = %.lr.ph.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !366
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !348
  %.not11.i = icmp eq i32 %i.dt, %i.dr
  br i1 %.not11.i, label %bb.q, label %.critedge116

bb.q:                                             ; preds = %bb.p
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 8 ; 2 uses
  %i.dv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i) #27
  %.not19.i = icmp eq ptr %i.du, %i.dl
  br i1 %.not19.i, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !122

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit: ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !338
  br label %bb.s

bb.r:                                             ; preds = %bb.ad
  %i.dw = add nsw i32 %i.fn, 1                    ; 2 uses
  store i32 %i.dw, ptr %i.b, align 4, !tbaa !338
  %i.dx = icmp sgt i32 %i.fn, 48
  br i1 %i.dx, label %bb.ae, label %bb.s, !llvm.loop !9487

bb.s:                                             ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, %bb.r
  %storemerge85219 = phi i32 [ 0, %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ %i.dw, %bb.r ] ; 2 uses
  %i.dy = sext i32 %storemerge85219 to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %7, i64 %i.dy ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i64, ptr %i.e, align 8, !tbaa !444, !noalias !9524 ; 7 uses
  %.idx.i.i166 = shl nsw i64 %i.eb, 3
  %i.ec = getelementptr inbounds i8, ptr %4, i64 %.idx.i.i166
  %.not12.i.i.i.i167 = icmp eq i64 %i.eb, 0
  br i1 %.not12.i.i.i.i167, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i173, label %.lr.ph.i.i.i.i168

.lr.ph.i.i.i.i168:                                ; preds = %bb.s
  %i.ed = load i32, ptr %i.dz, align 8, !tbaa !338, !noalias !9525
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i168
  %i.ee = phi ptr [ %4, %.lr.ph.i.i.i.i168 ], [ %i.el, %bb.t ] ; 2 uses
  %.013.i.i.i.i169 = phi i64 [ %i.eb, %.lr.ph.i.i.i.i168 ], [ %.1.i.i.i.i171, %bb.t ] ; 2 uses
  %i.ef = lshr i64 %.013.i.i.i.i169, 1            ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !338, !noalias !9525
  %i.ei = icmp slt i32 %i.eh, %i.ed               ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.neg.i.i.i.i170 = xor i64 %i.ef, -1
  %i.ek = add i64 %.013.i.i.i.i169, %.neg.i.i.i.i170
  %i.el = select i1 %i.ei, ptr %i.ej, ptr %i.ee   ; 2 uses
  %.1.i.i.i.i171 = select i1 %i.ei, i64 %i.ek, i64 %i.ef ; 2 uses
  %.not.i.i.i.i172 = icmp eq i64 %.1.i.i.i.i171, 0
  br i1 %.not.i.i.i.i172, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i173, label %bb.t, !llvm.loop !118

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i173: ; preds = %bb.t, %bb.s
  %i.em = phi ptr [ %4, %bb.s ], [ %i.el, %bb.t ] ; 9 uses
  %i.en = icmp eq ptr %i.em, %i.ec
  br i1 %i.en, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i180, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i174

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i174: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i173
  %i.eo = load i32, ptr %i.dz, align 8, !tbaa !338, !noalias !9526
  %i.ep = load i32, ptr %i.em, align 4, !tbaa !338, !noalias !9526
  %i.eq = icmp slt i32 %i.eo, %i.ep
  br i1 %i.eq, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i180, label %bb.u

bb.u:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i174
  %i.er = ptrtoint ptr %i.em to i64
  %i.es = sub i64 %i.er, %i.bl
  %i.et = getelementptr inbounds i8, ptr %4, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.ea, align 4, !tbaa !338, !noalias !9526
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !348, !noalias !9526
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEOiOT_.exit126

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i180: ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i.i173, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i174
  %.not.i.i.i175 = icmp eq i64 %i.eb, 500
  br i1 %.not.i.i.i175, label %bb.z, label %bb.v, !prof !344

bb.v:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i180
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.eb ; 5 uses
  %.not.i.i.i6.i176 = icmp eq ptr %i.ew, %i.em
  br i1 %.not.i.i.i6.i176, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ex = load <2 x i32>, ptr %i.dz, align 8, !tbaa !338, !noalias !9527
  store <2 x i32> %i.ex, ptr %i.em, align 4, !tbaa !338, !noalias !9527
  %i.ey = add i64 %i.eb, 1
  store i64 %i.ey, ptr %i.e, align 8, !tbaa !444, !noalias !9527
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEOiOT_.exit126

bb.x:                                             ; preds = %bb.v
  %i.ez = ptrtoint ptr %i.em to i64
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = sub i64 %i.fa, %i.ez
  %i.fc = ashr exact i64 %i.fb, 3                 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.ew, i64 -8 ; 2 uses
  %i.fe = load <2 x i32>, ptr %i.fd, align 8, !tbaa !338, !noalias !9527
  store <2 x i32> %i.fe, ptr %i.ew, align 8, !tbaa !338, !noalias !9527
  %i.ff = add nsw i64 %i.eb, 1
  store i64 %i.ff, ptr %i.e, align 8, !tbaa !444, !noalias !9527
  %i.fg = add nsw i64 %i.fc, -1                   ; 2 uses
  %.not.i.i.i.i.i177 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i.i.i177, label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i178, label %bb.y, !prof !344

bb.y:                                             ; preds = %bb.x
  %i.fh = sub nsw i64 1, %i.fc                    ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fh
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fh
  %i.fk = shl i64 %i.fg, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fi, ptr nonnull align 8 %i.fj, i64 %i.fk, i1 false), !noalias !9527
  br label %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i178

_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i178: ; preds = %bb.y, %bb.x
  %i.fl = load <2 x i32>, ptr %i.dz, align 8, !tbaa !338, !noalias !9527
  store <2 x i32> %i.fl, ptr %i.em, align 4, !tbaa !338, !noalias !9527
  br label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEOiOT_.exit126

bb.z:                                             ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.thread.i180
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22
          to label %.noexc181 unwind label %.loopexit.split-lp

.noexc181:                                        ; preds = %bb.z
  unreachable

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEOiOT_.exit126: ; preds = %bb.w, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i178, %bb.u
  %.sroa.0193.0 = phi ptr [ %i.et, %bb.u ], [ %i.em, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i178 ], [ %i.em, %bb.w ] ; 2 uses
  %.sroa.8.1 = phi i1 [ false, %bb.u ], [ true, %_ZN5boost9container15move_backward_nIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i.i178 ], [ true, %bb.w ]
  %i.fm = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.aa unwind label %.loopexit

bb.aa:                                            ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEOiOT_.exit126
  store i32 %storemerge85219, ptr %i.fm, align 4, !tbaa !338
  br i1 %.sroa.8.1, label %.critedge112, label %bb.ac

.loopexit:                                        ; preds = %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEE16insert_or_assignIiEES5_INS0_12vec_iteratorIPS6_Lb0EEEbEOiOT_.exit126
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.aj

bb.ac:                                            ; preds = %bb.aa
  %i.fn = load i32, ptr %i.b, align 4, !tbaa !338 ; 4 uses
  %i.fo = load i32, ptr %.sroa.0193.0, align 4, !tbaa !347
  %.not87 = icmp eq i32 %i.fo, %i.fn
  br i1 %.not87, label %bb.ad, label %.critedge112

bb.ad:                                            ; preds = %bb.ac
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0193.0, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !348
  %.not88 = icmp eq i32 %i.fq, %i.fn
  br i1 %.not88, label %bb.r, label %.critedge112

.critedge112:                                     ; preds = %bb.aa, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.critedge116

bb.ae:                                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.fr = load i64, ptr %i.e, align 8, !tbaa !444 ; 3 uses
  %i.fs = load i64, ptr %i.j, align 8, !tbaa !317
  %.not.i127 = icmp eq i64 %i.fr, %i.fs
  br i1 %.not.i127, label %bb.af, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138

bb.af:                                            ; preds = %bb.ae
  %.idx.i129 = shl nsw i64 %i.fr, 3
  %i.ft = getelementptr inbounds i8, ptr %4, i64 %.idx.i129
  %.not1920.i130 = icmp eq i64 %i.fr, 0
  br i1 %.not1920.i130, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138, label %.lr.ph.preheader.i131

.lr.ph.preheader.i131:                            ; preds = %bb.af
  %i.fu = load ptr, ptr %i.h, align 8, !tbaa !315
  br label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %bb.ah, %.lr.ph.preheader.i131
  %.sroa.0.022.i133 = phi ptr [ %i.gd, %bb.ah ], [ %i.fu, %.lr.ph.preheader.i131 ] ; 3 uses
  %.sroa.015.021.i134 = phi ptr [ %i.gc, %bb.ah ], [ %4, %.lr.ph.preheader.i131 ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i133, i64 32
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !365
  %i.fx = load i32, ptr %.sroa.015.021.i134, align 4, !tbaa !347
  %.not10.i135 = icmp eq i32 %i.fx, %i.fw
  br i1 %.not10.i135, label %bb.ag, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138

bb.ag:                                            ; preds = %.lr.ph.i132
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i133, i64 36
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !366
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i134, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !348
  %.not11.i136 = icmp eq i32 %i.gb, %i.fz
  br i1 %.not11.i136, label %bb.ah, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138

bb.ah:                                            ; preds = %bb.ag
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i134, i64 8 ; 2 uses
  %i.gd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.022.i133) #27
  %.not19.i137 = icmp eq ptr %i.gc, %i.ft
  br i1 %.not19.i137, label %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138, label %.lr.ph.i132, !llvm.loop !122

_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138: ; preds = %.lr.ph.i132, %bb.ag, %bb.ah, %bb.ae, %bb.af
  %.4.i128 = phi i1 [ false, %bb.ae ], [ true, %bb.af ], [ false, %bb.ag ], [ true, %bb.ah ], [ false, %.lr.ph.i132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ge = load ptr, ptr %i.g, align 8, !tbaa !327
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ge)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #25
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit: ; preds = %_ZN5boost9container4test24CheckEqualPairContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit138
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.4.i128, label %.preheader207.preheader, label %bb.bl

.preheader207.preheader:                          ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 4000 ; 5 uses
  store i64 0, ptr %i.gh, align 8, !tbaa !442
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.gi, align 8, !tbaa !332
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr null, ptr %i.gj, align 8, !tbaa !327
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !315
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.gi, ptr %i.gl, align 8, !tbaa !316
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i64 0, ptr %i.gm, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.gn = getelementptr inbounds nuw i8, ptr %10, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %10, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 50, i32 1, i32 49, i32 2>, ptr %i.gn, align 4, !tbaa !338
  %i.go = getelementptr inbounds nuw i8, ptr %10, i64 20
  store <4 x i32> <i32 48, i32 3, i32 47, i32 4>, ptr %i.go, align 4, !tbaa !338
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 36
  store <4 x i32> <i32 46, i32 5, i32 45, i32 6>, ptr %i.gp, align 4, !tbaa !338
  %i.gq = getelementptr inbounds nuw i8, ptr %10, i64 52
  store <4 x i32> <i32 44, i32 7, i32 43, i32 8>, ptr %i.gq, align 4, !tbaa !338
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 68
  store <4 x i32> <i32 42, i32 9, i32 41, i32 10>, ptr %i.gr, align 4, !tbaa !338
  %i.gs = getelementptr inbounds nuw i8, ptr %10, i64 84
  store <4 x i32> <i32 40, i32 11, i32 39, i32 12>, ptr %i.gs, align 4, !tbaa !338
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 100
  store <4 x i32> <i32 38, i32 13, i32 37, i32 14>, ptr %i.gt, align 4, !tbaa !338
  %i.gu = getelementptr inbounds nuw i8, ptr %10, i64 116
  store <4 x i32> <i32 36, i32 15, i32 35, i32 16>, ptr %i.gu, align 4, !tbaa !338
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 132
  store <4 x i32> <i32 34, i32 17, i32 33, i32 18>, ptr %i.gv, align 4, !tbaa !338
  %i.gw = getelementptr inbounds nuw i8, ptr %10, i64 148
  store <4 x i32> <i32 32, i32 19, i32 31, i32 20>, ptr %i.gw, align 4, !tbaa !338
  %i.gx = getelementptr inbounds nuw i8, ptr %10, i64 164
  store <4 x i32> <i32 30, i32 21, i32 29, i32 22>, ptr %i.gx, align 4, !tbaa !338
  %i.gy = getelementptr inbounds nuw i8, ptr %10, i64 180
  store <4 x i32> <i32 28, i32 23, i32 27, i32 24>, ptr %i.gy, align 4, !tbaa !338
  %i.gz = getelementptr inbounds nuw i8, ptr %10, i64 196
  store <4 x i32> <i32 26, i32 25, i32 25, i32 26>, ptr %i.gz, align 4, !tbaa !338
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 212
  store <4 x i32> <i32 24, i32 27, i32 23, i32 28>, ptr %i.ha, align 4, !tbaa !338
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 228
  store <4 x i32> <i32 22, i32 29, i32 21, i32 30>, ptr %i.hb, align 4, !tbaa !338
  %i.hc = getelementptr inbounds nuw i8, ptr %10, i64 244
  store <4 x i32> <i32 20, i32 31, i32 19, i32 32>, ptr %i.hc, align 4, !tbaa !338
  %i.hd = getelementptr inbounds nuw i8, ptr %10, i64 260
  store <4 x i32> <i32 18, i32 33, i32 17, i32 34>, ptr %i.hd, align 4, !tbaa !338
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 276
  store <4 x i32> <i32 16, i32 35, i32 15, i32 36>, ptr %i.he, align 4, !tbaa !338
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 292
  store <4 x i32> <i32 14, i32 37, i32 13, i32 38>, ptr %i.hf, align 4, !tbaa !338
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 308
  store <4 x i32> <i32 12, i32 39, i32 11, i32 40>, ptr %i.hg, align 4, !tbaa !338
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 324
  store <4 x i32> <i32 10, i32 41, i32 9, i32 42>, ptr %i.hh, align 4, !tbaa !338
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 340
  store <4 x i32> <i32 8, i32 43, i32 7, i32 44>, ptr %i.hi, align 4, !tbaa !338
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 356
  store <4 x i32> <i32 6, i32 45, i32 5, i32 46>, ptr %i.hj, align 4, !tbaa !338
  %i.hk = getelementptr inbounds nuw i8, ptr %10, i64 372
  store <4 x i32> <i32 4, i32 47, i32 3, i32 48>, ptr %i.hk, align 4, !tbaa !338
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 388
  store i32 2, ptr %i.hl, align 4, !tbaa !363
  %i.hm = getelementptr inbounds nuw i8, ptr %10, i64 392
  store i32 49, ptr %i.hm, align 8, !tbaa !362
  %i.hn = getelementptr inbounds nuw i8, ptr %10, i64 396
  store i32 1, ptr %i.hn, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.ho = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %11, i8 0, i64 400, i1 false)
end_hunk_3
