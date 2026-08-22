Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/std-test?download=true
inline.NumInlined: 6377
inline.NumDeleted: 2198
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZNSt3mapISt10error_codeiSt4lessIS0_ESaISt4pairIKS0_iEEEC2ESt16initializer_listIS5_ERKS2_RKS6_:bb.a
  br i1 %.not25.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread79.i
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !582  ; 3 uses
  %i.t = load i32, ptr %.08.i, align 8
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.lr.ph.i.i
  %.02126.i.i = phi ptr [ %.02124.i.i, %.lr.ph.i.i ], [ %.02126.i.i.be, %.backedge.i.backedge ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !582  ; 3 uses
  %i.x = icmp ult ptr %i.s, %i.w
  br i1 %i.x, label %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %.backedge.i
  %i.y = icmp eq ptr %i.s, %i.w
  br i1 %i.y, label %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.i.i, label %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.thread.i

_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.i.i:  ; preds = %bb.d
  %i.z = load i32, ptr %i.u, align 8, !tbaa !579
  %i.aa = icmp slt i32 %i.t, %i.z
  br i1 %i.aa, label %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.i, label %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.thread.i

_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.i: ; preds = %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.i.i, %.backedge.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 16
  %.021.i.i = load ptr, ptr %i.ab, align 8, !tbaa !663 ; 2 uses
  %.not.i.i8 = icmp eq ptr %.021.i.i, null
  br i1 %.not.i.i8, label %._crit_edge.thread.i.i, label %.backedge.i.backedge

_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.thread.i: ; preds = %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.i.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 24
  %.021.i81.i = load ptr, ptr %i.ac, align 8, !tbaa !663 ; 2 uses
  %.not.i82.i = icmp eq ptr %.021.i81.i, null
  br i1 %.not.i82.i, label %._crit_edge.i.thread.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.thread.i, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.i
  %.02126.i.i.be = phi ptr [ %.021.i.i, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.i ], [ %.021.i81.i, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.thread.i ]
  br label %.backedge.i, !llvm.loop !664

._crit_edge.thread.i.i:                           ; preds = %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.i, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread79.i
  %.020.lcssa34.i.i = phi ptr [ %i.a, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread79.i ], [ %.02126.i.i, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.i ] ; 4 uses
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !660
  %i.ae = icmp eq ptr %.020.lcssa34.i.i, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i.i) #38 ; 2 uses
  %.phi.trans.insert106.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.pre107.i = load ptr, ptr %.phi.trans.insert106.i, align 8, !tbaa !582
  %.phi.trans.insert108.i = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %.pre109.i = load ptr, ptr %.phi.trans.insert108.i, align 8, !tbaa !582
  br label %._crit_edge.i.thread.i

