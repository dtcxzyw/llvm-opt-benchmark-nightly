Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/colorspace?download=true
inline.NumInlined: 2523
inline.NumDeleted: 1056
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNSt3mapIN2cv3ccm23ChromaticAdaptationTypeESt6vectorINS0_3MatESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEEC2ESt16initializer_listISB_ERKS8_RKSC_:bb.a
  br i1 %i.l, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.m = load i32, ptr %.07.i, align 4, !tbaa !154 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.o = load i32, ptr %i.n, align 4, !tbaa !154  ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o                  ; 2 uses
  %.in.v.i.i = select i1 %i.p, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !110 ; 2 uses
  %.not.i.i8 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i8, label %._crit_edge.i.i, label %bb.d, !llvm.loop !339

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.p, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.r = icmp eq ptr %.019.lcssa29.i.i, %i.q
  br i1 %i.r, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.s = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #33
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81.i = load i32, ptr %.phi.trans.insert80.i, align 4, !tbaa !154
  %.pre82.i = load i32, ptr %.07.i, align 4, !tbaa !154
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.t = phi i32 [ %.pre82.i, %bb.e ], [ %i.m, %._crit_edge.i.i ]
  %i.u = phi i32 [ %.pre81.i, %bb.e ], [ %i.o, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %select.unfold, label %_ZNSt8_Rb_treeIN2cv3ccm23ChromaticAdaptationTypeESt4pairIKS2_St6vectorINS0_3MatESaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.f, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.h, %bb.b ], [ %.019.lcssa28.i.i, %bb.f ]
  %i.w = invoke ptr @_ZNSt8_Rb_treeIN2cv3ccm23ChromaticAdaptationTypeESt4pairIKS2_St6vectorINS0_3MatESaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef null, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %.07.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNSt8_Rb_treeIN2cv3ccm23ChromaticAdaptationTypeESt4pairIKS2_St6vectorINS0_3MatESaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i unwind label %bb.g ; 0 uses

_ZNSt8_Rb_treeIN2cv3ccm23ChromaticAdaptationTypeESt4pairIKS2_St6vectorINS0_3MatESaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i: ; preds = %bb.f, %select.unfold
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !340

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeIN2cv3ccm23ChromaticAdaptationTypeESt4pairIKS2_St6vectorINS0_3MatESaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void

bb.g:                                             ; preds = %select.unfold
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN2cv3ccm23ChromaticAdaptationTypeESt4pairIKS2_St6vectorINS0_3MatESaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #31
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIKN2cv3ccm23ChromaticAdaptationTypeESt6vectorINS0_3MatESaIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #31
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !88
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #30
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIN2cv3ccm23ChromaticAdaptationTypeESt6vectorINS0_3MatESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  invoke void @_ZNSt8_Rb_treeIN2cv3ccm23ChromaticAdaptationTypeESt4pairIKS2_St6vectorINS0_3MatESaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN2cv3ccm23ChromaticAdaptationTypeESt4pairIKS2_St6vectorINS0_3MatESaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #32
  unreachable

_ZNSt8_Rb_treeIN2cv3ccm23ChromaticAdaptationTypeESt4pairIKS2_St6vectorINS0_3MatESaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

declare void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

declare void @_ZN2cv3Mat4diagERKS0_(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

declare void @_ZN2cvdvERKNS_7MatExprES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3ccm3XYZ3getENS0_13IllumObserverE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef align 8 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.167", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.157", align 1    ; 3 uses
  %4 = alloca %"class.std::tuple.167", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.157", align 1    ; 3 uses
  %6 = alloca %"class.std::allocator.170", align 1 ; 3 uses
  %7 = alloca %"class.std::tuple.167", align 8    ; 4 uses
  %8 = alloca %"class.std::tuple.157", align 1    ; 3 uses
  %9 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %i.a = load atomic i8, ptr @_ZGVZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs) #31
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8), align 8, !tbaa !144
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 16), align 8, !tbaa !109
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 24), align 8, !tbaa !145
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 32), align 8, !tbaa !146
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 40), align 8, !tbaa !147
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEED2Ev, ptr nonnull @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, ptr nonnull @__dso_handle) #31 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 16), align 8, !tbaa !109 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.d ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8), %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = tail call noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3XYZEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !343

_ZNKSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3XYZEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8)
  br i1 %i.h, label %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread, label %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit

_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit: ; preds = %_ZNKSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3XYZEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = tail call noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.i)
  br i1 %i.j, label %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 16), align 8, !tbaa !109 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.k, %bb.e ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8), %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.m = tail call noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.19.i.i.i.i = select i1 %i.m, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !344

