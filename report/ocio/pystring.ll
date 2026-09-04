Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/pystring?download=true
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
  %i.f = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.f, ptr %i.g, align 8, !tbaa !15
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %3, i32 2147483647) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23   ; 5 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23   ; 14 uses
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
  %9 = load ptr, ptr %0, align 8, !tbaa !20       ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.preheader.i
  %.14374.i = phi i64 [ %.04284.i, %.preheader.i ], [ %i.aa, %bb.d ] ; 13 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 %.14374.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !21
  %i.y = sext i8 %i.x to i32
  %i.z = call i32 @isspace(i32 noundef %i.y) #23
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add nuw i64 %.14374.i, 1                ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.s
  br i1 %i.ab, label %bb.c, label %_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit, !llvm.loop !31

.critedge.i:                                      ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 %.14374.i ; 2 uses
  %i.ad = icmp ult i64 %.14374.i, %i.s
  br i1 %i.ad, label %.lr.ph.i, label %.critedge4.i

.lr.ph.i:                                         ; preds = %.critedge.i, %bb.e
  %.24475.i = phi i64 [ %i.ai, %bb.e ], [ %.14374.i, %.critedge.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 %.24475.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !21
  %i.ag = sext i8 %i.af to i32
  %i.ah = call i32 @isspace(i32 noundef %i.ag) #23
  %.not48.i = icmp eq i32 %i.ah, 0
  br i1 %.not48.i, label %bb.e, label %.critedge2.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ai = add i64 %.24475.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %i.s
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph.i, !llvm.loop !32

.critedge2.i:                                     ; preds = %bb.e, %.lr.ph.i
  %.244.lcssa.i = phi i64 [ %.24475.i, %.lr.ph.i ], [ %i.s, %bb.e ] ; 7 uses
  %i.aj = icmp ult i64 %.14374.i, %.244.lcssa.i
  br i1 %i.aj, label %bb.f, label %.critedge4.i

bb.f:                                             ; preds = %.critedge2.i
  %i.ak = add nsw i32 %.04583.i, -1               ; 2 uses
  %i.al = icmp slt i32 %.04583.i, 1
  br i1 %i.al, label %._crit_edge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.am = load i64, ptr %i.r, align 8, !tbaa !23, !noalias !46 ; 3 uses
  %i.an = icmp ugt i64 %.14374.i, %i.am
  br i1 %i.an, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %.14374.i, i64 noundef %i.am) #25, !noalias !46
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.g
  store ptr %i.t, ptr %4, align 8, !tbaa !24, !alias.scope !46
  %i.ao = call i64 @llvm.umin.i64(i64 %.244.lcssa.i, i64 %i.am)
  %spec.select.i.i.i.i = sub nuw i64 %i.ao, %.14374.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !46
  store i64 %spec.select.i.i.i.i, ptr %i.e, align 8, !tbaa !25, !noalias !46
  %i.ap = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.ap, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.aq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !20, !alias.scope !46
  %i.ar = load i64, ptr %i.e, align 8, !tbaa !25, !noalias !46
  store i64 %i.ar, ptr %i.t, align 8, !tbaa !21, !alias.scope !46
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.as = phi ptr [ %i.aq, %.noexc10.i.i.i ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.at = load i8, ptr %i.ac, align 1, !tbaa !21
  store i8 %i.at, ptr %i.as, align 1, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull align 1 %i.ac, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.au = load i64, ptr %i.e, align 8, !tbaa !25, !noalias !46 ; 2 uses
  store i64 %i.au, ptr %i.u, align 8, !tbaa !23, !alias.scope !46
  %i.av = load ptr, ptr %4, align 8, !tbaa !20, !alias.scope !46
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 0, ptr %i.aw, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !46
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !15  ; 6 uses
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !26
  %.not.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !24
  %i.ba = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.t
  br i1 %i.bb, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bc = load i64, ptr %i.u, align 8, !tbaa !23  ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.be, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !20
  %i.bf = load i64, ptr %i.t, align 8, !tbaa !21
  store i64 %i.bf, ptr %i.az, align 8, !tbaa !21
  %.pre.i = load i64, ptr %i.u, align 8, !tbaa !23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.l
  %i.bg = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bc, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !23
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.bj, ptr %i.g, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i unwind label %bb.p

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i: ; preds = %bb.m
  %.pre93.i = load ptr, ptr %4, align 8, !tbaa !20 ; 2 uses
  %i.bk = icmp eq ptr %.pre93.i, %i.t
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i
  %i.bl = load i64, ptr %i.t, align 8, !tbaa !21
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %.pre93.i, i64 noundef %i.bm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bn = icmp ult i64 %.244.lcssa.i, %i.s
  br i1 %i.bn, label %.lr.ph79.i, label %.critedge4.i

.lr.ph79.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bo = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph79.i
  %.378.i = phi i64 [ %.244.lcssa.i, %.lr.ph79.i ], [ %i.bt, %bb.o ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.378.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !21
  %i.br = sext i8 %i.bq to i32
  %i.bs = call i32 @isspace(i32 noundef %i.br) #23
  %.not49.i = icmp eq i32 %i.bs, 0
  br i1 %.not49.i, label %.critedge4.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = add i64 %.378.i, 1                      ; 2 uses
  %exitcond92.not.i = icmp eq i64 %i.bt, %i.s
  br i1 %exitcond92.not.i, label %_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit, label %bb.n, !llvm.loop !35

bb.p:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.t
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i: ; preds = %bb.p
  %i.bx = load i64, ptr %i.t, align 8, !tbaa !21
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

.critedge4.i:                                     ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.critedge2.i, %.critedge.i
  %.146.i = phi i32 [ %.04583.i, %.critedge2.i ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.04583.i, %.critedge.i ], [ %i.ak, %bb.n ]
  %.4.i = phi i64 [ %.244.lcssa.i, %.critedge2.i ], [ %.244.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.14374.i, %.critedge.i ], [ %.378.i, %bb.n ] ; 2 uses
  %.1.i = phi i64 [ %.14374.i, %.critedge2.i ], [ %.244.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.14374.i, %.critedge.i ], [ %.378.i, %bb.n ]
  %i.bz = icmp ult i64 %.4.i, %i.s
  br i1 %i.bz, label %.preheader.i, label %._crit_edge.i, !llvm.loop !36

._crit_edge.i:                                    ; preds = %.critedge4.i, %bb.f, %bb.b
  %.2.i = phi i64 [ 0, %bb.b ], [ %.1.i, %.critedge4.i ], [ %.14374.i, %bb.f ] ; 5 uses
  %i.ca = icmp ult i64 %.2.i, %i.s
  br i1 %i.ca, label %bb.q, label %_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit

bb.q:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.cb = load i64, ptr %i.r, align 8, !tbaa !23, !noalias !47 ; 3 uses
  %i.cc = icmp ugt i64 %.2.i, %i.cb
  br i1 %i.cc, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %.2.i, i64 noundef %i.cb) #25, !noalias !47
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i: ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.cd, ptr %5, align 8, !tbaa !24, !alias.scope !47
  %10 = load ptr, ptr %0, align 8, !tbaa !20, !noalias !47
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 %.2.i ; 2 uses
  %i.cf = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.cb)
  %spec.select.i.i.i55.i = sub nuw i64 %i.cf, %.2.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !47
  store i64 %spec.select.i.i.i55.i, ptr %i.d, align 8, !tbaa !25, !noalias !47
  %i.cg = icmp ugt i64 %spec.select.i.i.i55.i, 15
  br i1 %i.cg, label %.noexc10.i.i57.i, label %._crit_edge.i.i.i56.i

