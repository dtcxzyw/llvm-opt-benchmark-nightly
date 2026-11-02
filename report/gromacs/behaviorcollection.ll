Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/behaviorcollection?download=true
inline.NumInlined: 88
inline.NumDeleted: 53
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

@_ZTVN3gmx16IOptionsBehaviorE = local_unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN3gmx16IOptionsBehaviorE, ptr @_ZN3gmx16IOptionsBehaviorD1Ev, ptr @_ZN3gmx16IOptionsBehaviorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN3gmx16IOptionsBehaviorE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3gmx16IOptionsBehaviorE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx16IOptionsBehaviorE = constant [25 x i8] c"N3gmx16IOptionsBehaviorE\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN3gmx16IOptionsBehaviorD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx16IOptionsBehaviorD2Ev
@_ZN3gmx25OptionsBehaviorCollectionC1EPNS_7OptionsE = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx25OptionsBehaviorCollectionC2EPNS_7OptionsE
@_ZN3gmx25OptionsBehaviorCollectionD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx25OptionsBehaviorCollectionD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN3gmx16IOptionsBehaviorD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN3gmx16IOptionsBehaviorD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx25OptionsBehaviorCollectionC2EPNS_7OptionsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx25OptionsBehaviorCollectionD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN3gmx16IOptionsBehaviorEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN3gmx16IOptionsBehaviorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN3gmx16IOptionsBehaviorEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN3gmx16IOptionsBehaviorEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !39
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #15, !inline_history !35
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #15, !inline_history !35
  br label %_ZSt8_DestroyISt10shared_ptrIN3gmx16IOptionsBehaviorEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN3gmx16IOptionsBehaviorEEEvPT_.exit.i.i.i, !prof !40

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #15
  br label %_ZSt8_DestroyISt10shared_ptrIN3gmx16IOptionsBehaviorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN3gmx16IOptionsBehaviorEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN3gmx16IOptionsBehaviorEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !36

_ZSt8_DestroyIPSt10shared_ptrIN3gmx16IOptionsBehaviorEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN3gmx16IOptionsBehaviorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPSt10shared_ptrIN3gmx16IOptionsBehaviorEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN3gmx16IOptionsBehaviorEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN3gmx16IOptionsBehaviorEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN3gmx16IOptionsBehaviorEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN3gmx16IOptionsBehaviorEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #16
  br label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN3gmx16IOptionsBehaviorEES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx25OptionsBehaviorCollection11addBehaviorERKSt10shared_ptrINS_16IOptionsBehaviorEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 4
  %i.i = add nsw i64 %i.h, 1                      ; 4 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.f
  %i.o = ashr exact i64 %i.n, 4
  %i.p = icmp ult i64 %i.o, %i.i
  br i1 %i.p, label %_ZNSt12_Vector_baseISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.q = shl nuw nsw i64 %i.i, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #18 ; 6 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_M_allocateEm.exit.i
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = ptrtoaddr ptr %i.s to i64
  %i.w = add i64 %i.u, -16
  %i.x = sub i64 %i.w, %i.v                       ; 2 uses
  %i.y = lshr i64 %i.x, 4
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 2305843009213693948      ; 3 uses
  %i.aa = shl i64 %n.vec, 4                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 4                       ; 2 uses
  %next.gep.a = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep9.a = getelementptr i8, ptr %i.s, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %wide.vec = load <8 x ptr>, ptr %next.gep9.a, align 8, !tbaa !28, !alias.scope !47
  store <8 x ptr> %wide.vec, ptr %next.gep.a, align 8, !tbaa !28, !alias.scope !46
  store <8 x ptr> splat (ptr null), ptr %next.gep9.a, align 8, !tbaa !28, !alias.scope !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.preheader12

.lr.ph.i.i.i.i.preheader12:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader12, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader12 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ag = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !28, !alias.scope !47
  store ptr null, ptr %i.af, align 8, !tbaa !21, !alias.scope !47
  store <2 x ptr> %i.ag, ptr %.012.i.i.i.i, align 8, !tbaa !28, !alias.scope !46
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !33, !alias.scope !47
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.t
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !45

