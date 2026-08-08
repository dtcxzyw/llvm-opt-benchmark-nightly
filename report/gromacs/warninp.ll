inline.NumInlined: 173
inline.NumDeleted: 82
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.gmx::EnumerationArray.3" = type { [3 x ptr] }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.gmx::TextLineWrapperSettings" = type <{ i32, i32, i32, i8, i8, [2 x i8] }>
%"class.gmx::TextLineWrapper" = type { %"class.gmx::TextLineWrapperSettings" }

$_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

@.str = private unnamed_addr constant [21 x i8] c"Empty error message.\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"\0A%s %d [file %s, line %d]:\0A%s\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\0A%s %d [file %s]:\0A%s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\0A%s %d:\0A%s\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZZL17warningTypeString11WarningTypeE15warningTypeName = internal unnamed_addr constant %"struct.gmx::EnumerationArray.3" { [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7] }, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"NOTE\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"There %s %d error%s in input file(s)\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"was\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"were\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\0AThere %s %d %s%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [92 x i8] c"Too many warnings (%d).\0AIf you are sure all warnings are harmless, use the -maxwarn option.\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"Too few parameters on line (source file %s, line %d)\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"Incorrect number of parameters on line (source file %s, line %d)\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN14WarningHandler20setFileAndLineNumberERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %2, ptr %i.f, align 4, !tbaa !15
  ret void
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK14WarningHandler11getFileNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::filesystem::__cxx11::path") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !28
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.f, ptr %i.a, align 8, !tbaa !30
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !29
  %i.i = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.i, ptr %i.c, align 8, !tbaa !31
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !31
  store i8 %i.k, ptr %i.j, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !9
  %i.n = load ptr, ptr %0, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_ZNSt10filesystem7__cxx114pathC2ERKS1_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.c
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.c, align 8, !tbaa !31
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.r