_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8)
  br i1 %i.n, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.p = tail call noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.o)
  br i1 %i.p, label %.critedge.i, label %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEEixERS9_.exit

.critedge.i:                                      ; preds = %bb.f, %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i, %bb.e
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8), %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8), %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store ptr %1, ptr %7, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.q = call ptr @_ZNSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3XYZEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEEixERS9_.exit

_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEEixERS9_.exit: ; preds = %bb.f, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.q, %.critedge.i ], [ %.19.i.i.i.i, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162  ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !64
  store <2 x ptr> %i.u, ptr %0, align 8, !tbaa !64
  %.not.i.i.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i1, label %_ZNSt10shared_ptrIN2cv3ccm3XYZEEC2ERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEEixERS9_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i.i.i2 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.v, align 4, !tbaa !80
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !80
  br label %_ZNSt10shared_ptrIN2cv3ccm3XYZEEC2ERKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN2cv3ccm3XYZEEC2ERKS3_.exit

_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3XYZEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i, %bb.d, %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !349
  store ptr null, ptr %9, align 8, !tbaa !351, !alias.scope !349
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2cv3ccm3XYZESaIvEJRNS5_13IllumObserverEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %6, ptr noundef nonnull align 8 dereferenceable(72) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !349
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 16), align 8, !tbaa !109 ; 2 uses
  %.not10.i.i.i.i3 = icmp eq ptr %i.ab, null
  br i1 %.not10.i.i.i.i3, label %.critedge.i14, label %.lr.ph.i.i.i.i4

.lr.ph.i.i.i.i4:                                  ; preds = %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread, %.noexc
  %.012.i.i.i.i5 = phi ptr [ %.1.i.i.i.i10, %.noexc ], [ %i.ab, %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread ] ; 3 uses
  %.0811.i.i.i.i6 = phi ptr [ %.19.i.i.i.i7, %.noexc ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8), %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i5, i64 32
  %i.ad = invoke noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i.i4
  %.19.i.i.i.i7 = select i1 %i.ad, ptr %.0811.i.i.i.i6, ptr %.012.i.i.i.i5 ; 5 uses
  %.1.in.v.i.i.i.i8 = select i1 %i.ad, i64 24, i64 16
  %.1.in.i.i.i.i9 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i5, i64 %.1.in.v.i.i.i.i8
  %.1.i.i.i.i10 = load ptr, ptr %.1.in.i.i.i.i9, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %.1.i.i.i.i10, null
  br i1 %.not.i.i.i.i11, label %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i12, label %.lr.ph.i.i.i.i4, !llvm.loop !344

_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i12: ; preds = %.noexc
  %i.ae = icmp eq ptr %.19.i.i.i.i7, getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8)
  br i1 %i.ae, label %.critedge.i14, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i12
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i7, i64 32
  %i.ag = invoke noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.af)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.j
  br i1 %i.ag, label %.critedge.i14, label %bb.k

.critedge.i14:                                    ; preds = %.noexc16, %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i12, %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread
  %.08.lcssa.i.i.i11.i15 = phi ptr [ %.19.i.i.i.i7, %.noexc16 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8), %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i12 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8), %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %1, ptr %4, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.ah = invoke ptr @_ZNSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3XYZEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, ptr %.08.lcssa.i.i.i11.i15, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %.critedge.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.k

