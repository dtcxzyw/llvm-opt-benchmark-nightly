inline.NumInlined: 459
inline.NumDeleted: 179
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.Assimp::SpatialSort::Entry" = type { i32, %class.aiVector3t, float }
%class.aiVector3t = type { float, float, float }

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_ = comdat any

$_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj = comdat any

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN6Assimp11SpatialSortC1EPK10aiVector3tIfEjj = unnamed_addr alias void (ptr, ptr, i32, i32), ptr @_ZN6Assimp11SpatialSortC2EPK10aiVector3tIfEjj
@_ZN6Assimp11SpatialSortC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6Assimp11SpatialSortC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SpatialSortC2EPK10aiVector3tIfEjj(ptr noundef nonnull align 8 captures(none) dereferenceable(49) initializes((0, 49)) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE5clearEv.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  store <2 x float> <float f0x3F49702B, float f0x3EA23BA6>, ptr %0, align 8
  store float f0x3F079181, ptr %i.c, align 8
  store i8 0, ptr %i.b, align 8
  invoke void @_ZN6Assimp11SpatialSort6AppendEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE5clearEv.exit.i
  store i8 1, ptr %i.b, align 8
  ret void

bb.b:                                             ; preds = %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE5clearEv.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #12
  br label %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EED2Ev.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SpatialSort4FillEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 captures(none) dereferenceable(49) initializes((48, 49)) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN6Assimp11SpatialSort5EntryES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp11SpatialSort5EntryES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8
  br label %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE5clearEv.exit

_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN6Assimp11SpatialSort5EntryES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.e = zext i1 %4 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 0, ptr %i.f, align 8
  tail call void @_ZN6Assimp11SpatialSort6AppendEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4)
  store i8 %i.e, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6Assimp11SpatialSortC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(49) initializes((0, 49)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN10aiVector3tIfE9NormalizeEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(37) %i.a, i8 0, i64 37, i1 false)
  store <2 x float> <float f0x3F49702B, float f0x3EA23BA6>, ptr %0, align 8
  store float f0x3F079181, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SpatialSort6AppendEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 captures(none) dereferenceable(49) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 20                  ; 2 uses
  %i.i = zext i32 %2 to i64                       ; 2 uses
  %i.j = add nsw i64 %i.h, %i.i                   ; 4 uses
  %i.k = icmp ugt i64 %i.j, 461168601842738790
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.f                       ; 2 uses
  %i.p = sdiv exact i64 %i.o, 20
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_ZNSt12_Vector_baseIN6Assimp11SpatialSort5EntryESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp11SpatialSort5EntryESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.r = mul nuw nsw i64 %i.j, 20
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #14 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6Assimp11SpatialSort5EntryESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.s, %_ZNSt12_Vector_baseIN6Assimp11SpatialSort5EntryESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN6Assimp11SpatialSort5EntryESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i, i64 20, i1 false), !alias.scope !3
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 20 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 20
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN6Assimp11SpatialSort5EntryESaIS2_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.d, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp11SpatialSort5EntryESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.o) #12
  br label %_ZNSt12_Vector_baseIN6Assimp11SpatialSort5EntryESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN6Assimp11SpatialSort5EntryESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.s, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.g ; 2 uses
  store ptr %i.v, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw [20 x i8], ptr %i.s, i64 %i.j
  store ptr %i.w, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN6Assimp11SpatialSort5EntryESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.x = phi ptr [ %i.c, %bb.c ], [ %i.v, %_ZNSt12_Vector_baseIN6Assimp11SpatialSort5EntryESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE7reserveEm.exit
  %i.y = trunc i64 %i.h to i32
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12emplace_backIJjRK10aiVector3tIfEEEERS2_DpOT_.exit, %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE7reserveEm.exit
  br i1 %4, label %bb.j, label %bb.k

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12emplace_backIJjRK10aiVector3tIfEEEERS2_DpOT_.exit
  %i.z = phi ptr [ %i.x, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12emplace_backIJjRK10aiVector3tIfEEEERS2_DpOT_.exit ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12emplace_backIJjRK10aiVector3tIfEEEERS2_DpOT_.exit ] ; 2 uses
  %i.aa = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ab = mul i32 %3, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac ; 2 uses
  %i.ae = add i32 %i.aa, %i.y                     ; 2 uses
  %i.af = load ptr, ptr %i.l, align 8
  %.not.i = icmp eq ptr %i.z, %i.af
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.ae, ptr %i.z, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store float f0x7F7FFFFF, ptr %i.ah, align 4
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 20 ; 2 uses
  store ptr %i.aj, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12emplace_backIJjRK10aiVector3tIfEEEERS2_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.al = ptrtoint ptr %i.z to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.h, label %_ZNKSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

_ZNKSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_ZNK6Assimp11SpatialSort22FindIdenticalPositionsERK10aiVector3tIfERSt6vectorIjSaIjEE:bb.a

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.dc, ptr %2, align 8
  store ptr %i.dg, ptr %i.aa, align 8
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.da
  store ptr %i.dh, ptr %i.br, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.g, %bb.e
  %i.di = phi ptr [ %i.dg, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.cq, %bb.g ], [ %i.bs, %bb.e ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 20 ; 2 uses
  %i.dk = load ptr, ptr %i.af, align 8
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %bb.l, label %bb.d, !llvm.loop !23

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6Assimp11SpatialSort20GenerateMappingTableERSt6vectorIjSaIjEEf(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, float noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 20                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 -1, ptr %i.a, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 3 uses
  %i.q = icmp ugt i64 %i.i, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw nsw i64 %i.i, %i.p
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.k, i64 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.i, %i.p
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.t, ptr %i.j, align 8
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.u = fmul float %2, %2
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.v, %i.w
  br i1 %.not, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %1, align 8
  br label %bb.e

._crit_edge:                                      ; preds = %.critedge, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %.0.lcssa = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ], [ %i.cv, %.critedge ]
  ret i32 %.0.lcssa

bb.e:                                             ; preds = %.lr.ph43, %.critedge
  %i.ac = phi ptr [ %.pre, %.lr.ph43 ], [ %i.cu, %.critedge ]
  %i.ad = phi ptr [ %i.w, %.lr.ph43 ], [ %i.ct, %.critedge ]
  %.042 = phi i32 [ 0, %.lr.ph43 ], [ %i.cv, %.critedge ] ; 3 uses
  %.02941 = phi i64 [ 0, %.lr.ph43 ], [ %.1.lcssa, %.critedge ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %i.ad, i64 %.02941 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = load float, ptr %i.x, align 4
  %i.ai = fsub float %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = load float, ptr %i.y, align 8
  %i.am = fsub float %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = load float, ptr %i.z, align 4
  %i.aq = fsub float %i.ao, %i.ap
  %i.ar = load float, ptr %0, align 8
  %i.as = load float, ptr %i.aa, align 4
  %i.at = fmul float %i.am, %i.as
  %i.au = call float @llvm.fmuladd.f32(float %i.ai, float %i.ar, float %i.at)
  %i.av = load float, ptr %i.ab, align 8
  %i.aw = call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.av, float %i.au)
  %i.ax = fadd float %2, %i.aw
  %i.ay = load i32, ptr %i.ae, align 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.az
  store i32 %.042, ptr %i.ba, align 4
  %i.bb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw [20 x i8], ptr %i.bb, i64 %.02941 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %.135 = add nuw i64 %.02941, 1                  ; 3 uses
  %i.be = load ptr, ptr %i.j, align 8
  %i.bf = load ptr, ptr %1, align 8               ; 3 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 2
  %i.bk = icmp ult i64 %.135, %i.bj
  br i1 %i.bk, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %i.bn = phi ptr [ %i.bf, %.lr.ph ], [ %i.cn, %bb.h ] ; 3 uses
  %.136 = phi i64 [ %.135, %.lr.ph ], [ %.1, %bb.h ] ; 4 uses
  %i.bo = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.bp = getelementptr inbounds nuw [20 x i8], ptr %i.bo, i64 %.136 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load float, ptr %i.bq, align 4
  %i.bs = fcmp olt float %i.br, %i.ax
  br i1 %i.bs, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bu = load float, ptr %i.bt, align 4
  %i.bv = load float, ptr %i.bd, align 4
  %i.bw = fsub float %i.bu, %i.bv                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.by = load float, ptr %i.bx, align 4
  %i.bz = load float, ptr %i.bl, align 4
  %i.ca = fsub float %i.by, %i.bz                 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.cc = load float, ptr %i.cb, align 4
  %i.cd = load float, ptr %i.bm, align 4
  %i.ce = fsub float %i.cc, %i.cd                 ; 2 uses
  %i.cf = fmul float %i.ca, %i.ca
  %i.cg = call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.cf)
  %i.ch = call noundef float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cg)
  %i.ci = fcmp olt float %i.ch, %i.u
  br i1 %i.ci, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.cj = load i32, ptr %i.bp, align 4
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ck
  store i32 %.042, ptr %i.cl, align 4
  %.1 = add nuw i64 %.136, 1                      ; 3 uses
  %i.cm = load ptr, ptr %i.j, align 8
  %i.cn = load ptr, ptr %1, align 8               ; 3 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2
  %i.cs = icmp ult i64 %.1, %i.cr
  br i1 %i.cs, label %bb.f, label %..critedge.loopexit_crit_edge, !llvm.loop !24

