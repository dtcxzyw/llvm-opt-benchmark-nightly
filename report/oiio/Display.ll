inline.NumInlined: 539
inline.NumDeleted: 220
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.__gnu_cxx::__ops::_Iter_pred" = type { %class.anon }
%class.anon = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.__gnu_cxx::__ops::_Iter_pred.21" = type { %class.anon.4 }
%class.anon.4 = type { %"class.std::__cxx11::basic_string" }
%"struct.__gnu_cxx::__ops::_Iter_pred.22" = type { %class.anon.6 }
%class.anon.6 = type { %"class.std::__cxx11::basic_string" }
%"struct.__gnu_cxx::__ops::_Iter_pred.23" = type { %class.anon.13 }
%class.anon.13 = type { %"class.std::__cxx11::basic_string" }
%"struct.OpenColorIO_v2_5::View" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::vector.14" = type { %"struct.std::_Vector_base.15" }
%"struct.std::_Vector_base.15" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@_ZN16OpenColorIO_v2_526OCIO_VIEW_USE_DISPLAY_NAMEE = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define hidden ptr @_ZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8 ; 17 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.anon, align 8                ; 11 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8 ; 11 uses
  %5 = alloca %class.anon, align 8                ; 11 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %class.anon, align 8                ; 9 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !10
  %i.j = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 %i.l, ptr %i.e, align 8, !tbaa !17
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !13
  %i.o = load i64, ptr %i.e, align 8, !tbaa !17
  store i64 %i.o, ptr %i.i, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !18
  store i8 %i.q, ptr %i.p, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !16
  %i.t = load ptr, ptr %6, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %.val = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %.val6 = load i64, ptr %i.s, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.v, ptr %5, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 %.val6, ptr %i.d, align 8, !tbaa !17
  %i.w = icmp ugt i64 %.val6, 15
  br i1 %i.w, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.z     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.x, ptr %5, align 8, !tbaa !13
  %i.y = load i64, ptr %i.d, align 8, !tbaa !17
  store i64 %i.y, ptr %i.v, align 8, !tbaa !18
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %.val6, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSF_.exit.i"
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = load i8, ptr %.val, align 1, !tbaa !18
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !18
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSF_.exit.i"

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr readonly align 1 %.val, i64 %.val6, i1 false)
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSF_.exit.i"

"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSF_.exit.i": ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !16
  %i.ad = load ptr, ptr %5, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %.val.i = load ptr, ptr %5, align 8, !tbaa !13  ; 2 uses
  %.val7.i = load i64, ptr %i.ac, align 8, !tbaa !16 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !10, !noalias !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !19
  store i64 %.val7.i, ptr %i.c, align 8, !tbaa !17, !noalias !19
  %i.ag = icmp ugt i64 %.val7.i, 15
  br i1 %i.ag, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSF_.exit.i"
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i7 unwind label %bb.x  ; 2 uses

.noexc.i7:                                        ; preds = %.noexc.i.i.i.i
  store ptr %i.ah, ptr %3, align 8, !tbaa !13, !noalias !19
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !19
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !18, !noalias !19
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i7, %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSF_.exit.i"
  %i.aj = phi ptr [ %i.ah, %.noexc.i7 ], [ %i.af, %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSF_.exit.i" ] ; 2 uses
  switch i64 %.val7.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSF_.exit.i.i"
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = load i8, ptr %.val.i, align 1, !tbaa !18, !noalias !19
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !18, !noalias !19
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSF_.exit.i.i"

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr readonly align 1 %.val.i, i64 %.val7.i, i1 false), !noalias !19
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSF_.exit.i.i"

