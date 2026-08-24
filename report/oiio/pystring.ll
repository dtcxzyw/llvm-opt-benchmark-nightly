Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/pystring?download=true
inline.NumInlined: 1032
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@_ZN8pystringL13forward_slashB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN8pystringL20double_forward_slashB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN8pystringL20triple_forward_slashB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"///\00", align 1
@_ZN8pystringL17double_back_slashB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN8pystringL12empty_stringB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN8pystringL3dotB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN8pystringL10double_dotB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN8pystringL5colonB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_pystring.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN8pystring5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EES7_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !7      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.f, ptr %i.g, align 8, !tbaa !11
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %3, i32 2147483647) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19   ; 5 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19   ; 14 uses
  br i1 %i.o, label %bb.b, label %bb.y

bb.b:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %.not88.i = icmp eq i64 %i.q, 0
  br i1 %.not88.i, label %._crit_edge.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge4.i, %.preheader.lr.ph.i
  %.04284.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %.4.i, %.critedge4.i ]
  %.04583.i = phi i32 [ %spec.store.select, %.preheader.lr.ph.i ], [ %.146.i, %.critedge4.i ] ; 4 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.preheader.i
  %.14374.i = phi i64 [ %.04284.i, %.preheader.i ], [ %i.z, %bb.d ] ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.14374.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  %i.x = sext i8 %i.w to i32
  %i.y = call i32 @isspace(i32 noundef %i.x) #23
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = add nuw i64 %.14374.i, 1                 ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.q
  br i1 %i.aa, label %bb.c, label %_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit, !llvm.loop !21

.critedge.i:                                      ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %.14374.i ; 2 uses
  %i.ac = icmp ult i64 %.14374.i, %i.q
  br i1 %i.ac, label %.lr.ph.i, label %.critedge4.i