..critedge.loopexit_crit_edge:                    ; preds = %bb.h
  %.pre45.pre = load ptr, ptr %i.b, align 8
  br label %.critedge, !llvm.loop !24

.critedge:                                        ; preds = %bb.g, %bb.f, %..critedge.loopexit_crit_edge, %bb.e
  %i.ct = phi ptr [ %i.bb, %bb.e ], [ %.pre45.pre, %..critedge.loopexit_crit_edge ], [ %i.bo, %bb.f ], [ %i.bo, %bb.g ] ; 2 uses
  %i.cu = phi ptr [ %i.bf, %bb.e ], [ %i.cn, %..critedge.loopexit_crit_edge ], [ %i.bn, %bb.f ], [ %i.bn, %bb.g ]
  %.1.lcssa = phi i64 [ %.135, %bb.e ], [ %.1, %..critedge.loopexit_crit_edge ], [ %.136, %bb.f ], [ %.136, %bb.g ] ; 2 uses
  %i.cv = add i32 %.042, 1                        ; 2 uses
  %i.cw = load ptr, ptr %i.c, align 8
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.ct to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = sdiv exact i64 %i.cz, 20
  %i.db = icmp ult i64 %.1.lcssa, %i.da
  br i1 %i.db, label %bb.e, label %._crit_edge, !llvm.loop !25
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.Assimp::SpatialSort::Entry", align 4 ; 4 uses
  %4 = alloca %"struct.Assimp::SpatialSort::Entry", align 4 ; 4 uses
  %5 = alloca %"struct.Assimp::SpatialSort::Entry", align 4 ; 4 uses
  %6 = alloca %"struct.Assimp::SpatialSort::Entry", align 4 ; 4 uses
  %7 = alloca %"struct.Assimp::SpatialSort::Entry", align 4 ; 4 uses
  %8 = alloca %"struct.Assimp::SpatialSort::Entry", align 4 ; 4 uses
  %9 = alloca %"struct.Assimp::SpatialSort::Entry", align 4 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 320
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit
  %i.i = icmp eq i64 %i.cd, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph43, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa39 = phi i64 [ %i.c, %.lr.ph ], [ %i.db, %bb.b ]
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.lcssa39, 20             ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %i.j, 1
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %._crit_edge
  %.07.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [20 x i8], ptr %0, i64 %.07.i.i ; 2 uses
  %.sroa.013.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %i.t, align 4
  %.sroa.416.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.416.0.copyload.i.i = load float, ptr %.sroa.416.0..sroa.0.0..sroa_idx.i.i, align 4 ; 2 uses
  %i.u = icmp slt i64 %.07.i.i, %i.n
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.07.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [20 x i8], ptr %0, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [20 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = fcmp olt float %i.ab, %i.ad
  %spec.select.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [20 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ag = getelementptr inbounds [20 x i8], ptr %0, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ag, ptr noundef nonnull align 4 dereferenceable(20) %i.af, i64 20, i1 false)
  %i.ah = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.ah, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !27

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.07.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.ai, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.r, i64 20, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i, %.07.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load float, ptr %i.al, align 4
  %i.an = fcmp olt float %i.am, %.sroa.416.0.copyload.i.i
  br i1 %i.an, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ao = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ao, ptr noundef nonnull align 4 dereferenceable(20) %i.ak, i64 20, i1 false)
  %i.ap = icmp sgt i64 %.0919.i.i.i.i, %.07.i.i
  br i1 %i.ap, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !28

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i11, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i11 ]
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i10 ; 2 uses
  store <16 x i8> %.sroa.013.i.i.sroa.0.0.copyload, ptr %i.aq, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store float %.sroa.416.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.ar = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !29

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.as, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i ], [ %storemerge19.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -20 ; 4 uses
  %.sroa.05.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %i.as, align 4
  %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4
  %.sroa.48.0.copyload.i.i.i = load float, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, align 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.as, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.a                     ; 3 uses
  %i.av = sdiv exact i64 %i.au, 20                ; 3 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = sdiv i64 %i.aw, 2
  %i.ay = icmp sgt i64 %i.au, 40
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.az = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [20 x i8], ptr %0, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [20 x i8], ptr %0, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = fcmp olt float %i.bf, %i.bh
  %spec.select.i.i.i.i = select i1 %i.bi, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bj = getelementptr inbounds [20 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bk = getelementptr inbounds [20 x i8], ptr %0, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bk, ptr noundef nonnull align 4 dereferenceable(20) %i.bj, i64 20, i1 false)
  %i.bl = icmp slt i64 %spec.select.i.i.i.i, %i.ax
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !27

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bm = and i64 %i.av, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bo = add nsw i64 %i.av, -2
  %i.bp = ashr exact i64 %i.bo, 1
  %i.bq = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bp
  br i1 %i.bq, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.br = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bs = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.bs
  %i.bu = getelementptr inbounds [20 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bu, ptr noundef nonnull align 4 dereferenceable(20) %i.bt, i64 20, i1 false)
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bs, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i910.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i910.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bv = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.0919.i.i910.i.i.i ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load float, ptr %i.bw, align 4
  %i.by = fcmp olt float %i.bx, %.sroa.48.0.copyload.i.i.i
  br i1 %i.by, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bz = getelementptr inbounds [20 x i8], ptr %0, i64 %.018.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bz, ptr noundef nonnull align 4 dereferenceable(20) %i.bv, i64 20, i1 false)
  %.not11.i.i.i = icmp eq i64 %.0919.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !28

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.ca = getelementptr inbounds [20 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store <16 x i8> %.sroa.05.i.i.i.sroa.0.0.copyload, ptr %i.ca, align 4
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store float %.sroa.48.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4
  %i.cb = icmp sgt i64 %i.au, 20
  br i1 %i.cb, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !30

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1942 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02041 = phi i64 [ %i.cd, %bb.b ], [ %2, %.lr.ph ]
  %i.cc = phi i64 [ %i.db, %bb.b ], [ %i.c, %.lr.ph ]
  %i.cd = add nsw i64 %.02041, -1                 ; 3 uses
  %i.ce = udiv i64 %i.cc, 40
  %i.cf = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.ce ; 5 uses
  %i.cg = getelementptr inbounds i8, ptr %storemerge1942, i64 -20 ; 4 uses
  %i.ch = load float, ptr %i.f, align 4           ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cj = load float, ptr %i.ci, align 4          ; 3 uses
  %i.ck = fcmp olt float %i.ch, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %storemerge1942, i64 -4
  %i.cm = load float, ptr %i.cl, align 4          ; 4 uses
  br i1 %i.ck, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph43
  %i.cn = fcmp olt float %i.cj, %i.cm
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %9, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.cf, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cf, ptr noundef nonnull align 4 dereferenceable(20) %9, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.co = fcmp olt float %i.ch, %i.cm
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.cg, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cg, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.e, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph43
  %i.cp = fcmp olt float %i.ch, %i.cm
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.e, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cq = fcmp olt float %i.cj, %i.cm
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.cg, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cg, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.cf, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cf, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cv, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1942, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %i.cr = load float, ptr %i.g, align 4           ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i ], [ %i.cv, %bb.t ] ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16
  %i.ct = load float, ptr %i.cs, align 4
  %i.cu = fcmp olt float %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 20 ; 2 uses
  br i1 %i.cu, label %bb.t, label %.preheader.i.i, !llvm.loop !31

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -20 ; 5 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4
  %i.cx = load float, ptr %i.cw, align 4
  %i.cy = fcmp olt float %i.cr, %i.cx
  br i1 %i.cy, label %.preheader.i.i, label %bb.u, !llvm.loop !32

