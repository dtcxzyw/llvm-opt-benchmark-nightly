Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/BlenderModifier?download=true
inline.NumInlined: 481
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }

$_ZN6Assimp6Logger4warnIJRA44_KcRKPS2_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger4warnIJRA39_KcRA32_S2_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger5debugIJRA35_KcRmRA5_S2_S5_RA16_S2_RA1024_S2_RA39_S2_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger4infoIJRA50_KcRA1024_S2_RA2_S2_EEEvDpOT_ = comdat any

$_ZNSt12__shared_ptrIN6Assimp7Blender6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN6Assimp6Logger4warnIJRA52_KcRKsEEEvDpOT_ = comdat any

$_ZN6Assimp6Logger4infoIJRA55_KcRA1024_S2_RA2_S2_EEEvDpOT_ = comdat any

$_ZN6Assimp7Blender22BlenderModifier_MirrorD0Ev = comdat any

$_ZN6Assimp7Blender15BlenderModifierD2Ev = comdat any

$_ZN6Assimp7Blender27BlenderModifier_SubdivisionD0Ev = comdat any

$_ZN6Assimp6Logger13formatMessageIJERKPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS9_SA_EEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA32_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJRA5_KcRmRA16_S2_RA1024_S2_RA39_S2_ES5_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSF_SG_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJRmRA16_KcRA1024_S3_RA39_S3_ERA5_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSF_SG_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJRA16_KcRA1024_S2_RA39_S2_ERmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSD_SE_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJRA1024_KcRA39_S2_ERA16_S2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSC_SD_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJRA39_KcERA1024_S2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA39_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJRA2_KcERA1024_S2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA2_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERKsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_ = comdat any

$_ZTIN6Assimp7Blender15BlenderModifierE = comdat any

$_ZTSN6Assimp7Blender15BlenderModifierE = comdat any

