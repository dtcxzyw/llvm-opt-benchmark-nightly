inline.NumInlined: 1018
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
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

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EESB_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

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
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
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
define hidden void @_ZN8pystring5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EES7_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
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
  %i.f = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !18
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.f, ptr %i.g, align 8, !tbaa !12
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %3, i32 2147483647) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21   ; 5 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21   ; 14 uses
  br i1 %i.q, label %bb.b, label %bb.y

bb.b:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %.not88.i = icmp eq i64 %i.s, 0
  br i1 %.not88.i, label %._crit_edge.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge4.i, %.preheader.lr.ph.i
  %.04284.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %.4.i, %.critedge4.i ]
  %.04583.i = phi i32 [ %spec.store.select, %.preheader.lr.ph.i ], [ %.146.i, %.critedge4.i ] ; 4 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.preheader.i
  %.14374.i = phi i64 [ %.04284.i, %.preheader.i ], [ %i.ab, %bb.d ] ; 13 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.14374.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18
  %i.z = sext i8 %i.y to i32
  %i.aa = call i32 @isspace(i32 noundef %i.z) #23
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = add nuw i64 %.14374.i, 1                ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.s
  br i1 %i.ac, label %bb.c, label %_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit, !llvm.loop !22

.critedge.i:                                      ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %.14374.i ; 2 uses
  %i.ae = icmp ult i64 %.14374.i, %i.s
  br i1 %i.ae, label %.lr.ph.i, label %.critedge4.i

.lr.ph.i:                                         ; preds = %.critedge.i, %bb.e
  %.24475.i = phi i64 [ %i.aj, %bb.e ], [ %.14374.i, %.critedge.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 %.24475.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18
  %i.ah = sext i8 %i.ag to i32
  %i.ai = call i32 @isspace(i32 noundef %i.ah) #23
  %.not48.i = icmp eq i32 %i.ai, 0
  br i1 %.not48.i, label %bb.e, label %.critedge2.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.aj = add i64 %.24475.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aj, %i.s
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph.i, !llvm.loop !23

.critedge2.i:                                     ; preds = %bb.e, %.lr.ph.i
  %.244.lcssa.i = phi i64 [ %.24475.i, %.lr.ph.i ], [ %i.s, %bb.e ] ; 7 uses
  %i.ak = icmp ult i64 %.14374.i, %.244.lcssa.i
  br i1 %i.ak, label %bb.f, label %.critedge4.i

bb.f:                                             ; preds = %.critedge2.i
  %i.al = add nsw i32 %.04583.i, -1               ; 2 uses
  %i.am = icmp slt i32 %.04583.i, 1
  br i1 %i.am, label %._crit_edge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.an = load i64, ptr %i.r, align 8, !tbaa !21, !noalias !24 ; 3 uses
  %i.ao = icmp ugt i64 %.14374.i, %i.an
  br i1 %i.ao, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %.14374.i, i64 noundef %i.an) #25, !noalias !24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.g
  store ptr %i.t, ptr %4, align 8, !tbaa !27, !alias.scope !24
  %9 = call i64 @llvm.umin.i64(i64 %.244.lcssa.i, i64 %i.an)
  %spec.select.i.i.i.i = sub nuw i64 %9, %.14374.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !24
  store i64 %spec.select.i.i.i.i, ptr %i.e, align 8, !tbaa !28, !noalias !24
  %i.ap = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.ap, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.aq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !13, !alias.scope !24
  %i.ar = load i64, ptr %i.e, align 8, !tbaa !28, !noalias !24
  store i64 %i.ar, ptr %i.t, align 8, !tbaa !18, !alias.scope !24
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.as = phi ptr [ %i.aq, %.noexc10.i.i.i ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.at = load i8, ptr %i.ad, align 1, !tbaa !18
  store i8 %i.at, ptr %i.as, align 1, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull align 1 %i.ad, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.au = load i64, ptr %i.e, align 8, !tbaa !28, !noalias !24 ; 2 uses
  store i64 %i.au, ptr %i.u, align 8, !tbaa !21, !alias.scope !24
  %i.av = load ptr, ptr %4, align 8, !tbaa !13, !alias.scope !24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 0, ptr %i.aw, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !24
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !12  ; 6 uses
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !27
  %i.ba = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.t
  br i1 %i.bb, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bc = load i64, ptr %i.u, align 8, !tbaa !21  ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.be, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !13
  %i.bf = load i64, ptr %i.t, align 8, !tbaa !18
  store i64 %i.bf, ptr %i.az, align 8, !tbaa !18
  %.pre.i = load i64, ptr %i.u, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.l
  %i.bg = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bc, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !21
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.bj, ptr %i.g, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i unwind label %bb.p

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i: ; preds = %bb.m
  %.pre93.i = load ptr, ptr %4, align 8, !tbaa !13 ; 2 uses
  %i.bk = icmp eq ptr %.pre93.i, %i.t
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i
  %i.bl = load i64, ptr %i.t, align 8, !tbaa !18
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %.pre93.i, i64 noundef %i.bm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bn = icmp ult i64 %.244.lcssa.i, %i.s
  br i1 %i.bn, label %.lr.ph79.i, label %.critedge4.i

.lr.ph79.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bo = load ptr, ptr %0, align 8, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph79.i
  %.378.i = phi i64 [ %.244.lcssa.i, %.lr.ph79.i ], [ %i.bt, %bb.o ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.378.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.br = sext i8 %i.bq to i32
  %i.bs = call i32 @isspace(i32 noundef %i.br) #23
  %.not49.i = icmp eq i32 %i.bs, 0
  br i1 %.not49.i, label %.critedge4.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = add i64 %.378.i, 1                      ; 2 uses
  %exitcond92.not.i = icmp eq i64 %i.bt, %i.s
  br i1 %exitcond92.not.i, label %_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit, label %bb.n, !llvm.loop !30

bb.p:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.t
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i: ; preds = %bb.p
  %i.bx = load i64, ptr %i.t, align 8, !tbaa !18
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

.critedge4.i:                                     ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.critedge2.i, %.critedge.i
  %.146.i = phi i32 [ %.04583.i, %.critedge2.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.04583.i, %.critedge.i ], [ %i.al, %bb.n ]
  %.4.i = phi i64 [ %.244.lcssa.i, %.critedge2.i ], [ %.244.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.14374.i, %.critedge.i ], [ %.378.i, %bb.n ] ; 2 uses
  %.1.i = phi i64 [ %.14374.i, %.critedge2.i ], [ %.244.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.14374.i, %.critedge.i ], [ %.378.i, %bb.n ]
  %i.bz = icmp ult i64 %.4.i, %i.s
  br i1 %i.bz, label %.preheader.i, label %._crit_edge.i, !llvm.loop !31

._crit_edge.i:                                    ; preds = %.critedge4.i, %bb.f, %bb.b
  %.2.i = phi i64 [ 0, %bb.b ], [ %.1.i, %.critedge4.i ], [ %.14374.i, %bb.f ] ; 5 uses
  %i.ca = icmp ult i64 %.2.i, %i.s
  br i1 %i.ca, label %bb.q, label %_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit

bb.q:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.cb = load i64, ptr %i.r, align 8, !tbaa !21, !noalias !32 ; 3 uses
  %i.cc = icmp ugt i64 %.2.i, %i.cb
  br i1 %i.cc, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %.2.i, i64 noundef %i.cb) #25, !noalias !32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i: ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.cd, ptr %5, align 8, !tbaa !27, !alias.scope !32
  %i.ce = load ptr, ptr %0, align 8, !tbaa !13, !noalias !32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.2.i ; 2 uses
  %i.cg = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.cb)
  %spec.select.i.i.i55.i = sub nuw i64 %i.cg, %.2.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !32
  store i64 %spec.select.i.i.i55.i, ptr %i.d, align 8, !tbaa !28, !noalias !32
  %i.ch = icmp ugt i64 %spec.select.i.i.i55.i, 15
  br i1 %i.ch, label %.noexc10.i.i57.i, label %._crit_edge.i.i.i56.i