.lr.ph.i:                                         ; preds = %.critedge.i, %bb.e
  %.24475.i = phi i64 [ %i.ah, %bb.e ], [ %.14374.i, %.critedge.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %.24475.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.af = sext i8 %i.ae to i32
  %i.ag = call i32 @isspace(i32 noundef %i.af) #23
  %.not48.i = icmp eq i32 %i.ag, 0
  br i1 %.not48.i, label %bb.e, label %.critedge2.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ah = add i64 %.24475.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.q
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph.i, !llvm.loop !22

.critedge2.i:                                     ; preds = %bb.e, %.lr.ph.i
  %.244.lcssa.i = phi i64 [ %.24475.i, %.lr.ph.i ], [ %i.q, %bb.e ] ; 7 uses
  %i.ai = icmp ult i64 %.14374.i, %.244.lcssa.i
  br i1 %i.ai, label %bb.f, label %.critedge4.i

bb.f:                                             ; preds = %.critedge2.i
  %i.aj = add nsw i32 %.04583.i, -1               ; 2 uses
  %i.ak = icmp slt i32 %.04583.i, 1
  br i1 %i.ak, label %._crit_edge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.al = load i64, ptr %i.p, align 8, !tbaa !19, !noalias !23 ; 3 uses
  %i.am = icmp ugt i64 %.14374.i, %i.al
  br i1 %i.am, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %.14374.i, i64 noundef %i.al) #25, !noalias !23
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.g
  %9 = sub i64 %.244.lcssa.i, %.14374.i
  store ptr %i.r, ptr %4, align 8, !tbaa !26, !alias.scope !23
  %10 = sub nuw i64 %i.al, %.14374.i
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %9, i64 %10) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !23
  store i64 %spec.select.i.i.i.i, ptr %i.e, align 8, !tbaa !27, !noalias !23
  %i.an = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.an, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.ao, ptr %4, align 8, !tbaa !12, !alias.scope !23
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !27, !noalias !23
  store i64 %i.ap, ptr %i.r, align 8, !tbaa !20, !alias.scope !23
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.aq = phi ptr [ %i.ao, %.noexc10.i.i.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ar = load i8, ptr %i.ab, align 1, !tbaa !20
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 1 %i.ab, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.as = load i64, ptr %i.e, align 8, !tbaa !27, !noalias !23 ; 2 uses
  store i64 %i.as, ptr %i.s, align 8, !tbaa !19, !alias.scope !23
  %i.at = load ptr, ptr %4, align 8, !tbaa !12, !alias.scope !23
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !23
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !11  ; 6 uses
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !28
  %.not.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !26
  %i.ay = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.r
  br i1 %i.az, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !19  ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !12
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !20
  store i64 %i.bd, ptr %i.ax, align 8, !tbaa !20
  %.pre.i = load i64, ptr %i.s, align 8, !tbaa !19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.l
  %i.be = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ba, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !19
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %i.bh, ptr %i.g, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.av, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i unwind label %bb.p

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i: ; preds = %bb.m
  %.pre93.i = load ptr, ptr %4, align 8, !tbaa !12 ; 2 uses
  %i.bi = icmp eq ptr %.pre93.i, %i.r
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i
  call void @_ZdlPv(ptr noundef %.pre93.i) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bj = icmp ult i64 %.244.lcssa.i, %i.q
  br i1 %i.bj, label %.lr.ph79.i, label %.critedge4.i

.lr.ph79.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bk = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph79.i
  %.378.i = phi i64 [ %.244.lcssa.i, %.lr.ph79.i ], [ %i.bp, %bb.o ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.378.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20
  %i.bn = sext i8 %i.bm to i32
  %i.bo = call i32 @isspace(i32 noundef %i.bn) #23
  %.not49.i = icmp eq i32 %i.bo, 0
  br i1 %.not49.i, label %.critedge4.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = add i64 %.378.i, 1                      ; 2 uses
  %exitcond92.not.i = icmp eq i64 %i.bp, %i.q
  br i1 %exitcond92.not.i, label %_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit, label %bb.n, !llvm.loop !29

bb.p:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.r
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.br) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

.critedge4.i:                                     ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.critedge2.i, %.critedge.i
  %.146.i = phi i32 [ %.04583.i, %.critedge2.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.04583.i, %.critedge.i ], [ %i.aj, %bb.n ]
  %.4.i = phi i64 [ %.244.lcssa.i, %.critedge2.i ], [ %.244.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.14374.i, %.critedge.i ], [ %.378.i, %bb.n ] ; 2 uses
  %.1.i = phi i64 [ %.14374.i, %.critedge2.i ], [ %.244.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.14374.i, %.critedge.i ], [ %.378.i, %bb.n ]
  %i.bt = icmp ult i64 %.4.i, %i.q
  br i1 %i.bt, label %.preheader.i, label %._crit_edge.i, !llvm.loop !30

._crit_edge.i:                                    ; preds = %.critedge4.i, %bb.f, %bb.b
  %.2.i = phi i64 [ 0, %bb.b ], [ %.1.i, %.critedge4.i ], [ %.14374.i, %bb.f ] ; 5 uses
  %i.bu = icmp ult i64 %.2.i, %i.q
  br i1 %i.bu, label %bb.q, label %_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit

bb.q:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !19, !noalias !31 ; 3 uses
  %i.bw = icmp ugt i64 %.2.i, %i.bv
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %.2.i, i64 noundef %i.bv) #25, !noalias !31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i: ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.bx, ptr %5, align 8, !tbaa !26, !alias.scope !31
  %i.by = load ptr, ptr %0, align 8, !tbaa !12, !noalias !31
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.2.i ; 2 uses
  %i.ca = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.bv)
  %spec.select.i.i.i55.i = sub nuw i64 %i.ca, %.2.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !31
  store i64 %spec.select.i.i.i55.i, ptr %i.d, align 8, !tbaa !27, !noalias !31
  %i.cb = icmp ugt i64 %spec.select.i.i.i55.i, 15
  br i1 %i.cb, label %.noexc10.i.i57.i, label %._crit_edge.i.i.i56.i

.noexc10.i.i57.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i
  %i.cc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.cc, ptr %5, align 8, !tbaa !12, !alias.scope !31
  %i.cd = load i64, ptr %i.d, align 8, !tbaa !27, !noalias !31
  store i64 %i.cd, ptr %i.bx, align 8, !tbaa !20, !alias.scope !31
  br label %._crit_edge.i.i.i56.i

._crit_edge.i.i.i56.i:                            ; preds = %.noexc10.i.i57.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i
  %i.ce = phi ptr [ %i.cc, %.noexc10.i.i57.i ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i ] ; 2 uses
  switch i64 %spec.select.i.i.i55.i, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i56.i
  %i.cf = load i8, ptr %i.bz, align 1, !tbaa !20
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i

