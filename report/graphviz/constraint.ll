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
  store ptr %1, ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.c, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.h, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !21
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !27   ; 4 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #8
  unreachable

_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3
  %mul2.i.i.i = ashr exact i64 %i.o, 2
  %4 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.r = icmp ult i64 %4, %i.q
  %i.s = tail call i64 @llvm.umin.i64(i64 %4, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #9 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.o ; 2 uses
  store ptr %0, ptr %i.w, align 8, !tbaa !23
  %i.x = icmp sgt i64 %i.o, 0
  br i1 %i.x, label %bb.e, label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ab) #10
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.v, ptr %i.f, align 8, !tbaa !27
  store ptr %i.y, ptr %i.g, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !26
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.ad = phi ptr [ %2, %bb.b ], [ %.pre, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26
  %.not.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit
  store ptr %0, ptr %i.ag, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !21
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit11

bb.h:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 4 uses
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 6 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.i, label %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i5

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #8
  unreachable

_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i5: ; preds = %bb.h
  %i.ap = ashr exact i64 %i.an, 3
  %mul2.i.i.i6 = ashr exact i64 %i.an, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i6, i64 1) ; 2 uses
  %i.aq = icmp ult i64 %5, %i.ap
  %i.ar = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #9 ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.an ; 2 uses
  store ptr %0, ptr %i.av, align 8, !tbaa !23
  %i.aw = icmp sgt i64 %i.an, 0
  br i1 %i.aw, label %bb.j, label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i8

bb.j:                                             ; preds = %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i8

_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i8: ; preds = %bb.j, %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.not.i17.i.i.i9 = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i.i9, label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i10, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i8
  %i.ay = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ba) #10
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i10

_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i10: ; preds = %bb.k, %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i8
  store ptr %i.au, ptr %i.ae, align 8, !tbaa !27
  store ptr %i.ax, ptr %i.af, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  store ptr %i.bb, ptr %i.ah, align 8, !tbaa !26
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit11

_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backEOS1_.exit11: ; preds = %bb.g, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10ConstraintD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(42) dereferenceable(42) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 8 uses
  %.not24 = icmp eq ptr %i.c, %i.e
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.012.025 = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %.sroa.012.025, align 8, !tbaa !23
  %i.g = icmp eq ptr %i.f, %0
  br i1 %i.g, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.012.025, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

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
  br i1 %i.q, label %bb.d, label %bb.e, !prof !32

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr nonnull align 8 %i.m, i64 %i.p, i1 false)
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !21
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.p, 8
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !23
  store ptr %i.s, ptr %i.l, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %._crit_edge
  %i.t = phi ptr [ %i.e, %bb.f ], [ %i.e, %bb.e ], [ %.pre.i.i, %bb.d ], [ %i.e, %._crit_edge ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.d, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30  ; 8 uses
  %.not2030 = icmp eq ptr %i.y, %i.aa
  br i1 %.not2030, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.g, %bb.h
  %.sroa.012.131 = phi ptr [ %i.ad, %bb.h ], [ %i.y, %bb.g ] ; 3 uses
  %i.ab = load ptr, ptr %.sroa.012.131, align 8, !tbaa !23
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %._crit_edge34, label %bb.h

bb.h:                                             ; preds = %.lr.ph33
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.131, i64 8 ; 2 uses
  %.not20 = icmp eq ptr %i.ad, %i.aa
  br i1 %.not20, label %._crit_edge34, label %.lr.ph33, !llvm.loop !29

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
  br i1 %i.am, label %bb.j, label %bb.k, !prof !32

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ah, ptr nonnull align 8 %i.ai, i64 %i.al, i1 false)
  %.pre.i.i7 = load ptr, ptr %i.z, align 8, !tbaa !21
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.an = icmp eq i64 %i.al, 8
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !23
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %._crit_edge34
  %i.ap = phi ptr [ %i.aa, %bb.l ], [ %i.aa, %bb.k ], [ %.pre.i.i7, %bb.j ], [ %i.aa, %._crit_edge34 ]
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8
  store ptr %i.aq, ptr %i.z, align 8, !tbaa !21
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK10Constraint(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(42) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !14
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !46
  %i.s = fadd double %i.p, %i.r
  %i.t = load double, ptr %i.d, align 8, !tbaa !16
  %i.u = fsub double %i.s, %i.t
  %i.v = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !46
  %i.ac = fadd double %i.z, %i.ab
  %i.ad = fsub double %i.u, %i.ac
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, double noundef %i.ad) ; 2 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !17, !range !47, !noundef !48
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

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS8Variable", !8, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"bool", !4, i64 0}
!13 = !{!"_ZTS10Constraint", !9, i64 0, !9, i64 8, !10, i64 16, !10, i64 24, !11, i64 32, !12, i64 40, !12, i64 41}
!14 = !{!13, !9, i64 0}
!15 = !{!13, !9, i64 8}
!16 = !{!13, !10, i64 16}
!17 = !{!13, !12, i64 40}
!18 = !{!"any p2 pointer", !8, i64 0}
!19 = !{!"p2 _ZTS10Constraint", !18, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIP10ConstraintSaIS1_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 8}
!22 = !{!"p1 _ZTS10Constraint", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!13, !11, i64 32}
!25 = !{!13, !12, i64 41}
!26 = !{!20, !19, i64 16}
!27 = !{!20, !19, i64 0}
!28 = distinct !{!28, !31}
!29 = distinct !{!29, !31}
!30 = !{!19, !19, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!33 = !{!"p1 _ZTS5Block", !8, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIP10ConstraintSaIS1_EE12_Vector_implE", !20, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIP10ConstraintSaIS1_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIP10ConstraintSaIS1_EE", !35, i64 0}
!37 = !{!"_ZTS8Variable", !5, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !33, i64 32, !12, i64 40, !36, i64 48, !36, i64 72}
!38 = !{!37, !33, i64 32}
!39 = !{!"p2 _ZTS8Variable", !18, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIP8VariableSaIS1_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseIP8VariableSaIS1_EE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIP8VariableSaIS1_EE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorIP8VariableSaIS1_EE", !42, i64 0}
!44 = !{!"_ZTS5Block", !43, i64 0, !10, i64 24, !10, i64 32, !10, i64 40, !12, i64 48, !11, i64 56, !36, i64 64, !36, i64 88}
!45 = !{!44, !10, i64 24}
!46 = !{!37, !10, i64 24}
!47 = !{i8 0, i8 2}
!48 = !{}
end_hunk_0
