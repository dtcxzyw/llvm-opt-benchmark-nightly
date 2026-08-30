Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/block?download=true
inline.NumInlined: 438
inline.NumDeleted: 168
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<Constraint *, std::allocator<Constraint *>>::_Vector_impl" }
%"struct.std::_Vector_base<Constraint *, std::allocator<Constraint *>>::_Vector_impl" = type { %"struct.std::_Vector_base<Constraint *, std::allocator<Constraint *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Constraint *, std::allocator<Constraint *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { ptr }

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPP10ConstraintSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS2_SC_EEEEvT_SG_RT0_ = comdat any

$_ZNSt6vectorIP10ConstraintSaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag = comdat any

@blockTimeCtr = external local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [7 x i8] c"Block:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" Deleted!\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN5BlockC1EP8Variable = unnamed_addr alias void (ptr, ptr), ptr @_ZN5BlockC2EP8Variable

; Function Attrs: mustprogress uwtable
define void @_ZN5Block11addVariableEP8Variable(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef initializes((32, 40)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %0, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !20
  br label %_ZNSt6vectorIP8VariableSaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !26     ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIP8VariableSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
  unreachable

_ZNKSt6vectorIP8VariableSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #13 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !24
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIP8VariableSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIP8VariableSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIP8VariableSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP8VariableSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIP8VariableSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP8VariableSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP8VariableSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #14
  br label %_ZNSt6vectorIP8VariableSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP8VariableSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIP8VariableSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !26
  store ptr %i.u, ptr %i.b, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.d, align 8, !tbaa !23
  br label %_ZNSt6vectorIP8VariableSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP8VariableSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIP8VariableSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !27 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !28
  %i.ad = fadd double %i.aa, %i.ac                ; 2 uses
  store double %i.ad, ptr %i.ab, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !35
  %i.ai = fsub double %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !36
  %i.al = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ai, double %i.ak) ; 2 uses
  store double %i.al, ptr %i.aj, align 8, !tbaa !36
  %i.am = fdiv double %i.al, %i.ad
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.am, ptr %i.an, align 8, !tbaa !37
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress uwtable
define void @_ZN5BlockC2EP8Variable(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 49), (56, 112)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.not = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %0, i8 0, i64 49, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !35
  invoke void @_ZN5Block11addVariableEP8Variable(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %1)
          to label %bb.g unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #14
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit

_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit:      ; preds = %bb.c, %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #14
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit6

_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit6:     ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit, %bb.e
  %i.r = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIP8VariableSaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #14
  br label %_ZNSt6vectorIP8VariableSaIS1_EED2Ev.exit

_ZNSt6vectorIP8VariableSaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit6, %bb.f
  resume { ptr, i32 } %i.e

bb.g:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZN5Block23desiredWeightedPositionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %.not11 = icmp eq ptr %i.a, %i.c
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.l, %.lr.ph ]
  ret double %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi double [ %i.l, %.lr.ph ], [ 0.000000e+00, %bb.a ]
  %.sroa.08.012 = phi ptr [ %i.m, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.08.012, align 8, !tbaa !24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !35
  %i.i = fsub double %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !27
  %i.l = tail call double @llvm.fmuladd.f64(double %i.i, double %i.k, double %.013) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN5Block18setUpInConstraintsEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(112) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN5Block19setUpConstraintHeapEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %1, ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext true)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = load <2 x ptr>, ptr %1, align 16, !tbaa !41
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !39
  store ptr %i.g, ptr %i.c, align 8, !tbaa !39
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.j) #14
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit

