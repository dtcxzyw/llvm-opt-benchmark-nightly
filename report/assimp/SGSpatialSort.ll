inline.NumInlined: 301
inline.NumDeleted: 127
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.aiVector3t = type { float, float, float }
%"struct.Assimp::SGSpatialSort::Entry" = type { i32, %class.aiVector3t, i32, float }

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN6Assimp13SGSpatialSortC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6Assimp13SGSpatialSortC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6Assimp13SGSpatialSortC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 12), (16, 40)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store <2 x float> <float f0x3F49702B, float f0x3EA23BA6>, ptr %0, align 8
  store float f0x3F079181, ptr %i.a, align 8
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load float, ptr %1, align 4
  %i.b = load float, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load float, ptr %i.e, align 4
  %i.g = fmul float %i.d, %i.f
  %i.h = tail call float @llvm.fmuladd.f32(float %i.a, float %i.b, float %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 8
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.l, float %i.h) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.not.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %2, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %3, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store float %i.m, ptr %i.u, align 4
  %i.v = load ptr, ptr %i.o, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.w, ptr %i.o, align 8
  br label %_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE12emplace_backIJRjRK10aiVector3tIfERfS6_EEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.n, align 8              ; 5 uses
  %i.y = ptrtoint ptr %i.p to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.d, label %_ZNKSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.ac = sdiv exact i64 %i.aa, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %4 = icmp ult i64 %i.ad, %i.ac
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 384307168202282325)
  %5 = select i1 %4, i64 384307168202282325, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %5, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = mul nuw nsw i64 %5, 24
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #12 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa ; 4 uses
  store i32 %2, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i32 %3, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store float %i.m, ptr %i.ak, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.x, %i.p
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.ag, %_ZNKSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !3
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ag, %_ZNKSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i36.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i36.i.i, label %_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE17_M_realloc_insertIJRjRK10aiVector3tIfERfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #13
  br label %_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE17_M_realloc_insertIJRjRK10aiVector3tIfERfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE17_M_realloc_insertIJRjRK10aiVector3tIfERfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i
  store ptr %i.ag, ptr %i.n, align 8
  store ptr %i.an, ptr %i.o, align 8
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %5
  store ptr %i.ao, ptr %i.q, align 8
  br label %_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE12emplace_backIJRjRK10aiVector3tIfERfS6_EEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE12emplace_backIJRjRK10aiVector3tIfERfS6_EEERS2_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6Assimp13SGSpatialSort5EntryESaIS2_EE17_M_realloc_insertIJRjRK10aiVector3tIfERfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SGSpatialSort7PrepareEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.b, ptr %i.d, i64 noundef %i.k)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.b, ptr %i.d)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, i32 noundef %2, float noundef %3, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load float, ptr %1, align 4
  %i.b = load float, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.d = load float, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load float, ptr %i.e, align 4
  %i.g = fmul float %i.d, %i.f
  %i.h = tail call float @llvm.fmuladd.f32(float %i.a, float %i.b, float %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = load float, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 8
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.l, float %i.h) ; 2 uses
  %i.n = fsub float %i.m, %3                      ; 4 uses
  %i.o = fadd float %3, %i.m                      ; 4 uses
  %i.p = load ptr, ptr %4, align 8                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.p, ptr %i.q, align 8
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.s = phi ptr [ %i.r, %bb.a ], [ %i.p, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8              ; 6 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.z = load float, ptr %i.y, align 4
  %i.aa = fcmp olt float %i.o, %i.z
  br i1 %i.aa, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = fcmp ogt float %i.n, %i.ac
  br i1 %i.ad, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = ptrtoint ptr %i.u to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 24                ; 2 uses
  %i.ai = trunc i64 %i.ah to i32                  ; 3 uses
  %i.aj = lshr i32 %i.ai, 1                       ; 2 uses
  %i.ak = icmp ugt i32 %i.ai, 7
  br i1 %i.ak, label %.lr.ph.preheader, label %.preheader118

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.al = lshr i32 %i.ai, 2
  br label %.lr.ph

.preheader118:                                    ; preds = %.lr.ph, %bb.d
  %.0.lcssa = phi i32 [ %i.aj, %bb.d ], [ %.1, %.lr.ph ] ; 2 uses
  %.not121 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not121, label %.critedge, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %.preheader118
  %i.am = zext i32 %.0.lcssa to i64
  br label %.lr.ph123

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0120 = phi i32 [ %.1, %.lr.ph ], [ %i.aj, %.lr.ph.preheader ] ; 2 uses
  %.059119 = phi i32 [ %i.at, %.lr.ph ], [ %i.al, %.lr.ph.preheader ] ; 4 uses
  %i.an = zext i32 %.0120 to i64
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = fcmp olt float %i.aq, %i.n
  %i.as = sub nsw i32 0, %.059119
  %.1.p = select i1 %i.ar, i32 %.059119, i32 %i.as
  %.1 = add i32 %.1.p, %.0120                     ; 2 uses
  %i.at = lshr i32 %.059119, 1
  %i.au = icmp samesign ugt i32 %.059119, 3
  br i1 %i.au, label %.lr.ph, label %.preheader118, !llvm.loop !9

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.am, %.lr.ph123.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = fcmp ogt float %i.ax, %i.n
  br i1 %i.ay, label %bb.e, label %.critedge.loopexit.split.loop.exit163

bb.e:                                             ; preds = %.lr.ph123
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.az = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.az, 0
  br i1 %.not, label %.critedge, label %.lr.ph123, !llvm.loop !10

.critedge.loopexit.split.loop.exit163:            ; preds = %.lr.ph123
  %i.ba = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.loopexit.split.loop.exit163, %.preheader118
  %.2.lcssa = phi i32 [ 0, %.preheader118 ], [ %i.ba, %.critedge.loopexit.split.loop.exit163 ], [ 0, %bb.e ] ; 2 uses
  %i.bb = add nsw i64 %i.ah, -1                   ; 2 uses
  %i.bc = zext i32 %.2.lcssa to i64               ; 3 uses
  %i.bd = icmp ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %.lr.ph128, label %.critedge2

bb.f:                                             ; preds = %.lr.ph128
  %i.be = add i32 %.3127, 1                       ; 2 uses
  %i.bf = zext i32 %i.be to i64                   ; 3 uses
  %i.bg = icmp ugt i64 %i.bb, %i.bf
  br i1 %i.bg, label %.lr.ph128, label %.critedge2, !llvm.loop !11

.lr.ph128:                                        ; preds = %.critedge, %bb.f
  %i.bh = phi i64 [ %i.bf, %bb.f ], [ %i.bc, %.critedge ] ; 2 uses
  %.3127 = phi i32 [ %i.be, %bb.f ], [ %.2.lcssa, %.critedge ]
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.bk = load float, ptr %i.bj, align 4
  %i.bl = fcmp olt float %i.bk, %i.n
  br i1 %i.bl, label %bb.f, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph128, %bb.f, %.critedge
  %.lcssa = phi i64 [ %i.bc, %.critedge ], [ %i.bf, %bb.f ], [ %i.bh, %.lr.ph128 ]
  %i.bm = fmul float %3, %3                       ; 3 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.lcssa ; 3 uses
  br i1 %5, label %.preheader, label %bb.p

.preheader:                                       ; preds = %.critedge2
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.bp = phi ptr [ %i.df, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.s, %.preheader ] ; 5 uses
  %.sroa.096.0 = phi ptr [ %i.dg, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.bn, %.preheader ] ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.096.0, i64 20
  %i.br = load float, ptr %i.bq, align 4
  %i.bs = fcmp olt float %i.br, %i.o
  br i1 %i.bs, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.096.0, i64 4
  %i.bu = load float, ptr %i.bt, align 4
  %i.bv = load float, ptr %1, align 4
  %i.bw = fsub float %i.bu, %i.bv                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.096.0, i64 8
  %i.by = load float, ptr %i.bx, align 4
  %i.bz = load float, ptr %i.c, align 4
  %i.ca = fsub float %i.by, %i.bz                 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.096.0, i64 12
  %i.cc = load float, ptr %i.cb, align 4
  %i.cd = load float, ptr %i.i, align 4
  %i.ce = fsub float %i.cc, %i.cd                 ; 2 uses
  %i.cf = fmul float %i.ca, %i.ca
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.cf)
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cg)
  %i.ci = fcmp olt float %i.ch, %i.bm
  br i1 %i.ci, label %bb.i, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.i:                                             ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.096.0, i64 16
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = icmp eq i32 %i.ck, %2
  br i1 %i.cl, label %bb.j, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.j:                                             ; preds = %bb.i
  %i.cm = load ptr, ptr %i.bo, align 8
  %.not.i = icmp eq ptr %i.bp, %i.cm
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = load i32, ptr %.sroa.096.0, align 4
  store i32 %i.cn, ptr %i.bp, align 4
  %i.co = load ptr, ptr %i.q, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  store ptr %i.cp, ptr %i.q, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.l:                                             ; preds = %bb.j
  %i.cq = load ptr, ptr %4, align 8               ; 4 uses
  %i.cr = ptrtoint ptr %i.bp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 6 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775804
  br i1 %i.cu, label %bb.m, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.cv = ashr exact i64 %i.ct, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i, %i.cv ; 2 uses
  %6 = icmp ult i64 %i.cw, %i.cv
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 2305843009213693951)
  %7 = select i1 %6, i64 2305843009213693951, i64 %i.cx ; 3 uses
  %.not.i.i.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cy = shl nuw nsw i64 %7, 2
  %i.cz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #12 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.ct ; 2 uses
  %i.db = load i32, ptr %.sroa.096.0, align 4
  store i32 %i.db, ptr %i.da, align 4
  %i.dc = icmp sgt i64 %i.ct, 0
  br i1 %i.dc, label %bb.n, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.cq, i64 %i.ct, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.ct) #13
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.cz, ptr %4, align 8
  store ptr %i.dd, ptr %i.q, align 8
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %7
  store ptr %i.de, ptr %i.bo, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.h, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.k, %bb.i
  %i.df = phi ptr [ %i.bp, %bb.h ], [ %i.dd, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.cp, %bb.k ], [ %i.bp, %bb.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.096.0, i64 24 ; 2 uses
  %i.dh = icmp eq ptr %i.w, %i.dg
  br i1 %i.dh, label %.loopexit, label %bb.g, !llvm.loop !12

bb.p:                                             ; preds = %.critedge2
  %.not63 = icmp eq i32 %2, 0
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br i1 %.not63, label %.preheader114, label %.preheader116

.preheader114:                                    ; preds = %bb.p, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit77
  %i.dj = phi ptr [ %i.ew, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit77 ], [ %i.s, %bb.p ] ; 4 uses
  %.sroa.096.1 = phi ptr [ %i.ex, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit77 ], [ %i.bn, %bb.p ] ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.096.1, i64 20
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = fcmp olt float %i.dl, %i.o
  br i1 %i.dm, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %.preheader114
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.096.1, i64 4
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = load float, ptr %1, align 4
  %i.dq = fsub float %i.do, %i.dp                 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.096.1, i64 8
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = load float, ptr %i.c, align 4
  %i.du = fsub float %i.ds, %i.dt                 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.096.1, i64 12
  %i.dw = load float, ptr %i.dv, align 4
  %i.dx = load float, ptr %i.i, align 4
  %i.dy = fsub float %i.dw, %i.dx                 ; 2 uses
  %i.dz = fmul float %i.du, %i.du
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.dz)
  %i.eb = tail call noundef float @llvm.fmuladd.f32(float %i.dy, float %i.dy, float %i.ea)
  %i.ec = fcmp olt float %i.eb, %i.bm
  br i1 %i.ec, label %bb.r, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit77

