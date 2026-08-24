Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/constraint?download=true
inline.NumInlined: 105
inline.NumDeleted: 55
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"-active\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN10ConstraintC1EP8VariableS1_d = unnamed_addr alias void (ptr, ptr, ptr, double), ptr @_ZN10ConstraintC2EP8VariableS1_d
@_ZN10ConstraintD1Ev = unnamed_addr alias void (ptr), ptr @_ZN10ConstraintD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN10ConstraintC2EP8VariableS1_d(ptr noundef nonnull align 8 dereferenceable(42) initializes((0, 24), (32, 42)) %0, ptr noundef %1, ptr noundef %2, double noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.h, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !20
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !27   ; 4 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #9
  unreachable

_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #10 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  store ptr %0, ptr %i.x, align 8, !tbaa !25
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.e, label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %4 = load ptr, ptr %i.i, align 8, !tbaa !24
  %5 = ptrtoint ptr %4 to i64
  %6 = sub i64 %5, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %6) #11
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.w, ptr %i.f, align 8, !tbaa !27
  store ptr %i.z, ptr %i.g, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !24
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.ab = phi ptr [ %2, %bb.b ], [ %.pre, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !24
  %.not.i.i4 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not.i.i4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit
  store ptr %0, ptr %i.ae, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !20
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit11

bb.h:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 4 uses
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 5 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775800
  br i1 %i.am, label %bb.i, label %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i5

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #9
  unreachable

_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i5: ; preds = %bb.h
  %i.an = ashr exact i64 %i.al, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i6 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i.i6, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 1152921504606846975)
  %i.ar = select i1 %i.ap, i64 1152921504606846975, i64 %i.aq ; 3 uses
  %.not.i.i.i.i7 = icmp ne i64 %i.ar, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i7)
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #10 ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.al ; 2 uses
  store ptr %0, ptr %i.au, align 8, !tbaa !25
  %i.av = icmp sgt i64 %i.al, 0
  br i1 %i.av, label %bb.j, label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i8

bb.j:                                             ; preds = %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i8

_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i8: ; preds = %bb.j, %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.not.i17.i.i.i9 = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i.i9, label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i10, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i8
  %7 = load ptr, ptr %i.af, align 8, !tbaa !24
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %8, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %9) #11
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i10

_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i10: ; preds = %bb.k, %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i8
  store ptr %i.at, ptr %i.ac, align 8, !tbaa !27
  store ptr %i.aw, ptr %i.ad, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ar
  store ptr %i.ax, ptr %i.af, align 8, !tbaa !24
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit11

_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit11: ; preds = %bb.g, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10ConstraintD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(42) dereferenceable(42) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 8 uses
  %.not24 = icmp eq ptr %i.c, %i.e
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.012.025 = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %.sroa.012.025, align 8, !tbaa !25
  %i.g = icmp eq ptr %i.f, %0
  br i1 %i.g, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.012.025, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.sroa.012.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.sroa.012.025, %.lr.ph ], [ %i.e, %bb.b ]
  %i.i = ptrtoint ptr %.sroa.012.0.lcssa to i64
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, %i.e
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp sgt i64 %i.p, 8
  br i1 %i.q, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr nonnull align 8 %i.m, i64 %i.p, i1 false)
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !20
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.p, 8
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !25
  store ptr %i.s, ptr %i.l, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %._crit_edge
  %i.t = phi ptr [ %i.e, %bb.f ], [ %i.e, %bb.e ], [ %.pre.i.i, %bb.d ], [ %i.e, %._crit_edge ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.d, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 8 uses
  %.not2030 = icmp eq ptr %i.y, %i.aa
  br i1 %.not2030, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.g, %bb.h
  %.sroa.012.131 = phi ptr [ %i.ad, %bb.h ], [ %i.y, %bb.g ] ; 3 uses
  %i.ab = load ptr, ptr %.sroa.012.131, align 8, !tbaa !25
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %._crit_edge34, label %bb.h

bb.h:                                             ; preds = %.lr.ph33
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.131, i64 8 ; 2 uses
  %.not20 = icmp eq ptr %i.ad, %i.aa
  br i1 %.not20, label %._crit_edge34, label %.lr.ph33, !llvm.loop !32

._crit_edge34:                                    ; preds = %bb.h, %.lr.ph33, %bb.g
  %.sroa.012.1.lcssa = phi ptr [ %i.y, %bb.g ], [ %.sroa.012.131, %.lr.ph33 ], [ %i.aa, %bb.h ]
  %i.ae = ptrtoint ptr %.sroa.012.1.lcssa to i64
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.y, i64 %i.ag ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %.not.i.i6 = icmp eq ptr %i.ai, %i.aa
  br i1 %.not.i.i6, label %bb.m, label %bb.i

bb.i:                                             ; preds = %._crit_edge34
  %i.aj = ptrtoint ptr %i.aa to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = icmp sgt i64 %i.al, 8
  br i1 %i.am, label %bb.j, label %bb.k, !prof !31

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ah, ptr nonnull align 8 %i.ai, i64 %i.al, i1 false)
  %.pre.i.i7 = load ptr, ptr %i.z, align 8, !tbaa !20
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.an = icmp eq i64 %i.al, 8
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !25
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %._crit_edge34
  %i.ap = phi ptr [ %i.aa, %bb.l ], [ %i.aa, %bb.k ], [ %.pre.i.i7, %bb.j ], [ %i.aa, %._crit_edge34 ]
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8
  store ptr %i.aq, ptr %i.z, align 8, !tbaa !20
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK10Constraint(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(42) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8Variable(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a) ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !16
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.e) ; 2 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.1, i64 noundef 2) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8Variable(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.i) ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !46
  %i.s = fadd double %i.p, %i.r
  %i.t = load double, ptr %i.d, align 8, !tbaa !16
  %i.u = fsub double %i.s, %i.t
  %i.v = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !46
  %i.ac = fadd double %i.z, %i.ab
  %i.ad = fsub double %i.u, %i.ac
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, double noundef %i.ad) ; 2 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !18, !range !47, !noundef !48
  %i.ai = trunc nuw i8 %i.ah to i1                ; 2 uses
  %i.aj = select i1 %i.ai, ptr @.str.4, ptr @.str.5
  %i.ak = select i1 %i.ai, i64 7, i64 0
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.aj, i64 noundef %i.ak) ; 0 uses
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8Variable(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8
end_hunk_0