.noexc10.i.i57.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i
  %i.ci = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.ci, ptr %5, align 8, !tbaa !13, !alias.scope !32
  %i.cj = load i64, ptr %i.d, align 8, !tbaa !28, !noalias !32
  store i64 %i.cj, ptr %i.cd, align 8, !tbaa !18, !alias.scope !32
  br label %._crit_edge.i.i.i56.i

._crit_edge.i.i.i56.i:                            ; preds = %.noexc10.i.i57.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i
  %i.ck = phi ptr [ %i.ci, %.noexc10.i.i57.i ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i ] ; 2 uses
  switch i64 %spec.select.i.i.i55.i, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i56.i
  %i.cl = load i8, ptr %i.cf, align 1, !tbaa !18
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i

bb.t:                                             ; preds = %._crit_edge.i.i.i56.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.cf, i64 %spec.select.i.i.i55.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i: ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i56.i
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !28, !noalias !32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !21, !alias.scope !32
  %i.co = load ptr, ptr %5, align 8, !tbaa !13, !alias.scope !32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  store i8 0, ptr %i.cp, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !32
  %i.cq = load ptr, ptr %i.g, align 8, !tbaa !12  ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !29
  %.not.i.i59.i = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i.i59.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN8pystring5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EES7_i:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit62: ; preds = %._crit_edge.i.i.i60, %bb.as, %bb.at
  %i.gt = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !43 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !21, !alias.scope !43
  %i.gv = load ptr, ptr %8, align 8, !tbaa !13, !alias.scope !43
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gt
  store i8 0, ptr %i.gw, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !43
  %i.gx = load ptr, ptr %i.g, align 8, !tbaa !12  ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !29
  %.not.i.i63 = icmp eq ptr %i.gx, %i.gz
  br i1 %.not.i.i63, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit62
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 3 uses
  store ptr %i.ha, ptr %i.gx, align 8, !tbaa !27
  %i.hb = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gk
  br i1 %i.hc, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