@.str = private unnamed_addr constant [44 x i8] c"BlendModifier: could not resolve DNA name: \00", align 1, !guid !3
@.str.2 = private unnamed_addr constant [56 x i8] c"BlendModifier: expected a `modifier` member at offset 0\00", align 1, !guid !4
@.str.4 = private unnamed_addr constant [65 x i8] c"BlendModifier: expected a ModifierData structure as first member\00", align 1, !guid !5
@.str.5 = private unnamed_addr constant [39 x i8] c"Couldn't find a handler for modifier: \00", align 1, !guid !6
@.str.6 = private unnamed_addr constant [35 x i8] c"BlendModifier: found handlers for \00", align 1, !guid !7
@.str.7 = private unnamed_addr constant [5 x i8] c" of \00", align 1, !guid !8
@.str.8 = private unnamed_addr constant [16 x i8] c" modifiers on `\00", align 1, !guid !9
@.str.9 = private unnamed_addr constant [39 x i8] c"`, check log messages above for errors\00", align 1, !guid !10
@.str.10 = private unnamed_addr constant [50 x i8] c"BlendModifier: Applied the `Mirror` modifier to `\00", align 1, !guid !11
@.str.11 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !guid !12
@.str.12 = private unnamed_addr constant [101 x i8] c"BlendModifier: The `SIMPLE` subdivision algorithm is not currently implemented, using Catmull-Clarke\00", align 1, !guid !13
@.str.13 = private unnamed_addr constant [52 x i8] c"BlendModifier: Unrecognized subdivision algorithm: \00", align 1, !guid !14
@.str.14 = private unnamed_addr constant [24 x i8] c"Invalid index detected.\00", align 1, !guid !15
@.str.15 = private unnamed_addr constant [55 x i8] c"BlendModifier: Applied the `Subdivision` modifier to `\00", align 1, !guid !16
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN6Assimp7Blender22BlenderModifier_MirrorE = hidden unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6Assimp7Blender22BlenderModifier_MirrorE, ptr @_ZN6Assimp7Blender15BlenderModifierD2Ev, ptr @_ZN6Assimp7Blender22BlenderModifier_MirrorD0Ev, ptr @_ZN6Assimp7Blender22BlenderModifier_Mirror8IsActiveERKNS0_12ModifierDataE, ptr @_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS0_14ConversionDataERKNS0_8ElemBaseERKNS0_5SceneERKNS0_6ObjectE] }, align 8, !guid !17
@_ZTIN6Assimp7Blender22BlenderModifier_MirrorE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp7Blender22BlenderModifier_MirrorE, ptr @_ZTIN6Assimp7Blender15BlenderModifierE }, align 8, !guid !18
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp7Blender22BlenderModifier_MirrorE = hidden constant [42 x i8] c"N6Assimp7Blender22BlenderModifier_MirrorE\00", align 1, !guid !19
@_ZTIN6Assimp7Blender15BlenderModifierE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6Assimp7Blender15BlenderModifierE }, comdat, align 8, !guid !20
@_ZTSN6Assimp7Blender15BlenderModifierE = linkonce_odr hidden constant [35 x i8] c"N6Assimp7Blender15BlenderModifierE\00", comdat, align 1, !guid !21
@_ZTVN6Assimp7Blender27BlenderModifier_SubdivisionE = hidden unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6Assimp7Blender27BlenderModifier_SubdivisionE, ptr @_ZN6Assimp7Blender15BlenderModifierD2Ev, ptr @_ZN6Assimp7Blender27BlenderModifier_SubdivisionD0Ev, ptr @_ZN6Assimp7Blender27BlenderModifier_Subdivision8IsActiveERKNS0_12ModifierDataE, ptr @_ZN6Assimp7Blender27BlenderModifier_Subdivision4DoItER6aiNodeRNS0_14ConversionDataERKNS0_8ElemBaseERKNS0_5SceneERKNS0_6ObjectE] }, align 8, !guid !22
@_ZTIN6Assimp7Blender27BlenderModifier_SubdivisionE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp7Blender27BlenderModifier_SubdivisionE, ptr @_ZTIN6Assimp7Blender15BlenderModifierE }, align 8, !guid !23
@_ZTSN6Assimp7Blender27BlenderModifier_SubdivisionE = hidden constant [47 x i8] c"N6Assimp7Blender27BlenderModifier_SubdivisionE\00", align 1, !guid !24
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1, !guid !25
@.str.20 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1, !guid !26
@.str.21 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1, !guid !27

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7Blender23BlenderModifierShowcase14ApplyModifiersER6aiNodeRNS0_14ConversionDataERKNS0_5SceneERKNS0_6ObjectE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(1144) %1, ptr noundef nonnull align 8 dereferenceable(336) %2, ptr noundef nonnull align 8 dereferenceable(1176) %3, ptr noundef nonnull align 8 dereferenceable(1384) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !33 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1352
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not146 = icmp eq ptr %i.e, null
  br i1 %.not146, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.af
  %i.n = phi i64 [ 0, %.lr.ph ], [ %i.gy, %bb.af ]
  %i.o = phi i64 [ 0, %.lr.ph ], [ %i.gv, %bb.af ] ; 5 uses
  %.0147 = phi ptr [ %i.e, %.lr.ph ], [ %i.gx, %bb.af ] ; 5 uses
  %i.p = load ptr, ptr %i.f, align 8, !nonnull !34, !align !35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.q = getelementptr inbounds nuw i8, ptr %.0147, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  store ptr %i.g, ptr %5, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #17
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.t, ptr %i.a, align 8
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %5, align 8
  %i.w = load i64, ptr %i.a, align 8
  store i64 %i.w, ptr %i.g, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.x = phi ptr [ %i.v, %.noexc.i ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.t, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.y = load i8, ptr %i.r, align 1
  store i8 %i.y, ptr %i.x, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.z = load i64, ptr %i.a, align 8              ; 2 uses
  store i64 %i.z, ptr %i.h, align 8
  %i.aa = load ptr, ptr %5, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 0, ptr %i.ab, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ad, null
  %.pre = load ptr, ptr %5, align 8               ; 4 uses
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.af = load i64, ptr %i.h, align 8             ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.ah) ; 2 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call i32 @memcmp(ptr noundef %i.ak, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.g
  %i.am = sub i64 %i.ah, %i.af
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.am, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.al, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.an = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.an, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.an, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.g, !llvm.loop !31

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.ao = icmp eq ptr %.19.i.i.i.i, %i.ae
  br i1 %i.ao, label %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.af) ; 2 uses
  %i.ar = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ar, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.at, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.h
  %i.av = sub i64 %i.af, %i.aq
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.av, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.au, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aw = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %i.ax, align 8
  %i.bb = getelementptr inbounds nuw [120 x i8], ptr %i.ba, i64 %i.az
  br label %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.f
  %i.bc = phi ptr [ %i.bb, %bb.i ], [ null, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i ], [ null, %bb.f ], [ null, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ] ; 4 uses
  %i.bd = icmp eq ptr %.pre, %i.g
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.be = load i64, ptr %i.g, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.not46 = icmp eq ptr %i.bc, null
  br i1 %.not46, label %bb.j, label %._crit_edge.i.i59

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA44_KcRKPS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bg, ptr noundef nonnull align 1 dereferenceable(44) @.str, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  br label %bb.af

