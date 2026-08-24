Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mesh_compare?download=true
inline.NumInlined: 484
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::array<video::S3DVertex, 3>, std::allocator<std::array<video::S3DVertex, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::array<video::S3DVertex, 3>, std::allocator<std::array<video::S3DVertex, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::array<video::S3DVertex, 3>, std::allocator<std::array<video::S3DVertex, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::array<video::S3DVertex, 3>, std::allocator<std::array<video::S3DVertex, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.video::S3DVertex" = type <{ %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16, [2 x i8] }>
%"class.core::vector3d" = type { float, float, float }
%"class.video::SColor" = type { i32 }
%"class.core::vector2d" = type { float, float }
%"struct.std::array.25" = type { [3 x %"struct.video::S3DVertex"] }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::array<video::S3DVertex, 3>, std::pair<const std::array<video::S3DVertex, 3>, QuadRef>, std::_Select1st<std::pair<const std::array<video::S3DVertex, 3>, QuadRef>>, std::less<std::array<video::S3DVertex, 3>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::array<video::S3DVertex, 3>, std::pair<const std::array<video::S3DVertex, 3>, QuadRef>, std::_Select1st<std::pair<const std::array<video::S3DVertex, 3>, QuadRef>>, std::less<std::array<video::S3DVertex, 3>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.std::pair.23" = type { %"struct.std::array.25", %struct.QuadRef }
%struct.QuadRef = type { i32, i32 }
%"struct.std::array.26" = type { [4 x i32] }

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_ = comdat any

$_ZNK5video9S3DVertexltERKS0_ = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_ = comdat any

$_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZSteqIN5video9S3DVertexELm3EEbRKSt5arrayIT_XT0_EES6_ = comdat any

@.str = private unnamed_addr constant [35 x i8] c"got fractional number of triangles\00", align 1
@_ZTISt16invalid_argument = external constant ptr
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"got bad triangle\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm3EESaISB_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.a, align 8
  %.val5 = load ptr, ptr %1, align 8, !tbaa !9, !noalias !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.b, align 8, !tbaa !16, !noalias !13
  call fastcc void @_ZL16canonicalizeMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE(ptr dead_on_unwind noalias writable align 8 %3, ptr %.val, ptr %.val4, ptr %.val5, ptr %.val6)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !20     ; 7 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp eq i64 %i.h, %i.n
  br i1 %i.o, label %bb.b, label %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit

bb.b:                                             ; preds = %bb.a
  %.not9.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not9.i.i.i.i.i, label %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.noexc
  %.011.i.i.i.i.i = phi ptr [ %i.r, %.noexc ], [ %i.k, %bb.b ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.q, %.noexc ], [ %i.e, %bb.b ] ; 2 uses
  %i.p = invoke noundef zeroext i1 @_ZSteqIN5video9S3DVertexELm3EEbRKSt5arrayIT_XT0_EES6_(ptr noundef nonnull align 4 dereferenceable(120) %.0810.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(120) %.011.i.i.i.i.i)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 120 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 120
  %.not.i.i.i.i.i = icmp ne ptr %i.q, %i.d
  %or.cond.not = select i1 %i.p, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit, !llvm.loop !21

_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit: ; preds = %.noexc, %bb.b, %bb.a
  %i.s = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.p, %.noexc ]
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.w) #17
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit: ; preds = %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i1 %i.s

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i7 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit8, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.ab) #17
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit8

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit8: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.x
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL16canonicalizeMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr %.0.val, ptr %.8.val, ptr %.0.val1, ptr %.8.val3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca [3 x %"struct.video::S3DVertex"], align 4 ; 7 uses
  %1 = alloca %"struct.std::array.25", align 4    ; 5 uses
  %2 = alloca %"struct.std::array.25", align 8    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.a = ptrtoint ptr %.8.val3 to i64
  %i.b = ptrtoint ptr %.0.val1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = lshr exact i64 %i.c, 1
  %i.e = trunc i64 %i.d to i32                    ; 5 uses
  %i.f = sdiv i32 %i.e, 3                         ; 4 uses
  %i.g = srem i32 %i.e, 3
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #16, !noalias !13 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d, !noalias !13

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18, !noalias !13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #16, !noalias !13
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.j = sext i32 %i.f to i64                     ; 6 uses
  %i.k = icmp slt i32 %i.e, -2
  br i1 %i.k, label %.noexc.i, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

.noexc.i:                                         ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18, !noalias !13
  unreachable

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.e
  %i.l = icmp slt i32 %i.e, 3
  br i1 %i.l, label %_ZL10expandMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE.exit.thread, label %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i

_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.m = mul nuw nsw i64 %i.j, 120                ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #19, !noalias !13 ; 14 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !20, !alias.scope !13
  %i.o = getelementptr inbounds nuw [120 x i8], ptr %i.n, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !23, !alias.scope !13
  %.off = add nsw i32 %i.e, -3
  %i.q = icmp ult i32 %.off, 3
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new

_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new: ; preds = %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i
  %unroll_iter = and i64 %i.j, 1073741822
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new
  %.013.i.i.i.i.i.i.idx = phi i64 [ 0, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new ], [ %.013.i.i.i.i.i.i.add.1, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %.013.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.n, i64 %.013.i.i.i.i.i.i.idx ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.013.i.i.i.i.i.i.ptr, i8 0, i64 120, i1 false), !noalias !13
  store i32 -1, ptr %i.r, align 4, !tbaa !24, !noalias !13
  %.ptr.1.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.1.i.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !noalias !13
  store i32 -1, ptr %i.s, align 4, !tbaa !24, !noalias !13
  %.ptr.2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.2.i.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !noalias !13
  store i32 -1, ptr %i.t, align 4, !tbaa !24, !noalias !13
  %.013.i.i.i.i.i.i.add = add nuw nsw i64 %.013.i.i.i.i.i.i.idx, 120 ; 2 uses
  %.013.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 %.013.i.i.i.i.i.i.add ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.013.i.i.i.i.i.i.ptr.1, i8 0, i64 120, i1 false), !noalias !13
  store i32 -1, ptr %i.u, align 4, !tbaa !24, !noalias !13
  %.ptr.1.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.1.i.i.i.i.i.i.i.i.1, i8 0, i64 24, i1 false), !noalias !13
  store i32 -1, ptr %i.v, align 4, !tbaa !24, !noalias !13
  %.ptr.2.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.2.i.i.i.i.i.i.i.i.1, i8 0, i64 24, i1 false), !noalias !13
  store i32 -1, ptr %i.w, align 4, !tbaa !24, !noalias !13
  %.013.i.i.i.i.i.i.add.1 = add nuw nsw i64 %.013.i.i.i.i.i.i.idx, 240 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !26

_ZL10expandMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE.exit.thread: ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !13
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph.i.unr-lcssa:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = and i32 %i.f, 1
  %lcmp.mod.not = icmp eq i32 %i.x, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %.lr.ph.i.unr-lcssa, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i
  %.013.i.i.i.i.i.i.idx.epil.init = phi i64 [ 0, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i ], [ %.013.i.i.i.i.i.i.add.1, %.lr.ph.i.unr-lcssa ] ; 3 uses
  %lcmp.mod42 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %.013.i.i.i.i.i.i.ptr.epil = getelementptr inbounds nuw i8, ptr %i.n, i64 %.013.i.i.i.i.i.i.idx.epil.init ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.013.i.i.i.i.i.i.ptr.epil, i8 0, i64 120, i1 false), !noalias !13
  store i32 -1, ptr %i.y, align 4, !tbaa !24, !noalias !13
  %.ptr.1.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.1.i.i.i.i.i.i.i.i.epil, i8 0, i64 24, i1 false), !noalias !13
  store i32 -1, ptr %i.z, align 4, !tbaa !24, !noalias !13
  %.ptr.2.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.2.i.i.i.i.i.i.i.i.epil, i8 0, i64 24, i1 false), !noalias !13
  store i32 -1, ptr %i.aa, align 4, !tbaa !24, !noalias !13
  %.013.i.i.i.i.i.i.add.epil = add nuw nsw i64 %.013.i.i.i.i.i.i.idx.epil.init, 120
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %.013.i.i.i.i.i.i.idx.lcssa = phi i64 [ %.013.i.i.i.i.i.i.add, %.lr.ph.i.unr-lcssa ], [ %.013.i.i.i.i.i.i.idx.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.013.i.i.i.i.i.i.ptr.lcssa = phi ptr [ %.013.i.i.i.i.i.i.ptr.1, %.lr.ph.i.unr-lcssa ], [ %.013.i.i.i.i.i.i.ptr.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.013.i.i.i.i.i.i.add.lcssa = phi i64 [ %.013.i.i.i.i.i.i.add.1, %.lr.ph.i.unr-lcssa ], [ %.013.i.i.i.i.i.i.add.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader ] ; 4 uses
  %.ptr.lcssa = getelementptr inbounds nuw i8, ptr %i.n, i64 %.013.i.i.i.i.i.i.add.lcssa ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.ptr.lcssa, ptr %i.ab, align 8, !tbaa !17, !alias.scope !13
  %.sroa.0.40..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 40
  %.sroa.0.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 80
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %i.ac = ashr exact i64 %i.c, 1                  ; 6 uses
  %i.ad = udiv exact i64 %.013.i.i.i.i.i.i.add.lcssa, 120
  %i.ae = ptrtoint ptr %.8.val to i64
  %i.af = ptrtoint ptr %.0.val to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 40                ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.ai = mul nuw nsw i64 %indvars.iv.i, 3        ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.ac, %i.ai
  br i1 %.not.i.i.i, label %bb.g, label %.invoke.i

.invoke.i:                                        ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.aj = phi i64 [ %i.ax, %bb.k ], [ %i.ai, %bb.f ], [ %i.an, %bb.g ], [ %i.ap, %bb.h ], [ %i.as, %bb.i ], [ %i.au, %bb.j ], [ %i.j, %bb.l ]
  %i.ak = phi i64 [ %i.ah, %bb.k ], [ %i.ac, %bb.f ], [ %i.ah, %bb.g ], [ %i.ac, %bb.h ], [ %i.ah, %bb.i ], [ %i.ac, %bb.j ], [ %i.ad, %bb.l ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, i64 noundef %i.aj, i64 noundef %i.ak) #18
          to label %.cont.i unwind label %bb.n, !noalias !13

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.0.val1, i64 %i.ai
  %i.am = load i16, ptr %i.al, align 2, !tbaa !27, !noalias !13
  %i.an = zext i16 %i.am to i64                   ; 3 uses
  %.not.i.i24.i = icmp ugt i64 %i.ah, %i.an
  br i1 %.not.i.i24.i, label %bb.h, label %.invoke.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %.0.val, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.sroa.0.i, ptr noundef nonnull align 4 dereferenceable(38) %i.ao, i64 38, i1 false), !tbaa.struct !29, !noalias !13
  %i.ap = add nuw nsw i64 %i.ai, 1                ; 3 uses
  %.not.i.i26.i = icmp ugt i64 %i.ac, %i.ap
  br i1 %.not.i.i26.i, label %bb.i, label %.invoke.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.0.val1, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !27, !noalias !13
  %i.as = zext i16 %i.ar to i64                   ; 3 uses
  %.not.i.i29.i = icmp ugt i64 %i.ah, %i.as
  br i1 %.not.i.i29.i, label %bb.j, label %.invoke.i

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %.0.val, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.sroa.0.40..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(38) %i.at, i64 38, i1 false), !tbaa.struct !29, !noalias !13
  %i.au = add nuw nsw i64 %i.ai, 2                ; 3 uses
  %.not.i.i32.i = icmp ugt i64 %i.ac, %i.au
  br i1 %.not.i.i32.i, label %bb.k, label %.invoke.i

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.0.val1, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !27, !noalias !13
  %i.ax = zext i16 %i.aw to i64                   ; 3 uses
  %.not.i.i35.i = icmp ugt i64 %i.ah, %i.ax
  br i1 %.not.i.i35.i, label %bb.l, label %.invoke.i

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %.0.val, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.sroa.0.80..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(38) %i.ay, i64 38, i1 false), !tbaa.struct !29, !noalias !13
  %exitcond.not = icmp eq i64 %indvars.iv.i, %i.j
  br i1 %exitcond.not, label %.invoke.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw [120 x i8], ptr %i.n, i64 %indvars.iv.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.az, ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0.i, i64 120, i1 false), !tbaa.struct !33, !noalias !13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph, label %bb.f, !llvm.loop !35

