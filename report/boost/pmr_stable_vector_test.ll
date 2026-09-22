Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/pmr_stable_vector_test?download=true
inline.NumInlined: 564
inline.NumDeleted: 311
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE5eraseENS0_22stable_vector_iteratorIPiLb1EEES8_:bb.a
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = sub nsw i64 %i.r, %i.m                   ; 7 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE6cbeginEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  store ptr null, ptr %.sroa.3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26, !noalias !96 ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.l ; 8 uses
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.d, %.prol.preheader
  %.030.prol = phi i64 [ %i.x, %.prol.preheader ], [ %i.s, %bb.d ]
  %.sroa.016.029.prol = phi ptr [ %i.y, %.prol.preheader ], [ %i.v, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.z, %.prol.preheader ], [ %.sroa.3, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.d ]
  %i.x = add i64 %.030.prol, -1                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.016.029.prol, i64 8 ; 2 uses
  %i.z = load ptr, ptr %.sroa.016.029.prol, align 8, !tbaa !28 ; 5 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !40
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !40
  store ptr %i.z, ptr %i.w, align 8, !tbaa !40
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !87

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.d
  %.lcssa.unr = phi ptr [ poison, %bb.d ], [ %i.z, %.prol.preheader ]
  %.030.unr = phi i64 [ %i.s, %bb.d ], [ %i.x, %.prol.preheader ]
  %.sroa.016.029.unr = phi ptr [ %i.v, %bb.d ], [ %i.y, %.prol.preheader ]
  %.unr = phi ptr [ %.sroa.3, %bb.d ], [ %i.z, %.prol.preheader ]
  %i.ab = sub nsw i64 %i.m, %i.r
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.030 = phi i64 [ %i.an, %.new ], [ %.030.unr, %.prol.loopexit ]
  %.sroa.016.029 = phi ptr [ %i.ao, %.new ], [ %.sroa.016.029.unr, %.prol.loopexit ] ; 5 uses
  %i.ad = phi ptr [ %i.ap, %.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.016.029, i64 8
  %i.af = load ptr, ptr %.sroa.016.029, align 8, !tbaa !28 ; 4 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !40
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !40
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.016.029, i64 16
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !28 ; 4 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !40
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !40
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.016.029, i64 24
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !28 ; 4 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !40
  store ptr %i.am, ptr %i.al, align 8, !tbaa !40
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !40
  %i.an = add i64 %.030, -4                       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.016.029, i64 32
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !28 ; 4 uses
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !40
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !40
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !40
  %.not11.3 = icmp eq i64 %i.an, 0
  br i1 %.not11.3, label %.unr-lcssa, label %.new, !llvm.loop !88

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.ap, %.new ]
  %.idx = shl nsw i64 %i.s, 3                     ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.v, i64 %.idx
  %i.as = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.b ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -16 ; 2 uses
  %i.au = getelementptr i8, ptr %i.as, i64 -8     ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i, label %bb.e

bb.e:                                             ; preds = %.unr-lcssa
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !28
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !28
  %.sroa.3.0..sroa.3.8.37 = load ptr, ptr %.sroa.3, align 8, !tbaa !40
  store ptr %i.ay, ptr %.sroa.3, align 8, !tbaa !40
  store ptr %.sroa.3.0..sroa.3.8.37, ptr %i.ax, align 8, !tbaa !40
  %i.az = add i64 %i.s, %i.aw
  br label %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i

_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i: ; preds = %.unr-lcssa, %bb.e
  %i.ba = phi i64 [ %i.az, %bb.e ], [ %i.s, %.unr-lcssa ]
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !39
  %.sroa.3.0..sroa.3.8. = load ptr, ptr %.sroa.3, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.3.0..sroa.3.8., null
  %spec.select = select i1 %.not.i.i.i.i.i, ptr null, ptr %.lcssa, !prof !50
  store ptr %.sroa.3.0..sroa.3.8., ptr %i.at, align 8, !tbaa !28
  store ptr %spec.select, ptr %i.au, align 8, !tbaa !28
  %.idx25 = shl nuw nsw i64 %i.b, 3               ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx25
  %i.bc = add i64 %.idx, %i.l                     ; 2 uses
  %.not36 = icmp eq i64 %i.bc, %.idx25
  %i.bd = ptrtoint ptr %i.bb to i64
  br i1 %.not36, label %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i, label %bb.f, !prof !50

bb.f:                                             ; preds = %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i
  %gepdiff = sub i64 %.idx25, %i.bc               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 8 %i.ar, i64 %gepdiff, i1 false), !noalias !97
  %i.be = getelementptr inbounds i8, ptr %i.v, i64 %gepdiff
  %.pre.i12 = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !97
  br label %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i

