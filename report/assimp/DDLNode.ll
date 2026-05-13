inline.NumInlined: 225
inline.NumDeleted: 110
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<ODDLParser::DDLNode *, std::allocator<ODDLParser::DDLNode *>>::_Vector_impl" }
%"struct.std::_Vector_base<ODDLParser::DDLNode *, std::allocator<ODDLParser::DDLNode *>>::_Vector_impl" = type { %"struct.std::_Vector_base<ODDLParser::DDLNode *, std::allocator<ODDLParser::DDLNode *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ODDLParser::DDLNode *, std::allocator<ODDLParser::DDLNode *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.ODDLParser::Value::Iterator" = type { ptr, ptr }

$_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev = comdat any

@_ZN10ODDLParser7DDLNode16s_allocatedNodesE = hidden global %"class.std::vector" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [8 x i8] c"type = \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DDLNode.cpp, ptr null }]

@_ZN10ODDLParser7DDLNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_mPS0_ = hidden unnamed_addr alias void (ptr, ptr, ptr, i64, ptr), ptr @_ZN10ODDLParser7DDLNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_mPS0_
@_ZN10ODDLParser7DDLNodeD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10ODDLParser7DDLNodeD2Ev

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #20
  br label %_ZNSt12_Vector_baseIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser7DDLNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_mPS0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.f, ptr %i.b, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8
  %i.i = load i64, ptr %i.b, align 8
  store i64 %i.i, ptr %i.c, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.t, ptr %i.a, align 8
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i10, label %._crit_edge.i.i9

.noexc.i10:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i10
  store ptr %i.v, ptr %i.p, align 8
  %i.w = load i64, ptr %i.a, align 8
  store i64 %i.w, ptr %i.q, align 8
  br label %._crit_edge.i.i9

._crit_edge.i.i9:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.t, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i9
  %i.y = load i8, ptr %i.r, align 1
  store i8 %i.y, ptr %i.x, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i9
  %i.z = load i64, ptr %i.a, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %i.p, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %4, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, i8 0, i64 56, i1 false)
  store i64 %3, ptr %i.af, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backEOS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.ai, align 8
  %i.al = load ptr, ptr %i.ah, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.am, ptr %i.ah, align 8
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backEOS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ao = ptrtoint ptr %i.ai to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.j, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
          to label %.noexc12 unwind label %bb.n

.noexc12:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #23
          to label %.noexc13 unwind label %bb.n   ; 4 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store ptr %0, ptr %i.az, align 8
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.k, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.k:                                             ; preds = %.noexc13
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.k, %.noexc13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %5 = load ptr, ptr %i.aj, align 8
  %6 = ptrtoint ptr %5 to i64
  %7 = sub i64 %6, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %7) #20
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ay, ptr %i.ag, align 8
  store ptr %i.bb, ptr %i.ah, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bc, ptr %i.aj, align 8
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backEOS2_.exit

bb.m:                                             ; preds = %.noexc.i10
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #20
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit: ; preds = %bb.n, %bb.o
  %i.bl = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.q
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit
  %i.bn = load i64, ptr %i.q, align 8
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.f
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.be, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit ]
  %i.bp = load ptr, ptr %0, align 8               ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.c
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load i64, ptr %i.c, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser7DDLNodeD2Ev(ptr noundef nonnull align 8 captures(address) dead_on_return(136) dereferenceable(136) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10ODDLParser8PropertyD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10ODDLParser5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.e) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN10ODDLParserL22releaseReferencedNamesEPNS_9ReferenceE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN10ODDLParser9ReferenceD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.h) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 16) #20
  br label %_ZN10ODDLParserL22releaseReferencedNamesEPNS_9ReferenceE.exit

_ZN10ODDLParserL22releaseReferencedNamesEPNS_9ReferenceE.exit: ; preds = %bb.e, %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN10ODDLParserL22releaseReferencedNamesEPNS_9ReferenceE.exit
  tail call void @_ZN10ODDLParser13DataArrayListD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.k) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 40) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN10ODDLParserL22releaseReferencedNamesEPNS_9ReferenceE.exit
  store ptr null, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load i64, ptr %i.m, align 8
  %i.o = load ptr, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.p, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.m, %bb.j
  %.lcssa10 = phi ptr [ %i.v, %bb.j ], [ %i.ar, %bb.m ] ; 2 uses
  %.lcssa = phi i64 [ %i.w, %bb.j ], [ %i.av, %bb.m ]
  %.not.i.i.i = icmp eq ptr %.lcssa10, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %.lcssa
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa10, i64 noundef %i.aa) #20
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  ret void