._crit_edge.i.thread.i:                           ; preds = %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.thread.i, %bb.e
  %i.ag = phi ptr [ %.pre109.i, %bb.e ], [ %i.s, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.thread.i ] ; 2 uses
  %i.ah = phi ptr [ %.pre107.i, %bb.e ], [ %i.w, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.thread.i ] ; 2 uses
  %.020.lcssa33.i.i = phi ptr [ %.020.lcssa34.i.i, %bb.e ], [ %.02126.i.i, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.thread.i ] ; 2 uses
  %.sroa.06.0.i.i = phi ptr [ %i.af, %bb.e ], [ %.02126.i.i, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.thread.i.thread.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 32
  %i.aj = icmp ult ptr %i.ah, %i.ag
  br i1 %i.aj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.thread.i
  %i.ak = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ak, label %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit5.i.i, label %_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE17_M_insert_unique_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EOT_RT0_.exit.i

_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit5.i.i: ; preds = %bb.f
  %i.al = load i32, ptr %i.ai, align 8, !tbaa !579
  %i.am = load i32, ptr %.08.i, align 8, !tbaa !579
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %bb.g, label %_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE17_M_insert_unique_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EOT_RT0_.exit.i

bb.g:                                             ; preds = %._crit_edge.thread.i.i, %bb.b, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.i, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit5.i.i, %._crit_edge.i.thread.i
  %.sroa.12.2.i.ph = phi ptr [ %.020.lcssa33.i.i, %._crit_edge.i.thread.i ], [ %.020.lcssa33.i.i, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit5.i.i ], [ %i.g, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit.i ], [ %i.g, %bb.b ], [ %.020.lcssa34.i.i, %._crit_edge.thread.i.i ] ; 4 uses
  %i.ao = icmp eq ptr %.sroa.12.2.i.ph, %i.a
  br i1 %i.ao, label %_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !582 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !582 ; 2 uses
  %i.au = icmp ult ptr %i.ar, %i.at
  br i1 %i.au, label %_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = icmp eq ptr %i.ar, %i.at
  br i1 %i.av, label %bb.j, label %_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %.08.i, align 8, !tbaa !579
  %i.ax = load i32, ptr %i.ap, align 8, !tbaa !579
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br label %_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.az = phi i1 [ %i.ay, %bb.j ], [ true, %bb.g ], [ true, %bb.h ], [ false, %bb.i ]
  %i.ba = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35
          to label %.noexc6 unwind label %bb.k    ; 2 uses

.noexc6:                                          ; preds = %_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %.08.i, i64 24, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.az, ptr noundef nonnull %i.ba, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #33
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !662
  %i.bd = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.bd, ptr %i.e, align 8, !tbaa !662
  br label %_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE17_M_insert_unique_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EOT_RT0_.exit.i

_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE17_M_insert_unique_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EOT_RT0_.exit.i: ; preds = %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit5.i.i, %bb.f, %.noexc6
  %.pr = phi i64 [ %.pr22, %_ZNKSt4lessISt10error_codeEclERKS0_S3_.exit5.i.i ], [ %.pr22, %bb.f ], [ %i.bd, %.noexc6 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.f
  br i1 %.not.i, label %_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE22_M_insert_range_uniqueIPKS3_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESE_SE_.exit, label %.lr.ph.i, !llvm.loop !665

_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE22_M_insert_range_uniqueIPKS3_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESE_SE_.exit: ; preds = %_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE17_M_insert_unique_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EOT_RT0_.exit.i, %bb.a
  ret void

bb.k:                                             ; preds = %_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #33
  resume { ptr, i32 } %i.bf
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapISt10error_codeiSt4lessIS0_ESaISt4pairIKS0_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !654
  invoke void @_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #37
  unreachable

_ZNSt8_Rb_treeISt10error_codeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK6my_ns16my_ns212my_exception4whatEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  ret ptr %i.b
}

; Function Attrs: cold mustprogress uwtable
define hidden void @_ZN23std_test_exception_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 9 uses
  %16 = alloca %"class.testing::PolymorphicMatcher", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::allocator", align 1   ; 5 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %23 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 9 uses
  %24 = alloca %"class.testing::PolymorphicMatcher", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  tail call void @_Z14exception_testISt9exceptionEvv()
  tail call void @_Z14exception_testISt13runtime_errorEvv()
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #33 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.246, i64 12, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 12, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.d, align 4, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6my_ns16my_ns212my_exceptionE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.f, ptr noundef nonnull align 1 dereferenceable(12) @.str.246, i64 12, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 12, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i8 0, ptr %i.h, align 4, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6my_ns16my_ns212my_exceptionE, ptr nonnull @_ZN6my_ns16my_ns212my_exceptionD2Ev) #32
          to label %bb.cc unwind label %.body.thread

.body.thread:                                     ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.j = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  %i.l = load i64, ptr %i.b, align 8, !tbaa !18
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread194: ; preds = %.body.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %.015182 = extractvalue { ptr, i32 } %i.i, 1
  %i.n = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #33
  %i.o = icmp eq i32 %.015182, %i.n
  br i1 %i.o, label %.noexc77, label %bb.ca

.noexc77:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread194
  %.017184 = extractvalue { ptr, i32 } %i.i, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %.017184) #33 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !666
  store ptr %i.p, ptr %3, align 16, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customISt9exceptionEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.q, align 8, !tbaa !18
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.250, i64 4, i64 15, ptr nonnull %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !666
  invoke void @_ZN7testing8internal8EqHelper7CompareIA43_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.248, ptr noundef nonnull align 1 dereferenceable(43) @.str.249, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %7, align 8, !tbaa !16     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8, !tbaa !18
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.w = load i8, ptr %6, align 8, !tbaa !41, !range !51, !noundef !52
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.noexc, label %bb.f