"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSF_.exit.i.i": ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i
  %i.al = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !19 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !16, !noalias !19
  %i.an = load ptr, ptr %3, align 8, !tbaa !13, !noalias !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !18, !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !19
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !10, !alias.scope !19
  %i.aq = load ptr, ptr %3, align 8, !tbaa !13, !noalias !19 ; 2 uses
  %i.ar = load i64, ptr %i.am, align 8, !tbaa !16, !noalias !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !19
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !17, !noalias !19
  %i.as = icmp ugt i64 %i.ar, 15
  br i1 %i.as, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSF_.exit.i.i"
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.k ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i.i
  store ptr %i.at, ptr %4, align 8, !tbaa !13, !alias.scope !19
  %i.au = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !19
  store i64 %i.au, ptr %i.ap, align 8, !tbaa !18, !alias.scope !19
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i, %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSF_.exit.i.i"
  %i.av = phi ptr [ %i.at, %.noexc.i.i ], [ %i.ap, %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSF_.exit.i.i" ] ; 2 uses
  switch i64 %i.ar, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aw = load i8, ptr %i.aq, align 1, !tbaa !18
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !18
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !19 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !16, !alias.scope !19
  %i.az = load ptr, ptr %4, align 8, !tbaa !13, !alias.scope !19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !19
  %i.bb = load ptr, ptr %3, align 8, !tbaa !13, !noalias !19 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.af
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bd = load i64, ptr %i.af, align 8, !tbaa !18, !noalias !19
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_:bb.a

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.q
  %.pre.i.i.i = ptrtoint ptr %i.cl to i64
  %.pre62.i.i.i = sub i64 %i.bu, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSJ_.exit.i.i"
  %.pre-phi63.i.i.i = phi i64 [ %.pre62.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSJ_.exit.i.i" ]
  %.sroa.037.0.lcssa.i.i.i = phi ptr [ %i.cl, %._crit_edge.loopexit.i.i.i ], [ %i.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSJ_.exit.i.i" ] ; 5 uses
  %i.co = sdiv exact i64 %.pre-phi63.i.i.i, 88
  switch i64 %i.co, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i" [
    i64 3, label %bb.r
    i64 2, label %bb.t
    i64 1, label %bb.v
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %.val17.i.i.i = load ptr, ptr %2, align 8, !tbaa !13
  %.val1.i25.i.i.i = load ptr, ptr %.sroa.037.0.lcssa.i.i.i, align 8, !tbaa !13
  %i.cp = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val17.i.i.i, ptr noundef %.val1.i25.i.i.i)
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.i.i

.noexc7.i.i:                                      ; preds = %bb.r
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i", label %bb.s

bb.s:                                             ; preds = %.noexc7.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa.i.i.i, i64 88
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  %.sroa.037.1.i.i.i = phi ptr [ %i.cr, %bb.s ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val16.i.i.i = load ptr, ptr %2, align 8, !tbaa !13
  %.val1.i26.i.i.i = load ptr, ptr %.sroa.037.1.i.i.i, align 8, !tbaa !13
  %i.cs = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val16.i.i.i, ptr noundef %.val1.i26.i.i.i)
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i

.noexc8.i.i:                                      ; preds = %bb.t
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i", label %bb.u

bb.u:                                             ; preds = %.noexc8.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i, i64 88
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i
  %.sroa.037.2.i.i.i = phi ptr [ %i.cu, %bb.u ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %2, align 8, !tbaa !13
  %.val1.i27.i.i.i = load ptr, ptr %.sroa.037.2.i.i.i, align 8, !tbaa !13
  %i.cv = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val.i.i.i, ptr noundef %.val1.i27.i.i.i)
          to label %.noexc9.i.i unwind label %.loopexit.split-lp.i.i

.noexc9.i.i:                                      ; preds = %bb.v
  %i.cw = icmp eq i32 %i.cv, 0
  %spec.select.i.i.i = select i1 %i.cw, ptr %.sroa.037.2.i.i.i, ptr %i.h
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit": ; preds = %.noexc6.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 264
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit43": ; preds = %.noexc5.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 176
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit45": ; preds = %.noexc4.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 88
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i": ; preds = %.noexc.i11.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit43", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit45", %.noexc9.i.i, %.noexc8.i.i, %.noexc7.i.i, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.037.1.i.i.i, %.noexc8.i.i ], [ %spec.select.i.i.i, %.noexc9.i.i ], [ %i.h, %._crit_edge.i.i.i ], [ %.sroa.037.0.lcssa.i.i.i, %.noexc7.i.i ], [ %i.cz, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit45" ], [ %i.cx, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit" ], [ %i.cy, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit43" ], [ %.sroa.037.056.i.i.i, %.noexc.i11.i ]
  %i.da = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bk
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"
  %i.dc = load i64, ptr %i.bk, align 8, !tbaa !18
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

.loopexit.i.i:                                    ; preds = %bb.p, %bb.o, %bb.n, %.lr.ph.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp.i.i:                           ; preds = %bb.v, %bb.t, %bb.r
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.de = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bk
  br i1 %i.df, label %.body14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i: ; preds = %bb.w
  %i.dg = load i64, ptr %i.bk, align 8, !tbaa !18
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #17
  br label %.body14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERSF_RKS8_E3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.di = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ap
  br i1 %i.dj, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.dk = load i64, ptr %i.ap, align 8, !tbaa !18
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #17
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i
  %i.dm = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.v
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i"
  %i.do = load i64, ptr %i.v, align 8, !tbaa !18
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.x:                                             ; preds = %.noexc.i.i.i.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.y:                                             ; preds = %.noexc.i.i.i.i12.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i

.body14.i:                                        ; preds = %bb.w, %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i
  %eh.lpad-body15.i = phi { ptr, i32 } [ %i.dr, %bb.y ], [ %lpad.phi.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i ], [ %lpad.phi.i.i, %bb.w ] ; 2 uses
  %i.ds = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ap
  br i1 %i.dt, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i: ; preds = %.body14.i
  %i.du = load i64, ptr %i.ap, align 8, !tbaa !18
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #17
  br label %.body.i

.body.i:                                          ; preds = %.body14.i, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i ], [ %i.dq, %bb.x ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i ], [ %i.bf, %bb.k ], [ %eh.lpad-body15.i, %.body14.i ] ; 2 uses
  %i.dw = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.v
  br i1 %i.dx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i: ; preds = %.body.i
  %i.dy = load i64, ptr %i.v, align 8, !tbaa !18
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #17
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ea = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.i
  br i1 %i.eb, label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ec = load i64, ptr %i.i, align 8, !tbaa !18
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #17
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit"

"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret ptr %.sroa.08.0.in.sroa.speculated.i.i.i

bb.z:                                             ; preds = %.noexc.i.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.ee, %bb.z ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i ], [ %.pn.i, %.body.i ]
  %i.ef = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.i
  br i1 %i.eg, label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit10", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %.body
  %i.eh = load i64, ptr %i.i, align 8, !tbaa !18
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #17
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit10"

