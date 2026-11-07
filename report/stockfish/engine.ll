Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/engine?download=true
inline.NumInlined: 3406
inline.NumDeleted: 1747
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZdlPvm

; Function Attrs: nounwind
declare noundef i32 @_ZNSt6thread20hardware_concurrencyEv() local_unnamed_addr #11

; Function Attrs: nounwind
declare ptr @__sched_cpualloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__sched_cpufree(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !guid !651 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !222  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #33
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !650

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5eraseERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !guid !656 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.041.i = load ptr, ptr %i.a, align 8, !tbaa !171 ; 3 uses
  %.not42.i = icmp eq ptr %.041.i, null
  br i1 %.not42.i, label %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !246    ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.044.i = phi ptr [ %.041.i, %.lr.ph.i ], [ %.0.i, %bb.e ] ; 7 uses
  %.02243.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.123.i, %bb.e ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.044.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !246  ; 2 uses
  %i.f = icmp ult ptr %i.e, %i.c
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult ptr %i.c, %i.e
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.044.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !222  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.044.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !223  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i, label %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %.0811.i.i = phi ptr [ %.19.i.i, %.lr.ph.i.i ], [ %.044.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !246
  %i.n = icmp ult ptr %i.m, %i.c                  ; 2 uses
  %.19.i.i = select i1 %i.n, ptr %.0811.i.i, ptr %.012.i.i ; 2 uses
  %.1.in.v.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 %.1.in.v.i.i
  %.1.i.i = load ptr, ptr %.1.in.i.i, align 8, !tbaa !171 ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i, label %.lr.ph.i.i, !llvm.loop !652

_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.08.lcssa.i.i = phi ptr [ %.044.i, %bb.d ], [ %.19.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not10.i24.i = icmp eq ptr %i.k, null
  br i1 %.not10.i24.i, label %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i, %.lr.ph.i25.i
  %.012.i26.i = phi ptr [ %.1.i31.i, %.lr.ph.i25.i ], [ %i.k, %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i ] ; 3 uses
  %.0811.i27.i = phi ptr [ %.19.i28.i, %.lr.ph.i25.i ], [ %.02243.i, %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i26.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !246
  %i.q = icmp ult ptr %i.c, %i.p                  ; 2 uses
  %.19.i28.i = select i1 %i.q, ptr %.012.i26.i, ptr %.0811.i27.i ; 2 uses
  %.1.in.v.i29.i = select i1 %i.q, i64 16, i64 24
  %.1.in.i30.i = getelementptr inbounds nuw i8, ptr %.012.i26.i, i64 %.1.in.v.i29.i
  %.1.i31.i = load ptr, ptr %.1.in.i30.i, align 8, !tbaa !171 ; 2 uses
  %.not.i32.i = icmp eq ptr %.1.i31.i, null
  br i1 %.not.i32.i, label %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit, label %.lr.ph.i25.i, !llvm.loop !653

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i64 [ 24, %bb.b ], [ 16, %bb.c ]
  %.123.i = phi ptr [ %.02243.i, %bb.b ], [ %.044.i, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.044.i, i64 %.sink.i
  %.0.i = load ptr, ptr %i.r, align 8, !tbaa !171 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit, label %bb.b, !llvm.loop !654

_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit: ; preds = %bb.e, %.lr.ph.i25.i, %bb.a, %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i
  %.sroa.037.0.i = phi ptr [ %.08.lcssa.i.i, %.lr.ph.i25.i ], [ %.08.lcssa.i.i, %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %.sroa.3.0.i = phi ptr [ %.19.i28.i, %.lr.ph.i25.i ], [ %.02243.i, %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !170  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !168
  %i.w = icmp eq ptr %.sroa.037.0.i, %i.v
  %i.x = icmp eq ptr %.sroa.3.0.i, %i.b
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit
  tail call void @_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %.041.i)
  store ptr null, ptr %i.a, align 8, !tbaa !167
  store ptr %i.b, ptr %i.u, align 8, !tbaa !168
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.y, align 8, !tbaa !169
  store i64 0, ptr %i.s, align 8, !tbaa !170
  br label %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit

.critedge.i:                                      ; preds = %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11equal_rangeERKS2_.exit
  %.not8.i = icmp eq ptr %.sroa.037.0.i, %.sroa.3.0.i
  br i1 %.not8.i, label %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %.critedge.i, %.lr.ph.i2
  %.sroa.06.09.i = phi ptr [ %i.z, %.lr.ph.i2 ], [ %.sroa.037.0.i, %.critedge.i ] ; 2 uses
  %i.z = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i) #30 ; 2 uses
  %i.aa = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 40) #33
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !170
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.s, align 8, !tbaa !170
  %.not.i3 = icmp eq ptr %i.z, %.sroa.3.0.i
  br i1 %.not.i3, label %_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit, label %.lr.ph.i2, !llvm.loop !655

_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_.exit: ; preds = %.lr.ph.i2, %bb.f, %.critedge.i
  %i.ad = phi i64 [ %i.t, %.critedge.i ], [ 0, %bb.f ], [ %i.ac, %.lr.ph.i2 ]
  %i.ae = sub i64 %i.t, %i.ad
  ret i64 %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !guid !658 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223
  tail call void @_ZNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !222  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #33
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !657

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.162") align 8 %0, i1 noundef zeroext %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 comdat align 2 !guid !665 {
bb.a:
  %4 = alloca %"class.Stockfish::NumaConfig", align 8 ; 10 uses
  %5 = alloca %"class.std::variant", align 8      ; 4 uses
  %6 = alloca %"class.std::vector.172", align 8   ; 10 uses
  %7 = alloca %"class.std::set", align 8          ; 8 uses
  %8 = alloca %"class.std::optional", align 8     ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"struct.Stockfish::L3Domain", align 8 ; 12 uses
  %13 = alloca %"class.std::vector.33", align 8   ; 7 uses
  %14 = alloca %"class.Stockfish::NumaConfig", align 16 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !227
  call void @_ZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEb(ptr dead_on_unwind nonnull writable sret(%"class.Stockfish::NumaConfig") align 8 %4, ptr noundef nonnull align 8 dereferenceable(9) %5, i1 noundef zeroext %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.b, align 8, !tbaa !166
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !168
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.a
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !167 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i.i.i, label %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit.thread, label %.lr.ph.i.i.i.preheader.i

_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.b, %bb.c
  %storemerge6.i = phi i64 [ %i.ai, %bb.c ], [ 0, %bb.b ] ; 10 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.preheader.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ac, %.lr.ph.i.i.i.preheader.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !160
  %i.af = icmp ult i64 %i.ae, %storemerge6.i      ; 3 uses
  %.19.i.i.i.i = select i1 %i.af, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.af, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.b
  br i1 %i.ag, label %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit, label %_ZNKSt3setImSt4lessImESaImEE5countERKm.exit.i

_ZNKSt3setImSt4lessImESaImEE5countERKm.exit.i:    ; preds = %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.af, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ah = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !160
  %.not5.i = icmp ult i64 %storemerge6.i, %i.ah
  br i1 %.not5.i, label %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt3setImSt4lessImESaImEE5countERKm.exit.i
  %i.ai = add i64 %storemerge6.i, 1
  br label %.lr.ph.i.i.i.preheader.i

_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit: ; preds = %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i, %_ZNKSt3setImSt4lessImESaImEE5countERKm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.aj = icmp ult i64 %storemerge6.i, 10
  br i1 %i.aj, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit, %bb.i
  %.029.i.i = phi i32 [ %i.ar, %bb.i ], [ 1, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.aq, %bb.i ], [ %storemerge6.i, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit ] ; 5 uses
  %i.ak = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.al = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.am = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ao = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aq = udiv i64 %.02328.i.i, 10000
  %i.ar = add i32 %.029.i.i, 4                    ; 2 uses
  %i.as = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.as, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.i, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit.thread, %bb.h, %bb.f, %bb.d, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit
  %storemerge.lcssa.i94 = phi i64 [ %storemerge6.i, %bb.h ], [ %storemerge6.i, %bb.d ], [ %storemerge6.i, %bb.f ], [ %storemerge6.i, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit ], [ 0, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit.thread ], [ %storemerge6.i, %bb.i ] ; 3 uses
  %.022.i.i = phi i32 [ %i.ap, %bb.h ], [ %i.al, %bb.d ], [ %i.an, %bb.f ], [ 1, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit ], [ 1, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit.thread ], [ %i.ar, %bb.i ]
  %i.at = zext i32 %.022.i.i to i64
  store ptr %i.g, ptr %11, align 8, !tbaa !180, !alias.scope !666
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.at, i8 noundef signext 0) #28
  %i.au = load ptr, ptr %11, align 8, !tbaa !182, !alias.scope !666 ; 4 uses
  %i.av = icmp ugt i64 %storemerge.lcssa.i94, 99
  br i1 %i.av, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.aw = load i64, ptr %i.h, align 8, !tbaa !183, !alias.scope !666
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add i32 %i.ax, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bb, %.lr.ph.i2.i ], [ %storemerge.lcssa.i94, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bl, %.lr.ph.i2.i ], [ %i.ay, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.az = urem i64 %.020.i.i, 100
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ba ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !184, !noalias !666
  %i.bf = zext i32 %.01819.i.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bf
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !184
  %i.bh = load i8, ptr %i.bc, align 2, !tbaa !184, !noalias !666
  %i.bi = add i32 %.01819.i.i, -1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bj
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !184
  %i.bl = add i32 %.01819.i.i, -2
  %i.bm = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bm, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %storemerge.lcssa.i94, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.bb, %.lr.ph.i2.i ] ; 3 uses
  %i.bn = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bo = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !184, !noalias !666
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !184
  %i.bt = load i8, ptr %i.bp, align 2, !tbaa !184, !noalias !666
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bu = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bv = or disjoint i8 %i.bu, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.j, %bb.k
  %storemerge.i.i = phi i8 [ %i.bv, %bb.k ], [ %i.bt, %bb.j ]
  store i8 %storemerge.i.i, ptr %i.au, align 1, !tbaa !184
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.bw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.47, i64 noundef 27) #28, !noalias !667 ; 6 uses
  store ptr %i.i, ptr %10, align 8, !tbaa !180, !alias.scope !667
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !182 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 5 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !183 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add nuw nsw i64 %i.cb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.by, i64 %i.cd, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  store ptr %i.bx, ptr %10, align 8, !tbaa !182, !alias.scope !667
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !184
  store i64 %i.ce, ptr %i.i, align 8, !tbaa !184, !alias.scope !667
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !183
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cf = phi i64 [ %i.cb, %bb.l ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.cf, ptr %i.j, align 8, !tbaa !183, !alias.scope !667
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !182
  store i64 0, ptr %i.cg, align 8, !tbaa !183
  store i8 0, ptr %i.by, align 8, !tbaa !184
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.ch = load i64, ptr %i.j, align 8, !tbaa !183, !noalias !668
  %i.ci = add i64 %i.ch, -4611686018427387875
  %i.cj = icmp ult i64 %i.ci, 29
  br i1 %i.cj, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.m:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32, !noalias !668
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.ck = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.48, i64 noundef 29) #28, !noalias !668 ; 6 uses
  store ptr %i.k, ptr %9, align 8, !tbaa !180, !alias.scope !668
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !182 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 5 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !183 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 16
  call void @llvm.assume(i1 %i.cq)
  %i.cr = add nuw nsw i64 %i.cp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.cm, i64 %i.cr, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.cl, ptr %9, align 8, !tbaa !182, !alias.scope !668
  %i.cs = load i64, ptr %i.cm, align 8, !tbaa !184
  store i64 %i.cs, ptr %i.k, align 8, !tbaa !184, !alias.scope !668
  %.phi.trans.insert.i9 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.pre.i10 = load i64, ptr %.phi.trans.insert.i9, align 8, !tbaa !183
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.ct = phi i64 [ %i.cp, %bb.n ], [ %.pre.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %i.ct, ptr %i.l, align 8, !tbaa !183, !alias.scope !668
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !182
  store i64 0, ptr %i.cu, align 8, !tbaa !183
  store i8 0, ptr %i.cm, align 8, !tbaa !184
  call void @_ZN9Stockfish19read_file_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #28
  %i.cv = load ptr, ptr %9, align 8, !tbaa !182   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.k
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.cx = load i64, ptr %i.k, align 8, !tbaa !184
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.cz = load ptr, ptr %10, align 8, !tbaa !182  ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.i
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = load i64, ptr %i.i, align 8, !tbaa !184
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.dd = load ptr, ptr %11, align 8, !tbaa !182  ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.g
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.df = load i64, ptr %i.g, align 8, !tbaa !184
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.dh = load i8, ptr %i.m, align 8, !tbaa !175, !range !176, !noundef !177 ; 2 uses
  %i.di = trunc nuw i8 %i.dh to i1
  %15 = load i64, ptr %i.n, align 8
  %16 = icmp ne i64 %15, 0
  %or.cond.not = select i1 %i.di, i1 %16, i1 false ; 2 uses
  br i1 %or.cond.not, label %bb.o, label %17

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, i8 0, i64 32, i1 false)
  store ptr %i.o, ptr %i.p, align 8, !tbaa !168
  store ptr %i.o, ptr %i.q, align 8, !tbaa !169
  store i64 0, ptr %i.r, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %8)
  %i.dj = load ptr, ptr %13, align 8, !tbaa !290  ; 3 uses
  %i.dk = load ptr, ptr %i.s, align 8, !tbaa !290 ; 2 uses
  %.not113 = icmp eq ptr %i.dj, %i.dk
  br i1 %.not113, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62
  %.pre = load ptr, ptr %13, align 8, !tbaa !292
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %i.dl = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.dj, %bb.o ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.dm = load ptr, ptr %i.x, align 8, !tbaa !297
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dp) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.dq = load i64, ptr %i.r, align 8, !tbaa !170 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, label %bb.y

