inline.NumInlined: 193
inline.NumDeleted: 88
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

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
define hidden void @_ZN16OpenColorIO_v2_525GetMatrixGPUShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS0_IKNS_12MatrixOpDataEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
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
  %i.h = load ptr, ptr %1, align 8, !tbaa !13     ; 3 uses
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
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 216
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
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_525GetMatrixGPUShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS0_IKNS_12MatrixOpDataEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  %i.hv = load ptr, ptr %21, align 8, !tbaa !30   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.hl
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.hx = load i64, ptr %i.hl, align 8, !tbaa !32
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #10
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %22, ptr noundef nonnull align 8 dereferenceable(764) %2)
          to label %bb.ca unwind label %bb.ci

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.10)
          to label %._crit_edge.i.i196 unwind label %bb.cj

._crit_edge.i.i196:                               ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #10
  %i.ia = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.ia, ptr %24, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ia, ptr noundef nonnull align 1 dereferenceable(3) @.str.12, i64 3, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 3, ptr %i.ib, align 8, !tbaa !33
  %i.ic = getelementptr inbounds nuw i8, ptr %24, i64 19
  store i8 0, ptr %i.ic, align 1, !tbaa !32
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText8mat4fMulEPKdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(764) %2, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.cb unwind label %bb.ck

bb.cb:                                            ; preds = %._crit_edge.i.i196
  %i.id = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.cc unwind label %bb.cl

bb.cc:                                            ; preds = %bb.cb
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.id, ptr noundef nonnull @.str.9)
          to label %bb.cd unwind label %bb.cl     ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  %i.if = load ptr, ptr %23, align 8, !tbaa !30   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.cd
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !32
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  %i.ik = load ptr, ptr %24, align 8, !tbaa !30   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.ia
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  %i.im = load i64, ptr %i.ia, align 8, !tbaa !32
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #10
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #10
  br label %bb.co

bb.ce:                                            ; preds = %bb.bw
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cf:                                            ; preds = %._crit_edge.i.i186
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

bb.cg:                                            ; preds = %bb.by, %bb.bx
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ir = load ptr, ptr %20, align 8, !tbaa !30   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.cg
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !32
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206, %bb.cf
  %.pn66 = phi { ptr, i32 } [ %i.ip, %bb.cf ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206 ], [ %i.iq, %bb.cg ]
  %i.iw = load ptr, ptr %21, align 8, !tbaa !30   ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.hl
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.iy = load i64, ptr %i.hl, align 8, !tbaa !32
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #10
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #10
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %bb.ce
  %.pn66.pn.pn = phi { ptr, i32 } [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ], [ %i.io, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #10
  br label %bb.ee

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cj:                                            ; preds = %bb.ca
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ck:                                            ; preds = %._crit_edge.i.i196
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

bb.cl:                                            ; preds = %bb.cc, %bb.cb
  %i.jd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.je = load ptr, ptr %23, align 8, !tbaa !30   ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %bb.cl
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !32
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212, %bb.ck
  %.pn70 = phi { ptr, i32 } [ %i.jc, %bb.ck ], [ %i.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212 ], [ %i.jd, %bb.cl ]
  %i.jj = load ptr, ptr %24, align 8, !tbaa !30   ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.ia
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214
  %i.jl = load i64, ptr %i.ia, align 8, !tbaa !32
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #10
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %bb.cj
  %.pn70.pn.pn = phi { ptr, i32 } [ %.pn70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217 ], [ %i.jb, %bb.cj ]
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #10
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ci
  %.pn70.pn.pn.pn = phi { ptr, i32 } [ %.pn70.pn.pn, %bb.cm ], [ %i.ja, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #10
  br label %bb.ee

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %bb.aj
  %i.jn = load ptr, ptr %1, align 8, !tbaa !13
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 216
  %i.jp = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_512MatrixOpData7Offsets9isNotNullEv(ptr noundef nonnull align 8 dereferenceable(32) %i.jo)
          to label %_ZNK16OpenColorIO_v2_512MatrixOpData10hasOffsetsEv.exit unwind label %bb.bp

_ZNK16OpenColorIO_v2_512MatrixOpData10hasOffsetsEv.exit: ; preds = %bb.co
  br i1 %i.jp, label %bb.cp, label %bb.db

bb.cp:                                            ; preds = %_ZNK16OpenColorIO_v2_512MatrixOpData10hasOffsetsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %25, ptr noundef nonnull align 8 dereferenceable(764) %2)
          to label %bb.cq unwind label %bb.cv

bb.cq:                                            ; preds = %bb.cp
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull @.str.10)
          to label %bb.cr unwind label %bb.cw

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #10
  %35 = load double, ptr %7, align 8, !tbaa !23
  %36 = fptrunc double %35 to float
  %i.jr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %37 = load double, ptr %i.jr, align 8, !tbaa !23
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %40 = load double, ptr %39, align 8, !tbaa !23
  %41 = fptrunc double %40 to float
  %42 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %43 = load double, ptr %42, align 8, !tbaa !23
  %44 = fptrunc double %43 to float
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText11float4ConstB5cxx11Effff(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(764) %2, float noundef %36, float noundef %38, float noundef %41, float noundef %44)
          to label %bb.cs unwind label %bb.cx

