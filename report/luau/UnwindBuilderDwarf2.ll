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
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK4Luau7CodeGen19UnwindBuilderDwarf214getBeginOffsetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1080) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
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
  br label %_ZL27defineSavedRegisterLocationPhij.exit, !llvm.loop !34

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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.j, align 4, !tbaa !25
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !25
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.g, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store ptr %i.m, ptr %i.i, align 8, !tbaa !23
  br label %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !26   ; 4 uses
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
  store i32 0, ptr %i.z, align 4, !tbaa !25
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx2, align 4, !tbaa !25
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %i.g, ptr %.sroa.6.0..sroa_idx4, align 4, !tbaa !25
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
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ae) #15
  br label %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.y, ptr %i.h, align 8, !tbaa !26
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.w
  store ptr %i.af, ptr %i.k, align 8, !tbaa !24
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !20
  br label %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ag = phi ptr [ %i.b, %bb.b ], [ %.pre, %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !27
  store i32 0, ptr %i.ag, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.e
  %i.al = trunc i64 %i.ak to i32
  store i32 %i.al, ptr %i.ai, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 0, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen19UnwindBuilderDwarf214finishFunctionEjj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1080) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -12
  store i32 %1, ptr %i.c, align 4, !tbaa !30
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  store i32 %2, ptr %i.d, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
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
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !27  ; 2 uses
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
  %.0.i13.i.3 = or disjoint i8 %masksel.i12.i.3, %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 5 ; 2 uses
  store i8 %.0.i13.i.3, ptr %i.av, align 1, !tbaa !21
  br i1 %.not.i11.i.3, label %_ZL27defineSavedRegisterLocationPhij.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  store i8 1, ptr %i.ay, align 1, !tbaa !21
  br label %_ZL27defineSavedRegisterLocationPhij.exit

_ZL27defineSavedRegisterLocationPhij.exit:        ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %.lr.ph
  %.lcssa = phi ptr [ %i.an, %.lr.ph ], [ %i.ar, %bb.f ], [ %i.av, %bb.g ], [ %i.ay, %bb.h ], [ %i.az, %bb.i ] ; 2 uses
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !20
  %i.ba = add nuw i64 %.013, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen19UnwindBuilderDwarf211prologueX64EjjbSt16initializer_listINS0_3X6411RegisterX64EERKSt6vectorIS4_SaIS4_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1080) %0, i32 %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree readonly captures(address) %4, i64 %5, ptr nofree nonnull readnone align 8 captures(none) %6) unnamed_addr #4 align 2 {
bb.a:
  br i1 %3, label %_ZL25defineCfaExpressionOffsetPhj.exit, label %bb.b

