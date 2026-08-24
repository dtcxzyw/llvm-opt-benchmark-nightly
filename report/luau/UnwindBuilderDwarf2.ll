Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/UnwindBuilderDwarf2?download=true
inline.NumInlined: 114
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4Luau7CodeGen19UnwindBuilderDwarf2D2Ev = comdat any

$_ZN4Luau7CodeGen19UnwindBuilderDwarf2D0Ev = comdat any

$_ZTIN4Luau7CodeGen13UnwindBuilderE = comdat any

$_ZTSN4Luau7CodeGen13UnwindBuilderE = comdat any

@_ZL18regIndexToDwRegX64 = internal unnamed_addr constant [16 x i32] [i32 0, i32 2, i32 1, i32 3, i32 7, i32 6, i32 4, i32 5, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@_ZTVN4Luau7CodeGen19UnwindBuilderDwarf2E = dso_local constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN4Luau7CodeGen19UnwindBuilderDwarf2E, ptr @_ZN4Luau7CodeGen19UnwindBuilderDwarf2D2Ev, ptr @_ZN4Luau7CodeGen19UnwindBuilderDwarf2D0Ev, ptr @_ZN4Luau7CodeGen19UnwindBuilderDwarf214setBeginOffsetEm, ptr @_ZNK4Luau7CodeGen19UnwindBuilderDwarf214getBeginOffsetEv, ptr @_ZN4Luau7CodeGen19UnwindBuilderDwarf29startInfoENS0_13UnwindBuilder4ArchE, ptr @_ZN4Luau7CodeGen19UnwindBuilderDwarf213startFunctionEv, ptr @_ZN4Luau7CodeGen19UnwindBuilderDwarf214finishFunctionEjj, ptr @_ZN4Luau7CodeGen19UnwindBuilderDwarf210finishInfoEv, ptr @_ZN4Luau7CodeGen19UnwindBuilderDwarf211prologueA64EjjSt16initializer_listINS0_3A6411RegisterA64EE, ptr @_ZN4Luau7CodeGen19UnwindBuilderDwarf211prologueX64EjjbSt16initializer_listINS0_3X6411RegisterX64EERKSt6vectorIS4_SaIS4_EE, ptr @_ZNK4Luau7CodeGen19UnwindBuilderDwarf217getUnwindInfoSizeEm, ptr @_ZNK4Luau7CodeGen19UnwindBuilderDwarf28finalizeEPcmPvm] }, align 8
@_ZTIN4Luau7CodeGen19UnwindBuilderDwarf2E = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4Luau7CodeGen19UnwindBuilderDwarf2E, ptr @_ZTIN4Luau7CodeGen13UnwindBuilderE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4Luau7CodeGen19UnwindBuilderDwarf2E = dso_local constant [37 x i8] c"N4Luau7CodeGen19UnwindBuilderDwarf2E\00", align 1
@_ZTIN4Luau7CodeGen13UnwindBuilderE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4Luau7CodeGen13UnwindBuilderE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4Luau7CodeGen13UnwindBuilderE = linkonce_odr dso_local constant [31 x i8] c"N4Luau7CodeGen13UnwindBuilderE\00", comdat, align 1
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Luau7CodeGen19UnwindBuilderDwarf214setBeginOffsetEm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1080) initializes((8, 16)) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK4Luau7CodeGen19UnwindBuilderDwarf214getBeginOffsetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1080) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen19UnwindBuilderDwarf29startInfoENS0_13UnwindBuilder4ArchE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1080) %0, i32 noundef %1) unnamed_addr #2 align 2 {
_Z12writeuleb128Phm.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 14 uses
  store i32 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 1, ptr %i.d, align 1, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 0, ptr %i.e, align 1, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.g = icmp eq i32 %1, 1                        ; 2 uses
  store i8 1, ptr %i.f, align 1, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 11 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !20
  store i8 120, ptr %i.h, align 1, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = select i1 %i.g, i8 30, i8 16
  store i8 %i.j, ptr %i.i, align 1, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 12, ptr %i.k, align 1, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 2 uses
  br i1 %i.g, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_Z12writeuleb128Phm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 31, ptr %i.l, align 1, !tbaa !21
  store i8 0, ptr %i.n, align 1, !tbaa !21
  br label %_ZL27defineSavedRegisterLocationPhij.exit