bb.k:                                             ; preds = %.noexc17, %.noexc16
  %.sroa.06.0.i13 = phi ptr [ %i.ah, %.noexc17 ], [ %.19.i.i.i.i7, %.noexc16 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i13, i64 104
  %i.aj = load ptr, ptr %9, align 8, !tbaa !351
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !351
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i13, i64 112 ; 3 uses
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !162 ; 4 uses
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i.i19, label %_ZNSt10shared_ptrIN2cv3ccm3XYZEEaSERKS3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not7.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i.i.i20 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !80
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !80
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !162
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %i.as = phi ptr [ %i.am, %bb.l ], [ %i.am, %bb.n ], [ %.pr.pre.i.i.i, %bb.o ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.at, align 8, !tbaa !165
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !166
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #31, !inline_history !347
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #31, !inline_history !347
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i9.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i9.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !80
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.aw, %bb.s ], [ %i.bg, %bb.t ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.u, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !34

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.q, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !162
  br label %_ZNSt10shared_ptrIN2cv3ccm3XYZEEaSERKS3_.exit

_ZNSt10shared_ptrIN2cv3ccm3XYZEEaSERKS3_.exit:    ; preds = %bb.k, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 16), align 8, !tbaa !109 ; 2 uses
  %.not10.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not10.i.i.i.i21, label %.critedge.i32, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZNSt10shared_ptrIN2cv3ccm3XYZEEaSERKS3_.exit, %.noexc34
  %.012.i.i.i.i23 = phi ptr [ %.1.i.i.i.i28, %.noexc34 ], [ %i.bi, %_ZNSt10shared_ptrIN2cv3ccm3XYZEEaSERKS3_.exit ] ; 3 uses
  %.0811.i.i.i.i24 = phi ptr [ %.19.i.i.i.i25, %.noexc34 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8), %_ZNSt10shared_ptrIN2cv3ccm3XYZEEaSERKS3_.exit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i23, i64 32
  %i.bk = invoke noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc34:                                         ; preds = %.lr.ph.i.i.i.i22
  %.19.i.i.i.i25 = select i1 %i.bk, ptr %.0811.i.i.i.i24, ptr %.012.i.i.i.i23 ; 5 uses
  %.1.in.v.i.i.i.i26 = select i1 %i.bk, i64 24, i64 16
  %.1.in.i.i.i.i27 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i23, i64 %.1.in.v.i.i.i.i26
  %.1.i.i.i.i28 = load ptr, ptr %.1.in.i.i.i.i27, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i.i29 = icmp eq ptr %.1.i.i.i.i28, null
  br i1 %.not.i.i.i.i29, label %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i30, label %.lr.ph.i.i.i.i22, !llvm.loop !344

_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i30: ; preds = %.noexc34
  %i.bl = icmp eq ptr %.19.i.i.i.i25, getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8)
  br i1 %i.bl, label %.critedge.i32, label %bb.v

bb.v:                                             ; preds = %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i30
  %i.bm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i25, i64 32
  %i.bn = invoke noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.bm)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %bb.v
  br i1 %i.bn, label %.critedge.i32, label %bb.w

.critedge.i32:                                    ; preds = %.noexc35, %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i30, %_ZNSt10shared_ptrIN2cv3ccm3XYZEEaSERKS3_.exit
  %.08.lcssa.i.i.i11.i33 = phi ptr [ %.19.i.i.i.i25, %.noexc35 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8), %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i30 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, i64 8), %_ZNSt10shared_ptrIN2cv3ccm3XYZEEaSERKS3_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %1, ptr %2, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.bo = invoke ptr @_ZNSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3XYZEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3ccm3XYZ3getENS0_13IllumObserverEE6xyz_cs, ptr %.08.lcssa.i.i.i11.i33, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %.critedge.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.w

bb.w:                                             ; preds = %.noexc36, %.noexc35
  %.sroa.06.0.i31 = phi ptr [ %i.bo, %.noexc36 ], [ %.19.i.i.i.i25, %.noexc35 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i31, i64 104
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i31, i64 112
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !162 ; 2 uses
  %i.bs = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !64
  store <2 x ptr> %i.bs, ptr %0, align 8, !tbaa !64
  %.not.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i38, label %_ZNSt10shared_ptrIN2cv3ccm3XYZEEC2ERKS3_.exit40, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i.i.i39 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i39, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !80
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !80
  br label %_ZNSt10shared_ptrIN2cv3ccm3XYZEEC2ERKS3_.exit40

bb.z:                                             ; preds = %bb.x
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN2cv3ccm3XYZEEC2ERKS3_.exit40

_ZNSt10shared_ptrIN2cv3ccm3XYZEEC2ERKS3_.exit40:  ; preds = %bb.w, %bb.y, %bb.z
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !162 ; 8 uses
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv3ccm3XYZELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10shared_ptrIN2cv3ccm3XYZEEC2ERKS3_.exit40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.bz, align 8, !tbaa !165
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !166
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !29
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #31, !inline_history !348
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !29
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #31, !inline_history !348
  br label %_ZNSt12__shared_ptrIN2cv3ccm3XYZELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i.i41 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i41, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !80
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i = phi i32 [ %i.cc, %bb.ad ], [ %i.cm, %bb.ae ]
  %i.cn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cn, label %bb.af, label %_ZNSt12__shared_ptrIN2cv3ccm3XYZELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #31
  br label %_ZNSt12__shared_ptrIN2cv3ccm3XYZELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3ccm3XYZELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN2cv3ccm3XYZEEC2ERKS3_.exit40, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %_ZNSt10shared_ptrIN2cv3ccm3XYZEEC2ERKS3_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i22, %.lr.ph.i.i.i.i4, %.critedge.i32, %bb.v, %.critedge.i14, %bb.j
  %lpad.loopexit.split-lp62 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv3ccm3XYZELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  resume { ptr, i32 } %lpad.loopexit.split-lp62

_ZNSt10shared_ptrIN2cv3ccm3XYZEEC2ERKS3_.exit:    ; preds = %bb.i, %bb.h, %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEEixERS9_.exit, %_ZNSt12__shared_ptrIN2cv3ccm3XYZELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3XYZEESt4lessIS2_ESaISt4pairIKS2_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  invoke void @_ZNSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3XYZEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3XYZEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #32
  unreachable

_ZNSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3XYZEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv3ccm3XYZELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !165
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !166
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !4
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !4
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !80
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3ccm3LabC2ENS0_13IllumObserverE(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 8)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.cv::ccm::IllumObserver", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.cv::ccm::Operations", align 8 ; 10 uses
  %5 = alloca [1 x %"class.cv::ccm::Operation"], align 8 ; 15 uses
  %6 = alloca %"class.std::function", align 8     ; 9 uses
  %7 = alloca %"class.cv::ccm::Operations", align 8 ; 9 uses
  %8 = alloca [1 x %"class.cv::ccm::Operation"], align 8 ; 15 uses
  %9 = alloca %"class.std::function", align 8     ; 9 uses
  call void @_ZN2cv3ccm13IllumObserverC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 3, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.d, align 1, !tbaa !104
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv3ccm14ColorSpaceBaseE, i64 16), ptr %0, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN2cv3ccm13IllumObserverC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc32 unwind label %bb.ad
end_hunk_0
begin_hunk_1_@_ZN2cv3ccm3Lab5tosrcERNS_3MatE:bb.a
  %i.aj = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ai, i64 1
  %i.al = fadd <2 x double> %i.ak, <double 1.600000e+01, double -0.000000e+00>
  %i.am = fdiv <2 x double> %i.al, <double 1.160000e+02, double 2.000000e+02> ; 3 uses
  %i.an = extractelement <2 x double> %i.am, i64 0 ; 4 uses
  %i.ao = invoke fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv3ccmL14getIlluminantsERKNS0_13IllumObserverE(ptr noundef nonnull align 8 dereferenceable(72) %i.ad)
          to label %.noexc20.i unwind label %bb.u