_ZL25defineCfaExpressionOffsetPhj.exit:           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  store <8 x i8> <i8 2, i8 2, i8 14, i8 16, i8 -122, i8 2, i8 2, i8 3>, ptr %i.b, align 1, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %_ZL25defineCfaExpressionOffsetPhj.exit, %bb.a
  %.0 = phi i32 [ 16, %_ZL25defineCfaExpressionOffsetPhj.exit ], [ 8, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 %5
  %.not50 = icmp samesign eq i64 %5, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %.pre56 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 2 uses
  br i1 %.not50, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZL27defineSavedRegisterLocationPhij.exit46, %bb.b
  %i.e = phi ptr [ %.pre56, %bb.b ], [ %.lcssa65, %_ZL27defineSavedRegisterLocationPhij.exit46 ] ; 9 uses
  %.1.lcssa = phi i32 [ %.0, %bb.b ], [ %i.ad, %_ZL27defineSavedRegisterLocationPhij.exit46 ]
  store i8 2, ptr %i.e, align 1, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 4, ptr %i.f, align 1, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 14, ptr %i.g, align 1, !tbaa !21
  %i.h = add i32 %.1.lcssa, %2                    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.j = trunc i32 %i.h to i8
  %i.k = and i8 %i.j, 127
  %i.l = lshr i32 %i.h, 7                         ; 2 uses
  %.not.i.i26 = icmp eq i32 %i.l, 0               ; 2 uses
  %masksel.i.i27 = select i1 %.not.i.i26, i8 0, i8 -128
  %.0.i.i28 = or disjoint i8 %masksel.i.i27, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i8 %.0.i.i28, ptr %i.i, align 1, !tbaa !21
  br i1 %.not.i.i26, label %_ZL25defineCfaExpressionOffsetPhj.exit29, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.n = trunc i32 %i.l to i8
  %i.o = and i8 %i.n, 127
  %i.p = lshr i32 %i.h, 14                        ; 2 uses
  %.not.i.i26.1 = icmp eq i32 %i.p, 0             ; 2 uses
  %masksel.i.i27.1 = select i1 %.not.i.i26.1, i8 0, i8 -128
  %.0.i.i28.1 = or disjoint i8 %masksel.i.i27.1, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 2 uses
  store i8 %.0.i.i28.1, ptr %i.m, align 1, !tbaa !21
  br i1 %.not.i.i26.1, label %_ZL25defineCfaExpressionOffsetPhj.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = trunc i32 %i.p to i8
  %i.s = and i8 %i.r, 127
  %i.t = lshr i32 %i.h, 21                        ; 2 uses
  %.not.i.i26.2 = icmp eq i32 %i.t, 0             ; 2 uses
  %masksel.i.i27.2 = select i1 %.not.i.i26.2, i8 0, i8 -128
  %.0.i.i28.2 = or disjoint i8 %masksel.i.i27.2, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 6 ; 2 uses
  store i8 %.0.i.i28.2, ptr %i.q, align 1, !tbaa !21
  br i1 %.not.i.i26.2, label %_ZL25defineCfaExpressionOffsetPhj.exit29, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = trunc i32 %i.t to i8
  %i.w = and i8 %i.v, 127
  %i.x = lshr i32 %i.h, 28                        ; 2 uses
  %.not.i.i26.3 = icmp eq i32 %i.x, 0             ; 2 uses
  %masksel.i.i27.3 = select i1 %.not.i.i26.3, i8 0, i8 -128
  %.0.i.i28.3 = or disjoint i8 %masksel.i.i27.3, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 7 ; 2 uses
  store i8 %.0.i.i28.3, ptr %i.u, align 1, !tbaa !21
  br i1 %.not.i.i26.3, label %_ZL25defineCfaExpressionOffsetPhj.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = trunc nuw nsw i32 %i.x to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 %i.z, ptr %i.y, align 1, !tbaa !21
  br label %_ZL25defineCfaExpressionOffsetPhj.exit29

_ZL25defineCfaExpressionOffsetPhj.exit29:         ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %._crit_edge
  %.lcssa = phi ptr [ %i.m, %._crit_edge ], [ %i.q, %bb.c ], [ %i.u, %bb.d ], [ %i.y, %bb.e ], [ %i.aa, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %.lcssa, ptr %i.ab, align 8, !tbaa !20
  ret void

.lr.ph:                                           ; preds = %bb.b, %_ZL27defineSavedRegisterLocationPhij.exit46
  %i.ac = phi ptr [ %.lcssa65, %_ZL27defineSavedRegisterLocationPhij.exit46 ], [ %.pre56, %bb.b ] ; 9 uses
  %.152 = phi i32 [ %i.ad, %_ZL27defineSavedRegisterLocationPhij.exit46 ], [ %.0, %bb.b ]
  %.02151 = phi ptr [ %i.bh, %_ZL27defineSavedRegisterLocationPhij.exit46 ], [ %4, %bb.b ] ; 2 uses
  %.sroa.0.0.copyload = load i8, ptr %.02151, align 1, !tbaa !21
  %i.ad = add i32 %.152, 8                        ; 12 uses
  store i8 2, ptr %i.ac, align 1, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 2, ptr %i.ae, align 1, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i8 14, ptr %i.af, align 1, !tbaa !21
  %7 = getelementptr inbounds nuw i8, ptr %i.ac, i64 3 ; 2 uses
  %8 = trunc i32 %i.ad to i8
  %9 = and i8 %8, 120
  %10 = lshr i32 %i.ad, 7                         ; 2 uses
  %.not.i.i32 = icmp eq i32 %10, 0                ; 2 uses
  %masksel.i.i33 = select i1 %.not.i.i32, i8 0, i8 -128
  %.0.i.i34 = or disjoint i8 %masksel.i.i33, %9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 3 uses
  store i8 %.0.i.i34, ptr %7, align 1, !tbaa !21
  br i1 %.not.i.i32, label %_ZL25defineCfaExpressionOffsetPhj.exit35, label %11

11:                                               ; preds = %.lr.ph
  %12 = trunc i32 %10 to i8
  %13 = and i8 %12, 127
  %14 = lshr i32 %i.ad, 14                        ; 2 uses
  %.not.i.i32.1 = icmp eq i32 %14, 0              ; 2 uses
  %masksel.i.i33.1 = select i1 %.not.i.i32.1, i8 0, i8 -128
  %.0.i.i34.1 = or disjoint i8 %masksel.i.i33.1, %13
  %15 = getelementptr inbounds nuw i8, ptr %i.ac, i64 5 ; 3 uses
  store i8 %.0.i.i34.1, ptr %i.ag, align 1, !tbaa !21
  br i1 %.not.i.i32.1, label %_ZL25defineCfaExpressionOffsetPhj.exit35, label %16

16:                                               ; preds = %11
  %17 = trunc i32 %14 to i8
  %18 = and i8 %17, 127
  %19 = lshr i32 %i.ad, 21                        ; 2 uses
  %.not.i.i32.2 = icmp eq i32 %19, 0              ; 2 uses
  %masksel.i.i33.2 = select i1 %.not.i.i32.2, i8 0, i8 -128
  %.0.i.i34.2 = or disjoint i8 %masksel.i.i33.2, %18
  %20 = getelementptr inbounds nuw i8, ptr %i.ac, i64 6 ; 3 uses
  store i8 %.0.i.i34.2, ptr %15, align 1, !tbaa !21
  br i1 %.not.i.i32.2, label %_ZL25defineCfaExpressionOffsetPhj.exit35, label %bb.g

bb.g:                                             ; preds = %16
  %i.ah = trunc i32 %19 to i8
  %i.ai = and i8 %i.ah, 127
  %21 = lshr i32 %i.ad, 28                        ; 2 uses
  %.not.i.i32.3 = icmp eq i32 %21, 0              ; 2 uses
  %masksel.i.i33.3 = select i1 %.not.i.i32.3, i8 0, i8 -128
  %.0.i.i34.3 = or disjoint i8 %masksel.i.i33.3, %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 7 ; 3 uses
  store i8 %.0.i.i34.3, ptr %20, align 1, !tbaa !21
  br i1 %.not.i.i32.3, label %_ZL25defineCfaExpressionOffsetPhj.exit35, label %22

22:                                               ; preds = %bb.g
  %23 = trunc nuw nsw i32 %21 to i8
  %24 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i8 %23, ptr %i.aj, align 1, !tbaa !21
  br label %_ZL25defineCfaExpressionOffsetPhj.exit35

_ZL25defineCfaExpressionOffsetPhj.exit35:         ; preds = %22, %bb.g, %16, %11, %.lr.ph
  %.08.i.i30.lcssa = phi ptr [ %7, %.lr.ph ], [ %i.ag, %11 ], [ %15, %16 ], [ %20, %bb.g ], [ %i.aj, %22 ] ; 6 uses
  %.lcssa64 = phi ptr [ %i.ag, %.lr.ph ], [ %15, %11 ], [ %20, %16 ], [ %i.aj, %bb.g ], [ %24, %22 ]
  %i.ak = lshr i8 %.sroa.0.0.copyload, 3
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZL18regIndexToDwRegX64, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25
  %i.ao = trunc i32 %i.an to i8
  %i.ap = xor i8 %i.ao, -128
  store i8 %i.ap, ptr %.lcssa64, align 1, !tbaa !21
  %i.aq = lshr exact i32 %i.ad, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i30.lcssa, i64 2
  %i.as = trunc i32 %i.aq to i8
  %i.at = and i8 %i.as, 127
  %i.au = lshr i32 %i.ad, 10                      ; 2 uses
  %.not.i11.i43 = icmp eq i32 %i.au, 0            ; 2 uses
  %masksel.i12.i44 = select i1 %.not.i11.i43, i8 0, i8 -128
  %.0.i13.i45 = or disjoint i8 %masksel.i12.i44, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i30.lcssa, i64 3 ; 2 uses
  store i8 %.0.i13.i45, ptr %i.ar, align 1, !tbaa !21
  br i1 %.not.i11.i43, label %_ZL27defineSavedRegisterLocationPhij.exit46, label %bb.h

bb.h:                                             ; preds = %_ZL25defineCfaExpressionOffsetPhj.exit35
  %i.aw = trunc i32 %i.au to i8
  %i.ax = and i8 %i.aw, 127
  %i.ay = lshr i32 %i.ad, 17                      ; 2 uses
  %.not.i11.i43.1 = icmp eq i32 %i.ay, 0          ; 2 uses
  %masksel.i12.i44.1 = select i1 %.not.i11.i43.1, i8 0, i8 -128
  %.0.i13.i45.1 = or disjoint i8 %masksel.i12.i44.1, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i30.lcssa, i64 4 ; 2 uses
  store i8 %.0.i13.i45.1, ptr %i.av, align 1, !tbaa !21
  br i1 %.not.i11.i43.1, label %_ZL27defineSavedRegisterLocationPhij.exit46, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = trunc i32 %i.ay to i8
  %i.bb = and i8 %i.ba, 127
  %i.bc = lshr i32 %i.ad, 24                      ; 2 uses
  %.not.i11.i43.2 = icmp eq i32 %i.bc, 0          ; 2 uses
  %masksel.i12.i44.2 = select i1 %.not.i11.i43.2, i8 0, i8 -128
  %.0.i13.i45.2 = or disjoint i8 %masksel.i12.i44.2, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i30.lcssa, i64 5 ; 2 uses
  store i8 %.0.i13.i45.2, ptr %i.az, align 1, !tbaa !21
  br i1 %.not.i11.i43.2, label %_ZL27defineSavedRegisterLocationPhij.exit46, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = trunc nuw i32 %i.bc to i8
  %i.bf = and i8 %i.be, 127
  %.not.i11.i43.3 = icmp sgt i32 %i.ad, -1        ; 2 uses
  %masksel.i12.i44.3 = select i1 %.not.i11.i43.3, i8 0, i8 -128
  %.0.i13.i45.3 = or disjoint i8 %masksel.i12.i44.3, %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i30.lcssa, i64 6 ; 2 uses
  store i8 %.0.i13.i45.3, ptr %i.bd, align 1, !tbaa !21
  br i1 %.not.i11.i43.3, label %_ZL27defineSavedRegisterLocationPhij.exit46, label %25

25:                                               ; preds = %bb.j
  %26 = getelementptr inbounds nuw i8, ptr %.08.i.i30.lcssa, i64 7
  store i8 1, ptr %i.bg, align 1, !tbaa !21
  br label %_ZL27defineSavedRegisterLocationPhij.exit46

_ZL27defineSavedRegisterLocationPhij.exit46:      ; preds = %25, %bb.j, %bb.i, %bb.h, %_ZL25defineCfaExpressionOffsetPhj.exit35
  %.lcssa65 = phi ptr [ %i.av, %_ZL25defineCfaExpressionOffsetPhj.exit35 ], [ %i.az, %bb.h ], [ %i.bd, %bb.i ], [ %i.bg, %bb.j ], [ %26, %25 ] ; 3 uses
  store ptr %.lcssa65, ptr %.phi.trans.insert, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %.02151, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK4Luau7CodeGen19UnwindBuilderDwarf217getUnwindInfoSizeEm(ptr noundef nonnull align 8 dereferenceable(1080) %0, i64 %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i64 -768614336404564650, 768614336404564651) i64 @_ZNK4Luau7CodeGen19UnwindBuilderDwarf28finalizeEPcmPvm(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %0, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(1080) %0, i64 noundef 0)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %i.a, i64 %i.e, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %.not19 = icmp eq ptr %i.g, %i.i
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = ptrtoint ptr %3 to i64
  %i.k = add i64 %2, %i.j
  %i.l = sub i64 %4, %2
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !23
  %.pre21 = load ptr, ptr %i.f, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.m = phi ptr [ %.pre21, %._crit_edge.loopexit ], [ %i.g, %bb.a ]
  %i.n = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.g, %bb.a ]
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 12
  ret i64 %i.r

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.016.020 = phi ptr [ %i.g, %.lr.ph ], [ %i.ah, %bb.d ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.016.020, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !36
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %.sroa.016.020, align 4, !tbaa !30
  %i.y = zext i32 %i.x to i64
  %i.z = add i64 %i.k, %i.y
  store i64 %i.z, ptr %i.w, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.020, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !31 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load i32, ptr %.sroa.016.020, align 4, !tbaa !30
  %i.ae = sub i32 %i.ab, %i.ad
  %i.af = zext i32 %i.ae to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %i.af, %bb.c ], [ %i.l, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sink, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.016.020, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.i
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen19UnwindBuilderDwarf2D2Ev(ptr noundef nonnull align 8 dead_on_return(1080) dereferenceable(1080) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4Luau7CodeGen19UnwindBuilderDwarf2E, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #15
  br label %_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen19UnwindBuilderDwarf2D0Ev(ptr noundef nonnull align 8 dereferenceable(1080) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4Luau7CodeGen19UnwindBuilderDwarf2E, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau7CodeGen19UnwindBuilderDwarf2D2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #15, !inline_history !37
  br label %_ZN4Luau7CodeGen19UnwindBuilderDwarf2D2Ev.exit

_ZN4Luau7CodeGen19UnwindBuilderDwarf2D2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1080) #15
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTSN4Luau7CodeGen13UnwindBuilderE"}
!10 = !{!"long", !5, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTSN4Luau7CodeGen20UnwindFunctionDwarf2E", !11, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE12_Vector_implE", !13, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE", !14, i64 0}
!16 = !{!"_ZTSSt6vectorIN4Luau7CodeGen20UnwindFunctionDwarf2ESaIS2_EE", !15, i64 0}
!17 = !{!"p1 omnipotent char", !11, i64 0}
!18 = !{!"_ZTSN4Luau7CodeGen19UnwindBuilderDwarf2E", !9, i64 0, !10, i64 8, !16, i64 16, !5, i64 40, !17, i64 1064, !17, i64 1072}
!19 = !{!18, !10, i64 8}
!20 = !{!18, !17, i64 1064}
!21 = !{!5, !5, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!13, !12, i64 8}
!24 = !{!13, !12, i64 16}
!25 = !{!6, !6, i64 0}
!26 = !{!13, !12, i64 0}
!27 = !{!18, !17, i64 1072}
!28 = !{!12, !12, i64 0}
!29 = !{!"_ZTSN4Luau7CodeGen20UnwindFunctionDwarf2E", !6, i64 0, !6, i64 4, !6, i64 8}
!30 = !{!29, !6, i64 0}
!31 = !{!29, !6, i64 4}
!32 = !{!"vtable pointer", !4, i64 0}
!33 = !{!32, !32, i64 0}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = !{!29, !6, i64 8}
!37 = !{ptr @_ZN4Luau7CodeGen19UnwindBuilderDwarf2D2Ev}
end_hunk_0