bb.av:                                            ; preds = %bb.au
  %i.hd = load i64, ptr %i.gu, align 8, !tbaa !21 ; 3 uses
  %i.he = icmp ult i64 %i.hd, 16
  call void @llvm.assume(i1 %i.he)
  %i.hf = add nuw nsw i64 %i.hd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ha, ptr noundef nonnull align 8 dereferenceable(1) %i.gk, i64 %i.hf, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.au
  store ptr %i.hb, ptr %i.gx, align 8, !tbaa !13
  %i.hg = load i64, ptr %i.gk, align 8, !tbaa !18
  store i64 %i.hg, ptr %i.ha, align 8, !tbaa !18
  %.pre127 = load i64, ptr %i.gu, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67.thread: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  %i.hh = phi i64 [ %.pre127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64 ], [ %i.hd, %bb.av ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !21
  store i64 0, ptr %i.gu, align 8, !tbaa !21
  %i.hj = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store ptr %i.hk, ptr %i.g, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit62
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.gx, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67 unwind label %bb.ax

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67: ; preds = %bb.aw
  %.pre128 = load ptr, ptr %8, align 8, !tbaa !13 ; 2 uses
  %i.hl = icmp eq ptr %.pre128, %i.gk
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67
  %i.hm = load i64, ptr %i.gk, align 8, !tbaa !18
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %.pre128, i64 noundef %i.hn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit

_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit: ; preds = %bb.d, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i, %._crit_edge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  ret void

bb.ax:                                            ; preds = %bb.aw
  %i.ho = landingpad { ptr, i32 }
          cleanup
  %i.hp = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.gk
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.ax
  %i.hr = load i64, ptr %i.gk, align 8, !tbaa !18
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8pystring6rsplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EES7_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
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
  %i.g = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !18
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !12
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !21   ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21   ; 4 uses
  br i1 %i.r, label %bb.d, label %bb.x

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %.not82.i = icmp eq i64 %i.t, 0
  br i1 %.not82.i, label %._crit_edge.thread.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge4.i, %.preheader.lr.ph.i
  %.03784.i = phi i64 [ %i.t, %.preheader.lr.ph.i ], [ %.4.i, %.critedge4.i ]
  %.04083.i = phi i32 [ %3, %.preheader.lr.ph.i ], [ %.141.i, %.critedge4.i ] ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %.not42.i = icmp eq i64 %i.y, 0
  br i1 %.not42.i, label %.critedge.i, label %bb.f, !llvm.loop !46

bb.f:                                             ; preds = %.preheader.i, %bb.e
  %.138.i262 = phi i64 [ %.03784.i, %.preheader.i ], [ %i.y, %bb.e ] ; 2 uses
  %i.y = add i64 %.138.i262, -1                   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  %i.ab = sext i8 %i.aa to i32
  %i.ac = call i32 @isspace(i32 noundef %i.ab) #23
  %.not43.i = icmp eq i32 %i.ac, 0
  br i1 %.not43.i, label %.critedge.i, label %bb.e, !llvm.loop !46

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.138.i.lcssa = phi i64 [ %.138.i262, %bb.f ], [ %i.y, %bb.e ] ; 7 uses
  %.not44.i263 = icmp eq i64 %.138.i.lcssa, 0
  br i1 %.not44.i263, label %.critedge2.i, label %.lr.ph265.preheader

.lr.ph265.preheader:                              ; preds = %.critedge.i
  %i.ad = load ptr, ptr %0, align 8, !tbaa !13
  br label %.lr.ph265

bb.g:                                             ; preds = %.lr.ph265
  %.not44.i = icmp eq i64 %i.ae, 0
  br i1 %.not44.i, label %.critedge2.i, label %.lr.ph265, !llvm.loop !47

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %bb.g
  %.239.i264 = phi i64 [ %i.ae, %bb.g ], [ %.138.i.lcssa, %.lr.ph265.preheader ] ; 2 uses
  %i.ae = add i64 %.239.i264, -1                  ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18
  %i.ah = sext i8 %i.ag to i32
  %i.ai = call i32 @isspace(i32 noundef %i.ah) #23
  %.not45.i = icmp eq i32 %i.ai, 0
  br i1 %.not45.i, label %bb.g, label %..critedge2.i_crit_edge, !llvm.loop !47

..critedge2.i_crit_edge:                          ; preds = %.lr.ph265
  br label %.critedge2.i, !llvm.loop !47

.critedge2.i:                                     ; preds = %bb.g, %..critedge2.i_crit_edge, %.critedge.i
  %.239.i.lcssa = phi i64 [ %.239.i264, %..critedge2.i_crit_edge ], [ %.138.i.lcssa, %.critedge.i ], [ %i.ae, %bb.g ] ; 8 uses
  %i.aj = icmp ugt i64 %.138.i.lcssa, %.239.i.lcssa
  br i1 %i.aj, label %bb.h, label %.critedge4.i

bb.h:                                             ; preds = %.critedge2.i
  %i.ak = add nsw i32 %.04083.i, -1
  %i.al = icmp slt i32 %.04083.i, 1
  br i1 %i.al, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.am = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !48 ; 3 uses
  %i.an = icmp ugt i64 %.239.i.lcssa, %i.am
  br i1 %i.an, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %.239.i.lcssa, i64 noundef %i.am) #25, !noalias !48
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.i
  store ptr %i.u, ptr %4, align 8, !tbaa !27, !alias.scope !48
  %i.ao = load ptr, ptr %0, align 8, !tbaa !13, !noalias !48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.239.i.lcssa ; 2 uses
  %9 = call i64 @llvm.umin.i64(i64 %.138.i.lcssa, i64 %i.am)
  %spec.select.i.i.i.i = sub nuw i64 %9, %.239.i.lcssa ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !48
  store i64 %spec.select.i.i.i.i, ptr %i.e, align 8, !tbaa !28, !noalias !48
  %i.aq = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.aq, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.ar = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.ar, ptr %4, align 8, !tbaa !13, !alias.scope !48
  %i.as = load i64, ptr %i.e, align 8, !tbaa !28, !noalias !48
  store i64 %i.as, ptr %i.u, align 8, !tbaa !18, !alias.scope !48
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.at = phi ptr [ %i.ar, %.noexc10.i.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.au = load i8, ptr %i.ap, align 1, !tbaa !18
  store i8 %i.au, ptr %i.at, align 1, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.ap, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i
  %i.av = load i64, ptr %i.e, align 8, !tbaa !28, !noalias !48 ; 2 uses
  store i64 %i.av, ptr %i.v, align 8, !tbaa !21, !alias.scope !48
  %i.aw = load ptr, ptr %4, align 8, !tbaa !13, !alias.scope !48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 0, ptr %i.ax, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !48
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !12  ; 6 uses
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !27
  %i.bb = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.u
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bd = load i64, ptr %i.v, align 8, !tbaa !21  ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !13
  %i.bg = load i64, ptr %i.u, align 8, !tbaa !18
  store i64 %i.bg, ptr %i.ba, align 8, !tbaa !18
  %.pre.i = load i64, ptr %i.v, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.n
  %i.bh = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bd, %bb.n ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !21
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store ptr %i.bk, ptr %i.h, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i unwind label %bb.q

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i: ; preds = %bb.o
  %.pre92.i = load ptr, ptr %4, align 8, !tbaa !13 ; 2 uses
  %i.bl = icmp eq ptr %.pre92.i, %i.u
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i
  %i.bm = load i64, ptr %i.u, align 8, !tbaa !18
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %.pre92.i, i64 noundef %i.bn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not46.i268 = icmp eq i64 %.239.i.lcssa, 0
  br i1 %.not46.i268, label %._crit_edge.thread.i, label %.lr.ph270.preheader

.lr.ph270.preheader:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bo = load ptr, ptr %0, align 8, !tbaa !13
  br label %.lr.ph270

bb.p:                                             ; preds = %.lr.ph270
  %.not46.i = icmp eq i64 %i.bp, 0
  br i1 %.not46.i, label %._crit_edge.thread.i, label %.lr.ph270, !llvm.loop !51

.lr.ph270:                                        ; preds = %.lr.ph270.preheader, %bb.p
  %.3.i269 = phi i64 [ %i.bp, %bb.p ], [ %.239.i.lcssa, %.lr.ph270.preheader ] ; 3 uses
  %i.bp = add i64 %.3.i269, -1                    ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18
  %i.bs = sext i8 %i.br to i32
  %i.bt = call i32 @isspace(i32 noundef %i.bs) #23
  %.not47.i = icmp eq i32 %i.bt, 0
  br i1 %.not47.i, label %.critedge4.i, label %bb.p, !llvm.loop !51

bb.q:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.u
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i: ; preds = %bb.q
  %i.bx = load i64, ptr %i.u, align 8, !tbaa !18
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

.critedge4.i:                                     ; preds = %.lr.ph270, %.critedge2.i
  %.141.i = phi i32 [ %.04083.i, %.critedge2.i ], [ %i.ak, %.lr.ph270 ]
  %.4.i = phi i64 [ %.239.i.lcssa, %.critedge2.i ], [ %.3.i269, %.lr.ph270 ] ; 2 uses
  %.1.i = phi i64 [ %.138.i.lcssa, %.critedge2.i ], [ %.3.i269, %.lr.ph270 ] ; 2 uses
  %.not.i = icmp eq i64 %.4.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.preheader.i, !llvm.loop !52

._crit_edge.i:                                    ; preds = %.critedge4.i
  %.not48.i = icmp eq i64 %.1.i, 0
  br i1 %.not48.i, label %._crit_edge.thread.i, label %.thread.i

.thread.i:                                        ; preds = %bb.h, %._crit_edge.i
  %.271.i = phi i64 [ %.1.i, %._crit_edge.i ], [ %.138.i.lcssa, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.bz = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !53
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.ca, ptr %5, align 8, !tbaa !27, !alias.scope !53
  %i.cb = load ptr, ptr %0, align 8, !tbaa !13, !noalias !53 ; 2 uses
  %spec.select.i.i.i54.i = call noundef i64 @llvm.umin.i64(i64 %.271.i, i64 %i.bz) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !53
  store i64 %spec.select.i.i.i54.i, ptr %i.d, align 8, !tbaa !28, !noalias !53
  %i.cc = icmp ugt i64 %spec.select.i.i.i54.i, 15
  br i1 %i.cc, label %.noexc10.i.i56.i, label %._crit_edge.i.i.i55.i

.noexc10.i.i56.i:                                 ; preds = %.thread.i
  %i.cd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.cd, ptr %5, align 8, !tbaa !13, !alias.scope !53
  %i.ce = load i64, ptr %i.d, align 8, !tbaa !28, !noalias !53
  store i64 %i.ce, ptr %i.ca, align 8, !tbaa !18, !alias.scope !53
  br label %._crit_edge.i.i.i55.i

._crit_edge.i.i.i55.i:                            ; preds = %.noexc10.i.i56.i, %.thread.i
  %i.cf = phi ptr [ %i.cd, %.noexc10.i.i56.i ], [ %i.ca, %.thread.i ] ; 2 uses
  switch i64 %spec.select.i.i.i54.i, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i55.i
  %i.cg = load i8, ptr %i.cb, align 1, !tbaa !18
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i

bb.s:                                             ; preds = %._crit_edge.i.i.i55.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.cb, i64 %spec.select.i.i.i54.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i: ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i55.i
  %i.ch = load i64, ptr %i.d, align 8, !tbaa !28, !noalias !53 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !21, !alias.scope !53
  %i.cj = load ptr, ptr %5, align 8, !tbaa !13, !alias.scope !53
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch
  store i8 0, ptr %i.ck, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !53
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !12  ; 6 uses
  %i.cm = load ptr, ptr %i.w, align 8, !tbaa !29
  %.not.i.i58.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i.i58.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 3 uses
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !27
  %i.co = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.ca
  br i1 %i.cp, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i

bb.u:                                             ; preds = %bb.t
  %i.cq = load i64, ptr %i.ci, align 8, !tbaa !21 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cr)
  %i.cs = add nuw nsw i64 %i.cq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(1) %i.ca, i64 %i.cs, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i: ; preds = %bb.t
  store ptr %i.co, ptr %i.cl, align 8, !tbaa !13
  %i.ct = load i64, ptr %i.ca, align 8, !tbaa !18
  store i64 %i.ct, ptr %i.cn, align 8, !tbaa !18
  %.pre93.i = load i64, ptr %i.ci, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i, %bb.u
  %i.cu = phi i64 [ %.pre93.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i ], [ %i.cq, %bb.u ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !21
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store ptr %i.cx, ptr %i.h, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit57.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.i unwind label %bb.w

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.i: ; preds = %bb.v
  %.pre94.i = load ptr, ptr %5, align 8, !tbaa !13 ; 2 uses
  %i.cy = icmp eq ptr %.pre94.i, %i.ca
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.i
  %i.cz = load i64, ptr %i.ca, align 8, !tbaa !18
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %.pre94.i, i64 noundef %i.da) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit62.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %._crit_edge.thread.i

bb.w:                                             ; preds = %bb.v
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ca
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i: ; preds = %bb.w
  %i.de = load i64, ptr %i.ca, align 8, !tbaa !18
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

._crit_edge.thread.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, %._crit_edge.i, %bb.d
  %i.dg = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.dh = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %.not.i.i53 = icmp ult i64 %i.dk, 33
  br i1 %.not.i.i53, label %_ZN8pystring12_GLOBAL__N_117rsplit_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.thread.i, %.lr.ph.i.i
  %i.dl = phi i64 [ %i.dw, %.lr.ph.i.i ], [ %i.dk, %._crit_edge.thread.i ]
  %i.dm = phi ptr [ %i.dt, %.lr.ph.i.i ], [ %i.dh, %._crit_edge.thread.i ] ; 2 uses
  %.07.i.i = phi i64 [ %i.dr, %.lr.ph.i.i ], [ 0, %._crit_edge.thread.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %.07.i.i
  %i.do = xor i64 %.07.i.i, -1
  %i.dp = getelementptr i8, ptr %i.dm, i64 %i.dl
  %i.dq = getelementptr [32 x i8], ptr %i.dp, i64 %i.do
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %i.dq) #24
  %i.dr = add nuw nsw i64 %.07.i.i, 1             ; 2 uses
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.dt = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 2 uses
  %i.dx = ashr exact i64 %i.dw, 5
  %i.dy = lshr i64 %i.dx, 1
  %i.dz = icmp samesign ult i64 %i.dr, %i.dy
  br i1 %i.dz, label %.lr.ph.i.i, label %_ZN8pystring12_GLOBAL__N_117rsplit_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit, !llvm.loop !56

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i ], [ %i.jb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %i.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.ea = trunc i64 %i.t to i32                   ; 4 uses
  %i.eb = trunc i64 %i.q to i32                   ; 3 uses
  %.not112 = icmp slt i32 %i.ea, %i.eb
  br i1 %.not112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.ec = shl i64 %i.q, 32                        ; 2 uses
  %sext = add i64 %i.ec, -4294967296
  %i.ed = ashr exact i64 %sext, 32
  %i.ee = ashr exact i64 %i.ec, 32
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %.critedge.thread
  %.043115 = phi i32 [ %i.ea, %.lr.ph ], [ %.1, %.critedge.thread ] ; 4 uses
  %.044114 = phi i32 [ %i.ea, %.lr.ph ], [ %.145, %.critedge.thread ] ; 4 uses
  %.046113 = phi i32 [ %3, %.lr.ph ], [ %.147, %.critedge.thread ] ; 4 uses
  %i.ek = add nsw i32 %.044114, -1                ; 3 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !18
  %i.ep = load ptr, ptr %2, align 8, !tbaa !13
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ed
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !18
  %i.es = icmp eq i8 %i.eo, %i.er
  br i1 %i.es, label %bb.z, label %.critedge.thread

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.et = sub nsw i32 %.044114, %i.eb             ; 3 uses
  %10 = zext nneg i32 %i.et to i64                ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.eu = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !57 ; 3 uses
  %i.ev = icmp ult i64 %i.eu, %10
  br i1 %i.ev, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %10, i64 noundef %i.eu) #25, !noalias !57
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.z
  store ptr %i.ef, ptr %6, align 8, !tbaa !27, !alias.scope !57
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 %10 ; 2 uses
  %i.ex = sub nuw i64 %i.eu, %10
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ee, i64 %i.ex) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !57
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !28, !noalias !57
  %i.ey = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ey, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ez = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.ez, ptr %6, align 8, !tbaa !13, !alias.scope !57
  %i.fa = load i64, ptr %i.c, align 8, !tbaa !28, !noalias !57
  store i64 %i.fa, ptr %i.ef, align 8, !tbaa !18, !alias.scope !57
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.fb = phi ptr [ %i.ez, %.noexc10.i.i ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  %i.fc = load i8, ptr %i.ew, align 1, !tbaa !18
  store i8 %i.fc, ptr %i.fb, align 1, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.ac:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fb, ptr align 1 %i.ew, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.ab, %bb.ac
  %i.fd = load i64, ptr %i.c, align 8, !tbaa !28, !noalias !57 ; 2 uses
  store i64 %i.fd, ptr %i.eg, align 8, !tbaa !21, !alias.scope !57
  %i.fe = load ptr, ptr %6, align 8, !tbaa !13, !alias.scope !57
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fd
  store i8 0, ptr %i.ff, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !57
  %i.fg = load i64, ptr %i.eg, align 8, !tbaa !21 ; 4 uses
  %i.fh = load i64, ptr %i.p, align 8, !tbaa !21
  %i.fi = icmp eq i64 %i.fg, %i.fh
  br i1 %i.fi, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %.pre = load ptr, ptr %6, align 8, !tbaa !13
  br label %bb.af

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.fj = icmp eq i64 %i.fg, 0
  %.pre140 = load ptr, ptr %6, align 8, !tbaa !13 ; 3 uses
  br i1 %i.fj, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fk = load ptr, ptr %2, align 8, !tbaa !13
  %bcmp.i = call i32 @bcmp(ptr %.pre140, ptr %i.fk, i64 %i.fg)
  %i.fl = icmp eq i32 %bcmp.i, 0
  br label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge, %bb.ae, %bb.ad
  %i.fm = phi ptr [ %.pre140, %bb.ad ], [ %.pre140, %bb.ae ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge ] ; 2 uses
  %.ph = phi i1 [ true, %bb.ad ], [ %i.fl, %bb.ae ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge ]
  %i.fn = icmp eq ptr %i.fm, %i.ef
  br i1 %i.fn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.af
  %i.fo = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fo)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  %i.fp = load i64, ptr %i.ef, align 8, !tbaa !18
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #22
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.ph, label %bb.ag, label %.critedge.thread