_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.s to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.am) #16
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g
  store ptr %i.an, ptr %i.b, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.i
  store ptr %i.ao, ptr %i.k, align 8, !tbaa !27
  br label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.ap = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !16
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef %i.aq)
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !18  ; 5 uses
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.au, %i.av
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE7reserveEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %i.ay = load <2 x ptr>, ptr %1, align 8, !tbaa !28
  store <2 x ptr> %i.ay, ptr %i.au, align 8, !tbaa !28
  %.not.i.i.i.i3 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i3, label %_ZNSt10shared_ptrIN3gmx16IOptionsBehaviorEEC2ERKS2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !25
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !25
  br label %_ZNSt10shared_ptrIN3gmx16IOptionsBehaviorEEC2ERKS2_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bd = atomicrmw volatile add ptr %i.az, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !18
  br label %_ZNSt10shared_ptrIN3gmx16IOptionsBehaviorEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN3gmx16IOptionsBehaviorEEC2ERKS2_.exit.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.be = phi ptr [ %i.au, %bb.e ], [ %i.au, %bb.g ], [ %.pre.i, %bb.h ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !18
  br label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE9push_backERKS3_.exit

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE7reserveEm.exit
  tail call void @_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.au, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt10shared_ptrIN3gmx16IOptionsBehaviorEEC2ERKS2_.exit.i, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx25OptionsBehaviorCollection16optionsFinishingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08, align 8, !tbaa !33 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx25OptionsBehaviorCollection15optionsFinishedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.i, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08, align 8, !tbaa !33 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @__cxa_pure_virtual() unnamed_addr

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !inline_history !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !inline_history !48
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !28
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !28
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN3gmx16IOptionsBehaviorEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !25
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !25
  br label %_ZNSt10shared_ptrIN3gmx16IOptionsBehaviorEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN3gmx16IOptionsBehaviorEEC2ERKS2_.exit

_ZNSt10shared_ptrIN3gmx16IOptionsBehaviorEEC2ERKS2_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt10shared_ptrIN3gmx16IOptionsBehaviorEEC2ERKS2_.exit
  %i.z = add i64 %i.m, -16
  %i.aa = sub i64 %i.z, %i.e                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ac, 2305843009213693948     ; 3 uses
  %i.ad = shl i64 %n.vec, 4                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.p, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 4                       ; 2 uses
  %next.gep.a = getelementptr i8, ptr %i.p, i64 %i.ag
  %next.gep37.a = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %wide.vec = load <8 x ptr>, ptr %next.gep37.a, align 8, !tbaa !28, !alias.scope !60
  store <8 x ptr> %wide.vec, ptr %next.gep.a, align 8, !tbaa !28, !alias.scope !59
  store <8 x ptr> splat (ptr null), ptr %next.gep37.a, align 8, !tbaa !28, !alias.scope !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader69

.lr.ph.i.i.i.preheader69:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader69, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader69 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader69 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !28, !alias.scope !60
  store ptr null, ptr %i.ai, align 8, !tbaa !21, !alias.scope !60
  store <2 x ptr> %i.aj, ptr %.012.i.i.i, align 8, !tbaa !28, !alias.scope !59
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !33, !alias.scope !60
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !53

_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNSt10shared_ptrIN3gmx16IOptionsBehaviorEEC2ERKS2_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt10shared_ptrIN3gmx16IOptionsBehaviorEEC2ERKS2_.exit ], [ %i.ae, %middle.block ], [ %i.al, %.lr.ph.i.i.i ] ; 4 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 6 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, label %.lr.ph.i.i.i18.preheader

.lr.ph.i.i.i18.preheader:                         ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.an = add i64 %i.d, -16
  %i.ao = sub i64 %i.an, %i.m                     ; 3 uses
  %i.ap = lshr i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check49 = icmp ult i64 %i.ao, 304
  br i1 %min.iters.check49, label %.lr.ph.i.i.i18.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i18.preheader
  %i.ar = and i64 %i.ao, -16                      ; 4 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 24
  %i.au = getelementptr i8, ptr %1, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = getelementptr i8, ptr %1, i64 8
  %i.ax = getelementptr i8, ptr %1, i64 %i.ar
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %i.az = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.ba = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  %bound0 = icmp ult ptr %i.am, %i.av
  %bound1 = icmp ult ptr %1, %i.at
  %found.conflict = and i1 %bound0, %bound1
  %bound050 = icmp ult ptr %i.aw, %i.bb
  %bound151 = icmp ult ptr %i.az, %i.ay
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx = or i1 %found.conflict, %found.conflict52
  br i1 %conflict.rdx, label %.lr.ph.i.i.i18.preheader68, label %vector.ph53

vector.ph53:                                      ; preds = %vector.memcheck
  %n.vec54 = and i64 %i.aq, 2305843009213693948   ; 3 uses
  %i.bc = shl i64 %n.vec54, 4                     ; 2 uses
  %i.bd = getelementptr i8, ptr %i.am, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %1, i64 %i.bc
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph53
  %index56 = phi i64 [ 0, %vector.ph53 ], [ %index.next63, %vector.body55 ] ; 2 uses
  %i.bf = shl i64 %index56, 4                     ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.am, i64 %i.bf
  %next.gep58 = getelementptr i8, ptr %1, i64 %i.bf ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %wide.vec59 = load <8 x ptr>, ptr %next.gep58, align 8, !tbaa !28, !alias.scope !62
  store <8 x ptr> %wide.vec59, ptr %next.gep57, align 8, !tbaa !28, !alias.scope !61
  store <8 x ptr> splat (ptr null), ptr %next.gep58, align 8, !tbaa !28, !alias.scope !62
  %index.next63 = add nuw i64 %index56, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next63, %n.vec54
  br i1 %i.bg, label %middle.block64, label %vector.body55, !llvm.loop !57