"_ZZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit10": ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  resume { ptr, i32 } %eh.lpad-body
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden ptr @_ZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.21", align 8 ; 17 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.anon.4, align 8              ; 11 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.21", align 8 ; 11 uses
  %5 = alloca %class.anon.4, align 8              ; 11 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %class.anon.4, align 8              ; 9 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !10
  %i.j = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 %i.l, ptr %i.e, align 8, !tbaa !17
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !13
  %i.o = load i64, ptr %i.e, align 8, !tbaa !17
  store i64 %i.o, ptr %i.i, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !18
  store i8 %i.q, ptr %i.p, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !16
  %i.t = load ptr, ptr %6, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %.val = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %.val6 = load i64, ptr %i.s, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.v, ptr %5, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 %.val6, ptr %i.d, align 8, !tbaa !17
  %i.w = icmp ugt i64 %.val6, 15
  br i1 %i.w, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.z     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.x, ptr %5, align 8, !tbaa !13
  %i.y = load i64, ptr %i.d, align 8, !tbaa !17
  store i64 %i.y, ptr %i.v, align 8, !tbaa !18
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %.val6, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSG_.exit.i"
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = load i8, ptr %.val, align 1, !tbaa !18
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !18
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSG_.exit.i"

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr readonly align 1 %.val, i64 %.val6, i1 false)
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSG_.exit.i"

"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSG_.exit.i": ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !16
  %i.ad = load ptr, ptr %5, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %.val.i = load ptr, ptr %5, align 8, !tbaa !13  ; 2 uses
  %.val7.i = load i64, ptr %i.ac, align 8, !tbaa !16 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !10, !noalias !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !24
  store i64 %.val7.i, ptr %i.c, align 8, !tbaa !17, !noalias !24
  %i.ag = icmp ugt i64 %.val7.i, 15
  br i1 %i.ag, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSG_.exit.i"
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i7 unwind label %bb.x  ; 2 uses

.noexc.i7:                                        ; preds = %.noexc.i.i.i.i
  store ptr %i.ah, ptr %3, align 8, !tbaa !13, !noalias !24
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !24
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !18, !noalias !24
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i7, %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSG_.exit.i"
  %i.aj = phi ptr [ %i.ah, %.noexc.i7 ], [ %i.af, %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2ERKSG_.exit.i" ] ; 2 uses
  switch i64 %.val7.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSG_.exit.i.i"
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = load i8, ptr %.val.i, align 1, !tbaa !18, !noalias !24
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !18, !noalias !24
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSG_.exit.i.i"

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr readonly align 1 %.val.i, i64 %.val7.i, i1 false), !noalias !24
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSG_.exit.i.i"