.noexc20.i:                                       ; preds = %bb.h
  %i.ap = fdiv double %i.ag, 5.000000e+02
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !71, !noalias !379 ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !68, !noalias !379
  %i.as = fadd double %i.an, %i.ap                ; 3 uses
  %i.at = fcmp ogt double %i.as, f0x3FCA7B9611A7B961
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc20.i
  %i.au = call double @pow(double noundef %i.as, double noundef 3.000000e+00) #31, !noalias !379
  br label %"_ZZN2cv3ccm3Lab5tolabERKNS_3VecIdLi3EEEENK3$_0clEd.exit.i.i.i"

bb.j:                                             ; preds = %.noexc20.i
  %i.av = fadd double %i.as, f0xBFC1A7B9611A7B96
  %i.aw = fdiv double %i.av, f0x401F25ED097B425E
  br label %"_ZZN2cv3ccm3Lab5tolabERKNS_3VecIdLi3EEEENK3$_0clEd.exit.i.i.i"

"_ZZN2cv3ccm3Lab5tolabERKNS_3VecIdLi3EEEENK3$_0clEd.exit.i.i.i": ; preds = %bb.j, %bb.i
  %i.ax = phi double [ %i.au, %bb.i ], [ %i.aw, %bb.j ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !68, !noalias !379
  %i.ba = fcmp ogt double %i.an, f0x3FCA7B9611A7B961
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %"_ZZN2cv3ccm3Lab5tolabERKNS_3VecIdLi3EEEENK3$_0clEd.exit.i.i.i"
  %i.bb = call double @pow(double noundef %i.an, double noundef 3.000000e+00) #31, !noalias !379
  br label %"_ZZN2cv3ccm3Lab5tolabERKNS_3VecIdLi3EEEENK3$_0clEd.exit12.i.i.i"

bb.l:                                             ; preds = %"_ZZN2cv3ccm3Lab5tolabERKNS_3VecIdLi3EEEENK3$_0clEd.exit.i.i.i"
  %i.bc = fadd double %i.an, f0xBFC1A7B9611A7B96
  %i.bd = fdiv double %i.bc, f0x401F25ED097B425E
  br label %"_ZZN2cv3ccm3Lab5tolabERKNS_3VecIdLi3EEEENK3$_0clEd.exit12.i.i.i"

"_ZZN2cv3ccm3Lab5tolabERKNS_3VecIdLi3EEEENK3$_0clEd.exit12.i.i.i": ; preds = %bb.l, %bb.k
  %i.be = phi double [ %i.bb, %bb.k ], [ %i.bd, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !68, !noalias !379
  %shift = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.am, %shift
  %i.bh = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.bi = fcmp ogt double %i.bh, f0x3FCA7B9611A7B961
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %"_ZZN2cv3ccm3Lab5tolabERKNS_3VecIdLi3EEEENK3$_0clEd.exit12.i.i.i"
  %i.bj = call double @pow(double noundef %i.bh, double noundef 3.000000e+00) #31, !noalias !379
  br label %bb.o

bb.n:                                             ; preds = %"_ZZN2cv3ccm3Lab5tolabERKNS_3VecIdLi3EEEENK3$_0clEd.exit12.i.i.i"
  %i.bk = fadd double %i.bh, f0xBFC1A7B9611A7B96
  %i.bl = fdiv double %i.bk, f0x401F25ED097B425E
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bm = phi double [ %i.bj, %bb.m ], [ %i.bl, %bb.n ]
  %i.bn = fmul double %i.az, %i.be
  %i.bo = fmul double %i.ar, %i.ax
  %i.bp = fmul double %i.bg, %i.bm
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !137, !noalias !376 ; 3 uses
  store double %i.bo, ptr %i.bq, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store double %i.bn, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store double %i.bp, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.br = load ptr, ptr %3, align 8, !tbaa !135, !noalias !376 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  %.val11.pre17.i = load ptr, ptr %i.f, align 8, !noalias !376 ; 3 uses
  br i1 %.not.i.i.i, label %_ZN2cv12MatIterator_INS_3VecIdLi3EEEEppEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = load i64, ptr %i.e, align 8, !tbaa !136, !noalias !376
  %i.bt = getelementptr inbounds nuw i8, ptr %.val11.pre17.i, i64 %i.bs ; 3 uses
  store ptr %i.bt, ptr %i.f, align 8, !tbaa !137, !noalias !376
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !140, !noalias !376
  %.not1.i.i.i = icmp ult ptr %i.bt, %i.bu
  br i1 %.not1.i.i.i, label %_ZN2cv12MatIterator_INS_3VecIdLi3EEEEppEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %.val11.pre17.i, ptr %i.f, align 8, !tbaa !137, !noalias !376
  invoke void @_ZN2cv16MatConstIterator4seekElb(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef 1, i1 noundef zeroext true)
          to label %._ZN2cv12MatIterator_INS_3VecIdLi3EEEEppEv.exit_crit_edge.i unwind label %bb.u

._ZN2cv12MatIterator_INS_3VecIdLi3EEEEppEv.exit_crit_edge.i: ; preds = %bb.q
  %.val.pre.i = load ptr, ptr %3, align 8, !tbaa !135, !noalias !376
  %.val11.pre.i = load ptr, ptr %i.f, align 8, !noalias !376
  br label %_ZN2cv12MatIterator_INS_3VecIdLi3EEEEppEv.exit.i

_ZN2cv12MatIterator_INS_3VecIdLi3EEEEppEv.exit.i: ; preds = %._ZN2cv12MatIterator_INS_3VecIdLi3EEEEppEv.exit_crit_edge.i, %bb.p, %bb.o
  %.val11.i = phi ptr [ %.val11.pre.i, %._ZN2cv12MatIterator_INS_3VecIdLi3EEEEppEv.exit_crit_edge.i ], [ %.val11.pre17.i, %bb.o ], [ %i.bt, %bb.p ] ; 2 uses
  %.val.i = phi ptr [ %.val.pre.i, %._ZN2cv12MatIterator_INS_3VecIdLi3EEEEppEv.exit_crit_edge.i ], [ null, %bb.o ], [ %i.br, %bb.p ]
  %.not.i.i = icmp ne ptr %.val.i, %i.y
  %i.bv = icmp ne ptr %.val11.i, %i.aa
  %i.bw = select i1 %.not.i.i, i1 true, i1 %i.bv
  br i1 %i.bw, label %bb.h, label %"_ZN2cv3ccm11channelWiseIZNS0_3Lab5tosrcERNS_3MatEE3$_0EES3_RKS3_OT_.exit"

bb.r:                                             ; preds = %bb.c, %bb.a
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.g, %.noexc17.i, %bb.e, %_ZN2cv3Mat5beginINS_3VecIdLi3EEEEENS_12MatIterator_IT_EEv.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !376
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn.i = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.bx, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !376
  br label %bb.v

bb.u:                                             ; preds = %bb.q, %bb.h
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn8.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.t ], [ %i.bz, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !376
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #31
  resume { ptr, i32 } %.pn8.pn.i

"_ZN2cv3ccm11channelWiseIZNS0_3Lab5tosrcERNS_3MatEE3$_0EES3_RKS3_OT_.exit": ; preds = %_ZN2cv12MatIterator_INS_3VecIdLi3EEEEppEv.exit.i, %_ZN2cv3Mat3endINS_3VecIdLi3EEEEENS_12MatIterator_IT_EEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !376
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3ccm3Lab3getENS0_13IllumObserverE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.52") align 8 captures(none) %0, ptr noundef align 8 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.167", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.157", align 1    ; 3 uses
  %4 = alloca %"class.std::tuple.167", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.157", align 1    ; 3 uses
  %6 = alloca %"class.std::tuple.167", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.157", align 1    ; 3 uses
  %8 = alloca %"class.std::shared_ptr.52", align 8 ; 6 uses
  %9 = alloca %"class.cv::ccm::IllumObserver", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs) #31
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8), align 8, !tbaa !144
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 16), align 8, !tbaa !109
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 24), align 8, !tbaa !145
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 32), align 8, !tbaa !146
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 40), align 8, !tbaa !147
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEED2Ev, ptr nonnull @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, ptr nonnull @__dso_handle) #31 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 16), align 8, !tbaa !109 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.d ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8), %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = tail call noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3LabEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !380

_ZNKSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3LabEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8)
  br i1 %i.h, label %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread, label %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit

_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit: ; preds = %_ZNKSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3LabEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = tail call noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.i)
  br i1 %i.j, label %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 16), align 8, !tbaa !109 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.k, %bb.e ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8), %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.m = tail call noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.19.i.i.i.i = select i1 %i.m, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !381

_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8)
  br i1 %i.n, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.p = tail call noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.o)
  br i1 %i.p, label %.critedge.i, label %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEEixERS9_.exit

.critedge.i:                                      ; preds = %bb.f, %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i, %bb.e
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8), %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8), %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr %1, ptr %6, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.q = call ptr @_ZNSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3LabEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEEixERS9_.exit

_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEEixERS9_.exit: ; preds = %bb.f, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.q, %.critedge.i ], [ %.19.i.i.i.i, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162  ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !64
  store <2 x ptr> %i.u, ptr %0, align 8, !tbaa !64
  %.not.i.i.i9 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i9, label %_ZNSt10shared_ptrIN2cv3ccm3LabEEC2ERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEEixERS9_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i.i.i10 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.v, align 4, !tbaa !80
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !80
  br label %_ZNSt10shared_ptrIN2cv3ccm3LabEEC2ERKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN2cv3ccm3LabEEC2ERKS3_.exit

_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3LabEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i, %bb.d, %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.aa = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #29 ; 7 uses
  invoke void @_ZN2cv3ccm13IllumObserverC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.j unwind label %.thread

bb.j:                                             ; preds = %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread
  invoke void @_ZN2cv3ccm3LabC2ENS0_13IllumObserverE(ptr noundef nonnull align 8 dereferenceable(200) %i.aa, ptr noundef nonnull align 8 %9)
          to label %bb.k unwind label %.thread54

bb.k:                                             ; preds = %bb.j
  store ptr %i.aa, ptr %8, align 8, !tbaa !386
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ac = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.p unwind label %bb.l       ; 7 uses

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = call ptr @__cxa_begin_catch(ptr %i.ae) #31 ; 0 uses
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(200) %i.aa) #31, !inline_history !382
  invoke void @__cxa_rethrow() #28
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.am unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #32
  unreachable

