inline.NumInlined: 459
inline.NumDeleted: 179
begin_hunk_0

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
  %i.z = phi ptr [ %i.x, %.lr.ph ], [ %i.bb, %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12emplace_backIJjRK10aiVector3tIfEEEERS2_DpOT_.exit ] ; 7 uses
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
  %i.ap = sdiv exact i64 %i.an, 20                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %5 = icmp ult i64 %i.aq, %i.ap
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 461168601842738790)
  %6 = select i1 %5, i64 461168601842738790, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %6, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = mul nuw nsw i64 %6, 20
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #14 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an ; 3 uses
  store i32 %i.ae, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.av, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store float f0x7F7FFFFF, ptr %i.aw, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.ak, %i.z
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %i.at, %_ZNKSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %i.ak, %_ZNKSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i, i64 20, i1 false), !alias.scope !9
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 20 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.at, %_ZNKSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 20 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE17_M_realloc_insertIJjRK10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #12
  br label %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE17_M_realloc_insertIJjRK10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE17_M_realloc_insertIJjRK10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i
  store ptr %i.at, ptr %i.a, align 8
  store ptr %i.az, ptr %i.b, align 8
  %i.ba = getelementptr inbounds nuw [20 x i8], ptr %i.at, i64 %6
  store ptr %i.ba, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12emplace_backIJjRK10aiVector3tIfEEEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE12emplace_backIJjRK10aiVector3tIfEEEERS2_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE17_M_realloc_insertIJjRK10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.bb = phi ptr [ %i.aj, %bb.f ], [ %i.az, %_ZNSt6vectorIN6Assimp11SpatialSort5EntryESaIS2_EE17_M_realloc_insertIJjRK10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !13

bb.j:                                             ; preds = %._crit_edge
  tail call void @_ZN6Assimp11SpatialSort8FinalizeEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZNK6Assimp11SpatialSort17CalculateDistanceERK10aiVector3tIfE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %1, align 4
  %i.c = load float, ptr %i.a, align 4
  %i.d = fsub float %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load float, ptr %i.g, align 8
  %i.i = fsub float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load float, ptr %i.l, align 4
  %i.n = fsub float %i.k, %i.m
  %i.o = load float, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load float, ptr %i.p, align 4
  %i.r = fmul float %i.i, %i.q
  %i.s = tail call float @llvm.fmuladd.f32(float %i.d, float %i.o, float %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load float, ptr %i.t, align 8
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.u, float %i.s)
  ret float %i.v
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SpatialSort8FinalizeEv(ptr noundef nonnull align 8 captures(none) dereferenceable(49) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 20                  ; 2 uses
  %i.i = uitofp i64 %i.h to float
  %i.j = fdiv float 1.000000e+00, %i.i            ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = load <2 x float>, ptr %i.k, align 4
  %.promoted17 = load float, ptr %i.l, align 4
  %i.n = insertelement <2 x float> poison, float %i.j, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

.lr.ph19:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.u = phi float [ %.promoted17, %.lr.ph ], [ %i.af, %bb.b ]
  %i.v = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.b ]
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %bb.b ]
  %i.w = phi <2 x float> [ %i.m, %.lr.ph ], [ %i.ae, %bb.b ]
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fmul float %i.j, %i.aa
  %i.ac = load <2 x float>, ptr %i.y, align 4
  %i.ad = fmul <2 x float> %i.o, %i.ac
  %i.ae = fadd <2 x float> %i.ad, %i.w            ; 2 uses
  store <2 x float> %i.ae, ptr %i.k, align 4
  %i.af = fadd float %i.ab, %i.u                  ; 2 uses
  store float %i.af, ptr %i.l, align 4
  %i.ag = add i32 %.015, 1                        ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = icmp ugt i64 %i.h, %i.ah
  br i1 %i.ai, label %bb.b, label %.lr.ph19, !llvm.loop !14

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.ak = shl nuw nsw i64 %i.aj, 1
  %i.al = xor i64 %i.ak, 126
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa14 = phi ptr [ %i.c, %bb.a ], [ %i.bl, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa13 = phi ptr [ %i.d, %bb.a ], [ %i.bm, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa = phi i64 [ poison, %bb.a ], [ %i.al, %._crit_edge.loopexit ]
  %.not.i.i = icmp eq ptr %.lcssa13, %.lcssa14
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %.lcssa13, ptr %.lcssa14, i64 noundef %.lcssa)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %.lcssa13, ptr %.lcssa14)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp11SpatialSort5EntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %._crit_edge, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.am, align 8
  ret void

