inline.NumInlined: 157
inline.NumDeleted: 73
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

@_ZZN4node12GetOctalCodeB5cxx11EhE5tableB5cxx11 = internal global %"class.std::vector" zeroinitializer, align 8
@_ZGVZN4node12GetOctalCodeB5cxx11EhE5tableB5cxx11 = internal global i64 0, align 8
@__dso_handle = external hidden global i8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4node13ToOctalStringB5cxx11Eh(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i8 %1, -32
  %or.cond = icmp ult i8 %i.a, 95
  br i1 %or.cond, label %switch.early.test, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

switch.early.test:                                ; preds = %bb.a
  switch i8 %1, label %bb.b [
    i8 92, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
    i8 63, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
    i8 34, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  ]

bb.b:                                             ; preds = %switch.early.test
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8
  store i8 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.d, align 1
  br label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.a, %switch.early.test, %switch.early.test, %switch.early.test
  %i.e = lshr i8 %1, 3
  %i.f = and i8 %i.e, 7
  %i.g = or disjoint i8 %i.f, 48
  %i.h = and i8 %1, 7
  %i.i = or disjoint i8 %i.h, 48
  %i.j = lshr i8 %1, 6
  %i.k = or disjoint i8 %i.j, 48
  %.sroa.249.17.insert.ext = zext nneg i8 %i.k to i32
  %.sroa.249.17.insert.shift = shl nuw nsw i32 %.sroa.249.17.insert.ext, 8
  %.sroa.249.18.insert.ext51 = zext nneg i8 %i.g to i32
  %.sroa.249.18.insert.shift52 = shl nuw nsw i32 %.sroa.249.18.insert.ext51, 16
  %.sroa.249.17.insert.insert = or disjoint i32 %.sroa.249.17.insert.shift, %.sroa.249.18.insert.shift52
  %.sroa.249.18.insert.insert54 = or disjoint i32 %.sroa.249.17.insert.insert, 92
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !alias.scope !5
  %.sroa.256.sroa.4.0.insert.ext = zext nneg i8 %i.i to i32
  %.sroa.256.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.256.sroa.4.0.insert.ext, 24
  %.sroa.256.sroa.0.0.insert.insert = or disjoint i32 %.sroa.256.sroa.4.0.insert.shift, %.sroa.249.18.insert.insert54
  store i32 %.sroa.256.sroa.0.0.insert.insert, ptr %i.l, align 8
  %.sroa.557.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %.sroa.557.16..sroa_idx, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.m, align 8, !alias.scope !5
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node13GetOctalTableB5cxx11Ev(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector") align 8 captures(none) initializes((0, 8), (16, 24)) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(8192) ptr @_Znwm(i64 noundef 8192) #6 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8192
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.08.i.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.q, %.lr.ph.i.i.i.i.i ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ 256, %bb.a ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.e, ptr %.08.i.i.i.i.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.f, align 8
  store i8 0, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.i, align 8
  store i8 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.l, align 8
  store i8 0, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.o, align 8
  store i8 0, ptr %i.n, align 8
  %i.p = add nsw i64 %.057.i.i.i.i.i, -4          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.q, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %.sroa.516.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.u = load ptr, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.018 = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.v = trunc nuw i64 %.018 to i8                ; 7 uses
  %i.w = add i8 %i.v, -32
  %or.cond.i = icmp ult i8 %i.w, 95
  br i1 %or.cond.i, label %switch.early.test.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i

switch.early.test.i:                              ; preds = %bb.b
  switch i8 %i.v, label %2 [
    i8 92, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i
    i8 63, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i
    i8 34, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i
  ]

2:                                                ; preds = %switch.early.test.i
  store ptr %i.s, ptr %1, align 8, !alias.scope !10
  store i8 %i.v, ptr %i.s, align 8, !alias.scope !10
  store i64 1, ptr %i.r, align 8, !alias.scope !10
  store i8 0, ptr %i.t, align 1, !alias.scope !10
  br label %_ZN4node13ToOctalStringB5cxx11Eh.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i: ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.b
  %i.x = lshr i8 %i.v, 3
  %i.y = and i8 %i.x, 7
  %i.z = or disjoint i8 %i.y, 48
  %i.aa = and i8 %i.v, 7
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = lshr i8 %i.v, 6
  %i.ad = or disjoint i8 %i.ac, 48
  %.sroa.28.17.insert.ext = zext nneg i8 %i.ad to i32
  %.sroa.28.17.insert.shift = shl nuw nsw i32 %.sroa.28.17.insert.ext, 8
  %.sroa.28.18.insert.ext10 = zext nneg i8 %i.z to i32
  %.sroa.28.18.insert.shift11 = shl nuw nsw i32 %.sroa.28.18.insert.ext10, 16
  %.sroa.28.17.insert.insert = or disjoint i32 %.sroa.28.18.insert.shift11, %.sroa.28.17.insert.shift
  store ptr %i.s, ptr %1, align 8, !alias.scope !13
  %.sroa.215.sroa.4.0.insert.ext = zext nneg i8 %i.ab to i32
  %.sroa.215.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.215.sroa.4.0.insert.ext, 24
  %.sroa.28.18.insert.insert13 = or disjoint i32 %.sroa.28.17.insert.insert, %.sroa.215.sroa.4.0.insert.shift
  %.sroa.215.sroa.0.0.insert.insert = or disjoint i32 %.sroa.28.18.insert.insert13, 92
  store i32 %.sroa.215.sroa.0.0.insert.insert, ptr %i.s, align 8
  store i8 0, ptr %.sroa.516.16..sroa_idx, align 4
  store i64 4, ptr %i.r, align 8, !alias.scope !13
  br label %_ZN4node13ToOctalStringB5cxx11Eh.exit

_ZN4node13ToOctalStringB5cxx11Eh.exit:            ; preds = %2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i
  %3 = phi i8 [ %i.v, %2 ], [ 92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i ]
  %cond = phi i1 [ true, %2 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i ]
  %4 = phi i64 [ 1, %2 ], [ 4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i ]
  %5 = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.018 ; 4 uses
  %6 = load ptr, ptr %5, align 8                  ; 2 uses
  %.not21.i = icmp eq ptr %1, %5
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %7, !prof !16

7:                                                ; preds = %_ZN4node13ToOctalStringB5cxx11Eh.exit
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %7
  store i8 %3, ptr %6, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.d:                                             ; preds = %7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.d, %bb.c
  %i.ae = load i64, ptr %i.r, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = load ptr, ptr %5, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1
  %.pre.i = load ptr, ptr %1, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZN4node13ToOctalStringB5cxx11Eh.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %8 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.s, %_ZN4node13ToOctalStringB5cxx11Eh.exit ]
  store i64 0, ptr %i.r, align 8
  store i8 0, ptr %8, align 1
  %i.ai = load ptr, ptr %1, align 8               ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.s
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ak = load i64, ptr %i.s, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.am = add nuw nsw i64 %.018, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, 256
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !17

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #8
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #8
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4node12GetOctalCodeB5cxx11Eh(i8 noundef zeroext %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4node12GetOctalCodeB5cxx11EhE5tableB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4node12GetOctalCodeB5cxx11EhE5tableB5cxx11) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4node13GetOctalTableB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 @_ZZN4node12GetOctalCodeB5cxx11EhE5tableB5cxx11)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN4node12GetOctalCodeB5cxx11EhE5tableB5cxx11, ptr nonnull @__dso_handle) #7 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4node12GetOctalCodeB5cxx11EhE5tableB5cxx11) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = zext i8 %0 to i64
  %i.f = load ptr, ptr @_ZZN4node12GetOctalCodeB5cxx11EhE5tableB5cxx11, align 8
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.e
  ret ptr %i.g
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin nounwind allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!7 = distinct !{!7, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN4node13ToOctalStringB5cxx11Eh: argument 0"}
!12 = distinct !{!12, !"_ZN4node13ToOctalStringB5cxx11Eh"}
!13 = !{!14, !11}
!14 = distinct !{!14, !15, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!15 = distinct !{!15, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = !{!"branch_weights", i32 1, i32 1048575}
end_hunk_0