bb.d:                                             ; preds = %.noexc77
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.e:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.e
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.d
  %.pn43 = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.q

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.h, %bb.g
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ @.str.352, %bb.g ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 385, ptr noundef %i.ai)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.aj = load ptr, ptr %8, align 8, !tbaa !54    ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i92, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.j
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #33, !inline_history !56
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %.noexc

bb.k:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit95

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn45 = phi { ptr, i32 } [ %i.ap, %bb.m ], [ %i.ao, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.aq = load ptr, ptr %8, align 8, !tbaa !54    ; 3 uses
  %.not.i.i93 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i93, label %_ZN7testing7MessageD2Ev.exit95, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %bb.n
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(128) %i.aq) #33, !inline_history !56
  br label %_ZN7testing7MessageD2Ev.exit95

_ZN7testing7MessageD2Ev.exit95:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94, %bb.n, %bb.k
  %.pn45.pn = phi { ptr, i32 } [ %i.an, %bb.k ], [ %.pn45, %bb.n ], [ %.pn45, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #33
  br label %bb.q

.noexc:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !669
  store ptr %i.p, ptr %4, align 16, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customISt9exceptionEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.au, align 8, !tbaa !18
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.253, i64 3, i64 15, ptr nonnull %4)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !669
  invoke void @_ZN7testing8internal8EqHelper7CompareIA13_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.252, ptr noundef nonnull align 1 dereferenceable(13) @.str.246, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.p
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !18
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.ba = load i8, ptr %10, align 8, !tbaa !41, !range !51, !noundef !52
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.ac, label %bb.t
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE:bb.a
  store i64 1, ptr %i.bb, align 8, !tbaa !1049
  store i8 %i.bh, ptr %i.bc, align 8, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.04.0.copyload = load i64, ptr %8, align 16
  %.sroa.2.0.copyload = load i64, ptr %i.a, align 8
  invoke void @_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(double noundef %1, i64 %.sroa.04.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = load ptr, ptr %11, align 8, !tbaa !1041
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !1049 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr %i.bi, ptr %5, align 8, !tbaa !1161
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bj, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14
  %i.bk = invoke ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_2ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 noundef %i.bj, i64 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit unwind label %bb.r

_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.ae

bb.r:                                             ; preds = %bb.q, %bb.t, %bb.p
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.s:                                             ; preds = %bb.m
  %i.bm = icmp eq i32 %.037, 2147483647
  br i1 %i.bm, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.360) #32
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bn = add nuw nsw i32 %.037, 1                ; 2 uses
  %.not47 = icmp eq i32 %i.ar, 0
  br i1 %.not47, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = or i32 %.pre61, 8192
  store i32 %i.bo, ptr %8, align 16, !tbaa !1043
  br label %bb.aa

bb.x:                                             ; preds = %bb.m
  %.not46 = icmp eq i32 %i.ar, 0
  br i1 %.not46, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = or i32 %.pre61, 8192
  store i32 %i.bp, ptr %8, align 16, !tbaa !1043
  br label %bb.aa

bb.z:                                             ; preds = %bb.m
  %spec.store.select = call i32 @llvm.umax.i32(i32 %.037, i32 1)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.v, %bb.w
  %.1 = phi i32 [ %i.bn, %bb.w ], [ %i.bn, %bb.v ], [ %.037, %bb.y ], [ %.037, %bb.x ], [ %spec.store.select, %bb.z ] ; 2 uses
  %i.bq = invoke noundef i32 @_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %1, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(16) %8, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %.1, ptr %i.aq, align 4, !tbaa !1045
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.br = load ptr, ptr %11, align 8, !tbaa !1041
  store ptr %i.br, ptr %12, align 8, !tbaa !1388
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bt = load i64, ptr %i.bb, align 8, !tbaa !1049
  %i.bu = trunc i64 %i.bt to i32
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !1390
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %i.bq, ptr %i.bv, align 4, !tbaa !1391
  %i.bw = invoke ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %.0, i32 noundef 16, ptr %4)
          to label %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit unwind label %bb.ad