bb.t:                                             ; preds = %._crit_edge.i.i.i56.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %i.bz, i64 %spec.select.i.i.i55.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i: ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i56.i
  %i.cg = load i64, ptr %i.d, align 8, !tbaa !27, !noalias !31 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !19, !alias.scope !31
  %i.ci = load ptr, ptr %5, align 8, !tbaa !12, !alias.scope !31
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !31
  %i.ck = load ptr, ptr %i.g, align 8, !tbaa !11  ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !28
  %.not.i.i59.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not.i.i59.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 3 uses
  store ptr %i.cn, ptr %i.ck, align 8, !tbaa !26
  %i.co = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bx
  br i1 %i.cp, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.i
end_hunk_0
begin_hunk_1_@_ZN8pystring5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EES7_i:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit62

bb.at:                                            ; preds = %._crit_edge.i.i.i60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gb, ptr align 1 %i.fw, i64 %spec.select.i.i.i59, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit62: ; preds = %._crit_edge.i.i.i60, %bb.as, %bb.at
  %i.gd = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !42 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !19, !alias.scope !42
  %i.gf = load ptr, ptr %8, align 8, !tbaa !12, !alias.scope !42
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gd
  store i8 0, ptr %i.gg, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !42
  %i.gh = load ptr, ptr %i.g, align 8, !tbaa !11  ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !28
  %.not.i.i63 = icmp eq ptr %i.gh, %i.gj
  br i1 %.not.i.i63, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit62
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 3 uses
  store ptr %i.gk, ptr %i.gh, align 8, !tbaa !26
  %i.gl = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.fu
  br i1 %i.gm, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