.lr.ph:                                           ; preds = %bb.j, %bb.m
  %i.am = phi ptr [ %i.ar, %bb.m ], [ %i.v, %bb.j ] ; 2 uses
  %i.an = phi ptr [ %i.as, %bb.m ], [ %i.u, %bb.j ]
  %.011 = phi i64 [ %i.at, %bb.m ], [ 0, %bb.j ]  ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.011
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  tail call void @_ZN10ODDLParser7DDLNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.ap) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 136) #20
  %.pre = load ptr, ptr %i.t, align 8
  %.pre15 = load ptr, ptr %i.s, align 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %i.ar = phi ptr [ %i.am, %.lr.ph ], [ %.pre15, %bb.l ] ; 3 uses
  %i.as = phi ptr [ %i.an, %.lr.ph ], [ %.pre, %bb.l ] ; 2 uses
  %i.at = add nuw i64 %.011, 1                    ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = icmp ult i64 %i.at, %i.ax
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !3
}

; Function Attrs: nounwind
declare void @_ZN10ODDLParser8PropertyD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN10ODDLParser5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN10ODDLParser13DataArrayListD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser7DDLNode12attachParentEPS0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backEOS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.f, align 8
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.e, align 8
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backEOS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.f, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
  unreachable

_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #23 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %0, ptr %i.w, align 8
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.g, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %2 = load ptr, ptr %i.g, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = sub i64 %3, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %4) #20
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.v, ptr %i.d, align 8
  store ptr %i.y, ptr %i.e, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.z, ptr %i.g, align 8
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ODDLParser7DDLNode12detachParentEv(ptr noundef nonnull align 8 captures(address) dereferenceable(136) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.h = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr i64 %i.i, 5                         ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.l = and i64 %i.i, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.d, i64 %i.l ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i ], [ %i.y, %bb.g ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.x, %bb.g ] ; 9 uses
  %i.m = load ptr, ptr %.sroa.032.051.i.i.i, align 8
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, %0
  br i1 %i.q, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, %0
  br i1 %i.t, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit26, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, %0
  br i1 %i.w, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.y = add nsw i64 %.052.i.i.i, -1
  %i.z = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.z, label %bb.c, label %._crit_edge.loopexit.i.i.i, !llvm.loop !5

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.g
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.g, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.b
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.i, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.d, %bb.b ] ; 5 uses
  %i.aa = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.aa, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.i
  %.sroa.032.1.i.i.i = phi ptr [ %i.ad, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ae = load ptr, ptr %.sroa.032.1.i.i.i, align 8
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.j
  %.sroa.032.2.i.i.i = phi ptr [ %i.ag, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ah = load ptr, ptr %.sroa.032.2.i.i.i, align 8
  %i.ai = icmp eq ptr %i.ah, %0
  %spec.select.i.i.i = select i1 %i.ai, ptr %.sroa.032.2.i.i.i, ptr %i.f
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit26: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit28: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit: ; preds = %bb.c, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit26, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit28, %bb.h, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.h ], [ %i.al, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit28 ], [ %i.ak, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit26 ], [ %i.aj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.c ] ; 2 uses
  %.not8 = icmp eq ptr %i.f, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not8, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit
  %i.am = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.an = sub i64 %i.am, %i.h
  %i.ao = getelementptr inbounds i8, ptr %i.d, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.f
  br i1 %.not.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.g, %i.aq                     ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 8
  br i1 %i.as, label %bb.m, label %bb.n, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ao, ptr nonnull align 8 %i.ap, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.n:                                             ; preds = %bb.l
  %i.at = icmp eq i64 %i.ar, 8
  br i1 %i.at, label %bb.o, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %i.ap, align 8
  store ptr %i.au, ptr %i.ao, align 8
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit: ; preds = %bb.k, %bb.m, %bb.n, %bb.o
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8
  store ptr %i.aw, ptr %i.e, align 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit
  store ptr null, ptr %i.a, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN10ODDLParser7DDLNodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK10ODDLParser7DDLNode9getParentEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNK10ODDLParser7DDLNode16getChildNodeListEv(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(136) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser7DDLNode7setTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10ODDLParser7DDLNode7getTypeB5cxx11Ev(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(136) %0) local_unnamed_addr #9 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser7DDLNode7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
begin_hunk_1_@_ZNK10ODDLParser7DDLNode13getReferencesEv
define hidden noundef ptr @_ZNK10ODDLParser7DDLNode13getReferencesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser7DDLNode4dumpERNS_12IOStreamBaseE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.ODDLParser::Value::Iterator", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.d, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.e = load ptr, ptr %0, align 8, !noalias !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.h, ptr %2, align 8, !alias.scope !11
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.i, align 8, !alias.scope !11
  store i8 0, ptr %i.h, align 8, !alias.scope !11
  %i.j = add i64 %i.g, 7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.j)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !alias.scope !11
  %i.l = add i64 %i.k, -4611686018427387897
  %i.m = icmp ult i64 %i.l, 7
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.o = load i64, ptr %i.i, align 8, !alias.scope !11
  %i.p = sub i64 4611686018427387903, %i.o
  %i.q = icmp ult i64 %i.p, %i.g
  br i1 %i.q, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #22
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !alias.scope !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.h, align 8, !alias.scope !11
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #20
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn, %bb.o ], [ %i.s, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.x = load ptr, ptr %1, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.j       ; 0 uses

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ab = load ptr, ptr %2, align 8               ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.h
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.h, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  call void @_ZN10ODDLParser5Value8IteratorC1EPS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = invoke noundef zeroext i1 @_ZNK10ODDLParser5Value8Iterator7hasNextEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  br i1 %i.ah, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ai = invoke noundef ptr @_ZN10ODDLParser5Value8Iterator7getNextEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN10ODDLParser5Value4dumpERNS_12IOStreamBaseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.f unwind label %bb.l, !llvm.loop !14

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %2, align 8               ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.h
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.j
  %i.am = load i64, ptr %i.h, align 8
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

bb.k:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %bb.g
  call void @_ZN10ODDLParser5Value8IteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void

bb.o:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %i.ao, %bb.k ]
  call void @_ZN10ODDLParser5Value8IteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %common.resume
}

