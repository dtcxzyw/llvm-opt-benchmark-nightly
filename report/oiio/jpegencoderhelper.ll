Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jpegencoderhelper?download=true
inline.NumInlined: 369
inline.NumDeleted: 180
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.12 = private unnamed_addr constant [74 x i8] c"number of scan lines processed %d does not equal requested scan lines %d \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_jpegencoderhelper.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEEC2ESt16initializer_listIS8_ERKS5_RKS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !80
  %.idx = shl nuw nsw i64 %2, 5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE22_M_insert_range_uniqueIPKS6_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESH_SH_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE17_M_insert_unique_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EOT_RT0_.exit.i
  %.pr21 = phi i64 [ %.pr, %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE17_M_insert_unique_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EOT_RT0_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.08.i = phi ptr [ %i.ae, %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE17_M_insert_unique_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 6 uses
  %.not.i8 = icmp eq i64 %.pr21, 0
  br i1 %.not.i8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = load i32, ptr %.08.i, align 4, !tbaa !16
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.l = load i32, ptr %.08.i, align 4, !tbaa !16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !14 ; 2 uses
  %.not.i.i9 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i9, label %._crit_edge.i.i, label %bb.d, !llvm.loop !75

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.q = icmp eq ptr %.019.lcssa29.i.i, %i.p
  br i1 %i.q, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #23
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre81.i = load i32, ptr %.phi.trans.insert80.i, align 4, !tbaa !16
  %.pre82.i = load i32, ptr %.08.i, align 4, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.s = phi i32 [ %.pre82.i, %bb.e ], [ %i.l, %._crit_edge.i.i ]
  %i.t = phi i32 [ %.pre81.i, %bb.e ], [ %i.n, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.u = icmp slt i32 %i.t, %i.s
  br i1 %i.u, label %select.unfold, label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE17_M_insert_unique_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.f, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.g, %bb.b ], [ %.019.lcssa28.i.i, %bb.f ] ; 3 uses
  %i.v = icmp eq ptr %.sroa.12.2.i.ph, %i.a
  br i1 %i.v, label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE10_M_insert_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.x = load i32, ptr %.08.i, align 4, !tbaa !16
  %i.y = load i32, ptr %i.w, align 4, !tbaa !16
  %i.z = icmp slt i32 %i.x, %i.y
  br label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE10_M_insert_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE10_M_insert_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i: ; preds = %bb.g, %select.unfold
  %i.aa = phi i1 [ %i.z, %bb.g ], [ true, %select.unfold ]
  %i.ab = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %.noexc6 unwind label %bb.h    ; 2 uses

.noexc6:                                          ; preds = %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE10_M_insert_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i
  invoke void @_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE17_M_construct_nodeIJRKS6_EEEvPSt13_Rb_tree_nodeIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %.08.i)
          to label %.noexc7 unwind label %bb.h

.noexc7:                                          ; preds = %.noexc6
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #25
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !80
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !80
  br label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE17_M_insert_unique_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EOT_RT0_.exit.i

_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE17_M_insert_unique_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EOT_RT0_.exit.i: ; preds = %bb.f, %.noexc7
  %.pr = phi i64 [ %.pr21, %bb.f ], [ %i.ad, %.noexc7 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %i.f
  br i1 %.not.i, label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE22_M_insert_range_uniqueIPKS6_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESH_SH_.exit, label %.lr.ph.i, !llvm.loop !76

_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE22_M_insert_range_uniqueIPKS6_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESH_SH_.exit: ; preds = %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE17_M_insert_unique_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EOT_RT0_.exit.i, %bb.a
  ret void

bb.h:                                             ; preds = %.noexc6, %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE10_M_insert_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #25
  resume { ptr, i32 } %i.af
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  invoke void @_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr17JpegEncoderHelper13compressImageEPK14uhdr_raw_imageiPKvm(ptr dead_on_unwind noalias writable sret(%struct.uhdr_error_info) align 4 initializes((0, 264)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 5 uses
  %i.b = alloca [3 x i32], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !81
  store <2 x ptr> %i.d, ptr %i.a, align 16, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  store ptr %i.g, ptr %i.e, align 16, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load <2 x i32>, ptr %i.h, align 8, !tbaa !6
  store <2 x i32> %i.i, ptr %i.b, align 8, !tbaa !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !6
  store i32 %i.l, ptr %i.j, align 8, !tbaa !6
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !84
  %i.q = load i32, ptr %2, align 8, !tbaa !85
  call void @_ZN8ultrahdr17JpegEncoderHelper6encodeEPPKhPKjii12uhdr_img_fmtiPKvm(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull readonly %i.a, ptr noundef nonnull readonly %i.b, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %3, ptr noundef %4, i64 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr17JpegEncoderHelper13compressImageEPPKhPKjii12uhdr_img_fmtiPKvm(ptr dead_on_unwind noalias writable sret(%struct.uhdr_error_info) align 4 initializes((0, 264)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN8ultrahdr17JpegEncoderHelper6encodeEPPKhPKjii12uhdr_img_fmtiPKvm(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr17JpegEncoderHelper6encodeEPPKhPKjii12uhdr_img_fmtiPKvm(ptr dead_on_unwind noalias writable sret(%struct.uhdr_error_info) align 4 initializes((0, 264)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %struct.jpeg_compress_struct, align 8 ; 27 uses
  %11 = alloca %"struct.ultrahdr::jpeg_error_mgr_impl", align 8 ; 6 uses
  %i.a = alloca [255 x i8], align 16              ; 5 uses
  %i.b = alloca [1 x ptr], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 16), align 8, !tbaa !13 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8), %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16
  %i.f = icmp slt i32 %i.e, %6                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !86

_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8)
  br i1 %i.g, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = icmp slt i32 %6, %i.i
  br i1 %i.j, label %select.unfold, label %.lr.ph.i.i.i53

select.unfold:                                    ; preds = %bb.b, %bb.a, %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  store i32 3, ptr %0, align 4, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.k, align 4, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 256, ptr noundef nonnull @.str, i32 noundef %6) #25 ; 0 uses
  br label %.critedge51

.lr.ph.i.i.i53:                                   ; preds = %bb.b, %.lr.ph.i.i.i53
  %.012.i.i.i54 = phi ptr [ %.1.i.i.i59, %.lr.ph.i.i.i53 ], [ %i.c, %bb.b ] ; 3 uses
  %.0811.i.i.i55 = phi ptr [ %.19.i.i.i56, %.lr.ph.i.i.i53 ], [ getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8), %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i.i54, i64 32
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = icmp slt i32 %i.o, %6                    ; 2 uses
  %.19.i.i.i56 = select i1 %i.p, ptr %.0811.i.i.i55, ptr %.012.i.i.i54 ; 4 uses
  %.1.in.v.i.i.i57 = select i1 %i.p, i64 24, i64 16
  %.1.in.i.i.i58 = getelementptr inbounds nuw i8, ptr %.012.i.i.i54, i64 %.1.in.v.i.i.i57
  %.1.i.i.i59 = load ptr, ptr %.1.in.i.i.i58, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %.1.i.i.i59, null
  br i1 %.not.i.i.i60, label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61, label %.lr.ph.i.i.i53, !llvm.loop !86

_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61: ; preds = %.lr.ph.i.i.i53
  %i.q = icmp eq ptr %.19.i.i.i56, getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8)
  br i1 %i.q, label %_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i56, i64 32
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = icmp slt i32 %6, %i.s
  %spec.select.i.i62 = select i1 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8), ptr %.19.i.i.i56
  br label %_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64

_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64: ; preds = %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61, %bb.c
  %.sroa.0.0.i.i63 = phi ptr [ %spec.select.i.i62, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8), %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61 ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i63, i64 40
  %i.v = call ptr @jpeg_std_error(ptr noundef nonnull %11) ; 2 uses
  store ptr %i.v, ptr %10, align 8, !tbaa !95
  store ptr @_ZN8ultrahdrL15jpegrerror_exitEP18jpeg_common_struct, ptr %11, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @_ZN8ultrahdrL18outputErrorMessageEP18jpeg_common_struct, ptr %i.w, align 8, !tbaa !97
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 168
  %i.y = call i32 @_setjmp(ptr noundef nonnull %i.x) #27
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.r

bb.d:                                             ; preds = %_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64
  call void @jpeg_CreateCompress(ptr noundef nonnull %10, i32 noundef 80, i64 noundef 584)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @_ZN8ultrahdrL15initDestinationEP20jpeg_compress_struct, ptr %i.aa, align 8, !tbaa !98
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @_ZN8ultrahdrL17emptyOutputBufferEP20jpeg_compress_struct, ptr %i.ab, align 8, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @_ZN8ultrahdrL20terminateDestinationEP20jpeg_compress_struct, ptr %i.ac, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !51 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52
  %.not.i.i = icmp eq ptr %i.ag, %i.ae
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !52
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.d, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %1, ptr %i.ah, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  store i32 %4, ptr %i.ai, align 8, !tbaa !101
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 52 ; 4 uses
  store i32 %5, ptr %i.aj, align 4, !tbaa !54
  switch i32 %6, label %bb.g [
    i32 11, label %bb.h
    i32 2, label %bb.e
    i32 10, label %bb.f
    i32 9, label %bb.f
    i32 8, label %bb.f
    i32 7, label %bb.f
    i32 6, label %bb.f
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit, %_ZNSt6vectorIhSaIhEE5clearEv.exit, %_ZNSt6vectorIhSaIhEE5clearEv.exit, %_ZNSt6vectorIhSaIhEE5clearEv.exit, %_ZNSt6vectorIhSaIhEE5clearEv.exit, %_ZNSt6vectorIhSaIhEE5clearEv.exit
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  store i32 1, ptr %0, align 4, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ak, align 4, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.al, i64 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %6) #25 ; 0 uses
  call void @jpeg_destroy_compress(ptr noundef nonnull %10)
  br label %.critedge51

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit, %bb.e, %bb.f
  %.042 = phi i1 [ true, %bb.e ], [ false, %bb.f ], [ true, %_ZNSt6vectorIhSaIhEE5clearEv.exit ]
  %i.an = phi <2 x i32> [ splat (i32 1), %bb.e ], [ splat (i32 3), %bb.f ], [ <i32 3, i32 2>, %_ZNSt6vectorIhSaIhEE5clearEv.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 56
  store <2 x i32> %i.an, ptr %i.ao, align 8, !tbaa !55
  call void @jpeg_set_defaults(ptr noundef nonnull %10)
  call void @jpeg_set_quality(ptr noundef nonnull %10, i32 noundef %7, i32 noundef 1)
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 92
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !56 ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !58  ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !59 ; 5 uses
  %i.av = load i32, ptr %i.ai, align 8, !tbaa !101
  %i.aw = uitofp i32 %i.av to float               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.az = load i32, ptr %i.aj, align 4, !tbaa !54
  %i.ba = uitofp i32 %i.az to float               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 28 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.aq to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.aq, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bd = getelementptr nuw i8, ptr %i.au, i64 8  ; 3 uses
  %i.be = mul nuw nsw i64 %wide.trip.count, 96
  %i.bf = getelementptr i8, ptr %i.au, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -80    ; 3 uses
  %i.bh = shl nuw nsw i64 %wide.trip.count, 2
  %i.bi = getelementptr i8, ptr %1, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 100    ; 3 uses
  %i.bk = getelementptr i8, ptr %i.as, i64 32     ; 2 uses
  %i.bl = shl nuw nsw i64 %wide.trip.count, 3
  %i.bm = getelementptr i8, ptr %i.as, i64 %i.bl  ; 2 uses
  %bound0 = icmp ult ptr %i.bd, %i.bj
  %bound1 = icmp ult ptr %i.ay, %i.bg
  %found.conflict = and i1 %bound0, %bound1
  %bound0110 = icmp ult ptr %i.bd, %i.bk
  %bound1111 = icmp ult ptr %i.ax, %i.bg
  %found.conflict112 = and i1 %bound0110, %bound1111
  %conflict.rdx = or i1 %found.conflict, %found.conflict112
  %bound0113 = icmp ult ptr %i.bd, %i.bm
  %bound1114 = icmp ult ptr %i.as, %i.bg
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx, %found.conflict115
  %bound0117 = icmp ult ptr %i.ay, %i.bk
  %bound1118 = icmp ult ptr %i.ax, %i.bj
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx116, %found.conflict119
  %bound0121 = icmp ult ptr %i.ay, %i.bm
  %bound1122 = icmp ult ptr %i.as, %i.bj
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx120, %found.conflict123
  br i1 %conflict.rdx124, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %i.bn = load i32, ptr %i.ax, align 4, !tbaa !6, !alias.scope !102
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bn, i64 0
  %i.bo = sitofp <2 x i32> %broadcast.splatinsert to <2 x float>
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = load i32, ptr %i.bb, align 4, !tbaa !6, !alias.scope !102
  %broadcast.splatinsert125 = insertelement <2 x i32> poison, i32 %i.bq, i64 0
  %i.br = sitofp <2 x i32> %broadcast.splatinsert125 to <2 x float>
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert127 = insertelement <2 x float> poison, float %i.aw, i64 0
  %broadcast.splat128 = shufflevector <2 x float> %broadcast.splatinsert127, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert129 = insertelement <2 x float> poison, float %i.ba, i64 0
  %broadcast.splat130 = shufflevector <2 x float> %broadcast.splatinsert129, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bt = shl nuw nsw i64 %index, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bt
  %wide.vec = load <4 x i32>, ptr %i.bu, align 4, !tbaa !6, !alias.scope !103 ; 3 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.bv = getelementptr inbounds nuw [96 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw [96 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 108
  %i.cb = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %i.cb, ptr %i.bx, align 8, !tbaa !6, !alias.scope !104, !noalias !105
  %i.cc = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %i.cc, ptr %i.by, align 8, !tbaa !6, !alias.scope !104, !noalias !105
  %i.cd = sitofp <2 x i32> %strided.vec to <2 x float>
  %i.ce = fmul nnan contract <2 x float> %broadcast.splat128, %i.cd
  %i.cf = fdiv contract <2 x float> %i.ce, %i.bp
  %i.cg = call contract <2 x float> @llvm.ceil.v2f32(<2 x float> %i.cf)
  %i.ch = fptoui <2 x float> %i.cg to <2 x i32>
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index
  store <2 x i32> %i.ch, ptr %i.ci, align 8, !tbaa !6, !alias.scope !106, !noalias !107
  %i.cj = load i32, ptr %i.bz, align 4, !tbaa !61, !alias.scope !104, !noalias !105
  %i.ck = load i32, ptr %i.ca, align 4, !tbaa !61, !alias.scope !104, !noalias !105
  %i.cl = insertelement <2 x i32> poison, i32 %i.cj, i64 0
  %i.cm = insertelement <2 x i32> %i.cl, i32 %i.ck, i64 1
  %i.cn = sitofp <2 x i32> %i.cm to <2 x float>
  %i.co = fmul nnan contract <2 x float> %broadcast.splat130, %i.cn
  %i.cp = fdiv contract <2 x float> %i.co, %i.bs
  %i.cq = call contract <2 x float> @llvm.ceil.v2f32(<2 x float> %i.cp)
  %i.cr = fptoui <2 x float> %i.cq to <2 x i32>
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index
  store <2 x i32> %i.cr, ptr %i.cs, align 4, !tbaa !6, !alias.scope !106, !noalias !107
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.h
  %.not = icmp eq i32 %6, 11                      ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !6  ; 2 uses
  %i.cw = getelementptr inbounds nuw [96 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %i.cv, ptr %i.cx, align 8, !tbaa !110
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !6
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 12 ; 2 uses
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !61
  %i.db = sitofp i32 %i.cv to float
  %i.dc = fmul nnan contract float %i.db, %i.aw
  %i.dd = load i32, ptr %i.ax, align 4, !tbaa !6
  %i.de = sitofp i32 %i.dd to float
  %i.df = fdiv contract float %i.dc, %i.de
  %i.dg = call contract noundef float @llvm.ceil.f32(float %i.df)
  %i.dh = fptoui float %i.dg to i32
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !6
  %i.dj = load i32, ptr %i.da, align 4, !tbaa !61
  %i.dk = sitofp i32 %i.dj to float
  %i.dl = fmul nnan contract float %i.ba, %i.dk
  %i.dm = load i32, ptr %i.bb, align 4, !tbaa !6
  %i.dn = sitofp i32 %i.dm to float
  %i.do = fdiv contract float %i.dl, %i.dn
  %i.dp = call contract noundef float @llvm.ceil.f32(float %i.do)
  %i.dq = fptoui float %i.dp to i32
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !93

bb.i:                                             ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 288
  store i32 1, ptr %i.ds, align 8, !tbaa !111
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 312
  store i32 0, ptr %i.dt, align 8, !tbaa !112
  call void @jpeg_start_compress(ptr noundef nonnull %10, i32 noundef 1)
  %i.du = icmp ne ptr %8, null
  %i.dv = icmp ne i64 %9, 0
  %or.cond12 = and i1 %i.du, %i.dv
  br i1 %or.cond12, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dw = trunc i64 %9 to i32
  call void @jpeg_write_marker(ptr noundef nonnull %10, i32 noundef 226, ptr noundef nonnull %8, i32 noundef %i.dw)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.042, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.dx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 255, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 80) #25 ; 0 uses
  %i.dy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23
  %i.dz = trunc i64 %i.dy to i32
  call void @jpeg_write_marker(ptr noundef nonnull %10, i32 noundef 254, ptr noundef nonnull %i.a, i32 noundef %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %.not, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.n
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 340 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !62 ; 2 uses
  %i.ec = load i32, ptr %i.aj, align 4, !tbaa !54
  %i.ed = icmp ult i32 %i.eb, %i.ec
  br i1 %i.ed, label %.lr.ph75, label %.loopexit

.critedge:                                        ; preds = %.lr.ph75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ee = load i32, ptr %i.ea, align 4, !tbaa !62 ; 2 uses
  %i.ef = load i32, ptr %i.aj, align 4, !tbaa !54
  %i.eg = icmp ult i32 %i.ee, %i.ef
  br i1 %i.eg, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %.preheader, %.critedge
  %i.eh = phi i32 [ %i.ee, %.critedge ], [ %i.eb, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ei = load ptr, ptr %2, align 8, !tbaa !19
  %i.ej = load i32, ptr %3, align 4, !tbaa !6
  %i.ek = mul i32 %i.eh, 3
  %i.el = mul i32 %i.ek, %i.ej
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.em
  store ptr %i.en, ptr %i.b, align 8, !tbaa !19
  %i.eo = call i32 @jpeg_write_scanlines(ptr noundef nonnull %10, ptr noundef nonnull %i.b, i32 noundef 1) ; 2 uses
  %.not49 = icmp eq i32 %i.eo, 1
  br i1 %.not49, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.lr.ph75
  store i32 1, ptr %0, align 4, !tbaa !25
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ep, align 4, !tbaa !26
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.er = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.eq, i64 noundef 256, ptr noundef nonnull @.str.11, i32 noundef %i.eo, i32 noundef 1) #25 ; 0 uses
  call void @jpeg_destroy_compress(ptr noundef nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.critedge51, !llvm.loop !94

bb.p:                                             ; preds = %bb.n
  call void @_ZN8ultrahdr17JpegEncoderHelper13compressYCbCrEP20jpeg_compress_structPPKhPKj(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %10, ptr noundef %2, ptr noundef %3)
  %i.es = load i32, ptr %0, align 4, !tbaa !25
  %.not48 = icmp eq i32 %i.es, 0
  br i1 %.not48, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @jpeg_destroy_compress(ptr noundef nonnull %10)
  br label %.critedge51

bb.r:                                             ; preds = %_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64
  store i32 1, ptr %0, align 4, !tbaa !25
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.et, align 4, !tbaa !26
  %i.eu = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !63
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void %i.ev(ptr noundef nonnull %10, ptr noundef nonnull %i.ew)
  call void @jpeg_destroy_compress(ptr noundef nonnull %10)
  br label %.critedge51

.loopexit:                                        ; preds = %.critedge, %.preheader, %bb.p
  call void @jpeg_finish_compress(ptr noundef nonnull %10)
  call void @jpeg_destroy_compress(ptr noundef nonnull %10)
  br label %.critedge51

.critedge51:                                      ; preds = %bb.o, %bb.r, %.loopexit, %bb.q, %bb.g, %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN8ultrahdr17JpegEncoderHelper18getCompressedImageEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.uhdr_compressed_image) align 8 captures(none) initializes((0, 36)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8, !tbaa !116
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.j, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 -1, ptr %i.k, align 4, !tbaa !118
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.l, align 8, !tbaa !119
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare ptr @jpeg_std_error(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZN8ultrahdrL15jpegrerror_exitEP18jpeg_common_struct(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  tail call void @longjmp(ptr noundef nonnull %i.b, i32 noundef 1) #26
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN8ultrahdrL18outputErrorMessageEP18jpeg_common_struct(ptr noundef %0) #9 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = load ptr, ptr %0, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  call void %i.d(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !121
  %i.f = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !121
  %fputc = call i32 @fputc(i32 10, ptr %i.g)      ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #10

declare void @jpeg_CreateCompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal void @_ZN8ultrahdrL15initDestinationEP20jpeg_compress_struct(ptr nofree noundef readonly captures(none) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 4 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !51   ; 5 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp ult i64 %i.i, 16384
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw nsw i64 16384, %i.i
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.k)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %.pre7 = load ptr, ptr %i.d, align 8, !tbaa !52
  %.pre8 = ptrtoint ptr %.pre to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.i, 16384
  br i1 %.not, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16384 ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.l, ptr %i.d, align 8, !tbaa !52
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre8, %bb.b ], [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ]
  %i.m = phi ptr [ %.pre7, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.l, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ]
  %i.n = phi ptr [ %.pre, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ]
  store ptr %i.n, ptr %i.b, align 8, !tbaa !66
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.o, %.pre-phi
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN8ultrahdrL17emptyOutputBufferEP20jpeg_compress_struct(ptr nofree noundef readonly captures(none) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !51   ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp ult i64 %i.i, -16384
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 16384)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !51
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 %i.i
  %i.l = getelementptr i8, ptr %i.k, i64 16384    ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.c
  store ptr %i.l, ptr %i.d, align 8, !tbaa !52
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  store ptr %i.n, ptr %i.b, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 16384, ptr %i.o, align 8, !tbaa !67
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8ultrahdrL20terminateDestinationEP20jpeg_compress_struct(ptr nofree noundef readonly captures(none) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !67   ; 4 uses
  %i.l = sub nuw i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.k, %i.i
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = sub i64 0, %i.k
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.n)
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
end_hunk_0