bb.d:                                             ; preds = %.lr.ph19, %bb.d
  %i.an = phi ptr [ %i.d, %.lr.ph19 ], [ %i.bm, %bb.d ]
  %i.ao = phi i64 [ 0, %.lr.ph19 ], [ %i.bk, %bb.d ]
  %.01018 = phi i32 [ 0, %.lr.ph19 ], [ %i.bj, %bb.d ]
  %i.ap = getelementptr inbounds nuw [20 x i8], ptr %i.an, i64 %i.ao ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = load float, ptr %i.p, align 4
  %i.at = fsub float %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = load float, ptr %i.au, align 4
  %i.aw = load float, ptr %i.q, align 8
  %i.ax = fsub float %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = load float, ptr %i.r, align 4
  %i.bb = fsub float %i.az, %i.ba
  %i.bc = load float, ptr %0, align 8
  %i.bd = load float, ptr %i.s, align 4
  %i.be = fmul float %i.ax, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.at, float %i.bc, float %i.be)
  %i.bg = load float, ptr %i.t, align 8
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.bb, float %i.bg, float %i.bf)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store float %i.bh, ptr %i.bi, align 4
  %i.bj = add i32 %.01018, 1                      ; 2 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bm = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 20                ; 2 uses
  %i.br = icmp ugt i64 %i.bq, %i.bk
  br i1 %i.br, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !15
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6Assimp11SpatialSort13FindPositionsERK10aiVector3tIfEfRSt6vectorIjSaIjEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, float noundef %2, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %1, align 4
  %i.c = load float, ptr %i.a, align 4
  %i.d = fsub float %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load float, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load float, ptr %i.g, align 8
  %i.i = fsub float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load float, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load float, ptr %i.l, align 4
  %i.n = fsub float %i.k, %i.m
  %i.o = load float, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load float, ptr %i.p, align 4
  %i.r = fmul float %i.i, %i.q
  %i.s = tail call float @llvm.fmuladd.f32(float %i.d, float %i.o, float %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load float, ptr %i.t, align 8
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.u, float %i.s) ; 2 uses
  %i.w = fsub float %i.v, %2                      ; 4 uses
  %i.x = fadd float %2, %i.v                      ; 2 uses
  %i.y = load ptr, ptr %3, align 8                ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.y
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.y, ptr %i.z, align 8
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.ab = phi ptr [ %i.aa, %bb.a ], [ %i.y, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = load ptr, ptr %i.ac, align 8            ; 7 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 20                ; 2 uses
  %i.ak = icmp eq ptr %i.ae, %i.af
  br i1 %i.ak, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.am = load float, ptr %i.al, align 4
  %i.an = fcmp olt float %i.x, %i.am
  br i1 %i.an, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = fcmp ogt float %i.w, %i.ap
  br i1 %i.aq, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = trunc i64 %i.aj to i32                  ; 3 uses
  %i.as = lshr i32 %i.ar, 1                       ; 2 uses
  %i.at = icmp ugt i32 %i.ar, 7
  br i1 %i.at, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.au = lshr i32 %i.ar, 2
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.d
  %.0.lcssa = phi i32 [ %i.as, %bb.d ], [ %.1, %.lr.ph ] ; 2 uses
  %.not46 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not46, label %.critedge, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %.preheader
  %i.av = zext i32 %.0.lcssa to i64
  br label %.lr.ph48

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.045 = phi i32 [ %.1, %.lr.ph ], [ %i.as, %.lr.ph.preheader ] ; 2 uses
  %.03344 = phi i32 [ %i.bc, %.lr.ph ], [ %i.au, %.lr.ph.preheader ] ; 4 uses
  %i.aw = zext i32 %.045 to i64
  %i.ax = getelementptr inbounds nuw [20 x i8], ptr %i.af, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fcmp olt float %i.az, %i.w
  %i.bb = sub nsw i32 0, %.03344
  %.1.p = select i1 %i.ba, i32 %.03344, i32 %i.bb
  %.1 = add i32 %.1.p, %.045                      ; 2 uses
  %i.bc = lshr i32 %.03344, 1
  %i.bd = icmp samesign ugt i32 %.03344, 3
  br i1 %i.bd, label %.lr.ph, label %.preheader, !llvm.loop !16

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.av, %.lr.ph48.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.be = getelementptr inbounds nuw [20 x i8], ptr %i.af, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load float, ptr %i.bf, align 4
  %i.bh = fcmp ogt float %i.bg, %i.w
  br i1 %i.bh, label %bb.e, label %.critedge.loopexit.split.loop.exit73

bb.e:                                             ; preds = %.lr.ph48
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bi = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %.critedge, label %.lr.ph48, !llvm.loop !17

.critedge.loopexit.split.loop.exit73:             ; preds = %.lr.ph48
  %i.bj = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.loopexit.split.loop.exit73, %.preheader
  %.2.lcssa = phi i32 [ 0, %.preheader ], [ %i.bj, %.critedge.loopexit.split.loop.exit73 ], [ 0, %bb.e ] ; 2 uses
  %i.bk = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.bl = zext i32 %.2.lcssa to i64               ; 3 uses
  %i.bm = icmp ugt i64 %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph53, label %.critedge2

bb.f:                                             ; preds = %.lr.ph53
  %i.bn = add i32 %.352, 1                        ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 3 uses
  %i.bp = icmp ugt i64 %i.bk, %i.bo
  br i1 %i.bp, label %.lr.ph53, label %.critedge2, !llvm.loop !18

.lr.ph53:                                         ; preds = %.critedge, %bb.f
  %i.bq = phi i64 [ %i.bo, %bb.f ], [ %i.bl, %.critedge ] ; 2 uses
  %.352 = phi i32 [ %i.bn, %bb.f ], [ %.2.lcssa, %.critedge ]
  %i.br = getelementptr inbounds nuw [20 x i8], ptr %i.af, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = fcmp olt float %i.bt, %i.w
  br i1 %i.bu, label %bb.f, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph53, %bb.f, %.critedge
  %.lcssa = phi i64 [ %i.bl, %.critedge ], [ %i.bo, %bb.f ], [ %i.bq, %.lr.ph53 ]
  %i.bv = getelementptr inbounds nuw [20 x i8], ptr %i.af, i64 %.lcssa
  %i.bw = fmul float %2, %2
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %.critedge2
  %i.by = phi ptr [ %i.ab, %.critedge2 ], [ %i.dl, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %.sroa.039.0 = phi ptr [ %i.bv, %.critedge2 ], [ %i.dm, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 16
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = fcmp olt float %i.ca, %i.x
  br i1 %i.cb, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 4
  %i.cd = load float, ptr %i.cc, align 4
  %i.ce = load float, ptr %1, align 4
  %i.cf = fsub float %i.cd, %i.ce                 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 8
  %i.ch = load float, ptr %i.cg, align 4
  %i.ci = load float, ptr %i.e, align 4
  %i.cj = fsub float %i.ch, %i.ci                 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 12
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = load float, ptr %i.j, align 4
  %i.cn = fsub float %i.cl, %i.cm                 ; 2 uses
  %i.co = fmul float %i.cj, %i.cj
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.co)
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.cp)
  %i.cr = fcmp olt float %i.cq, %i.bw
  br i1 %i.cr, label %bb.i, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.i:                                             ; preds = %bb.h
  %i.cs = load ptr, ptr %i.bx, align 8
  %.not.i = icmp eq ptr %i.by, %i.cs
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ct = load i32, ptr %.sroa.039.0, align 4
  store i32 %i.ct, ptr %i.by, align 4
  %i.cu = load ptr, ptr %i.z, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  store ptr %i.cv, ptr %i.z, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.k:                                             ; preds = %bb.i
  %i.cw = load ptr, ptr %3, align 8               ; 4 uses
  %i.cx = ptrtoint ptr %i.by to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 6 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775804
  br i1 %i.da, label %bb.l, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.db = ashr exact i64 %i.cz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i, %i.db ; 2 uses
  %4 = icmp ult i64 %i.dc, %i.db
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 2305843009213693951)
  %5 = select i1 %4, i64 2305843009213693951, i64 %i.dd ; 3 uses
  %.not.i.i.i = icmp ne i64 %5, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.de = shl nuw nsw i64 %5, 2
  %i.df = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #14 ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.cz ; 2 uses
  %i.dh = load i32, ptr %.sroa.039.0, align 4
  store i32 %i.dh, ptr %i.dg, align 4
  %i.di = icmp sgt i64 %i.cz, 0
  br i1 %i.di, label %bb.m, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.df, ptr align 4 %i.cw, i64 %i.cz, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.cz) #12
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.df, ptr %3, align 8
  store ptr %i.dj, ptr %i.z, align 8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %5
  store ptr %i.dk, ptr %i.bx, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.j, %bb.h
  %i.dl = phi ptr [ %i.dj, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.cv, %bb.j ], [ %i.by, %bb.h ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 20 ; 2 uses
  %i.dn = load ptr, ptr %i.ad, align 8
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %.loopexit, label %bb.g, !llvm.loop !19

.loopexit:                                        ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.c, %bb.b, %_ZNSt6vectorIjSaIjEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6Assimp11SpatialSort22FindIdenticalPositionsERK10aiVector3tIfERSt6vectorIjSaIjEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %1, align 4
  %i.c = load float, ptr %i.a, align 4
  %i.d = fsub float %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load float, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load float, ptr %i.g, align 8
  %i.i = fsub float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load float, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load float, ptr %i.l, align 4
  %i.n = fsub float %i.k, %i.m
  %i.o = load float, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load float, ptr %i.p, align 4
  %i.r = fmul float %i.i, %i.q
  %i.s = tail call float @llvm.fmuladd.f32(float %i.d, float %i.o, float %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load float, ptr %i.t, align 8
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.u, float %i.s)
  %i.w = bitcast float %i.v to i32                ; 3 uses
  %i.x = sub nsw i32 -2147483648, %i.w
  %.not1.i = icmp slt i32 %i.w, 0
  %.0.i = select i1 %.not1.i, i32 %i.x, i32 %i.w  ; 2 uses
  %i.y = add nsw i32 %.0.i, -5                    ; 3 uses
  %i.z = add nsw i32 %.0.i, 5
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.ac, ptr %i.aa, align 8
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.ad = phi ptr [ %i.ab, %bb.a ], [ %i.ac, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.ae, align 8            ; 5 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 20                ; 2 uses
  %i.am = trunc i64 %i.al to i32                  ; 3 uses
  %i.an = lshr i32 %i.am, 1                       ; 2 uses
  %i.ao = icmp ugt i32 %i.am, 7
  br i1 %i.ao, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.ap = lshr i32 %i.am, 2
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %.0.lcssa = phi i32 [ %i.an, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ %.1, %.lr.ph ] ; 2 uses
  %.not52 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not52, label %.critedge, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %.preheader
  %i.aq = zext i32 %.0.lcssa to i64
  br label %.lr.ph54

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.051 = phi i32 [ %.1, %.lr.ph ], [ %i.an, %.lr.ph.preheader ] ; 2 uses
  %.02550 = phi i32 [ %i.ax, %.lr.ph ], [ %i.ap, %.lr.ph.preheader ] ; 4 uses
  %i.ar = zext i32 %.051 to i64
  %i.as = getelementptr inbounds nuw [20 x i8], ptr %i.ah, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.val30 = load i32, ptr %i.at, align 4          ; 3 uses
  %i.au = sub nsw i32 -2147483648, %.val30
  %.not1.i32 = icmp slt i32 %.val30, 0
  %.0.i33 = select i1 %.not1.i32, i32 %i.au, i32 %.val30
  %i.av = icmp sgt i32 %i.y, %.0.i33
  %i.aw = sub nsw i32 0, %.02550
  %.1.p = select i1 %i.av, i32 %.02550, i32 %i.aw
  %.1 = add i32 %.1.p, %.051                      ; 2 uses
  %i.ax = lshr i32 %.02550, 1
  %i.ay = icmp samesign ugt i32 %.02550, 3
  br i1 %i.ay, label %.lr.ph, label %.preheader, !llvm.loop !20

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.aq, %.lr.ph54.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.az = getelementptr inbounds nuw [20 x i8], ptr %i.ah, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.val29 = load i32, ptr %i.ba, align 4          ; 3 uses
  %i.bb = sub nsw i32 -2147483648, %.val29
  %.not1.i34 = icmp slt i32 %.val29, 0
  %.0.i35 = select i1 %.not1.i34, i32 %i.bb, i32 %.val29
  %i.bc = icmp slt i32 %i.y, %.0.i35
  br i1 %i.bc, label %bb.b, label %.critedge.loopexit.split.loop.exit75

bb.b:                                             ; preds = %.lr.ph54
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bd = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.bd, 0
  br i1 %.not, label %.critedge, label %.lr.ph54, !llvm.loop !21

.critedge.loopexit.split.loop.exit75:             ; preds = %.lr.ph54
  %i.be = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge.loopexit.split.loop.exit75, %.preheader
  %.2.lcssa = phi i32 [ 0, %.preheader ], [ %i.be, %.critedge.loopexit.split.loop.exit75 ], [ 0, %bb.b ] ; 2 uses
  %i.bf = add nsw i64 %i.al, -1                   ; 2 uses
  %i.bg = zext i32 %.2.lcssa to i64               ; 3 uses
  %i.bh = icmp ugt i64 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph59, label %.critedge2

bb.c:                                             ; preds = %.lr.ph59
  %i.bi = add i32 %.358, 1                        ; 2 uses
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  %i.bk = icmp ugt i64 %i.bf, %i.bj
  br i1 %i.bk, label %.lr.ph59, label %.critedge2, !llvm.loop !22

.lr.ph59:                                         ; preds = %.critedge, %bb.c
  %i.bl = phi i64 [ %i.bj, %bb.c ], [ %i.bg, %.critedge ] ; 2 uses
  %.358 = phi i32 [ %i.bi, %bb.c ], [ %.2.lcssa, %.critedge ]
  %i.bm = getelementptr inbounds nuw [20 x i8], ptr %i.ah, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.val28 = load i32, ptr %i.bn, align 4          ; 3 uses
  %i.bo = sub nsw i32 -2147483648, %.val28
  %.not1.i36 = icmp slt i32 %.val28, 0
  %.0.i37 = select i1 %.not1.i36, i32 %i.bo, i32 %.val28
  %i.bp = icmp sgt i32 %i.y, %.0.i37
  br i1 %i.bp, label %bb.c, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph59, %bb.c, %.critedge
  %.lcssa = phi i64 [ %i.bg, %.critedge ], [ %i.bj, %bb.c ], [ %i.bl, %.lr.ph59 ]
  %i.bq = getelementptr inbounds nuw [20 x i8], ptr %i.ah, i64 %.lcssa
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %.critedge2
  %i.bs = phi ptr [ %i.ad, %.critedge2 ], [ %i.dg, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %.sroa.044.0 = phi ptr [ %i.bq, %.critedge2 ], [ %i.dh, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 16
  %.val27 = load i32, ptr %i.bt, align 4          ; 3 uses
  %i.bu = sub nsw i32 -2147483648, %.val27
  %.not1.i38 = icmp slt i32 %.val27, 0
  %.0.i39 = select i1 %.not1.i38, i32 %i.bu, i32 %.val27
  %i.bv = icmp slt i32 %.0.i39, %i.z
  br i1 %i.bv, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 4
  %i.bx = load float, ptr %i.bw, align 4
  %i.by = load float, ptr %1, align 4
  %i.bz = fsub float %i.bx, %i.by                 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 8
  %i.cb = load float, ptr %i.ca, align 4
  %i.cc = load float, ptr %i.e, align 4
  %i.cd = fsub float %i.cb, %i.cc                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 12
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = load float, ptr %i.j, align 4
  %i.ch = fsub float %i.cf, %i.cg                 ; 2 uses
  %i.ci = fmul float %i.cd, %i.cd
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.ci)
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.cj)
  %i.cl = bitcast float %i.ck to i32
  %i.cm = icmp slt i32 %i.cl, 7
  br i1 %i.cm, label %bb.f, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.f:                                             ; preds = %bb.e
  %i.cn = load ptr, ptr %i.br, align 8
  %.not.i = icmp eq ptr %i.bs, %i.cn
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.co = load i32, ptr %.sroa.044.0, align 4
  store i32 %i.co, ptr %i.bs, align 4
  %i.cp = load ptr, ptr %i.aa, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  store ptr %i.cq, ptr %i.aa, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.h:                                             ; preds = %bb.f
  %i.cr = load ptr, ptr %2, align 8               ; 4 uses
  %i.cs = ptrtoint ptr %i.bs to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 6 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775804
  br i1 %i.cv, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.cw = ashr exact i64 %i.cu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i, %i.cw ; 2 uses
  %3 = icmp ult i64 %i.cx, %i.cw
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 2305843009213693951)
  %4 = select i1 %3, i64 2305843009213693951, i64 %i.cy ; 3 uses
  %.not.i.i.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cz = shl nuw nsw i64 %4, 2
  %i.da = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #14 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %i.cu ; 2 uses
  %i.dc = load i32, ptr %.sroa.044.0, align 4
  store i32 %i.dc, ptr %i.db, align 4
  %i.dd = icmp sgt i64 %i.cu, 0
  br i1 %i.dd, label %bb.j, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.da, ptr align 4 %i.cr, i64 %i.cu, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cu) #12
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.da, ptr %2, align 8
  store ptr %i.de, ptr %i.aa, align 8
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %4
  store ptr %i.df, ptr %i.br, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.g, %bb.e
  %i.dg = phi ptr [ %i.de, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.cq, %bb.g ], [ %i.bs, %bb.e ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 20 ; 2 uses
  %i.di = load ptr, ptr %i.af, align 8
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %bb.l, label %bb.d, !llvm.loop !23

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
  %.sroa.013.i.i = alloca { i32, %class.aiVector3t }, align 8 ; 4 uses
  %3 = alloca %"struct.Assimp::SpatialSort::Entry", align 4 ; 4 uses
  %4 = alloca %"struct.Assimp::SpatialSort::Entry", align 4 ; 4 uses
  %5 = alloca %"struct.Assimp::SpatialSort::Entry", align 4 ; 4 uses
  %6 = alloca %"struct.Assimp::SpatialSort::Entry", align 4 ; 4 uses
end_hunk_0
