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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call fastcc void @_ZL16canonicalizeMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !13     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp eq i64 %i.f, %i.l
  br i1 %i.m, label %bb.b, label %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit

bb.b:                                             ; preds = %bb.a
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not9.i.i.i.i.i, label %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.noexc
  %.011.i.i.i.i.i = phi ptr [ %i.p, %.noexc ], [ %i.i, %bb.b ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.o, %.noexc ], [ %i.c, %bb.b ] ; 2 uses
  %i.n = invoke noundef zeroext i1 @_ZSteqIN5video9S3DVertexELm3EEbRKSt5arrayIT_XT0_EES6_(ptr noundef nonnull align 4 dereferenceable(120) %.0810.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(120) %.011.i.i.i.i.i)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 120 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 120
  %.not.i.i.i.i.i = icmp ne ptr %i.o, %i.b
  %or.cond.not = select i1 %i.n, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit, !llvm.loop !42

_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit: ; preds = %.noexc, %bb.b, %bb.a
  %i.q = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.n, %.noexc ]
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.u) #16
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit: ; preds = %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i1 %i.q

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i4 = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #16
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit5

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit5: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.v
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL16canonicalizeMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca [3 x %"struct.video::S3DVertex"], align 8 ; 7 uses
  %3 = alloca %"struct.std::array.25", align 4    ; 5 uses
  %4 = alloca %"struct.std::array.25", align 8    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51, !noalias !48
  %i.c = load ptr, ptr %2, align 8, !tbaa !52, !noalias !48
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 1
  %i.h = trunc i64 %i.g to i32                    ; 5 uses
  %i.i = sdiv i32 %i.h, 3                         ; 4 uses
  %i.j = srem i32 %i.h, 3
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #15, !noalias !48 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d, !noalias !48

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #17, !noalias !48
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.k) #15, !noalias !48
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.m = sext i32 %i.i to i64                     ; 4 uses
  %i.n = icmp slt i32 %i.h, -2
  br i1 %i.n, label %.noexc.i, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

.noexc.i:                                         ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17, !noalias !48
  unreachable

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.e
  %i.o = icmp slt i32 %i.h, 3
  br i1 %i.o, label %_ZL10expandMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE.exit.thread, label %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i

_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.p = mul nuw nsw i64 %i.m, 120                ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #18, !noalias !48 ; 14 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !13, !alias.scope !48
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !15, !alias.scope !48
  %.off = add nsw i32 %i.h, -3
  %i.t = icmp ult i32 %.off, 3
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new

_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new: ; preds = %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i
  %unroll_iter = and i64 %i.m, 1073741822
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new
  %.013.i.i.i.i.i.i.idx = phi i64 [ 0, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new ], [ %.013.i.i.i.i.i.i.add.1, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %.013.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.q, i64 %.013.i.i.i.i.i.i.idx ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.013.i.i.i.i.i.i.ptr, i8 0, i64 120, i1 false), !noalias !48
  store i32 -1, ptr %i.u, align 4, !tbaa !17, !noalias !48
  %.ptr.1.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.1.i.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !noalias !48
  store i32 -1, ptr %i.v, align 4, !tbaa !17, !noalias !48
  %.ptr.2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.2.i.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !noalias !48
  store i32 -1, ptr %i.w, align 4, !tbaa !17, !noalias !48
  %.013.i.i.i.i.i.i.add = add nuw nsw i64 %.013.i.i.i.i.i.i.idx, 120 ; 2 uses
  %.013.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 %.013.i.i.i.i.i.i.add ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.013.i.i.i.i.i.i.ptr.1, i8 0, i64 120, i1 false), !noalias !48
  store i32 -1, ptr %i.x, align 4, !tbaa !17, !noalias !48
  %.ptr.1.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.1.i.i.i.i.i.i.i.i.1, i8 0, i64 24, i1 false), !noalias !48
  store i32 -1, ptr %i.y, align 4, !tbaa !17, !noalias !48
  %.ptr.2.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.2.i.i.i.i.i.i.i.i.1, i8 0, i64 24, i1 false), !noalias !48
  store i32 -1, ptr %i.z, align 4, !tbaa !17, !noalias !48
  %.013.i.i.i.i.i.i.add.1 = add nuw nsw i64 %.013.i.i.i.i.i.i.idx, 240 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !45