._crit_edge.i.i59:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %i.i, ptr %6, align 8
  store i64 8243110581547331437, ptr %i.i, align 8
  store i64 8, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 64 ; 2 uses
  %.not10.i.i.i.i63 = icmp eq ptr %i.bi, null
  br i1 %.not10.i.i.i.i63, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %._crit_edge.i.i59, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i70
  %.012.i.i.i.i65 = phi ptr [ %.1.i.i.i.i75, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i70 ], [ %i.bi, %._crit_edge.i.i59 ] ; 4 uses
  %.0811.i.i.i.i66 = phi ptr [ %.19.i.i.i.i72, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i70 ], [ %i.bj, %._crit_edge.i.i59 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i65, i64 40
  %i.bl = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i87, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i68

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i68: ; preds = %.lr.ph.i.i.i.i64
  %.sroa.speculated.i.i.i.i.i.i.i67 = call i64 @llvm.umin.i64(i64 %i.bl, i64 8)
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i65, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call i32 @memcmp(ptr noundef %i.bo, ptr noundef nonnull %i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i67) #16 ; 2 uses
  %.not.i.i.i.i.i.i.i69 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i.i69, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i87, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i70

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i87: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i68, %.lr.ph.i.i.i.i64
  %i.bq = add i64 %i.bl, -8
  %spec.select7.i.i.i.i.i.i.i.i88 = call i64 @llvm.smax.i64(i64 %i.bq, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i89 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i88, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i90 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i89 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i70

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i70: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i87, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i68
  %.0.i.i.i.i.i.i.i71 = phi i32 [ %i.bp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i68 ], [ %.0.i6.i.i.i.i.i.i.i90, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i87 ]
  %i.br = icmp slt i32 %.0.i.i.i.i.i.i.i71, 0     ; 2 uses
  %.19.i.i.i.i72 = select i1 %i.br, ptr %.0811.i.i.i.i66, ptr %.012.i.i.i.i65 ; 5 uses
  %.1.in.v.i.i.i.i73 = select i1 %i.br, i64 24, i64 16
  %.1.in.i.i.i.i74 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i65, i64 %.1.in.v.i.i.i.i73
  %.1.i.i.i.i75 = load ptr, ptr %.1.in.i.i.i.i74, align 8 ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %.1.i.i.i.i75, null
  br i1 %.not.i.i.i.i76, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i77, label %.lr.ph.i.i.i.i64, !llvm.loop !31

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i77: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i70
  %i.bs = icmp eq ptr %.19.i.i.i.i72, %i.bj
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i77
  %i.bt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i72, i64 40
  %i.bu = load i64, ptr %i.bt, align 8            ; 3 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i83, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i79

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i79: ; preds = %bb.k
  %.sroa.speculated.i.i.i.i.i.i78 = call i64 @llvm.umin.i64(i64 %i.bu, i64 8)
  %i.bw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i72, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call i32 @memcmp(ptr noundef nonnull %i.i, ptr noundef %i.bx, i64 noundef %.sroa.speculated.i.i.i.i.i.i78) #16 ; 2 uses
  %.not.i.i.i.i.i.i80 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i.i.i.i80, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i83, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i81

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i83: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i79, %bb.k
  %i.bz = sub i64 8, %i.bu
  %spec.select7.i.i.i.i.i.i.i84 = call i64 @llvm.smax.i64(i64 %i.bz, i64 -2147483648)
  %.08.i.i.i.i.i.i.i85 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i84, i64 2147483647)
  %.0.i6.i.i.i.i.i.i86 = trunc nsw i64 %.08.i.i.i.i.i.i.i85 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i81

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i81: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i83, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i79
  %.0.i.i.i.i.i.i82 = phi i32 [ %i.by, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i79 ], [ %.0.i6.i.i.i.i.i.i86, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i83 ]
  %i.ca = icmp slt i32 %.0.i.i.i.i.i.i82, 0
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i81, %._crit_edge.i.i59, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i81
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i72, i64 64
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw [104 x i8], ptr %i.ce, i64 %i.cd ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.not50 = icmp eq ptr %i.ce, null
  br i1 %.not50, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = load i64, ptr %i.cg, align 8
  %.not51 = icmp eq i64 %i.ch, 0
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.ci = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ci, ptr noundef nonnull @.str.2)
  br label %bb.af