bb.u:                                             ; preds = %.preheader.i.i
  %i.cz = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cz, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.010.1.i.i, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.010.1.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.1.i.i, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.1.i.i, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !33

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1942, i64 noundef %i.cd)
  %i.da = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.db = sub i64 %i.da, %i.a                     ; 3 uses
  %i.dc = icmp sgt i64 %i.db, 320
  br i1 %i.dc, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !26

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.Assimp::SpatialSort::Entry", align 4 ; 4 uses
  %3 = alloca %"struct.Assimp::SpatialSort::Entry", align 4 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 320
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %scevgep = getelementptr i8, ptr %0, i64 20
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 20, %.lr.ph.i ], [ %.sroa.0.018.i.add, %bb.g ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 36
  %i.g = load float, ptr %i.f, align 4            ; 4 uses
  %i.h = load float, ptr %i.e, align 4
  %i.i = fcmp olt float %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.018.i.ptr, i64 20, i1 false)
  %i.j = icmp samesign ugt i64 %.sroa.0.018.i.idx, 20
  br i1 %i.j, label %bb.d, label %bb.e, !prof !34

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.k, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.03.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.0.018.i.ptr, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 16
  %i.m = load float, ptr %i.l, align 4
  %i.n = fcmp olt float %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.06.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i, i64 20, i1 false)
  %i.o = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -24
  %i.p = load float, ptr %i.o, align 4
  %i.q = fcmp olt float %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !35

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store <16 x i8> %.sroa.03.i.i.sroa.0.0.copyload, ptr %.sroa.06.0.lcssa.i.i, align 4
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 16
  store float %i.g, ptr %.sroa.4.0..sroa_idx4.i.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 20 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 320
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.b, !llvm.loop !36

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.not4.i = icmp eq ptr %i.r, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8
  %.sroa.0.05.i = phi ptr [ %i.y, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit ] ; 6 uses
  %.sroa.03.i.i6.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.0.05.i, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -4
  %i.t = load float, ptr %i.s, align 4
  %i.u = fcmp olt float %.sroa.4.0.copyload.i.i, %i.t
  br i1 %i.u, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8