_ZL10expandMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE.exit.thread: ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !48
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph.i.unr-lcssa:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aa = and i32 %i.i, 1
  %lcmp.mod.not = icmp eq i32 %i.aa, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %.lr.ph.i.unr-lcssa, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i
  %.013.i.i.i.i.i.i.idx.epil.init = phi i64 [ 0, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i ], [ %.013.i.i.i.i.i.i.add.1, %.lr.ph.i.unr-lcssa ] ; 3 uses
  %lcmp.mod52 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod52)
  %.013.i.i.i.i.i.i.ptr.epil = getelementptr inbounds nuw i8, ptr %i.q, i64 %.013.i.i.i.i.i.i.idx.epil.init ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.013.i.i.i.i.i.i.ptr.epil, i8 0, i64 120, i1 false), !noalias !48
  store i32 -1, ptr %i.ab, align 4, !tbaa !17, !noalias !48
  %.ptr.1.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.1.i.i.i.i.i.i.i.i.epil, i8 0, i64 24, i1 false), !noalias !48
  store i32 -1, ptr %i.ac, align 4, !tbaa !17, !noalias !48
  %.ptr.2.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.2.i.i.i.i.i.i.i.i.epil, i8 0, i64 24, i1 false), !noalias !48
  store i32 -1, ptr %i.ad, align 4, !tbaa !17, !noalias !48
  %.013.i.i.i.i.i.i.add.epil = add nuw nsw i64 %.013.i.i.i.i.i.i.idx.epil.init, 120
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %.013.i.i.i.i.i.i.idx.lcssa = phi i64 [ %.013.i.i.i.i.i.i.add, %.lr.ph.i.unr-lcssa ], [ %.013.i.i.i.i.i.i.idx.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.013.i.i.i.i.i.i.ptr.lcssa = phi ptr [ %.013.i.i.i.i.i.i.ptr.1, %.lr.ph.i.unr-lcssa ], [ %.013.i.i.i.i.i.i.ptr.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.013.i.i.i.i.i.i.add.lcssa = phi i64 [ %.013.i.i.i.i.i.i.add.1, %.lr.ph.i.unr-lcssa ], [ %.013.i.i.i.i.i.i.add.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader ] ; 4 uses
  %.ptr.lcssa = getelementptr inbounds nuw i8, ptr %i.q, i64 %.013.i.i.i.i.i.i.add.lcssa ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.ptr.lcssa, ptr %i.ae, align 8, !tbaa !12, !alias.scope !48
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.40..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 40
  %.sroa.0.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 80
  %wide.trip.count.i = zext nneg i32 %i.i to i64
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !51, !noalias !48
  %i.ah = load ptr, ptr %2, align 8, !tbaa !52, !noalias !48 ; 4 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 1                 ; 6 uses
  %i.am = udiv exact i64 %.013.i.i.i.i.i.i.add.lcssa, 120 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.an = mul nuw nsw i64 %indvars.iv.i, 3        ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.al, %i.an
  br i1 %.not.i.i.i, label %bb.g, label %.invoke.i

.invoke.i:                                        ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.ao = phi i64 [ %i.bi, %bb.k ], [ %i.an, %bb.f ], [ %i.as, %bb.g ], [ %i.ba, %bb.h ], [ %i.bd, %bb.i ], [ %i.bf, %bb.j ], [ %i.am, %bb.l ]
  %i.ap = phi i64 [ %i.ay, %bb.k ], [ %i.al, %bb.f ], [ %i.ay, %bb.g ], [ %i.al, %bb.h ], [ %i.ay, %bb.i ], [ %i.al, %bb.j ], [ %i.am, %bb.l ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, i64 noundef %i.ao, i64 noundef %i.ap) #17
          to label %.cont.i unwind label %bb.n, !noalias !48

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.an
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !19, !noalias !48
  %i.as = zext i16 %i.ar to i64                   ; 3 uses
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !55, !noalias !48
  %i.au = load ptr, ptr %1, align 8, !tbaa !56, !noalias !48 ; 4 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 40                ; 6 uses
  %.not.i.i24.i = icmp ugt i64 %i.ay, %i.as
  br i1 %.not.i.i24.i, label %bb.h, label %.invoke.i

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.au, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %.sroa.0.i, ptr noundef nonnull align 4 dereferenceable(38) %i.az, i64 38, i1 false), !tbaa.struct !23, !noalias !48
  %i.ba = add nuw nsw i64 %i.an, 1                ; 3 uses
  %.not.i.i26.i = icmp ugt i64 %i.al, %i.ba
  br i1 %.not.i.i26.i, label %bb.i, label %.invoke.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !19, !noalias !48
  %i.bd = zext i16 %i.bc to i64                   ; 3 uses
  %.not.i.i29.i = icmp ugt i64 %i.ay, %i.bd
  br i1 %.not.i.i29.i, label %bb.j, label %.invoke.i

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.au, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %.sroa.0.40..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(38) %i.be, i64 38, i1 false), !tbaa.struct !23, !noalias !48
  %i.bf = add nuw nsw i64 %i.an, 2                ; 3 uses
  %.not.i.i32.i = icmp ugt i64 %i.al, %i.bf
  br i1 %.not.i.i32.i, label %bb.k, label %.invoke.i

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !19, !noalias !48
  %i.bi = zext i16 %i.bh to i64                   ; 3 uses
  %.not.i.i35.i = icmp ugt i64 %i.ay, %i.bi
  br i1 %.not.i.i35.i, label %bb.l, label %.invoke.i

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.au, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %.sroa.0.80..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(38) %i.bj, i64 38, i1 false), !tbaa.struct !23, !noalias !48
  %exitcond.not = icmp eq i64 %indvars.iv.i, %i.am
  br i1 %exitcond.not, label %.invoke.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.bk, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.i, i64 120, i1 false), !tbaa.struct !25, !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph, label %bb.f, !llvm.loop !46

bb.n:                                             ; preds = %.invoke.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #16, !noalias !48
  br label %common.resume

common.resume:                                    ; preds = %bb.s, %bb.d, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.n ], [ %i.l, %bb.d ], [ %.pn, %bb.s ]
  resume { ptr, i32 } %common.resume.op