bb.n:                                             ; preds = %bb.l
  %i.cj = load ptr, ptr %i.f, align 8, !nonnull !34, !align !35 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 88 ; 2 uses
  %.not10.i.i.i.i97 = icmp eq ptr %i.cl, null
  br i1 %.not10.i.i.i.i97, label %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit125.thread, label %.lr.ph.i.i.i.i98

.lr.ph.i.i.i.i98:                                 ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.cp = load i64, ptr %i.co, align 8            ; 4 uses
  %i.cq = load ptr, ptr %i.cn, align 8            ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i104, %.lr.ph.i.i.i.i98
  %.012.i.i.i.i99 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i98 ], [ %.1.i.i.i.i109, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i104 ] ; 4 uses
  %.0811.i.i.i.i100 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i98 ], [ %.19.i.i.i.i106, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i104 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i99, i64 40
  %i.cs = load i64, ptr %i.cr, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i101 = call i64 @llvm.umin.i64(i64 %i.cp, i64 %i.cs) ; 2 uses
  %i.ct = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i101, 0
  br i1 %i.ct, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i121, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i102

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i102: ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i99, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call i32 @memcmp(ptr noundef %i.cv, ptr noundef %i.cq, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i101) #16 ; 2 uses
  %.not.i.i.i.i.i.i.i103 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i.i.i.i.i103, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i121, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i104

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i121: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i102, %bb.o
  %i.cx = sub i64 %i.cs, %i.cp
  %spec.select7.i.i.i.i.i.i.i.i122 = call i64 @llvm.smax.i64(i64 %i.cx, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i123 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i122, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i124 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i123 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i104

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i104: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i121, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i102
  %.0.i.i.i.i.i.i.i105 = phi i32 [ %i.cw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i102 ], [ %.0.i6.i.i.i.i.i.i.i124, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i121 ]
  %i.cy = icmp slt i32 %.0.i.i.i.i.i.i.i105, 0    ; 2 uses
  %.19.i.i.i.i106 = select i1 %i.cy, ptr %.0811.i.i.i.i100, ptr %.012.i.i.i.i99 ; 5 uses
  %.1.in.v.i.i.i.i107 = select i1 %i.cy, i64 24, i64 16
  %.1.in.i.i.i.i108 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i99, i64 %.1.in.v.i.i.i.i107
  %.1.i.i.i.i109 = load ptr, ptr %.1.in.i.i.i.i108, align 8 ; 2 uses
  %.not.i.i.i.i110 = icmp eq ptr %.1.i.i.i.i109, null
  br i1 %.not.i.i.i.i110, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i111, label %bb.o, !llvm.loop !31

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i111: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i104
  %i.cz = icmp eq ptr %.19.i.i.i.i106, %i.cm
  br i1 %i.cz, label %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit125.thread, label %bb.p

bb.p:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i111
  %i.da = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i106, i64 40
  %i.db = load i64, ptr %i.da, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i112 = call i64 @llvm.umin.i64(i64 %i.db, i64 %i.cp) ; 2 uses
  %i.dc = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i112, 0
  br i1 %i.dc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i117, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i113

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i113: ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i106, i64 32
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call i32 @memcmp(ptr noundef %i.cq, ptr noundef %i.de, i64 noundef %.sroa.speculated.i.i.i.i.i.i112) #16 ; 2 uses
  %.not.i.i.i.i.i.i114 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i.i.i114, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i117, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i115

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i117: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i113, %bb.p
  %i.dg = sub i64 %i.cp, %i.db
  %spec.select7.i.i.i.i.i.i.i118 = call i64 @llvm.smax.i64(i64 %i.dg, i64 -2147483648)
  %.08.i.i.i.i.i.i.i119 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i118, i64 2147483647)
  %.0.i6.i.i.i.i.i.i120 = trunc nsw i64 %.08.i.i.i.i.i.i.i119 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i115

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i115: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i117, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i113
  %.0.i.i.i.i.i.i116 = phi i32 [ %i.df, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i113 ], [ %.0.i6.i.i.i.i.i.i120, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i117 ]
  %i.dh = icmp slt i32 %.0.i.i.i.i.i.i116, 0
  br i1 %i.dh, label %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit125.thread, label %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit125

_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit125: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i115
  %i.di = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i106, i64 64
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.dm = getelementptr inbounds nuw [120 x i8], ptr %i.dl, i64 %i.dk ; 2 uses
  %.not52 = icmp eq ptr %i.dl, null
  br i1 %.not52, label %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit125.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit125
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = icmp eq i64 %i.do, 12
  br i1 %i.dp, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit125.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.q
  %i.dq = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 1
  %i.ds = xor i64 %i.dr, 8243110581547331405
  %i.dt = getelementptr i8, ptr %i.dq, i64 8
  %i.du = load i32, ptr %i.dt, align 1
  %i.dv = zext i32 %i.du to i64
  %i.dw = xor i64 %i.dv, 1635017028
  %i.dx = or i64 %i.ds, %i.dw
  %i.dy = icmp ne i64 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %.not142 = icmp eq i32 %i.dz, 0
  br i1 %.not142, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread135, label %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit125.thread

_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit125.thread: ; preds = %bb.q, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i111, %bb.n, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.i115, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit125
  %i.ea = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ea, ptr noundef nonnull @.str.4)
  br label %bb.af

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread135: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %.0147, i64 16 ; 2 uses
  %i.ec = load ptr, ptr %0, align 8               ; 2 uses
  %i.ed = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %bb.r, label %bb.x

