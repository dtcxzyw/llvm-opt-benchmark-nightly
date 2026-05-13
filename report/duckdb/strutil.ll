inline.NumInlined: 59
inline.NumDeleted: 41
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re27CEscapeB5cxx11ERKNS_11StringPieceE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7    ; 3 uses
  %i.d = shl i64 %i.c, 2
  %i.e = or disjoint i64 %i.d, 1                  ; 3 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #11 ; 12 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %._crit_edge.i.i.thread, label %.lr.ph.i

._crit_edge.i.i.thread:                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %0, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !15
  br label %bb.p

.lr.ph.i:                                         ; preds = %bb.a, %bb.m
  %.05363.i = phi i64 [ %.255.ph.i, %bb.m ], [ 0, %bb.a ] ; 17 uses
  %.05662.i = phi ptr [ %i.am, %bb.m ], [ %i.g, %bb.a ] ; 2 uses
  %i.j = sub i64 %i.e, %.05363.i                  ; 2 uses
  %i.k = icmp ult i64 %i.j, 2
  br i1 %i.k, label %_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = load i8, ptr %.05662.i, align 1, !tbaa !16 ; 4 uses
  %i.m = zext i8 %i.l to i32
  switch i8 %i.l, label %bb.i [
    i8 10, label %bb.c
    i8 13, label %bb.d
    i8 9, label %bb.e
    i8 34, label %bb.f
    i8 39, label %bb.g
    i8 92, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05363.i ; 2 uses
  store i8 92, ptr %i.n, align 1, !tbaa !16
  %i.o = add i64 %.05363.i, 2
  %i.p = getelementptr i8, ptr %i.n, i64 1
  store i8 110, ptr %i.p, align 1, !tbaa !16
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05363.i ; 2 uses
  store i8 92, ptr %i.q, align 1, !tbaa !16
  %i.r = add i64 %.05363.i, 2
  %i.s = getelementptr i8, ptr %i.q, i64 1
  store i8 114, ptr %i.s, align 1, !tbaa !16
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05363.i ; 2 uses
  store i8 92, ptr %i.t, align 1, !tbaa !16
  %i.u = add i64 %.05363.i, 2
  %i.v = getelementptr i8, ptr %i.t, i64 1
  store i8 116, ptr %i.v, align 1, !tbaa !16
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05363.i ; 2 uses
  store i8 92, ptr %i.w, align 1, !tbaa !16
  %i.x = add i64 %.05363.i, 2
  %i.y = getelementptr i8, ptr %i.w, i64 1
  store i8 34, ptr %i.y, align 1, !tbaa !16
  br label %bb.m

bb.g:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05363.i ; 2 uses
  store i8 92, ptr %i.z, align 1, !tbaa !16
  %i.aa = add i64 %.05363.i, 2
  %i.ab = getelementptr i8, ptr %i.z, i64 1
  store i8 39, ptr %i.ab, align 1, !tbaa !16
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05363.i ; 2 uses
  store i8 92, ptr %i.ac, align 1, !tbaa !16
  %i.ad = add i64 %.05363.i, 2
  %i.ae = getelementptr i8, ptr %i.ac, i64 1
  store i8 92, ptr %i.ae, align 1, !tbaa !16
  br label %bb.m

bb.i:                                             ; preds = %bb.b
  %i.af = add i8 %i.l, -127
  %or.cond.i = icmp ult i8 %i.af, -95
  br i1 %or.cond.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp ult i64 %i.j, 5
  br i1 %i.ag, label %_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05363.i
  %i.ai = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ah, i64 noundef 5, ptr noundef nonnull @.str, i32 noundef %i.m) #12 ; 0 uses
  %i.aj = add i64 %.05363.i, 4
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ak = add i64 %.05363.i, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05363.i
  store i8 %i.l, ptr %i.al, align 1, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.255.ph.i = phi i64 [ %i.ad, %bb.h ], [ %i.aa, %bb.g ], [ %i.x, %bb.f ], [ %i.u, %bb.e ], [ %i.r, %bb.d ], [ %i.o, %bb.c ], [ %i.ak, %bb.l ], [ %i.aj, %bb.k ] ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05662.i, i64 1 ; 2 uses
  %i.an = icmp ult ptr %i.am, %i.h
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %bb.m
  %i.ao = icmp eq i64 %i.e, %.255.ph.i
  br i1 %i.ao, label %_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit.thread, label %_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit

_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit.thread: ; preds = %.lr.ph.i, %bb.j, %._crit_edge.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 -1, ptr %i.a, align 8, !tbaa !15
  br label %.noexc.i

_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit:     ; preds = %._crit_edge.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 %.255.ph.i
  store i8 0, ptr %i.aq, align 1, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %.255.ph.i, ptr %i.a, align 8, !tbaa !15
  %i.as = icmp ugt i64 %.255.ph.i, 15
  br i1 %i.as, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit.thread, %_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit
  %i.at = phi ptr [ %i.ap, %_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit.thread ], [ %i.ar, %_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit ]
  %.2.i16 = phi i64 [ -1, %_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit.thread ], [ %.255.ph.i, %_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit ]
  %i.au = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !19
  %i.av = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.av, ptr %i.at, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit
  %.2.i15 = phi i64 [ %.2.i16, %.noexc.i ], [ %.255.ph.i, %_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit ] ; 2 uses
  %i.aw = phi ptr [ %i.au, %.noexc.i ], [ %i.ar, %_ZN10duckdb_re2L13CEscapeStringEPKcmPcm.exit ] ; 2 uses
  switch i64 %.2.i15, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.ax = load i8, ptr %i.f, align 1, !tbaa !16
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !16
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr nonnull align 1 %i.f, i64 %.2.i15, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i, %._crit_edge.i.i.thread
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !21
  %i.ba = load ptr, ptr %0, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @_ZdaPv(ptr noundef nonnull %i.f) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10duckdb_re215PrefixSuccessorEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit: ; preds = %bb.c, %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit
  %i.d = load ptr, ptr %0, align 8, !tbaa !19
  %i.e = getelementptr i8, ptr %i.d, i64 %i.b     ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16    ; 2 uses
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.b, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit unwind label %bb.d

end_hunk_0