._crit_edge:                                      ; preds = %bb.q
  %i.bm = udiv exact i64 %.013.i.i.i.i.i.i.add.lcssa, 120
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = xor i64 %i.bo, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %i.q, ptr nonnull %.ptr.lcssa, i64 noundef %i.bp)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge
  %i.bq = icmp samesign ugt i64 %.013.i.i.i.i.i.i.idx.lcssa, 1800
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 1920 ; 2 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr nonnull %i.q, ptr nonnull %i.br)
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.o
  %.not4.i.i.i.i = icmp eq i64 %.013.i.i.i.i.i.i.add.lcssa, 1920
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.noexc12
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.bs, %.noexc12 ], [ %i.br, %.noexc11 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %.lr.ph.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, %.ptr.lcssa
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !47

bb.p:                                             ; preds = %.noexc
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr nonnull %i.q, ptr nonnull %.ptr.lcssa)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit unwind label %.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.m, %bb.q
  %.sroa.015.019 = phi ptr [ %i.bt, %bb.q ], [ %i.q, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 4 dereferenceable(120) %.sroa.015.019, i64 120, i1 false), !tbaa.struct !25
  invoke fastcc void @_ZL12sortTriangleSt5arrayIN5video9S3DVertexELm3EE(ptr dead_on_unwind noalias writable align 4 %3, ptr noundef nonnull byval(%"struct.std::array.25") align 8 %4)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.sroa.015.019, ptr noundef nonnull align 4 dereferenceable(120) %3, i64 120, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 120
  %.not = icmp eq ptr %.sroa.015.019, %.013.i.i.i.i.i.i.ptr.lcssa
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %.lr.ph
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
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
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.idx = mul nuw nsw i64 %i.m, 120
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %.idx) #16
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm4EESaISB_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::map", align 8          ; 12 uses
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
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !65     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 160                 ; 6 uses
  %i.h = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit, label %.noexc96

.noexc96:                                         ; preds = %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 4
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #18 ; 11 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.l = add nsw i64 %i.g, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit, label %bb.b

bb.b:                                             ; preds = %.noexc96
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !66
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !57

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.b
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.n, %bb.b ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.t = icmp samesign ult i64 %i.q, 3
  br i1 %i.t, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !66
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !66
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !66
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !66
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.x, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !58