bb.r:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread135
  %i.ef = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #19 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Assimp7Blender22BlenderModifier_MirrorE, i64 16), ptr %i.ef, align 8
  %i.eg = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.eh = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.ef, ptr %i.eg, align 8
  %i.ei = load ptr, ptr %i.k, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  store ptr %i.ej, ptr %i.k, align 8
  br label %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE9push_backEOS3_.exit

bb.t:                                             ; preds = %bb.r
  %i.ek = load ptr, ptr %0, align 8               ; 4 uses
  %i.el = ptrtoint ptr %i.eg to i64
  %i.em = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.en = sub i64 %i.el, %i.em                    ; 5 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775800
  br i1 %i.eo, label %bb.u, label %_ZNKSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.ab, %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #17
  unreachable

_ZNKSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.ep = ashr exact i64 %i.en, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ep, i64 1)
  %i.eq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ep ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  %i.es = call i64 @llvm.umin.i64(i64 %i.eq, i64 1152921504606846975)
  %i.et = select i1 %i.er, i64 1152921504606846975, i64 %i.es ; 3 uses
  %.not.i.i.i.i126 = icmp ne i64 %i.et, 0
  call void @llvm.assume(i1 %.not.i.i.i.i126)
  %i.eu = shl nuw nsw i64 %i.et, 3
  %i.ev = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #19 ; 4 uses
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %i.en ; 2 uses
  store ptr %i.ef, ptr %i.ew, align 8
  %i.ex = icmp sgt i64 %i.en, 0
  br i1 %i.ex, label %bb.v, label %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.v:                                             ; preds = %_ZNKSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ev, ptr align 8 %i.ek, i64 %i.en, i1 false)
  br label %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.v, %_ZNKSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.ez = load ptr, ptr %i.l, align 8
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = sub i64 %i.fa, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.fb) #18
  br label %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ev, ptr %0, align 8
  store ptr %i.ey, ptr %i.k, align 8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.et
  store ptr %i.fc, ptr %i.l, align 8
  br label %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.s, %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.fd = phi ptr [ %i.ej, %bb.s ], [ %i.ey, %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -8
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE9push_backEOS3_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread135
  %.sroa.0129.1 = phi ptr [ %i.fe, %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE9push_backEOS3_.exit ], [ %i.ec, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread135 ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.fd, %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE9push_backEOS3_.exit ], [ %i.ed, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread135 ]
  %i.ff = load ptr, ptr %.sroa.0129.1, align 8    ; 3 uses
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call noundef zeroext i1 %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr noundef nonnull align 8 dereferenceable(88) %i.eb)
  br i1 %i.fj, label %.thread139, label %bb.y

