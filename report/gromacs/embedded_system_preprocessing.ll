Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/embedded_system_preprocessing?download=true
inline.NumInlined: 1127
inline.NumDeleted: 495
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0

$_ZN3gmx11ListOfListsIiEC2ERKS1_ = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA87_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"vector<bool>::_M_insert_aux\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Total charge of the classical system (before modifications): %.5f\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Classical charge removed from embedded atoms: %.5f\0A\00", align 1
@.str.6 = private unnamed_addr constant [136 x i8] c"Note: There are %d virtual sites found, which are built from embedded atoms only. Classical charges on them have been removed as well.\0A\00", align 1
@.str.7 = private unnamed_addr constant [152 x i8] c"Total charge of your embedded system differs from classical system! Consider manually spreading %.5lf charge over MM atoms near to the embedded region\0A\00", align 1
@interaction_function = external local_unnamed_addr global %"struct.gmx::EnumerationArray.83", align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"Number of exclusions made: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.10 = private unnamed_addr constant [87 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/topology/embedded_system_preprocessing.cpp\00", align 1
@.str.11 = private unnamed_addr constant [124 x i8] c"Atoms %d does not have atomic number needed for embedded subsystem. Check atomtypes section in your topology or forcefield.\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Number of bonds removed: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"Number of InteractionFunction::ConnectBonds (type 5 bonds) added: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Number of link bonds added: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Number of angles removed: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [83 x i8] c"Number of settles removed: %d (replaced by %d InteractionFunction::ConnectBonds) \0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Number of dihedrals removed: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [199 x i8] c"Your embedded subsystem has a lot of constrained bonds. They probably have been generated automatically. That could produce artifacts in the simulation. Consider constraints = none in the mdp file.\0A\00", align 1

@_ZN3gmx16LinkFrontierAtomC1Eii = unnamed_addr alias void (ptr, i32, i32), ptr @_ZN3gmx16LinkFrontierAtomC2Eii

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx16LinkFrontierAtomC2Eii(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(60) initializes((0, 8), (52, 60)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float 1.000000e-01, ptr %i.b, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.c, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK3gmx16LinkFrontierAtom16getEmbeddedIndexEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(60) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK3gmx16LinkFrontierAtom10getMMIndexEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(60) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx16LinkFrontierAtom15setInputIndicesEii(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(60) initializes((8, 16)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 4, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.b, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK3gmx16LinkFrontierAtom16getInputIndexEmbEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(60) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK3gmx16LinkFrontierAtom15getInputIndexMMEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(60) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx16LinkFrontierAtom12setPositionsERKNS_11BasicVectorIfEES4_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(60) initializes((16, 52)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !20 ; 2 uses
  %i.h = fsub float %i.e, %i.g                    ; 3 uses
  %i.i = load float, ptr %i.c, align 4, !tbaa !20 ; 2 uses
  %i.j = load <2 x float>, ptr %2, align 4, !tbaa !20
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !20 ; 2 uses
  %i.l = fsub <2 x float> %i.j, %i.k              ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.l, %i.l
  %i.m = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.n = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.m)
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.o)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.p)
  %i.q = fdiv float 1.000000e+00, %sqrt.i.i.i     ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.l, %i.s
  %i.u = fmul float %i.h, %i.q
  %i.v = insertelement <2 x float> poison, float %i.i, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.w, %i.t
  %i.y = fmul float %i.i, %i.u
  %i.z = fadd <2 x float> %i.k, %i.x
  %i.aa = fadd float %i.g, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %i.z, ptr %i.ab, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.aa, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, float } @_ZNK3gmx16LinkFrontierAtom15getLinkPositionEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(60) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.a, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !19
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.01.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.22.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZNK3gmx16LinkFrontierAtom12linkDistanceEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(60) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load float, ptr %i.a, align 4, !tbaa !14
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx16LinkFrontierAtom15setLinkDistanceERKf(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(60) initializes((52, 56)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.a, ptr %i.b, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK3gmx16LinkFrontierAtom14linkAtomNumberEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(60) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx16LinkFrontierAtom17setLinkAtomNumberERKi(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(60) initializes((56, 60)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.a, ptr %i.b, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx16LinkFrontierAtom11spreadForceERKNS_11BasicVectorIfEERK5t_pbc(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::tuple") align 4 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 4 dereferenceable(60) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(384) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.gmx::BasicVector", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %4) ; 0 uses
  %.sroa.026.0.copyload = load <2 x float>, ptr %4, align 8 ; 5 uses
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.227.0.copyload = load float, ptr %.sroa.227.0..sroa_idx, align 8, !tbaa !19 ; 4 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.026.0.copyload, i64 0 ; 3 uses
  %foldExtExtBinop62 = fmul <2 x float> %.sroa.026.0.copyload, %.sroa.026.0.copyload
  %i.d = extractelement <2 x float> %foldExtExtBinop62, i64 1
  %i.e = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.d)
  %i.f = call noundef float @llvm.fmuladd.f32(float %.sroa.227.0.copyload, float %.sroa.227.0.copyload, float %i.e)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.f)
  %i.g = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.i = load float, ptr %i.h, align 4, !tbaa !14
  %.sroa.020.0.copyload = load <2 x float>, ptr %2, align 4 ; 4 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.221.0.copyload = load float, ptr %.sroa.221.0..sroa_idx, align 4, !tbaa !19 ; 3 uses
  %.sroa.0.0.vec.extract.i35 = extractelement <2 x float> %.sroa.020.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.026.0.copyload, %.sroa.020.0.copyload
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.k = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i35, float %i.j)
  %i.l = call noundef float @llvm.fmuladd.f32(float %.sroa.227.0.copyload, float %.sroa.221.0.copyload, float %i.k)
  %i.m = fmul float %i.g, %i.l
  %5 = insertelement <2 x float> poison, float %i.i, i64 0
  %6 = insertelement <2 x float> %5, float %i.m, i64 1
  %7 = insertelement <2 x float> poison, float %i.g, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fmul <2 x float> %6, %8                    ; 4 uses
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fmul <2 x float> %10, %.sroa.026.0.copyload
  %11 = extractelement <2 x float> %9, i64 1
  %12 = fmul float %.sroa.227.0.copyload, %11
  %i.o = fsub <2 x float> %.sroa.020.0.copyload, %i.n
  %13 = fsub float %.sroa.221.0.copyload, %12
  %i.p = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.p, %i.o              ; 2 uses
  %14 = extractelement <2 x float> %9, i64 0
  %15 = fmul float %14, %13                       ; 2 uses
  %i.r = fsub <2 x float> %.sroa.020.0.copyload, %i.q
  %i.s = fsub float %.sroa.221.0.copyload, %15
  store <2 x float> %i.q, ptr %0, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %15, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.r, ptr %i.t, align 4
  %.sroa.4.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.s, ptr %.sroa.4.0..sroa_idx54, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

declare noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19splitEmbeddedBlocksEP10gmx_mtop_tRKSt3setIiSt4lessIiESaIiEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 12), (16, 28), (32, 40)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %2) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.21", align 8    ; 11 uses
  store ptr null, ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  store i32 0, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 2408                ; 4 uses
  %i.m = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25
          to label %.noexc117 unwind label %bb.d  ; 5 uses