_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc96, %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sroa.12.0 = phi ptr [ null, %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.k, %.noexc96 ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.0150.0 = phi ptr [ null, %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.j, %.noexc96 ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.y, align 8, !tbaa !68
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr null, ptr %i.z, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ac, align 8, !tbaa !32
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.ae = load ptr, ptr %2, align 8, !tbaa !65    ; 2 uses
  %.not185 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not185, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit
end_hunk_0
begin_hunk_1_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_:bb.a
  %i.po = load float, ptr %i.pn, align 4, !tbaa !36 ; 2 uses
  %i.pp = load float, ptr %i.n, align 4, !tbaa !36 ; 2 uses
  %i.pq = fcmp nsz olt float %i.po, %i.pp
  br i1 %i.pq, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit15, label %_ZNK4core8vector3dIfEneERKS1_.exit12.i68

_ZNK4core8vector3dIfEneERKS1_.exit12.i68:         ; preds = %_ZNK4core8vector3dIfEltERKS1_.exit11.i73
  %i.pr = fcmp nsz une float %i.po, %i.pp
  br i1 %i.pr, label %.lr.ph.i.i.i.i.i.2.i.i11, label %bb.cq

bb.cq:                                            ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit12.i68
  %i.ps = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -56
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !17 ; 2 uses
  %i.pu = load i32, ptr %i.o, align 4, !tbaa !17  ; 2 uses
  %i.pv = icmp ult i32 %i.pt, %i.pu
  br i1 %i.pv, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit15, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.not.i69 = icmp eq i32 %i.pu, %i.pt
  br i1 %.not.i69, label %bb.cs, label %.lr.ph.i.i.i.i.i.2.i.i11

bb.cs:                                            ; preds = %bb.cr
  %i.pw = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -52
  %i.px = load float, ptr %i.pw, align 4, !tbaa !38 ; 3 uses
  %i.py = load float, ptr %i.p, align 4, !tbaa !38 ; 3 uses
  %i.pz = fcmp nsz olt float %i.px, %i.py
  br i1 %i.pz, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit15, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qa = fcmp nsz oeq float %i.px, %i.py
  %i.qb = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -48
  %i.qc = load float, ptr %i.qb, align 4          ; 2 uses
  %i.qd = load float, ptr %i.q, align 4           ; 2 uses
  %i.qe = fcmp nsz olt float %i.qc, %i.qd
  %or.cond.i70 = select i1 %i.qa, i1 %i.qe, i1 false
  br i1 %or.cond.i70, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit15, label %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i71

_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i71:  ; preds = %bb.ct
  %i.qf = fcmp nsz une float %i.px, %i.py
  %i.qg = fcmp nsz une float %i.qc, %i.qd
  %.not3.i.i72 = select i1 %i.qf, i1 true, i1 %i.qg
  br i1 %.not3.i.i72, label %.lr.ph.i.i.i.i.i.2.i.i11, label %_ZNK5video9S3DVertexltERKS0_.exit75

_ZNK5video9S3DVertexltERKS0_.exit75:              ; preds = %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i71
  %i.qh = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -44
  %i.qi = load i16, ptr %i.qh, align 4, !tbaa !40
  %i.qj = load i16, ptr %i.r, align 4, !tbaa !40
  %i.qk = icmp ult i16 %i.qi, %i.qj
  br i1 %i.qk, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit15, label %.lr.ph.i.i.i.i.i.2.i.i11

.lr.ph.i.i.i.i.i.2.i.i11:                         ; preds = %_ZNK5video9S3DVertexltERKS0_.exit85.thread157.thread, %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i71, %bb.cp, %bb.cr, %bb.cn, %_ZNK4core8vector3dIfEneERKS1_.exit12.i68, %bb.cl, %_ZNK4core8vector3dIfEneERKS1_.exit.i67, %_ZNK5video9S3DVertexltERKS0_.exit75
  %.01924.i.i.i.i.i.ptr.2.i.i12 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -40
  %i.ql = load float, ptr %.01924.i.i.i.i.i.ptr.2.i.i, align 4, !tbaa !34 ; 2 uses
  %i.qm = load float, ptr %.01924.i.i.i.i.i.ptr.2.i.i12, align 4, !tbaa !34 ; 2 uses
  %i.qn = fcmp nsz olt float %i.ql, %i.qm
  br i1 %i.qn, label %_ZNK5video9S3DVertexltERKS0_.exit105.thread.backedge, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i.i.i.i.i.2.i.i11
  %i.qo = fcmp nsz oeq float %i.ql, %i.qm
  br i1 %i.qo, label %bb.cv, label %_ZNK5video9S3DVertexltERKS0_.exit65.thread169

bb.cv:                                            ; preds = %bb.cu
  %i.qp = load float, ptr %i.s, align 4, !tbaa !35 ; 2 uses
  %i.qq = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -36
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !35 ; 2 uses
  %i.qs = fcmp nsz olt float %i.qp, %i.qr
  br i1 %i.qs, label %_ZNK5video9S3DVertexltERKS0_.exit105.thread.backedge, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qt = fcmp nsz oeq float %i.qp, %i.qr
  br i1 %i.qt, label %_ZNK4core8vector3dIfEltERKS1_.exit.i64, label %_ZNK5video9S3DVertexltERKS0_.exit65.thread169

_ZNK4core8vector3dIfEltERKS1_.exit.i64:           ; preds = %bb.cw
  %i.qu = load float, ptr %i.t, align 4, !tbaa !36 ; 2 uses
  %i.qv = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -32
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !36 ; 2 uses
  %i.qx = fcmp nsz olt float %i.qu, %i.qw
  br i1 %i.qx, label %_ZNK5video9S3DVertexltERKS0_.exit105.thread.backedge, label %_ZNK4core8vector3dIfEneERKS1_.exit.i57

_ZNK4core8vector3dIfEneERKS1_.exit.i57:           ; preds = %_ZNK4core8vector3dIfEltERKS1_.exit.i64
  %i.qy = fcmp nsz une float %i.qu, %i.qw
  br i1 %i.qy, label %_ZNK5video9S3DVertexltERKS0_.exit65.thread169, label %bb.cx

bb.cx:                                            ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.i57
  %i.qz = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -28
  %i.ra = load float, ptr %i.u, align 4, !tbaa !34 ; 2 uses
  %i.rb = load float, ptr %i.qz, align 4, !tbaa !34 ; 2 uses
  %i.rc = fcmp nsz olt float %i.ra, %i.rb
  br i1 %i.rc, label %_ZNK5video9S3DVertexltERKS0_.exit105.thread.backedge, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rd = fcmp nsz oeq float %i.ra, %i.rb
  br i1 %i.rd, label %bb.cz, label %_ZNK5video9S3DVertexltERKS0_.exit65.thread169

bb.cz:                                            ; preds = %bb.cy
  %i.re = load float, ptr %i.v, align 4, !tbaa !35 ; 2 uses
  %i.rf = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -24
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !35 ; 2 uses
  %i.rh = fcmp nsz olt float %i.re, %i.rg
  br i1 %i.rh, label %_ZNK5video9S3DVertexltERKS0_.exit105.thread.backedge, label %bb.da

_ZNK5video9S3DVertexltERKS0_.exit105.thread.backedge: ; preds = %bb.cz, %bb.cv, %bb.cx, %bb.dd, %.lr.ph.i.i.i.i.i.2.i.i11, %bb.de, %bb.db, %_ZNK4core8vector3dIfEltERKS1_.exit11.i63, %_ZNK4core8vector3dIfEltERKS1_.exit.i64, %bb.ce, %bb.ca, %bb.cc, %bb.ci, %.lr.ph.i.i.i.i.i.1.i.i8, %bb.cj, %bb.cg, %_ZNK4core8vector3dIfEltERKS1_.exit11.i83, %_ZNK4core8vector3dIfEltERKS1_.exit.i84, %bb.bj, %bb.bf, %bb.bh, %bb.bn, %_ZNK5video9S3DVertexltERKS0_.exit105.thread, %bb.bo, %bb.bl, %_ZNK4core8vector3dIfEltERKS1_.exit11.i103, %_ZNK4core8vector3dIfEltERKS1_.exit.i104, %_ZNK5video9S3DVertexltERKS0_.exit105, %_ZNK5video9S3DVertexltERKS0_.exit85, %_ZNK5video9S3DVertexltERKS0_.exit65
  br label %_ZNK5video9S3DVertexltERKS0_.exit105.thread, !llvm.loop !84

bb.da:                                            ; preds = %bb.cz
  %i.ri = fcmp nsz oeq float %i.re, %i.rg
  br i1 %i.ri, label %_ZNK4core8vector3dIfEltERKS1_.exit11.i63, label %_ZNK5video9S3DVertexltERKS0_.exit65.thread169

_ZNK4core8vector3dIfEltERKS1_.exit11.i63:         ; preds = %bb.da
  %i.rj = load float, ptr %i.w, align 4, !tbaa !36 ; 2 uses
  %i.rk = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -20
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !36 ; 2 uses
  %i.rm = fcmp nsz olt float %i.rj, %i.rl
  br i1 %i.rm, label %_ZNK5video9S3DVertexltERKS0_.exit105.thread.backedge, label %_ZNK4core8vector3dIfEneERKS1_.exit12.i58

_ZNK4core8vector3dIfEneERKS1_.exit12.i58:         ; preds = %_ZNK4core8vector3dIfEltERKS1_.exit11.i63
  %i.rn = fcmp nsz une float %i.rj, %i.rl
  br i1 %i.rn, label %_ZNK5video9S3DVertexltERKS0_.exit65.thread169, label %bb.db

bb.db:                                            ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit12.i58
  %i.ro = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -16
  %i.rp = load i32, ptr %i.x, align 4, !tbaa !17  ; 2 uses
  %i.rq = load i32, ptr %i.ro, align 4, !tbaa !17 ; 2 uses
  %i.rr = icmp ult i32 %i.rp, %i.rq
  br i1 %i.rr, label %_ZNK5video9S3DVertexltERKS0_.exit105.thread.backedge, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.not.i59 = icmp eq i32 %i.rq, %i.rp
  br i1 %.not.i59, label %bb.dd, label %_ZNK5video9S3DVertexltERKS0_.exit65.thread169

bb.dd:                                            ; preds = %bb.dc
  %i.rs = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -12
  %i.rt = load float, ptr %i.y, align 4, !tbaa !38 ; 3 uses
  %i.ru = load float, ptr %i.rs, align 4, !tbaa !38 ; 3 uses
  %i.rv = fcmp nsz olt float %i.rt, %i.ru
  br i1 %i.rv, label %_ZNK5video9S3DVertexltERKS0_.exit105.thread.backedge, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.rw = fcmp nsz oeq float %i.rt, %i.ru
  %i.rx = load float, ptr %i.z, align 4           ; 2 uses
  %i.ry = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8
  %i.rz = load float, ptr %i.ry, align 4          ; 2 uses
  %i.sa = fcmp nsz olt float %i.rx, %i.rz
  %or.cond.i60 = select i1 %i.rw, i1 %i.sa, i1 false
  br i1 %or.cond.i60, label %_ZNK5video9S3DVertexltERKS0_.exit105.thread.backedge, label %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i61

_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i61:  ; preds = %bb.de
  %i.sb = fcmp nsz une float %i.rt, %i.ru
  %i.sc = fcmp nsz une float %i.rx, %i.rz
  %.not3.i.i62 = select i1 %i.sb, i1 true, i1 %i.sc
  br i1 %.not3.i.i62, label %_ZNK5video9S3DVertexltERKS0_.exit65.thread169, label %_ZNK5video9S3DVertexltERKS0_.exit65

_ZNK5video9S3DVertexltERKS0_.exit65:              ; preds = %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i61
  %i.sd = load i16, ptr %i.aa, align 4, !tbaa !40
  %i.se = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -4
  %i.sf = load i16, ptr %i.se, align 4, !tbaa !40
  %i.sg = icmp ult i16 %i.sd, %i.sf
  br i1 %i.sg, label %_ZNK5video9S3DVertexltERKS0_.exit105.thread.backedge, label %_ZNK5video9S3DVertexltERKS0_.exit65.thread169

_ZNK5video9S3DVertexltERKS0_.exit65.thread169:    ; preds = %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i61, %bb.da, %bb.dc, %bb.cy, %_ZNK4core8vector3dIfEneERKS1_.exit12.i58, %bb.cw, %_ZNK4core8vector3dIfEneERKS1_.exit.i57, %bb.cu, %_ZNK5video9S3DVertexltERKS0_.exit65
  %.01924.i.i.i.i.i.ptr.2.i.i12.le = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -40
  %i.sh = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i12.le, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i) ; 0 uses
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit15

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit15: ; preds = %bb.co, %bb.ck, %bb.cm, %bb.cs, %_ZNK5video9S3DVertexltERKS0_.exit85.thread157, %bb.ct, %bb.cq, %_ZNK4core8vector3dIfEltERKS1_.exit11.i73, %_ZNK4core8vector3dIfEltERKS1_.exit.i74, %bb.bt, %bb.bp, %bb.br, %bb.bx, %_ZNK5video9S3DVertexltERKS0_.exit105.thread145, %bb.by, %bb.bv, %_ZNK4core8vector3dIfEltERKS1_.exit11.i93, %_ZNK4core8vector3dIfEltERKS1_.exit.i94, %_ZNK5video9S3DVertexltERKS0_.exit75, %_ZNK5video9S3DVertexltERKS0_.exit95, %_ZNK5video9S3DVertexltERKS0_.exit105.thread145.thread, %_ZNK5video9S3DVertexltERKS0_.exit85.thread157.thread, %_ZNK5video9S3DVertexltERKS0_.exit65.thread169
  %i.si = icmp ult ptr %.sroa.0108.1, %.sroa.0.1
  br i1 %i.si, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit15
  ret ptr %.sroa.0108.1

bb.dg:                                            ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit15
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0108.1, i64 40, i1 false), !tbaa.struct !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0108.1, ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0.1, i64 38, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0.1, ptr noundef nonnull align 4 dereferenceable(38) %3, i64 38, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.sj = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -80 ; 2 uses
  %.079.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0108.1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(40) %.079.i.ptr.1.i.i.i, i64 40, i1 false), !tbaa.struct !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.079.i.ptr.1.i.i.i, ptr noundef nonnull align 4 dereferenceable(38) %i.sj, i64 38, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.sj, ptr noundef nonnull align 4 dereferenceable(38) %3, i64 38, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.sk = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -40 ; 2 uses
  %.079.i.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0108.1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(40) %.079.i.ptr.2.i.i.i, i64 40, i1 false), !tbaa.struct !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.079.i.ptr.2.i.i.i, ptr noundef nonnull align 4 dereferenceable(38) %i.sk, i64 38, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.sk, ptr noundef nonnull align 4 dereferenceable(38) %3, i64 38, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.0108.1, i64 120
  br label %bb.b, !llvm.loop !85
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.05 = alloca [3 x %"struct.video::S3DVertex"], align 8 ; 8 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.017 = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %.not18 = icmp eq ptr %.sroa.0.017, %1
  br i1 %.not18, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.01924.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.01924.i.i.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0.017, ptr noundef nonnull align 4 dereferenceable(120) %0)
  br i1 %i.c, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.peel, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0.017)
  br i1 %i.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.peel, label %.lr.ph.i.i.i.i.i.1.i.i.peel