bb.cs:                                            ; preds = %bb.cr
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.ct unwind label %bb.cy

bb.ct:                                            ; preds = %bb.cs
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.js, ptr noundef nonnull @.str.14)
          to label %bb.cu unwind label %bb.cy     ; 0 uses

bb.cu:                                            ; preds = %bb.ct
  %i.ju = load ptr, ptr %26, align 8, !tbaa !30   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.cu
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !32
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jy) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #10
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #10
  br label %bb.db

bb.cv:                                            ; preds = %bb.cp
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cw:                                            ; preds = %bb.cq
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cx:                                            ; preds = %bb.cr
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

bb.cy:                                            ; preds = %bb.ct, %bb.cs
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kd = load ptr, ptr %26, align 8, !tbaa !30   ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %bb.cy
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !32
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222, %bb.cx
  %.pn79 = phi { ptr, i32 } [ %i.kb, %bb.cx ], [ %i.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222 ], [ %i.kc, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #10
  br label %bb.cz

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, %bb.cw
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %i.ka, %bb.cw ]
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #10
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cv
  %.pn79.pn.pn = phi { ptr, i32 } [ %.pn79.pn, %bb.cz ], [ %i.jz, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #10
  br label %bb.ee

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNK16OpenColorIO_v2_512MatrixOpData10hasOffsetsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %27, ptr noundef nonnull align 8 dereferenceable(764) %2)
          to label %bb.dc unwind label %bb.dq

bb.dc:                                            ; preds = %bb.db
  %i.ki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.dd unwind label %bb.dr

bb.dd:                                            ; preds = %bb.dc
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef nonnull @.str.15)
          to label %._crit_edge.i.i225 unwind label %bb.dr

._crit_edge.i.i225:                               ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #10
  %i.kk = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.kk, ptr %29, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.kk, ptr noundef nonnull align 1 dereferenceable(5) @.str.16, i64 5, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 5, ptr %i.kl, align 8, !tbaa !33
  %i.km = getelementptr inbounds nuw i8, ptr %29, i64 21
  store i8 0, ptr %i.km, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #10
  %i.kn = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.kn, ptr %30, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.kn, ptr noundef nonnull align 1 dereferenceable(5) @.str.17, i64 5, i1 false)
  %i.ko = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 5, ptr %i.ko, align 8, !tbaa !33
  %i.kp = getelementptr inbounds nuw i8, ptr %30, i64 21
  store i8 0, ptr %i.kp, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #10
  %i.kq = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.kq, ptr %31, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.kq, ptr noundef nonnull align 1 dereferenceable(5) @.str.18, i64 5, i1 false)
  %i.kr = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 5, ptr %i.kr, align 8, !tbaa !33
  %i.ks = getelementptr inbounds nuw i8, ptr %31, i64 21
  store i8 0, ptr %i.ks, align 1, !tbaa !32
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText11float3ConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(764) %2, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.de unwind label %bb.ds

bb.de:                                            ; preds = %._crit_edge.i.i225
  %i.kt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.df unwind label %bb.dt

bb.df:                                            ; preds = %bb.de
  %i.ku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.kt, ptr noundef nonnull @.str.9)
          to label %bb.dg unwind label %bb.dt     ; 0 uses

bb.dg:                                            ; preds = %bb.df
  %i.kv = load ptr, ptr %28, align 8, !tbaa !30   ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.dg
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !32
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237
  %i.la = load ptr, ptr %31, align 8, !tbaa !30   ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.kq
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239
  %i.lc = load i64, ptr %i.kq, align 8, !tbaa !32
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #10
  %i.le = load ptr, ptr %30, align 8, !tbaa !30   ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.kn
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242
  %i.lg = load i64, ptr %i.kn, align 8, !tbaa !32
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #10
  %i.li = load ptr, ptr %29, align 8, !tbaa !30   ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.kk
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  %i.lk = load i64, ptr %i.kk, align 8, !tbaa !32
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #10
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %32, ptr noundef nonnull align 8 dereferenceable(764) %2)
          to label %bb.dh unwind label %bb.dw

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.lm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.di unwind label %bb.dx

bb.di:                                            ; preds = %bb.dh
  %i.ln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.lm, ptr noundef nonnull @.str.19)
          to label %bb.dj unwind label %bb.dx     ; 0 uses

bb.dj:                                            ; preds = %bb.di
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText6dedentEv(ptr noundef nonnull align 8 dereferenceable(764) %2)
          to label %bb.dk unwind label %bb.bp

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %33, ptr noundef nonnull align 8 dereferenceable(764) %2)
          to label %bb.dl unwind label %bb.dz

bb.dl:                                            ; preds = %bb.dk
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull @.str.20)
          to label %bb.dm unwind label %bb.ea     ; 0 uses
end_hunk_1