bb.b:                                             ; preds = %_Z12writeuleb128Phm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store <4 x i8> <i8 7, i8 8, i8 -112, i8 1>, ptr %i.l, align 1, !tbaa !21
  br label %_ZL27defineSavedRegisterLocationPhij.exit, !llvm.loop !22

_ZL27defineSavedRegisterLocationPhij.exit:        ; preds = %bb.b, %bb.a
  %storemerge = phi ptr [ %i.m, %bb.a ], [ %i.o, %bb.b ] ; 4 uses
  %i.p = ptrtoint ptr %storemerge to i64
  %i.q = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = add i64 %i.r, 7
  %i.t = and i64 %i.s, -8                         ; 2 uses
  %.not.i13 = icmp eq i64 %i.t, %i.r
  br i1 %.not.i13, label %_ZL13alignPositionPhS_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZL27defineSavedRegisterLocationPhij.exit
  %i.u = sub i64 %i.t, %i.r                       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %storemerge, i8 0, i64 %i.u, i1 false), !tbaa !21
  %scevgep.i = getelementptr i8, ptr %storemerge, i64 %i.u ; 2 uses
  %.pre = ptrtoint ptr %scevgep.i to i64
  %.pre14 = sub i64 %.pre, %i.q
  br label %_ZL13alignPositionPhS_.exit

_ZL13alignPositionPhS_.exit:                      ; preds = %_ZL27defineSavedRegisterLocationPhij.exit, %.lr.ph.preheader.i
  %.pre-phi15 = phi i64 [ %i.r, %_ZL27defineSavedRegisterLocationPhij.exit ], [ %.pre14, %.lr.ph.preheader.i ]
  %.08.lcssa.i = phi ptr [ %storemerge, %_ZL27defineSavedRegisterLocationPhij.exit ], [ %scevgep.i, %.lr.ph.preheader.i ]
  store ptr %.08.lcssa.i, ptr %i.a, align 8, !tbaa !20
  %i.v = trunc i64 %.pre-phi15 to i32
  %i.w = add i32 %i.v, -4
  store i32 %i.w, ptr %i.b, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen19UnwindBuilderDwarf213startFunctionEv(ptr noundef nonnull align 8 dereferenceable(1080) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.j, align 4, !tbaa !26
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.g, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store ptr %i.m, ptr %i.i, align 8, !tbaa !24
  br label %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !27   ; 4 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = sdiv exact i64 %i.q, 12                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 768614336404564650)
  %i.w = select i1 %i.u, i64 768614336404564650, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = mul nuw nsw i64 %i.w, 12
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #14 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 4 uses
  store i32 0, ptr %i.z, align 4, !tbaa !26
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx2, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %i.g, ptr %.sroa.6.0..sroa_idx4, align 4, !tbaa !26
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.e, label %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %1 = load ptr, ptr %i.k, align 8, !tbaa !25
  %2 = ptrtoint ptr %1 to i64
  %3 = sub i64 %2, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %3) #15
  br label %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.y, ptr %i.h, align 8, !tbaa !27
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !20
  br label %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ad = phi ptr [ %i.b, %bb.b ], [ %.pre, %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !28
  store i32 0, ptr %i.ad, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.e
  %i.ai = trunc i64 %i.ah to i32
  store i32 %i.ai, ptr %i.af, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 0, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.al, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen19UnwindBuilderDwarf214finishFunctionEjj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1080) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -12
  store i32 %1, ptr %i.c, align 4, !tbaa !30
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  store i32 %2, ptr %i.d, align 4, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 4 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = add i64 %i.k, 7
  %i.m = and i64 %i.l, -8                         ; 2 uses
  %.not.i = icmp eq i64 %i.m, %i.k
  br i1 %.not.i, label %_ZL13alignPositionPhS_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.n = sub i64 %i.m, %i.k                       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 0, i64 %i.n, i1 false), !tbaa !21
  %scevgep.i = getelementptr i8, ptr %i.h, i64 %i.n ; 2 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !28  ; 2 uses
  %.pre2 = ptrtoint ptr %scevgep.i to i64
  %.pre3 = ptrtoint ptr %.pre to i64
  %.pre5 = sub i64 %.pre2, %.pre3
  br label %_ZL13alignPositionPhS_.exit