_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.ag

bb.ae:                                            ; preds = %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit, %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit
  %.sroa.036.0 = phi ptr [ %i.bw, %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit ], [ %i.bk, %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit ]
  %i.bz = load ptr, ptr %11, align 8, !tbaa !1041 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, %i.bc
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef %i.bz) #33
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ac, %bb.ad, %bb.r
  %.pn50 = phi { ptr, i32 } [ %i.bl, %bb.r ], [ %i.bx, %bb.ac ], [ %i.by, %bb.ad ]
  %i.ca = load ptr, ptr %11, align 8, !tbaa !1041 ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.ca, %i.bc
  br i1 %.not.i.i54, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit55, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.ca) #33
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit55

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit55: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  resume { ptr, i32 } %.pn50

bb.ai:                                            ; preds = %bb.b, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, %bb.l
  %.sroa.036.3 = phi ptr [ %i.ay, %bb.l ], [ %i.w, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.036.0, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %0, %bb.b ]
  ret ptr %.sroa.036.3
}

declare noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr, ptr noundef byval(%"class.fmt::v12::loc_value") align 16, ptr noundef nonnull align 4 dereferenceable(16), ptr) local_unnamed_addr #0

; Function Attrs: nounwind
declare { i64, i32 } @_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(double noundef %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %.sroa.081.0.extract.trunc = trunc i64 %1 to i32 ; 2 uses
  %.sroa.6.8.extract.shift = lshr i64 %2, 32
  %.sroa.6.8.extract.trunc = trunc nuw i64 %.sroa.6.8.extract.shift to i32 ; 6 uses
  %i.b = bitcast double %0 to i64                 ; 2 uses
  %i.c = and i64 %i.b, 4503599627370495           ; 2 uses
  %i.d = and i64 %i.b, 9218868437227405312        ; 2 uses
  %i.e = icmp eq i64 %i.d, 0                      ; 2 uses
  %i.f = lshr exact i64 %i.d, 52
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = or disjoint i64 %i.c, 4503599627370496
  %storemerge.i.i = select i1 %i.e, i64 %i.c, i64 %i.h ; 4 uses
  %i.i = add nsw i32 %i.g, -1023                  ; 2 uses
  %i.j = select i1 %i.e, i32 -1022, i32 %i.i      ; 2 uses
  %i.k = icmp sgt i64 %2, -1
  %i.l = icmp slt i32 %.sroa.6.8.extract.trunc, 13
  %or.cond35 = and i1 %i.k, %i.l
  br i1 %or.cond35, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = shl nuw nsw i32 %.sroa.6.8.extract.trunc, 2 ; 2 uses
  %i.n = sub nuw nsw i32 48, %i.m
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 8, %i.o
  %i.q = and i64 %i.p, %storemerge.i.i
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sub nuw nsw i32 52, %i.m
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 1, %i.s                  ; 2 uses
  %i.u = add nuw nsw i64 %i.t, %storemerge.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = and i64 %i.u, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.074.1 = phi i64 [ %storemerge.i.i, %bb.a ], [ %storemerge.i.i, %bb.b ], [ %i.w, %bb.c ]
  %.032 = phi i32 [ 13, %bb.a ], [ %.sroa.6.8.extract.trunc, %bb.b ], [ %.sroa.6.8.extract.trunc, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 48, i64 16, i1 false)
  %i.x = and i32 %.sroa.081.0.extract.trunc, 4096
  %.not88 = icmp eq i32 %i.x, 0                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.str.369..str.370.i.i = select i1 %.not88, ptr @.str.370, ptr @.str.369
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %bb.d
  %.012.i.i = phi i64 [ %i.ad, %.split.i.i ], [ %.sroa.074.1, %bb.d ] ; 2 uses
  %.0.i.i38 = phi ptr [ %i.ac, %.split.i.i ], [ %i.y, %bb.d ]
  %i.z = and i64 %.012.i.i, 15
  %i.aa = getelementptr inbounds nuw i8, ptr %.str.369..str.370.i.i, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !18
  %i.ac = getelementptr inbounds i8, ptr %.0.i.i38, i64 -1 ; 2 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !18
  %i.ad = lshr i64 %.012.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader, label %.split.i.i, !llvm.loop !1392

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader: ; preds = %.split.i.i
  %.not8990 = icmp eq i32 %.032, 0
  br i1 %.not8990, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit
  %.191 = phi i32 [ %5, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.032, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ] ; 3 uses
  %4 = zext nneg i32 %.191 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %4
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.ag = icmp eq i8 %i.af, 48
  br i1 %i.ag, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit, label %.critedge

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit: ; preds = %.lr.ph
  %5 = add nsw i32 %.191, -1                      ; 2 uses
  %.not89 = icmp eq i32 %5, 0
  br i1 %.not89, label %.critedge, label %.lr.ph, !llvm.loop !1393

.critedge:                                        ; preds = %.lr.ph, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader
  %.1.lcssa = phi i32 [ 0, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ], [ 0, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.191, %.lr.ph ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 27 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1049 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1042
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.e, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.e:                                             ; preds = %.critedge
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !942
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aj), !inline_history !1378
  %.pre.i = load i64, ptr %i.ah, align 8, !tbaa !1049 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %.critedge, %bb.e
  %.pre-phi.i = phi i64 [ %i.aj, %.critedge ], [ %.pre2.i, %bb.e ]
  %i.ap = phi i64 [ %i.ai, %.critedge ], [ %.pre.i, %bb.e ]
  %i.aq = load ptr, ptr %3, align 8, !tbaa !1041
  store i64 %.pre-phi.i, ptr %i.ah, align 8, !tbaa !1049
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 48, ptr %i.ar, align 1, !tbaa !18
  %i.as = select i1 %.not88, i8 120, i8 88
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !1049 ; 2 uses
  %i.au = add i64 %i.at, 1                        ; 3 uses
  %i.av = load i64, ptr %i.ak, align 8, !tbaa !1042
  %i.aw = icmp ugt i64 %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42

bb.f:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !942
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.au), !inline_history !1378
  %.pre.i40 = load i64, ptr %i.ah, align 8, !tbaa !1049 ; 2 uses
  %.pre2.i41 = add i64 %.pre.i40, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.f
  %.pre-phi.i39 = phi i64 [ %i.au, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i41, %bb.f ]
  %i.az = phi i64 [ %i.at, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre.i40, %bb.f ]
  %i.ba = load ptr, ptr %3, align 8, !tbaa !1041
  store i64 %.pre-phi.i39, ptr %i.ah, align 8, !tbaa !1049
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i8 %i.as, ptr %i.bb, align 1, !tbaa !18
  %i.bc = load i64, ptr %i.ah, align 8, !tbaa !1049 ; 2 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load i64, ptr %i.ak, align 8, !tbaa !1042
  %i.bf = icmp ugt i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.g, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46