.noexc10.i.i57.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i
  %i.ch = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.ch, ptr %5, align 8, !tbaa !20, !alias.scope !47
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !25, !noalias !47
  store i64 %i.ci, ptr %i.cd, align 8, !tbaa !21, !alias.scope !47
  br label %._crit_edge.i.i.i56.i

._crit_edge.i.i.i56.i:                            ; preds = %.noexc10.i.i57.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i
  %i.cj = phi ptr [ %i.ch, %.noexc10.i.i57.i ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i54.i ] ; 2 uses
  switch i64 %spec.select.i.i.i55.i, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i56.i
  %i.ck = load i8, ptr %i.ce, align 1, !tbaa !21
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i

bb.t:                                             ; preds = %._crit_edge.i.i.i56.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.ce, i64 %spec.select.i.i.i55.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i: ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i56.i
  %i.cl = load i64, ptr %i.d, align 8, !tbaa !25, !noalias !47 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !23, !alias.scope !47
  %i.cn = load ptr, ptr %5, align 8, !tbaa !20, !alias.scope !47
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !47
  %i.cp = load ptr, ptr %i.g, align 8, !tbaa !15  ; 6 uses
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cq = load ptr, ptr %11, align 8, !tbaa !26
  %.not.i.i59.i = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i.i59.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 3 uses
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !24
  %i.cs = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cd
  br i1 %i.ct, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.i