bb.av:                                            ; preds = %bb.au
  %i.gn = load i64, ptr %i.ge, align 8, !tbaa !19 ; 3 uses
  %i.go = icmp ult i64 %i.gn, 16
  call void @llvm.assume(i1 %i.go)
  %i.gp = add nuw nsw i64 %i.gn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gk, ptr noundef nonnull align 8 dereferenceable(1) %i.fu, i64 %i.gp, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.au
  store ptr %i.gl, ptr %i.gh, align 8, !tbaa !12
  %i.gq = load i64, ptr %i.fu, align 8, !tbaa !20
  store i64 %i.gq, ptr %i.gk, align 8, !tbaa !20
  %.pre127 = load i64, ptr %i.ge, align 8, !tbaa !19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67.thread: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  %i.gr = phi i64 [ %.pre127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64 ], [ %i.gn, %bb.av ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !19
  store i64 0, ptr %i.ge, align 8, !tbaa !19
  %i.gt = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  store ptr %i.gu, ptr %i.g, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit62
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.gh, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67 unwind label %bb.ax

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67: ; preds = %bb.aw
  %.pre128 = load ptr, ptr %8, align 8, !tbaa !12 ; 2 uses
  %i.gv = icmp eq ptr %.pre128, %i.fu
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67
  call void @_ZdlPv(ptr noundef %.pre128) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit

_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit: ; preds = %bb.d, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i, %._crit_edge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  ret void

bb.ax:                                            ; preds = %bb.aw
  %i.gw = landingpad { ptr, i32 }
          cleanup
  %i.gx = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.fu
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.ax
  call void @_ZdlPv(ptr noundef %i.gx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN8pystring6rsplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EES7_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.f = icmp slt i32 %3, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8pystring5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EES7_i(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3)
  br label %_ZN8pystring12_GLOBAL__N_117rsplit_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !7      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !11
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19   ; 3 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19   ; 4 uses
  br i1 %i.p, label %bb.d, label %bb.x

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %.not82.i = icmp eq i64 %i.r, 0
  br i1 %.not82.i, label %._crit_edge.thread.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge4.i, %.preheader.lr.ph.i
  %.03784.i = phi i64 [ %i.r, %.preheader.lr.ph.i ], [ %.4.i, %.critedge4.i ]
  %.04083.i = phi i32 [ %3, %.preheader.lr.ph.i ], [ %.141.i, %.critedge4.i ] ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %.not42.i = icmp eq i64 %i.w, 0
  br i1 %.not42.i, label %.critedge.i, label %bb.f, !llvm.loop !45

bb.f:                                             ; preds = %.preheader.i, %bb.e
  %.138.i254 = phi i64 [ %.03784.i, %.preheader.i ], [ %i.w, %bb.e ] ; 2 uses
  %i.w = add i64 %.138.i254, -1                   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %i.z = sext i8 %i.y to i32
  %i.aa = call i32 @isspace(i32 noundef %i.z) #23
  %.not43.i = icmp eq i32 %i.aa, 0
  br i1 %.not43.i, label %.critedge.i, label %bb.e, !llvm.loop !45

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.138.i.lcssa = phi i64 [ %.138.i254, %bb.f ], [ %i.w, %bb.e ] ; 7 uses
  %.not44.i255 = icmp eq i64 %.138.i.lcssa, 0
  br i1 %.not44.i255, label %.critedge2.i, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %.critedge.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !12
  br label %.lr.ph257

bb.g:                                             ; preds = %.lr.ph257
  %.not44.i = icmp eq i64 %i.ac, 0
  br i1 %.not44.i, label %.critedge2.i, label %.lr.ph257, !llvm.loop !46

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %bb.g
  %.239.i256 = phi i64 [ %i.ac, %bb.g ], [ %.138.i.lcssa, %.lr.ph257.preheader ] ; 2 uses
  %i.ac = add i64 %.239.i256, -1                  ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.af = sext i8 %i.ae to i32
  %i.ag = call i32 @isspace(i32 noundef %i.af) #23
  %.not45.i = icmp eq i32 %i.ag, 0
  br i1 %.not45.i, label %bb.g, label %..critedge2.i_crit_edge, !llvm.loop !46

..critedge2.i_crit_edge:                          ; preds = %.lr.ph257
  br label %.critedge2.i, !llvm.loop !46

.critedge2.i:                                     ; preds = %bb.g, %..critedge2.i_crit_edge, %.critedge.i
  %.239.i.lcssa = phi i64 [ %.239.i256, %..critedge2.i_crit_edge ], [ %.138.i.lcssa, %.critedge.i ], [ %i.ac, %bb.g ] ; 9 uses
  %i.ah = icmp ugt i64 %.138.i.lcssa, %.239.i.lcssa
  br i1 %i.ah, label %bb.h, label %.critedge4.i

bb.h:                                             ; preds = %.critedge2.i
  %i.ai = add nsw i32 %.04083.i, -1
  %i.aj = icmp slt i32 %.04083.i, 1
  br i1 %i.aj, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !47 ; 3 uses
  %i.al = icmp ugt i64 %.239.i.lcssa, %i.ak
  br i1 %i.al, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %.239.i.lcssa, i64 noundef %i.ak) #25, !noalias !47
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.i
  %9 = sub i64 %.138.i.lcssa, %.239.i.lcssa
  store ptr %i.s, ptr %4, align 8, !tbaa !26, !alias.scope !47
  %i.am = load ptr, ptr %0, align 8, !tbaa !12, !noalias !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.239.i.lcssa ; 2 uses
  %10 = sub nuw i64 %i.ak, %.239.i.lcssa
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %9, i64 %10) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !47
  store i64 %spec.select.i.i.i.i, ptr %i.e, align 8, !tbaa !27, !noalias !47
  %i.ao = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.ao, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !12, !alias.scope !47
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !27, !noalias !47
  store i64 %i.aq, ptr %i.s, align 8, !tbaa !20, !alias.scope !47
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.ar = phi ptr [ %i.ap, %.noexc10.i.i.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = load i8, ptr %i.an, align 1, !tbaa !20
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.an, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i
  %i.at = load i64, ptr %i.e, align 8, !tbaa !27, !noalias !47 ; 2 uses
  store i64 %i.at, ptr %i.t, align 8, !tbaa !19, !alias.scope !47
  %i.au = load ptr, ptr %4, align 8, !tbaa !12, !alias.scope !47
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !47
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !11  ; 6 uses
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !28
  %.not.i.i.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !26
  %i.az = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.s
  br i1 %i.ba, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bb = load i64, ptr %i.t, align 8, !tbaa !19  ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !12
  %i.be = load i64, ptr %i.s, align 8, !tbaa !20
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !20
  %.pre.i = load i64, ptr %i.t, align 8, !tbaa !19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.n
  %i.bf = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bb, %bb.n ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !19
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store ptr %i.bi, ptr %i.h, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i unwind label %bb.q

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i: ; preds = %bb.o
  %.pre92.i = load ptr, ptr %4, align 8, !tbaa !12 ; 2 uses
  %i.bj = icmp eq ptr %.pre92.i, %i.s
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i
  call void @_ZdlPv(ptr noundef %.pre92.i) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not46.i260 = icmp eq i64 %.239.i.lcssa, 0
  br i1 %.not46.i260, label %._crit_edge.thread.i, label %.lr.ph262.preheader

.lr.ph262.preheader:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bk = load ptr, ptr %0, align 8, !tbaa !12
  br label %.lr.ph262

bb.p:                                             ; preds = %.lr.ph262
  %.not46.i = icmp eq i64 %i.bl, 0
  br i1 %.not46.i, label %._crit_edge.thread.i, label %.lr.ph262, !llvm.loop !50

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.p
  %.3.i261 = phi i64 [ %i.bl, %bb.p ], [ %.239.i.lcssa, %.lr.ph262.preheader ] ; 3 uses
  %i.bl = add i64 %.3.i261, -1                    ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20
  %i.bo = sext i8 %i.bn to i32
  %i.bp = call i32 @isspace(i32 noundef %i.bo) #23
  %.not47.i = icmp eq i32 %i.bp, 0
  br i1 %.not47.i, label %.critedge4.i, label %bb.p, !llvm.loop !50

bb.q:                                             ; preds = %bb.o
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.s
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.br) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