.lr.ph.i.i12:                                     ; preds = %.lr.ph.i7, %.lr.ph.i.i12
  %.sroa.06.09.i.i13 = phi ptr [ %.sroa.0.0.i.i14, %.lr.ph.i.i12 ], [ %.sroa.0.05.i, %.lr.ph.i7 ] ; 3 uses
  %.sroa.0.0.i.i14 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i13, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i13, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i14, i64 20, i1 false)
  %i.v = getelementptr inbounds i8, ptr %.sroa.06.09.i.i13, i64 -24
  %i.w = load float, ptr %i.v, align 4
  %i.x = fcmp olt float %.sroa.4.0.copyload.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8, !llvm.loop !35

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8: ; preds = %.lr.ph.i.i12, %.lr.ph.i7
  %.sroa.06.0.lcssa.i.i9 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i7 ], [ %.sroa.0.0.i.i14, %.lr.ph.i.i12 ] ; 2 uses
  store <16 x i8> %.sroa.03.i.i6.sroa.0.0.copyload, ptr %.sroa.06.0.lcssa.i.i9, align 4
  %.sroa.4.0..sroa_idx4.i.i10 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i9, i64 16
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx4.i.i10, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 20 ; 2 uses
  %.not.i11 = icmp eq ptr %i.y, %1
  br i1 %.not.i11, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i7, !llvm.loop !37