.noexc117:                                        ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !21
  %i.q = add nsw i64 %i.l, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc117
  %i.s = getelementptr i8, ptr %i.o, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.q, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !21
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc117, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.p, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.p, %.noexc117 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0160.0 = phi ptr [ %i.o, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.o, %.noexc117 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34   ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !37   ; 8 uses
  %.not226 = icmp eq ptr %i.v, %i.w
  br i1 %.not226, label %._crit_edge225, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 56                 ; 3 uses
  %xtraiter = and i64 %i.aa, 3                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 4
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.aa, -4
  br label %.lr.ph

.lr.ph224.unr-lcssa:                              ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph224, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph224.unr-lcssa, %.lr.ph.preheader
  %.092196.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bz, %.lr.ph224.unr-lcssa ]
  %lcmp.mod349 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod349)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.092196.epil = phi i64 [ %i.ak, %.lr.ph.epil ], [ %.092196.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.w, i64 %.092196.epil ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !38
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !45
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0160.0, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21
  %i.aj = add nsw i32 %i.ai, %i.ae
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !21
  %i.ak = add nuw i64 %.092196.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph224, label %.lr.ph.epil, !llvm.loop !46

.lr.ph224:                                        ; preds = %.lr.ph.epil, %.lr.ph224.unr-lcssa
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit144

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.092196 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bz, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %i.w, i64 %.092196 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !38
  %i.at = load i32, ptr %i.aq, align 8, !tbaa !45
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0160.0, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !21
  %i.ax = add nsw i32 %i.aw, %i.as
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !21
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.w, i64 %.092196 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 60
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !38
  %i.bc = load i32, ptr %i.az, align 8, !tbaa !45
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0160.0, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !21
  %i.bg = add nsw i32 %i.bf, %i.bb
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !21
  %i.bh = getelementptr inbounds nuw [56 x i8], ptr %i.w, i64 %.092196 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 116
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !38
  %i.bl = load i32, ptr %i.bi, align 8, !tbaa !45
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0160.0, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !21
  %i.bp = add nsw i32 %i.bo, %i.bk
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !21
  %i.bq = getelementptr inbounds nuw [56 x i8], ptr %i.w, i64 %.092196 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 168
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 172
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !38
  %i.bu = load i32, ptr %i.br, align 8, !tbaa !45
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0160.0, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !21
  %i.by = add nsw i32 %i.bx, %i.bt
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !21
  %i.bz = add nuw i64 %.092196, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph224.unr-lcssa, label %.lr.ph, !llvm.loop !48

._crit_edge225:                                   ; preds = %._crit_edge219, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  invoke void @_ZN10gmx_mtop_t8finalizeEv(ptr noundef nonnull align 8 dereferenceable(768) %1)
          to label %bb.an unwind label %bb.ap

bb.e:                                             ; preds = %.lr.ph224, %._crit_edge219
  %i.ca = phi ptr [ %i.w, %.lr.ph224 ], [ %i.dd, %._crit_edge219 ]
  %.080223 = phi i32 [ 0, %.lr.ph224 ], [ %.1.lcssa, %._crit_edge219 ] ; 2 uses
  %.088222 = phi i64 [ 0, %.lr.ph224 ], [ %i.db, %._crit_edge219 ] ; 3 uses
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !22  ; 5 uses
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.cb, %i.cc
  %.sroa.2.0.copyload.i11.i = load i32, ptr %i.c, align 8 ; 4 uses
  br i1 %.not.i, label %bb.h, label %bb.f
end_hunk_0