bb.n:                                             ; preds = %.invoke.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #17, !noalias !13
  br label %common.resume

common.resume:                                    ; preds = %bb.s, %bb.d, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.n ], [ %i.i, %bb.d ], [ %.pn, %bb.s ]
  resume { ptr, i32 } %common.resume.op

._crit_edge:                                      ; preds = %bb.q
  %i.bb = udiv exact i64 %.013.i.i.i.i.i.i.add.lcssa, 120
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 true)
  %i.bd = shl nuw nsw i64 %i.bc, 1
  %i.be = xor i64 %i.bd, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %i.n, ptr nonnull %.ptr.lcssa, i64 noundef %i.be)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge
  %i.bf = icmp samesign ugt i64 %.013.i.i.i.i.i.i.idx.lcssa, 1800
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 1920 ; 2 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr nonnull %i.n, ptr nonnull %i.bg)
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.o
  %.not4.i.i.i.i = icmp eq i64 %.013.i.i.i.i.i.i.add.lcssa, 1920
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.noexc12
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.bh, %.noexc12 ], [ %i.bg, %.noexc11 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %.lr.ph.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, %.ptr.lcssa
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !36

bb.p:                                             ; preds = %.noexc
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr nonnull %i.n, ptr nonnull %.ptr.lcssa)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit unwind label %.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.m, %bb.q
  %.sroa.05.09 = phi ptr [ %i.bi, %bb.q ], [ %i.n, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 4 dereferenceable(120) %.sroa.05.09, i64 120, i1 false), !tbaa.struct !33
  invoke fastcc void @_ZL12sortTriangleSt5arrayIN5video9S3DVertexELm3EE(ptr dead_on_unwind noalias writable align 4 %1, ptr noundef nonnull byval(%"struct.std::array.25") align 8 %2)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.sroa.05.09, ptr noundef nonnull align 4 dereferenceable(120) %1, i64 120, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 120
  %.not = icmp eq ptr %.sroa.05.09, %.013.i.i.i.i.i.i.ptr.lcssa
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %.lr.ph
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.s

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.o, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.noexc12, %_ZL10expandMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE.exit.thread, %.noexc11, %bb.p
  ret void

bb.s:                                             ; preds = %bb.r, %.loopexit.split-lp, %.loopexit
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.idx = mul nuw nsw i64 %i.j, 120
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %.idx) #17
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm4EESaISB_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::map", align 8          ; 19 uses
  %4 = alloca %"struct.std::pair.23", align 4     ; 6 uses
  %5 = alloca %"struct.std::array.25", align 4    ; 5 uses
  %6 = alloca %"struct.std::array.25", align 8    ; 4 uses
  %7 = alloca %"struct.std::pair.23", align 4     ; 6 uses
  %8 = alloca %"struct.std::array.25", align 4    ; 5 uses
  %9 = alloca %"struct.std::array.25", align 8    ; 4 uses
  %10 = alloca %"struct.std::pair.23", align 4    ; 6 uses
  %11 = alloca %"struct.std::array.25", align 4   ; 5 uses
  %12 = alloca %"struct.std::array.25", align 8   ; 4 uses
  %13 = alloca %"struct.std::pair.23", align 4    ; 6 uses
  %14 = alloca %"struct.std::array.25", align 4   ; 5 uses
  %15 = alloca %"struct.std::array.25", align 8   ; 4 uses
  %16 = alloca %"class.std::vector", align 8      ; 10 uses
  %17 = alloca %"struct.std::array.26", align 16  ; 5 uses
  %18 = alloca %"struct.std::array.26", align 16  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !40     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 160                 ; 6 uses
  %i.h = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit, label %.noexc100

.noexc100:                                        ; preds = %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 4
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #19 ; 10 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.l = add nsw i64 %i.g, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %bb.b

bb.b:                                             ; preds = %.noexc100
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i.i.i.i.i.i
  %i.p = add nuw nsw i64 %i.g, 1152921504606846974
  %i.q = and i64 %i.p, 1152921504606846975
  %i.r = add nuw nsw i64 %i.g, 3
  %xtraiter = and i64 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.n, %bb.b ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !41
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !42

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.b
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.n, %bb.b ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.t = icmp samesign ult i64 %i.q, 3
  br i1 %i.t, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !41
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !41
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !41
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !41
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.x, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !44

_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit: ; preds = %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.y, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.z, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ac, align 8, !tbaa !54
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc100
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ah, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 120
  br label %bb.c

._crit_edge:                                      ; preds = %bb.k, %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit
  %i.au = phi ptr [ %i.z, %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit ], [ %i.ae, %bb.k ] ; 3 uses
  %i.av = phi ptr [ %i.y, %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit ], [ %i.ad, %bb.k ] ; 2 uses
  %.sroa.0154.0253 = phi ptr [ null, %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit ], [ %i.j, %bb.k ] ; 7 uses
  %.sroa.12.0249 = phi ptr [ null, %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit ], [ %i.k, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %.val = load ptr, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val87 = load ptr, ptr %i.aw, align 8
  %.val88 = load ptr, ptr %1, align 8, !tbaa !9, !noalias !13
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val89 = load ptr, ptr %i.ax, align 8, !tbaa !16, !noalias !13
  invoke fastcc void @_ZL16canonicalizeMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE(ptr dead_on_unwind noalias writable align 8 %16, ptr %.val, ptr %.val87, ptr %.val88, ptr %.val89)
          to label %bb.x unwind label %bb.y

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %i.ay = phi ptr [ %i.c, %.lr.ph ], [ %i.bh, %bb.k ]
  %i.az = phi i64 [ 0, %.lr.ph ], [ %i.bf, %bb.k ] ; 5 uses
  %.066180 = phi i32 [ 0, %.lr.ph ], [ %i.be, %bb.k ]
  %i.ba = getelementptr inbounds nuw [160 x i8], ptr %i.ay, i64 %i.az ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %6, ptr noundef nonnull align 4 dereferenceable(38) %i.ba, i64 38, i1 false), !tbaa.struct !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.ai, ptr noundef nonnull align 4 dereferenceable(38) %i.bb, i64 38, i1 false), !tbaa.struct !29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 80 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.aj, ptr noundef nonnull align 4 dereferenceable(38) %i.bc, i64 38, i1 false), !tbaa.struct !29
  invoke fastcc void @_ZL12sortTriangleSt5arrayIN5video9S3DVertexELm3EE(ptr dead_on_unwind noalias writable align 4 %5, ptr noundef nonnull byval(%"struct.std::array.25") align 8 %6)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %4, ptr noundef nonnull readonly align 4 dereferenceable(120) %5, i64 120, i1 false), !tbaa.struct !33
  store i64 %i.az, ptr %i.ak, align 4
  invoke fastcc void @_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE6insertEOSN_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(128) %4)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %9, ptr noundef nonnull align 4 dereferenceable(38) %i.ba, i64 38, i1 false), !tbaa.struct !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.al, ptr noundef nonnull align 4 dereferenceable(38) %i.bc, i64 38, i1 false), !tbaa.struct !29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 120 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.am, ptr noundef nonnull align 4 dereferenceable(38) %i.bd, i64 38, i1 false), !tbaa.struct !29
  invoke fastcc void @_ZL12sortTriangleSt5arrayIN5video9S3DVertexELm3EE(ptr dead_on_unwind noalias writable align 4 %8, ptr noundef nonnull byval(%"struct.std::array.25") align 8 %9)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %.sroa.0149.0.insert.insert = or disjoint i64 %i.az, 4294967296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %7, ptr noundef nonnull readonly align 4 dereferenceable(120) %8, i64 120, i1 false), !tbaa.struct !33
  store i64 %.sroa.0149.0.insert.insert, ptr %i.an, align 4
  invoke fastcc void @_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE6insertEOSN_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(128) %7)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %12, ptr noundef nonnull align 4 dereferenceable(38) %i.ba, i64 38, i1 false), !tbaa.struct !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.ao, ptr noundef nonnull align 4 dereferenceable(38) %i.bb, i64 38, i1 false), !tbaa.struct !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.ap, ptr noundef nonnull align 4 dereferenceable(38) %i.bd, i64 38, i1 false), !tbaa.struct !29
  invoke fastcc void @_ZL12sortTriangleSt5arrayIN5video9S3DVertexELm3EE(ptr dead_on_unwind noalias writable align 4 %11, ptr noundef nonnull byval(%"struct.std::array.25") align 8 %12)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  %.sroa.0147.0.insert.insert = or disjoint i64 %i.az, 8589934592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %10, ptr noundef nonnull readonly align 4 dereferenceable(120) %11, i64 120, i1 false), !tbaa.struct !33
  store i64 %.sroa.0147.0.insert.insert, ptr %i.aq, align 4
  invoke fastcc void @_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE6insertEOSN_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(128) %10)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %15, ptr noundef nonnull align 4 dereferenceable(38) %i.bb, i64 38, i1 false), !tbaa.struct !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.ar, ptr noundef nonnull align 4 dereferenceable(38) %i.bc, i64 38, i1 false), !tbaa.struct !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.as, ptr noundef nonnull align 4 dereferenceable(38) %i.bd, i64 38, i1 false), !tbaa.struct !29
  invoke fastcc void @_ZL12sortTriangleSt5arrayIN5video9S3DVertexELm3EE(ptr dead_on_unwind noalias writable align 4 %14, ptr noundef nonnull byval(%"struct.std::array.25") align 8 %15)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  %.sroa.0146.0.insert.insert = or disjoint i64 %i.az, 12884901888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %13, ptr noundef nonnull readonly align 4 dereferenceable(120) %14, i64 120, i1 false), !tbaa.struct !33
  store i64 %.sroa.0146.0.insert.insert, ptr %i.at, align 4
  invoke fastcc void @_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE6insertEOSN_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(128) %13)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.be = add i32 %.066180, 1                     ; 2 uses
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.bh = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = sdiv exact i64 %i.bk, 160
  %i.bm = icmp ugt i64 %i.bl, %i.bf
  br i1 %i.bm, label %bb.c, label %._crit_edge, !llvm.loop !55