.lr.ph.i.i.i.i.i.1.i.i.peel:                      ; preds = %bb.b
  %.02023.i.i.i.i.i.ptr.1.i.i.peel = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.1.i.i.peel, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i)
  br i1 %i.e, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.peel, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.1.i.i.peel
  %i.f = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.1.i.i.peel)
  br i1 %i.f, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.peel, label %.lr.ph.i.i.i.i.i.2.i.i.peel

.lr.ph.i.i.i.i.i.2.i.i.peel:                      ; preds = %bb.c
  %.02023.i.i.i.i.i.ptr.2.i.i.peel = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.g = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.2.i.i.peel, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i)
  br i1 %i.g, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.peel, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.2.i.i.peel
  %i.h = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.2.i.i.peel) ; 0 uses
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.peel

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.peel: ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.017)
  br label %bb.e

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.peel: ; preds = %.lr.ph, %.lr.ph.i.i.i.i.i.1.i.i.peel, %.lr.ph.i.i.i.i.i.2.i.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.05, ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0.017, i64 120, i1 false), !tbaa.struct !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0.017, ptr noundef nonnull align 4 dereferenceable(120) %0, i64 120, i1 false), !tbaa.struct !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.05, i64 120, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  br label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.peel, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.peel
  %.sroa.0.0.peel = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %.not.peel = icmp eq ptr %.sroa.0.0.peel, %1
  br i1 %.not.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.e, %bb.m
  %.sroa.0.020 = phi ptr [ %.sroa.0.0, %bb.m ], [ %.sroa.0.0.peel, %bb.e ] ; 7 uses
  %.pn19 = phi ptr [ %.sroa.0.020, %bb.m ], [ %.sroa.0.017, %bb.e ] ; 4 uses
  %i.i = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0.020, ptr noundef nonnull align 4 dereferenceable(120) %0)
  br i1 %i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.peel.next
  %i.j = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0.020)
  br i1 %i.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %.lr.ph.i.i.i.i.i.1.i.i

