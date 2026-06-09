inline.NumInlined: 148
inline.NumDeleted: 69
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::basic_string_view" = type { i64, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

@_ZZN4node15EscapeJsonCharsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE15control_symbols = internal unnamed_addr constant [32 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 6, ptr @.str }, %"class.std::basic_string_view" { i64 6, ptr @.str.1 }, %"class.std::basic_string_view" { i64 6, ptr @.str.2 }, %"class.std::basic_string_view" { i64 6, ptr @.str.3 }, %"class.std::basic_string_view" { i64 6, ptr @.str.4 }, %"class.std::basic_string_view" { i64 6, ptr @.str.5 }, %"class.std::basic_string_view" { i64 6, ptr @.str.6 }, %"class.std::basic_string_view" { i64 6, ptr @.str.7 }, %"class.std::basic_string_view" { i64 2, ptr @.str.8 }, %"class.std::basic_string_view" { i64 2, ptr @.str.9 }, %"class.std::basic_string_view" { i64 2, ptr @.str.10 }, %"class.std::basic_string_view" { i64 6, ptr @.str.11 }, %"class.std::basic_string_view" { i64 2, ptr @.str.12 }, %"class.std::basic_string_view" { i64 2, ptr @.str.13 }, %"class.std::basic_string_view" { i64 6, ptr @.str.14 }, %"class.std::basic_string_view" { i64 6, ptr @.str.15 }, %"class.std::basic_string_view" { i64 6, ptr @.str.16 }, %"class.std::basic_string_view" { i64 6, ptr @.str.17 }, %"class.std::basic_string_view" { i64 6, ptr @.str.18 }, %"class.std::basic_string_view" { i64 6, ptr @.str.19 }, %"class.std::basic_string_view" { i64 6, ptr @.str.20 }, %"class.std::basic_string_view" { i64 6, ptr @.str.21 }, %"class.std::basic_string_view" { i64 6, ptr @.str.22 }, %"class.std::basic_string_view" { i64 6, ptr @.str.23 }, %"class.std::basic_string_view" { i64 6, ptr @.str.24 }, %"class.std::basic_string_view" { i64 6, ptr @.str.25 }, %"class.std::basic_string_view" { i64 6, ptr @.str.26 }, %"class.std::basic_string_view" { i64 6, ptr @.str.27 }, %"class.std::basic_string_view" { i64 6, ptr @.str.28 }, %"class.std::basic_string_view" { i64 6, ptr @.str.29 }, %"class.std::basic_string_view" { i64 6, ptr @.str.30 }, %"class.std::basic_string_view" { i64 6, ptr @.str.31 }], align 16
@.str = private unnamed_addr constant [7 x i8] c"\\u0000\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\\u0001\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\\u0002\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\\u0003\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\\u0004\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\\u0005\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"\\u0006\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\\u0007\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"\\u000b\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\\u000e\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\\u000f\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"\\u0010\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"\\u0011\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"\\u0012\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"\\u0013\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"\\u0014\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"\\u0015\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"\\u0016\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"\\u0017\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"\\u0018\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"\\u0019\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"\\u001a\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"\\u001b\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"\\u001c\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"\\u001d\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"\\u001e\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"\\u001f\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.39 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node15EscapeJsonCharsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 {
.split:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.058 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.01856 = phi i64 [ 0, %.lr.ph ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %i.c, ptr %3, align 8
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.01856
  %i.f = load i8, ptr %i.e, align 1               ; 3 uses
  switch i8 %i.f, label %bb.d [
    i8 92, label %bb.b
    i8 34, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.32, i64 noundef 2) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.33, i64 noundef 2) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.i = icmp ult i8 %i.f, 32
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = zext nneg i8 %i.f to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr @_ZZN4node15EscapeJsonCharsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE15control_symbols, i64 %i.j ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.k, align 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.l = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %.sroa.4.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  %i.m = load i64, ptr %i.d, align 8              ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ugt i64 %.01856, %.058
  %.pre60 = load i64, ptr %i.b, align 8           ; 6 uses
  br i1 %i.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %bb.n

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.g
  %.sroa.speculated.i = sub nuw i64 %.01856, %.058 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.058 ; 3 uses
  %i.q = sub i64 9223372036854775807, %.pre60
  %i.r = icmp ult i64 %i.q, %.sroa.speculated.i
  br i1 %i.r, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.h:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #11
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.s = add i64 %.pre60, %.sroa.speculated.i     ; 3 uses
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a                   ; 2 uses
  br i1 %i.u, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.v = icmp ult i64 %.pre60, 16
  call void @llvm.assume(i1 %i.v)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.w = load i64, ptr %i.a, align 8
  %i.x = select i1 %i.u, i64 15, i64 %i.w
  %.not.i.i.i.i = icmp ugt i64 %i.s, %i.x
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.pre60 ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %.sroa.speculated.i, 1
  br i1 %cond.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = load i8, ptr %i.p, align 1
  store i8 %i.z, ptr %i.y, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.p, i64 %.sroa.speculated.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre60, i64 noundef 0, ptr noundef %i.p, i64 noundef %.sroa.speculated.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i64 %i.s, ptr %i.b, align 8
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store i8 0, ptr %i.ab, align 1
  %.pr = load i64, ptr %i.d, align 8
  %.pre = load i64, ptr %i.b, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %bb.g
  %i.ac = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.pre60, %bb.g ] ; 5 uses
  %i.ad = phi i64 [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %i.m, %bb.g ] ; 6 uses
  %i.ae = add nuw i64 %.01856, 1
  %i.af = load ptr, ptr %3, align 8               ; 3 uses
  %i.ag = sub i64 9223372036854775807, %i.ac
  %i.ah = icmp ult i64 %i.ag, %i.ad
  br i1 %i.ah, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i24

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #11
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i24: ; preds = %bb.n
  %i.ai = add i64 %i.ac, %i.ad                    ; 3 uses
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a                 ; 2 uses
  br i1 %i.ak, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i25

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i24
  %i.al = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.al)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i25: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i24
  %i.am = load i64, ptr %i.a, align 8
  %i.an = select i1 %i.ak, i64 15, i64 %i.am
  %.not.i.i.i.i26 = icmp ugt i64 %i.ai, %i.an
  br i1 %.not.i.i.i.i26, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i25
  %.not8.i.i.i.i27 = icmp eq i64 %i.ad, 0
  br i1 %.not8.i.i.i.i27, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ac ; 2 uses
  %cond.i.i.i.i28 = icmp eq i64 %i.ad, 1
  br i1 %cond.i.i.i.i28, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %i.af, align 1
  store i8 %i.ap, ptr %i.ao, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.af, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ac, i64 noundef 0, ptr noundef %i.af, i64 noundef %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.u
  store i64 %i.ai, ptr %i.b, align 8
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 0, ptr %i.ar, align 1
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %bb.f
  %.1 = phi i64 [ %.058, %bb.f ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ] ; 2 uses
  %i.as = load ptr, ptr %3, align 8               ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.c
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.au = load i64, ptr %i.c, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.aw = add nuw i64 %.01856, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !5

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.split
  %.0.lcssa = phi i64 [ 0, %.split ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %i.ax = icmp ult i64 %.0.lcssa, %1
  br i1 %i.ax, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, label %bb.ad

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %._crit_edge
  %.sroa.speculated.i29 = sub nuw i64 %1, %.0.lcssa ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa ; 3 uses
  %i.az = load i64, ptr %i.b, align 8             ; 5 uses
  %i.ba = sub i64 9223372036854775807, %i.az
  %i.bb = icmp ult i64 %i.ba, %.sroa.speculated.i29
  br i1 %i.bb, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i36

bb.w:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #11
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.bc = add i64 %i.az, %.sroa.speculated.i29    ; 3 uses
  %i.bd = load ptr, ptr %0, align 8               ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.a                 ; 2 uses
  br i1 %i.be, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i37

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i36
  %i.bf = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.bf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i37: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i36
  %i.bg = load i64, ptr %i.a, align 8
  %i.bh = select i1 %i.be, i64 15, i64 %i.bg
  %.not.i.i.i.i38 = icmp ugt i64 %i.bc, %i.bh
  br i1 %.not.i.i.i.i38, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i37
  %.not8.i.i.i.i39 = icmp eq i64 %1, %.0.lcssa
  br i1 %.not8.i.i.i.i39, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit41, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.az ; 2 uses
  %cond.i.i.i.i40 = icmp eq i64 %.sroa.speculated.i29, 1
  br i1 %cond.i.i.i.i40, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bj = load i8, ptr %i.ay, align 1
  store i8 %i.bj, ptr %i.bi, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit41

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.ay, i64 %.sroa.speculated.i29, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit41

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i37
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.az, i64 noundef 0, ptr noundef %i.ay, i64 noundef %.sroa.speculated.i29)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit41: ; preds = %bb.y, %bb.aa, %bb.ab, %bb.ac
  store i64 %i.bc, ptr %i.b, align 8
  %i.bk = load ptr, ptr %0, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  store i8 0, ptr %i.bl, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit41
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node8ReindentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #13 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  store i64 %i.e, ptr %i.b, align 8
  br label %._crit_edge.i.i

end_hunk_0