.lr.ph:                                           ; preds = %bb.o, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62
  %.sroa.085.0114 = phi ptr [ %i.fv, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62 ], [ %i.dj, %bb.o ] ; 2 uses
  %i.ds = load i64, ptr %.sroa.085.0114, align 8, !tbaa !160 ; 12 uses
  %i.dt = load i8, ptr %3, align 8, !tbaa !225, !range !176, !noundef !177
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.q, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95

bb.q:                                             ; preds = %.lr.ph
  %i.dv = load ptr, ptr %i.t, align 8, !tbaa !346, !nonnull !177, !align !347 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !167 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %.not10.i.i.i.i19 = icmp eq ptr %i.dx, null
  br i1 %.not10.i.i.i.i19, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %bb.q, %.lr.ph.i.i.i.i20
  %.012.i.i.i.i21 = phi ptr [ %.1.i.i.i.i26, %.lr.ph.i.i.i.i20 ], [ %i.dx, %bb.q ] ; 3 uses
  %.0811.i.i.i.i22 = phi ptr [ %.19.i.i.i.i23, %.lr.ph.i.i.i.i20 ], [ %i.dy, %bb.q ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i21, i64 32
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !160
  %i.eb = icmp ult i64 %i.ea, %i.ds               ; 2 uses
  %.19.i.i.i.i23 = select i1 %i.eb, ptr %.0811.i.i.i.i22, ptr %.012.i.i.i.i21 ; 3 uses
  %.1.in.v.i.i.i.i24 = select i1 %i.eb, i64 24, i64 16
  %.1.in.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i21, i64 %.1.in.v.i.i.i.i24
  %.1.i.i.i.i26 = load ptr, ptr %.1.in.i.i.i.i25, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i.i27 = icmp eq ptr %.1.i.i.i.i26, null
  br i1 %.not.i.i.i.i27, label %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i28, label %.lr.ph.i.i.i.i20, !llvm.loop !9

_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i28: ; preds = %.lr.ph.i.i.i.i20
  %i.ec = icmp eq ptr %.19.i.i.i.i23, %i.dy
  br i1 %i.ec, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit: ; preds = %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i28
  %i.ed = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i23, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !160
  %.not99 = icmp ult i64 %i.ds, %i.ee
  br i1 %.not99, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95: ; preds = %.lr.ph, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit
  %i.ef = load ptr, ptr %i.u, align 8, !tbaa !167 ; 2 uses
  %.not10.i.i.i.i29 = icmp eq ptr %i.ef, null
  br i1 %.not10.i.i.i.i29, label %.critedge.i, label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95, %.lr.ph.i.i.i.i30
  %.012.i.i.i.i31 = phi ptr [ %.1.i.i.i.i36, %.lr.ph.i.i.i.i30 ], [ %i.ef, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95 ] ; 5 uses
  %.0811.i.i.i.i32 = phi ptr [ %.19.i.i.i.i33, %.lr.ph.i.i.i.i30 ], [ %i.v, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95 ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 32
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !160
  %i.ei = icmp ult i64 %i.eh, %i.ds               ; 4 uses
  %.19.i.i.i.i33 = select i1 %i.ei, ptr %.0811.i.i.i.i32, ptr %.012.i.i.i.i31 ; 2 uses
  %.1.in.v.i.i.i.i34 = select i1 %i.ei, i64 24, i64 16
  %.1.in.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 %.1.in.v.i.i.i.i34
  %.1.i.i.i.i36 = load ptr, ptr %.1.in.i.i.i.i35, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %.1.i.i.i.i36, null
  br i1 %.not.i.i.i.i37, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i30, !llvm.loop !7

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i30
  %i.ej = icmp eq ptr %.19.i.i.i.i33, %i.v
  br i1 %i.ej, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i
  %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ei, ptr %.0811.i.i.i.i32, ptr %.012.i.i.i.i31
  %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ek = load i64, ptr %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !160
  %i.el = icmp ult i64 %i.ds, %i.ek
  br i1 %i.el, label %.critedge.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit

.critedge.i:                                      ; preds = %bb.r, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95
  call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.55) #32
  unreachable

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit: ; preds = %bb.r
  %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel.v = select i1 %i.ei, ptr %.0811.i.i.i.i32, ptr %.012.i.i.i.i31
  %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.em = load i64, ptr %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel, align 8, !tbaa !160
  store i64 %i.em, ptr %12, align 8, !tbaa !352
  %.02022.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit ] ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !160 ; 2 uses
  %i.ep = icmp ult i64 %i.ds, %i.eo               ; 2 uses
  %.in.v.i.i.i = select i1 %i.ep, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i38, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.ep, label %._crit_edge.thread.i.i.i, label %bb.t

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.o, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit ] ; 4 uses
  %i.eq = load ptr, ptr %i.p, align 8, !tbaa !168
  %i.er = icmp eq ptr %.019.lcssa29.i.i.i, %i.eq
  br i1 %i.er, label %select.unfold.i.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.es = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #30
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !160
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  %i.et = phi i64 [ %.pre.i.i, %bb.s ], [ %i.eo, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.s ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.eu = icmp ult i64 %i.et, %i.ds
  br i1 %i.eu, label %select.unfold.i.i, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread

select.unfold.i.i:                                ; preds = %bb.t, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.t ] ; 3 uses
  %i.ev = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.o
  br i1 %i.ev, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %select.unfold.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !160
  %i.ey = icmp ult i64 %i.ds, %i.ex
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.u, %select.unfold.i.i
  %i.ez = phi i1 [ %i.ey, %bb.u ], [ true, %select.unfold.i.i ]
  %i.fa = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store i64 %i.ds, ptr %i.fb, align 8, !tbaa !160
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ez, ptr noundef nonnull %i.fa, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #28
  %i.fc = load i64, ptr %i.r, align 8, !tbaa !170
  %i.fd = add i64 %i.fc, 1
  store i64 %i.fd, ptr %i.r, align 8, !tbaa !170
  br label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.t, %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i28, %bb.q, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit
  %.02022.i.i.i39 = load ptr, ptr %i.c, align 8, !tbaa !171 ; 2 uses
  %.not23.i.i.i40 = icmp eq ptr %.02022.i.i.i39, null
  br i1 %.not23.i.i.i40, label %._crit_edge.thread.i.i.i57, label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, %.lr.ph.i.i.i41
  %.02024.i.i.i42 = phi ptr [ %.020.i.i.i45, %.lr.ph.i.i.i41 ], [ %.02022.i.i.i39, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.02024.i.i.i42, i64 32
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !160 ; 2 uses
  %i.fg = icmp ult i64 %i.ds, %i.ff               ; 2 uses
  %.in.v.i.i.i43 = select i1 %i.fg, i64 16, i64 24
  %.in.i.i.i44 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i42, i64 %.in.v.i.i.i43
  %.020.i.i.i45 = load ptr, ptr %.in.i.i.i44, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %.020.i.i.i45, null
  br i1 %.not.i.i.i46, label %._crit_edge.i.i.i47, label %.lr.ph.i.i.i41, !llvm.loop !0

._crit_edge.i.i.i47:                              ; preds = %.lr.ph.i.i.i41
  br i1 %i.fg, label %._crit_edge.thread.i.i.i57, label %bb.w

._crit_edge.thread.i.i.i57:                       ; preds = %._crit_edge.i.i.i47, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread
  %.019.lcssa29.i.i.i58 = phi ptr [ %.02024.i.i.i42, %._crit_edge.i.i.i47 ], [ %i.b, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread ] ; 4 uses
  %i.fh = load ptr, ptr %i.d, align 8, !tbaa !168
  %i.fi = icmp eq ptr %.019.lcssa29.i.i.i58, %i.fh
  br i1 %i.fi, label %select.unfold.i.i54, label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread.i.i.i57
  %i.fj = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i58) #30
  %.phi.trans.insert.i.i59 = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %.pre.i.i60 = load i64, ptr %.phi.trans.insert.i.i59, align 8, !tbaa !160
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i.i47
  %i.fk = phi i64 [ %.pre.i.i60, %bb.v ], [ %i.ff, %._crit_edge.i.i.i47 ]
  %.019.lcssa28.i.i.i48 = phi ptr [ %.019.lcssa29.i.i.i58, %bb.v ], [ %.02024.i.i.i42, %._crit_edge.i.i.i47 ]
  %i.fl = icmp ult i64 %i.fk, %i.ds
  br i1 %i.fl, label %select.unfold.i.i54, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62