bb.h:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.preheader.i16

.preheader.i16:                                   ; preds = %bb.h
  %.sroa.0.015.i17 = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.not16.i18 = icmp eq ptr %.sroa.0.015.i17, %1
  br i1 %.not16.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i19
  %.sroa.0.018.i20 = phi ptr [ %.sroa.0.015.i17, %.lr.ph.i19 ], [ %.sroa.0.0.i25, %bb.o ] ; 7 uses
  %.pn17.i21 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.018.i20, %bb.o ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn17.i21, i64 36
  %i.ac = load float, ptr %i.ab, align 4          ; 4 uses
  %i.ad = load float, ptr %i.aa, align 4
  %i.ae = fcmp olt float %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.018.i20, i64 20, i1 false)
  %i.af = ptrtoint ptr %.sroa.0.018.i20 to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 20
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn17.i21, i64 40
  %.neg23.i31 = udiv exact i64 %i.ag, 20
  %.neg23.neg.i32 = sub nsw i64 0, %.neg23.i31
  %i.aj = getelementptr inbounds [20 x i8], ptr %i.ai, i64 %.neg23.neg.i32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aj, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30

bb.l:                                             ; preds = %bb.j
  %i.ak = icmp eq i64 %i.ag, 20
  br i1 %i.ak, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.pn17.i21, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.al, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.sroa.03.i.i15.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.0.018.i20, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.pn17.i21, i64 16
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fcmp olt float %i.ac, %i.an
  br i1 %i.ao, label %.lr.ph.i.i27, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22