_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i: ; preds = %bb.f, %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i
  %i.bf = phi i64 [ %.pre.i12, %bb.f ], [ %i.b, %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i ]
  %.0.i.i.i = phi ptr [ %i.be, %bb.f ], [ %i.v, %_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEE17incorporate_afterENS1_19multialloc_iteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINSC_15slist_base_hookIJNSC_12void_pointerIS4_EENSC_9link_modeILNSC_14link_mode_typeE0EEEEEENSC_17slist_node_traitsIS4_EELSJ_0ENSC_7dft_tagELj2EEELb0EEES9_EEPS9_SS_m.exit.i ]
  %i.bg = ptrtoint ptr %.0.i.i.i to i64
  %i.bh = sub i64 %i.bd, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = sub i64 %i.bf, %i.bi                    ; 2 uses
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !51, !noalias !97
  %i.bk = load ptr, ptr %i.t, align 8, !tbaa !26, !noalias !98
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -16 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.v, %i.bm
  br i1 %.not2.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i, %.lr.ph.i.i
  %i.bn = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %i.v, %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i ] ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !28
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, %i.bm
  br i1 %.not.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit: ; preds = %.lr.ph.i.i, %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  %.pre = load ptr, ptr %3, align 8, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit, %_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE6cbeginEv.exit
  %i.bq = phi ptr [ %.pre, %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit ], [ %i.n, %_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE6cbeginEv.exit ]
  store ptr %i.bq, ptr %0, align 8, !tbaa !53
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE14priv_push_backIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator.2", align 8 ; 4 uses
  %3 = alloca %"class.boost::move_iterator", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp ne i64 %i.h, 0
  %i.j = select i1 %i.f, i1 %i.i, i1 false
  br i1 %i.j, label %bb.b, label %bb.e, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26, !noalias !113 ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.e ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 3 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8       ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !28   ; 5 uses
  store ptr null, ptr %i.p, align 8, !tbaa !40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %i.s = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.s, ptr %i.g, align 8, !tbaa !39
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !26, !noalias !114
  %.pre18 = load i64, ptr %i.d, align 8, !tbaa !25, !noalias !114
  %.pre19 = load i64, ptr %i.b, align 8, !tbaa !46, !noalias !115
  br label %_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE18push_back_rollbackD2Ev.exit

.thread.i:                                        ; preds = %bb.b
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %..i = select i1 %.not.i.i.i.i.i.i.i, ptr null, ptr %i.p
  store ptr %i.r, ptr %i.n, align 8, !tbaa !28
  store ptr %..i, ptr %i.o, align 8, !tbaa !28
  br label %_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE18push_back_rollbackD2Ev.exit

_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE18push_back_rollbackD2Ev.exit: ; preds = %bb.c, %.thread.i
  %i.t = phi i64 [ %.pre19, %bb.c ], [ %i.c, %.thread.i ]
  %i.u = phi i64 [ %.pre18, %bb.c ], [ %i.e, %.thread.i ] ; 3 uses
  %i.v = phi ptr [ %.pre, %bb.c ], [ %i.l, %.thread.i ] ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.x, ptr %i.w, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.y = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.u ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr %i.q, ptr %i.a, align 8, !tbaa !28
  %.not.i.i = icmp eq i64 %i.t, %i.u
  br i1 %.not.i.i, label %bb.d, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS9_JS6_EEEEEvPS6_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i, !prof !50

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS9_JS6_EEEEEvPS6_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i: ; preds = %_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE18push_back_rollbackD2Ev.exit
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28, !noalias !115
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !28, !noalias !115
  %i.ac = add i64 %i.u, 1
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !25, !noalias !115
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -16
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !noalias !115
  store ptr %i.q, ptr %i.z, align 8, !tbaa !28, !noalias !115
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7emplaceIJS6_EEENS0_12vec_iteratorIPS6_Lb0EEENSC_ISD_Lb1EEEDpOT_.exit