_ZL13alignPositionPhS_.exit:                      ; preds = %bb.a, %.lr.ph.preheader.i
  %.pre-phi6 = phi i64 [ %i.k, %bb.a ], [ %.pre5, %.lr.ph.preheader.i ]
  %i.o = phi ptr [ %i.f, %bb.a ], [ %.pre, %.lr.ph.preheader.i ]
  %.08.lcssa.i = phi ptr [ %i.h, %bb.a ], [ %scevgep.i, %.lr.ph.preheader.i ]
  store ptr %.08.lcssa.i, ptr %i.g, align 8, !tbaa !20
  %i.p = trunc i64 %.pre-phi6 to i32
  %i.q = add i32 %i.p, -4
  store i32 %i.q, ptr %i.o, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen19UnwindBuilderDwarf210finishInfoEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1080) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  store i32 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen19UnwindBuilderDwarf211prologueA64EjjSt16initializer_listINS0_3A6411RegisterA64EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1080) %0, i32 noundef %1, i32 noundef %2, ptr nofree readonly captures(none) %3, i64 %4) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 9 uses
  store i8 2, ptr %i.b, align 1, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 4, ptr %i.c, align 1, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 14, ptr %i.d, align 1, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.f = trunc i32 %2 to i8
  %i.g = and i8 %i.f, 127
  %i.h = lshr i32 %2, 7                           ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0                 ; 2 uses
  %masksel.i.i = select i1 %.not.i.i, i8 0, i8 -128
  %.0.i.i = or disjoint i8 %masksel.i.i, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i8 %.0.i.i, ptr %i.e, align 1, !tbaa !21
  br i1 %.not.i.i, label %_ZL25defineCfaExpressionOffsetPhj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i32 %i.h to i8
  %i.k = and i8 %i.j, 127
  %i.l = lshr i32 %2, 14                          ; 2 uses
  %.not.i.i.1 = icmp eq i32 %i.l, 0               ; 2 uses
  %masksel.i.i.1 = select i1 %.not.i.i.1, i8 0, i8 -128
  %.0.i.i.1 = or disjoint i8 %masksel.i.i.1, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 3 uses
  store i8 %.0.i.i.1, ptr %i.i, align 1, !tbaa !21
  br i1 %.not.i.i.1, label %_ZL25defineCfaExpressionOffsetPhj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = trunc i32 %i.l to i8
  %i.o = and i8 %i.n, 127
  %i.p = lshr i32 %2, 21                          ; 2 uses
  %.not.i.i.2 = icmp eq i32 %i.p, 0               ; 2 uses
  %masksel.i.i.2 = select i1 %.not.i.i.2, i8 0, i8 -128
  %.0.i.i.2 = or disjoint i8 %masksel.i.i.2, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 3 uses
  store i8 %.0.i.i.2, ptr %i.m, align 1, !tbaa !21
  br i1 %.not.i.i.2, label %_ZL25defineCfaExpressionOffsetPhj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = trunc i32 %i.p to i8
  %i.s = and i8 %i.r, 127
  %i.t = lshr i32 %2, 28                          ; 2 uses
  %.not.i.i.3 = icmp eq i32 %i.t, 0               ; 2 uses
  %masksel.i.i.3 = select i1 %.not.i.i.3, i8 0, i8 -128
  %.0.i.i.3 = or disjoint i8 %masksel.i.i.3, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 7 ; 3 uses
  store i8 %.0.i.i.3, ptr %i.q, align 1, !tbaa !21
  br i1 %.not.i.i.3, label %_ZL25defineCfaExpressionOffsetPhj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = trunc nuw nsw i32 %i.t to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.v, ptr %i.u, align 1, !tbaa !21
  br label %_ZL25defineCfaExpressionOffsetPhj.exit