bb.r:                                             ; preds = %bb.q
  %i.ed = load ptr, ptr %i.di, align 8
  %.not.i70 = icmp eq ptr %i.dj, %i.ed
  br i1 %.not.i70, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = load i32, ptr %.sroa.096.1, align 4
  store i32 %i.ee, ptr %i.dj, align 4
  %i.ef = load ptr, ptr %i.q, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  store ptr %i.eg, ptr %i.q, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit77

bb.t:                                             ; preds = %bb.r
  %i.eh = load ptr, ptr %4, align 8               ; 4 uses
  %i.ei = ptrtoint ptr %i.dj to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 6 uses
  %i.el = icmp eq i64 %i.ek, 9223372036854775804
  br i1 %i.el, label %bb.u, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i71

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i71: ; preds = %bb.t
  %i.em = ashr exact i64 %i.ek, 2                 ; 3 uses
  %.sroa.speculated.i.i.i72 = tail call i64 @llvm.umax.i64(i64 %i.em, i64 1)
  %i.en = add nsw i64 %.sroa.speculated.i.i.i72, %i.em ; 2 uses
  %8 = icmp ult i64 %i.en, %i.em
  %i.eo = tail call i64 @llvm.umin.i64(i64 %i.en, i64 2305843009213693951)
  %9 = select i1 %8, i64 2305843009213693951, i64 %i.eo ; 3 uses
  %.not.i.i.i73 = icmp ne i64 %9, 0
  tail call void @llvm.assume(i1 %.not.i.i.i73)
  %i.ep = shl nuw nsw i64 %9, 2
  %i.eq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #12 ; 4 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.ek ; 2 uses
  %i.es = load i32, ptr %.sroa.096.1, align 4
  store i32 %i.es, ptr %i.er, align 4
  %i.et = icmp sgt i64 %i.ek, 0
  br i1 %i.et, label %bb.v, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i74