bb.d:                                             ; preds = %_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE18push_back_rollbackD2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS9_JS6_EEEEENS0_12vec_iteratorIPS6_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull %i.z, i64 noundef 1, ptr nonnull align 8 dereferenceable(8) %i.a)
  %.pre20 = load ptr, ptr %4, align 8, !tbaa !47
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7emplaceIJS6_EEENS0_12vec_iteratorIPS6_Lb0EEENSC_ISD_Lb1EEEDpOT_.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7emplaceIJS6_EEENS0_12vec_iteratorIPS6_Lb0EEENSC_ISD_Lb1EEEDpOT_.exit: ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS9_JS6_EEEEEvPS6_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i, %bb.d
  %i.af = phi ptr [ %i.z, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS9_JS6_EEEEEvPS6_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i ], [ %.pre20, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !26, !noalias !116
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !25, !noalias !116
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -16 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.af, %i.aj
  br i1 %.not2.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7emplaceIJS6_EEENS0_12vec_iteratorIPS6_Lb0EEENSC_ISD_Lb1EEEDpOT_.exit, %.lr.ph.i.i
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.af, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7emplaceIJS6_EEENS0_12vec_iteratorIPS6_Lb0EEENSC_ISD_Lb1EEEDpOT_.exit ] ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !28
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.am, %i.aj
  br i1 %.not.i.i7, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit: ; preds = %.lr.ph.i.i, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7emplaceIJS6_EEENS0_12vec_iteratorIPS6_Lb0EEENSC_ISD_Lb1EEEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.an, ptr %2, align 8, !tbaa !30, !noalias !117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !117
  call void @_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE6insertINS_13move_iteratorINS0_15repeat_iteratorIiEEEEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPiLb0EEENSB_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSB_5bool_ILb0EEESN_E4typeENSD_ISE_Lb1EEESH_SH_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dead_on_return %2, ptr nonnull align 4 dereferenceable(4) %1, i64 1, ptr noundef nonnull byval(%"class.boost::move_iterator") align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS9_JS6_EEEEENS0_12vec_iteratorIPS6_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46   ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !50

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.r = shl nuw i64 %i.o, 3
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.r, i64 noundef 8), !inline_history !3 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 6 uses
  %i.y = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ab ; 2 uses
  %i.ad = icmp ne ptr %i.x, %2
  %i.ae = icmp ne ptr %i.v, null
  %or.cond.i.i.i.i = and i1 %i.ae, %i.ad
  %i.af = icmp ne ptr %i.x, null
  %spec.select.i.i.i.i = and i1 %i.af, %or.cond.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.i.i, !prof !54

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 8 %i.x, i64 %i.aa, i1 false)
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 %i.aa
  br label %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.v, %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i) ]
  %i.ah = load ptr, ptr %4, align 8, !tbaa !28
  store ptr %i.ah, ptr %.0.i.i.i.i, align 8, !tbaa !28
  %i.ai = icmp ne ptr %2, %i.ac
  %i.aj = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.aj, %i.ai
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl20insert_emplace_proxyIS9_JS8_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, !prof !54

bb.h:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.al = ptrtoint ptr %i.ac to i64
  %i.am = sub i64 %i.al, %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull align 8 %2, i64 %i.am, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl20insert_emplace_proxyIS9_JS8_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl20insert_emplace_proxyIS9_JS8_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.i.i
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS9_JS6_EEEEEvPS6_mSF_mT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl20insert_emplace_proxyIS9_JS8_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !46
  %i.ap = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.aq = shl i64 %i.ao, 3
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef %i.an, i64 noundef %i.aq, i64 noundef 8)
          to label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS9_JS6_EEEEEvPS6_mSF_mT_.exit unwind label %bb.j, !inline_history !1

bb.j:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #16
  unreachable

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS9_JS6_EEEEEvPS6_mSF_mT_.exit: ; preds = %bb.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl20insert_emplace_proxyIS9_JS8_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  store ptr %i.v, ptr %i.w, align 8, !tbaa !26
  %.pn = load i64, ptr %i.d, align 8, !tbaa !51
  %storemerge = add i64 %.pn, %3
  store i64 %storemerge, ptr %i.d, align 8, !tbaa !51
  store i64 %i.o, ptr %i.a, align 8, !tbaa !55
  %i.aw = getelementptr inbounds i8, ptr %i.v, i64 %i.aa
  store ptr %i.aw, ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef %0) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container12length_errorE, i64 16), ptr %i.a, align 8, !tbaa !45
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container12length_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #17
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container12length_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
end_hunk_0
begin_hunk_1_@_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE33priv_insert_forward_non_templatedEmm:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = icmp ult i64 %i.e, %3
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw i64 %3, %i.e
  tail call void @_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE18priv_increase_poolEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 5 uses
  %.idx19 = shl i64 %2, 3                         ; 6 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.idx19 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46, !noalias !155
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !155 ; 3 uses
  %i.o = sub i64 %i.l, %i.n
  %.not.i.i = icmp ugt i64 %3, %i.o
  br i1 %.not.i.i, label %bb.m, label %bb.d, !prof !50

bb.d:                                             ; preds = %bb.c
  %.idx = shl i64 %i.n, 3                         ; 4 uses
  %i.p = getelementptr i8, ptr %i.i, i64 %.idx    ; 7 uses
  %i.q = icmp eq i64 %i.n, %2
  %.not15.i.i.i.i.i.i = icmp eq i64 %3, 0         ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %i.r = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.r, i1 false), !tbaa !28, !noalias !155
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.f:                                             ; preds = %bb.d
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.g, !prof !50

bb.g:                                             ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %.idx19           ; 2 uses
  %i.s = ashr exact i64 %gepdiff, 3               ; 7 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.s, %3
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.neg = mul i64 %3, -8                          ; 3 uses
  %.not13.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i, label %bb.i, !prof !156

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %.neg
  %i.u = shl i64 %3, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.t, i64 %i.u, i1 false), !noalias !155
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.v = add nsw i64 %.idx, %.neg
  %.not.i.i10.i.i.i.i = icmp eq i64 %i.v, %.idx19
  br i1 %.not.i.i10.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i, label %bb.j, !prof !50

