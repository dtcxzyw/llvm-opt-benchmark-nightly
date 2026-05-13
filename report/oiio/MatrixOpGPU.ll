inline.NumInlined: 193
inline.NumDeleted: 88
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.OpenColorIO_v2_5::GpuShaderText" = type <{ i32, [4 x i8], %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream", i32, [4 x i8] }>
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine" = type { ptr }
%"class.OpenColorIO_v2_5::MatrixOpData::Offsets" = type { [4 x double] }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"// Add Matrix processing\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"res\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c".rgb.r\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c".rgb.g\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c".rgb.b\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c".a\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"res = \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c" * res;\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c" = res;\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c" + res;\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c".rgb = \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"res.x\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"res.y\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"res.z\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c".a = res.w;\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.21 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_525GetMatrixGPUShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS0_IKNS_12MatrixOpDataEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.OpenColorIO_v2_5::GpuShaderText", align 8 ; 40 uses
  %3 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %4 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %5 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %6 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %7 = alloca %"class.OpenColorIO_v2_5::MatrixOpData::Offsets", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %9 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %33 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  %i.c = tail call noundef i32 @_ZNK16OpenColorIO_v2_516GpuShaderCreator11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #10
  call void @_ZN16OpenColorIO_v2_513GpuShaderTextC1ENS_11GpuLanguageE(ptr noundef nonnull align 8 dereferenceable(764) %2, i32 noundef %i.c)
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText6indentEv(ptr noundef nonnull align 8 dereferenceable(764) %2)
          to label %bb.b unwind label %bb.as

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %3, ptr noundef nonnull align 8 dereferenceable(764) %2)
          to label %bb.c unwind label %bb.at

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.au      ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %4, ptr noundef nonnull align 8 dereferenceable(764) %2)
          to label %bb.e unwind label %bb.aw

bb.e:                                             ; preds = %bb.d
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.1)
          to label %bb.f unwind label %bb.ax      ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %5, ptr noundef nonnull align 8 dereferenceable(764) %2)
          to label %bb.g unwind label %bb.az

bb.g:                                             ; preds = %bb.f
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str)
          to label %bb.h unwind label %bb.ba      ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %6, ptr noundef nonnull align 8 dereferenceable(764) %2)
          to label %bb.i unwind label %bb.bc

bb.i:                                             ; preds = %bb.h
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.2)
          to label %bb.j unwind label %bb.bd      ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText6indentEv(ptr noundef nonnull align 8 dereferenceable(764) %2)
          to label %bb.k unwind label %bb.as

bb.k:                                             ; preds = %bb.j
  %i.h = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 200 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !19   ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %.noexc101, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = icmp ugt i64 %i.o, 9223372036854775800
  br i1 %i.p, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !20

.noexc.i.i:                                       ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #11
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #12
          to label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc101_crit_edge unwind label %bb.bf

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc101_crit_edge: ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !21  ; 2 uses
  %.pre289 = load ptr, ptr %i.j, align 8, !tbaa !21
  %.pre290 = ptrtoint ptr %.pre289 to i64
  %.pre291 = ptrtoint ptr %.pre to i64
  br label %.noexc101

.noexc101:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc101_crit_edge, %bb.k
  %.pre-phi292 = phi i64 [ %.pre291, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc101_crit_edge ], [ %i.n, %bb.k ]
  %.pre-phi = phi i64 [ %.pre290, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc101_crit_edge ], [ %i.m, %bb.k ]
  %i.r = phi ptr [ %.pre, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc101_crit_edge ], [ %i.l, %bb.k ] ; 2 uses
  %i.s = phi ptr [ %i.q, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc101_crit_edge ], [ null, %bb.k ] ; 11 uses
  %i.t = sub i64 %.pre-phi, %.pre-phi292          ; 3 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.m, label %bb.n, !prof !22

bb.m:                                             ; preds = %.noexc101
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.r, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.n:                                             ; preds = %.noexc101
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.o, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.o:                                             ; preds = %bb.n
  %i.w = load double, ptr %i.r, align 8, !tbaa !23
  store double %i.w, ptr %i.s, align 8, !tbaa !23
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit:                ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %35 = load ptr, ptr %1, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %35, i64 216
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData7OffsetsC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.p unwind label %bb.bg

bb.p:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.y = load ptr, ptr %0, align 8, !tbaa !7
  %i.z = call noundef ptr @_ZNK16OpenColorIO_v2_516GpuShaderCreator12getPixelNameEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #10 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.aa, ptr %8, align 8, !tbaa !25
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.21) #11
          to label %.noexc102 unwind label %bb.bh