"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSG_.exit.i.i": ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i
  %i.al = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !16, !noalias !24
  %i.an = load ptr, ptr %3, align 8, !tbaa !13, !noalias !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !18, !noalias !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !24
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !10, !alias.scope !24
  %i.aq = load ptr, ptr %3, align 8, !tbaa !13, !noalias !24 ; 2 uses
  %i.ar = load i64, ptr %i.am, align 8, !tbaa !16, !noalias !24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !24
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !17, !noalias !24
  %i.as = icmp ugt i64 %i.ar, 15
  br i1 %i.as, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSG_.exit.i.i"
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.k ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i.i
  store ptr %i.at, ptr %4, align 8, !tbaa !13, !alias.scope !24
  %i.au = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !24
  store i64 %i.au, ptr %i.ap, align 8, !tbaa !18, !alias.scope !24
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i, %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSG_.exit.i.i"
  %i.av = phi ptr [ %i.at, %.noexc.i.i ], [ %i.ap, %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0C2EOSG_.exit.i.i" ] ; 2 uses
  switch i64 %i.ar, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aw = load i8, ptr %i.aq, align 1, !tbaa !18
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !18
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !16, !alias.scope !24
  %i.az = load ptr, ptr %4, align 8, !tbaa !13, !alias.scope !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !24
  %i.bb = load ptr, ptr %3, align 8, !tbaa !13, !noalias !24 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.af
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bd = load i64, ptr %i.af, align 8, !tbaa !18, !noalias !24
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_:bb.a
  %i.cn = icmp sgt i64 %.057.i.i.i, 1
  br i1 %i.cn, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !27

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.q
  %.pre.i.i.i = ptrtoint ptr %i.cl to i64
  %.pre62.i.i.i = sub i64 %i.bu, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSK_.exit.i.i"
  %.pre-phi63.i.i.i = phi i64 [ %.pre62.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSK_.exit.i.i" ]
  %.sroa.037.0.lcssa.i.i.i = phi ptr [ %i.cl, %._crit_edge.loopexit.i.i.i ], [ %i.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0EC2ERKSK_.exit.i.i" ] ; 5 uses
  %i.co = sdiv exact i64 %.pre-phi63.i.i.i, 88
  switch i64 %i.co, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i" [
    i64 3, label %bb.r
    i64 2, label %bb.t
    i64 1, label %bb.v
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %.val17.i.i.i = load ptr, ptr %2, align 8, !tbaa !13
  %.val1.i25.i.i.i = load ptr, ptr %.sroa.037.0.lcssa.i.i.i, align 8, !tbaa !13
  %i.cp = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val17.i.i.i, ptr noundef %.val1.i25.i.i.i)
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.i.i

.noexc7.i.i:                                      ; preds = %bb.r
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i", label %bb.s

bb.s:                                             ; preds = %.noexc7.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa.i.i.i, i64 88
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  %.sroa.037.1.i.i.i = phi ptr [ %i.cr, %bb.s ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val16.i.i.i = load ptr, ptr %2, align 8, !tbaa !13
  %.val1.i26.i.i.i = load ptr, ptr %.sroa.037.1.i.i.i, align 8, !tbaa !13
  %i.cs = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val16.i.i.i, ptr noundef %.val1.i26.i.i.i)
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i

.noexc8.i.i:                                      ; preds = %bb.t
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i", label %bb.u

bb.u:                                             ; preds = %.noexc8.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i, i64 88
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i
  %.sroa.037.2.i.i.i = phi ptr [ %i.cu, %bb.u ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %2, align 8, !tbaa !13
  %.val1.i27.i.i.i = load ptr, ptr %.sroa.037.2.i.i.i, align 8, !tbaa !13
  %i.cv = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val.i.i.i, ptr noundef %.val1.i27.i.i.i)
          to label %.noexc9.i.i unwind label %.loopexit.split-lp.i.i

.noexc9.i.i:                                      ; preds = %bb.v
  %i.cw = icmp eq i32 %i.cv, 0
  %spec.select.i.i.i = select i1 %i.cw, ptr %.sroa.037.2.i.i.i, ptr %i.h
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit": ; preds = %.noexc6.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 264
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit43": ; preds = %.noexc5.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 176
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit45": ; preds = %.noexc4.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 88
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i": ; preds = %.noexc.i11.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit43", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit45", %.noexc9.i.i, %.noexc8.i.i, %.noexc7.i.i, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.037.1.i.i.i, %.noexc8.i.i ], [ %spec.select.i.i.i, %.noexc9.i.i ], [ %i.h, %._crit_edge.i.i.i ], [ %.sroa.037.0.lcssa.i.i.i, %.noexc7.i.i ], [ %i.cz, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit45" ], [ %i.cx, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit" ], [ %i.cy, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit43" ], [ %.sroa.037.056.i.i.i, %.noexc.i11.i ]
  %i.da = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bk
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i"
  %i.dc = load i64, ptr %i.bk, align 8, !tbaa !18
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

.loopexit.i.i:                                    ; preds = %bb.p, %bb.o, %bb.n, %.lr.ph.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp.i.i:                           ; preds = %bb.v, %bb.t, %bb.r
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.de = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bk
  br i1 %i.df, label %.body14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i: ; preds = %bb.w
  %i.dg = load i64, ptr %i.bk, align 8, !tbaa !18
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #17
  br label %.body14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESt6vectorISB_SaISB_EEEENS0_5__ops10_Iter_predIZNS9_11FindDisplayERKSG_RKS8_E3$_0EEET_SQ_SQ_T0_St26random_access_iterator_tag.exit.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.di = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ap
  br i1 %i.dj, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.dk = load i64, ptr %i.ap, align 8, !tbaa !18
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #17
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i
  %i.dm = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.v
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i"
  %i.do = load i64, ptr %i.v, align 8, !tbaa !18
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.x:                                             ; preds = %.noexc.i.i.i.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.y:                                             ; preds = %.noexc.i.i.i.i12.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i

.body14.i:                                        ; preds = %bb.w, %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i
  %eh.lpad-body15.i = phi { ptr, i32 } [ %i.dr, %bb.y ], [ %lpad.phi.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i ], [ %lpad.phi.i.i, %bb.w ] ; 2 uses
  %i.ds = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ap
  br i1 %i.dt, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i: ; preds = %.body14.i
  %i.du = load i64, ptr %i.ap, align 8, !tbaa !18
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #17
  br label %.body.i

.body.i:                                          ; preds = %.body14.i, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i ], [ %i.dq, %bb.x ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i ], [ %i.bf, %bb.k ], [ %eh.lpad-body15.i, %.body14.i ] ; 2 uses
  %i.dw = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.v
  br i1 %i.dx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i: ; preds = %.body.i
  %i.dy = load i64, ptr %i.v, align 8, !tbaa !18
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #17
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_7DisplayEESaISC_EERKSA_E3$_0ED2Ev.exit.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ea = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.i
  br i1 %i.eb, label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ec = load i64, ptr %i.i, align 8, !tbaa !18
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #17
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit"

"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret ptr %.sroa.08.0.in.sroa.speculated.i.i.i

bb.z:                                             ; preds = %.noexc.i.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.ee, %bb.z ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i ], [ %.pn.i, %.body.i ]
  %i.ef = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.i
  br i1 %i.eg, label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit10", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %.body
  %i.eh = load i64, ptr %i.i, align 8, !tbaa !18
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #17
  br label %"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit10"

"_ZZN16OpenColorIO_v2_511FindDisplayERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_EN3$_0D2Ev.exit10": ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden ptr @_ZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.22", align 8 ; 17 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.anon.6, align 8              ; 11 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.22", align 8 ; 11 uses
  %5 = alloca %class.anon.6, align 8              ; 11 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %class.anon.6, align 8              ; 9 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !10
  %i.j = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 %i.l, ptr %i.e, align 8, !tbaa !17
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !13
  %i.o = load i64, ptr %i.e, align 8, !tbaa !17
  store i64 %i.o, ptr %i.i, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !18
  store i8 %i.q, ptr %i.p, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !16
  %i.t = load ptr, ptr %6, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %.val = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %.val6 = load i64, ptr %i.s, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.v, ptr %5, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 %.val6, ptr %i.d, align 8, !tbaa !17
  %i.w = icmp ugt i64 %.val6, 15
  br i1 %i.w, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.z     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.x, ptr %5, align 8, !tbaa !13
  %i.y = load i64, ptr %i.d, align 8, !tbaa !17
  store i64 %i.y, ptr %i.v, align 8, !tbaa !18
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %.val6, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSE_.exit.i"
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = load i8, ptr %.val, align 1, !tbaa !18
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !18
  br label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSE_.exit.i"

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr readonly align 1 %.val, i64 %.val6, i1 false)
  br label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSE_.exit.i"