bb.j:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i
  %i.w = sub i64 %.neg, %.idx19
  %gepdiff21 = add i64 %i.w, %.idx                ; 2 uses
  %i.x = ashr exact i64 %gepdiff21, 3
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.z, ptr align 8 %i.j, i64 %gepdiff21, i1 false), !noalias !155
  br label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %bb.j, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i11.i.i.i.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.aa = and i64 %3, 3
  %i.ab = shl i64 %n.vec, 3
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep, align 8, !tbaa !28, !noalias !155
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !28, !noalias !155
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i11.i.i.i.i, %middle.block
  %.07.i.i.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i11.i.i.i.i ], [ %i.aa, %middle.block ]
  %.046.i.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i11.i.i.i.i ], [ %i.ac, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i.i.i.i.i.i = phi i64 [ %i.ag, %scalar.ph ], [ %.07.i.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.046.i.i.i.i.i.i = phi ptr [ %i.ah, %scalar.ph ], [ %.046.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ag = add i64 %.07.i.i.i.i.i.i, -1            ; 2 uses
  store ptr null, ptr %.046.i.i.i.i.i.i, align 8, !tbaa !28, !noalias !155
  %i.ah = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 8
  %.not.i35.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i35.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph, !llvm.loop !149

bb.k:                                             ; preds = %bb.g
  %.not14.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i, label %bb.l, !prof !50

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull align 8 %i.j, i64 %gepdiff, i1 false), !noalias !155
  br label %.lr.ph.i39.i.i.i.i.i

.lr.ph.i39.i.i.i.i.i:                             ; preds = %bb.l, %bb.k
  %min.iters.check34 = icmp ult i64 %i.s, 4
  br i1 %min.iters.check34, label %scalar.ph33.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %.lr.ph.i39.i.i.i.i.i
  %n.vec36 = and i64 %i.s, -4                     ; 3 uses
  %i.aj = and i64 %i.s, 3
  %i.ak = shl nsw i64 %n.vec36, 3
  %i.al = getelementptr i8, ptr %i.j, i64 %i.ak
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph35
  %index38 = phi i64 [ 0, %vector.ph35 ], [ %index.next40, %vector.body37 ] ; 2 uses
  %i.am = shl i64 %index38, 3
  %next.gep39 = getelementptr i8, ptr %i.j, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep39, align 8, !tbaa !28, !noalias !155
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !28, !noalias !155
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next40, %n.vec36
  br i1 %i.ao, label %middle.block41, label %vector.body37, !llvm.loop !150

middle.block41:                                   ; preds = %vector.body37
  %cmp.n42 = icmp eq i64 %i.s, %n.vec36
  br i1 %cmp.n42, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i, label %scalar.ph33.preheader

scalar.ph33.preheader:                            ; preds = %.lr.ph.i39.i.i.i.i.i, %middle.block41
  %.07.i41.i.i.i.i.i.ph = phi i64 [ %i.s, %.lr.ph.i39.i.i.i.i.i ], [ %i.aj, %middle.block41 ]
  %.046.i42.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i39.i.i.i.i.i ], [ %i.al, %middle.block41 ]
  br label %scalar.ph33

scalar.ph33:                                      ; preds = %scalar.ph33.preheader, %scalar.ph33
  %.07.i41.i.i.i.i.i = phi i64 [ %i.ap, %scalar.ph33 ], [ %.07.i41.i.i.i.i.i.ph, %scalar.ph33.preheader ]
  %.046.i42.i.i.i.i.i = phi ptr [ %i.aq, %scalar.ph33 ], [ %.046.i42.i.i.i.i.i.ph, %scalar.ph33.preheader ] ; 2 uses
  %i.ap = add i64 %.07.i41.i.i.i.i.i, -1          ; 2 uses
  store ptr null, ptr %.046.i42.i.i.i.i.i, align 8, !tbaa !28, !noalias !155
  %i.aq = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 8
  %.not.i43.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i43.i.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i, label %scalar.ph33, !llvm.loop !151

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i: ; preds = %scalar.ph33, %middle.block41
  %i.ar = sub i64 %3, %i.s                        ; 5 uses
  %min.iters.check46 = icmp ult i64 %i.ar, 4
  br i1 %min.iters.check46, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i
  %n.vec48 = and i64 %i.ar, -4                    ; 3 uses
  %i.as = and i64 %i.ar, 3
  %i.at = shl i64 %n.vec48, 3
  %i.au = getelementptr i8, ptr %i.p, i64 %i.at
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.av = shl i64 %index50, 3
  %next.gep51 = getelementptr i8, ptr %i.p, i64 %i.av ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep51) ]
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !28, !noalias !155
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !28, !noalias !155
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ax, label %middle.block56, label %vector.body49, !llvm.loop !152

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.ar, %n.vec48
  br i1 %cmp.n57, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i, %middle.block56
  %.017.i.i.i.i.i.i.i.ph = phi i64 [ %i.ar, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i ], [ %i.as, %middle.block56 ]
  %.01416.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i ], [ %i.au, %middle.block56 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %5, %.lr.ph.i.i.i.i.i.i.i ], [ %.017.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.01416.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.01416.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %5 = add i64 %.017.i.i.i.i.i.i.i, -1            ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i.i) ]
  store ptr null, ptr %.01416.i.i.i.i.i.i.i, align 8, !tbaa !28, !noalias !155
  %i.ay = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 8
  %.not.i.i45.i.i.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i45.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !153

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %scalar.ph, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %middle.block56, %.lr.ph.i.i.i.i.i.i.preheader, %bb.f, %bb.e
  %i.az = load i64, ptr %i.m, align 8, !tbaa !51, !noalias !155
  %i.ba = add i64 %i.az, %3
  store i64 %i.ba, ptr %i.m, align 8, !tbaa !51, !noalias !155
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