.lr.ph.i.i.i.i.i.1.i.i:                           ; preds = %bb.f
  %.02023.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %.pn19, i64 160 ; 2 uses
  %i.k = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.1.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i)
  br i1 %i.k, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.1.i.i
  %i.l = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.1.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.1.i.i)
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %.lr.ph.i.i.i.i.i.2.i.i

.lr.ph.i.i.i.i.i.2.i.i:                           ; preds = %bb.g
  %.02023.i.i.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %.pn19, i64 200 ; 2 uses
  %i.m = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.2.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i)
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.2.i.i
  %i.n = tail call noundef zeroext i1 @_ZNK5video9S3DVertexltERKS0_(ptr noundef nonnull align 4 dereferenceable(38) %.01924.i.i.i.i.i.ptr.2.i.i, ptr noundef nonnull align 4 dereferenceable(38) %.02023.i.i.i.i.i.ptr.2.i.i) ; 0 uses
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit

bb.i:                                             ; preds = %.peel.next, %.lr.ph.i.i.i.i.i.1.i.i, %.lr.ph.i.i.i.i.i.2.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.05, ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0.020, i64 120, i1 false), !tbaa.struct !25
  %i.o = ptrtoint ptr %.sroa.0.020 to i64
  %i.p = sub i64 %i.o, %i.b                       ; 4 uses
  %i.q = icmp sgt i64 %i.p, 120
  br i1 %i.q, label %bb.j, label %bb.k, !prof !87

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.pn19, i64 240
  %.neg24 = udiv exact i64 %i.p, 120
  %.neg24.neg = sub nsw i64 0, %.neg24
  %i.s = getelementptr inbounds [120 x i8], ptr %i.r, i64 %.neg24.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.s, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.p, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.k:                                             ; preds = %bb.i
  %i.t = icmp eq i64 %i.p, 120
  br i1 %i.t, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.pn19, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.u, ptr noundef nonnull align 4 dereferenceable(120) %0, i64 120, i1 false), !tbaa.struct !25
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.05, i64 120, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  br label %bb.m

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.020)
  br label %bb.m

bb.m:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 120 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %.peel.next, !llvm.loop !86