bb.v:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i71
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eq, ptr align 4 %i.eh, i64 %i.ek, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i74

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i74: ; preds = %bb.v, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i71
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 2 uses
  %.not.i17.i.i75 = icmp eq ptr %i.eh, null
  br i1 %.not.i17.i.i75, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i76, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i74
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.ek) #13
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i76

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i76: ; preds = %bb.w, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i74
  store ptr %i.eq, ptr %4, align 8
  store ptr %i.eu, ptr %i.q, align 8
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %9
  store ptr %i.ev, ptr %i.di, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit77

_ZNSt6vectorIjSaIjEE9push_backERKj.exit77:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i76, %bb.s, %bb.q
  %i.ew = phi ptr [ %i.eu, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i76 ], [ %i.eg, %bb.s ], [ %i.dj, %bb.q ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.096.1, i64 24 ; 2 uses
  %i.ey = icmp eq ptr %i.w, %i.ex
  br i1 %i.ey, label %.loopexit, label %.preheader114, !llvm.loop !13

.preheader116:                                    ; preds = %bb.p, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit89
  %i.ez = phi ptr [ %i.gp, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit89 ], [ %i.s, %bb.p ] ; 5 uses
  %.sroa.096.2 = phi ptr [ %i.gq, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit89 ], [ %i.bn, %bb.p ] ; 8 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.096.2, i64 20
  %i.fb = load float, ptr %i.fa, align 4
  %i.fc = fcmp olt float %i.fb, %i.o
  br i1 %i.fc, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.preheader116
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.096.2, i64 4
  %i.fe = load float, ptr %i.fd, align 4
  %i.ff = load float, ptr %1, align 4
  %i.fg = fsub float %i.fe, %i.ff                 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.096.2, i64 8
  %i.fi = load float, ptr %i.fh, align 4
  %i.fj = load float, ptr %i.c, align 4
  %i.fk = fsub float %i.fi, %i.fj                 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.096.2, i64 12
  %i.fm = load float, ptr %i.fl, align 4
  %i.fn = load float, ptr %i.i, align 4
  %i.fo = fsub float %i.fm, %i.fn                 ; 2 uses
  %i.fp = fmul float %i.fk, %i.fk
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.fp)
  %i.fr = tail call noundef float @llvm.fmuladd.f32(float %i.fo, float %i.fo, float %i.fq)
  %i.fs = fcmp olt float %i.fr, %i.bm
  br i1 %i.fs, label %bb.y, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit89