bb.o:                                             ; preds = %bb.l
  unreachable

bb.p:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  store i32 1, ptr %i.am, align 8, !tbaa !165
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 1, ptr %i.an, align 4, !tbaa !166
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3ccm3LabELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ac, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.aa, ptr %i.ao, align 8, !tbaa !170
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !162
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv3ccm13IllumObserverE, i64 16), ptr %9, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !27 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !104
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30, !inline_history !143
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !27 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN2cv3ccm13IllumObserverD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !104
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #30, !inline_history !143
  br label %_ZN2cv3ccm13IllumObserverD2Ev.exit

_ZN2cv3ccm13IllumObserverD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 16), align 8, !tbaa !109 ; 2 uses
  %.not10.i.i.i.i11 = icmp eq ptr %i.bb, null
  br i1 %.not10.i.i.i.i11, label %.critedge.i22, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN2cv3ccm13IllumObserverD2Ev.exit, %.noexc
  %.012.i.i.i.i13 = phi ptr [ %.1.i.i.i.i18, %.noexc ], [ %i.bb, %_ZN2cv3ccm13IllumObserverD2Ev.exit ] ; 3 uses
  %.0811.i.i.i.i14 = phi ptr [ %.19.i.i.i.i15, %.noexc ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8), %_ZN2cv3ccm13IllumObserverD2Ev.exit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i13, i64 32
  %i.bd = invoke noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bc, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i.i12
  %.19.i.i.i.i15 = select i1 %i.bd, ptr %.0811.i.i.i.i14, ptr %.012.i.i.i.i13 ; 5 uses
  %.1.in.v.i.i.i.i16 = select i1 %i.bd, i64 24, i64 16
  %.1.in.i.i.i.i17 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i13, i64 %.1.in.v.i.i.i.i16
  %.1.i.i.i.i18 = load ptr, ptr %.1.in.i.i.i.i17, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i.i19 = icmp eq ptr %.1.i.i.i.i18, null
  br i1 %.not.i.i.i.i19, label %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i20, label %.lr.ph.i.i.i.i12, !llvm.loop !381