_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit:      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Block19setUpConstraintHeapEb(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(112) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %.not34 = icmp eq ptr %i.a, %i.c
  br i1 %.not34, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.a
  %.v = select i1 %2, i64 48, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge38:                                    ; preds = %._crit_edge, %bb.a
  %.val18 = phi ptr [ null, %bb.a ], [ %i.n, %._crit_edge ]
  %.val = phi ptr [ null, %bb.a ], [ %.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr @_ZL2gtPK10ConstraintS1_, ptr %3, align 8, !tbaa !42
  invoke void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPP10ConstraintSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS2_SC_EEEEvT_SG_RT0_(ptr %.val, ptr %.val18, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.j

bb.b:                                             ; preds = %.lr.ph37, %._crit_edge
  %i.f = phi ptr [ null, %.lr.ph37 ], [ %i.m, %._crit_edge ] ; 2 uses
  %i.g = phi ptr [ null, %.lr.ph37 ], [ %i.n, %._crit_edge ] ; 2 uses
  %.promoted = phi ptr [ null, %.lr.ph37 ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.026.035 = phi ptr [ %i.a, %.lr.ph37 ], [ %i.o, %._crit_edge ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.026.035, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %.not2932 = icmp eq ptr %i.j, %i.l
  br i1 %.not2932, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit, %bb.b
  %i.m = phi ptr [ %i.f, %bb.b ], [ %i.au, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ]
  %i.n = phi ptr [ %i.g, %bb.b ], [ %i.av, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.lcssa = phi ptr [ %.promoted, %bb.b ], [ %i.aw, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  store ptr %.lcssa, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.026.035, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.c
  br i1 %.not, label %._crit_edge38, label %bb.b

.lr.ph:                                           ; preds = %bb.b, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit
  %i.p = phi ptr [ %i.au, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ], [ %i.f, %bb.b ] ; 4 uses
  %i.q = phi ptr [ %i.av, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ], [ %i.g, %bb.b ] ; 4 uses
  %.sroa.022.033 = phi ptr [ %i.ax, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ], [ %i.j, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.aw, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ], [ %.promoted, %bb.b ] ; 10 uses
  %i.s = load ptr, ptr %.sroa.022.033, align 8, !tbaa !44 ; 5 uses
  %i.t = load i64, ptr @blockTimeCtr, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %i.t, ptr %i.u, align 8, !tbaa !47
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.y = icmp ne ptr %i.x, %1
  %or.cond = and i1 %2, %i.y
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.ad = icmp eq ptr %i.ac, %1
  %or.cond3 = or i1 %2, %i.ad
  br i1 %or.cond3, label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.not.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.s, ptr %i.q, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.d, align 8, !tbaa !51
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %i.p to i64
  %i.ag = ptrtoint ptr %i.r to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.g, label %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.r, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #13
          to label %.noexc19 unwind label %.loopexit ; 4 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store ptr %i.s, ptr %i.aq, align 8, !tbaa !44
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.h, label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.h:                                             ; preds = %.noexc19
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %i.r, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.h, %.noexc19
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ah) #14
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.as, ptr %i.d, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an ; 2 uses
  store ptr %i.at, ptr %i.e, align 8, !tbaa !39
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %0, align 8
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.e, %bb.c
  %i.au = phi ptr [ %i.at, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.p, %bb.e ], [ %i.p, %bb.c ] ; 2 uses
  %i.av = phi ptr [ %i.as, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ae, %bb.e ], [ %i.q, %bb.c ] ; 2 uses
  %i.aw = phi ptr [ %i.ap, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.r, %bb.e ], [ %i.r, %bb.c ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.022.033, i64 8 ; 2 uses
  %.not29 = icmp eq ptr %i.ax, %i.l
  br i1 %.not29, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %._crit_edge38
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %0, align 8, !tbaa !38
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %i.az = phi ptr [ %.pre, %bb.j ], [ %i.r, %.loopexit ], [ %i.r, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i20 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #14
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit

_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit:      ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Block19setUpOutConstraintsEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(112) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN5Block19setUpConstraintHeapEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %1, ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = load <2 x ptr>, ptr %1, align 16, !tbaa !41
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !39
  store ptr %i.g, ptr %i.c, align 8, !tbaa !39
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.j) #14
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit

_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit:      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Block5mergeEPS_P10Constraint(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((40, 41)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !35
  %i.e = load ptr, ptr %2, align 8, !tbaa !49     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !35
  %i.h = fsub double %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !52
  %i.k = fsub double %i.h, %i.j                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.r = load ptr, ptr %0, align 8, !tbaa !26
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.x = load ptr, ptr %1, align 8, !tbaa !26
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.u, %i.aa
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5Block5mergeEPS_P10Constraintd(ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef %i.m, ptr noundef nonnull %2, double noundef %i.k)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ac = fneg double %i.k
  tail call void @_ZN5Block5mergeEPS_P10Constraintd(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef %i.o, ptr noundef nonnull %2, double noundef %i.ac)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Block5mergeEPS_P10Constraintd(ptr noundef nonnull align 8 dereferenceable(112) initializes((24, 32)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((40, 41)) %2, double noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 1, ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load double, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load double, ptr %i.d, align 8, !tbaa !28 ; 2 uses
  %i.f = fneg double %3
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.e, double %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !36
  %i.j = fadd double %i.i, %i.g                   ; 2 uses
  store double %i.j, ptr %i.h, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !28
  %i.m = fadd double %i.e, %i.l                   ; 2 uses
  store double %i.m, ptr %i.k, align 8, !tbaa !28
  %i.n = fdiv double %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.n, ptr %i.o, align 8, !tbaa !37
  %i.p = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %.not15 = icmp eq ptr %i.p, %i.r
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !20
  %.pre17 = load ptr, ptr %i.t, align 8, !tbaa !23
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIP8VariableSaIS1_EE9push_backERKS1_.exit, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 1, ptr %i.u, align 8, !tbaa !54
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIP8VariableSaIS1_EE9push_backERKS1_.exit
  %i.v = phi ptr [ %.pre17, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIP8VariableSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.w = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIP8VariableSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.sroa.012.016 = phi ptr [ %i.p, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIP8VariableSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.012.016, align 8, !tbaa !24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %0, ptr %i.y, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !35
  %i.ab = fadd double %3, %i.aa
  store double %i.ab, ptr %i.z, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.w, %i.v
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.x, ptr %i.w, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !20
  br label %_ZNSt6vectorIP8VariableSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %0, align 8, !tbaa !26    ; 4 uses
  %i.ae = ptrtoint ptr %i.v to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.e, label %_ZNKSt6vectorIP8VariableSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
  unreachable

_ZNKSt6vectorIP8VariableSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #13 ; 4 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store ptr %i.x, ptr %i.ap, align 8, !tbaa !24
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.f, label %_ZNSt6vectorIP8VariableSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIP8VariableSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIP8VariableSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP8VariableSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIP8VariableSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP8VariableSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP8VariableSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.au) #14
  br label %_ZNSt6vectorIP8VariableSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP8VariableSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP8VariableSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ao, ptr %0, align 8, !tbaa !26
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 2 uses
  store ptr %i.av, ptr %i.t, align 8, !tbaa !23
  br label %_ZNSt6vectorIP8VariableSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP8VariableSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIP8VariableSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.aw = phi ptr [ %i.v, %bb.c ], [ %i.av, %_ZNSt6vectorIP8VariableSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ax = phi ptr [ %i.ac, %bb.c ], [ %i.ar, %_ZNSt6vectorIP8VariableSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.r
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Block7mergeInEPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZN5Block19findMinInConstraintEv(ptr noundef nonnull align 8 dereferenceable(112) %0) ; 0 uses
  %i.b = tail call noundef ptr @_ZN5Block19findMinInConstraintEv(ptr noundef nonnull align 8 dereferenceable(112) %1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.e = getelementptr i8, ptr %1, i64 72
  %.val3 = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  tail call void @_ZNSt6vectorIP10ConstraintSaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.l, ptr %.val, ptr %.val3)
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !41
  %.val7.i = load ptr, ptr %i.f, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr @_ZL2gtPK10ConstraintS1_, ptr %2, align 8, !tbaa !42
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPP10ConstraintSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS2_SC_EEEEvT_SG_RT0_(ptr %i.m, ptr %.val7.i, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5Block19findMinInConstraintEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !41   ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit
  %i.f = phi ptr [ %i.al, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ], [ %i.d, %bb.a ]
  %i.g = phi ptr [ %i.ak, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.13.064 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ], [ null, %bb.a ] ; 7 uses
  %.sroa.9.063 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.024.062 = phi ptr [ %.sroa.024.1, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ], [ null, %bb.a ] ; 9 uses
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !44 ; 5 uses
  %i.h = load ptr, ptr %.val.val, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.o = icmp eq ptr %i.j, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZL9deleteMinRSt6vectorIP10ConstraintSaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit

.loopexit42:                                      ; preds = %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit44 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp43:                             ; preds = %bb.g
  %lpad.loopexit.split-lp45 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.c:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.val.val, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !55
  %i.t = icmp slt i64 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL9deleteMinRSt6vectorIP10ConstraintSaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %.not.i = icmp eq ptr %.sroa.9.063, %.sroa.13.064
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.val.val, ptr %.sroa.9.063, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.9.063, i64 8
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.v = ptrtoint ptr %.sroa.13.064 to i64
  %i.w = ptrtoint ptr %.sroa.024.062 to i64
  %i.x = sub i64 %i.v, %i.w                       ; 6 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.g, label %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
          to label %.noexc unwind label %.loopexit.split-lp43

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #13
          to label %.noexc15 unwind label %.loopexit42 ; 4 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.x ; 2 uses
  store ptr %.val.val, ptr %i.ag, align 8, !tbaa !44
  %i.ah = icmp sgt i64 %i.x, 0
  br i1 %i.ah, label %bb.h, label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.h:                                             ; preds = %.noexc15
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %.sroa.024.062, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.h, %.noexc15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.024.062, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.024.062, i64 noundef %i.x) #14
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.e
  %.sroa.024.1 = phi ptr [ %.sroa.024.062, %bb.b ], [ %.sroa.024.062, %bb.e ], [ %i.af, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.063, %bb.b ], [ %i.u, %bb.e ], [ %i.ai, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.064, %bb.b ], [ %.sroa.13.064, %bb.e ], [ %i.aj, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !41  ; 3 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !41  ; 3 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.thread, label %.lr.ph

_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.thread: ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit, %bb.c
  %.pre.i87 = phi ptr [ %i.g, %bb.c ], [ %i.ak, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.an = phi ptr [ %i.f, %bb.c ], [ %i.al, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.024.0.lcssa = phi ptr [ %.sroa.024.062, %bb.c ], [ %.sroa.024.1, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ] ; 6 uses
  %.sroa.9.0.lcssa = phi ptr [ %.sroa.9.063, %bb.c ], [ %.sroa.9.1, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.13.0.lcssa = phi ptr [ %.sroa.13.064, %bb.c ], [ %.sroa.13.1, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %.not73 = icmp eq ptr %.sroa.024.0.lcssa, %.sroa.9.0.lcssa
  br i1 %.not73, label %._crit_edge, label %.lr.ph75

.lr.ph75:                                         ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.pre = load ptr, ptr %i.ao, align 8, !tbaa !39
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre88.a = load ptr, ptr %i.a, align 8, !tbaa !41
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.thread
  %.sroa.13.0.lcssa128 = phi ptr [ %.sroa.13.0.lcssa, %._crit_edge.loopexit ], [ %.sroa.13.0.lcssa, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.thread ], [ null, %bb.a ]
  %.sroa.024.0.lcssa127 = phi ptr [ %.sroa.024.0.lcssa, %._crit_edge.loopexit ], [ %.sroa.024.0.lcssa, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.thread ], [ null, %bb.a ] ; 3 uses
  %i.ap = phi ptr [ %.pre89, %._crit_edge.loopexit ], [ %i.an, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.thread ], [ %i.d, %bb.a ]
  %i.aq = phi ptr [ %.pre88.a, %._crit_edge.loopexit ], [ %.pre.i87, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.thread ], [ %i.c, %bb.a ] ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %bb.ab, label %bb.aa

bb.j:                                             ; preds = %.lr.ph75, %.loopexit
  %.pre.i = phi ptr [ %.pre.i87, %.lr.ph75 ], [ %.pre.i85, %.loopexit ]
  %i.as = phi ptr [ %.pre, %.lr.ph75 ], [ %i.br, %.loopexit ] ; 3 uses
  %i.at = phi ptr [ %i.an, %.lr.ph75 ], [ %.pre89, %.loopexit ] ; 3 uses
  %.sroa.021.074 = phi ptr [ %.sroa.024.0.lcssa, %.lr.ph75 ], [ %i.hx, %.loopexit ] ; 2 uses
  %i.au = load ptr, ptr %.sroa.021.074, align 8, !tbaa !44 ; 3 uses
  %i.av = load i64, ptr @blockTimeCtr, align 8, !tbaa !46
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.at, %i.as
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.au, ptr %i.at, align 8, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !38  ; 4 uses
  %i.az = ptrtoint ptr %i.as to i64
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 5 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.m, label %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bd = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #13
          to label %.noexc17 unwind label %.loopexit41 ; 5 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store ptr %i.au, ptr %i.bk, align 8, !tbaa !44
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %bb.n, label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.n:                                             ; preds = %.noexc17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr align 8 %i.ay, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.n, %.noexc17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.bn = load ptr, ptr %i.ao, align 8, !tbaa !39
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bp) #14
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !38
  store ptr %i.bm, ptr %i.b, align 8, !tbaa !51
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh ; 2 uses
  store ptr %i.bq, ptr %i.ao, align 8, !tbaa !39
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.k
  %.pre.i85 = phi ptr [ %.pre.i, %bb.k ], [ %i.bj, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 9 uses
  %i.br = phi ptr [ %i.as, %bb.k ], [ %i.bq, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %.pre89 = phi ptr [ %i.ax, %bb.k ], [ %i.bm, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %.pre89, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !44 ; 5 uses
  %i.bu = ptrtoint ptr %.pre89 to i64
  %i.bv = ptrtoint ptr %.pre.i85 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3                 ; 2 uses
  %i.by = add nsw i64 %i.bx, -1                   ; 4 uses
  %i.bz = icmp sgt i64 %i.bx, 1
  br i1 %i.bz, label %.lr.ph.i.i.preheader.i, label %.loopexit

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !49 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !8  ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !55
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !47
  %i.ci = icmp sgt i64 %i.cf, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  br i1 %i.ci, label %.lr.ph.i.i.us.i, label %.lr.ph.i.i.preheader.split.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.i.preheader.i, %bb.r
  %.019.i.i.us.i = phi i64 [ %.0920.i67.i.us.i, %bb.r ], [ %i.by, %.lr.ph.i.i.preheader.i ] ; 5 uses
  %.0920.in.i.i.us.i = add nsw i64 %.019.i.i.us.i, -1
  %.0920.i67.i.us.i = lshr i64 %.0920.in.i.i.us.i, 1 ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i85, i64 %.0920.i67.i.us.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !44 ; 6 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !49 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !8  ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !55
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !47
  %i.cv = icmp sgt i64 %i.cs, %i.cu
  br i1 %i.cv, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.us.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !50 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !8  ; 2 uses
  %i.da = icmp eq ptr %i.cq, %i.cz
  br i1 %i.da, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dc = load double, ptr %i.db, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.de = load double, ptr %i.dd, align 8, !tbaa !35
  %i.df = fadd double %i.dc, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !52
  %i.di = fsub double %i.df, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !37
  %i.dl = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !35
  %i.dn = fadd double %i.dk, %i.dm
  %i.do = fsub double %i.di, %i.dn                ; 2 uses
  %i.dp = fcmp oeq double %i.do, f0xFFEFFFFFFFFFFFFF
  br i1 %i.dp, label %.thread.i, label %_ZL2gtPK10ConstraintS1_.exit.us.i

_ZL2gtPK10ConstraintS1_.exit.us.i:                ; preds = %bb.q
  %i.dq = fcmp ogt double %i.do, f0xFFEFFFFFFFFFFFFF
  br i1 %i.dq, label %bb.r, label %.loopexit

.thread.i:                                        ; preds = %bb.q, %bb.p, %.lr.ph.i.i.us.i
  %i.dr = load i32, ptr %i.cb, align 8, !tbaa !56 ; 2 uses
  %i.ds = load i32, ptr %i.co, align 8, !tbaa !56 ; 2 uses
  %i.dt = icmp eq i32 %i.dr, %i.ds
  br i1 %i.dt, label %.split.us.i, label %.split6.us.i

.split6.us.i:                                     ; preds = %.thread.i
  %i.du = icmp slt i32 %i.dr, %i.ds
  br i1 %i.du, label %bb.r, label %.loopexit

.split.us.i:                                      ; preds = %.thread.i
  %i.dv = load ptr, ptr %i.ca, align 8, !tbaa !50
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !56
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !50
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !56
  %i.ea = icmp slt i32 %i.dw, %i.dz
  br i1 %i.ea, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %.split.us.i, %.split6.us.i, %_ZL2gtPK10ConstraintS1_.exit.us.i
  %i.eb = getelementptr inbounds [8 x i8], ptr %.pre.i85, i64 %.019.i.i.us.i
  store ptr %i.cn, ptr %i.eb, align 8, !tbaa !44
  %.not.i4.us.i = icmp eq i64 %.0920.i67.i.us.i, 0
  br i1 %.not.i4.us.i, label %.loopexit, label %.lr.ph.i.i.us.i, !llvm.loop !57

.lr.ph.i.i.preheader.split.i:                     ; preds = %.lr.ph.i.i.preheader.i
  %i.ec = load ptr, ptr %i.ca, align 8, !tbaa !50 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !8  ; 2 uses
  %i.ef = icmp eq ptr %i.cd, %i.ee
  br i1 %i.ef, label %.lr.ph.i.i.us7.i, label %.lr.ph.i.i.preheader.split.split.i

.lr.ph.i.i.us7.i:                                 ; preds = %.lr.ph.i.i.preheader.split.i, %bb.u
  %.019.i.i.us8.i = phi i64 [ %.0920.i67.i.us10.i, %bb.u ], [ %i.by, %.lr.ph.i.i.preheader.split.i ] ; 5 uses
  %.0920.in.i.i.us9.i = add nsw i64 %.019.i.i.us8.i, -1
  %.0920.i67.i.us10.i = lshr i64 %.0920.in.i.i.us9.i, 1 ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i85, i64 %.0920.i67.i.us10.i
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !44 ; 6 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !49 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !8  ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.em = load i64, ptr %i.el, align 8, !tbaa !55
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !47
  %i.ep = icmp sgt i64 %i.em, %i.eo
  br i1 %i.ep, label %.thread41.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.us7.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !50 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !8  ; 2 uses
  %i.eu = icmp eq ptr %i.ek, %i.et
  br i1 %i.eu, label %.thread41.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !37
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !35
  %i.ez = fadd double %i.ew, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !52
  %i.fc = fsub double %i.ez, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !37
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !35
  %i.fh = fadd double %i.fe, %i.fg
  %i.fi = fsub double %i.fc, %i.fh                ; 2 uses
  %i.fj = fcmp oeq double %i.fi, f0xFFEFFFFFFFFFFFFF
  br i1 %i.fj, label %.thread41.i, label %_ZL2gtPK10ConstraintS1_.exit.us11.i

_ZL2gtPK10ConstraintS1_.exit.us11.i:              ; preds = %bb.t
  %i.fk = fcmp ogt double %i.fi, f0xFFEFFFFFFFFFFFFF
  br i1 %i.fk, label %bb.u, label %.loopexit

.thread41.i:                                      ; preds = %bb.t, %bb.s, %.lr.ph.i.i.us7.i
  %i.fl = load i32, ptr %i.cb, align 8, !tbaa !56 ; 2 uses
  %i.fm = load i32, ptr %i.ei, align 8, !tbaa !56 ; 2 uses
  %i.fn = icmp eq i32 %i.fl, %i.fm
  br i1 %i.fn, label %.split.us13.i, label %.split6.us12.i

.split6.us12.i:                                   ; preds = %.thread41.i
  %i.fo = icmp slt i32 %i.fl, %i.fm
  br i1 %i.fo, label %bb.u, label %.loopexit

.split.us13.i:                                    ; preds = %.thread41.i
  %i.fp = load i32, ptr %i.ec, align 8, !tbaa !56
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !50
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !56
  %i.ft = icmp slt i32 %i.fp, %i.fs
  br i1 %i.ft, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %.split.us13.i, %.split6.us12.i, %_ZL2gtPK10ConstraintS1_.exit.us11.i
  %i.fu = getelementptr inbounds [8 x i8], ptr %.pre.i85, i64 %.019.i.i.us8.i
  store ptr %i.eh, ptr %i.fu, align 8, !tbaa !44
  %.not.i4.us14.i = icmp eq i64 %.0920.i67.i.us10.i, 0
  br i1 %.not.i4.us14.i, label %.loopexit, label %.lr.ph.i.i.us7.i, !llvm.loop !57

.lr.ph.i.i.preheader.split.split.i:               ; preds = %.lr.ph.i.i.preheader.split.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !37
  %i.fy = load double, ptr %i.fv, align 8, !tbaa !35
  %i.fz = fadd double %i.fx, %i.fy
  %i.ga = load double, ptr %i.cj, align 8, !tbaa !52
  %i.gb = fsub double %i.fz, %i.ga
  %i.gc = load double, ptr %i.ck, align 8, !tbaa !37
  %i.gd = load double, ptr %i.cl, align 8, !tbaa !35
  %i.ge = fadd double %i.gc, %i.gd
  %i.gf = fsub double %i.gb, %i.ge                ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z, %.lr.ph.i.i.preheader.split.split.i
  %.019.i.i.i = phi i64 [ %.0920.i67.i.i, %bb.z ], [ %i.by, %.lr.ph.i.i.preheader.split.split.i ] ; 5 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i67.i.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i85, i64 %.0920.i67.i.i
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !44 ; 6 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !49 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !8  ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !55
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !47
  %i.gp = icmp sgt i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !50 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !8  ; 2 uses
  %i.gu = icmp eq ptr %i.gk, %i.gt
  br i1 %i.gu, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !37
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !35
  %i.gz = fadd double %i.gw, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !52
  %i.hc = fsub double %i.gz, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.he = load double, ptr %i.hd, align 8, !tbaa !37
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !35
  %i.hh = fadd double %i.he, %i.hg
  %i.hi = fsub double %i.hc, %i.hh
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %.lr.ph.i.i.i
  %i.hj = phi double [ %i.hi, %bb.w ], [ f0xFFEFFFFFFFFFFFFF, %bb.v ], [ f0xFFEFFFFFFFFFFFFF, %.lr.ph.i.i.i ] ; 2 uses
  %i.hk = fcmp oeq double %i.gf, %i.hj
  br i1 %i.hk, label %bb.y, label %_ZL2gtPK10ConstraintS1_.exit.i

bb.y:                                             ; preds = %bb.x
  %i.hl = load i32, ptr %i.cb, align 8, !tbaa !56 ; 2 uses
  %i.hm = load i32, ptr %i.gi, align 8, !tbaa !56 ; 2 uses
  %i.hn = icmp eq i32 %i.hl, %i.hm
  br i1 %i.hn, label %.split.i, label %.split6.i

.split.i:                                         ; preds = %bb.y
  %i.ho = load i32, ptr %i.ec, align 8, !tbaa !56
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !50
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !56
  %i.hs = icmp slt i32 %i.ho, %i.hr
  br i1 %i.hs, label %bb.z, label %.loopexit

.split6.i:                                        ; preds = %bb.y
  %i.ht = icmp slt i32 %i.hl, %i.hm
  br i1 %i.ht, label %bb.z, label %.loopexit

_ZL2gtPK10ConstraintS1_.exit.i:                   ; preds = %bb.x
  %i.hu = fcmp olt double %i.gf, %i.hj
  br i1 %i.hu, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %_ZL2gtPK10ConstraintS1_.exit.i, %.split6.i, %.split.i
  %i.hv = getelementptr inbounds [8 x i8], ptr %.pre.i85, i64 %.019.i.i.i
  store ptr %i.gh, ptr %i.hv, align 8, !tbaa !44
  %.not.i4.i = icmp eq i64 %.0920.i67.i.i, 0
  br i1 %.not.i4.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !57

.loopexit:                                        ; preds = %bb.z, %_ZL2gtPK10ConstraintS1_.exit.i, %.split6.i, %.split.i, %bb.u, %.split.us13.i, %.split6.us12.i, %_ZL2gtPK10ConstraintS1_.exit.us11.i, %bb.r, %.split.us.i, %.split6.us.i, %_ZL2gtPK10ConstraintS1_.exit.us.i, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.i
  %.0.lcssa.i.i.i = phi i64 [ %i.by, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit.i ], [ %.019.i.i.us8.i, %_ZL2gtPK10ConstraintS1_.exit.us11.i ], [ %.019.i.i.us.i, %_ZL2gtPK10ConstraintS1_.exit.us.i ], [ 0, %bb.r ], [ %.019.i.i.us.i, %.split.us.i ], [ %.019.i.i.us.i, %.split6.us.i ], [ 0, %bb.u ], [ %.019.i.i.us8.i, %.split.us13.i ], [ %.019.i.i.us8.i, %.split6.us12.i ], [ %.019.i.i.i, %_ZL2gtPK10ConstraintS1_.exit.i ], [ 0, %bb.z ], [ %.019.i.i.i, %.split.i ], [ %.019.i.i.i, %.split6.i ]
  %i.hw = getelementptr inbounds [8 x i8], ptr %.pre.i85, i64 %.0.lcssa.i.i.i
  store ptr %i.bt, ptr %i.hw, align 8, !tbaa !44
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.021.074, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.hx, %.sroa.9.0.lcssa
  br i1 %.not, label %._crit_edge.loopexit, label %bb.j

.loopexit41:                                      ; preds = %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %._crit_edge
  %.val14.val = load ptr, ptr %i.aq, align 8, !tbaa !44
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %bb.aa
  %storemerge = phi ptr [ %.val14.val, %bb.aa ], [ null, %._crit_edge ]
  %.not.i.i.i18.a = icmp eq ptr %.sroa.024.0.lcssa127, null
  br i1 %.not.i.i.i18.a, label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hy = ptrtoint ptr %.sroa.13.0.lcssa128 to i64
  %i.hz = ptrtoint ptr %.sroa.024.0.lcssa127 to i64
  %i.ia = sub i64 %i.hy, %i.hz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.024.0.lcssa127, i64 noundef %i.ia) #14
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit

_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit:      ; preds = %bb.ab, %bb.ac
  ret ptr %storemerge

bb.ad:                                            ; preds = %.loopexit41, %.loopexit.split-lp, %.loopexit42, %.loopexit.split-lp43
  %.sroa.024.060 = phi ptr [ %.sroa.024.062, %.loopexit.split-lp43 ], [ %.sroa.024.062, %.loopexit42 ], [ %.sroa.024.0.lcssa, %.loopexit.split-lp ], [ %.sroa.024.0.lcssa, %.loopexit41 ] ; 3 uses
  %.sroa.13.054 = phi ptr [ %.sroa.13.064, %.loopexit.split-lp43 ], [ %.sroa.13.064, %.loopexit42 ], [ %.sroa.13.0.lcssa, %.loopexit.split-lp ], [ %.sroa.13.0.lcssa, %.loopexit41 ]
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp45, %.loopexit.split-lp43 ], [ %lpad.loopexit44, %.loopexit42 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit41 ]
  %.not.i.i.i19 = icmp eq ptr %.sroa.024.060, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit20, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ib = ptrtoint ptr %.sroa.13.054 to i64
  %i.ic = ptrtoint ptr %.sroa.024.060 to i64
  %i.id = sub i64 %i.ib, %i.ic
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.024.060, i64 noundef %i.id) #14
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit20

_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit20:    ; preds = %bb.ad, %bb.ae
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Block8mergeOutEPS_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN5Block20findMinOutConstraintEv.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %.0.i29 = load ptr, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %i.f = load ptr, ptr %.0.i29, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i29, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = icmp eq ptr %i.h, %i.l
  br i1 %i.m, label %.lr.ph, label %_ZN5Block20findMinOutConstraintEv.exit

.preheader.i:                                     ; preds = %.lr.ph
  %.0.i = load ptr, ptr %i.v, align 8, !tbaa !44  ; 2 uses
  %i.n = load ptr, ptr %.0.i, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = icmp eq ptr %i.p, %i.t
  br i1 %i.u, label %.lr.ph, label %_ZN5Block20findMinOutConstraintEv.exit, !llvm.loop !59

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  tail call fastcc void @_ZL9deleteMinRSt6vectorIP10ConstraintSaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !41   ; 5 uses
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %._ZN5Block20findMinOutConstraintEv.exit.loopexit_crit_edge, label %.preheader.i, !llvm.loop !59

._ZN5Block20findMinOutConstraintEv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN5Block20findMinOutConstraintEv.exit, !llvm.loop !59

_ZN5Block20findMinOutConstraintEv.exit:           ; preds = %.preheader.i, %.preheader.i.preheader, %._ZN5Block20findMinOutConstraintEv.exit.loopexit_crit_edge, %bb.a
  %i.y = phi ptr [ %i.b, %bb.a ], [ %i.v, %._ZN5Block20findMinOutConstraintEv.exit.loopexit_crit_edge ], [ %i.b, %.preheader.i.preheader ], [ %i.v, %.preheader.i ]
  %i.z = phi ptr [ %i.b, %bb.a ], [ %i.v, %._ZN5Block20findMinOutConstraintEv.exit.loopexit_crit_edge ], [ %i.d, %.preheader.i.preheader ], [ %i.w, %.preheader.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 4 uses
  %i.ac = getelementptr i8, ptr %1, i64 96        ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41 ; 3 uses
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %_ZN5Block20findMinOutConstraintEv.exit8, label %.preheader.i4.preheader

.preheader.i4.preheader:                          ; preds = %_ZN5Block20findMinOutConstraintEv.exit
  %.0.i633 = load ptr, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
  %i.af = load ptr, ptr %.0.i633, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i633, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8
  %i.am = icmp eq ptr %i.ah, %i.al
  br i1 %i.am, label %.lr.ph34, label %_ZN5Block20findMinOutConstraintEv.exit8.loopexit

.preheader.i4:                                    ; preds = %.lr.ph34
  %.0.i6 = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.an = load ptr, ptr %.0.i6, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8
  %i.au = icmp eq ptr %i.ap, %i.at
  br i1 %i.au, label %.lr.ph34, label %_ZN5Block20findMinOutConstraintEv.exit8.loopexit, !llvm.loop !59

.lr.ph34:                                         ; preds = %.preheader.i4.preheader, %.preheader.i4
  tail call fastcc void @_ZL9deleteMinRSt6vectorIP10ConstraintSaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  %i.av = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 4 uses
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !41 ; 3 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %._ZN5Block20findMinOutConstraintEv.exit8.loopexit_crit_edge, label %.preheader.i4, !llvm.loop !59

._ZN5Block20findMinOutConstraintEv.exit8.loopexit_crit_edge: ; preds = %.lr.ph34
  br label %_ZN5Block20findMinOutConstraintEv.exit8.loopexit, !llvm.loop !59

_ZN5Block20findMinOutConstraintEv.exit8.loopexit: ; preds = %.preheader.i4, %._ZN5Block20findMinOutConstraintEv.exit8.loopexit_crit_edge, %.preheader.i4.preheader
  %.val311 = phi ptr [ %i.aw, %._ZN5Block20findMinOutConstraintEv.exit8.loopexit_crit_edge ], [ %i.ad, %.preheader.i4.preheader ], [ %i.aw, %.preheader.i4 ]
  %.val9 = phi ptr [ %i.av, %._ZN5Block20findMinOutConstraintEv.exit8.loopexit_crit_edge ], [ %i.ab, %.preheader.i4.preheader ], [ %i.av, %.preheader.i4 ]
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !41
  %.pre14 = load ptr, ptr %i.a, align 8, !tbaa !41
  br label %_ZN5Block20findMinOutConstraintEv.exit8

_ZN5Block20findMinOutConstraintEv.exit8:          ; preds = %_ZN5Block20findMinOutConstraintEv.exit8.loopexit, %_ZN5Block20findMinOutConstraintEv.exit
  %i.ay = phi ptr [ %.pre14, %_ZN5Block20findMinOutConstraintEv.exit8.loopexit ], [ %i.y, %_ZN5Block20findMinOutConstraintEv.exit ] ; 2 uses
  %i.az = phi ptr [ %.pre, %_ZN5Block20findMinOutConstraintEv.exit8.loopexit ], [ %i.z, %_ZN5Block20findMinOutConstraintEv.exit ]
  %.val3 = phi ptr [ %.val311, %_ZN5Block20findMinOutConstraintEv.exit8.loopexit ], [ %i.ad, %_ZN5Block20findMinOutConstraintEv.exit ]
  %.val = phi ptr [ %.val9, %_ZN5Block20findMinOutConstraintEv.exit8.loopexit ], [ %i.ab, %_ZN5Block20findMinOutConstraintEv.exit ]
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 %i.bc
  tail call void @_ZNSt6vectorIP10ConstraintSaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.bd, ptr %.val, ptr %.val3)
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !41
  %.val7.i = load ptr, ptr %i.c, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr @_ZL2gtPK10ConstraintS1_, ptr %2, align 8, !tbaa !42
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPP10ConstraintSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS2_SC_EEEEvT_SG_RT0_(ptr %i.be, ptr %.val7.i, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5Block20findMinOutConstraintEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.0.in = phi ptr [ %i.n, %bb.b ], [ %i.b, %bb.a ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !44  ; 3 uses
  %i.f = load ptr, ptr %.0, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = icmp eq ptr %i.h, %i.l
  br i1 %i.m, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader
  tail call fastcc void @_ZL9deleteMinRSt6vectorIP10ConstraintSaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %.loopexit, label %.preheader, !llvm.loop !59

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.0, %.preheader ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL9deleteMinRSt6vectorIP10ConstraintSaIS1_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp sgt i64 %i.f, 8
  br i1 %i.g, label %bb.b, label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPP10ConstraintSt6vectorIS3_SaIS3_EEEEPFbPKS2_SA_EEvT_SD_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 5 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !44
  store ptr %i.j, ptr %i.h, align 8, !tbaa !44
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.e                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr i64 %i.n, 1
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZL2gtPK10ConstraintS1_.exit5
  %.036.i.i.i = phi i64 [ %spec.select.i.i.i, %_ZL2gtPK10ConstraintS1_.exit5 ], [ 0, %bb.b ] ; 2 uses
  %i.q = shl i64 %.036.i.i.i, 1                   ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !44   ; 5 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !44   ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !47
  %i.ae = icmp sgt i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8  ; 2 uses
  %i.aj = icmp eq ptr %i.z, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = load double, ptr %i.ak, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !35
  %i.ao = fadd double %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !52
  %i.ar = fsub double %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.at = load double, ptr %i.as, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.av = load double, ptr %i.au, align 8, !tbaa !35
  %i.aw = fadd double %i.at, %i.av
  %i.ax = fsub double %i.ar, %i.aw
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i
  %i.ay = phi double [ %i.ax, %bb.d ], [ f0xFFEFFFFFFFFFFFFF, %bb.c ], [ f0xFFEFFFFFFFFFFFFF, %.lr.ph.i.i.i ] ; 2 uses
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !49  ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !8  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !55
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !47
  %i.bg = icmp sgt i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !8  ; 2 uses
  %i.bl = icmp eq ptr %i.bb, %i.bk
  br i1 %i.bl, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !35
  %i.bq = fadd double %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !52
  %i.bt = fsub double %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !35
  %i.by = fadd double %i.bv, %i.bx
  %i.bz = fsub double %i.bt, %i.by
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ca = phi double [ %i.bz, %bb.g ], [ f0xFFEFFFFFFFFFFFFF, %bb.f ], [ f0xFFEFFFFFFFFFFFFF, %bb.e ] ; 2 uses
  %i.cb = fcmp oeq double %i.ay, %i.ca
  br i1 %i.cb, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.x, align 8, !tbaa !56  ; 2 uses
  %i.cd = load i32, ptr %i.az, align 8, !tbaa !56 ; 2 uses
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !50
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !50
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !56
  %i.cl = icmp slt i32 %i.ch, %i.ck
  br label %_ZL2gtPK10ConstraintS1_.exit5

bb.k:                                             ; preds = %bb.i
  %i.cm = icmp slt i32 %i.cc, %i.cd
  br label %_ZL2gtPK10ConstraintS1_.exit5

bb.l:                                             ; preds = %bb.h
  %i.cn = fcmp olt double %i.ay, %i.ca
  br label %_ZL2gtPK10ConstraintS1_.exit5

_ZL2gtPK10ConstraintS1_.exit5:                    ; preds = %bb.j, %bb.k, %bb.l
  %.0.i.i4 = phi i1 [ %i.cl, %bb.j ], [ %i.cn, %bb.l ], [ %i.cm, %bb.k ]
  %spec.select.i.i.i = select i1 %.0.i.i4, i64 %i.t, i64 %i.r ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.a, i64 %spec.select.i.i.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !44
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.036.i.i.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !44
  %i.cr = icmp slt i64 %spec.select.i.i.i, %i.o
  br i1 %i.cr, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !60

._crit_edge.i.i.i:                                ; preds = %_ZL2gtPK10ConstraintS1_.exit5, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i.i, %_ZL2gtPK10ConstraintS1_.exit5 ] ; 5 uses
  %i.cs = and i64 %i.l, 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cu = add nsw i64 %i.m, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i, %i.cv
  br i1 %i.cw, label %.thread.i.i, label %bb.n

.thread.i.i:                                      ; preds = %bb.m
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !44
end_hunk_0
begin_hunk_1_@_ZN5Block20compute_dfdv_betweenEP8VariableS1_S1_NS_9DirectionEb:bb.a
  %.551.us = phi ptr [ %.34997.us, %.lr.ph100.split.us ], [ %spec.select78.us, %bb.c ], [ %.34997.us, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.us ], [ %.34997.us, %bb.d ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.056.096.us, i64 8 ; 2 uses
  %.not80.us = icmp eq ptr %i.bm, %i.ap
  br i1 %.not80.us, label %._crit_edge101, label %.lr.ph100.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread
  %.04685 = phi ptr [ %.248, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ], [ %1, %.lr.ph ] ; 4 uses
  %.sroa.060.084 = phi ptr [ %i.cf, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ], [ %i.p, %.lr.ph ] ; 2 uses
  %.06783 = phi ptr [ %.268, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ], [ null, %.lr.ph ] ; 3 uses
  %.07182 = phi double [ %.172, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ], [ %i.n, %.lr.ph ] ; 3 uses
  %i.bn = load ptr, ptr %.sroa.060.084, align 8, !tbaa !44 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !49 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.br = icmp eq ptr %i.bq, %0
  br i1 %i.br, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit: ; preds = %.lr.ph.split
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !53, !range !61, !noundef !62
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = icmp ne ptr %3, %i.bo
  %spec.select.i = and i1 %i.bv, %i.bu
  br i1 %spec.select.i, label %bb.e, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

bb.e:                                             ; preds = %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit
  %i.bw = icmp eq ptr %i.bo, %.04685              ; 2 uses
  %spec.select75 = select i1 %i.bw, ptr %i.bn, ptr %.06783
  %spec.select76 = select i1 %i.bw, ptr null, ptr %.04685 ; 3 uses
  %i.bx = tail call { double, ptr } @_ZN5Block20compute_dfdv_betweenEP8VariableS1_S1_NS_9DirectionEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %spec.select76, ptr noundef nonnull %i.bo, ptr noundef nonnull %2, i32 noundef 1, i1 noundef zeroext %5) ; 2 uses
  %i.by = extractvalue { double, ptr } %i.bx, 0   ; 2 uses
  %i.bz = extractvalue { double, ptr } %i.bx, 1   ; 2 uses
  %i.ca = fneg double %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store double %i.ca, ptr %i.cb, align 8, !tbaa !63
  %i.cc = fadd double %.07182, %i.by
  %i.cd = icmp ne ptr %spec.select76, null
  %i.ce = icmp ne ptr %i.bz, null
  %or.cond = select i1 %i.cd, i1 %i.ce, i1 false
  %spec.select79 = select i1 %or.cond, ptr %i.bz, ptr %spec.select75
  br label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread: ; preds = %bb.e, %.lr.ph.split, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit
  %.172 = phi double [ %.07182, %.lr.ph.split ], [ %i.cc, %bb.e ], [ %.07182, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit ] ; 2 uses
  %.268 = phi ptr [ %.06783, %.lr.ph.split ], [ %spec.select79, %bb.e ], [ %.06783, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit ] ; 2 uses
  %.248 = phi ptr [ %.04685, %.lr.ph.split ], [ %spec.select76, %bb.e ], [ %.04685, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.060.084, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cf, %i.r
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge101:                                   ; preds = %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us, %._crit_edge
  %.273.lcssa = phi double [ %.071.lcssa, %._crit_edge ], [ %.374.us, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us ], [ %.374, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ]
  %.369.lcssa = phi ptr [ %.067.lcssa, %._crit_edge ], [ %.570.us, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread.us ], [ %.570, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ]
  %.fca.0.insert = insertvalue { double, ptr } poison, double %.273.lcssa, 0
  %.fca.1.insert = insertvalue { double, ptr } %.fca.0.insert, ptr %.369.lcssa, 1
  ret { double, ptr } %.fca.1.insert

.lr.ph100.split:                                  ; preds = %.lr.ph100, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread
  %.398 = phi i8 [ %.5, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %.0.lcssa, %.lr.ph100 ] ; 5 uses
  %.34997 = phi ptr [ %.551, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %.046.lcssa, %.lr.ph100 ] ; 6 uses
  %.sroa.056.096 = phi ptr [ %i.dc, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %i.an, %.lr.ph100 ] ; 2 uses
  %.36995 = phi ptr [ %.570, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %.067.lcssa, %.lr.ph100 ] ; 3 uses
  %.27394 = phi double [ %.374, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %.071.lcssa, %.lr.ph100 ] ; 3 uses
  %i.cg = load ptr, ptr %.sroa.056.096, align 8, !tbaa !44 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !50 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = icmp eq ptr %i.ck, %0
  br i1 %i.cl, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit: ; preds = %.lr.ph100.split
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !53, !range !61, !noundef !62
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = icmp ne ptr %3, %i.ci
  %spec.select.i55 = and i1 %i.cp, %i.co
  br i1 %spec.select.i55, label %bb.f, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

bb.f:                                             ; preds = %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit
  %i.cq = icmp eq ptr %i.ci, %.34997              ; 2 uses
  %spec.select77 = select i1 %i.cq, ptr %i.cg, ptr %.36995
  %spec.select78 = select i1 %i.cq, ptr null, ptr %.34997 ; 3 uses
  %i.cr = trunc nuw i8 %.398 to i1                ; 2 uses
  %i.cs = tail call { double, ptr } @_ZN5Block20compute_dfdv_betweenEP8VariableS1_S1_NS_9DirectionEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %spec.select78, ptr noundef nonnull %i.ci, ptr noundef nonnull %2, i32 noundef 2, i1 noundef zeroext %i.cr) ; 2 uses
  %i.ct = extractvalue { double, ptr } %i.cs, 0   ; 3 uses
  %i.cu = extractvalue { double, ptr } %i.cs, 1   ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store double %i.ct, ptr %i.cv, align 8, !tbaa !63
  %i.cw = fadd double %.27394, %i.ct              ; 3 uses
  %i.cx = icmp ne ptr %spec.select78, null
  %i.cy = icmp ne ptr %i.cu, null
  %or.cond5 = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond5, label %bb.g, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

bb.g:                                             ; preds = %bb.f
  br i1 %i.cr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.da = load double, ptr %i.cz, align 8, !tbaa !63
  %i.db = fcmp olt double %i.ct, %i.da
  br i1 %i.db, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread: ; preds = %.lr.ph100.split, %bb.i, %bb.h, %bb.f, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit
  %.374 = phi double [ %i.cw, %bb.i ], [ %i.cw, %bb.f ], [ %.27394, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit ], [ %i.cw, %bb.h ], [ %.27394, %.lr.ph100.split ] ; 2 uses
  %.570 = phi ptr [ %i.cu, %bb.i ], [ %spec.select77, %bb.f ], [ %.36995, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit ], [ %i.cg, %bb.h ], [ %.36995, %.lr.ph100.split ] ; 2 uses
  %.551 = phi ptr [ %.34997, %bb.i ], [ %spec.select78, %bb.f ], [ %.34997, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit ], [ %.34997, %bb.h ], [ %.34997, %.lr.ph100.split ]
  %.5 = phi i8 [ %.398, %bb.i ], [ %.398, %bb.f ], [ %.398, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit ], [ 1, %bb.h ], [ %.398, %.lr.ph100.split ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.056.096, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.dc, %i.ap
  br i1 %.not80, label %._crit_edge101, label %.lr.ph100.split
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5Block15reset_active_lmEP8VariableS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %.not26 = icmp eq ptr %i.b, %i.d
  br i1 %.not26, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %.not2528 = icmp eq ptr %i.f, %i.h
  br i1 %.not2528, label %._crit_edge32, label %.lr.ph31

.lr.ph:                                           ; preds = %bb.a, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread
  %.sroa.022.027 = phi ptr [ %i.t, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.022.027, align 8, !tbaa !44 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit: ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.p = load i8, ptr %i.o, align 8, !tbaa !53, !range !61, !noundef !62
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = icmp ne ptr %2, %i.k
  %spec.select.i = and i1 %i.r, %i.q
  br i1 %spec.select.i, label %bb.b, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

bb.b:                                             ; preds = %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !63
  tail call void @_ZN5Block15reset_active_lmEP8VariableS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.k, ptr noundef %1)
  br label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread: ; preds = %.lr.ph, %bb.b, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.022.027, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge32:                                    ; preds = %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread, %._crit_edge
  ret void

.lr.ph31:                                         ; preds = %._crit_edge, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread
  %.sroa.018.029 = phi ptr [ %i.ae, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ], [ %i.f, %._crit_edge ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.018.029, align 8, !tbaa !44 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.y = icmp eq ptr %i.x, %0
  br i1 %i.y, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit: ; preds = %.lr.ph31
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !53, !range !61, !noundef !62
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = icmp ne ptr %2, %i.v
  %spec.select.i17 = and i1 %i.ac, %i.ab
  br i1 %spec.select.i17, label %bb.c, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

bb.c:                                             ; preds = %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !63
  tail call void @_ZN5Block15reset_active_lmEP8VariableS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.v, ptr noundef %1)
  br label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread: ; preds = %.lr.ph31, %bb.c, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.018.029, i64 8 ; 2 uses
  %.not25 = icmp eq ptr %i.ae, %i.h
  br i1 %.not25, label %._crit_edge32, label %.lr.ph31
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5Block9findMinLMEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !44
  %i.b = load ptr, ptr %0, align 8, !tbaa !40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  tail call void @_ZN5Block15reset_active_lmEP8VariableS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.c, ptr noundef null)
  %i.d = load ptr, ptr %0, align 8, !tbaa !40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = call noundef double @_ZN5Block12compute_dfdvEP8VariableS1_RP10Constraint(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.e, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5Block16findMinLMBetweenEP8VariableS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  tail call void @_ZN5Block15reset_active_lmEP8VariableS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.b, ptr noundef null)
  %i.c = tail call { double, ptr } @_ZN5Block20compute_dfdv_betweenEP8VariableS1_S1_NS_9DirectionEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %2, ptr noundef %1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  %i.d = extractvalue { double, ptr } %i.c, 1
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Block18populateSplitBlockEPS_P8VariableS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %1, ptr noundef initializes((32, 40)) %2, ptr nofree noundef readnone captures(address) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5Block11addVariableEP8Variable(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %.not28 = icmp eq ptr %i.b, %i.d
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %.not2730 = icmp eq ptr %i.f, %i.h
  br i1 %.not2730, label %._crit_edge34, label %.lr.ph33

.lr.ph:                                           ; preds = %bb.a, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread
  %.sroa.024.029 = phi ptr [ %i.r, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.024.029, align 8, !tbaa !44 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit: ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.o = load i8, ptr %i.n, align 8, !tbaa !53, !range !61, !noundef !62
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = icmp ne ptr %3, %i.j
  %spec.select.i = and i1 %i.q, %i.p
  br i1 %spec.select.i, label %bb.b, label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

bb.b:                                             ; preds = %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit
  tail call void @_ZN5Block18populateSplitBlockEPS_P8VariableS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.j, ptr noundef %2)
  br label %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread

_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit.thread: ; preds = %.lr.ph, %bb.b, %_ZN5Block13canFollowLeftEPK10ConstraintPK8Variable.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.024.029, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge34:                                    ; preds = %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread, %._crit_edge
  ret void

.lr.ph33:                                         ; preds = %._crit_edge, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread
  %.sroa.020.031 = phi ptr [ %i.ac, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread ], [ %i.f, %._crit_edge ] ; 2 uses
  %i.s = load ptr, ptr %.sroa.020.031, align 8, !tbaa !44 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = icmp eq ptr %i.w, %0
  br i1 %i.x, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit: ; preds = %.lr.ph33
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.z = load i8, ptr %i.y, align 8, !tbaa !53, !range !61, !noundef !62
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = icmp ne ptr %3, %i.u
  %spec.select.i19 = and i1 %i.ab, %i.aa
  br i1 %spec.select.i19, label %bb.c, label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

bb.c:                                             ; preds = %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit
  tail call void @_ZN5Block18populateSplitBlockEPS_P8VariableS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.u, ptr noundef %2)
  br label %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread

_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit.thread: ; preds = %.lr.ph33, %bb.c, %_ZN5Block14canFollowRightEPK10ConstraintPK8Variable.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.020.031, i64 8 ; 2 uses
  %.not27 = icmp eq ptr %i.ac, %i.h
  br i1 %.not27, label %._crit_edge34, label %.lr.ph33
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5Block12splitBetweenEP8VariableS1_RPS_S3_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  tail call void @_ZN5Block15reset_active_lmEP8VariableS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.b, ptr noundef null)
  %i.c = tail call { double, ptr } @_ZN5Block20compute_dfdv_betweenEP8VariableS1_S1_NS_9DirectionEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %2, ptr noundef %1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  %i.d = extractvalue { double, ptr } %i.c, 1     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !53
  %i.f = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #13 ; 4 uses
  invoke void @_ZN5BlockC1EP8Variable(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %3, align 8, !tbaa !64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  tail call void @_ZN5Block18populateSplitBlockEPS_P8VariableS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.f, ptr noundef %i.g, ptr noundef %i.i)
  %i.j = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #13 ; 4 uses
  invoke void @_ZN5BlockC1EP8Variable(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef null)
          to label %_ZN5Block5splitERPS_S1_P10Constraint.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.c ]
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.k, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink.i, i64 noundef 112) #14
  resume { ptr, i32 } %.pn.i

_ZN5Block5splitERPS_S1_P10Constraint.exit:        ; preds = %bb.b
  store ptr %i.j, ptr %4, align 8, !tbaa !64
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !49
  tail call void @_ZN5Block18populateSplitBlockEPS_P8VariableS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.j, ptr noundef %i.m, ptr noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.o, align 8, !tbaa !54
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Block5splitERPS_S1_P10Constraint(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef captures(none) initializes((40, 41)) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.a, align 8, !tbaa !53
  %i.b = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #13 ; 4 uses
  invoke void @_ZN5BlockC1EP8Variable(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef null)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !64
  %i.c = load ptr, ptr %3, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  tail call void @_ZN5Block18populateSplitBlockEPS_P8VariableS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.b, ptr noundef %i.c, ptr noundef %i.e)
  %i.f = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #13 ; 4 uses
  invoke void @_ZN5BlockC1EP8Variable(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef null)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr %i.f, ptr %2, align 8, !tbaa !64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.h = load ptr, ptr %3, align 8, !tbaa !49
  tail call void @_ZN5Block18populateSplitBlockEPS_P8VariableS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.f, ptr noundef %i.g, ptr noundef %i.h)
  ret void

bb.d:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi ptr [ %i.f, %bb.e ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.i, %bb.d ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 112) #14
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZN5Block4costEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %.not13 = icmp eq ptr %i.a, %i.c
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.r, %.lr.ph ]
  ret double %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi double [ %i.r, %.lr.ph ], [ 0.000000e+00, %bb.a ]
  %.sroa.010.014 = phi ptr [ %i.s, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.010.014, align 8, !tbaa !24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !35
  %i.k = fadd double %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !34
  %i.n = fsub double %i.k, %i.m                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !27
  %i.q = fmul double %i.p, %i.n
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.n, double %.015) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK5Block(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 6) ; 0 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %.not12 = icmp eq ptr %i.b, %i.d
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i8, ptr %i.e, align 8, !tbaa !54, !range !61, !noundef !62
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.09.013 = phi ptr [ %i.k, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.09.013, align 8, !tbaa !24
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8Variable(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.h) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 9) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8Variable(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZL2gtPK10ConstraintS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !49     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %i.h = icmp sgt i64 %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8    ; 2 uses
  %i.m = icmp eq ptr %i.c, %i.l
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !35
  %i.r = fadd double %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !52
  %i.u = fsub double %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.y = load double, ptr %i.x, align 8, !tbaa !35
  %i.z = fadd double %i.w, %i.y
  %i.aa = fsub double %i.u, %i.z
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ab = phi double [ %i.aa, %bb.c ], [ f0xFFEFFFFFFFFFFFFF, %bb.b ], [ f0xFFEFFFFFFFFFFFFF, %bb.a ] ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !49    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !47
  %i.aj = icmp sgt i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !8  ; 2 uses
  %i.ao = icmp eq ptr %i.ae, %i.an
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.as = load double, ptr %i.ar, align 8, !tbaa !35
  %i.at = fadd double %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load double, ptr %i.au, align 8, !tbaa !52
  %i.aw = fsub double %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ba = load double, ptr %i.az, align 8, !tbaa !35
  %i.bb = fadd double %i.ay, %i.ba
  %i.bc = fsub double %i.aw, %i.bb
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.bd = phi double [ %i.bc, %bb.f ], [ f0xFFEFFFFFFFFFFFFF, %bb.e ], [ f0xFFEFFFFFFFFFFFFF, %bb.d ] ; 2 uses
  %i.be = fcmp oeq double %i.ab, %i.bd
  br i1 %i.be, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.bg = load i32, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !50
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !56
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !50
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !56
  %i.bo = icmp slt i32 %i.bk, %i.bn
  br label %_ZL18compareConstraintsPK10ConstraintS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.bp = icmp slt i32 %i.bf, %i.bg
  br label %_ZL18compareConstraintsPK10ConstraintS1_.exit

bb.k:                                             ; preds = %bb.g
  %i.bq = fcmp olt double %i.ab, %i.bd
  br label %_ZL18compareConstraintsPK10ConstraintS1_.exit

_ZL18compareConstraintsPK10ConstraintS1_.exit:    ; preds = %bb.i, %bb.j, %bb.k
  %.0.i = phi i1 [ %i.bo, %bb.i ], [ %i.bq, %bb.k ], [ %i.bp, %bb.j ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPP10ConstraintSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS2_SC_EEEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

end_hunk_1
begin_hunk_2_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPP10ConstraintSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS2_SC_EEEEvT_SG_RT0_:bb.a

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.be = icmp sgt i64 %.1.i, %.09
  br i1 %i.be, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPP10ConstraintSt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbPKS2_SC_EEEEvT_T0_SH_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !44
  %i.bh = tail call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef %i.bg, ptr noundef %i.ao), !inline_history !67
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPP10ConstraintSt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbPKS2_SC_EEEEvT_T0_SH_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !44
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !44
  %i.bk = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPP10ConstraintSt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbPKS2_SC_EEEEvT_T0_SH_T1_T2_.exit, !llvm.loop !57

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPP10ConstraintSt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbPKS2_SC_EEEEvT_T0_SH_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store ptr %i.ao, ptr %i.bl, align 8, !tbaa !44
  %.not = icmp eq i64 %.09, 0
  %i.bm = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !68

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPP10ConstraintSt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbPKS2_SC_EEEEvT_T0_SH_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPP10ConstraintSt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbPKS2_SC_EEEEvT_T0_SH_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIP10ConstraintSaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 8                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !69

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  %.pre72 = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %_ZSt22__uninitialized_move_aIPP10ConstraintS2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPP10ConstraintS2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !44
  store ptr %i.u, ptr %i.h, align 8, !tbaa !44
  br label %_ZSt22__uninitialized_move_aIPP10ConstraintS2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt22__uninitialized_move_aIPP10ConstraintS2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre72, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !51
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !69

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPP10ConstraintS2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPP10ConstraintS2_ET0_T_S4_S3_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPP10ConstraintS2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPP10ConstraintS2_ET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ae = load ptr, ptr %1, align 8, !tbaa !44
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !44
  br label %_ZSt13move_backwardIPP10ConstraintS2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIPP10ConstraintS2_ET0_T_S4_S3_.exit: ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !69

bb.k:                                             ; preds = %_ZSt13move_backwardIPP10ConstraintS2_ET0_T_S4_S3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPP10ConstraintS2_ET0_T_S4_S3_.exit
  %i.af = icmp eq i64 %i.c, 8
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %2, align 8, !tbaa !44
  store ptr %i.ag, ptr %1, align 8, !tbaa !44
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !69

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !44
  store ptr %i.an, ptr %i.h, align 8, !tbaa !44
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !51
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !69

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %1, i64 %i.m, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %_ZSt22__uninitialized_move_aIPP10ConstraintS2_SaIS1_EET0_T_S5_S4_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPP10ConstraintS2_SaIS1_EET0_T_S5_S4_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %1, align 8, !tbaa !44
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !44
  br label %_ZSt22__uninitialized_move_aIPP10ConstraintS2_SaIS1_EET0_T_S5_S4_RT1_.exit51

_ZSt22__uninitialized_move_aIPP10ConstraintS2_SaIS1_EET0_T_S5_S4_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre71, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !51
  %i.av = icmp sgt i64 %i.m, 8
  br i1 %i.av, label %bb.t, label %bb.u, !prof !69

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPP10ConstraintS2_SaIS1_EET0_T_S5_S4_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPP10ConstraintS2_SaIS1_EET0_T_S5_S4_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 8
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load ptr, ptr %2, align 8, !tbaa !44
  store ptr %i.ax, ptr %1, align 8, !tbaa !44
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !38    ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = sub nsw i64 1152921504606846975, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
  unreachable

_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #13
  br label %_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !69

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.ay, align 8, !tbaa !44
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !44
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !69

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load ptr, ptr %2, align 8, !tbaa !44
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !44
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !69

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load ptr, ptr %1, align 8, !tbaa !44
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !44
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #14
  br label %_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !38
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !51
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !39
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP10ConstraintSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 32}
!9 = !{!"_ZTS8Variable", !5, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !11, i64 32, !13, i64 40, !14, i64 48, !14, i64 72}
!10 = !{!"double", !6, i64 0}
!11 = !{!"p1 _ZTS5Block", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!"_ZTSSt6vectorIP10ConstraintSaIS1_EE", !15, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIP10ConstraintSaIS1_EE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIP10ConstraintSaIS1_EE12_Vector_implE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIP10ConstraintSaIS1_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p2 _ZTS10Constraint", !19, i64 0}
!19 = !{!"any p2 pointer", !12, i64 0}
!20 = !{!21, !22, i64 8}
!21 = !{!"_ZTSNSt12_Vector_baseIP8VariableSaIS1_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p2 _ZTS8Variable", !19, i64 0}
!23 = !{!21, !22, i64 16}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS8Variable", !12, i64 0}
!26 = !{!21, !22, i64 0}
!27 = !{!9, !10, i64 16}
!28 = !{!29, !10, i64 32}
!29 = !{!"_ZTS5Block", !30, i64 0, !10, i64 24, !10, i64 32, !10, i64 40, !13, i64 48, !33, i64 56, !14, i64 64, !14, i64 88}
!30 = !{!"_ZTSSt6vectorIP8VariableSaIS1_EE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIP8VariableSaIS1_EE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIP8VariableSaIS1_EE12_Vector_implE", !21, i64 0}
!33 = !{!"long", !6, i64 0}
!34 = !{!9, !10, i64 8}
!35 = !{!9, !10, i64 24}
!36 = !{!29, !10, i64 40}
!37 = !{!29, !10, i64 24}
!38 = !{!17, !18, i64 0}
!39 = !{!17, !18, i64 16}
!40 = !{!22, !22, i64 0}
!41 = !{!18, !18, i64 0}
!42 = !{!43, !12, i64 0}
!43 = !{!"_ZTSN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPK10ConstraintS4_EEE", !12, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 _ZTS10Constraint", !12, i64 0}
!46 = !{!33, !33, i64 0}
!47 = !{!48, !33, i64 32}
!48 = !{!"_ZTS10Constraint", !25, i64 0, !25, i64 8, !10, i64 16, !10, i64 24, !33, i64 32, !13, i64 40, !13, i64 41}
!49 = !{!48, !25, i64 0}
!50 = !{!48, !25, i64 8}
!51 = !{!17, !18, i64 8}
!52 = !{!48, !10, i64 16}
!53 = !{!48, !13, i64 40}
!54 = !{!29, !13, i64 48}
!55 = !{!29, !33, i64 56}
!56 = !{!9, !5, i64 0}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !58}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = !{!48, !10, i64 24}
!64 = !{!11, !11, i64 0}
!65 = !{!12, !12, i64 0}
!66 = distinct !{null, null}
!67 = distinct !{null, null, null}
!68 = distinct !{!68, !58}
!69 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_2