bb.m:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS9_EEEENS0_12vec_iteratorIPS6_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %i.j, i64 noundef %3, ptr nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit: ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !26  ; 5 uses
  %.not = icmp eq ptr %i.bb, %i.i
  br i1 %.not, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %.idx19
  %.not2.i = icmp eq i64 %2, 0
  br i1 %.not2.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.bd = add i64 %.idx19, -8                     ; 2 uses
  %i.be = lshr exact i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1
  %xtraiter = and i64 %i.bf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.bg = phi ptr [ %i.bi, %.lr.ph.i.prol ], [ %i.bb, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !28
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !154

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi ptr [ %i.bb, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i.prol ]
  %i.bj = icmp ult i64 %i.bd, 56
  br i1 %i.bj, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.bk = phi ptr [ %i.ca, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !28
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !28
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !28
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !28
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !28
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 40 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !28
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 48 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !28
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !28
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !48
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.ca, %i.bc
  br i1 %.not.i.7, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit, label %.lr.ph.i, !llvm.loop !2

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %2
  store ptr %i.cb, ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEERSA_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, 3                            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %bb.d, label %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i, !prof !50

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i: ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.i = shl nuw i64 %i.c, 3
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.i, i64 noundef 8), !inline_history !157 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 4 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.q = icmp ne i64 %i.p, 0
  %i.r = icmp ne ptr %i.m, null
  %or.cond.i.i.i.i.i.i = and i1 %i.r, %i.q
  %i.s = icmp ne ptr %i.o, null
  %spec.select.i.i.i.i.i.i = and i1 %i.s, %or.cond.i.i.i.i.i.i
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.thread.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.i.i, !prof !54

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.thread.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 8 %i.o, i64 %.idx.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !26
  br label %bb.e

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.thread.i.i
  %i.t = phi ptr [ %.pre.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.thread.i.i ], [ %i.o, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.i.i ]
  %i.u = load i64, ptr %i.d, align 8, !tbaa !46
  %i.v = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.w = shl i64 %i.u, 3
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.t, i64 noundef %i.w, i64 noundef 8)
          to label %._ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.sink.split.i_crit_edge unwind label %bb.f, !inline_history !1

._ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.sink.split.i_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !25
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7reserveEm.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #16
  unreachable

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7reserveEm.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.i.i, %._ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.sink.split.i_crit_edge
  %.pre = phi i64 [ %.pre.pre, %._ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.sink.split.i_crit_edge ], [ %i.p, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.i.i ] ; 5 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !26
  store i64 %i.c, ptr %i.d, align 8, !tbaa !55
  %i.ac = icmp ugt i64 %.pre, 3
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7reserveEm.exit
  store i64 3, ptr %i.a, align 8, !tbaa !51
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE6resizeEm.exit

bb.h:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7reserveEm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.pre ; 2 uses
  %i.ag = sub nuw nsw i64 3, %.pre                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ah = sub nsw i64 %i.c, %.pre
  %.not.i.i.i8 = icmp ugt i64 %i.ag, %i.ah
  br i1 %.not.i.i.i8, label %bb.j, label %bb.i, !prof !50

.thread:                                          ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %.not.i.i.i817 = icmp ult i64 %i.e, 3
  br i1 %.not.i.i.i817, label %bb.j, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.sink.split.i.i.i.i.i, !prof !50

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre, 3
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.sink.split.i.i.i.i.i, !prof !160

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.sink.split.i.i.i.i.i: ; preds = %.thread, %bb.i
  %i.ak = phi ptr [ %i.af, %bb.i ], [ %i.aj, %.thread ]
  %i.al = phi i64 [ %i.ag, %bb.i ], [ 3, %.thread ] ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ak, i8 0, i64 %i.am, i1 false), !noalias !161
  %.pre.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !161
  %i.an = add i64 %.pre.i.i.i.i, %i.al
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i: ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.sink.split.i.i.i.i.i, %bb.i
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS9_EEEENS0_12vec_iteratorIPS6_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a