bb.l:                                             ; preds = %bb.c
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn72 = phi { ptr, i32 } [ %i.bo, %bb.m ], [ %i.bn, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.thread256

bb.o:                                             ; preds = %bb.e
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.f
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn74 = phi { ptr, i32 } [ %i.bq, %bb.p ], [ %i.bp, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.thread256

bb.r:                                             ; preds = %bb.g
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn76 = phi { ptr, i32 } [ %i.bs, %bb.s ], [ %i.br, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %.thread256

bb.u:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn78 = phi { ptr, i32 } [ %i.bu, %bb.v ], [ %i.bt, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %.thread256

bb.x:                                             ; preds = %._crit_edge
  %i.bv = load ptr, ptr %16, align 8, !tbaa !56   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !56 ; 2 uses
  %.not178181 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not178181, label %.critedge86.preheader, label %.lr.ph184

.critedge86.preheader:                            ; preds = %_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE4findERSM_.exit, %bb.x
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.bz = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 160
  %.not185 = icmp eq ptr %i.by, %i.bz
  br i1 %.not185, label %.critedge84, label %.lr.ph187

bb.y:                                             ; preds = %._crit_edge
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.lr.ph184:                                        ; preds = %bb.x, %_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE4findERSM_.exit
  %.sroa.0143.0182 = phi ptr [ %i.jh, %_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE4findERSM_.exit ], [ %i.bv, %bb.x ] ; 24 uses
  %.val.i.i = load ptr, ptr %i.au, align 8, !tbaa !51 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not2.i.i.i, label %.critedge84, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph184
  %.01924.i.i.i.i.i.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 40 ; 4 uses
  %.01924.i.i.i.i.i.ptr.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 80 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 12 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 20 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 28 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 36 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 44
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 52
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 60
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 68
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 72
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 76
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, %.lr.ph.i.i.i
  %.04.i.i.i = phi ptr [ %.val.i.i, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i ] ; 44 uses
  %.083.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i ] ; 21 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !57 ; 4 uses
  %i.cz = load float, ptr %.sroa.0143.0182, align 4, !tbaa !57 ; 4 uses
  %i.da = fcmp nsz olt float %i.cy, %i.cz
  br i1 %i.da, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = fcmp nsz oeq float %i.cy, %i.cz
  br i1 %i.db, label %bb.ab, label %.noexc101.thread163.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dc = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 36
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !59 ; 2 uses
  %i.de = load float, ptr %i.cf, align 4, !tbaa !59 ; 2 uses
  %i.df = fcmp nsz olt float %i.dd, %i.de
  br i1 %i.df, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = fcmp nsz oeq float %i.dd, %i.de
  br i1 %i.dg, label %_ZNK4core8vector3dIfEltERKS1_.exit.i139, label %.noexc101.thread163

_ZNK4core8vector3dIfEltERKS1_.exit.i139:          ; preds = %bb.ac
  %i.dh = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 40
  %i.di = load float, ptr %i.dh, align 4, !tbaa !60 ; 2 uses
  %i.dj = load float, ptr %i.cg, align 4, !tbaa !60 ; 2 uses
  %i.dk = fcmp nsz olt float %i.di, %i.dj
  br i1 %i.dk, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %_ZNK4core8vector3dIfEneERKS1_.exit.i132

_ZNK4core8vector3dIfEneERKS1_.exit.i132:          ; preds = %_ZNK4core8vector3dIfEltERKS1_.exit.i139
  %i.dl = fcmp nsz une float %i.di, %i.dj
  br i1 %i.dl, label %.noexc101.thread163, label %bb.ad

bb.ad:                                            ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.i132
  %i.dm = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 44
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !57 ; 2 uses
  %i.do = load float, ptr %i.ch, align 4, !tbaa !57 ; 2 uses
  %i.dp = fcmp nsz olt float %i.dn, %i.do
  br i1 %i.dp, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dq = fcmp nsz oeq float %i.dn, %i.do
  br i1 %i.dq, label %bb.af, label %.noexc101.thread163

bb.af:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 48
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !59 ; 2 uses
  %i.dt = load float, ptr %i.ci, align 4, !tbaa !59 ; 2 uses
  %i.du = fcmp nsz olt float %i.ds, %i.dt
  br i1 %i.du, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dv = fcmp nsz oeq float %i.ds, %i.dt
  br i1 %i.dv, label %_ZNK4core8vector3dIfEltERKS1_.exit11.i138, label %.noexc101.thread163

_ZNK4core8vector3dIfEltERKS1_.exit11.i138:        ; preds = %bb.ag
  %i.dw = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 52
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !60 ; 2 uses
  %i.dy = load float, ptr %i.cj, align 4, !tbaa !60 ; 2 uses
  %i.dz = fcmp nsz olt float %i.dx, %i.dy
  br i1 %i.dz, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %_ZNK4core8vector3dIfEneERKS1_.exit12.i133

_ZNK4core8vector3dIfEneERKS1_.exit12.i133:        ; preds = %_ZNK4core8vector3dIfEltERKS1_.exit11.i138
  %i.ea = fcmp nsz une float %i.dx, %i.dy
  br i1 %i.ea, label %.noexc101.thread163, label %bb.ah

bb.ah:                                            ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit12.i133
  %i.eb = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 56
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !24 ; 2 uses
  %i.ed = load i32, ptr %i.ck, align 4, !tbaa !24 ; 2 uses
  %i.ee = icmp ult i32 %i.ec, %i.ed
  br i1 %i.ee, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i134 = icmp eq i32 %i.ed, %i.ec
  br i1 %.not.i134, label %bb.aj, label %.noexc101.thread163

bb.aj:                                            ; preds = %bb.ai
  %i.ef = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 60
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !61 ; 3 uses
  %i.eh = load float, ptr %i.cl, align 4, !tbaa !61 ; 3 uses
  %i.ei = fcmp nsz olt float %i.eg, %i.eh
  br i1 %i.ei, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ej = fcmp nsz oeq float %i.eg, %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 64
  %i.el = load float, ptr %i.ek, align 4          ; 2 uses
  %i.em = load float, ptr %i.cm, align 4          ; 2 uses
  %i.en = fcmp nsz olt float %i.el, %i.em
  %or.cond.i135 = select i1 %i.ej, i1 %i.en, i1 false
  br i1 %or.cond.i135, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i136

_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i136: ; preds = %bb.ak
  %i.eo = fcmp nsz une float %i.eg, %i.eh
  %i.ep = fcmp nsz une float %i.el, %i.em
  %.not3.i.i137 = select i1 %i.eo, i1 true, i1 %i.ep
  br i1 %.not3.i.i137, label %.noexc101.thread163, label %.noexc101

.noexc101:                                        ; preds = %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i136
  %i.eq = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 68
  %i.er = load i16, ptr %i.eq, align 4, !tbaa !63
  %i.es = load i16, ptr %i.cn, align 4, !tbaa !63
  %i.et = icmp ult i16 %i.er, %i.es
  br i1 %i.et, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %.noexc101.thread163

.noexc101.thread163:                              ; preds = %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i136, %bb.ag, %bb.ai, %bb.ae, %_ZNK4core8vector3dIfEneERKS1_.exit12.i133, %bb.ac, %_ZNK4core8vector3dIfEneERKS1_.exit.i132, %.noexc101
  %i.eu = fcmp nsz olt float %i.cz, %i.cy
  br i1 %i.eu, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.al

.noexc101.thread163.thread:                       ; preds = %bb.aa
  %i.ev = fcmp nsz olt float %i.cz, %i.cy
  br i1 %i.ev, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.1.i.i.i.i.i

bb.al:                                            ; preds = %.noexc101.thread163
  %i.ew = load float, ptr %i.cf, align 4, !tbaa !59 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 36
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !59 ; 2 uses
  %i.ez = fcmp nsz olt float %i.ew, %i.ey
  br i1 %i.ez, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = fcmp nsz oeq float %i.ew, %i.ey
  br i1 %i.fa, label %_ZNK4core8vector3dIfEltERKS1_.exit.i129, label %.lr.ph.i.i.i.i.i.1.i.i.i.i.i

_ZNK4core8vector3dIfEltERKS1_.exit.i129:          ; preds = %bb.am
  %i.fb = load float, ptr %i.cg, align 4, !tbaa !60 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 40
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !60 ; 2 uses
  %i.fe = fcmp nsz olt float %i.fb, %i.fd
  br i1 %i.fe, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %_ZNK4core8vector3dIfEneERKS1_.exit.i122

_ZNK4core8vector3dIfEneERKS1_.exit.i122:          ; preds = %_ZNK4core8vector3dIfEltERKS1_.exit.i129
  %i.ff = fcmp nsz une float %i.fb, %i.fd
  br i1 %i.ff, label %.lr.ph.i.i.i.i.i.1.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.i122
  %i.fg = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 44
  %i.fh = load float, ptr %i.ch, align 4, !tbaa !57 ; 2 uses
  %i.fi = load float, ptr %i.fg, align 4, !tbaa !57 ; 2 uses
  %i.fj = fcmp nsz olt float %i.fh, %i.fi
  br i1 %i.fj, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fk = fcmp nsz oeq float %i.fh, %i.fi
end_hunk_0
begin_hunk_1_@_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm4EESaISB_EE:bb.a
  %i.gv = fcmp nsz olt float %i.gt, %i.gu
  br i1 %i.gv, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gw = fcmp nsz oeq float %i.gt, %i.gu
  br i1 %i.gw, label %_ZNK4core8vector3dIfEltERKS1_.exit.i, label %.noexc103.thread175

_ZNK4core8vector3dIfEltERKS1_.exit.i:             ; preds = %bb.ax
  %i.gx = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 80
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !60 ; 2 uses
  %i.gz = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
  %i.ha = fcmp nsz olt float %i.gy, %i.gz
  br i1 %i.ha, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %_ZNK4core8vector3dIfEneERKS1_.exit.i

_ZNK4core8vector3dIfEneERKS1_.exit.i:             ; preds = %_ZNK4core8vector3dIfEltERKS1_.exit.i
  %i.hb = fcmp nsz une float %i.gy, %i.gz
  br i1 %i.hb, label %.noexc103.thread175, label %bb.ay

bb.ay:                                            ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 84
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !57 ; 2 uses
  %i.he = load float, ptr %i.cq, align 4, !tbaa !57 ; 2 uses
  %i.hf = fcmp nsz olt float %i.hd, %i.he
  br i1 %i.hf, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hg = fcmp nsz oeq float %i.hd, %i.he
  br i1 %i.hg, label %bb.ba, label %.noexc103.thread175

bb.ba:                                            ; preds = %bb.az
  %i.hh = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 88
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !59 ; 2 uses
  %i.hj = load float, ptr %i.cr, align 4, !tbaa !59 ; 2 uses
  %i.hk = fcmp nsz olt float %i.hi, %i.hj
  br i1 %i.hk, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hl = fcmp nsz oeq float %i.hi, %i.hj
  br i1 %i.hl, label %_ZNK4core8vector3dIfEltERKS1_.exit11.i, label %.noexc103.thread175

_ZNK4core8vector3dIfEltERKS1_.exit11.i:           ; preds = %bb.bb
  %i.hm = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 92
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !60 ; 2 uses
  %i.ho = load float, ptr %i.cs, align 4, !tbaa !60 ; 2 uses
  %i.hp = fcmp nsz olt float %i.hn, %i.ho
  br i1 %i.hp, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %_ZNK4core8vector3dIfEneERKS1_.exit12.i

_ZNK4core8vector3dIfEneERKS1_.exit12.i:           ; preds = %_ZNK4core8vector3dIfEltERKS1_.exit11.i
  %i.hq = fcmp nsz une float %i.hn, %i.ho
  br i1 %i.hq, label %.noexc103.thread175, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit12.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 96
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !24 ; 2 uses
  %i.ht = load i32, ptr %i.ct, align 4, !tbaa !24 ; 2 uses
  %i.hu = icmp ult i32 %i.hs, %i.ht
  br i1 %i.hu, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i = icmp eq i32 %i.ht, %i.hs
  br i1 %.not.i, label %bb.be, label %.noexc103.thread175

bb.be:                                            ; preds = %bb.bd
  %i.hv = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 100
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !61 ; 3 uses
  %i.hx = load float, ptr %i.cu, align 4, !tbaa !61 ; 3 uses
  %i.hy = fcmp nsz olt float %i.hw, %i.hx
  br i1 %i.hy, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hz = fcmp nsz oeq float %i.hw, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 104
  %i.ib = load float, ptr %i.ia, align 4          ; 2 uses
  %i.ic = load float, ptr %i.cv, align 4          ; 2 uses
  %i.id = fcmp nsz olt float %i.ib, %i.ic
  %or.cond.i = select i1 %i.hz, i1 %i.id, i1 false
  br i1 %or.cond.i, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i

_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i:    ; preds = %bb.bf
  %i.ie = fcmp nsz une float %i.hw, %i.hx
  %i.if = fcmp nsz une float %i.ib, %i.ic
  %.not3.i.i = select i1 %i.ie, i1 true, i1 %i.if
  br i1 %.not3.i.i, label %.noexc103.thread175, label %.noexc103

.noexc103:                                        ; preds = %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i
  %i.ig = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 108
  %i.ih = load i16, ptr %i.ig, align 4, !tbaa !63
  %i.ii = load i16, ptr %i.cw, align 4, !tbaa !63
  %i.ij = icmp ult i16 %i.ih, %i.ii
  br i1 %i.ij, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %.noexc103.thread175

.noexc103.thread175:                              ; preds = %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i, %bb.bb, %bb.bd, %bb.az, %_ZNK4core8vector3dIfEneERKS1_.exit12.i, %bb.ax, %_ZNK4core8vector3dIfEneERKS1_.exit.i, %bb.av, %.noexc103
  %i.ik = invoke noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.1.i.i.i.i.i)
          to label %.noexc104 unwind label %.loopexit

.noexc104:                                        ; preds = %.noexc103.thread175
  br i1 %i.ik, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.2.i.i.i.i.i

.lr.ph.i.i.i.i.i.2.i.i.i.i.i:                     ; preds = %.noexc104
  %.02023.i.i.i.i.i.ptr.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 112 ; 2 uses
  %i.il = invoke noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.2.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i.i.i.i)
          to label %.noexc105 unwind label %.loopexit

.noexc105:                                        ; preds = %.lr.ph.i.i.i.i.i.2.i.i.i.i.i
  br i1 %i.il, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.noexc105
  %i.im = invoke noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.2.i.i.i.i.i)
          to label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i unwind label %.loopexit ; 0 uses

