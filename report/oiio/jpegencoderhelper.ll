inline.NumInlined: 367
inline.NumDeleted: 180
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<uhdr_img_fmt, std::pair<const uhdr_img_fmt, std::vector<int>>, std::_Select1st<std::pair<const uhdr_img_fmt, std::vector<int>>>, std::less<uhdr_img_fmt>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<uhdr_img_fmt, std::pair<const uhdr_img_fmt, std::vector<int>>, std::_Select1st<std::pair<const uhdr_img_fmt, std::vector<int>>>, std::less<uhdr_img_fmt>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%struct.uhdr_error_info = type { i32, i32, [256 x i8] }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x i32], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%"struct.ultrahdr::jpeg_error_mgr_impl" = type { %struct.jpeg_error_mgr, [1 x %struct.__jmp_buf_tag] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.uhdr_compressed_image = type { ptr, i64, i64, i32, i32, i32 }
%"struct.std::pair" = type { i32, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::less" = type { i8 }
%"class.std::allocator.4" = type { i8 }

@_ZN8ultrahdr14sample_factorsE = global %"class.std::map" zeroinitializer, align 8
@constinit = private unnamed_addr constant [8 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1], align 4
@constinit.2 = private unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2], align 4
@constinit.3 = private unnamed_addr constant [8 x i32] [i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1], align 4
@constinit.4 = private unnamed_addr constant [8 x i32] [i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2], align 4
@constinit.5 = private unnamed_addr constant [8 x i32] [i32 4, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4, i32 1], align 4
@constinit.6 = private unnamed_addr constant [8 x i32] [i32 4, i32 2, i32 1, i32 1, i32 1, i32 1, i32 4, i32 2], align 4
@constinit.7 = private unnamed_addr constant [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 4
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [29 x i8] c"unrecognized input format %d\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"unrecognized input color format for encoding, color format %d\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"Source: google libuhdr v%s, Coder: libjpeg v%d, Attrib: GainMap Image\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"1.4.0\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"jpeg_read_scanlines returned %d, expected %d\00", align 1
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
  store i32 0, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !17
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
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19
  %i.j = load i32, ptr %.08.i, align 4, !tbaa !19
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.l = load i32, ptr %.08.i, align 4, !tbaa !19 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !18 ; 2 uses
  %.not.i.i9 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i9, label %._crit_edge.i.i, label %bb.d, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.q = icmp eq ptr %.019.lcssa29.i.i, %i.p
  br i1 %i.q, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #23
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre81.i = load i32, ptr %.phi.trans.insert80.i, align 4, !tbaa !19
  %.pre82.i = load i32, ptr %.08.i, align 4, !tbaa !19
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
  %i.x = load i32, ptr %.08.i, align 4, !tbaa !19
  %i.y = load i32, ptr %i.w, align 4, !tbaa !19
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
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !17
  br label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE17_M_insert_unique_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EOT_RT0_.exit.i

_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE17_M_insert_unique_IRKS6_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EOT_RT0_.exit.i: ; preds = %bb.f, %.noexc7
  %.pr = phi i64 [ %.pr21, %bb.f ], [ %i.ad, %.noexc7 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %i.f
  br i1 %.not.i, label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE22_M_insert_range_uniqueIPKS6_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESH_SH_.exit, label %.lr.ph.i, !llvm.loop !23

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
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
define void @_ZN8ultrahdr17JpegEncoderHelper13compressImageEPK14uhdr_raw_imageiPKvm(ptr dead_on_unwind noalias writable sret(%struct.uhdr_error_info) align 4 initializes((0, 264)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 5 uses
  %i.b = alloca [3 x i32], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !24
  store <2 x ptr> %i.d, ptr %i.a, align 16, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  store ptr %i.g, ptr %i.e, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load <2 x i32>, ptr %i.h, align 8, !tbaa !3
  store <2 x i32> %i.i, ptr %i.b, align 8, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !3
  store i32 %i.l, ptr %i.j, align 8, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %i.q = load i32, ptr %2, align 8, !tbaa !33
  call void @_ZN8ultrahdr17JpegEncoderHelper6encodeEPPKhPKjii12uhdr_img_fmtiPKvm(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull readonly %i.a, ptr noundef nonnull readonly %i.b, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %3, ptr noundef %4, i64 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr17JpegEncoderHelper13compressImageEPPKhPKjii12uhdr_img_fmtiPKvm(ptr dead_on_unwind noalias writable sret(%struct.uhdr_error_info) align 4 initializes((0, 264)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN8ultrahdr17JpegEncoderHelper6encodeEPPKhPKjii12uhdr_img_fmtiPKvm(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr17JpegEncoderHelper6encodeEPPKhPKjii12uhdr_img_fmtiPKvm(ptr dead_on_unwind noalias writable sret(%struct.uhdr_error_info) align 4 initializes((0, 264)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %struct.jpeg_compress_struct, align 8 ; 27 uses
  %11 = alloca %"struct.ultrahdr::jpeg_error_mgr_impl", align 8 ; 6 uses
  %i.a = alloca [255 x i8], align 16              ; 5 uses
  %i.b = alloca [1 x ptr], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 16), align 8, !tbaa !14 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8), %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = icmp slt i32 %i.e, %6                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !34

_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8)
  br i1 %i.g, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19
  %i.j = icmp slt i32 %6, %i.i
  br i1 %i.j, label %select.unfold, label %.lr.ph.i.i.i53

select.unfold:                                    ; preds = %bb.b, %bb.a, %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  store i32 3, ptr %0, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.k, align 4, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 256, ptr noundef nonnull @.str, i32 noundef %6) #25 ; 0 uses
  br label %.critedge51

.lr.ph.i.i.i53:                                   ; preds = %bb.b, %.lr.ph.i.i.i53
  %.012.i.i.i54 = phi ptr [ %.1.i.i.i59, %.lr.ph.i.i.i53 ], [ %i.c, %bb.b ] ; 3 uses
  %.0811.i.i.i55 = phi ptr [ %.19.i.i.i56, %.lr.ph.i.i.i53 ], [ getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8), %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i.i54, i64 32
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %i.p = icmp slt i32 %i.o, %6                    ; 2 uses
  %.19.i.i.i56 = select i1 %i.p, ptr %.0811.i.i.i55, ptr %.012.i.i.i54 ; 4 uses
  %.1.in.v.i.i.i57 = select i1 %i.p, i64 24, i64 16
  %.1.in.i.i.i58 = getelementptr inbounds nuw i8, ptr %.012.i.i.i54, i64 %.1.in.v.i.i.i57
  %.1.i.i.i59 = load ptr, ptr %.1.in.i.i.i58, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %.1.i.i.i59, null
  br i1 %.not.i.i.i60, label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61, label %.lr.ph.i.i.i53, !llvm.loop !34

_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61: ; preds = %.lr.ph.i.i.i53
  %i.q = icmp eq ptr %.19.i.i.i56, getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8)
  br i1 %i.q, label %_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i56, i64 32
  %i.s = load i32, ptr %i.r, align 4, !tbaa !19
  %i.t = icmp slt i32 %6, %i.s
  %spec.select.i.i62 = select i1 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8), ptr %.19.i.i.i56
  br label %_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64

_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64: ; preds = %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61, %bb.c
  %.sroa.0.0.i.i63 = phi ptr [ %spec.select.i.i62, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8), %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61 ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i63, i64 40
  %i.v = call ptr @jpeg_std_error(ptr noundef nonnull %11) ; 2 uses
  store ptr %i.v, ptr %10, align 8, !tbaa !39
  store ptr @_ZN8ultrahdrL15jpegrerror_exitEP18jpeg_common_struct, ptr %11, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @_ZN8ultrahdrL18outputErrorMessageEP18jpeg_common_struct, ptr %i.w, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 168
  %i.y = call i32 @_setjmp(ptr noundef nonnull %i.x) #27
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.r

bb.d:                                             ; preds = %_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64
  call void @jpeg_CreateCompress(ptr noundef nonnull %10, i32 noundef 80, i64 noundef 584)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @_ZN8ultrahdrL15initDestinationEP20jpeg_compress_struct, ptr %i.aa, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @_ZN8ultrahdrL17emptyOutputBufferEP20jpeg_compress_struct, ptr %i.ab, align 8, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @_ZN8ultrahdrL20terminateDestinationEP20jpeg_compress_struct, ptr %i.ac, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !68 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !70
  %.not.i.i = icmp eq ptr %i.ag, %i.ae
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !70
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.d, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %1, ptr %i.ah, align 8, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  store i32 %4, ptr %i.ai, align 8, !tbaa !72
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 52 ; 4 uses
  store i32 %5, ptr %i.aj, align 4, !tbaa !73
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
  store i32 1, ptr %0, align 4, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ak, align 4, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.al, i64 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %6) #25 ; 0 uses
  call void @jpeg_destroy_compress(ptr noundef nonnull %10)
  br label %.critedge51

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit, %bb.e, %bb.f
  %.043 = phi i1 [ true, %bb.e ], [ false, %bb.f ], [ true, %_ZNSt6vectorIhSaIhEE5clearEv.exit ]
  %i.an = phi <2 x i32> [ splat (i32 1), %bb.e ], [ splat (i32 3), %bb.f ], [ <i32 3, i32 2>, %_ZNSt6vectorIhSaIhEE5clearEv.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 56
  store <2 x i32> %i.an, ptr %i.ao, align 8, !tbaa !74
  call void @jpeg_set_defaults(ptr noundef nonnull %10)
  call void @jpeg_set_quality(ptr noundef nonnull %10, i32 noundef %7, i32 noundef 1)
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 92
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !75 ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !76  ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !78 ; 5 uses
  %i.av = load i32, ptr %i.ai, align 8, !tbaa !72
  %i.aw = uitofp i32 %i.av to float               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.az = load i32, ptr %i.aj, align 4, !tbaa !73
  %i.ba = uitofp i32 %i.az to float               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 28 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.aq to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.aq, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.bd = mul nuw nsw i64 %wide.trip.count, 96
  %i.be = getelementptr i8, ptr %i.au, i64 %i.bd
  %scevgep91 = getelementptr i8, ptr %i.be, i64 -80 ; 3 uses
  %i.bf = shl nuw nsw i64 %wide.trip.count, 2
  %i.bg = getelementptr i8, ptr %1, i64 %i.bf
  %scevgep92 = getelementptr i8, ptr %i.bg, i64 100 ; 3 uses
  %scevgep93 = getelementptr i8, ptr %i.as, i64 32 ; 2 uses
  %i.bh = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep94 = getelementptr i8, ptr %i.as, i64 %i.bh ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep92
  %bound1 = icmp ult ptr %i.ay, %scevgep91
  %found.conflict = and i1 %bound0, %bound1
  %bound095 = icmp ult ptr %scevgep, %scevgep93
  %bound196 = icmp ult ptr %i.ax, %scevgep91
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx = or i1 %found.conflict, %found.conflict97
  %bound098 = icmp ult ptr %scevgep, %scevgep94
  %bound199 = icmp ult ptr %i.as, %scevgep91
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %conflict.rdx, %found.conflict100
  %bound0102 = icmp ult ptr %i.ay, %scevgep93
  %bound1103 = icmp ult ptr %i.ax, %scevgep92
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx105 = or i1 %conflict.rdx101, %found.conflict104
  %bound0106 = icmp ult ptr %i.ay, %scevgep94
  %bound1107 = icmp ult ptr %i.as, %scevgep92
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx109 = or i1 %conflict.rdx105, %found.conflict108
  br i1 %conflict.rdx109, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %i.bi = load i32, ptr %i.ax, align 4, !tbaa !3, !alias.scope !79
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bi, i64 0
  %i.bj = sitofp <2 x i32> %broadcast.splatinsert to <2 x float>
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = load i32, ptr %i.bb, align 4, !tbaa !3, !alias.scope !79
  %broadcast.splatinsert110 = insertelement <2 x i32> poison, i32 %i.bl, i64 0
  %i.bm = sitofp <2 x i32> %broadcast.splatinsert110 to <2 x float>
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert112 = insertelement <2 x float> poison, float %i.aw, i64 0
  %broadcast.splat113 = shufflevector <2 x float> %broadcast.splatinsert112, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert114 = insertelement <2 x float> poison, float %i.ba, i64 0
  %broadcast.splat115 = shufflevector <2 x float> %broadcast.splatinsert114, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bo = shl nuw nsw i64 %index, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bo
  %wide.vec = load <4 x i32>, ptr %i.bp, align 4, !tbaa !3, !alias.scope !82 ; 3 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.bq = getelementptr inbounds nuw [96 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw [96 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 108
  %i.bw = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %i.bw, ptr %i.bs, align 8, !tbaa !3, !alias.scope !84, !noalias !86
  %i.bx = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %i.bx, ptr %i.bt, align 8, !tbaa !3, !alias.scope !84, !noalias !86
  %i.by = sitofp <2 x i32> %strided.vec to <2 x float>
  %i.bz = fmul nnan contract <2 x float> %broadcast.splat113, %i.by
  %i.ca = fdiv contract <2 x float> %i.bz, %i.bk
  %i.cb = call contract <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ca)
  %i.cc = fptoui <2 x float> %i.cb to <2 x i32>
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index
  store <2 x i32> %i.cc, ptr %i.cd, align 8, !tbaa !3, !alias.scope !88, !noalias !89
  %i.ce = load i32, ptr %i.bu, align 4, !tbaa !90, !alias.scope !84, !noalias !86
  %i.cf = load i32, ptr %i.bv, align 4, !tbaa !90, !alias.scope !84, !noalias !86
end_hunk_0