"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSE_.exit.i": ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !16
  %i.ad = load ptr, ptr %5, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %.val.i = load ptr, ptr %5, align 8, !tbaa !13  ; 2 uses
  %.val7.i = load i64, ptr %i.ac, align 8, !tbaa !16 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !10, !noalias !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !30
  store i64 %.val7.i, ptr %i.c, align 8, !tbaa !17, !noalias !30
  %i.ag = icmp ugt i64 %.val7.i, 15
  br i1 %i.ag, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSE_.exit.i"
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i7 unwind label %bb.x  ; 2 uses

.noexc.i7:                                        ; preds = %.noexc.i.i.i.i
  store ptr %i.ah, ptr %3, align 8, !tbaa !13, !noalias !30
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !30
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !18, !noalias !30
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i7, %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSE_.exit.i"
  %i.aj = phi ptr [ %i.ah, %.noexc.i7 ], [ %i.af, %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSE_.exit.i" ] ; 2 uses
  switch i64 %.val7.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSE_.exit.i.i"
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = load i8, ptr %.val.i, align 1, !tbaa !18, !noalias !30
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !18, !noalias !30
  br label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSE_.exit.i.i"

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr readonly align 1 %.val.i, i64 %.val7.i, i1 false), !noalias !30
  br label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSE_.exit.i.i"

"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSE_.exit.i.i": ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i
  %i.al = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !30 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !16, !noalias !30
  %i.an = load ptr, ptr %3, align 8, !tbaa !13, !noalias !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !18, !noalias !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !30
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !10, !alias.scope !30
  %i.aq = load ptr, ptr %3, align 8, !tbaa !13, !noalias !30 ; 2 uses
  %i.ar = load i64, ptr %i.am, align 8, !tbaa !16, !noalias !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !30
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !17, !noalias !30
  %i.as = icmp ugt i64 %i.ar, 15
  br i1 %i.as, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSE_.exit.i.i"
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.k ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i.i
  store ptr %i.at, ptr %4, align 8, !tbaa !13, !alias.scope !30
  %i.au = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !30
  store i64 %i.au, ptr %i.ap, align 8, !tbaa !18, !alias.scope !30
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i, %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSE_.exit.i.i"
  %i.av = phi ptr [ %i.at, %.noexc.i.i ], [ %i.ap, %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSE_.exit.i.i" ] ; 2 uses
  switch i64 %i.ar, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aw = load i8, ptr %i.aq, align 1, !tbaa !18
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !18
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !30 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !16, !alias.scope !30
  %i.az = load ptr, ptr %4, align 8, !tbaa !13, !alias.scope !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !30
  %i.bb = load ptr, ptr %3, align 8, !tbaa !13, !noalias !30 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.af
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bd = load i64, ptr %i.af, align 8, !tbaa !18, !noalias !30
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.cn = icmp sgt i64 %.057.i.i.i, 1
  br i1 %i.cn, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !33

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.q
  %.pre.i.i.i = ptrtoint ptr %i.cl to i64
  %.pre62.i.i.i = sub i64 %i.bu, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSI_.exit.i.i"
  %.pre-phi63.i.i.i = phi i64 [ %.pre62.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSI_.exit.i.i" ]
  %.sroa.037.0.lcssa.i.i.i = phi ptr [ %i.cl, %._crit_edge.loopexit.i.i.i ], [ %i.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSI_.exit.i.i" ] ; 5 uses
  %i.co = sdiv exact i64 %.pre-phi63.i.i.i, 192
  switch i64 %i.co, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i" [
    i64 3, label %bb.r
    i64 2, label %bb.t
    i64 1, label %bb.v
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %.val17.i.i.i = load ptr, ptr %2, align 8, !tbaa !13
  %.val1.i25.i.i.i = load ptr, ptr %.sroa.037.0.lcssa.i.i.i, align 8, !tbaa !13
  %i.cp = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val17.i.i.i, ptr noundef %.val1.i25.i.i.i)
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.i.i

.noexc7.i.i:                                      ; preds = %bb.r
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i", label %bb.s

bb.s:                                             ; preds = %.noexc7.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa.i.i.i, i64 192
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  %.sroa.037.1.i.i.i = phi ptr [ %i.cr, %bb.s ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val16.i.i.i = load ptr, ptr %2, align 8, !tbaa !13
  %.val1.i26.i.i.i = load ptr, ptr %.sroa.037.1.i.i.i, align 8, !tbaa !13
  %i.cs = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val16.i.i.i, ptr noundef %.val1.i26.i.i.i)
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i

.noexc8.i.i:                                      ; preds = %bb.t
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i", label %bb.u

bb.u:                                             ; preds = %.noexc8.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i, i64 192
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i
  %.sroa.037.2.i.i.i = phi ptr [ %i.cu, %bb.u ], [ %.sroa.037.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %2, align 8, !tbaa !13
  %.val1.i27.i.i.i = load ptr, ptr %.sroa.037.2.i.i.i, align 8, !tbaa !13
  %i.cv = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %.val.i.i.i, ptr noundef %.val1.i27.i.i.i)
          to label %.noexc9.i.i unwind label %.loopexit.split-lp.i.i

.noexc9.i.i:                                      ; preds = %bb.v
  %i.cw = icmp eq i32 %i.cv, 0
  %spec.select.i.i.i = select i1 %i.cw, ptr %.sroa.037.2.i.i.i, ptr %i.h
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit": ; preds = %.noexc6.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 576
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit43": ; preds = %.noexc5.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 384
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit45": ; preds = %.noexc4.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i, i64 192
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i": ; preds = %.noexc.i11.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit43", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit45", %.noexc9.i.i, %.noexc8.i.i, %.noexc7.i.i, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.037.1.i.i.i, %.noexc8.i.i ], [ %spec.select.i.i.i, %.noexc9.i.i ], [ %i.h, %._crit_edge.i.i.i ], [ %.sroa.037.0.lcssa.i.i.i, %.noexc7.i.i ], [ %i.cz, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit45" ], [ %i.cx, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit" ], [ %i.cy, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i.loopexit.split.loop.exit43" ], [ %.sroa.037.056.i.i.i, %.noexc.i11.i ]
  %i.da = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bk
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i"
  %i.dc = load i64, ptr %i.bk, align 8, !tbaa !18
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

.loopexit.i.i:                                    ; preds = %bb.p, %bb.o, %bb.n, %.lr.ph.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp.i.i:                           ; preds = %bb.v, %bb.t, %bb.r
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.de = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bk
  br i1 %i.df, label %.body14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i: ; preds = %bb.w
  %i.dg = load i64, ptr %i.bk, align 8, !tbaa !18
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #17
  br label %.body14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_54ViewESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8FindViewERKS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SO_SO_T0_St26random_access_iterator_tag.exit.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.di = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ap
  br i1 %i.dj, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.dk = load i64, ptr %i.ap, align 8, !tbaa !18
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #17
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i
  %i.dm = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.v
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i"
  %i.do = load i64, ptr %i.v, align 8, !tbaa !18
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.x:                                             ; preds = %.noexc.i.i.i.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.y:                                             ; preds = %.noexc.i.i.i.i12.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i

.body14.i:                                        ; preds = %bb.w, %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i
  %eh.lpad-body15.i = phi { ptr, i32 } [ %i.dr, %bb.y ], [ %lpad.phi.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i ], [ %lpad.phi.i.i, %bb.w ] ; 2 uses
  %i.ds = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ap
  br i1 %i.dt, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i: ; preds = %.body14.i
  %i.du = load i64, ptr %i.ap, align 8, !tbaa !18
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #17
  br label %.body.i

.body.i:                                          ; preds = %.body14.i, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i ], [ %i.dq, %bb.x ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i ], [ %i.bf, %bb.k ], [ %eh.lpad-body15.i, %.body14.i ] ; 2 uses
  %i.dw = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.v
  br i1 %i.dx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i: ; preds = %.body.i
  %i.dy = load i64, ptr %i.v, align 8, !tbaa !18
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #17
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN16OpenColorIO_v2_58FindViewERKSt6vectorINS2_4ViewESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ea = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.i
  br i1 %i.eb, label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ec = load i64, ptr %i.i, align 8, !tbaa !18
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #17
  br label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit"