bb.ag:                                            ; preds = %.critedge
  %i.fr = add nsw i32 %.046113, -1
  %i.fs = icmp slt i32 %.046113, 1
  %.pre143.pre148 = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !38 ; 4 uses
  br i1 %i.fs, label %._crit_edge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ft = sext i32 %.044114 to i64                ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.fu = icmp ult i64 %.pre143.pre148, %i.ft
  br i1 %i.fu, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %i.ft, i64 noundef %.pre143.pre148) #25, !noalias !60
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54: ; preds = %bb.ah
  %i.fv = sub nsw i32 %.043115, %.044114
  %i.fw = sext i32 %i.fv to i64
  store ptr %i.eh, ptr %7, align 8, !tbaa !27, !alias.scope !60
  %i.fx = load ptr, ptr %0, align 8, !tbaa !13, !noalias !60
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ft ; 2 uses
  %i.fz = sub nuw i64 %.pre143.pre148, %i.ft
  %spec.select.i.i.i55 = call noundef i64 @llvm.umin.i64(i64 %i.fw, i64 %i.fz) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !60
  store i64 %spec.select.i.i.i55, ptr %i.b, align 8, !tbaa !28, !noalias !60
  %i.ga = icmp ugt i64 %spec.select.i.i.i55, 15
  br i1 %i.ga, label %.noexc10.i.i57, label %._crit_edge.i.i.i56