middle.block64:                                   ; preds = %vector.body55
  %cmp.n65 = icmp eq i64 %i.aq, %n.vec54
  br i1 %cmp.n65, label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, label %.lr.ph.i.i.i18.preheader68

.lr.ph.i.i.i18.preheader68:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i18.preheader, %middle.block64
  %.012.i.i.i19.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i18.preheader ], [ %i.bd, %middle.block64 ]
  %.0911.i.i.i20.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i18.preheader ], [ %i.be, %middle.block64 ]
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.i.i.i18.preheader68, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.bk, %.lr.ph.i.i.i18 ], [ %.012.i.i.i19.ph, %.lr.ph.i.i.i18.preheader68 ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.bj, %.lr.ph.i.i.i18 ], [ %.0911.i.i.i20.ph, %.lr.ph.i.i.i18.preheader68 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.bi = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !28, !alias.scope !62
  store ptr null, ptr %i.bh, align 8, !tbaa !21, !alias.scope !62
  store <2 x ptr> %i.bi, ptr %.012.i.i.i19, align 8, !tbaa !28, !alias.scope !61
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !33, !alias.scope !62
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bj, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !58

_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23: ; preds = %.lr.ph.i.i.i18, %middle.block64, %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.am, %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.bd, %middle.block64 ], [ %i.bk, %.lr.ph.i.i.i18 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !27
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bo) #16
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !17
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTSN3gmx7OptionsE", !8, i64 0}
!10 = !{!"p1 _ZTSSt10shared_ptrIN3gmx16IOptionsBehaviorEE", !8, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE12_Vector_implE", !11, i64 0}
!13 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE", !12, i64 0}
!14 = !{!"_ZTSSt6vectorISt10shared_ptrIN3gmx16IOptionsBehaviorEESaIS3_EE", !13, i64 0}
!15 = !{!"_ZTSN3gmx25OptionsBehaviorCollectionE", !9, i64 0, !14, i64 8}
!16 = !{!15, !9, i64 0}
!17 = !{!11, !10, i64 0}
!18 = !{!11, !10, i64 8}
!19 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!20 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"vtable pointer", !3, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!4, !4, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!11, !10, i64 16}
!28 = !{!8, !8, i64 0}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"p1 _ZTSN3gmx16IOptionsBehaviorE", !8, i64 0}
!32 = !{!"_ZTSSt12__shared_ptrIN3gmx16IOptionsBehaviorELN9__gnu_cxx12_Lock_policyE2EE", !31, i64 0, !20, i64 8}
!33 = !{!32, !31, i64 0}
!34 = !{!10, !10, i64 0}
!35 = distinct !{null, null, null, null, null, null, null}
!36 = distinct !{!36, !26}
!37 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!38 = !{!37, !5, i64 8}
!39 = !{!37, !5, i64 12}
!40 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!41 = distinct !{!41, i1 true, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gmx16IOptionsBehaviorEES3_SaIS3_EEvPT_PT0_RT1_"}
!42 = distinct !{!42, !41, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gmx16IOptionsBehaviorEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!43 = distinct !{!43, !41, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gmx16IOptionsBehaviorEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!44 = distinct !{!44, !26, !29, !30}
!45 = distinct !{!45, !26, !30, !29}
!46 = !{!42}
!47 = !{!43}
!48 = distinct !{null}
!49 = distinct !{!49, i1 true, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gmx16IOptionsBehaviorEES3_SaIS3_EEvPT_PT0_RT1_"}
!50 = distinct !{!50, !49, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gmx16IOptionsBehaviorEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!51 = distinct !{!51, !49, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gmx16IOptionsBehaviorEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!52 = distinct !{!52, !26, !29, !30}
!53 = distinct !{!53, !26, !30, !29}
!54 = distinct !{!54, i1 true, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gmx16IOptionsBehaviorEES3_SaIS3_EEvPT_PT0_RT1_"}
!55 = distinct !{!55, !54, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gmx16IOptionsBehaviorEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!56 = distinct !{!56, !54, !"_ZSt19__relocate_object_aISt10shared_ptrIN3gmx16IOptionsBehaviorEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!57 = distinct !{!57, !26, !29, !30}
!58 = distinct !{!58, !26, !29}
!59 = !{!50}
!60 = !{!51}
!61 = !{!55}
!62 = !{!56}
end_hunk_0