.loopexit:                                        ; preds = %bb.m, %bb.e, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load <4 x float>, ptr %0, align 4        ; 5 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <2 x float>, ptr %.sroa.16.0..sroa_idx, align 4 ; 3 uses
  %i.c = extractelement <2 x float> %i.b, i64 1   ; 4 uses
  %i.d = extractelement <2 x float> %i.b, i64 0   ; 4 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..sroa_idx, align 4 ; 5 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load <2 x float>, ptr %.sroa.26.0..sroa_idx, align 4 ; 3 uses
  %i.f = extractelement <2 x float> %i.e, i64 1   ; 4 uses
  %i.g = extractelement <2 x float> %i.e, i64 0   ; 6 uses
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.h = load <2 x i16>, ptr %.sroa.30.0..sroa_idx, align 4
  %.sroa.30.0.copyload = load i16, ptr %.sroa.30.0..sroa_idx, align 4 ; 2 uses
  %.sroa.3293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load <4 x float>, ptr %.sroa.3293.0..sroa_idx, align 4 ; 5 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load <2 x float>, ptr %.sroa.44.0..sroa_idx, align 4 ; 3 uses
  %i.k = extractelement <2 x float> %i.j, i64 1   ; 4 uses
  %i.l = extractelement <2 x float> %i.j, i64 0   ; 4 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.52.0.copyload = load i32, ptr %.sroa.52.0..sroa_idx, align 4 ; 5 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.m = load <2 x float>, ptr %.sroa.54.0..sroa_idx, align 4 ; 3 uses
  %i.n = extractelement <2 x float> %i.m, i64 1   ; 4 uses
  %i.o = extractelement <2 x float> %i.m, i64 0   ; 6 uses
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.p = load <2 x i16>, ptr %.sroa.58.0..sroa_idx, align 4
  %.sroa.58.0.copyload = load i16, ptr %.sroa.58.0..sroa_idx, align 4 ; 2 uses
  %.sroa.60134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load <4 x float>, ptr %.sroa.60134.0..sroa_idx, align 4 ; 5 uses
  %.sroa.72.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load <2 x float>, ptr %.sroa.72.0..sroa_idx, align 4 ; 3 uses
  %.sroa.80.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.80.0.copyload = load i32, ptr %.sroa.80.0..sroa_idx, align 4 ; 3 uses
  %.sroa.82.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.s = load <2 x float>, ptr %.sroa.82.0..sroa_idx, align 4 ; 3 uses
  %.sroa.86.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.t = load <2 x i16>, ptr %.sroa.86.0..sroa_idx, align 4
  %.sroa.86.0.copyload = load i16, ptr %.sroa.86.0..sroa_idx, align 4
  %i.u = extractelement <4 x float> %i.a, i64 0   ; 4 uses
  %i.v = extractelement <4 x float> %i.a, i64 1   ; 4 uses
  %i.w = extractelement <4 x float> %i.a, i64 2   ; 4 uses
  %i.x = extractelement <4 x float> %i.a, i64 3   ; 4 uses
  %i.y = extractelement <4 x float> %i.i, i64 0   ; 4 uses
  %i.z = extractelement <4 x float> %i.i, i64 1   ; 4 uses
  %i.aa = extractelement <4 x float> %i.i, i64 2  ; 4 uses
  %i.ab = extractelement <4 x float> %i.i, i64 3  ; 4 uses
  %i.ac = extractelement <4 x float> %i.q, i64 0  ; 2 uses
  %i.ad = extractelement <4 x float> %i.q, i64 1  ; 2 uses
  %i.ae = extractelement <4 x float> %i.q, i64 2  ; 2 uses
  %i.af = extractelement <4 x float> %i.q, i64 3  ; 2 uses
  %i.ag = extractelement <2 x float> %i.r, i64 0  ; 2 uses
  %i.ah = extractelement <2 x float> %i.r, i64 1  ; 2 uses
  %i.ai = extractelement <2 x float> %i.s, i64 0  ; 3 uses
  %i.aj = extractelement <2 x float> %i.s, i64 1  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, %bb.a
  %.sroa.0175.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit ] ; 64 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -120 ; 3 uses
  %i.ak = load float, ptr %.sroa.0.0, align 4, !tbaa !34 ; 4 uses
  %i.al = fcmp nsz olt float %i.u, %i.ak
  br i1 %i.al, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = fcmp nsz oeq float %i.u, %i.ak
  br i1 %i.am, label %bb.d, label %_ZNK5video9S3DVertexltERKS0_.exit50.thread181.thread

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -116
  %i.ao = load float, ptr %i.an, align 4, !tbaa !35 ; 2 uses
  %i.ap = fcmp nsz olt float %i.v, %i.ao
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = fcmp nsz oeq float %i.v, %i.ao
  br i1 %i.aq, label %_ZNK4core8vector3dIfEltERKS1_.exit.i49, label %_ZNK5video9S3DVertexltERKS0_.exit50.thread181

_ZNK4core8vector3dIfEltERKS1_.exit.i49:           ; preds = %bb.e
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -112
  %i.as = load float, ptr %i.ar, align 4, !tbaa !36 ; 2 uses
  %i.at = fcmp nsz olt float %i.w, %i.as
  br i1 %i.at, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.i42

_ZNK4core8vector3dIfEneERKS1_.exit.i42:           ; preds = %_ZNK4core8vector3dIfEltERKS1_.exit.i49
  %i.au = fcmp nsz une float %i.w, %i.as
  br i1 %i.au, label %_ZNK5video9S3DVertexltERKS0_.exit50.thread181, label %bb.f