bb.i:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.am = ptrtoint ptr %i.ac to i64
  %i.an = sub i64 %i.am, %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 8 %2, i64 %i.an, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl32insert_value_initialized_n_proxyIS9_EEEEvRT_T0_SG_SG_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl32insert_value_initialized_n_proxyIS9_EEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %bb.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS9_EEEEvPS6_mSF_mT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl32insert_value_initialized_n_proxyIS9_EEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !46
  %i.aq = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.ar = shl i64 %i.ap, 3
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.ao, i64 noundef %i.ar, i64 noundef 8)
          to label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS9_EEEEvPS6_mSF_mT_.exit unwind label %bb.k, !inline_history !1

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #16
  unreachable

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS9_EEEEvPS6_mSF_mT_.exit: ; preds = %bb.j, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl32insert_value_initialized_n_proxyIS9_EEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  store ptr %i.v, ptr %i.w, align 8, !tbaa !26
  %.pn = load i64, ptr %i.d, align 8, !tbaa !51
  %storemerge = add i64 %.pn, %3
  store i64 %storemerge, ptr %i.d, align 8, !tbaa !51
  store i64 %i.o, ptr %i.a, align 8, !tbaa !55
  %i.ax = getelementptr inbounds i8, ptr %i.v, i64 %i.aa
  store ptr %i.ax, ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl24allocator_version_traitsINS0_3pmr21polymorphic_allocatorINS0_20stable_vector_detail4nodeIPiEEEELj1EE28allocate_individual_rollbackD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN5boost9container3dtl24allocator_version_traitsINS0_3pmr21polymorphic_allocatorINS0_20stable_vector_detail4nodeIPiEEEELj1EE21deallocate_individualERS9_RNS1_31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEES8_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !182, !nonnull !62, !align !183
  %i.d = load i64, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %.not.i1 = icmp eq i64 %i.d, 0
  br i1 %.not.i1, label %_ZN5boost9container3dtl24allocator_version_traitsINS0_3pmr21polymorphic_allocatorINS0_20stable_vector_detail4nodeIPiEEEELj1EE21deallocate_individualERS9_RNS1_31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEES8_EE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !184
  br label %bb.c

_ZN5boost9container3pmr21polymorphic_allocatorINS0_20stable_vector_detail4nodeIPiEEE10deallocateEPS6_m.exit.i: ; preds = %bb.c
  %i.g = add i64 %.0.i3, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN5boost9container3dtl24allocator_version_traitsINS0_3pmr21polymorphic_allocatorINS0_20stable_vector_detail4nodeIPiEEEELj1EE21deallocate_individualERS9_RNS1_31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEES8_EE.exit, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph, %_ZN5boost9container3pmr21polymorphic_allocatorINS0_20stable_vector_detail4nodeIPiEEE10deallocateEPS6_m.exit.i
  %.0.i3 = phi i64 [ %i.d, %.lr.ph ], [ %i.g, %_ZN5boost9container3pmr21polymorphic_allocatorINS0_20stable_vector_detail4nodeIPiEEE10deallocateEPS6_m.exit.i ]
  %.sroa.0.0.i2 = phi ptr [ %i.f, %.lr.ph ], [ %i.h, %_ZN5boost9container3pmr21polymorphic_allocatorINS0_20stable_vector_detail4nodeIPiEEE10deallocateEPS6_m.exit.i ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.0.0.i2, align 8, !tbaa !40
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %.sroa.0.0.i2, i64 noundef 16, i64 noundef 8)
          to label %_ZN5boost9container3pmr21polymorphic_allocatorINS0_20stable_vector_detail4nodeIPiEEE10deallocateEPS6_m.exit.i unwind label %bb.d, !llvm.loop !0, !inline_history !1

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #16
  unreachable