.noexc102:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !28
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.r
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc103 unwind label %bb.bh ; 2 uses

.noexc103:                                        ; preds = %.noexc.i
  store ptr %i.ae, ptr %8, align 8, !tbaa !30
  %i.af = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc103, %bb.r
  %i.ag = phi ptr [ %i.ae, %.noexc103 ], [ %i.aa, %bb.r ] ; 2 uses
  switch i64 %i.ac, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %i.z, align 1, !tbaa !32
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !32
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.z, i64 %i.ac, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !33
  %i.ak = load ptr, ptr %8, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %9, ptr noundef nonnull align 8 dereferenceable(764) %2)
          to label %._crit_edge.i.i104 unwind label %bb.bi

._crit_edge.i.i104:                               ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.am, ptr %11, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.am, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 3, ptr %i.an, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 19
  store i8 0, ptr %i.ao, align 1, !tbaa !32
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText10float4DeclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(764) %2, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.v unwind label %bb.bj

bb.v:                                             ; preds = %._crit_edge.i.i104
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.w unwind label %bb.bk

bb.w:                                             ; preds = %bb.v
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.4)
          to label %bb.x unwind label %bb.bk

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.ar = load ptr, ptr %8, align 8, !tbaa !30, !noalias !34
  %i.as = load i64, ptr %i.aj, align 8, !tbaa !33, !noalias !34 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.at, ptr %13, align 8, !tbaa !25, !alias.scope !37
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i64 0, ptr %i.au, align 8, !tbaa !33, !alias.scope !37
  store i8 0, ptr %i.at, align 8, !tbaa !32, !alias.scope !37
  %i.av = add i64 %i.as, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.av)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !33, !alias.scope !37
  %i.ax = sub i64 4611686018427387903, %i.aw
  %i.ay = icmp ult i64 %i.ax, %i.as
  br i1 %i.ay, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.y
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.ar, i64 noundef %i.as)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.z ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !33, !alias.scope !37
  %i.bb = add i64 %i.ba, -4611686018427387898
  %i.bc = icmp ult i64 %i.bb, 6
  br i1 %i.bc, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #11
          to label %.cont.i.i unwind label %bb.z

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.x
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %13, align 8, !tbaa !30, !alias.scope !37 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.at
  br i1 %i.bg, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.bh = load ptr, ptr %8, align 8, !tbaa !30, !noalias !40
  %i.bi = load i64, ptr %i.aj, align 8, !tbaa !33, !noalias !40 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.bj, ptr %14, align 8, !tbaa !25, !alias.scope !43
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !33, !alias.scope !43
  store i8 0, ptr %i.bj, align 8, !tbaa !32, !alias.scope !43
  %i.bl = add i64 %i.bi, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.bl)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !33, !alias.scope !43
  %i.bn = sub i64 4611686018427387903, %i.bm
  %i.bo = icmp ult i64 %i.bn, %i.bi
  br i1 %i.bo, label %.invoke.i.i114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i111: ; preds = %bb.aa
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.bh, i64 noundef %i.bi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i112 unwind label %bb.ab ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i112: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i111
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !33, !alias.scope !43
  %i.br = add i64 %i.bq, -4611686018427387898
  %i.bs = icmp ult i64 %i.br, 6
  br i1 %i.bs, label %.invoke.i.i114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i113

.invoke.i.i114:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i112, %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #11
          to label %.cont.i.i115 unwind label %bb.ab

.cont.i.i115:                                     ; preds = %.invoke.i.i114
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i112
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.6, i64 noundef 6)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit118 unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i113, %.invoke.i.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i111, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %14, align 8, !tbaa !30, !alias.scope !43 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bj
  br i1 %i.bw, label %.body116, label %.body116.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit118: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i113
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.bx = load ptr, ptr %8, align 8, !tbaa !30, !noalias !46
  %i.by = load i64, ptr %i.aj, align 8, !tbaa !33, !noalias !46 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.bz, ptr %15, align 8, !tbaa !25, !alias.scope !49
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i64 0, ptr %i.ca, align 8, !tbaa !33, !alias.scope !49
  store i8 0, ptr %i.bz, align 8, !tbaa !32, !alias.scope !49
  %i.cb = add i64 %i.by, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.cb)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit118
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !33, !alias.scope !49
  %i.cd = sub i64 4611686018427387903, %i.cc
  %i.ce = icmp ult i64 %i.cd, %i.by
end_hunk_0