bb.y:                                             ; preds = %bb.x
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.096.2, i64 16
  %i.fu = load i32, ptr %i.ft, align 4            ; 2 uses
  %i.fv = and i32 %i.fu, %2
  %.not64 = icmp ne i32 %i.fv, 0
  %.not65 = icmp eq i32 %i.fu, 0
  %or.cond = or i1 %.not65, %.not64
  br i1 %or.cond, label %.critedge8, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit89

.critedge8:                                       ; preds = %bb.y
  %i.fw = load ptr, ptr %i.di, align 8
  %.not.i82 = icmp eq ptr %i.ez, %i.fw
  br i1 %.not.i82, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge8
  %i.fx = load i32, ptr %.sroa.096.2, align 4
  store i32 %i.fx, ptr %i.ez, align 4
  %i.fy = load ptr, ptr %i.q, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4 ; 2 uses
  store ptr %i.fz, ptr %i.q, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit89

bb.aa:                                            ; preds = %.critedge8
  %i.ga = load ptr, ptr %4, align 8               ; 4 uses
  %i.gb = ptrtoint ptr %i.ez to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc                    ; 6 uses
  %i.ge = icmp eq i64 %i.gd, 9223372036854775804
  br i1 %i.ge, label %bb.ab, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i83

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i83: ; preds = %bb.aa
  %i.gf = ashr exact i64 %i.gd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i84 = tail call i64 @llvm.umax.i64(i64 %i.gf, i64 1)
  %i.gg = add nsw i64 %.sroa.speculated.i.i.i84, %i.gf ; 2 uses
  %10 = icmp ult i64 %i.gg, %i.gf
  %i.gh = tail call i64 @llvm.umin.i64(i64 %i.gg, i64 2305843009213693951)
  %11 = select i1 %10, i64 2305843009213693951, i64 %i.gh ; 3 uses
  %.not.i.i.i85 = icmp ne i64 %11, 0
  tail call void @llvm.assume(i1 %.not.i.i.i85)
  %i.gi = shl nuw nsw i64 %11, 2
  %i.gj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #12 ; 4 uses
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %i.gd ; 2 uses
  %i.gl = load i32, ptr %.sroa.096.2, align 4
  store i32 %i.gl, ptr %i.gk, align 4
  %i.gm = icmp sgt i64 %i.gd, 0
  br i1 %i.gm, label %bb.ac, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i86