bb.f:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.i42
  %i.av = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -108
  %i.aw = load float, ptr %i.av, align 4, !tbaa !34 ; 2 uses
  %i.ax = fcmp nsz olt float %i.x, %i.aw
  br i1 %i.ax, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = fcmp nsz oeq float %i.x, %i.aw
  br i1 %i.ay, label %bb.h, label %_ZNK5video9S3DVertexltERKS0_.exit50.thread181

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -104
  %i.ba = load float, ptr %i.az, align 4, !tbaa !35 ; 2 uses
  %i.bb = fcmp nsz olt float %i.d, %i.ba
  br i1 %i.bb, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = fcmp nsz oeq float %i.d, %i.ba
  br i1 %i.bc, label %_ZNK4core8vector3dIfEltERKS1_.exit11.i48, label %_ZNK5video9S3DVertexltERKS0_.exit50.thread181

_ZNK4core8vector3dIfEltERKS1_.exit11.i48:         ; preds = %bb.i
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -100
  %i.be = load float, ptr %i.bd, align 4, !tbaa !36 ; 2 uses
  %i.bf = fcmp nsz olt float %i.c, %i.be
  br i1 %i.bf, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit12.i43

_ZNK4core8vector3dIfEneERKS1_.exit12.i43:         ; preds = %_ZNK4core8vector3dIfEltERKS1_.exit11.i48
  %i.bg = fcmp nsz une float %i.c, %i.be
  br i1 %i.bg, label %_ZNK5video9S3DVertexltERKS0_.exit50.thread181, label %bb.j

bb.j:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit12.i43
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -96
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !17 ; 2 uses
  %i.bj = icmp ult i32 %.sroa.24.0.copyload, %i.bi
  br i1 %i.bj, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i44 = icmp eq i32 %i.bi, %.sroa.24.0.copyload
  br i1 %.not.i44, label %bb.l, label %_ZNK5video9S3DVertexltERKS0_.exit50.thread181

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -92
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !38 ; 3 uses
  %i.bm = fcmp nsz olt float %i.g, %i.bl
  br i1 %i.bm, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = fcmp nsz oeq float %i.g, %i.bl
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -88
  %i.bp = load float, ptr %i.bo, align 4          ; 2 uses
  %i.bq = fcmp nsz olt float %i.f, %i.bp
  %or.cond.i45 = select i1 %i.bn, i1 %i.bq, i1 false
  br i1 %or.cond.i45, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i46

_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i46:  ; preds = %bb.m
  %i.br = fcmp nsz une float %i.g, %i.bl
  %i.bs = fcmp nsz une float %i.f, %i.bp
  %.not3.i.i47 = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %.not3.i.i47, label %_ZNK5video9S3DVertexltERKS0_.exit50.thread181, label %_ZNK5video9S3DVertexltERKS0_.exit50

_ZNK5video9S3DVertexltERKS0_.exit50:              ; preds = %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i46
  %i.bt = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -84
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !40
  %i.bv = icmp ult i16 %.sroa.30.0.copyload, %i.bu
  br i1 %i.bv, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5arrayIN5video9S3DVertexELm3EENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit, label %_ZNK5video9S3DVertexltERKS0_.exit50.thread181

_ZNK5video9S3DVertexltERKS0_.exit50.thread181:    ; preds = %_ZNK4core8vector2dIfEltERKS1_.exit.thread17.i46, %bb.i, %bb.k, %bb.g, %_ZNK4core8vector3dIfEneERKS1_.exit12.i43, %bb.e, %_ZNK4core8vector3dIfEneERKS1_.exit.i42, %_ZNK5video9S3DVertexltERKS0_.exit50
  %i.bw = fcmp nsz olt float %i.ak, %i.u
  br i1 %i.bw, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread, label %bb.n

_ZNK5video9S3DVertexltERKS0_.exit50.thread181.thread: ; preds = %bb.c
  %i.bx = fcmp nsz olt float %i.ak, %i.u
  br i1 %i.bx, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread, label %.lr.ph.i.i.i.i.i.1.i.i

bb.n:                                             ; preds = %_ZNK5video9S3DVertexltERKS0_.exit50.thread181
  %i.by = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -116
  %i.bz = load float, ptr %i.by, align 4, !tbaa !35 ; 2 uses
  %i.ca = fcmp nsz olt float %i.bz, %i.v
  br i1 %i.ca, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = fcmp nsz oeq float %i.bz, %i.v
  br i1 %i.cb, label %_ZNK4core8vector3dIfEltERKS1_.exit.i39, label %.lr.ph.i.i.i.i.i.1.i.i

_ZNK4core8vector3dIfEltERKS1_.exit.i39:           ; preds = %bb.o
  %i.cc = getelementptr inbounds i8, ptr %.sroa.0175.0, i64 -112
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !36 ; 2 uses
  %i.ce = fcmp nsz olt float %i.cd, %i.w
  br i1 %i.ce, label %_ZNK5video9S3DVertexltERKS0_.exit40.thread, label %_ZNK4core8vector3dIfEneERKS1_.exit.i32

_ZNK4core8vector3dIfEneERKS1_.exit.i32:           ; preds = %_ZNK4core8vector3dIfEltERKS1_.exit.i39
  %i.cf = fcmp nsz une float %i.cd, %i.w
end_hunk_1