_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i: ; preds = %.noexc101.thread163.thread, %bb.ba, %bb.aw, %bb.ay, %bb.be, %.lr.ph.i.i.i.i.i.1.i.i.i.i.i, %bb.bf, %bb.bc, %_ZNK4core8vector3dIfEltERKS1_.exit11.i, %_ZNK4core8vector3dIfEltERKS1_.exit.i, %bb.ap, %bb.al, %bb.an, %bb.at, %.noexc101.thread163, %bb.au, %bb.ar, %_ZNK4core8vector3dIfEltERKS1_.exit11.i128, %_ZNK4core8vector3dIfEltERKS1_.exit.i129, %bb.af, %bb.ab, %bb.ad, %bb.aj, %bb.z, %bb.ak, %bb.ah, %_ZNK4core8vector3dIfEltERKS1_.exit11.i138, %_ZNK4core8vector3dIfEltERKS1_.exit.i139, %bb.bg, %.noexc105, %.noexc104, %.noexc103, %.noexc102, %.noexc101
  %.sink.i.i.i = phi i64 [ 16, %.noexc102 ], [ 16, %bb.ap ], [ 16, %.noexc104 ], [ 24, %.noexc101 ], [ 24, %.noexc103 ], [ 24, %.noexc105 ], [ 16, %bb.bg ], [ 24, %bb.af ], [ 24, %_ZNK4core8vector3dIfEltERKS1_.exit.i139 ], [ 24, %_ZNK4core8vector3dIfEltERKS1_.exit11.i138 ], [ 24, %bb.ah ], [ 24, %bb.ak ], [ 24, %bb.z ], [ 24, %bb.aj ], [ 24, %bb.ad ], [ 24, %bb.ab ], [ 16, %_ZNK4core8vector3dIfEltERKS1_.exit.i129 ], [ 16, %_ZNK4core8vector3dIfEltERKS1_.exit11.i128 ], [ 16, %bb.ar ], [ 16, %bb.au ], [ 16, %.noexc101.thread163 ], [ 16, %bb.at ], [ 16, %bb.an ], [ 16, %bb.al ], [ 24, %_ZNK4core8vector3dIfEltERKS1_.exit.i ], [ 24, %_ZNK4core8vector3dIfEltERKS1_.exit11.i ], [ 24, %bb.bc ], [ 24, %bb.bf ], [ 24, %.lr.ph.i.i.i.i.i.1.i.i.i.i.i ], [ 24, %bb.be ], [ 24, %bb.ay ], [ 24, %bb.aw ], [ 24, %bb.ba ], [ 16, %.noexc101.thread163.thread ]
  %.19.i.i.i = phi ptr [ %.04.i.i.i, %.noexc102 ], [ %.04.i.i.i, %bb.ap ], [ %.04.i.i.i, %.noexc104 ], [ %.083.i.i.i, %.noexc101 ], [ %.083.i.i.i, %.noexc103 ], [ %.083.i.i.i, %.noexc105 ], [ %.04.i.i.i, %bb.bg ], [ %.083.i.i.i, %bb.af ], [ %.083.i.i.i, %_ZNK4core8vector3dIfEltERKS1_.exit.i139 ], [ %.083.i.i.i, %_ZNK4core8vector3dIfEltERKS1_.exit11.i138 ], [ %.083.i.i.i, %bb.ah ], [ %.083.i.i.i, %bb.ak ], [ %.083.i.i.i, %bb.z ], [ %.083.i.i.i, %bb.aj ], [ %.083.i.i.i, %bb.ad ], [ %.083.i.i.i, %bb.ab ], [ %.04.i.i.i, %_ZNK4core8vector3dIfEltERKS1_.exit.i129 ], [ %.04.i.i.i, %_ZNK4core8vector3dIfEltERKS1_.exit11.i128 ], [ %.04.i.i.i, %bb.ar ], [ %.04.i.i.i, %bb.au ], [ %.04.i.i.i, %.noexc101.thread163 ], [ %.04.i.i.i, %bb.at ], [ %.04.i.i.i, %bb.an ], [ %.04.i.i.i, %bb.al ], [ %.083.i.i.i, %_ZNK4core8vector3dIfEltERKS1_.exit.i ], [ %.083.i.i.i, %_ZNK4core8vector3dIfEltERKS1_.exit11.i ], [ %.083.i.i.i, %bb.bc ], [ %.083.i.i.i, %bb.bf ], [ %.083.i.i.i, %.lr.ph.i.i.i.i.i.1.i.i.i.i.i ], [ %.083.i.i.i, %bb.be ], [ %.083.i.i.i, %bb.ay ], [ %.083.i.i.i, %bb.aw ], [ %.083.i.i.i, %bb.ba ], [ %.04.i.i.i, %.noexc101.thread163.thread ] ; 7 uses
  %i.in = getelementptr i8, ptr %.04.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.in, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE14_M_lower_boundEPSt13_Rb_tree_nodeISL_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.z, !llvm.loop !66

_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE14_M_lower_boundEPSt13_Rb_tree_nodeISL_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i.i
  %i.io = icmp eq ptr %.19.i.i.i, %i.av
  br i1 %i.io, label %.critedge84, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE14_M_lower_boundEPSt13_Rb_tree_nodeISL_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32 ; 2 uses
  %i.iq = invoke noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0143.0182, ptr noundef nonnull align 4 dereferenceable(120) %i.ip)
          to label %.noexc107 unwind label %.loopexit.split-lp

.noexc107:                                        ; preds = %bb.bh
  br i1 %i.iq, label %.critedge84, label %bb.bi

bb.bi:                                            ; preds = %.noexc107
  %i.ir = invoke noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(120) %i.ip, ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0143.0182)
          to label %.noexc108 unwind label %.loopexit.split-lp

.noexc108:                                        ; preds = %bb.bi
  br i1 %i.ir, label %_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE4findERSM_.exit, label %.lr.ph.i.i.i.i.i.1.i.i.i.i

.lr.ph.i.i.i.i.i.1.i.i.i.i:                       ; preds = %.noexc108
  %.01924.i.i.i.i.i.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72 ; 2 uses
  %i.is = invoke noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i.i.i)
          to label %.noexc109 unwind label %.loopexit.split-lp

.noexc109:                                        ; preds = %.lr.ph.i.i.i.i.i.1.i.i.i.i
  br i1 %i.is, label %.critedge84, label %bb.bj

bb.bj:                                            ; preds = %.noexc109
  %i.it = invoke noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i.i.i.i)
          to label %.noexc110 unwind label %.loopexit.split-lp

.noexc110:                                        ; preds = %bb.bj
  br i1 %i.it, label %_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE4findERSM_.exit, label %.lr.ph.i.i.i.i.i.2.i.i.i.i

.lr.ph.i.i.i.i.i.2.i.i.i.i:                       ; preds = %.noexc110
  %.01924.i.i.i.i.i.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 112 ; 2 uses
  %i.iu = invoke noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i.i.i)
          to label %.noexc111 unwind label %.loopexit.split-lp

.noexc111:                                        ; preds = %.lr.ph.i.i.i.i.i.2.i.i.i.i
  br i1 %i.iu, label %.critedge84, label %bb.bk

bb.bk:                                            ; preds = %.noexc111
  %i.iv = invoke noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i.i.i.i)
          to label %_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE4findERSM_.exit unwind label %.loopexit.split-lp ; 0 uses

.loopexit:                                        ; preds = %.noexc103.thread175, %.lr.ph.i.i.i.i.i.2.i.i.i.i.i, %bb.bg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit.split-lp:                               ; preds = %bb.bh, %bb.bi, %.lr.ph.i.i.i.i.i.1.i.i.i.i, %bb.bj, %.lr.ph.i.i.i.i.i.2.i.i.i.i, %bb.bk
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.iw = load ptr, ptr %16, align 8, !tbaa !20   ; 3 uses
  %.not.i.i.i117 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i117, label %bb.bq, label %bb.bp

_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE4findERSM_.exit: ; preds = %bb.bk, %.noexc108, %.noexc110
  %i.ix = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 152
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !67
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0154.0253, i64 %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 156
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !71
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jd ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !32
  %i.jg = add nsw i32 %i.jf, 1
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !32
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0143.0182, i64 120 ; 2 uses
  %.not178 = icmp eq ptr %i.jh, %i.bx
  br i1 %.not178, label %.critedge86.preheader, label %.lr.ph184