declare void @_ZN10ODDLParser5Value8IteratorC1EPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #13

declare noundef zeroext i1 @_ZNK10ODDLParser5Value8Iterator7hasNextEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare noundef ptr @_ZN10ODDLParser5Value8Iterator7getNextEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare void @_ZN10ODDLParser5Value4dumpERNS_12IOStreamBaseE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN10ODDLParser5Value8IteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN10ODDLParser7DDLNode6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PS0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, i64 8), align 8
  %i.b = load ptr, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, align 8
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3
  %i.g = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #23 ; 5 uses
  invoke void @_ZN10ODDLParser7DDLNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_mPS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.f, ptr noundef %2)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, i64 8), align 8 ; 3 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, i64 16), align 8
  %.not.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %i.h, align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, i64 8), align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, i64 8), align 8
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, align 8 ; 4 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
  unreachable

_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #23 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  store ptr %i.g, ptr %i.x, align 8
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.not.i17.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %3 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, i64 16), align 8
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 %4, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %5) #20
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.w, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, align 8
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, i64 8), align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, i64 16), align 8
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret ptr %i.g

bb.h:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 136) #20
  resume { ptr, i32 } %i.ab
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser7DDLNode12releaseNodesEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, i64 8), align 8 ; 2 uses
  %i.b = load ptr, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %.pre10 = load ptr, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %.pre10
  br i1 %.not.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPN10ODDLParser7DDLNodeES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN10ODDLParser7DDLNodeES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %.pre10, ptr getelementptr inbounds nuw (i8, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, i64 8), align 8
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5clearEv.exit

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi ptr [ %i.e, %bb.c ], [ %i.a, %bb.a ]
  %.sroa.02.08 = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.02.08, align 8      ; 3 uses
  %.not1 = icmp eq ptr %i.d, null
  br i1 %.not1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN10ODDLParser7DDLNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.d) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 136) #20
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, i64 8), align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.e = phi ptr [ %i.c, %.lr.ph ], [ %.pre, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.08, i64 8 ; 2 uses
  %.not6 = icmp eq ptr %i.f, %i.e
  br i1 %.not6, label %._crit_edge, label %.lr.ph, !llvm.loop !15

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPPN10ODDLParser7DDLNodeES2_EvT_S4_RSaIT0_E.exit.i.i, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN10ODDLParser9ReferenceD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_DDLNode.cpp() #16 section ".text.startup" {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, i8 0, i64 24, i1 false)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev, ptr nonnull @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, ptr nonnull @__dso_handle) #21 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = distinct !{!7, !4}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!10 = distinct !{!10, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!11 = !{!12, !9}
!12 = distinct !{!12, !13, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!13 = distinct !{!13, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
end_hunk_1