.noexc10.i.i57:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54
  %i.gb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.gb, ptr %7, align 8, !tbaa !13, !alias.scope !60
  %i.gc = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !60
  store i64 %i.gc, ptr %i.eh, align 8, !tbaa !18, !alias.scope !60
  br label %._crit_edge.i.i.i56

._crit_edge.i.i.i56:                              ; preds = %.noexc10.i.i57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54
  %i.gd = phi ptr [ %i.gb, %.noexc10.i.i57 ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54 ] ; 2 uses
  switch i64 %spec.select.i.i.i55, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i56
  %i.ge = load i8, ptr %i.fy, align 1, !tbaa !18
  store i8 %i.ge, ptr %i.gd, align 1, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58

bb.ak:                                            ; preds = %._crit_edge.i.i.i56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gd, ptr align 1 %i.fy, i64 %spec.select.i.i.i55, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58: ; preds = %._crit_edge.i.i.i56, %bb.aj, %bb.ak
  %i.gf = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !60 ; 2 uses
  store i64 %i.gf, ptr %i.ei, align 8, !tbaa !21, !alias.scope !60
  %i.gg = load ptr, ptr %7, align 8, !tbaa !13, !alias.scope !60
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gf
  store i8 0, ptr %i.gh, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !60
  %i.gi = load ptr, ptr %i.h, align 8, !tbaa !12  ; 6 uses
  %i.gj = load ptr, ptr %i.ej, align 8, !tbaa !29
  %.not.i.i59 = icmp eq ptr %i.gi, %i.gj
  br i1 %.not.i.i59, label %bb.an, label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 3 uses
  store ptr %i.gk, ptr %i.gi, align 8, !tbaa !27
  %i.gl = load ptr, ptr %7, align 8, !tbaa !13    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.eh
  br i1 %i.gm, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