_ZN5boost9container3dtl24allocator_version_traitsINS0_3pmr21polymorphic_allocatorINS0_20stable_vector_detail4nodeIPiEEEELj1EE21deallocate_individualERS9_RNS1_31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEES8_EE.exit: ; preds = %_ZN5boost9container3pmr21polymorphic_allocatorINS0_20stable_vector_detail4nodeIPiEEE10deallocateEPS6_m.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS9_EEEENS0_12vec_iteratorIPS6_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46   ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !50

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.r = shl nuw i64 %i.o, 3
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.r, i64 noundef 8), !inline_history !3 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 6 uses
  %i.y = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ab ; 2 uses
  %i.ad = icmp ne ptr %i.x, %2
  %i.ae = icmp ne ptr %i.v, null
  %or.cond.i.i.i.i = and i1 %i.ae, %i.ad
  %i.af = icmp ne ptr %i.x, null
  %spec.select.i.i.i.i = and i1 %i.af, %or.cond.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.i.i, !prof !54

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 8 %i.x, i64 %i.aa, i1 false)
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 %i.aa
  br label %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.v, %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 5 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.i.i
  %.pre.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !28 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.ah = and i64 %3, 3
  %i.ai = shl i64 %n.vec, 3
  %i.aj = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ai
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ak ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !28
  store <2 x ptr> %broadcast.splat, ptr %i.al, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block
  %.017.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.preheader.i.i.i.i ], [ %i.ah, %middle.block ]
  %.01416.i.i.i.i.ph = phi ptr [ %.0.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %5, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %5 = add i64 %.017.i.i.i.i, -1                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  store ptr %.pre.i.i.i.i, ptr %.01416.i.i.i.i, align 8, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !186

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.i.i
  %i.ao = icmp ne ptr %2, %i.ac
  %i.ap = icmp ne ptr %.0.i.i.i.i, null
  %or.cond.i.i17.i.i = and i1 %i.ao, %i.ap
  %i.aq = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.aq, %or.cond.i.i17.i.i
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl21insert_n_copies_proxyIS9_EEEEvRT_T0_SG_SG_T1_mT2_.exit.i, !prof !54

bb.h:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.i.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.as = ptrtoint ptr %i.ac to i64
  %i.at = sub i64 %i.as, %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 8 %2, i64 %i.at, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl21insert_n_copies_proxyIS9_EEEEvRT_T0_SG_SG_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl21insert_n_copies_proxyIS9_EEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %bb.h, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mSF_mT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl21insert_n_copies_proxyIS9_EEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.av = load i64, ptr %i.a, align 8, !tbaa !46
  %i.aw = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.ax = shl i64 %i.av, 3
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef %i.au, i64 noundef %i.ax, i64 noundef 8)
          to label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mSF_mT_.exit unwind label %bb.j, !inline_history !1

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #16
  unreachable

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mSF_mT_.exit: ; preds = %bb.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl21insert_n_copies_proxyIS9_EEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  store ptr %i.v, ptr %i.w, align 8, !tbaa !26
  %.pn = load i64, ptr %i.d, align 8, !tbaa !51
  %storemerge = add i64 %.pn, %3
  store i64 %storemerge, ptr %i.d, align 8, !tbaa !51
  store i64 %i.o, ptr %i.a, align 8, !tbaa !55
  %i.bd = getelementptr inbounds i8, ptr %i.v, i64 %i.aa
  store ptr %i.bd, ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !43}