bb.v:                                             ; preds = %bb.u
  %i.cu = load i64, ptr %i.cm, align 8, !tbaa !23 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %i.cw = add nuw nsw i64 %i.cu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.cd, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit63.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.i: ; preds = %bb.u
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !20
  %i.cx = load i64, ptr %i.cd, align 8, !tbaa !21
  store i64 %i.cx, ptr %i.cr, align 8, !tbaa !21
  %.pre94.i = load i64, ptr %i.cm, align 8, !tbaa !23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit63.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit63.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.i, %bb.v
  %i.cy = phi i64 [ %.pre94.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.i ], [ %i.cu, %bb.v ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !23
  %i.da = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr %i.db, ptr %i.g, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit58.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit63.i unwind label %bb.x

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit63.i: ; preds = %bb.w
  %.pre95.i = load ptr, ptr %5, align 8, !tbaa !20 ; 2 uses
  %i.dc = icmp eq ptr %.pre95.i, %i.cd
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit63.i
  %i.dd = load i64, ptr %i.cd, align 8, !tbaa !21
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.pre95.i, i64 noundef %i.de) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit63.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit63.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit

bb.x:                                             ; preds = %bb.w
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cd
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i: ; preds = %bb.x
  %i.di = load i64, ptr %i.cd, align 8, !tbaa !21
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i ], [ %i.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  resume { ptr, i32 } %common.resume.op

bb.y:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %.not97 = icmp ugt i64 %i.p, %i.s
  br i1 %.not97, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i58

.lr.ph:                                           ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %bb.aq
  %i.dp = phi i64 [ %i.p, %.lr.ph ], [ %i.gd, %bb.aq ] ; 2 uses
  %.038100 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.aq ] ; 7 uses
  %.03999 = phi i64 [ 0, %.lr.ph ], [ %.140, %bb.aq ] ; 6 uses
  %.04198 = phi i32 [ %spec.store.select, %.lr.ph ], [ %.142, %bb.aq ] ; 3 uses
  %i.dq = load ptr, ptr %0, align 8, !tbaa !20
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.03999 ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !21
  %i.dt = load ptr, ptr %2, align 8, !tbaa !20
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !21
  %i.dv = icmp eq i8 %i.ds, %i.du
  br i1 %i.dv, label %bb.aa, label %.critedge.thread

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.dw = load i64, ptr %i.r, align 8, !tbaa !23, !noalias !48 ; 3 uses
  %i.dx = icmp ugt i64 %.03999, %i.dw
  br i1 %i.dx, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %.03999, i64 noundef %i.dw) #25, !noalias !48
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.aa
  store ptr %i.dk, ptr %6, align 8, !tbaa !24, !alias.scope !48
  %i.dy = sub nuw i64 %i.dw, %.03999
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.p, i64 %i.dy) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !48
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !25, !noalias !48
  %i.dz = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.dz, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ea = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.ea, ptr %6, align 8, !tbaa !20, !alias.scope !48
  %i.eb = load i64, ptr %i.c, align 8, !tbaa !25, !noalias !48
  store i64 %i.eb, ptr %i.dk, align 8, !tbaa !21, !alias.scope !48
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ec = phi ptr [ %i.ea, %.noexc10.i.i ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i
  %i.ed = load i8, ptr %i.dr, align 1, !tbaa !21
  store i8 %i.ed, ptr %i.ec, align 1, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr nonnull align 1 %i.dr, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.ac, %bb.ad
  %i.ee = load i64, ptr %i.c, align 8, !tbaa !25, !noalias !48 ; 2 uses
  store i64 %i.ee, ptr %i.dl, align 8, !tbaa !23, !alias.scope !48
  %i.ef = load ptr, ptr %6, align 8, !tbaa !20, !alias.scope !48
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee
  store i8 0, ptr %i.eg, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !48
  %i.eh = load i64, ptr %i.dl, align 8, !tbaa !23 ; 4 uses
  %i.ei = load i64, ptr %i.o, align 8, !tbaa !23
  %i.ej = icmp eq i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %.pre = load ptr, ptr %6, align 8, !tbaa !20
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.ek = icmp eq i64 %i.eh, 0
  %.pre123 = load ptr, ptr %6, align 8, !tbaa !20 ; 3 uses
  br i1 %i.ek, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.el = load ptr, ptr %2, align 8, !tbaa !20
  %bcmp.i = call i32 @bcmp(ptr %.pre123, ptr %i.el, i64 %i.eh)
  %i.em = icmp eq i32 %bcmp.i, 0
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge, %bb.af, %bb.ae
  %i.en = phi ptr [ %.pre123, %bb.ae ], [ %.pre123, %bb.af ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge ] ; 2 uses
  %.ph = phi i1 [ true, %bb.ae ], [ %i.em, %bb.af ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge ]
  %i.eo = icmp eq ptr %i.en, %i.dk
  br i1 %i.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.ag
  %i.ep = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ep)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.eq = load i64, ptr %i.dk, align 8, !tbaa !21
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #22
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.ph, label %bb.ah, label %.critedge.thread