bb.am:                                            ; preds = %bb.al
  %i.gn = load i64, ptr %i.ei, align 8, !tbaa !21 ; 3 uses
  %i.go = icmp ult i64 %i.gn, 16
  call void @llvm.assume(i1 %i.go)
  %i.gp = add nuw nsw i64 %i.gn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gk, ptr noundef nonnull align 8 dereferenceable(1) %i.eh, i64 %i.gp, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.al
  store ptr %i.gl, ptr %i.gi, align 8, !tbaa !13
  %i.gq = load i64, ptr %i.eh, align 8, !tbaa !18
  store i64 %i.gq, ptr %i.gk, align 8, !tbaa !18
  %.pre141 = load i64, ptr %i.ei, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  %i.gr = phi i64 [ %.pre141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60 ], [ %i.gn, %bb.am ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !21
  store ptr %i.eh, ptr %7, align 8, !tbaa !13
  store i64 0, ptr %i.ei, align 8, !tbaa !21
  %i.gt = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  store ptr %i.gu, ptr %i.h, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.gi, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.ao

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.an
  %.pre142 = load ptr, ptr %7, align 8, !tbaa !13 ; 2 uses
  %i.gv = icmp eq ptr %.pre142, %i.eh
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.gw = load i64, ptr %i.eh, align 8, !tbaa !18
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %.pre142, i64 noundef %i.gx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.critedge.thread

bb.ao:                                            ; preds = %bb.an
  %i.gy = landingpad { ptr, i32 }
          cleanup
  %i.gz = load ptr, ptr %7, align 8, !tbaa !13    ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.eh
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
end_hunk_1
begin_hunk_2_@_ZN8pystring5sliceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii:bb.a
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !18, !alias.scope !124
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ah = phi ptr [ %i.af, %.noexc10.i.i ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !18
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ac, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.j, %bb.k
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !124 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !21, !alias.scope !124
  %i.al = load ptr, ptr %0, align 8, !tbaa !13, !alias.scope !124
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !124
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN8pystring5indexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = trunc i64 %i.b to i32                    ; 4 uses
  %i.d = icmp sgt i32 %3, %i.c
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %3, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %3, %i.c
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi i32 [ %3, %bb.b ], [ %spec.store.select.i, %bb.c ], [ %i.c, %bb.a ]
  %i.g = icmp slt i32 %2, 0
  %i.h = add nsw i32 %2, %i.c
  %spec.store.select1.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  %.020.i = select i1 %i.g, i32 %spec.store.select1.i, i32 %2
  %i.i = zext nneg i32 %.020.i to i64
  %i.j = load ptr, ptr %1, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.j, i64 noundef %i.i, i64 noundef %i.l) #24 ; 3 uses
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.k, align 8, !tbaa !21
  %i.p = add i64 %i.o, %i.m
  %i.q = sext i32 %.0.i to i64
  %i.r = icmp ugt i64 %i.p, %i.q
  %i.s = trunc i64 %i.m to i32
  %spec.select.i = select i1 %i.r, i32 -1, i32 %i.s
  br label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit

_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit: ; preds = %bb.d, %bb.e
  %.021.i = phi i32 [ -1, %bb.d ], [ %spec.select.i, %bb.e ]
  ret i32 %.021.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN8pystring6rindexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = trunc i64 %i.b to i32                    ; 4 uses
  %i.d = icmp sgt i32 %3, %i.c
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %3, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %3, %i.c
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi i32 [ %3, %bb.b ], [ %spec.store.select.i, %bb.c ], [ %i.c, %bb.a ]
  %i.g = icmp slt i32 %2, 0
  %i.h = add nsw i32 %2, %i.c
  %spec.store.select1.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  %.022.i = select i1 %i.g, i32 %spec.store.select1.i, i32 %2
  %i.i = sext i32 %.0.i to i64                    ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.j, i64 noundef %i.i, i64 noundef %i.l) #24 ; 4 uses
  %i.n = icmp eq i64 %i.m, -1
  %i.o = zext nneg i32 %.022.i to i64
  %i.p = icmp ult i64 %i.m, %i.o
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond.i, label %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.k, align 8, !tbaa !21
  %i.r = add i64 %i.q, %i.m
  %i.s = icmp ugt i64 %i.r, %i.i
  %i.t = trunc i64 %i.m to i32
  %spec.select.i = select i1 %i.s, i32 -1, i32 %i.t
  br label %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit

_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit: ; preds = %bb.d, %bb.e
  %.023.i = phi i32 [ -1, %bb.d ], [ %spec.select.i, %bb.e ]
  ret i32 %.023.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8pystring10expandtabsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !27
  %i.c = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.e, ptr %i.a, align 8, !tbaa !28
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !13
  %i.h = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.h, ptr %i.b, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !18
  store i8 %i.j, ptr %i.i, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !21
  %i.m = load ptr, ptr %0, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.o = load i64, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = icmp sgt i32 %2, 0
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.03067.us = phi i32 [ %.131.us, %bb.g ], [ 0, %.lr.ph ] ; 3 uses
  %.03266.us = phi i32 [ %.133.us, %bb.g ], [ 0, %.lr.ph ] ; 4 uses
  %.03465.us = phi i64 [ %i.ao, %bb.g ], [ 0, %.lr.ph ] ; 3 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.03465.us
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18    ; 2 uses
  switch i8 %i.u, label %bb.e [
    i8 9, label %bb.d
    i8 10, label %bb.f
  ]

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.v = srem i32 %.03067.us, %2
  %i.w = sub nsw i32 %2, %i.v                     ; 3 uses
  %i.x = add nsw i32 %i.w, %.03067.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %4 = zext nneg i32 %i.w to i64
  store ptr %i.q, ptr %3, align 8, !tbaa !27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.us unwind label %.split.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.us: ; preds = %bb.d
  %i.y = sext i32 %.03266.us to i64
  %i.z = add i64 %.03465.us, %i.y                 ; 4 uses
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !21  ; 3 uses
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %.split69.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.us
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !21
  %i.ad = load ptr, ptr %3, align 8, !tbaa !13
  %i.ae = icmp ne i64 %i.aa, %i.z
  %spec.select.i.i.i.us = zext i1 %i.ae to i64
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.z, i64 noundef %spec.select.i.i.i.us, ptr noundef %i.ad, i64 noundef %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us unwind label %.loopexit50.split.us ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us
  %i.ag = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.q
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !18
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ak = add i32 %.03266.us, -1
  %i.al = add i32 %i.ak, %i.w
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.am = add nsw i32 %.03067.us, 1
  %i.an = icmp eq i8 %i.u, 13
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
  %.133.us = phi i32 [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us ], [ %.03266.us, %bb.e ], [ %.03266.us, %bb.f ]
  %.131.us = phi i32 [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us ], [ %i.am, %bb.e ], [ 0, %bb.f ]
  %i.ao = add nuw i64 %.03465.us, 1               ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.o
  br i1 %exitcond83.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !127