_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i20: ; preds = %.noexc
  %i.be = icmp eq ptr %.19.i.i.i.i15, getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8)
  br i1 %i.be, label %.critedge.i22, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i20
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i15, i64 32
  %i.bg = invoke noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.bf)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.q
  br i1 %i.bg, label %.critedge.i22, label %bb.r

.critedge.i22:                                    ; preds = %.noexc24, %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i20, %_ZN2cv3ccm13IllumObserverD2Ev.exit
  %.08.lcssa.i.i.i11.i23 = phi ptr [ %.19.i.i.i.i15, %.noexc24 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8), %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i20 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8), %_ZN2cv3ccm13IllumObserverD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %1, ptr %4, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.bh = invoke ptr @_ZNSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3LabEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, ptr %.08.lcssa.i.i.i11.i23, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %.critedge.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.r

bb.r:                                             ; preds = %.noexc25, %.noexc24
  %.sroa.06.0.i21 = phi ptr [ %i.bh, %.noexc25 ], [ %.19.i.i.i.i15, %.noexc24 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i21, i64 104
  store ptr %i.aa, ptr %i.bi, align 8, !tbaa !386
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i21, i64 112 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !162 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.ac, %i.bk
  br i1 %.not.i.i.i27, label %_ZNSt10shared_ptrIN2cv3ccm3LabEEaSERKS3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i.i.i28 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i28, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = load i32, ptr %i.am, align 8, !tbaa !80
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.am, align 8, !tbaa !80
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bo = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !162
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.u, %bb.t
  %i.bp = phi ptr [ %.pr.pre.i.i.i, %bb.u ], [ %i.bk, %bb.t ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bq, align 8, !tbaa !165
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !166
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !29
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #31, !inline_history !383
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #31, !inline_history !383
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i9.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i9.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !80
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i = phi i32 [ %i.bt, %bb.y ], [ %i.cd, %bb.z ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ce, label %bb.aa, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !34

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.w, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ac, ptr %i.bj, align 8, !tbaa !162
  br label %_ZNSt10shared_ptrIN2cv3ccm3LabEEaSERKS3_.exit

_ZNSt10shared_ptrIN2cv3ccm3LabEEaSERKS3_.exit:    ; preds = %bb.r, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 16), align 8, !tbaa !109 ; 2 uses
  %.not10.i.i.i.i29 = icmp eq ptr %i.cf, null
  br i1 %.not10.i.i.i.i29, label %.critedge.i40, label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %_ZNSt10shared_ptrIN2cv3ccm3LabEEaSERKS3_.exit, %.noexc42
  %.012.i.i.i.i31 = phi ptr [ %.1.i.i.i.i36, %.noexc42 ], [ %i.cf, %_ZNSt10shared_ptrIN2cv3ccm3LabEEaSERKS3_.exit ] ; 3 uses
  %.0811.i.i.i.i32 = phi ptr [ %.19.i.i.i.i33, %.noexc42 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8), %_ZNSt10shared_ptrIN2cv3ccm3LabEEaSERKS3_.exit ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 32
  %i.ch = invoke noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.cg, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc42:                                         ; preds = %.lr.ph.i.i.i.i30
  %.19.i.i.i.i33 = select i1 %i.ch, ptr %.0811.i.i.i.i32, ptr %.012.i.i.i.i31 ; 5 uses
  %.1.in.v.i.i.i.i34 = select i1 %i.ch, i64 24, i64 16
  %.1.in.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 %.1.in.v.i.i.i.i34
  %.1.i.i.i.i36 = load ptr, ptr %.1.in.i.i.i.i35, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %.1.i.i.i.i36, null
  br i1 %.not.i.i.i.i37, label %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i38, label %.lr.ph.i.i.i.i30, !llvm.loop !381

_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i38: ; preds = %.noexc42
  %i.ci = icmp eq ptr %.19.i.i.i.i33, getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8)
  br i1 %i.ci, label %.critedge.i40, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i38
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 32
  %i.ck = invoke noundef zeroext i1 @_ZNK2cv3ccm13IllumObserverltERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.cj)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %bb.ab
  br i1 %i.ck, label %.critedge.i40, label %bb.ac