"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret ptr %.sroa.08.0.in.sroa.speculated.i.i.i

bb.z:                                             ; preds = %.noexc.i.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.ee, %bb.z ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i ], [ %.pn.i, %.body.i ]
  %i.ef = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.i
  br i1 %i.eg, label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit10", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %.body
  %i.eh = load i64, ptr %i.i, align 8, !tbaa !18
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #17
  br label %"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit10"

"_ZZN16OpenColorIO_v2_58FindViewERKSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit10": ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden ptr @_ZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.23", align 8 ; 17 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.anon.13, align 8             ; 11 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.23", align 8 ; 11 uses
  %5 = alloca %class.anon.13, align 8             ; 11 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %class.anon.13, align 8             ; 9 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !10
  %i.j = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 %i.l, ptr %i.e, align 8, !tbaa !17
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !13
  %i.o = load i64, ptr %i.e, align 8, !tbaa !17
  store i64 %i.o, ptr %i.i, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !18
  store i8 %i.q, ptr %i.p, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !16
  %i.t = load ptr, ptr %6, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %.val = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %.val6 = load i64, ptr %i.s, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.v, ptr %5, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 %.val6, ptr %i.d, align 8, !tbaa !17
  %i.w = icmp ugt i64 %.val6, 15
  br i1 %i.w, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.z     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.x, ptr %5, align 8, !tbaa !13
  %i.y = load i64, ptr %i.d, align 8, !tbaa !17
  store i64 %i.y, ptr %i.v, align 8, !tbaa !18
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %.val6, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSD_.exit.i"
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = load i8, ptr %.val, align 1, !tbaa !18
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !18
  br label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSD_.exit.i"

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr readonly align 1 %.val, i64 %.val6, i1 false)
  br label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSD_.exit.i"

"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSD_.exit.i": ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !16
  %i.ad = load ptr, ptr %5, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %.val.i = load ptr, ptr %5, align 8, !tbaa !13  ; 2 uses
  %.val7.i = load i64, ptr %i.ac, align 8, !tbaa !16 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !10, !noalias !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !34
  store i64 %.val7.i, ptr %i.c, align 8, !tbaa !17, !noalias !34
  %i.ag = icmp ugt i64 %.val7.i, 15
  br i1 %i.ag, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSD_.exit.i"
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i7 unwind label %bb.x  ; 2 uses