select.unfold.i.i54:                              ; preds = %bb.w, %._crit_edge.thread.i.i.i57
  %.sroa.4.0.i.ph.i.i55 = phi ptr [ %.019.lcssa29.i.i.i58, %._crit_edge.thread.i.i.i57 ], [ %.019.lcssa28.i.i.i48, %bb.w ] ; 3 uses
  %i.fm = icmp eq ptr %.sroa.4.0.i.ph.i.i55, %i.b
  br i1 %i.fm, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i56, label %bb.x

bb.x:                                             ; preds = %select.unfold.i.i54
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i55, i64 32
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !160
  %i.fp = icmp ult i64 %i.ds, %i.fo
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i56

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i56: ; preds = %bb.x, %select.unfold.i.i54
  %i.fq = phi i1 [ %i.fp, %bb.x ], [ true, %select.unfold.i.i54 ]
  %i.fr = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  store i64 %i.ds, ptr %i.fs, align 8, !tbaa !160
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fq, ptr noundef nonnull %i.fr, ptr noundef nonnull %.sroa.4.0.i.ph.i.i55, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #28
  %i.ft = load i64, ptr %i.f, align 8, !tbaa !170
  %i.fu = add i64 %i.ft, 1
  store i64 %i.fu, ptr %i.f, align 8, !tbaa !170
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62:    ; preds = %bb.w, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i56
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.085.0114, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fv, %i.dk
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.fw = load ptr, ptr %i.z, align 8, !tbaa !355 ; 12 uses
  %i.fx = load ptr, ptr %i.aa, align 8, !tbaa !356
  %.not.i = icmp eq ptr %i.fw, %i.fx
  br i1 %.not.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fy = load i64, ptr %12, align 8, !tbaa !352
  store i64 %i.fy, ptr %i.fw, align 8, !tbaa !352
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 4 uses
  %i.ga = load ptr, ptr %i.w, align 8, !tbaa !167 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gb = load i32, ptr %i.o, align 8, !tbaa !166
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !167
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.ge = load <2 x ptr>, ptr %i.p, align 8, !tbaa !171
  store <2 x ptr> %i.ge, ptr %i.gd, align 8, !tbaa !171
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.fz, ptr %i.gf, align 8, !tbaa !189
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  store i64 %i.dq, ptr %i.gg, align 8, !tbaa !170
  store ptr null, ptr %i.w, align 8, !tbaa !167
  store ptr %i.o, ptr %i.p, align 8, !tbaa !168
  store ptr %i.o, ptr %i.q, align 8, !tbaa !169
  store i64 0, ptr %i.r, align 8, !tbaa !170
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store ptr null, ptr %i.gh, align 8, !tbaa !167
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store ptr %i.fz, ptr %i.gi, align 8, !tbaa !168
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  store ptr %i.fz, ptr %i.gj, align 8, !tbaa !169
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  store i64 0, ptr %i.gk, align 8, !tbaa !170
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i