bb.ac:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i83
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gj, ptr align 4 %i.ga, i64 %i.gd, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i86

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i86: ; preds = %bb.ac, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i83
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 4 ; 2 uses
  %.not.i17.i.i87 = icmp eq ptr %i.ga, null
  br i1 %.not.i17.i.i87, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i88, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i86
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gd) #13
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i88

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i88: ; preds = %bb.ad, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i86
  store ptr %i.gj, ptr %4, align 8
  store ptr %i.gn, ptr %i.q, align 8
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %11
  store ptr %i.go, ptr %i.di, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit89

_ZNSt6vectorIjSaIjEE9push_backERKj.exit89:        ; preds = %bb.y, %bb.x, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i88, %bb.z
  %i.gp = phi ptr [ %i.ez, %bb.y ], [ %i.ez, %bb.x ], [ %i.gn, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i88 ], [ %i.fz, %bb.z ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.096.2, i64 24 ; 2 uses
  %i.gr = icmp eq ptr %i.w, %i.gq
  br i1 %i.gr, label %.loopexit, label %.preheader116, !llvm.loop !14

.loopexit:                                        ; preds = %.preheader116, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit89, %.preheader114, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit77, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.g, %bb.c, %bb.b, %_ZNSt6vectorIjSaIjEE5clearEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %.sroa.013.i.i = alloca { i32, %class.aiVector3t, i32 }, align 8 ; 4 uses
  %3 = alloca %"struct.Assimp::SGSpatialSort::Entry", align 4 ; 4 uses
  %4 = alloca %"struct.Assimp::SGSpatialSort::Entry", align 4 ; 4 uses
  %5 = alloca %"struct.Assimp::SGSpatialSort::Entry", align 4 ; 4 uses
  %6 = alloca %"struct.Assimp::SGSpatialSort::Entry", align 4 ; 4 uses
  %7 = alloca %"struct.Assimp::SGSpatialSort::Entry", align 4 ; 4 uses
  %8 = alloca %"struct.Assimp::SGSpatialSort::Entry", align 4 ; 4 uses
  %9 = alloca %"struct.Assimp::SGSpatialSort::Entry", align 4 ; 4 uses
  %.sroa.05.i.i.i = alloca { i32, %class.aiVector3t, i32 }, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit
  %i.i = icmp eq i64 %i.cd, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph43, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa39 = phi i64 [ %i.c, %.lr.ph ], [ %i.db, %bb.b ]
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.lcssa39, 24             ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %i.j, 1
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %._crit_edge
  %.07.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %.07.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.013.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.t, i64 20, i1 false)
  %.sroa.416.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.416.0.copyload.i.i = load float, ptr %.sroa.416.0..sroa.0.0..sroa_idx.i.i, align 4 ; 2 uses
  %i.u = icmp slt i64 %.07.i.i, %i.n
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.07.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [24 x i8], ptr %0, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [24 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = fcmp olt float %i.ab, %i.ad
  %spec.select.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ag = getelementptr inbounds [24 x i8], ptr %0, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ag, ptr noundef nonnull align 4 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.ah = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.ah, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !16

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.07.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.ai, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.s, ptr noundef nonnull align 4 dereferenceable(24) %i.r, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i, %.07.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.am = load float, ptr %i.al, align 4
  %i.an = fcmp olt float %i.am, %.sroa.416.0.copyload.i.i
  br i1 %i.an, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ao, ptr noundef nonnull align 4 dereferenceable(24) %i.ak, i64 24, i1 false)
  %i.ap = icmp sgt i64 %.0919.i.i.i.i, %.07.i.i
  br i1 %i.ap, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !17

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i11, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i11 ]
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i10 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aq, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.013.i.i, i64 20, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  store float %.sroa.416.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013.i.i)
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.ar = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !18

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.as, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i ], [ %storemerge19.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp13SGSpatialSort5EntryESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.05.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.as, i64 20, i1 false)
  %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4
  %.sroa.48.0.copyload.i.i.i = load float, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, align 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.as, ptr noundef nonnull align 4 dereferenceable(24) %0, i64 24, i1 false)
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.a                     ; 3 uses
  %i.av = sdiv exact i64 %i.au, 24                ; 3 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = sdiv i64 %i.aw, 2
  %i.ay = icmp sgt i64 %i.au, 48
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.az = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = fcmp olt float %i.bf, %i.bh
  %spec.select.i.i.i.i = select i1 %i.bi, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bj = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bk = getelementptr inbounds [24 x i8], ptr %0, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bk, ptr noundef nonnull align 4 dereferenceable(24) %i.bj, i64 24, i1 false)
  %i.bl = icmp slt i64 %spec.select.i.i.i.i, %i.ax
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !16

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
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bs
  %i.bu = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bu, ptr noundef nonnull align 4 dereferenceable(24) %i.bt, i64 24, i1 false)
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
end_hunk_0