.lr.ph187:                                        ; preds = %.critedge86.preheader, %.critedge86
  %i.ji = phi i64 [ %i.jt, %.critedge86 ], [ 0, %.critedge86.preheader ]
  %.0186 = phi i32 [ %i.js, %.critedge86 ], [ 0, %.critedge86.preheader ]
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0154.0253, i64 %i.ji ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %17, align 16, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.jk = load i128, ptr %i.jj, align 4
  %i.jl = load i128, ptr %17, align 16
  %i.jm = icmp ne i128 %i.jk, %i.jl
  %i.jn = zext i1 %i.jm to i32
  %.not9.i.i.i.i.i.i.not = icmp eq i32 %i.jn, 0
  br i1 %.not9.i.i.i.i.i.i.not, label %.critedge, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph187
  store <4 x i32> <i32 0, i32 0, i32 1, i32 1>, ptr %18, align 16, !tbaa !32
  %i.jo = load i128, ptr %i.jj, align 4
  %i.jp = load i128, ptr %18, align 16
  %i.jq = icmp ne i128 %i.jo, %i.jp
  %i.jr = zext i1 %i.jq to i32
  %.not9.i.i.i.i.i.i114.not = icmp eq i32 %i.jr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br i1 %.not9.i.i.i.i.i.i114.not, label %.critedge86, label %.critedge84

.critedge:                                        ; preds = %.lr.ph187
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %.critedge86

.critedge86:                                      ; preds = %bb.bm, %.critedge
  %i.js = add i32 %.0186, 1                       ; 2 uses
  %i.jt = zext i32 %i.js to i64                   ; 2 uses
  %.not.not = icmp ugt i64 %i.cd, %i.jt
  br i1 %.not.not, label %.lr.ph187, label %.critedge84, !llvm.loop !72

.critedge84:                                      ; preds = %.noexc109, %.noexc107, %.noexc111, %.lr.ph184, %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE14_M_lower_boundEPSt13_Rb_tree_nodeISL_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.bm, %.critedge86, %.critedge86.preheader
  %.4 = phi i1 [ true, %.critedge86.preheader ], [ true, %.critedge86 ], [ false, %bb.bm ], [ false, %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE14_M_lower_boundEPSt13_Rb_tree_nodeISL_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ], [ false, %.lr.ph184 ], [ false, %.noexc111 ], [ false, %.noexc107 ], [ false, %.noexc109 ]
  %i.ju = load ptr, ptr %16, align 8, !tbaa !20   ; 3 uses
  %.not.i.i.i115 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i115, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %.critedge84
  %i.jv = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !23
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = ptrtoint ptr %i.ju to i64
  %i.jz = sub i64 %i.jx, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jz) #17
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit: ; preds = %.critedge84, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  %.val99 = load ptr, ptr %i.au, align 8, !tbaa !51
  call fastcc void @_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE8_M_eraseEPSt13_Rb_tree_nodeISL_E(ptr noundef %.val99)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %.not.i.i.i116 = icmp eq ptr %.sroa.0154.0253, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit
  %i.ka = ptrtoint ptr %.sroa.12.0249 to i64
  %i.kb = ptrtoint ptr %.sroa.0154.0253 to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0154.0253, i64 noundef %i.kc) #17
  br label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit

_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit, %bb.bo
  ret i1 %.4

bb.bp:                                            ; preds = %bb.bl
  %i.kd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !23
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = ptrtoint ptr %i.iw to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef %i.kh) #17
  br label %bb.bq

.thread256:                                       ; preds = %bb.w, %bb.t, %bb.q, %bb.n
  %.pn78.pn.pn.ph = phi { ptr, i32 } [ %.pn72, %bb.n ], [ %.pn74, %bb.q ], [ %.pn76, %bb.t ], [ %.pn78, %bb.w ]
  %.val98260 = load ptr, ptr %i.ae, align 8, !tbaa !51
  call fastcc void @_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE8_M_eraseEPSt13_Rb_tree_nodeISL_E(ptr noundef %.val98260)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.br

bb.bq:                                            ; preds = %bb.y, %bb.bl, %bb.bp
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %lpad.phi, %bb.bl ], [ %lpad.phi, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  %.val98 = load ptr, ptr %i.au, align 8, !tbaa !51
  call fastcc void @_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE8_M_eraseEPSt13_Rb_tree_nodeISL_E(ptr noundef %.val98)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %.not.i.i.i119 = icmp eq ptr %.sroa.0154.0253, null
  br i1 %.not.i.i.i119, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit120, label %bb.br

bb.br:                                            ; preds = %.thread256, %bb.bq
  %.pn78.pn.pn264 = phi { ptr, i32 } [ %.pn78.pn.pn.ph, %.thread256 ], [ %.pn.pn.pn, %bb.bq ]
  %.sroa.12.0248263 = phi ptr [ %i.k, %.thread256 ], [ %.sroa.12.0249, %bb.bq ]
  %.sroa.0154.0252262 = phi ptr [ %i.j, %.thread256 ], [ %.sroa.0154.0253, %bb.bq ] ; 2 uses
  %i.ki = ptrtoint ptr %.sroa.12.0248263 to i64
  %i.kj = ptrtoint ptr %.sroa.0154.0252262 to i64
  %i.kk = sub i64 %i.ki, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0154.0252262, i64 noundef %i.kk) #17
  br label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit120

_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit120: ; preds = %bb.br, %bb.bq
  %.pn78.pn.pn265 = phi { ptr, i32 } [ %.pn78.pn.pn264, %bb.br ], [ %.pn.pn.pn, %bb.bq ]
  resume { ptr, i32 } %.pn78.pn.pn265
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE6insertEOSN_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(128) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.03237.i.i = load ptr, ptr %i.a, align 8, !tbaa !65 ; 2 uses
  %.not38.i.i = icmp eq ptr %.03237.i.i, null
  br i1 %.not38.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.02023.i.i.i.i.i.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.02023.i.i.i.i.i.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i, %.lr.ph.i.i
  %.03239.i.i = phi ptr [ %.03237.i.i, %.lr.ph.i.i ], [ %.032.i.i, %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i ] ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.03239.i.i, i64 32 ; 2 uses
  %i.d = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(120) %i.c)
  br i1 %i.d, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(120) %i.c, ptr noundef nonnull align 4 dereferenceable(128) %1)
  br i1 %i.e, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i, label %.lr.ph.i.i.i.i.i.1.i.i.i.i

.lr.ph.i.i.i.i.i.1.i.i.i.i:                       ; preds = %bb.c
  %.01924.i.i.i.i.i.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.03239.i.i, i64 72 ; 2 uses
  %i.f = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.1.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i.i.i)
  br i1 %i.f, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.1.i.i.i.i
  %i.g = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.1.i.i.i.i)
  br i1 %i.g, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i, label %.lr.ph.i.i.i.i.i.2.i.i.i.i

.lr.ph.i.i.i.i.i.2.i.i.i.i:                       ; preds = %bb.d
  %.01924.i.i.i.i.i.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %.03239.i.i, i64 112 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.2.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i.i.i)
  br i1 %i.h, label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.2.i.i.i.i
  %i.i = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.2.i.i.i.i) ; 0 uses
  br label %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i

_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.2.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i.1.i.i.i.i, %bb.c, %bb.b
  %.sink.i.i = phi i64 [ 16, %.lr.ph.i.i.i.i.i.2.i.i.i.i ], [ 16, %bb.b ], [ 16, %.lr.ph.i.i.i.i.i.1.i.i.i.i ], [ 24, %bb.e ], [ 24, %bb.d ], [ 24, %bb.c ]
  %.0.i.i.i.i.i.i.i34.i.i = phi i1 [ true, %.lr.ph.i.i.i.i.i.2.i.i.i.i ], [ true, %bb.b ], [ true, %.lr.ph.i.i.i.i.i.1.i.i.i.i ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %i.j = getelementptr i8, ptr %.03239.i.i, i64 %.sink.i.i
  %.032.i.i = load ptr, ptr %i.j, align 8, !tbaa !65 ; 2 uses
  %.not.i.i = icmp eq ptr %.032.i.i, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !73

._crit_edge.i.i:                                  ; preds = %_ZNKSt4lessISt5arrayIN5video9S3DVertexELm3EEEclERKS3_S6_.exit.i.i
  br i1 %.0.i.i.i.i.i.i.i34.i.i, label %._crit_edge.thread.i.i, label %bb.g

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.a
  %.031.lcssa44.i.i = phi ptr [ %.03239.i.i, %._crit_edge.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7.i.i = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.l = icmp eq ptr %.031.lcssa44.i.i, %.val7.i.i
  br i1 %i.l, label %bb.k, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i.i
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.031.lcssa44.i.i) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %.031.lcssa43.i.i = phi ptr [ %.031.lcssa44.i.i, %bb.f ], [ %.03239.i.i, %._crit_edge.i.i ] ; 3 uses
  %.sroa.022.0.i.i = phi ptr [ %i.m, %bb.f ], [ %.03239.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i.i, i64 32 ; 2 uses
  %i.o = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(120) %i.n, ptr noundef nonnull align 4 dereferenceable(128) %1)
  br i1 %i.o, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(120) %i.n)
  br i1 %i.p, label %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE16_M_insert_uniqueISL_EES4_ISt17_Rb_tree_iteratorISL_EbEOT_.exit, label %.lr.ph.i.i.i.i.i.1.i.i14.i.i

.lr.ph.i.i.i.i.i.1.i.i14.i.i:                     ; preds = %bb.h
  %.01924.i.i.i.i.i.ptr.1.i.i15.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.02023.i.i.i.i.i.ptr.1.i.i16.i.i = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i.i, i64 72 ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.1.i.i16.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i15.i.i)
  br i1 %i.q, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.1.i.i14.i.i
  %i.r = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i15.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.1.i.i16.i.i)
  br i1 %i.r, label %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE16_M_insert_uniqueISL_EES4_ISt17_Rb_tree_iteratorISL_EbEOT_.exit, label %.lr.ph.i.i.i.i.i.2.i.i17.i.i

.lr.ph.i.i.i.i.i.2.i.i17.i.i:                     ; preds = %bb.i
  %.01924.i.i.i.i.i.ptr.2.i.i18.i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.02023.i.i.i.i.i.ptr.2.i.i19.i.i = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i.i, i64 112 ; 2 uses
  %i.s = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.2.i.i19.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i18.i.i)
  br i1 %i.s, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.2.i.i17.i.i
  %i.t = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i18.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.2.i.i19.i.i) ; 0 uses
  br label %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE16_M_insert_uniqueISL_EES4_ISt17_Rb_tree_iteratorISL_EbEOT_.exit

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.2.i.i17.i.i, %.lr.ph.i.i.i.i.i.1.i.i14.i.i, %bb.g, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.031.lcssa43.i.i, %.lr.ph.i.i.i.i.i.1.i.i14.i.i ], [ %.031.lcssa43.i.i, %bb.g ], [ %.031.lcssa44.i.i, %._crit_edge.thread.i.i ], [ %.031.lcssa43.i.i, %.lr.ph.i.i.i.i.i.2.i.i17.i.i ] ; 5 uses
  %i.u = icmp eq ptr %.sroa.4.0.i.ph.i, %i.b
  br i1 %i.u, label %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE10_M_insert_ISL_NSR_11_Alloc_nodeEEESt17_Rb_tree_iteratorISL_EPSt18_Rb_tree_node_baseSX_OT_RT0_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32 ; 2 uses
  %i.w = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(120) %i.v)
  br i1 %i.w, label %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE10_M_insert_ISL_NSR_11_Alloc_nodeEEESt17_Rb_tree_iteratorISL_EPSt18_Rb_tree_node_baseSX_OT_RT0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(120) %i.v, ptr noundef nonnull align 4 dereferenceable(128) %1)
  br i1 %i.x, label %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE10_M_insert_ISL_NSR_11_Alloc_nodeEEESt17_Rb_tree_iteratorISL_EPSt18_Rb_tree_node_baseSX_OT_RT0_.exit.i, label %.lr.ph.i.i.i.i.i.1.i.i.i9.i