bb.g:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !942
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bd), !inline_history !1378
  %.pre.i44 = load i64, ptr %i.ah, align 8, !tbaa !1049 ; 2 uses
  %.pre2.i45 = add i64 %.pre.i44, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42, %bb.g
  %.pre-phi.i43 = phi i64 [ %i.bd, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %.pre2.i45, %bb.g ]
  %i.bi = phi i64 [ %i.bc, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %.pre.i44, %bb.g ]
  %i.bj = load i8, ptr %i.a, align 16, !tbaa !18
  %i.bk = load ptr, ptr %3, align 8, !tbaa !1041
  store i64 %.pre-phi.i43, ptr %i.ah, align 8, !tbaa !1049
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !18
  %i.bm = and i32 %.sroa.081.0.extract.trunc, 8192
  %i.bn = or i32 %.1.lcssa, %i.bm
  %or.cond = icmp ne i32 %i.bn, 0
  %i.bo = icmp slt i32 %.1.lcssa, %.sroa.6.8.extract.trunc ; 2 uses
  %or.cond37 = or i1 %i.bo, %or.cond
  br i1 %or.cond37, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46
  %i.bp = load i64, ptr %i.ah, align 8, !tbaa !1049 ; 2 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load i64, ptr %i.ak, align 8, !tbaa !1042
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !942
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bq), !inline_history !1378
  %.pre.i48 = load i64, ptr %i.ah, align 8, !tbaa !1049 ; 2 uses
  %.pre2.i49 = add i64 %.pre.i48, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50: ; preds = %bb.h, %bb.i
  %.pre-phi.i47 = phi i64 [ %i.bq, %bb.h ], [ %.pre2.i49, %bb.i ]
  %i.bv = phi i64 [ %i.bp, %bb.h ], [ %.pre.i48, %bb.i ]
  %i.bw = load ptr, ptr %3, align 8, !tbaa !1041
  store i64 %.pre-phi.i47, ptr %i.ah, align 8, !tbaa !1049
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 46, ptr %i.bx, align 1, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.bz = zext nneg i32 %.1.lcssa to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz ; 2 uses
  %.not31.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not31.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.j
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i51 = load i64, ptr %i.ah, align 8, !tbaa !1049
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %.lr.ph34.i
  %i.cd = phi i64 [ %.pre.i51, %.lr.ph34.i ], [ %i.dk, %._crit_edge.i ] ; 3 uses
  %.02732.i = phi ptr [ %i.by, %.lr.ph34.i ], [ %i.dl, %._crit_edge.i ] ; 9 uses
  %i.ce = load i64, ptr %i.ak, align 8, !tbaa !1042
  %i.cf = sub i64 %i.ce, %i.cd
  %i.cg = ptrtoint ptr %.02732.i to i64           ; 2 uses
  %i.ch = sub i64 %i.cb, %i.cg                    ; 4 uses
  %i.ci = icmp ult i64 %i.cf, %i.ch
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !942
  %i.ck = add i64 %i.ch, %i.cd
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ck), !inline_history !1373
  %i.cl = load i64, ptr %i.ah, align 8, !tbaa !1049 ; 2 uses
  %i.cm = load i64, ptr %i.ak, align 8, !tbaa !1042
  %i.cn = sub i64 %i.cm, %i.cl
  %i.co = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cn)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.026.i = phi i64 [ %i.cl, %bb.l ], [ %i.cd, %bb.k ] ; 3 uses
  %.025.i = phi i64 [ %i.co, %bb.l ], [ %i.ch, %bb.k ] ; 13 uses
  %i.cp = load ptr, ptr %3, align 8, !tbaa !1041  ; 2 uses
  %i.cq = ptrtoaddr ptr %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.026.i ; 7 uses
  %.not36.i = icmp eq i64 %.025.i, 0
  br i1 %.not36.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.m
  %min.iters.check = icmp ult i64 %.025.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cs = add i64 %.026.i, %i.cq
  %i.ct = sub i64 %i.cg, %i.cs
  %diff.check = icmp ugt i64 %i.ct, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check117 = icmp ult i64 %.025.i, 32
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cu = and i64 %.025.i, 28
  %n.vec = and i64 %.025.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load = load <16 x i8>, ptr %i.cv, align 1, !tbaa !18
  %wide.load118 = load <16 x i8>, ptr %i.cw, align 1, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <16 x i8> %wide.load, ptr %i.cx, align 1, !tbaa !18
  store <16 x i8> %wide.load118, ptr %i.cy, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !1394

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1125

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec119 = and i64 %.025.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index120 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %index120
  %wide.load121 = load <4 x i8>, ptr %i.da, align 1, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index120
  store <4 x i8> %wide.load121, ptr %i.db, align 1, !tbaa !18
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next122, %n.vec119
  br i1 %i.dc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1395

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n123 = icmp eq i64 %.025.i, %n.vec119
  br i1 %cmp.n123, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

end_hunk_1