.lr.ph.i.i27:                                     ; preds = %bb.n, %.lr.ph.i.i27
  %.sroa.06.09.i.i28 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i27 ], [ %.sroa.0.018.i20, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i28, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i28, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i29, i64 20, i1 false)
  %i.ap = getelementptr inbounds i8, ptr %.sroa.06.09.i.i28, i64 -24
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = fcmp olt float %i.ac, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i27, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22, !llvm.loop !35

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22: ; preds = %.lr.ph.i.i27, %bb.n
  %.sroa.06.0.lcssa.i.i23 = phi ptr [ %.sroa.0.018.i20, %bb.n ], [ %.sroa.0.0.i.i29, %.lr.ph.i.i27 ] ; 2 uses
  store <16 x i8> %.sroa.03.i.i15.sroa.0.0.copyload, ptr %.sroa.06.0.lcssa.i.i23, align 4
  %.sroa.4.0..sroa_idx4.i.i24 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i23, i64 16
  store float %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i24, align 4
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i30
  %.sroa.0.0.i25 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i20, i64 20 ; 2 uses
  %.not.i26 = icmp eq ptr %.sroa.0.0.i25, %1
  br i1 %.not.i26, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.i, !llvm.loop !36

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8, %.preheader.i16, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 13 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4                ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !34

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4
  store i32 %i.s, ptr %i.d, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !34

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4
  store i32 %i.ac, ptr %i.ab, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec129 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec129, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body132 ] ; 2 uses
  %i.aj = shl i64 %index133, 2
  %next.gep134 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> %broadcast.splat131, ptr %next.gep134, align 4
  store <4 x i32> %broadcast.splat131, ptr %i.ak, align 4
  %index.next135 = add nuw i64 %index133, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.al, label %middle.block136, label %vector.body132, !llvm.loop !38

middle.block136:                                  ; preds = %vector.body132
  %cmp.n137 = icmp eq i64 %i.ag, %n.vec129
  br i1 %cmp.n137, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block136
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block136 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !41

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !43

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !34

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
end_hunk_1