.critedge.i40:                                    ; preds = %.noexc43, %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i38, %_ZNSt10shared_ptrIN2cv3ccm3LabEEaSERKS3_.exit
  %.08.lcssa.i.i.i11.i41 = phi ptr [ %.19.i.i.i.i33, %.noexc43 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8), %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE11lower_boundERS9_.exit.i38 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, i64 8), %_ZNSt10shared_ptrIN2cv3ccm3LabEEaSERKS3_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %1, ptr %2, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.cl = invoke ptr @_ZNSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3LabEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3ccm3Lab3getENS0_13IllumObserverEE6lab_cs, ptr %.08.lcssa.i.i.i11.i41, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %.critedge.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc44, %.noexc43
  %.sroa.06.0.i39 = phi ptr [ %i.cl, %.noexc44 ], [ %.19.i.i.i.i33, %.noexc43 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i39, i64 104
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i39, i64 112
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !162 ; 2 uses
  %i.cp = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !64
  store <2 x ptr> %i.cp, ptr %0, align 8, !tbaa !64
  %.not.i.i.i46 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i46, label %_ZNSt10shared_ptrIN2cv3ccm3LabEEC2ERKS3_.exit48, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i.i.i47 = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i.i47, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !80
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cq, align 4, !tbaa !80
  br label %_ZNSt10shared_ptrIN2cv3ccm3LabEEC2ERKS3_.exit48

bb.af:                                            ; preds = %bb.ad
  %i.cu = atomicrmw volatile add ptr %i.cq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN2cv3ccm3LabEEC2ERKS3_.exit48

_ZNSt10shared_ptrIN2cv3ccm3LabEEC2ERKS3_.exit48:  ; preds = %bb.ac, %bb.ae, %bb.af
  %i.cv = load ptr, ptr %i.ab, align 8, !tbaa !162 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv3ccm3LabELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10shared_ptrIN2cv3ccm3LabEEC2ERKS3_.exit48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 4294967297
  %i.cz = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.cy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.cw, align 8, !tbaa !165
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 0, ptr %i.da, align 4, !tbaa !166
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #31, !inline_history !384
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !29
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #31, !inline_history !384
  br label %_ZNSt12__shared_ptrIN2cv3ccm3LabELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i.i49 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i49, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.di = add nsw i32 %i.cz, -1
  store i32 %i.di, ptr %i.cw, align 8, !tbaa !80
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dj = atomicrmw volatile add ptr %i.cw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i = phi i32 [ %i.cz, %bb.aj ], [ %i.dj, %bb.ak ]
  %i.dk = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dk, label %bb.al, label %_ZNSt12__shared_ptrIN2cv3ccm3LabELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #31
  br label %_ZNSt12__shared_ptrIN2cv3ccm3LabELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3ccm3LabELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN2cv3ccm3LabEEC2ERKS3_.exit48, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %_ZNSt10shared_ptrIN2cv3ccm3LabEEC2ERKS3_.exit

.thread:                                          ; preds = %_ZNKSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEE5countERS9_.exit.thread
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.thread54:                                        ; preds = %bb.j
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3ccm13IllumObserverD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #31
  br label %bb.an

bb.am:                                            ; preds = %bb.m
  call void @_ZN2cv3ccm13IllumObserverD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #31
  br label %bb.ao

bb.an:                                            ; preds = %.thread54, %.thread
  %.pn53 = phi { ptr, i32 } [ %i.dl, %.thread ], [ %i.dm, %.thread54 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 200) #30
  br label %bb.ao

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i30, %.lr.ph.i.i.i.i12, %.critedge.i40, %bb.ab, %.critedge.i22, %bb.q
  %lpad.loopexit.split-lp80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv3ccm3LabELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #31
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn7 = phi { ptr, i32 } [ %lpad.loopexit.split-lp80, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn53, %bb.an ], [ %i.aj, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  resume { ptr, i32 } %.pn7

_ZNSt10shared_ptrIN2cv3ccm3LabEEC2ERKS3_.exit:    ; preds = %bb.i, %bb.h, %_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEEixERS9_.exit, %_ZNSt12__shared_ptrIN2cv3ccm3LabELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIN2cv3ccm13IllumObserverESt10shared_ptrINS1_3LabEESt4lessIS2_ESaISt4pairIKS2_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  invoke void @_ZNSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3LabEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3LabEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #32
  unreachable

_ZNSt8_Rb_treeIN2cv3ccm13IllumObserverESt4pairIKS2_St10shared_ptrINS1_3LabEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv3ccm3LabELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !165
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !166
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !4
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !4
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !80
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
end_hunk_1