!1 = distinct !{null}
!2 = distinct !{!2, !43}
!3 = distinct !{null, null, null, null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSN5boost9container3pmr15memory_resourceE", !13, i64 0}
!15 = !{!"_ZTSN5boost9container3pmr21polymorphic_allocatorINS0_20stable_vector_detail4nodeIPiEEEE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"_ZTSN5boost9container3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEE", !14, i64 0}
!18 = !{!17, !14, i64 0}
!19 = !{!10, !10, i64 0}
!20 = !{!"any p2 pointer", !13, i64 0}
!21 = !{!"p2 _ZTSN5boost9container20stable_vector_detail9node_baseIPvEE", !20, i64 0}
!22 = !{!"long", !9, i64 0}
!23 = !{!"_ZTSN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEEE", !17, i64 0, !21, i64 8, !22, i64 16, !22, i64 24}
!24 = !{!"_ZTSN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvEE", !23, i64 0}
!25 = !{!24, !22, i64 16}
!26 = !{!23, !21, i64 8}
!27 = !{!"p1 _ZTSN5boost9container20stable_vector_detail9node_baseIPvEE", !13, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"_ZTSN5boost9container22stable_vector_iteratorIPiLb1EEE", !27, i64 0}
!30 = !{!29, !27, i64 0}
!31 = !{!"p1 _ZTSN5boost9intrusive10slist_nodeIPvEE", !13, i64 0}
!32 = !{!"_ZTSN5boost9intrusive10slist_nodeIPvEE", !31, i64 0}
!33 = !{!"_ZTSN5boost9intrusive6detail21default_header_holderINS0_17slist_node_traitsIPvEEEE", !32, i64 0}
!34 = !{!"_ZTSN5boost9intrusive23header_holder_plus_lastINS0_6detail21default_header_holderINS0_17slist_node_traitsIPvEEEEPNS0_10slist_nodeIS5_EELb1EEE", !33, i64 0, !31, i64 8}
!35 = !{!34, !31, i64 8}
!36 = !{!"_ZTSN5boost9container20stable_vector_detail9node_baseIPvEE", !21, i64 0}
!37 = !{!"_ZTSN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE10ebo_holderE", !15, i64 0, !22, i64 8, !36, i64 16}
!38 = !{!"_ZTSN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEEE", !37, i64 0, !24, i64 24}
!39 = !{!38, !22, i64 8}
!40 = !{!32, !31, i64 0}
!41 = !{!"_ZTSN5boost9intrusive6detail11size_holderILb1EmvEE", !22, i64 0}
!42 = !{!41, !22, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"vtable pointer", !8, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!23, !22, i64 24}
!47 = !{!21, !21, i64 0}
!48 = !{!36, !21, i64 0}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!51 = !{!23, !22, i64 16}
!52 = !{!"_ZTSN5boost9container22stable_vector_iteratorIPiLb0EEE", !27, i64 0}
!53 = !{!52, !27, i64 0}
!54 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!55 = !{!22, !22, i64 0}
!56 = !{!"_ZTSN5boost9container12vec_iteratorIPPNS0_20stable_vector_detail9node_baseIPvEELb0EEE", !21, i64 0}
!57 = !{!56, !21, i64 0}
!58 = !{!"_ZTSSt9exception"}
!59 = !{!"p1 omnipotent char", !13, i64 0}
!60 = !{!"_ZTSN5boost9container9exceptionE", !58, i64 0, !59, i64 8}
!61 = !{!60, !59, i64 8}
!62 = !{}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = !{!"p1 _ZTSN5boost9container3pmr21polymorphic_allocatorINS0_20stable_vector_detail4nodeIPiEEEE", !13, i64 0}
!66 = !{!"p1 _ZTSN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPiEEEE", !13, i64 0}
!67 = !{!"_ZTSN5boost9container3dtl24allocator_version_traitsINS0_3pmr21polymorphic_allocatorINS0_20stable_vector_detail4nodeIPiEEEELj1EE28allocate_individual_rollbackE", !65, i64 0, !66, i64 8}
!68 = !{!67, !66, i64 8}
!69 = distinct !{!69, !"_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE6cbeginEv"}
!70 = distinct !{!70, !69, !"_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE6cbeginEv: argument 0"}
!71 = distinct !{!71, !"_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE5beginEv"}
!72 = distinct !{!72, !71, !"_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE5beginEv: argument 0"}
!73 = distinct !{!73, !"_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE4cendEv"}
!74 = distinct !{!74, !73, !"_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE4cendEv: argument 0"}
!75 = distinct !{!75, !"_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE3endEv"}
!76 = distinct !{!76, !75, !"_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE3endEv: argument 0"}
!77 = !{!70}
!78 = !{!72}
!79 = !{!72, !70}
!80 = !{!76, !74}
!81 = distinct !{!81, !"_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE6cbeginEv"}
!82 = distinct !{!82, !81, !"_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE6cbeginEv: argument 0"}
!83 = distinct !{!83, !"_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE5beginEv"}
!84 = distinct !{!84, !83, !"_ZNK5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE5beginEv: argument 0"}
!85 = distinct !{!85, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE5beginEv"}
!86 = distinct !{!86, !85, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE5beginEv: argument 0"}
!87 = distinct !{!87, !49}
!88 = distinct !{!88, !43}
!89 = distinct !{!89, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESD_"}
!90 = distinct !{!90, !89, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE5eraseENS0_12vec_iteratorIPS6_Lb1EEESD_: argument 0"}
!91 = distinct !{!91, !"_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE14get_fix_up_endERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEE"}
!92 = distinct !{!92, !91, !"_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE14get_fix_up_endERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEE: argument 0"}
!93 = distinct !{!93, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE3endEv"}
!94 = distinct !{!94, !93, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE3endEv: argument 0"}
!95 = !{!84, !82}
!96 = !{!86}
!97 = !{!90}
!98 = !{!94, !92}
!99 = distinct !{!99, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE3endEv"}
!100 = distinct !{!100, !99, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE3endEv: argument 0"}
!101 = distinct !{!101, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE3endEv"}
!102 = distinct !{!102, !101, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE3endEv: argument 0"}
!103 = distinct !{!103, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7emplaceIJS6_EEENS0_12vec_iteratorIPS6_Lb0EEENSC_ISD_Lb1EEEDpOT_"}
!104 = distinct !{!104, !103, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7emplaceIJS6_EEENS0_12vec_iteratorIPS6_Lb0EEENSC_ISD_Lb1EEEDpOT_: argument 0"}
!105 = distinct !{!105, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE25priv_insert_forward_rangeINS0_3dtl20insert_emplace_proxyIS9_JS6_EEEEENS0_12vec_iteratorIPS6_Lb0EEERKSG_mT_"}
!106 = distinct !{!106, !105, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE25priv_insert_forward_rangeINS0_3dtl20insert_emplace_proxyIS9_JS6_EEEEENS0_12vec_iteratorIPS6_Lb0EEERKSG_mT_: argument 0"}
!107 = distinct !{!107, !"_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE14get_fix_up_endERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEE"}
!108 = distinct !{!108, !107, !"_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE14get_fix_up_endERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEE: argument 0"}
!109 = distinct !{!109, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE3endEv"}
!110 = distinct !{!110, !109, !"_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE3endEv: argument 0"}
!111 = distinct !{!111, !"_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE11priv_insertENS0_22stable_vector_iteratorIPiLb1EEEOi"}
!112 = distinct !{!112, !111, !"_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE11priv_insertENS0_22stable_vector_iteratorIPiLb1EEEOi: argument 0"}
!113 = !{!100}
end_hunk_2