_ZN9Stockfish8L3DomainC2EOS0_.exit.i:             ; preds = %bb.ab, %bb.aa
  %.sink.i.i.i.i.i.i = phi i32 [ 0, %bb.ab ], [ %i.gb, %bb.aa ]
  store i32 %.sink.i.i.i.i.i.i, ptr %i.fz, align 8, !tbaa !166
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  store ptr %i.gl, ptr %i.z, align 8, !tbaa !355
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.ac:                                            ; preds = %bb.y
  call void @_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.fw, ptr noundef nonnull align 8 dereferenceable(56) %12)
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.ac, %_ZN9Stockfish8L3DomainC2EOS0_.exit.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.gm = load ptr, ptr %i.w, align 8, !tbaa !167
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef %i.gm)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %.pre129 = load i8, ptr %i.m, align 8, !tbaa !175, !range !176
  br label %17

17:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %18 = phi i8 [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %.pre129, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ]
  %19 = trunc nuw i8 %18 to i1
  br i1 %19, label %bb.ad, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.ad:                                            ; preds = %17
  store i8 0, ptr %i.m, align 8, !tbaa !175
  %i.gn = load ptr, ptr %8, align 8, !tbaa !182   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.ab
  br i1 %i.go, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ad
  %i.gp = load i64, ptr %i.ab, align 8, !tbaa !184
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #33
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.ad, %17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %or.cond.not, label %bb.b, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.gr = load ptr, ptr %6, align 8, !tbaa !357
  %i.gs = load ptr, ptr %i.z, align 8, !tbaa !357
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm(ptr dead_on_unwind nonnull writable sret(%"class.Stockfish::NumaConfig") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %2)
  %i.gu = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gv = load <2 x ptr>, ptr %14, align 16, !tbaa !186
  store <2 x ptr> %i.gv, ptr %0, align 8, !tbaa !186
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 16, !tbaa !188
  store ptr %i.gy, ptr %i.gw, align 8, !tbaa !188
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(81) %14, i8 0, i64 24, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !167 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hc = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.hd = load i32, ptr %i.hc, align 16, !tbaa !166
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.hb, ptr %i.he, align 8, !tbaa !167
  %i.hf = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 16, !tbaa !168
  %i.hh = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !169
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.gz, ptr %i.hj, align 8, !tbaa !189
  %i.hk = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 16, !tbaa !170
  store ptr null, ptr %i.ha, align 8, !tbaa !167
  store ptr %i.hc, ptr %i.hf, align 16, !tbaa !168
  store ptr %i.hc, ptr %i.hh, align 8, !tbaa !169
  store i64 0, ptr %i.hk, align 16, !tbaa !170
  br label %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit

bb.ah:                                            ; preds = %bb.af
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.hm, align 8, !tbaa !167
  br label %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit

_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit: ; preds = %bb.ag, %bb.ah
  %.sink128.a = phi ptr [ %i.gz, %bb.ah ], [ %i.hg, %bb.ag ]
  %.sink127 = phi ptr [ %i.gz, %bb.ah ], [ %i.hi, %bb.ag ]
  %.sink = phi i64 [ 0, %bb.ah ], [ %i.hl, %bb.ag ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.ah ], [ %i.hd, %bb.ag ]
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink128.a, ptr %i.hn, align 8, !tbaa !168
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sink127, ptr %i.ho, align 8, !tbaa !169
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sink, ptr %i.hp, align 8, !tbaa !170
  store i32 %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gz, align 8, !tbaa !166
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hr = getelementptr inbounds nuw i8, ptr %14, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hq, ptr noundef nonnull align 8 dereferenceable(9) %i.hr, i64 9, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.hs, align 8, !tbaa !229
  %i.ht = getelementptr inbounds nuw i8, ptr %14, i64 24
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ht, ptr noundef null)
  %i.hu = load ptr, ptr %14, align 16, !tbaa !190 ; 3 uses
  %i.hv = load ptr, ptr %i.gu, align 8, !tbaa !191 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.hu, %i.hv
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit, %.lr.ph.i.i.i.i64
  %.05.i.i.i.i = phi ptr [ %i.hy, %.lr.ph.i.i.i.i64 ], [ %i.hu, %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !167
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i, ptr noundef %i.hx)
  %i.hy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.hy, %i.hv
  br i1 %.not.i.i.i.i65, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i64, !llvm.loop !1

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i64
  %.pr.i.i = load ptr, ptr %14, align 16, !tbaa !190
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit
  %i.hz = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i ], [ %i.hu, %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i1.i.i, label %_ZN9Stockfish10NumaConfigD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i
  %i.ia = load ptr, ptr %i.gx, align 16, !tbaa !188
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hz to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.id) #33
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit

_ZN9Stockfish10NumaConfigD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ae
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.ie, align 8, !tbaa !229
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN9Stockfish10NumaConfigD2Ev.exit
  %i.if = load ptr, ptr %i.c, align 8, !tbaa !167
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.if)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ig = load ptr, ptr %6, align 8, !tbaa !358   ; 3 uses
  %i.ih = load ptr, ptr %i.z, align 8, !tbaa !355 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ig, %i.ih
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i, label %.lr.ph.i.i.i66

.lr.ph.i.i.i66:                                   ; preds = %bb.ak, %.lr.ph.i.i.i66
  %.05.i.i.i = phi ptr [ %i.il, %.lr.ph.i.i.i66 ], [ %i.ig, %bb.ak ] ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !167
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.ii, ptr noundef %i.ik)
  %i.il = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.il, %i.ih
  br i1 %.not.i.i.i67, label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i66, !llvm.loop !10

_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i66
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !358
  br label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i

_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i, %bb.ak
  %i.im = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i ], [ %i.ig, %bb.ak ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.im, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i
  %i.in = load ptr, ptr %i.aa, align 8, !tbaa !356
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %i.im to i64
  %i.iq = sub i64 %i.io, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.iq) #33
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.is = load ptr, ptr %i.u, align 8, !tbaa !167
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ir, ptr noundef %i.is)
  %i.it = load ptr, ptr %4, align 8, !tbaa !190   ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !191 ; 2 uses
  %.not4.i.i.i.i68 = icmp eq ptr %i.it, %i.iv
  br i1 %.not4.i.i.i.i68, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74, label %.lr.ph.i.i.i.i69

.lr.ph.i.i.i.i69:                                 ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i69
  %.05.i.i.i.i70 = phi ptr [ %i.iy, %.lr.ph.i.i.i.i69 ], [ %i.it, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit ] ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i70, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !167
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i70, ptr noundef %i.ix)
  %i.iy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i70, i64 48 ; 2 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.iy, %i.iv
  br i1 %.not.i.i.i.i71, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72, label %.lr.ph.i.i.i.i69, !llvm.loop !1

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72: ; preds = %.lr.ph.i.i.i.i69
  %.pr.i.i73 = load ptr, ptr %4, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit
  %i.iz = phi ptr [ %.pr.i.i73, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72 ], [ %i.it, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i75 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i1.i.i75, label %_ZN9Stockfish10NumaConfigD2Ev.exit76, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !188
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.iz to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.je) #33
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit76

_ZN9Stockfish10NumaConfigD2Ev.exit76:             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig16from_system_numaIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EES0_bOT_(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 !guid !678 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %3 = alloca %class.anon.213, align 8            ; 6 uses
  %4 = alloca %"class.std::optional", align 8     ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::vector.33", align 8    ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::optional", align 8    ; 8 uses
  %12 = alloca %"class.std::vector.33", align 8   ; 7 uses
end_hunk_0