.split.us:                                        ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

.loopexit50.split.us:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us
  %lpad.loopexit52.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %.03266 = phi i32 [ %.133, %bb.k ], [ 0, %.lr.ph ] ; 3 uses
  %.03465 = phi i64 [ %i.bg, %bb.k ], [ 0, %.lr.ph ] ; 3 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.03465
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18
  %cond = icmp eq i8 %i.as, 9
  br i1 %cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.lr.ph.split
  %i.at = sext i32 %.03266 to i64
  %i.au = add i64 %.03465, %i.at                  ; 4 uses
  %i.av = load i64, ptr %i.l, align 8, !tbaa !21  ; 3 uses
  %i.aw = icmp ugt i64 %i.au, %i.av
  br i1 %i.aw, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i42

.split69.us:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.us
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i64 noundef %i.z, i64 noundef %i.aa) #25
          to label %.noexc unwind label %.loopexit.split-lp51

.noexc:                                           ; preds = %.split69.us
  unreachable

.loopexit.split-lp51:                             ; preds = %.split69.us
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp51, %.loopexit50.split.us
  %lpad.phi54 = phi { ptr, i32 } [ %lpad.loopexit52.us, %.loopexit50.split.us ], [ %lpad.loopexit.split-lp53, %.loopexit.split-lp51 ] ; 2 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.q
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.i
  %i.az = load i64, ptr %i.q, align 8, !tbaa !18
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %.split.us
  %.pn = phi { ptr, i32 } [ %i.ap, %.split.us ], [ %lpad.phi54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %lpad.phi54, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i64 noundef %i.au, i64 noundef %i.av) #25
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i42: ; preds = %bb.h
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8pystringL12empty_stringB5cxx11E, i64 8), align 8, !tbaa !21
  %i.bc = load ptr, ptr @_ZN8pystringL12empty_stringB5cxx11E, align 8, !tbaa !13
  %i.bd = icmp ne i64 %i.av, %i.au
  %spec.select.i.i.i43 = zext i1 %i.bd to i64
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.au, i64 noundef %spec.select.i.i.i43, ptr noundef %i.bc, i64 noundef %i.bb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit46 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i42
  %i.bf = add nsw i32 %.03266, -1
  br label %bb.k

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i42
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit46
  %.133 = phi i32 [ %.03266, %.lr.ph.split ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit46 ]
  %i.bg = add nuw i64 %.03465, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !127

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bh = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.b
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.l
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !18
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  resume { ptr, i32 } %.pn.pn

._crit_edge:                                      ; preds = %bb.k, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN8pystring5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = icmp slt i32 %3, 0
  %.pre13 = load i64, ptr %i.b, align 8, !tbaa !21
  %i.d = load i64, ptr %i.a, align 8, !tbaa !21
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = icmp slt i32 %2, 0
  %i.g = add nsw i32 %2, %i.e
  %spec.store.select1.i.us25 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0)
  %.020.i.us26 = select i1 %i.f, i32 %spec.store.select1.i.us25, i32 %2
  %i.h = zext nneg i32 %.020.i.us26 to i64
  %i.i = load ptr, ptr %1, align 8, !tbaa !13
  %i.j = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i, i64 noundef %i.h, i64 noundef %.pre13) #24 ; 3 uses
  %i.k = icmp eq i64 %i.j, -1                     ; 2 uses
  br i1 %i.c, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  br i1 %i.k, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %.lr.ph

.split.us.preheader:                              ; preds = %bb.a
  br i1 %i.k, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %.lr.ph28

.lr.ph28:                                         ; preds = %.split.us.preheader, %.split.us
  %i.l = phi i64 [ %i.ae, %.split.us ], [ %i.j, %.split.us.preheader ] ; 2 uses
  %i.m = phi i32 [ %i.z, %.split.us ], [ %i.e, %.split.us.preheader ] ; 3 uses
  %.09.us27 = phi i32 [ %i.x, %.split.us ], [ 0, %.split.us.preheader ] ; 2 uses
  %i.n = icmp sgt i32 %3, %i.m
  %i.o = add nsw i32 %3, %i.m
  %spec.store.select.i.us = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %.0.i.us = select i1 %i.n, i32 %i.m, i32 %spec.store.select.i.us
  %i.p = load i64, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.q = add i64 %i.p, %i.l
  %i.r = sext i32 %.0.i.us to i64
  %i.s = icmp ugt i64 %i.q, %i.r
  %i.t = trunc i64 %i.l to i32                    ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  %or.cond.us = or i1 %i.u, %i.s
end_hunk_2