bb.ah:                                            ; preds = %.critedge
  %i.es = add nsw i32 %.04198, -1
  %i.et = icmp slt i32 %.04198, 1
  %.pre126.pre131 = load i64, ptr %i.r, align 8, !tbaa !23, !noalias !27 ; 4 uses
  br i1 %i.et, label %._crit_edge, label %bb.ai

end_hunk_0
begin_hunk_1_@_ZN8pystring5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EES7_i:bb.a
bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit49
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 3 uses
  store ptr %i.fj, ptr %i.fh, align 8, !tbaa !24
  %i.fk = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.dm
  br i1 %i.fl, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51

bb.an:                                            ; preds = %bb.am
  %i.fm = load i64, ptr %i.dn, align 8, !tbaa !23 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 16
  call void @llvm.assume(i1 %i.fn)
  %i.fo = add nuw nsw i64 %i.fm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fj, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.fo, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51: ; preds = %bb.am
  store ptr %i.fk, ptr %i.fh, align 8, !tbaa !20
  %i.fp = load i64, ptr %i.dm, align 8, !tbaa !21
  store i64 %i.fp, ptr %i.fj, align 8, !tbaa !21
  %.pre124 = load i64, ptr %i.dn, align 8, !tbaa !23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51
  %i.fq = phi i64 [ %.pre124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51 ], [ %i.fm, %bb.an ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !23
  store ptr %i.dm, ptr %7, align 8, !tbaa !20
  store i64 0, ptr %i.dn, align 8, !tbaa !23
  %i.fs = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  store ptr %i.ft, ptr %i.g, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit49
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.ap

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.ao
  %.pre125 = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  %i.fu = icmp eq ptr %.pre125, %i.dm
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.fv = load i64, ptr %i.dm, align 8, !tbaa !21
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %.pre125, i64 noundef %i.fw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fx = landingpad { ptr, i32 }
          cleanup
  %i.fy = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.dm
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.ap
  %i.ga = load i64, ptr %i.dm, align 8, !tbaa !21
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

.critedge.thread:                                 ; preds = %bb.z, %.critedge
  %i.gc = add i64 %.03999, 1
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.142 = phi i32 [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %.04198, %.critedge.thread ]
  %.140 = phi i64 [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.gc, %.critedge.thread ] ; 2 uses
  %.1 = phi i64 [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %.038100, %.critedge.thread ] ; 2 uses
  %i.gd = add i64 %.140, %i.p                     ; 2 uses
  %.not = icmp ugt i64 %i.gd, %i.s
  br i1 %.not, label %.._crit_edge.loopexit_crit_edge, label %bb.z, !llvm.loop !43

.._crit_edge.loopexit_crit_edge:                  ; preds = %bb.aq
  %.pre126.pre = load i64, ptr %i.r, align 8, !tbaa !23, !noalias !50
  br label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.ah, %.._crit_edge.loopexit_crit_edge
  %i.ge = phi i64 [ %.pre126.pre, %.._crit_edge.loopexit_crit_edge ], [ %.pre126.pre131, %bb.ah ] ; 3 uses
  %.038.lcssa = phi i64 [ %.1, %.._crit_edge.loopexit_crit_edge ], [ %.038100, %bb.ah ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.gf = icmp ugt i64 %.038.lcssa, %i.ge
  br i1 %i.gf, label %bb.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i58

bb.ar:                                            ; preds = %._crit_edge
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %.038.lcssa, i64 noundef %i.ge) #25, !noalias !50
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i58: ; preds = %._crit_edge.thread, %._crit_edge
  %.038.lcssa190 = phi i64 [ 0, %._crit_edge.thread ], [ %.038.lcssa, %._crit_edge ] ; 3 uses
  %i.gg = phi i64 [ %i.s, %._crit_edge.thread ], [ %i.ge, %._crit_edge ]
  %i.gh = sub i64 %i.s, %.038.lcssa190
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %i.gi, ptr %8, align 8, !tbaa !24, !alias.scope !50
  %i.gj = load ptr, ptr %0, align 8, !tbaa !20, !noalias !50
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.038.lcssa190 ; 2 uses
  %i.gl = sub nuw i64 %i.gg, %.038.lcssa190
  %spec.select.i.i.i59 = call noundef i64 @llvm.umin.i64(i64 %i.gh, i64 %i.gl) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !50
  store i64 %spec.select.i.i.i59, ptr %i.a, align 8, !tbaa !25, !noalias !50
  %i.gm = icmp ugt i64 %spec.select.i.i.i59, 15
  br i1 %i.gm, label %.noexc10.i.i61, label %._crit_edge.i.i.i60

.noexc10.i.i61:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i58
  %i.gn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.gn, ptr %8, align 8, !tbaa !20, !alias.scope !50
  %i.go = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !50
  store i64 %i.go, ptr %i.gi, align 8, !tbaa !21, !alias.scope !50
  br label %._crit_edge.i.i.i60

._crit_edge.i.i.i60:                              ; preds = %.noexc10.i.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i58
  %i.gp = phi ptr [ %i.gn, %.noexc10.i.i61 ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i58 ] ; 2 uses
  switch i64 %spec.select.i.i.i59, label %bb.at [
    i64 1, label %bb.as
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit62
  ]

bb.as:                                            ; preds = %._crit_edge.i.i.i60
  %i.gq = load i8, ptr %i.gk, align 1, !tbaa !21
  store i8 %i.gq, ptr %i.gp, align 1, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit62

bb.at:                                            ; preds = %._crit_edge.i.i.i60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gp, ptr align 1 %i.gk, i64 %spec.select.i.i.i59, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit62: ; preds = %._crit_edge.i.i.i60, %bb.as, %bb.at
  %i.gr = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !50 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !23, !alias.scope !50
  %i.gt = load ptr, ptr %8, align 8, !tbaa !20, !alias.scope !50
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gr
  store i8 0, ptr %i.gu, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !50
  %i.gv = load ptr, ptr %i.g, align 8, !tbaa !15  ; 6 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !26
  %.not.i.i63 = icmp eq ptr %i.gv, %i.gx
  br i1 %.not.i.i63, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit62
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 3 uses
  store ptr %i.gy, ptr %i.gv, align 8, !tbaa !24
  %i.gz = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gi
  br i1 %i.ha, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

bb.av:                                            ; preds = %bb.au
  %i.hb = load i64, ptr %i.gs, align 8, !tbaa !23 ; 3 uses
  %i.hc = icmp ult i64 %i.hb, 16
  call void @llvm.assume(i1 %i.hc)
  %i.hd = add nuw nsw i64 %i.hb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gy, ptr noundef nonnull align 8 dereferenceable(1) %i.gi, i64 %i.hd, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.au
  store ptr %i.gz, ptr %i.gv, align 8, !tbaa !20
  %i.he = load i64, ptr %i.gi, align 8, !tbaa !21
  store i64 %i.he, ptr %i.gy, align 8, !tbaa !21
  %.pre127 = load i64, ptr %i.gs, align 8, !tbaa !23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67.thread: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  %i.hf = phi i64 [ %.pre127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64 ], [ %i.hb, %bb.av ]
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !23
  store i64 0, ptr %i.gs, align 8, !tbaa !23
  %i.hh = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  store ptr %i.hi, ptr %i.g, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit62
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67 unwind label %bb.ax

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67: ; preds = %bb.aw
  %.pre128 = load ptr, ptr %8, align 8, !tbaa !20 ; 2 uses
  %i.hj = icmp eq ptr %.pre128, %i.gi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67
  %i.hk = load i64, ptr %i.gi, align 8, !tbaa !21
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %.pre128, i64 noundef %i.hl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit67.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit

_ZN8pystring12_GLOBAL__N_116split_whitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEi.exit: ; preds = %bb.d, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i, %._crit_edge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  ret void

bb.ax:                                            ; preds = %bb.aw
  %i.hm = landingpad { ptr, i32 }
          cleanup
  %i.hn = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.gi
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.ax
  %i.hp = load i64, ptr %i.gi, align 8, !tbaa !21
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #22
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
  %i.g = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !21
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !15
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23   ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23   ; 4 uses
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
  %i.x = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %.not42.i = icmp eq i64 %i.y, 0
  br i1 %.not42.i, label %.critedge.i, label %bb.f, !llvm.loop !51

bb.f:                                             ; preds = %.preheader.i, %bb.e
  %.138.i262 = phi i64 [ %.03784.i, %.preheader.i ], [ %i.y, %bb.e ] ; 2 uses
  %i.y = add i64 %.138.i262, -1                   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !21
  %i.ab = sext i8 %i.aa to i32
  %i.ac = call i32 @isspace(i32 noundef %i.ab) #23
  %.not43.i = icmp eq i32 %i.ac, 0
  br i1 %.not43.i, label %.critedge.i, label %bb.e, !llvm.loop !51

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.138.i.lcssa = phi i64 [ %.138.i262, %bb.f ], [ %i.y, %bb.e ] ; 7 uses
  %.not44.i263 = icmp eq i64 %.138.i.lcssa, 0
  br i1 %.not44.i263, label %.critedge2.i, label %.lr.ph265.preheader

.lr.ph265.preheader:                              ; preds = %.critedge.i
  %i.ad = load ptr, ptr %0, align 8, !tbaa !20
  br label %.lr.ph265

bb.g:                                             ; preds = %.lr.ph265
  %.not44.i = icmp eq i64 %i.ae, 0
  br i1 %.not44.i, label %.critedge2.i, label %.lr.ph265, !llvm.loop !52

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %bb.g
  %.239.i264 = phi i64 [ %i.ae, %bb.g ], [ %.138.i.lcssa, %.lr.ph265.preheader ] ; 2 uses
  %i.ae = add i64 %.239.i264, -1                  ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !21
  %i.ah = sext i8 %i.ag to i32
  %i.ai = call i32 @isspace(i32 noundef %i.ah) #23
  %.not45.i = icmp eq i32 %i.ai, 0
  br i1 %.not45.i, label %bb.g, label %..critedge2.i_crit_edge, !llvm.loop !52

..critedge2.i_crit_edge:                          ; preds = %.lr.ph265
  br label %.critedge2.i, !llvm.loop !52

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
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.am = load i64, ptr %i.s, align 8, !tbaa !23, !noalias !67 ; 3 uses
  %i.an = icmp ugt i64 %.239.i.lcssa, %i.am
  br i1 %i.an, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %.239.i.lcssa, i64 noundef %i.am) #25, !noalias !67
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.i
  store ptr %i.u, ptr %4, align 8, !tbaa !24, !alias.scope !67
  %i.ao = load ptr, ptr %0, align 8, !tbaa !20, !noalias !67
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.239.i.lcssa ; 2 uses
  %i.aq = call i64 @llvm.umin.i64(i64 %.138.i.lcssa, i64 %i.am)
  %spec.select.i.i.i.i = sub nuw i64 %i.aq, %.239.i.lcssa ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !67
  store i64 %spec.select.i.i.i.i, ptr %i.e, align 8, !tbaa !25, !noalias !67
  %i.ar = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.ar, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !20, !alias.scope !67
  %i.at = load i64, ptr %i.e, align 8, !tbaa !25, !noalias !67
  store i64 %i.at, ptr %i.u, align 8, !tbaa !21, !alias.scope !67
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.au = phi ptr [ %i.as, %.noexc10.i.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !21
  store i8 %i.av, ptr %i.au, align 1, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ap, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !25, !noalias !67 ; 2 uses
  store i64 %i.aw, ptr %i.v, align 8, !tbaa !23, !alias.scope !67
  %i.ax = load ptr, ptr %4, align 8, !tbaa !20, !alias.scope !67
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i8 0, ptr %i.ay, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !67
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !15  ; 6 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !26
  %.not.i.i.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i.i.i, label %bb.o, label %bb.m

end_hunk_1