.noexc.i7:                                        ; preds = %.noexc.i.i.i.i
  store ptr %i.ah, ptr %3, align 8, !tbaa !13, !noalias !34
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !34
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !18, !noalias !34
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i7, %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSD_.exit.i"
  %i.aj = phi ptr [ %i.ah, %.noexc.i7 ], [ %i.af, %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKSD_.exit.i" ] ; 2 uses
  switch i64 %.val7.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSD_.exit.i.i"
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = load i8, ptr %.val.i, align 1, !tbaa !18, !noalias !34
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !18, !noalias !34
  br label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSD_.exit.i.i"

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr readonly align 1 %.val.i, i64 %.val7.i, i1 false), !noalias !34
  br label %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSD_.exit.i.i"

"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSD_.exit.i.i": ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i
  %i.al = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !34 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !16, !noalias !34
  %i.an = load ptr, ptr %3, align 8, !tbaa !13, !noalias !34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !18, !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !34
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !10, !alias.scope !34
  %i.aq = load ptr, ptr %3, align 8, !tbaa !13, !noalias !34 ; 2 uses
  %i.ar = load i64, ptr %i.am, align 8, !tbaa !16, !noalias !34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !34
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !17, !noalias !34
  %i.as = icmp ugt i64 %i.ar, 15
  br i1 %i.as, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSD_.exit.i.i"
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.k ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i.i
  store ptr %i.at, ptr %4, align 8, !tbaa !13, !alias.scope !34
  %i.au = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !34
  store i64 %i.au, ptr %i.ap, align 8, !tbaa !18, !alias.scope !34
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i, %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSD_.exit.i.i"
  %i.av = phi ptr [ %i.at, %.noexc.i.i ], [ %i.ap, %"_ZZN16OpenColorIO_v2_58FindViewERSt6vectorINS_4ViewESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOSD_.exit.i.i" ] ; 2 uses
  switch i64 %i.ar, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aw = load i8, ptr %i.aq, align 1, !tbaa !18
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !18
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !34 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !16, !alias.scope !34
  %i.az = load ptr, ptr %4, align 8, !tbaa !13, !alias.scope !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !34
  %i.bb = load ptr, ptr %3, align 8, !tbaa !13, !noalias !34 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.af
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bd = load i64, ptr %i.af, align 8, !tbaa !18, !noalias !34
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_54ViewC2EPKcS2_S2_S2_S2_S2_:bb.a
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !13
  %i.by = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.by, ptr %i.bu, align 8, !tbaa !18
  br label %._crit_edge.i.i44

._crit_edge.i.i44:                                ; preds = %.noexc46, %bb.q
  %i.bz = phi ptr [ %i.bx, %.noexc46 ], [ %i.bu, %bb.q ] ; 2 uses
  switch i64 %i.bv, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i44
  %i.ca = load i8, ptr %i.bt, align 1, !tbaa !18
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !18
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr nonnull align 1 %i.bt, i64 %i.bv, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i44
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !16
  %i.cd = load ptr, ptr %i.bs, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store i8 0, ptr %i.ce, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void