_ZL25defineCfaExpressionOffsetPhj.exit:           ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.08.i.i.lcssa = phi ptr [ %i.e, %bb.a ], [ %i.i, %bb.b ], [ %i.m, %bb.c ], [ %i.q, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %.lcssa18 = phi ptr [ %i.i, %bb.a ], [ %i.m, %bb.b ], [ %i.q, %bb.c ], [ %i.u, %bb.d ], [ %i.w, %bb.e ]
  store i8 2, ptr %.lcssa18, align 1, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.lcssa, i64 2
  %i.y = trunc i32 %1 to i8
  %i.z = add i8 %i.y, -4
  store i8 %i.z, ptr %i.x, align 1, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.lcssa, i64 3 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !20
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZL27defineSavedRegisterLocationPhij.exit, %_ZL25defineCfaExpressionOffsetPhj.exit
  ret void

.lr.ph:                                           ; preds = %_ZL25defineCfaExpressionOffsetPhj.exit, %_ZL27defineSavedRegisterLocationPhij.exit
  %i.ab = phi ptr [ %.lcssa, %_ZL27defineSavedRegisterLocationPhij.exit ], [ %i.aa, %_ZL25defineCfaExpressionOffsetPhj.exit ] ; 7 uses
  %.013 = phi i64 [ %i.ba, %_ZL27defineSavedRegisterLocationPhij.exit ], [ 0, %_ZL25defineCfaExpressionOffsetPhj.exit ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %.013
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = lshr i8 %i.ad, 3
  %i.af = or disjoint i8 %i.ae, -128
  store i8 %i.af, ptr %i.ab, align 1, !tbaa !21
  %.0.tr = trunc i64 %.013 to i32
  %i.ag = shl i32 %.0.tr, 3
  %i.ah = sub i32 %2, %i.ag                       ; 5 uses
  %i.ai = lshr i32 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ak = trunc i32 %i.ai to i8
  %i.al = and i8 %i.ak, 127
  %i.am = lshr i32 %i.ah, 10                      ; 2 uses
  %.not.i11.i = icmp eq i32 %i.am, 0              ; 2 uses
  %masksel.i12.i = select i1 %.not.i11.i, i8 0, i8 -128
  %.0.i13.i = or disjoint i8 %masksel.i12.i, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 2 uses
  store i8 %.0.i13.i, ptr %i.aj, align 1, !tbaa !21
  br i1 %.not.i11.i, label %_ZL27defineSavedRegisterLocationPhij.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ao = trunc i32 %i.am to i8
  %i.ap = and i8 %i.ao, 127
  %i.aq = lshr i32 %i.ah, 17                      ; 2 uses
  %.not.i11.i.1 = icmp eq i32 %i.aq, 0            ; 2 uses
  %masksel.i12.i.1 = select i1 %.not.i11.i.1, i8 0, i8 -128
  %.0.i13.i.1 = or disjoint i8 %masksel.i12.i.1, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 3 ; 2 uses
  store i8 %.0.i13.i.1, ptr %i.an, align 1, !tbaa !21
  br i1 %.not.i11.i.1, label %_ZL27defineSavedRegisterLocationPhij.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = trunc i32 %i.aq to i8
  %i.at = and i8 %i.as, 127
  %i.au = lshr i32 %i.ah, 24                      ; 2 uses
  %.not.i11.i.2 = icmp eq i32 %i.au, 0            ; 2 uses
  %masksel.i12.i.2 = select i1 %.not.i11.i.2, i8 0, i8 -128
  %.0.i13.i.2 = or disjoint i8 %masksel.i12.i.2, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store i8 %.0.i13.i.2, ptr %i.ar, align 1, !tbaa !21
  br i1 %.not.i11.i.2, label %_ZL27defineSavedRegisterLocationPhij.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = trunc nuw i32 %i.au to i8
  %i.ax = and i8 %i.aw, 127
  %.not.i11.i.3 = icmp sgt i32 %i.ah, -1          ; 2 uses
  %masksel.i12.i.3 = select i1 %.not.i11.i.3, i8 0, i8 -128
end_hunk_0