.lr.ph.i.i.i.i.i.1.i.i.i9.i:                      ; preds = %bb.m
  %.01924.i.i.i.i.i.ptr.1.i.i.i10.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 72 ; 2 uses
  %.02023.i.i.i.i.i.ptr.1.i.i.i11.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.1.i.i.i11.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i.i10.i)
  br i1 %i.y, label %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE10_M_insert_ISL_NSR_11_Alloc_nodeEEESt17_Rb_tree_iteratorISL_EPSt18_Rb_tree_node_baseSX_OT_RT0_.exit.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.1.i.i.i9.i
  %i.z = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i.i10.i, ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.1.i.i.i11.i)
  br i1 %i.z, label %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE10_M_insert_ISL_NSR_11_Alloc_nodeEEESt17_Rb_tree_iteratorISL_EPSt18_Rb_tree_node_baseSX_OT_RT0_.exit.i, label %.lr.ph.i.i.i.i.i.2.i.i.i12.i

.lr.ph.i.i.i.i.i.2.i.i.i12.i:                     ; preds = %bb.n
  %.01924.i.i.i.i.i.ptr.2.i.i.i13.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 112 ; 2 uses
  %.02023.i.i.i.i.i.ptr.2.i.i.i14.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aa = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.2.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i.i13.i)
  br i1 %i.aa, label %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE10_M_insert_ISL_NSR_11_Alloc_nodeEEESt17_Rb_tree_iteratorISL_EPSt18_Rb_tree_node_baseSX_OT_RT0_.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.2.i.i.i12.i
  %i.ab = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i.i13.i, ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.2.i.i.i14.i) ; 0 uses
  br label %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE10_M_insert_ISL_NSR_11_Alloc_nodeEEESt17_Rb_tree_iteratorISL_EPSt18_Rb_tree_node_baseSX_OT_RT0_.exit.i

_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE10_M_insert_ISL_NSR_11_Alloc_nodeEEESt17_Rb_tree_iteratorISL_EPSt18_Rb_tree_node_baseSX_OT_RT0_.exit.i: ; preds = %bb.o, %.lr.ph.i.i.i.i.i.2.i.i.i12.i, %bb.n, %.lr.ph.i.i.i.i.i.1.i.i.i9.i, %bb.m, %bb.l, %bb.k
  %i.ac = phi i1 [ true, %.lr.ph.i.i.i.i.i.2.i.i.i12.i ], [ true, %bb.k ], [ false, %bb.o ], [ true, %bb.l ], [ false, %bb.m ], [ true, %.lr.ph.i.i.i.i.i.1.i.i.i9.i ], [ false, %bb.n ]
  %i.ad = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #19 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.ae, ptr noundef nonnull readonly align 4 dereferenceable(128) %1, i64 128, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !54
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !54
  br label %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE16_M_insert_uniqueISL_EES4_ISt17_Rb_tree_iteratorISL_EbEOT_.exit

_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE16_M_insert_uniqueISL_EES4_ISt17_Rb_tree_iteratorISL_EbEOT_.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE10_M_insert_ISL_NSR_11_Alloc_nodeEEESt17_Rb_tree_iteratorISL_EPSt18_Rb_tree_node_baseSX_OT_RT0_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL12sortTriangleSt5arrayIN5video9S3DVertexELm3EE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) %0, ptr noundef nonnull byval(%"struct.std::array.25") align 8 %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.b = call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %1, ptr noundef nonnull align 4 dereferenceable(38) %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %1, ptr noundef nonnull align 4 dereferenceable(38) %i.c)
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.f = call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %i.a, ptr noundef nonnull align 4 dereferenceable(38) %i.e)
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %i.a, ptr noundef nonnull align 4 dereferenceable(38) %1)
  br i1 %i.g, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %i.e, ptr noundef nonnull align 4 dereferenceable(38) %1)
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %i.e, ptr noundef nonnull align 4 dereferenceable(38) %i.a)
  br i1 %i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.j) #16
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.f, %bb.d, %bb.b
  %.sink = phi ptr [ %i.a, %bb.d ], [ %1, %bb.b ], [ %i.e, %bb.f ]
  %.sink2 = phi ptr [ %i.e, %bb.d ], [ %i.a, %bb.b ], [ %1, %bb.f ]
  %.sink1 = phi ptr [ %1, %bb.d ], [ %i.c, %bb.b ], [ %i.a, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %0, ptr noundef nonnull align 8 dereferenceable(38) %.sink, i64 38, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.l, ptr noundef nonnull align 8 dereferenceable(38) %.sink2, i64 38, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.m, ptr noundef nonnull align 8 dereferenceable(38) %.sink1, i64 38, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.std::array.25", align 8    ; 4 uses
  %4 = alloca %"struct.std::array.25", align 8    ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 1920
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph30

bb.b:                                             ; preds = %.lr.ph30
  %i.g = icmp eq i64 %i.s, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph30, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.b ]
  %storemerge16.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.w, %bb.b ]
  %i.h = udiv exact i64 %.lcssa, 120              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.08.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.l, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [120 x i8], ptr %0, i64 %.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 4 dereferenceable(120) %i.k, i64 120, i1 false)
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr %0, i64 noundef %.08.i.i, i64 noundef %i.h, ptr noundef nonnull byval(%"struct.std::array.25") align 8 %3)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.l = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, label %bb.c, !llvm.loop !75

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %storemerge16.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -120 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 4 dereferenceable(120) %i.m, i64 120, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.m, ptr noundef nonnull align 4 dereferenceable(120) %0, i64 120, i1 false), !tbaa.struct !33
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a                       ; 2 uses
  %i.p = sdiv exact i64 %i.o, 120
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.p, ptr noundef nonnull byval(%"struct.std::array.25") align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.q = icmp sgt i64 %i.o, 120
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !76

.lr.ph30:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1629 = phi ptr [ %i.w, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01728 = phi i64 [ %i.s, %bb.b ], [ %2, %.lr.ph ]
  %i.r = phi i64 [ %i.y, %bb.b ], [ %i.c, %.lr.ph ]
  %i.s = add nsw i64 %.01728, -1                  ; 3 uses
  %i.t = udiv i64 %i.r, 240
  %i.u = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %storemerge1629, i64 -120
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr nonnull %i.e, ptr %i.u, ptr nonnull %i.v)
  %i.w = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_(ptr nonnull %i.e, ptr %storemerge1629, ptr %0) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %i.w, ptr %storemerge1629, i64 noundef %i.s)
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.a                       ; 3 uses
  %i.z = icmp sgt i64 %i.y, 1920
  br i1 %i.z, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !74

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit: ; preds = %.lr.ph30, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"struct.std::array.25") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %.0211 = phi i64 [ %i.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.0211, 1                        ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 4 uses
  %i.f = getelementptr inbounds [120 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 4 uses
  %i.h = getelementptr inbounds [120 x i8], ptr %0, i64 %i.g ; 4 uses
  %i.i = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(120) %i.f, ptr noundef nonnull align 4 dereferenceable(120) %i.h)
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(120) %i.h, ptr noundef nonnull align 4 dereferenceable(120) %i.f)
  br i1 %i.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %.lr.ph.i.i.i.i.i.1.i.i

.lr.ph.i.i.i.i.i.1.i.i:                           ; preds = %bb.b
  %.01924.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %.02023.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.k = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.1.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i)
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.1.i.i
  %i.l = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.1.i.i)
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %.lr.ph.i.i.i.i.i.2.i.i