bb.u:                                             ; preds = %.noexc.i29
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.v:                                             ; preds = %.noexc.i33
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.w:                                             ; preds = %.noexc.i37
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.x:                                             ; preds = %.noexc.i41
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.y:                                             ; preds = %.noexc.i45
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %i.bf, align 8, !tbaa !13 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.bh
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.cm = load i64, ptr %i.bh, align 8, !tbaa !18
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.x ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cj, %bb.y ] ; 2 uses
  %i.co = load ptr, ptr %i.as, align 8, !tbaa !13 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.au
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = load i64, ptr %i.au, align 8, !tbaa !18
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.w ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.cs = load ptr, ptr %i.af, align 8, !tbaa !13 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ah
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.cu = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.v ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ] ; 2 uses
  %i.cw = load ptr, ptr %i.s, align 8, !tbaa !13  ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.u
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.cy = load i64, ptr %i.u, align 8, !tbaa !18
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  %i.da = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.g
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.dc = load i64, ptr %i.g, align 8, !tbaa !18
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_54ViewD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !18
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !18
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.w = load i64, ptr %i.u, align 8, !tbaa !18
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ae = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !18
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_515ComputeDisplaysERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS0_ISt4pairIS6_NS_7DisplayEESaISC_EERKS8_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::vector.14", align 8    ; 15 uses
  %5 = alloca %"class.std::vector.14", align 16   ; 10 uses
  %6 = alloca %"class.std::vector.14", align 16   ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !18
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !45
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !7    ; 2 uses
  %.not55 = icmp eq ptr %i.k, %i.m
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.p = load ptr, ptr %3, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.m, label %bb.h

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.052.056 = phi ptr [ %i.k, %.lr.ph ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 4 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !45   ; 8 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !48
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !10
  %i.w = load ptr, ptr %.sroa.052.056, align 8, !tbaa !13 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.052.056, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.y, ptr %i.a, align 8, !tbaa !17
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !13
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !18
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.c
  %i.ac = phi ptr [ %i.aa, %.noexc ], [ %i.v, %bb.c ] ; 2 uses
  switch i64 %i.y, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !18
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !16
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.aj, ptr %i.n, align 8, !tbaa !45
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.f:                                             ; preds = %bb.b
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.052.056)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.g

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.052.056, i64 88 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.m
  br i1 %.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %bb.f, %.noexc.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZN16OpenColorIO_v2_529IntersectStringVecsCaseIgnoreERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESA_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %0, align 8, !tbaa !42    ; 5 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !45  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = load <2 x ptr>, ptr %5, align 16, !tbaa !47
  store <2 x ptr> %i.ar, ptr %0, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !48
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !48
  %.not4.i.i.i.i.i = icmp eq ptr %i.am, %i.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.az, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.am, %bb.i ] ; 3 uses
  %i.au = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !18
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %i.an
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.i
  %.not.i.i1.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ba = ptrtoint ptr %i.ap to i64
  %i.bb = ptrtoint ptr %i.am to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bc) #17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.j
  %i.bd = load ptr, ptr %5, align 16, !tbaa !42   ; 3 uses
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !45 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bd, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !18
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, %i.be
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 16, !tbaa !42
end_hunk_4
begin_hunk_5_@_ZN16OpenColorIO_v2_54ViewC2EOS0_:bb.a
  %i.i = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.i, ptr %i.a, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !16
  store ptr %i.c, ptr %1, align 8, !tbaa !13
  store i64 0, ptr %i.j, align 8, !tbaa !16
  store i8 0, ptr %i.c, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !10
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.p, ptr %i.m, align 8, !tbaa !13
  %i.w = load i64, ptr %i.q, align 8, !tbaa !18
  store i64 %i.w, ptr %i.o, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.y, ptr %i.z, align 8, !tbaa !16
  store ptr %i.q, ptr %i.n, align 8, !tbaa !13
  store i64 0, ptr %i.x, align 8, !tbaa !16
  store i8 0, ptr %i.q, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !10
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !16 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !13
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !18
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.am, ptr %i.an, align 8, !tbaa !16
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !13
  store i64 0, ptr %i.al, align 8, !tbaa !16
  store i8 0, ptr %i.ae, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !10
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !13 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !13
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !18
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !16
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !13
  store i64 0, ptr %i.az, align 8, !tbaa !16
  store i8 0, ptr %i.as, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !10
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !13 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !16 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 16
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !13
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !18
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !16
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !13
  store i64 0, ptr %i.bn, align 8, !tbaa !16
  store i8 0, ptr %i.bg, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !10
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !13 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 5 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !16 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 16
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.bz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !13
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !18
  store i64 %i.ca, ptr %i.bs, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !16
  store ptr %i.bu, ptr %i.br, align 8, !tbaa !13
  store i64 0, ptr %i.cb, align 8, !tbaa !16
  store i8 0, ptr %i.bu, align 8, !tbaa !18
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !42     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i)
  %10 = shl nuw nsw i64 %7, 5                     ; 2 uses
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #20 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !10
  %i.k = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.m, ptr %i.a, align 8, !tbaa !17
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !13
  %i.p = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.p, ptr %i.j, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !18
  store i8 %i.r, ptr %i.q, align 1, !tbaa !18
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !16
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %11, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !10, !alias.scope !54, !noalias !57
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !13, !alias.scope !57, !noalias !54 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16, !alias.scope !57, !noalias !54 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !59
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !13, !alias.scope !54, !noalias !57
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !18, !alias.scope !57, !noalias !54
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !18, !alias.scope !54, !noalias !57
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !alias.scope !57, !noalias !54
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !16, !alias.scope !54, !noalias !57
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !13, !alias.scope !57, !noalias !54
  store i64 0, ptr %i.ag, align 8, !tbaa !16, !alias.scope !57, !noalias !54
  store i8 0, ptr %i.y, align 8, !tbaa !18, !alias.scope !57, !noalias !54
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !60

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %11, %bb.e ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i28, align 8, !tbaa !10, !alias.scope !61, !noalias !64
  %i.am = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !13, !alias.scope !64, !noalias !61 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16, !alias.scope !64, !noalias !61 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !66
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.am, ptr %.012.i.i.i28, align 8, !tbaa !13, !alias.scope !61, !noalias !64
  %i.at = load i64, ptr %i.an, align 8, !tbaa !18, !alias.scope !64, !noalias !61
  store i64 %i.at, ptr %i.al, align 8, !tbaa !18, !alias.scope !61, !noalias !64
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !16, !alias.scope !64, !noalias !61
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !16, !alias.scope !61, !noalias !64
  store ptr %i.an, ptr %.0911.i.i.i29, align 8, !tbaa !13, !alias.scope !64, !noalias !61
  store i64 0, ptr %i.av, align 8, !tbaa !16, !alias.scope !64, !noalias !61
  store i8 0, ptr %i.an, align 8, !tbaa !18, !alias.scope !64, !noalias !61
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !60

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !48
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bc) #17
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %11, ptr %0, align 8, !tbaa !42
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !45
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %7
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !48
  ret void

bb.i:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #16 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %10) #17
  invoke void @__cxa_rethrow() #18
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.be

bb.l:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #19
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i, !prof !67

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 576460752303423487
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 5
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #20
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %2, ptr %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #16 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = shl nuw nsw i64 %1, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #17
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #18
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #19
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !10
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.e, ptr %i.a, align 8, !tbaa !17
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !13
  %i.h = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.h, ptr %i.b, align 8, !tbaa !18
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !18
  store i8 %i.j, ptr %i.i, align 1, !tbaa !18
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !16
  %i.m = load ptr, ptr %.014, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #16 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #18
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #19
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.01215 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
end_hunk_5