_ZNSt10filesystem7__cxx114pathC2ERKS1_.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN14WarningHandler11addLowLevelESt17basic_string_viewIcSt11char_traitsIcEE11WarningType(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 %1, ptr nofree readonly captures(address) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.gmx::TextLineWrapperSettings", align 4 ; 8 uses
  %5 = alloca %"class.gmx::TextLineWrapper", align 4 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = icmp eq i64 %1, 0                        ; 2 uses
  %spec.select = select i1 %i.d, i64 20, i64 %1   ; 4 uses
  %spec.select48 = select i1 %i.d, ptr @.str, ptr %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN3gmx23TextLineWrapperSettingsC1Ev(ptr noundef nonnull align 4 dereferenceable(14) %4)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 2, ptr %i.e, align 4, !tbaa !32
  store i32 75, ptr %4, align 4, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 2, ptr %i.f, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.g, ptr %7, align 8, !tbaa !28
  %i.h = icmp eq ptr %spec.select48, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #14
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i64 %spec.select, ptr %i.c, align 8, !tbaa !30
  %i.i = icmp ugt i64 %spec.select, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc15 unwind label %bb.n   ; 2 uses

.noexc15:                                         ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %7, align 8, !tbaa !29
  %i.k = load i64, ptr %i.c, align 8, !tbaa !30
  store i64 %i.k, ptr %i.g, align 8, !tbaa !31
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc15, %bb.c
  %i.l = phi ptr [ %i.j, %.noexc15 ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %spec.select, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %spec.select48, align 1, !tbaa !31
  store i8 %i.m, ptr %i.l, align 1, !tbaa !31
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 1 dereferenceable(1) %spec.select48, i64 %spec.select, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.n = load i64, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !9
  %i.p = load ptr, ptr %7, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  invoke void @_ZNK3gmx15TextLineWrapper12wrapToStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %7, align 8, !tbaa !29     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.g
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.g, align 8, !tbaa !31
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !9    ; 9 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.w, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !15
  %.not = icmp eq i32 %i.aa, -1
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !39 ; 2 uses
  %i.ac = sext i32 %3 to i64                      ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @_ZZL17warningTypeString11WarningTypeE15warningTypeName, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ac
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !37 ; 2 uses
  br i1 %.not, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !29, !noalias !48 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.aj, ptr %8, align 8, !tbaa !28, !alias.scope !48
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %.noexc.i, label %bb.j

.noexc.i:                                         ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #14
          to label %.noexc19 unwind label %bb.p

.noexc19:                                         ; preds = %.noexc.i
  unreachable

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !48
  store i64 %i.x, ptr %i.b, align 8, !tbaa !30, !noalias !48
  %i.al = icmp ugt i64 %i.x, 15
  br i1 %i.al, label %.noexc.i.i.i18, label %._crit_edge.i.i.i.i17

.noexc.i.i.i18:                                   ; preds = %bb.j
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %._crit_edge.i.i.i.i17.thread unwind label %bb.p ; 2 uses

._crit_edge.i.i.i.i17.thread:                     ; preds = %.noexc.i.i.i18
  store ptr %i.am, ptr %8, align 8, !tbaa !29, !alias.scope !48
  %i.an = load i64, ptr %i.b, align 8, !tbaa !30, !noalias !48
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !31, !alias.scope !48
  br label %bb.l

._crit_edge.i.i.i.i17:                            ; preds = %bb.j
  %cond47 = icmp eq i64 %i.x, 1
  br i1 %cond47, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i17
  %i.ao = load i8, ptr %i.ai, align 1, !tbaa !31
  store i8 %i.ao, ptr %i.aj, align 8, !tbaa !31
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.i17.thread, %._crit_edge.i.i.i.i17
  %i.ap = phi ptr [ %i.am, %._crit_edge.i.i.i.i17.thread ], [ %i.aj, %._crit_edge.i.i.i.i17 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.ai, i64 %i.x, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !30, !noalias !48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !9, !alias.scope !48
  %i.as = load ptr, ptr %8, align 8, !tbaa !29, !alias.scope !48
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !48
  %i.au = load ptr, ptr %8, align 8, !tbaa !29
  %i.av = load i32, ptr %i.z, align 4, !tbaa !15
  %i.aw = load ptr, ptr %6, align 8, !tbaa !29
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.1, ptr noundef %i.ae, i32 noundef %i.ah, ptr noundef %i.au, i32 noundef %i.av, ptr noundef %i.aw) #15 ; 0 uses
  %i.ay = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.aj
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.m
  %i.ba = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.x

bb.n:                                             ; preds = %.noexc.i.i.i, %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.o:                                             ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.g
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.o
  %i.bg = load i64, ptr %i.g, align 8, !tbaa !31
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.n ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.bd, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.p:                                             ; preds = %.noexc.i.i.i18, %.noexc.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.y

bb.q:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !29, !noalias !55 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.bk, ptr %9, align 8, !tbaa !28, !alias.scope !55
  %i.bl = icmp eq ptr %i.bj, null
  br i1 %i.bl, label %.noexc.i30, label %bb.r

.noexc.i30:                                       ; preds = %bb.q
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #14
          to label %.noexc31 unwind label %bb.v

.noexc31:                                         ; preds = %.noexc.i30
  unreachable

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !55
  store i64 %i.x, ptr %i.a, align 8, !tbaa !30, !noalias !55
  %i.bm = icmp ugt i64 %i.x, 15
  br i1 %i.bm, label %.noexc.i.i.i29, label %._crit_edge.i.i.i.i28

.noexc.i.i.i29:                                   ; preds = %bb.r
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.i.i28.thread unwind label %bb.v ; 2 uses

._crit_edge.i.i.i.i28.thread:                     ; preds = %.noexc.i.i.i29
  store ptr %i.bn, ptr %9, align 8, !tbaa !29, !alias.scope !55
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !55
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !31, !alias.scope !55
  br label %bb.t

._crit_edge.i.i.i.i28:                            ; preds = %bb.r
  %cond = icmp eq i64 %i.x, 1
  br i1 %cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i28
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !31
  store i8 %i.bp, ptr %i.bk, align 8, !tbaa !31
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i.i28.thread, %._crit_edge.i.i.i.i28
  %i.bq = phi ptr [ %i.bn, %._crit_edge.i.i.i.i28.thread ], [ %i.bk, %._crit_edge.i.i.i.i28 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr nonnull align 1 %i.bj, i64 %i.x, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.br = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !55 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !9, !alias.scope !55
  %i.bt = load ptr, ptr %9, align 8, !tbaa !29, !alias.scope !55
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !55
  %i.bv = load ptr, ptr %9, align 8, !tbaa !29
end_hunk_0