.lr.ph.i.i.i.i.i.2.i.i:                           ; preds = %bb.c
  %.01924.i.i.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %.02023.i.i.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.m = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.2.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i)
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.2.i.i
  %i.n = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.2.i.i) ; 0 uses
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit: ; preds = %.lr.ph.i.i.i.i.i.2.i.i, %.lr.ph.i.i.i.i.i.1.i.i, %.lr.ph, %bb.d, %bb.c, %bb.b
  %i.o = phi i64 [ %i.e, %bb.d ], [ %i.e, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %.lr.ph ], [ %i.g, %.lr.ph.i.i.i.i.i.1.i.i ], [ %i.g, %.lr.ph.i.i.i.i.i.2.i.i ] ; 4 uses
  %i.p = getelementptr inbounds [120 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds [120 x i8], ptr %0, i64 %.0211
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.q, ptr noundef nonnull align 4 dereferenceable(120) %i.p, i64 120, i1 false), !tbaa.struct !33
  %i.r = icmp slt i64 %i.o, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit ] ; 5 uses
  %i.s = and i64 %2, 1
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.u = add nsw i64 %2, -2
  %i.v = ashr exact i64 %i.u, 1
  %i.w = icmp eq i64 %.0.lcssa, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = shl nsw i64 %.0.lcssa, 1
  %i.y = or disjoint i64 %i.x, 1                  ; 2 uses
  %i.z = getelementptr inbounds [120 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds [120 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.aa, ptr noundef nonnull align 4 dereferenceable(120) %i.z, i64 120, i1 false), !tbaa.struct !33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.1 = phi i64 [ %i.y, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ab = load <4 x float>, ptr %3, align 8       ; 7 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load <2 x float>, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 1 ; 4 uses
  %i.ae = extractelement <2 x float> %i.ac, i64 0 ; 4 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0.sroa.7.0.copyload = load i32, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 28
end_hunk_1
begin_hunk_2_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_:bb.a

bb.an:                                            ; preds = %bb.am
  %i.fk = fcmp nsz oeq float %i.fi, %i.l
  br i1 %i.fk, label %_ZNK4core8vector3dIfEltERKS1_.exit11.i18, label %.lr.ph.i.i.i.i.i.2.i.i

_ZNK4core8vector3dIfEltERKS1_.exit11.i18:         ; preds = %bb.an
  %i.fl = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -60
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !60 ; 2 uses
  %i.fn = fcmp nsz olt float %i.fm, %i.k
  br i1 %i.fn, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread, label %_ZNK4core8vector3dIfEneERKS1_.exit12.i13

_ZNK4core8vector3dIfEneERKS1_.exit12.i13:         ; preds = %_ZNK4core8vector3dIfEltERKS1_.exit11.i18
  %i.fo = fcmp nsz une float %i.fm, %i.k
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i.2.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit12.i13
  %i.fp = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -56
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !24 ; 2 uses
  %i.fr = icmp ult i32 %i.fq, %.sroa.52.0.copyload
  br i1 %i.fr, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not.i14 = icmp eq i32 %.sroa.52.0.copyload, %i.fq
  br i1 %.not.i14, label %bb.aq, label %.lr.ph.i.i.i.i.i.2.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fs = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -52
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !61 ; 3 uses
  %i.fu = fcmp nsz olt float %i.ft, %i.o
  br i1 %i.fu, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fv = fcmp nsz oeq float %i.ft, %i.o
  %i.fw = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -48
  %i.fx = load float, ptr %i.fw, align 4          ; 2 uses
  %i.fy = fcmp nsz olt float %i.fx, %i.n
  %or.cond.i15 = select i1 %i.fv, i1 %i.fy, i1 false
  br i1 %or.cond.i15, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread, label %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i16

_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i16:  ; preds = %bb.ar
  %i.fz = fcmp nsz une float %i.ft, %i.o
  %i.ga = fcmp nsz une float %i.fx, %i.n
  %.not3.i.i17 = select i1 %i.fz, i1 true, i1 %i.ga
  br i1 %.not3.i.i17, label %.lr.ph.i.i.i.i.i.2.i.i, label %_ZNK5video9S3DVertexltERKS0_.exit20

_ZNK5video9S3DVertexltERKS0_.exit20:              ; preds = %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i16
  %i.gb = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -44
  %i.gc = load i16, ptr %i.gb, align 4, !tbaa !63
  %i.gd = icmp ult i16 %i.gc, %.sroa.58.0.copyload
  br i1 %i.gd, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread, label %.lr.ph.i.i.i.i.i.2.i.i

.lr.ph.i.i.i.i.i.2.i.i:                           ; preds = %_ZNK5video9S3DVertexltERKS0_.exit30.thread193.thread, %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i16, %bb.an, %bb.ap, %bb.al, %_ZNK4core8vector3dIfEneERKS1_.exit12.i13, %bb.aj, %_ZNK4core8vector3dIfEneERKS1_.exit.i12, %_ZNK5video9S3DVertexltERKS0_.exit20
  %.01924.i.i.i.i.i.ptr.2.i.i = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -40
  %i.ge = load float, ptr %.01924.i.i.i.i.i.ptr.2.i.i, align 4, !tbaa !57 ; 2 uses
  %i.gf = fcmp nsz olt float %i.ac, %i.ge
  br i1 %i.gf, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i.2.i.i
  %i.gg = fcmp nsz oeq float %i.ac, %i.ge
  br i1 %i.gg, label %bb.at, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread

bb.at:                                            ; preds = %bb.as
  %i.gh = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -36
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !59 ; 2 uses
  %i.gj = fcmp nsz olt float %i.ad, %i.gi
  br i1 %i.gj, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gk = fcmp nsz oeq float %i.ad, %i.gi
  br i1 %i.gk, label %_ZNK4core8vector3dIfEltERKS1_.exit.i9, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread

_ZNK4core8vector3dIfEltERKS1_.exit.i9:            ; preds = %bb.au
  %i.gl = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -32
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !60 ; 2 uses
  %i.gn = fcmp nsz olt float %i.ae, %i.gm
  br i1 %i.gn, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.i2

_ZNK4core8vector3dIfEneERKS1_.exit.i2:            ; preds = %_ZNK4core8vector3dIfEltERKS1_.exit.i9
  %i.go = fcmp nsz une float %i.ae, %i.gm
  br i1 %i.go, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread, label %bb.av

bb.av:                                            ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.i2
  %i.gp = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -28
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !57 ; 2 uses
  %i.gr = fcmp nsz olt float %i.af, %i.gq
  br i1 %i.gr, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gs = fcmp nsz oeq float %i.af, %i.gq
  br i1 %i.gs, label %bb.ax, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread

bb.ax:                                            ; preds = %bb.aw
  %i.gt = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -24
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !59 ; 2 uses
  %i.gv = fcmp nsz olt float %i.ag, %i.gu
  br i1 %i.gv, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gw = fcmp nsz oeq float %i.ag, %i.gu
  br i1 %i.gw, label %_ZNK4core8vector3dIfEltERKS1_.exit11.i8, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread

_ZNK4core8vector3dIfEltERKS1_.exit11.i8:          ; preds = %bb.ay
  %i.gx = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -20
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !60 ; 2 uses
  %i.gz = fcmp nsz olt float %i.ah, %i.gy
  br i1 %i.gz, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit12.i3

_ZNK4core8vector3dIfEneERKS1_.exit12.i3:          ; preds = %_ZNK4core8vector3dIfEltERKS1_.exit11.i8
  %i.ha = fcmp nsz une float %i.ah, %i.gy
  br i1 %i.ha, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread, label %bb.az

bb.az:                                            ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit12.i3
  %i.hb = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -16
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !24 ; 2 uses
  %i.hd = icmp ult i32 %.sroa.80.0.copyload, %i.hc
  br i1 %i.hd, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.i4 = icmp eq i32 %i.hc, %.sroa.80.0.copyload
  br i1 %.not.i4, label %bb.bb, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread

bb.bb:                                            ; preds = %bb.ba
  %i.he = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -12
  %i.hf = load float, ptr %i.he, align 4, !tbaa !61 ; 3 uses
  %i.hg = fcmp nsz olt float %i.ai, %i.hf
  br i1 %i.hg, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hh = fcmp nsz oeq float %i.ai, %i.hf
  %i.hi = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -8
  %i.hj = load float, ptr %i.hi, align 4          ; 2 uses
  %i.hk = fcmp nsz olt float %i.aj, %i.hj
  %or.cond.i5 = select i1 %i.hh, i1 %i.hk, i1 false
  br i1 %or.cond.i5, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i6

_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i6:   ; preds = %bb.bc
  %i.hl = fcmp nsz une float %i.ai, %i.hf
  %i.hm = fcmp nsz une float %i.aj, %i.hj
  %.not3.i.i7 = select i1 %i.hl, i1 true, i1 %i.hm
  br i1 %.not3.i.i7, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread, label %_ZNK5video9S3DVertexltERKS0_.exit10

_ZNK5video9S3DVertexltERKS0_.exit10:              ; preds = %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i6
  %i.hn = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -4
  %i.ho = load i16, ptr %i.hn, align 4, !tbaa !63
  %i.hp = icmp ult i16 %.sroa.86.0.copyload, %i.ho
  br i1 %i.hp, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit: ; preds = %bb.ax, %bb.at, %bb.av, %bb.bb, %.lr.ph.i.i.i.i.i.2.i.i, %bb.bc, %bb.az, %_ZNK4core8vector3dIfEltERKS1_.exit11.i8, %_ZNK4core8vector3dIfEltERKS1_.exit.i9, %bb.ac, %bb.y, %bb.aa, %bb.ag, %.lr.ph.i.i.i.i.i.1.i.i, %bb.ah, %bb.ae, %_ZNK4core8vector3dIfEltERKS1_.exit11.i28, %_ZNK4core8vector3dIfEltERKS1_.exit.i29, %bb.h, %bb.d, %bb.f, %bb.l, %bb.b, %bb.m, %bb.j, %_ZNK4core8vector3dIfEltERKS1_.exit11.i48, %_ZNK4core8vector3dIfEltERKS1_.exit.i49, %_ZNK5video9S3DVertexltERKS0_.exit10, %_ZNK5video9S3DVertexltERKS0_.exit30, %_ZNK5video9S3DVertexltERKS0_.exit50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0175.0, ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0.0, i64 120, i1 false), !tbaa.struct !33
  br label %bb.b, !llvm.loop !85

_ZNK5video9S3DVertexltERKS0_.exit40.thread:       ; preds = %_ZNK5video9S3DVertexltERKS0_.exit30.thread193.thread, %_ZNK5video9S3DVertexltERKS0_.exit50.thread181.thread, %_ZNK5video9S3DVertexltERKS0_.exit10, %bb.as, %_ZNK4core8vector3dIfEneERKS1_.exit.i2, %bb.au, %_ZNK4core8vector3dIfEneERKS1_.exit12.i3, %bb.aw, %bb.ba, %bb.ay, %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i6, %bb.am, %bb.ai, %bb.ak, %bb.aq, %_ZNK5video9S3DVertexltERKS0_.exit30.thread193, %bb.ar, %bb.ao, %_ZNK4core8vector3dIfEltERKS1_.exit11.i18, %_ZNK4core8vector3dIfEltERKS1_.exit.i19, %bb.r, %bb.n, %bb.p, %bb.v, %_ZNK5video9S3DVertexltERKS0_.exit50.thread181, %bb.w, %bb.t, %_ZNK4core8vector3dIfEltERKS1_.exit11.i38, %_ZNK4core8vector3dIfEltERKS1_.exit.i39, %_ZNK5video9S3DVertexltERKS0_.exit40, %_ZNK5video9S3DVertexltERKS0_.exit20
  store <4 x float> %i.a, ptr %.sroa.0175.0, align 4
  %.sroa.16.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 16
  store <2 x float> %i.b, ptr %.sroa.16.0..sroa_idx69, align 4
  %.sroa.24.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 24
  store i32 %.sroa.24.0.copyload, ptr %.sroa.24.0..sroa_idx79, align 4
  %.sroa.26.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 28
  store <2 x float> %i.e, ptr %.sroa.26.0..sroa_idx82, align 4
  %.sroa.30.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 36
  store <2 x i16> %i.h, ptr %.sroa.30.0..sroa_idx88, align 4
  %.sroa.3293.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 40
  store <4 x float> %i.i, ptr %.sroa.3293.0..sroa_idx94, align 4
  %.sroa.44.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 56
  store <2 x float> %i.j, ptr %.sroa.44.0..sroa_idx110, align 4
  %.sroa.52.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 64
  store i32 %.sroa.52.0.copyload, ptr %.sroa.52.0..sroa_idx120, align 4
  %.sroa.54.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 68
  store <2 x float> %i.m, ptr %.sroa.54.0..sroa_idx123, align 4
  %.sroa.58.0..sroa_idx129 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 76
  store <2 x i16> %i.p, ptr %.sroa.58.0..sroa_idx129, align 4
  %.sroa.60134.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 80
  store <4 x float> %i.q, ptr %.sroa.60134.0..sroa_idx135, align 4
  %.sroa.72.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 96
  store <2 x float> %i.r, ptr %.sroa.72.0..sroa_idx151, align 4
  %.sroa.80.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 104
  store i32 %.sroa.80.0.copyload, ptr %.sroa.80.0..sroa_idx161, align 4
  %.sroa.82.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 108
  store <2 x float> %i.s, ptr %.sroa.82.0..sroa_idx164, align 4
  %.sroa.86.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %.sroa.0175.0, i64 116
  store <2 x i16> %i.t, ptr %.sroa.86.0..sroa_idx170, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE8_M_eraseEPSt13_Rb_tree_nodeISL_E(ptr noundef %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02 = phi ptr [ %.0.val, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val6 = load ptr, ptr %i.a, align 8, !tbaa !86
  tail call fastcc void @_ZNSt8_Rb_treeISt5arrayIN5video9S3DVertexELm3EESt4pairIKS3_Z14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS6_ItSaItEERKS6_IS0_IS2_Lm4EESaISF_EEE7QuadRefESt10_Select1stISL_ESt4lessIS3_ESaISL_EE8_M_eraseEPSt13_Rb_tree_nodeISL_E(ptr noundef %.0.val6)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val = load ptr, ptr %i.b, align 8, !tbaa !87 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 160) #17
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !88

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIN5video9S3DVertexELm3EEbRKSt5arrayIT_XT0_EES6_(ptr noundef nonnull align 4 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(120) %1) local_unnamed_addr #11 comdat {
.lr.ph.i.i.i.i:
  %i.a = load float, ptr %0, align 4, !tbaa !57
  %i.b = load float, ptr %1, align 4, !tbaa !57
  %i.c = fcmp nsz oeq float %i.a, %i.b
  br i1 %i.c, label %bb.a, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.a:                                             ; preds = %.lr.ph.i.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !59
  %i.h = fcmp nsz oeq float %i.e, %i.g
  br i1 %i.h, label %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i:     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !60
  %i.m = fcmp nsz oeq float %i.j, %i.l
  br i1 %i.m, label %bb.b, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load float, ptr %i.n, align 4, !tbaa !57
  %i.q = load float, ptr %i.o, align 4, !tbaa !57
  %i.r = fcmp nsz oeq float %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load float, ptr %i.s, align 4, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !59
  %i.w = fcmp nsz oeq float %i.t, %i.v
  br i1 %i.w, label %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i:    ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load float, ptr %i.z, align 4, !tbaa !60
  %i.ab = fcmp nsz oeq float %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.d:                                             ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !24
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !24
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !61
  %i.ak = load float, ptr %i.ai, align 4, !tbaa !61
  %i.al = fcmp nsz oeq float %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load float, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = fcmp nsz oeq float %i.an, %i.ap
  %i.ar = select i1 %i.al, i1 %i.aq, i1 false
  br i1 %i.ar, label %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i:        ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.at = load i16, ptr %i.as, align 4, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.av = load i16, ptr %i.au, align 4, !tbaa !63
  %i.aw = icmp eq i16 %i.at, %i.av
  br i1 %i.aw, label %.lr.ph.i.i.i.i.1, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

.lr.ph.i.i.i.i.1:                                 ; preds = %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.0810.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load float, ptr %.0810.i.i.i.i.ptr.1, align 4, !tbaa !57
  %i.az = load float, ptr %i.ax, align 4, !tbaa !57
  %i.ba = fcmp nsz oeq float %i.ay, %i.az
  br i1 %i.ba, label %bb.f, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !59
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.be = load float, ptr %i.bd, align 4, !tbaa !59
  %i.bf = fcmp nsz oeq float %i.bc, %i.be
  br i1 %i.bf, label %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.1, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.1:   ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !60
  %i.bk = fcmp nsz oeq float %i.bh, %i.bj
  br i1 %i.bk, label %bb.g, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.g:                                             ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bn = load float, ptr %i.bl, align 4, !tbaa !57
  %i.bo = load float, ptr %i.bm, align 4, !tbaa !57
  %i.bp = fcmp nsz oeq float %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load float, ptr %i.bq, align 4, !tbaa !59
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !59
  %i.bu = fcmp nsz oeq float %i.br, %i.bt
  br i1 %i.bu, label %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.1, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.1:  ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !60
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.by = load float, ptr %i.bx, align 4, !tbaa !60
  %i.bz = fcmp nsz oeq float %i.bw, %i.by
  br i1 %i.bz, label %bb.i, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.i:                                             ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !24
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !24
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.j, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ch = load float, ptr %i.cf, align 4, !tbaa !61
  %i.ci = load float, ptr %i.cg, align 4, !tbaa !61
  %i.cj = fcmp nsz oeq float %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cn = load float, ptr %i.cm, align 4
  %i.co = fcmp nsz oeq float %i.cl, %i.cn
  %i.cp = select i1 %i.cj, i1 %i.co, i1 false
  br i1 %i.cp, label %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.1, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.1:      ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cr = load i16, ptr %i.cq, align 4, !tbaa !63
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ct = load i16, ptr %i.cs, align 4, !tbaa !63
  %i.cu = icmp eq i16 %i.cr, %i.ct
  br i1 %i.cu, label %.lr.ph.i.i.i.i.2, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

.lr.ph.i.i.i.i.2:                                 ; preds = %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.1
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.0810.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cw = load float, ptr %.0810.i.i.i.i.ptr.2, align 4, !tbaa !57
  %i.cx = load float, ptr %i.cv, align 4, !tbaa !57
  %i.cy = fcmp nsz oeq float %i.cw, %i.cx
  br i1 %i.cy, label %bb.k, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.2
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.da = load float, ptr %i.cz, align 4, !tbaa !59
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dc = load float, ptr %i.db, align 4, !tbaa !59
  %i.dd = fcmp nsz oeq float %i.da, %i.dc
  br i1 %i.dd, label %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.2, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.2:   ; preds = %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.df = load float, ptr %i.de, align 4, !tbaa !60
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !60
  %i.di = fcmp nsz oeq float %i.df, %i.dh
  br i1 %i.di, label %bb.l, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.l:                                             ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.2
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.dl = load float, ptr %i.dj, align 4, !tbaa !57
  %i.dm = load float, ptr %i.dk, align 4, !tbaa !57
  %i.dn = fcmp nsz oeq float %i.dl, %i.dm
  br i1 %i.dn, label %bb.m, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.m:                                             ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dp = load float, ptr %i.do, align 4, !tbaa !59
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !59
  %i.ds = fcmp nsz oeq float %i.dp, %i.dr
  br i1 %i.ds, label %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.2, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.2:  ; preds = %bb.m
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.du = load float, ptr %i.dt, align 4, !tbaa !60
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !60
  %i.dx = fcmp nsz oeq float %i.du, %i.dw
  br i1 %i.dx, label %bb.n, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.n:                                             ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.2
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !24
  %i.eb = load i32, ptr %i.dy, align 4, !tbaa !24
  %i.ec = icmp eq i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.o, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

bb.o:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ef = load float, ptr %i.ed, align 4, !tbaa !61
  %i.eg = load float, ptr %i.ee, align 4, !tbaa !61
  %i.eh = fcmp nsz oeq float %i.ef, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ej = load float, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.el = load float, ptr %i.ek, align 4
  %i.em = fcmp nsz oeq float %i.ej, %i.el
  %i.en = select i1 %i.eh, i1 %i.em, i1 false
  br i1 %i.en, label %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.2, label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.2:      ; preds = %bb.o
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ep = load i16, ptr %i.eo, align 4, !tbaa !63
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.er = load i16, ptr %i.eq, align 4, !tbaa !63
  %i.es = icmp eq i16 %i.ep, %i.er
  br label %_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit

_ZSt5equalIPKN5video9S3DVertexES3_EbT_S4_T0_.exit: ; preds = %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.2, %bb.o, %bb.n, %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.2, %bb.m, %bb.l, %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.2, %bb.k, %.lr.ph.i.i.i.i.2, %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.1, %bb.j, %bb.i, %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.1, %bb.h, %bb.g, %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.1, %bb.f, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i, %bb.a, %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i, %bb.b, %bb.c, %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i, %bb.d, %bb.e, %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i
  %.not.lcssa.i.i.i.i = phi i1 [ false, %bb.b ], [ false, %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i ], [ false, %bb.o ], [ false, %bb.e ], [ false, %bb.d ], [ false, %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i ], [ false, %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i ], [ false, %bb.a ], [ false, %bb.c ], [ false, %.lr.ph.i.i.i.i.1 ], [ false, %bb.f ], [ false, %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.1 ], [ false, %bb.g ], [ false, %bb.h ], [ false, %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.1 ], [ false, %bb.i ], [ false, %bb.j ], [ false, %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.1 ], [ %i.es, %_ZNK5video9S3DVertexeqERKS0_.exit.i.i.i.i.2 ], [ false, %.lr.ph.i.i.i.i.2 ], [ false, %bb.k ], [ false, %_ZNK4core8vector3dIfEeqERKS1_.exit.i.i.i.i.i.2 ], [ false, %bb.l ], [ false, %bb.m ], [ false, %_ZNK4core8vector3dIfEeqERKS1_.exit6.i.i.i.i.i.2 ], [ false, %bb.n ]
  ret i1 %.not.lcssa.i.i.i.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"p1 short", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZL10expandMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE: argument 0"}
!15 = distinct !{!15, !"_ZL10expandMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE"}
!16 = !{!10, !11, i64 8}
!17 = !{!18, !19, i64 8}
!18 = !{!"_ZTSNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 _ZTSSt5arrayIN5video9S3DVertexELm3EE", !12, i64 0}
!20 = !{!18, !19, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!18, !19, i64 16}
!24 = !{!25, !6, i64 0}
!25 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!26 = distinct !{!26, !22}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !7, i64 0}
!29 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30, i64 16, i64 4, !30, i64 20, i64 4, !30, i64 24, i64 4, !32, i64 28, i64 4, !30, i64 32, i64 4, !30, i64 36, i64 2, !27}
!30 = !{!31, !31, i64 0}
!31 = !{!"float", !7, i64 0}
!32 = !{!6, !6, i64 0}
!33 = !{i64 0, i64 120, !34}
!34 = !{!7, !7, i64 0}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
!37 = !{!38, !39, i64 8}
!38 = !{!"_ZTSNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm4EESaIS3_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!39 = !{!"p1 _ZTSSt5arrayIN5video9S3DVertexELm4EE", !12, i64 0}
!40 = !{!38, !39, i64 0}
!41 = !{i64 0, i64 16, !34}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !22}
!45 = !{!46, !48, i64 0}
!46 = !{!"_ZTSSt15_Rb_tree_header", !47, i64 0, !50, i64 32}
!47 = !{!"_ZTSSt18_Rb_tree_node_base", !48, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!48 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!49 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!50 = !{!"long", !7, i64 0}
!51 = !{!46, !49, i64 8}
!52 = !{!46, !49, i64 16}
!53 = !{!46, !49, i64 24}
!54 = !{!46, !50, i64 32}
!55 = distinct !{!55, !22}
!56 = !{!19, !19, i64 0}
!57 = !{!58, !31, i64 0}
!58 = !{!"_ZTSN4core8vector3dIfEE", !31, i64 0, !31, i64 4, !31, i64 8}
!59 = !{!58, !31, i64 4}
!60 = !{!58, !31, i64 8}
!61 = !{!62, !31, i64 0}
!62 = !{!"_ZTSN4core8vector2dIfEE", !31, i64 0, !31, i64 4}
!63 = !{!64, !28, i64 36}
!64 = !{!"_ZTSN5video9S3DVertexE", !58, i64 0, !58, i64 12, !25, i64 24, !62, i64 28, !28, i64 36}
!65 = !{!49, !49, i64 0}
!66 = distinct !{!66, !22}
!67 = !{!68, !6, i64 120}
!68 = !{!"_ZTSSt4pairIKSt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS5_ItSaItEERKS5_IS0_IS2_Lm4EESaISE_EEE7QuadRefE", !69, i64 0, !70, i64 120}
!69 = !{!"_ZTSSt5arrayIN5video9S3DVertexELm3EE", !7, i64 0}
!70 = !{!"_ZTSZ14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm4EESaISB_EEE7QuadRef", !6, i64 0, !6, i64 4}
!71 = !{!68, !6, i64 124}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22}
!74 = distinct !{!74, !22}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22}
!82 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!83 = distinct !{!83, !22, !84}
!84 = !{!"llvm.loop.peeled.count", i32 1}
!85 = distinct !{!85, !22}
!86 = !{!47, !49, i64 24}
!87 = !{!47, !49, i64 16}
!88 = distinct !{!88, !22}
end_hunk_2