.critedge4.i:                                     ; preds = %.lr.ph262, %.critedge2.i
  %.141.i = phi i32 [ %.04083.i, %.critedge2.i ], [ %i.ai, %.lr.ph262 ]
  %.4.i = phi i64 [ %.239.i.lcssa, %.critedge2.i ], [ %.3.i261, %.lr.ph262 ] ; 2 uses
  %.1.i = phi i64 [ %.138.i.lcssa, %.critedge2.i ], [ %.3.i261, %.lr.ph262 ] ; 2 uses
  %.not.i = icmp eq i64 %.4.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.preheader.i, !llvm.loop !51

._crit_edge.i:                                    ; preds = %.critedge4.i
  %.not48.i = icmp eq i64 %.1.i, 0
  br i1 %.not48.i, label %._crit_edge.thread.i, label %.thread.i

.thread.i:                                        ; preds = %bb.h, %._crit_edge.i
  %.271.i = phi i64 [ %.1.i, %._crit_edge.i ], [ %.138.i.lcssa, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.bt = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !52
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.bu, ptr %5, align 8, !tbaa !26, !alias.scope !52
  %i.bv = load ptr, ptr %0, align 8, !tbaa !12, !noalias !52 ; 2 uses
  %spec.select.i.i.i54.i = call noundef i64 @llvm.umin.i64(i64 %.271.i, i64 %i.bt) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !52
  store i64 %spec.select.i.i.i54.i, ptr %i.d, align 8, !tbaa !27, !noalias !52
  %i.bw = icmp ugt i64 %spec.select.i.i.i54.i, 15
  br i1 %i.bw, label %.noexc10.i.i56.i, label %._crit_edge.i.i.i55.i

.noexc10.i.i56.i:                                 ; preds = %.thread.i
  %i.bx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.bx, ptr %5, align 8, !tbaa !12, !alias.scope !52
  %i.by = load i64, ptr %i.d, align 8, !tbaa !27, !noalias !52
  store i64 %i.by, ptr %i.bu, align 8, !tbaa !20, !alias.scope !52
  br label %._crit_edge.i.i.i55.i

._crit_edge.i.i.i55.i:                            ; preds = %.noexc10.i.i56.i, %.thread.i
  %i.bz = phi ptr [ %i.bx, %.noexc10.i.i56.i ], [ %i.bu, %.thread.i ] ; 2 uses
  switch i64 %spec.select.i.i.i54.i, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i55.i
  %i.ca = load i8, ptr %i.bv, align 1, !tbaa !20
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i

bb.s:                                             ; preds = %._crit_edge.i.i.i55.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.bv, i64 %spec.select.i.i.i54.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i: ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i55.i
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !27, !noalias !52 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !19, !alias.scope !52
  %i.cd = load ptr, ptr %5, align 8, !tbaa !12, !alias.scope !52
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store i8 0, ptr %i.ce, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !52
  %i.cf = load ptr, ptr %i.h, align 8, !tbaa !11  ; 6 uses
  %i.cg = load ptr, ptr %i.u, align 8, !tbaa !28
  %.not.i.i58.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i.i58.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 3 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !26
  %i.ci = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bu
  br i1 %i.cj, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i

bb.u:                                             ; preds = %bb.t
  %i.ck = load i64, ptr %i.cc, align 8, !tbaa !19 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.cm, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i: ; preds = %bb.t
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !12
end_hunk_1