.thread139:                                       ; preds = %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE9push_backEOS3_.exit.1, %bb.x
  %.lcssa = phi ptr [ %i.ff, %bb.x ], [ %i.go, %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE9push_backEOS3_.exit.1 ] ; 2 uses
  %i.fk = load ptr, ptr %.lcssa, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %.lcssa, ptr noundef nonnull align 8 dereferenceable(1144) %1, ptr noundef nonnull align 8 dereferenceable(336) %2, ptr noundef nonnull align 8 dereferenceable(16) %.0147, ptr noundef nonnull align 8 dereferenceable(1176) %3, ptr noundef nonnull align 8 dereferenceable(1384) %4)
  %i.fn = add i64 %i.o, 1                         ; 2 uses
  store i64 %i.fn, ptr %i.b, align 8
  br label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0129.1, i64 8 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %.sroa.0.1
  br i1 %i.fp, label %bb.z, label %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE9push_backEOS3_.exit.1

bb.z:                                             ; preds = %bb.y
  %i.fq = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #19 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Assimp7Blender27BlenderModifier_SubdivisionE, i64 16), ptr %i.fq, align 8
  %i.fr = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.fs = load ptr, ptr %i.l, align 8
  %.not.i.i.1 = icmp eq ptr %i.fr, %i.fs
  br i1 %.not.i.i.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.fq, ptr %i.fr, align 8
  %i.ft = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.fu, ptr %i.k, align 8
  br label %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE9push_backEOS3_.exit.1

bb.ab:                                            ; preds = %bb.z
  %i.fv = load ptr, ptr %0, align 8               ; 4 uses
  %i.fw = ptrtoint ptr %i.fr to i64
  %i.fx = ptrtoint ptr %i.fv to i64               ; 2 uses
  %i.fy = sub i64 %i.fw, %i.fx                    ; 5 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775800
  br i1 %i.fz, label %bb.u, label %_ZNKSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.1

_ZNKSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.1: ; preds = %bb.ab
  %i.ga = ashr exact i64 %i.fy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i.i.i.1, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 1152921504606846975)
  %i.ge = select i1 %i.gc, i64 1152921504606846975, i64 %i.gd ; 3 uses
  %.not.i.i.i.i126.1 = icmp ne i64 %i.ge, 0
  call void @llvm.assume(i1 %.not.i.i.i.i126.1)
  %i.gf = shl nuw nsw i64 %i.ge, 3
  %i.gg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #19 ; 4 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.fy ; 3 uses
  store ptr %i.fq, ptr %i.gh, align 8
  %i.gi = icmp sgt i64 %i.fy, 0
  br i1 %i.gi, label %bb.ac, label %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.1

bb.ac:                                            ; preds = %_ZNKSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gg, ptr align 8 %i.fv, i64 %i.fy, i1 false)
  br label %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.1

_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.1: ; preds = %bb.ac, %_ZNKSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.not.i17.i.i.i.1 = icmp eq ptr %i.fv, null
  br i1 %.not.i17.i.i.i.1, label %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.1, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.1
  %i.gk = load ptr, ptr %i.l, align 8
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = sub i64 %i.gl, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.gm) #18
  br label %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.1

_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.1: ; preds = %bb.ad, %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.1
  store ptr %i.gg, ptr %0, align 8
  store ptr %i.gj, ptr %i.k, align 8
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.ge
  store ptr %i.gn, ptr %i.l, align 8
  br label %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE9push_backEOS3_.exit.1

_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE9push_backEOS3_.exit.1: ; preds = %bb.aa, %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.1, %bb.y
  %.sroa.0129.1.1 = phi ptr [ %i.fo, %bb.y ], [ %i.gh, %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.1 ], [ %i.ft, %bb.aa ]
  %i.go = load ptr, ptr %.sroa.0129.1.1, align 8  ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = call noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull align 8 dereferenceable(88) %i.eb)
  br i1 %i.gs, label %.thread139, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIPN6Assimp7Blender15BlenderModifierESaIS3_EE9push_backEOS3_.exit.1
  %i.gt = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  %i.gu = getelementptr inbounds nuw i8, ptr %.0147, i64 72
  call void @_ZN6Assimp6Logger4warnIJRA39_KcRA32_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.gt, ptr noundef nonnull align 1 dereferenceable(39) @.str.5, ptr noundef nonnull align 1 dereferenceable(32) %i.gu)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread139, %bb.m, %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit125.thread, %bb.j
  %i.gv = phi i64 [ %i.o, %bb.ae ], [ %i.fn, %.thread139 ], [ %i.o, %bb.m ], [ %i.o, %_ZNK6Assimp7Blender3DNA3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit125.thread ], [ %i.o, %bb.j ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.0147, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8            ; 2 uses
  %i.gy = add i64 %i.n, 1                         ; 3 uses
  store i64 %i.gy, ptr %i.c, align 8
  %.not = icmp eq ptr %i.gx, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.af
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %._crit_edge.thread, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge
  %i.ha = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @_ZN6Assimp6Logger5debugIJRA35_KcRmRA5_S2_S5_RA16_S2_RA1024_S2_RA39_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ha, ptr noundef nonnull align 1 dereferenceable(35) @.str.6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(16) @.str.8, ptr noundef nonnull align 1 dereferenceable(1024) %i.hb, ptr noundef nonnull align 1 dereferenceable(39) @.str.9)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.ag, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA44_KcRKPS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(44) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !36 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(44) %1) #16
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(44) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA44_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #16
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA44_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERKPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS9_SA_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA44_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA44_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %common.resume
}

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA39_KcRA32_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(39) %1, ptr noundef nonnull align 1 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !37 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(39) %1) #16
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(39) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA39_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #16
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA39_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA32_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA39_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
end_hunk_0
