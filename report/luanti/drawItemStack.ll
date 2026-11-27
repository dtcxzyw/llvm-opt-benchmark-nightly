Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/drawItemStack?download=true
inline.NumInlined: 672
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%struct.MeshTimeInfo = type { i64, ptr }
%"struct.std::_Rb_tree<float, std::pair<const float, video::SColor>, std::_Select1st<std::pair<const float, video::SColor>>, std::less<float>>::_Alloc_node" = type { ptr }
%struct.timespec = type { i64, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.core::rect" = type { %"class.core::vector2d", %"class.core::vector2d" }
%"class.core::vector2d" = type { i32, i32 }
%"class.core::CMatrix4" = type { [16 x float] }
%"class.video::SColor" = type { i32 }
%"class.std::optional.15" = type { %"struct.std::_Optional_base.16" }
%"struct.std::_Optional_base.16" = type { %"struct.std::_Optional_payload.18" }
%"struct.std::_Optional_payload.18" = type { %"struct.std::_Optional_payload.base.28", [7 x i8] }
%"struct.std::_Optional_payload.base.28" = type { %"struct.std::_Optional_payload_base.base.27" }
%"struct.std::_Optional_payload_base.base.27" = type { %"union.std::_Optional_payload_base<WearBarParams>::_Storage", i8 }
%"union.std::_Optional_payload_base<WearBarParams>::_Storage" = type { %struct.WearBarParams }
%struct.WearBarParams = type <{ %"class.std::map.21", i8, [7 x i8] }>
%"class.std::map.21" = type { %"class.std::_Rb_tree.22" }
%"class.std::_Rb_tree.22" = type { %"struct.std::_Rb_tree<float, std::pair<const float, video::SColor>, std::_Select1st<std::pair<const float, video::SColor>>, std::less<float>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<float, std::pair<const float, video::SColor>, std::_Select1st<std::pair<const float, video::SColor>>, std::less<float>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string.328" = type { %"struct.std::__cxx11::basic_string<wchar_t>::_Alloc_hider", i64, %union.anon.332 }
%"struct.std::__cxx11::basic_string<wchar_t>::_Alloc_hider" = type { ptr }
%union.anon.332 = type { i64, [8 x i8] }
%"class.core::string.333" = type { %"class.std::__cxx11::basic_string.328" }
%"class.core::vector3d" = type { i16, i16, i16 }

$_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev = comdat any

$_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE = comdat any

$_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_Z17unescape_enrichedIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEESt17basic_string_viewIS2_S4_E = comdat any

$_ZN4core6stringIwEaSIwEERS1_PKT_ = comdat any

@_ZZ13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKindRKNS8_8vector3dIsEESK_E19rotation_time_infos = internal unnamed_addr global [4 x %struct.MeshTimeInfo] zeroinitializer, align 16
@_ZGVZ13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKindRKNS8_8vector3dIsEESK_E19rotation_time_infos = internal global i64 0, align 8
@g_settings = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"inventory_items_animations\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"no_texture.png\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"count_meta\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"count_alignment\00", align 1
@_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE = linkonce_odr dso_local global { { { ptr } } } zeroinitializer, comdat, align 8
@_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE = linkonce_odr dso_local local_unnamed_addr global i64 0, comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE), align 8
@__dso_handle = external hidden global i8
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKindRKNS8_8vector3dIsEESK_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %7, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"struct.std::_Rb_tree<float, std::pair<const float, video::SColor>, std::_Select1st<std::pair<const float, video::SColor>>, std::less<float>>::_Alloc_node", align 8 ; 4 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.core::rect", align 8       ; 14 uses
  %14 = alloca %"class.core::rect", align 4       ; 4 uses
  %15 = alloca %"class.core::CMatrix4", align 4   ; 4 uses
  %16 = alloca %"class.core::CMatrix4", align 4   ; 4 uses
  %17 = alloca %"class.core::CMatrix4", align 4   ; 9 uses
  %18 = alloca %"class.core::CMatrix4", align 4   ; 10 uses
  %19 = alloca %"class.core::CMatrix4", align 4   ; 13 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca [4 x %"class.video::SColor"], align 16 ; 4 uses
  %22 = alloca %"class.core::rect", align 8       ; 5 uses
  %23 = alloca %"class.core::rect", align 4       ; 6 uses
  %24 = alloca %"class.std::optional.15", align 8 ; 16 uses
  %25 = alloca %"class.core::rect", align 4       ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %28 = alloca %"class.std::__cxx11::basic_string.328", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.core::rect", align 8       ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.core::string.333", align 8 ; 11 uses
  %33 = alloca %"class.std::__cxx11::basic_string.328", align 8 ; 9 uses
  %i.c = load atomic i8, ptr @_ZGVZ13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKindRKNS8_8vector3dIsEESK_E19rotation_time_infos acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKindRKNS8_8vector3dIsEESK_E19rotation_time_infos) #19
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKindRKNS8_8vector3dIsEESK_E19rotation_time_infos, i64 8), align 8, !tbaa !57
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKindRKNS8_8vector3dIsEESK_E19rotation_time_infos, i64 24), align 8, !tbaa !57
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKindRKNS8_8vector3dIsEESK_E19rotation_time_infos, i64 40), align 8, !tbaa !57
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKindRKNS8_8vector3dIsEESK_E19rotation_time_infos, i64 56), align 8, !tbaa !57
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKindRKNS8_8vector3dIsEESK_E19rotation_time_infos) #19
  br label %bb.c

bb.c:                                             ; preds = %.preheader.preheader, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !78
  %i.h = icmp eq i16 %i.g, 0
  br i1 %i.h, label %bb.d, label %.noexc.i

bb.d:                                             ; preds = %bb.c
  %or.cond = icmp slt i32 %6, 3
  br i1 %or.cond, label %bb.e, label %bb.cz

bb.e:                                             ; preds = %bb.d
  %i.i = zext i32 %6 to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @_ZZ13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKindRKNS8_8vector3dIsEESK_E19rotation_time_infos, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !57
  br label %bb.cz

.noexc.i:                                         ; preds = %bb.c
  %i.l = load ptr, ptr @g_settings, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.m, ptr %12, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 26, ptr %i.b, align 8, !tbaa !81
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.f unwind label %bb.x       ; 2 uses

bb.f:                                             ; preds = %.noexc.i
  store ptr %i.n, ptr %12, align 8, !tbaa !18
  %i.o = load i64, ptr %i.b, align 8, !tbaa !81   ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.n, ptr noundef nonnull align 1 dereferenceable(26) @.str, i64 26, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !20
  %i.q = load ptr, ptr %12, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.s = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.g unwind label %bb.y       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %12, align 8, !tbaa !18    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.m
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.v = load i64, ptr %i.m, align 8, !tbaa !19
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.x), !inline_history !44
  %i.ab = call noundef nonnull align 8 dereferenceable(982) ptr @_ZNK9ItemStack13getDefinitionEPK15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef %i.aa) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !263 ; 5 uses
  %i.ae = call noundef ptr @_ZNK18ItemVisualsManager19getInventoryTextureERK9ItemStackP6Client(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull %5) ; 2 uses
  %i.af = call noundef ptr @_ZNK18ItemVisualsManager26getInventoryOverlayTextureERK9ItemStackP6Client(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull %5) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !265
  %.not253 = icmp eq ptr %4, null
  br i1 %.not253, label %_ZN4core4rectIiE11clipAgainstERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !268 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !268 ; 2 uses
  %i.ak = icmp slt i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !268
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = phi i32 [ %i.ah, %bb.i ], [ %i.aj, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !269 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !269 ; 2 uses
  %i.aq = icmp slt i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !269
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = phi i32 [ %i.an, %bb.k ], [ %i.ap, %bb.j ]
  %i.as = load i32, ptr %4, align 4, !tbaa !270   ; 4 uses
  %i.at = icmp sgt i32 %i.as, %i.al
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.as, ptr %i.ai, align 8, !tbaa !268
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !271 ; 4 uses
  %i.aw = icmp sgt i32 %i.av, %i.ar
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.av, ptr %i.ao, align 4, !tbaa !269
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ax = load i32, ptr %13, align 8, !tbaa !270  ; 2 uses
  %i.ay = icmp slt i32 %i.ah, %i.ax
  br i1 %i.ay, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.ah, ptr %13, align 8, !tbaa !270
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.az = phi i32 [ %i.ah, %bb.q ], [ %i.ax, %bb.p ]
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !271 ; 2 uses
  %i.bc = icmp slt i32 %i.an, %i.bb
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.an, ptr %i.ba, align 4, !tbaa !271
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bd = phi i32 [ %i.an, %bb.s ], [ %i.bb, %bb.r ]
  %i.be = icmp sgt i32 %i.as, %i.az
  br i1 %i.be, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.as, ptr %13, align 8, !tbaa !270
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bf = icmp sgt i32 %i.av, %i.bd
  br i1 %i.bf, label %bb.w, label %_ZN4core4rectIiE11clipAgainstERKS1_.exit

bb.w:                                             ; preds = %bb.v
  store i32 %i.av, ptr %i.ba, align 4, !tbaa !271
  br label %_ZN4core4rectIiE11clipAgainstERKS1_.exit

bb.x:                                             ; preds = %.noexc.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

bb.y:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.m
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281: ; preds = %bb.y
  %i.bk = load i64, ptr %i.m, align 8, !tbaa !19
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.x ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281 ], [ %i.bh, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
end_hunk_0
begin_hunk_1_@_Z13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKindRKNS8_8vector3dIsEESK_:bb.a
  %i.fa = call nsz float @llvm.fmuladd.f32(float %i.ez, float %i.es, float %i.ev)
  %i.fb = fmul nsz float %i.fa, f0x3C8EFA35
  %i.fc = load <2 x i16>, ptr %7, align 2, !tbaa !285
  %i.fd = sitofp <2 x i16> %i.fc to <2 x float>
  %i.fe = load <2 x i16>, ptr %8, align 2, !tbaa !285
  %i.ff = sitofp <2 x i16> %i.fe to <2 x float>
  %i.fg = fmul nnan nsz <2 x float> %i.ff, splat (float 3.600000e+00)
  %i.fh = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.fi, <2 x float> %i.fd)
  %i.fk = fmul nsz <2 x float> %i.fj, splat (float f0x3C8EFA35)
  %i.fl = fpext nsz <2 x float> %i.fk to <2 x double>
  %i.fm = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.fl) ; 2 uses
  %i.fn = extractvalue { <2 x double>, <2 x double> } %i.fm, 0 ; 5 uses
  %i.fo = extractvalue { <2 x double>, <2 x double> } %i.fm, 1 ; 5 uses
  %i.fp = extractelement <2 x double> %i.fo, i64 1 ; 2 uses
  %i.fq = fpext nsz float %i.fb to double
  %sincos39.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.fq) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 5 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 5 uses
  %i.fr = fmul nsz double %i.fp, %cos41.i.i
  %i.fs = fptrunc nsz double %i.fr to float
  store float %i.fs, ptr %19, align 4, !tbaa !284
  %i.ft = fmul nsz double %i.fp, %sin40.i.i
  %i.fu = fptrunc nsz double %i.ft to float
  store float %i.fu, ptr %i.eo, align 4, !tbaa !284
  %i.fv = extractelement <2 x double> %i.fn, i64 1
  %i.fw = fptrunc nsz double %i.fv to float
  %i.fx = fneg nsz float %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %19, i64 8
  store float %i.fx, ptr %i.fy, align 4, !tbaa !284
  %i.fz = shufflevector <2 x double> %i.fn, <2 x double> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.ga = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gb = fmul nsz <2 x double> %i.fz, %i.ga      ; 2 uses
  %i.gc = fneg nsz double %sin40.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ge = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %cos41.i.i, i64 1
  %i.gh = fmul nsz <2 x double> %i.ge, %i.gg
  %i.gi = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %sin40.i.i, i64 1
  %i.gl = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.gk, <2 x double> %i.gh)
  %i.gm = fptrunc nsz <2 x double> %i.gl to <2 x float>
  store <2 x float> %i.gm, ptr %i.gd, align 4, !tbaa !284
  %i.gn = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.gp = fneg nsz double %cos41.i.i
  %i.gq = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = insertelement <2 x double> poison, double %sin40.i.i, i64 0
  %i.gs = insertelement <2 x double> %i.gr, double %i.gp, i64 1
  %i.gt = fmul nsz <2 x double> %i.gq, %i.gs
  %i.gu = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gv = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %sin40.i.i, i64 1
  %i.gx = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.gw, <2 x double> %i.gt)
  %i.gy = fptrunc nsz <2 x double> %i.gx to <2 x float>
  store <2 x float> %i.gy, ptr %i.go, align 4, !tbaa !284
  %i.gz = shufflevector <2 x double> %i.fo, <2 x double> %i.fn, <2 x i32> <i32 1, i32 2>
  %i.ha = fmul nsz <2 x double> %i.fo, %i.gz
  %i.hb = fptrunc nsz <2 x double> %i.ha to <2 x float> ; 2 uses
  %i.hc = extractelement <2 x float> %i.hb, i64 1
  store float %i.hc, ptr %i.gn, align 4, !tbaa !284
  %i.hd = extractelement <2 x float> %i.hb, i64 0
  store float %i.hd, ptr %i.eq, align 4, !tbaa !284
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.he = load ptr, ptr %0, align 8, !tbaa !22
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %19)
  %i.hh = load ptr, ptr %0, align 8, !tbaa !22
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 344
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %13)
  %i.hk = call i32 @_ZNK18ItemVisualsManager17getItemstackColorERK9ItemStackP6Client(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull %5)
  %i.hl = load ptr, ptr %i.bp, align 8, !tbaa !22
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = call noundef i32 %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !286
  %i.hr = load ptr, ptr %i.ho, align 8, !tbaa !287
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = sdiv exact i64 %i.hu, 24
  %i.hw = trunc i64 %i.hv to i32
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.hn, i32 %i.hw) ; 2 uses
  %.not432 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not432, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 712
  %wide.trip.count = zext i32 %.sroa.speculated to i64
  br label %bb.ai

._crit_edge:                                      ; preds = %bb.an, %bb.ah
  %i.hz = load ptr, ptr %0, align 8, !tbaa !22
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(64) %16)
  %i.ic = load ptr, ptr %0, align 8, !tbaa !22
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(64) %15)
  %i.if = load ptr, ptr %0, align 8, !tbaa !22
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 344
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %14)
  %i.ii = load i8, ptr %i.ab, align 8, !tbaa !310
  %i.ij = icmp eq i8 %i.ii, 1
  %spec.select = and i1 %i.bn, %i.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.ar

bb.ai:                                            ; preds = %.lr.ph, %bb.an
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.an ] ; 3 uses
  %i.ik = load ptr, ptr %i.bp, align 8, !tbaa !22
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = trunc nuw i64 %indvars.iv to i32
  %i.io = call noundef ptr %i.im(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef %i.in) ; 5 uses
  %i.ip = load ptr, ptr %i.ho, align 8, !tbaa !287
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %indvars.iv ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !319, !range !29, !noundef !30
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.aj, label %_ZNK18ItemMeshBufferInfo13applyOverrideERN5video6SColorE.exit

bb.aj:                                            ; preds = %bb.ai
  %i.iu = load i32, ptr %i.iq, align 8, !tbaa !264
  br label %_ZNK18ItemMeshBufferInfo13applyOverrideERN5video6SColorE.exit

_ZNK18ItemMeshBufferInfo13applyOverrideERN5video6SColorE.exit: ; preds = %bb.ai, %bb.aj
  %.sroa.0406.0 = phi i32 [ %i.iu, %bb.aj ], [ %i.hk, %bb.ai ] ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 9 ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !320, !range !29, !noundef !30
  %i.ix = trunc nuw i8 %i.iw to i1
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iq, i64 4 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = icmp eq i32 %i.iz, %.sroa.0406.0
  %or.cond.i = select i1 %i.ix, i1 %i.ja, i1 false
  br i1 %or.cond.i, label %_ZN18ItemMeshBufferInfo12needColorizeEN5video6SColorE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNK18ItemMeshBufferInfo13applyOverrideERN5video6SColorE.exit
  store i8 1, ptr %i.iv, align 1, !tbaa !320
  store i32 %.sroa.0406.0, ptr %i.iy, align 4, !tbaa !264
  %i.jb = load i8, ptr %i.hx, align 8, !tbaa !321, !range !29, !noundef !30
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.al

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.ak
  call void @_Z18colorizeMeshBufferPN5scene11IMeshBufferEN5video6SColorEfN4core8vector3dIfEE(ptr noundef %i.io, i32 %.sroa.0406.0, float noundef 5.000000e-01, <2 x float> <float -3.000000e-01, float -6.000000e-01>, float 2.000000e-01)
  br label %_ZN18ItemMeshBufferInfo12needColorizeEN5video6SColorE.exit

bb.al:                                            ; preds = %bb.ak
  call void @_Z18setMeshBufferColorPN5scene11IMeshBufferEN5video6SColorE(ptr noundef %i.io, i32 %.sroa.0406.0)
  br label %_ZN18ItemMeshBufferInfo12needColorizeEN5video6SColorE.exit

_ZN18ItemMeshBufferInfo12needColorizeEN5video6SColorE.exit: ; preds = %_ZNK18ItemMeshBufferInfo13applyOverrideERN5video6SColorE.exit, %_ZN4core8vector3dIfE9normalizeEv.exit, %bb.al
  %i.jd = load ptr, ptr %i.io, align 8, !tbaa !22
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = call noundef nonnull align 8 dereferenceable(127) ptr %i.je(ptr noundef nonnull align 8 dereferenceable(8) %i.io) ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !322 ; 2 uses
  %.not425 = icmp eq ptr %i.jh, null
  br i1 %.not425, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN18ItemMeshBufferInfo12needColorizeEN5video6SColorE.exit
  %i.ji = load float, ptr %i.hy, align 8, !tbaa !323
  call void @_ZN13AnimationInfo13updateTextureERN5video9SMaterialEf(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull align 8 dereferenceable(127) %i.jf, float noundef %i.ji)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN18ItemMeshBufferInfo12needColorizeEN5video6SColorE.exit
  %i.jj = load ptr, ptr %0, align 8, !tbaa !22
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 96
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(127) %i.jf)
  %i.jm = load ptr, ptr %0, align 8, !tbaa !22
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 448
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.io)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ai, !llvm.loop !45

.critedge:                                        ; preds = %bb.z, %bb.aa
  br i1 %i.bn, label %bb.ao, label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN4core4rectIiE11clipAgainstERKS1_.exit, %.critedge
  %i.jp = call i32 @_ZNK18ItemVisualsManager17getItemstackColorERK9ItemStackP6Client(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull %5)
  br label %.thread

bb.ao:                                            ; preds = %.critedge
  %i.jq = call noundef ptr @_ZN6Client16getTextureSourceEv(ptr noundef nonnull align 8 dereferenceable(1674) %5) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.jr = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.jr, ptr %20, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.jr, ptr noundef nonnull align 1 dereferenceable(14) @.str.1, i64 14, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 14, ptr %i.js, align 8, !tbaa !20
  %i.jt = getelementptr inbounds nuw i8, ptr %20, i64 30
  store i8 0, ptr %i.jt, align 2, !tbaa !19
  %i.ju = load ptr, ptr %i.jq, align 8, !tbaa !22
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = invoke noundef ptr %i.jw(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef null)
          to label %bb.ap unwind label %bb.aq     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.jy = load ptr, ptr %20, align 8, !tbaa !18   ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.jr
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %bb.ap
  %i.ka = load i64, ptr %i.jr, align 8, !tbaa !19
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %.not258.not = icmp eq ptr %i.jx, null
  br i1 %.not258.not, label %bb.cy, label %.thread

bb.aq:                                            ; preds = %bb.ao
  %i.kc = landingpad { ptr, i32 }
          cleanup
  %i.kd = load ptr, ptr %20, align 8, !tbaa !18   ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.jr
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %bb.aq
  %i.kf = load i64, ptr %i.jr, align 8, !tbaa !19
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.da

.thread:                                          ; preds = %.critedge.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  %.sroa.0387.0 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %i.jp, %.critedge.thread ]
  %.0232 = phi ptr [ %i.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %i.ae, %.critedge.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %34 = insertelement <4 x i32> poison, i32 %.sroa.0387.0, i64 0
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %35, ptr %21, align 16, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.kh = getelementptr inbounds nuw i8, ptr %.0232, i64 72
  store i64 0, ptr %22, align 8, !tbaa !264
  %i.ki = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.kj = load <2 x i32>, ptr %i.kh, align 4, !tbaa !264
  store <2 x i32> %i.kj, ptr %i.ki, align 8, !tbaa !264
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %0, ptr noundef nonnull %.0232, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef %4, ptr noundef nonnull %21, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.ar

bb.ar:                                            ; preds = %.thread, %._crit_edge
  %.1231 = phi i1 [ %spec.select, %._crit_edge ], [ true, %.thread ]
  %i.kk = icmp ne ptr %i.af, null
  %or.cond10 = and i1 %i.kk, %.1231
  br i1 %or.cond10, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.kl = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  store i32 0, ptr %23, align 4, !tbaa !324
  %i.km = getelementptr inbounds nuw i8, ptr %23, i64 4
  store i32 0, ptr %i.km, align 4, !tbaa !325
  %i.kn = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ko = load <2 x i32>, ptr %i.kl, align 4, !tbaa !264
  store <2 x i32> %i.ko, ptr %i.kn, align 4, !tbaa !264
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %0, ptr noundef nonnull %i.af, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef %4, ptr noundef null, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.kp = load i8, ptr %i.ab, align 8, !tbaa !310
  %i.kq = icmp eq i8 %i.kp, 3
  br i1 %i.kq, label %bb.au, label %bb.bl

bb.au:                                            ; preds = %bb.at
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !326 ; 2 uses
  %.not259 = icmp eq i16 %i.ks, 0
  br i1 %.not259, label %bb.bl, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ku = load <2 x i32>, ptr %i.kt, align 4, !tbaa !264 ; 2 uses
  %i.kv = load <2 x i32>, ptr %3, align 4, !tbaa !264
  %i.kw = load i32, ptr %3, align 4, !tbaa !270
  %i.kx = sub nsw <2 x i32> %i.ku, %i.kv
  %i.ky = sitofp nsz <2 x i32> %i.kx to <2 x float>
  %i.kz = fmul nnan nsz <2 x float> %i.ky, splat (float 6.250000e-02) ; 3 uses
  %i.la = sitofp nsz i32 %i.kw to float
  %i.lb = extractelement <2 x float> %i.kz, i64 0
  %i.lc = fadd nsz float %i.lb, %i.la
  %i.ld = fptosi float %i.lc to i32               ; 2 uses
  %i.le = sitofp nsz <2 x i32> %i.ku to <2 x float>
  %i.lf = fsub nsz <2 x float> %i.le, %i.kz       ; 2 uses
  %foldExtExtBinop511 = fsub nsz <2 x float> %i.lf, %i.kz
  %i.lg = extractelement <2 x float> %foldExtExtBinop511, i64 1
  %i.lh = fptosi float %i.lg to i32               ; 2 uses
  %i.li = fptosi <2 x float> %i.lf to <2 x i32>   ; 3 uses
  %i.lj = uitofp i16 %i.ks to float
  %i.lk = fdiv nsz float %i.lj, 6.553500e+04      ; 3 uses
  %i.ll = sitofp nsz i32 %i.ld to float
  %i.lm = fsub nsz float 1.000000e+00, %i.lk      ; 2 uses
  %i.ln = extractelement <2 x i32> %i.li, i64 0
  %i.lo = sitofp nsz i32 %i.ln to float
  %i.lp = fmul nsz float %i.lm, %i.lo
  %i.lq = call nsz float @llvm.fmuladd.f32(float %i.lk, float %i.ll, float %i.lp)
  %i.lr = fptosi float %i.lq to i32               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.ls = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = call noundef ptr %i.lt(ptr noundef nonnull align 8 dereferenceable(8) %i.x), !inline_history !44
  %i.lv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK9ItemStack16getWearBarParamsEPK15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef %i.lu) ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 56
  %i.lx = getelementptr inbounds nuw i8, ptr %24, i64 56 ; 4 uses
  store i8 0, ptr %i.lx, align 8, !tbaa !32
  %i.ly = load i8, ptr %i.lw, align 8, !tbaa !32, !range !29, !noundef !30
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %bb.aw, label %_ZNSt8optionalI13WearBarParamsEC2ERKS1_.exit

bb.aw:                                            ; preds = %bb.av
  %i.ma = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store i32 0, ptr %i.ma, align 8, !tbaa !327
  %i.mb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr null, ptr %i.mb, align 8, !tbaa !33
  %i.mc = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 2 uses
  store ptr %i.ma, ptr %i.mc, align 8, !tbaa !328
  %i.md = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  store ptr %i.ma, ptr %i.md, align 8, !tbaa !329
  %i.me = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 2 uses
  store i64 0, ptr %i.me, align 8, !tbaa !330
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %24, ptr %9, align 8, !tbaa !332
  %i.mh = call noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull %i.mg, ptr noundef nonnull %i.ma, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 3 uses
  br label %.noexc.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i, %bb.ax
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mj, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.mh, %bb.ax ] ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i.i.i.i.i, !llvm.loop !46

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  store ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.mc, align 8, !tbaa !333
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mh, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ml, %bb.ay ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !35 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ml, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.az, label %bb.ay, !llvm.loop !47

bb.az:                                            ; preds = %bb.ay
  store ptr %.0.i.i7.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.md, align 8, !tbaa !333
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lv, i64 40
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !330
  store i64 %i.mn, ptr %i.me, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  store ptr %i.mh, ptr %i.mb, align 8, !tbaa !333
  br label %bb.ba

bb.ba:                                            ; preds = %bb.aw, %bb.az
  %i.mo = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lv, i64 48
  %i.mq = load i8, ptr %i.mp, align 8, !tbaa !341
  store i8 %i.mq, ptr %i.mo, align 8, !tbaa !341
  store i8 1, ptr %i.lx, align 8, !tbaa !32
  %i.mr = invoke i32 @_ZN13WearBarParams15getWearBarColorEf(ptr noundef nonnull align 8 dereferenceable(49) %24, float noundef %i.lm)
          to label %bb.be unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

_ZNSt8optionalI13WearBarParamsEC2ERKS1_.exit:     ; preds = %bb.av
  %i.mt = fmul nnan nsz float %i.lk, 6.000000e+02
  %i.mu = call nsz noundef float @llvm.floor.f32(float %i.mt) ; 2 uses
  %i.mv = fcmp nsz olt float %i.mu, 5.110000e+02
  br i1 %i.mv, label %bb.bc, label %.thread423

bb.bc:                                            ; preds = %_ZNSt8optionalI13WearBarParamsEC2ERKS1_.exit
  %i.mw = fptosi float %i.mu to i32               ; 2 uses
  %i.mx = call i32 @llvm.smin.i32(i32 %i.mw, i32 501)
  %i.my = add nuw nsw i32 %i.mx, 10               ; 2 uses
  %i.mz = icmp samesign ult i32 %i.mw, 246
  br i1 %i.mz, label %bb.bd, label %.thread423

bb.bd:                                            ; preds = %bb.bc
  %i.na = shl nuw nsw i32 %i.my, 16
  %i.nb = or i32 %i.na, -16711936
  br label %bb.be

.thread423:                                       ; preds = %_ZNSt8optionalI13WearBarParamsEC2ERKS1_.exit, %bb.bc
  %i.nc = phi i32 [ %i.my, %bb.bc ], [ 511, %_ZNSt8optionalI13WearBarParamsEC2ERKS1_.exit ]
  %i.nd = shl i32 %i.nc, 8
  %i.ne = sub i32 65280, %i.nd
  %i.nf = or i32 %i.ne, -65536
  br label %bb.be

bb.be:                                            ; preds = %bb.ba, %bb.bd, %.thread423
  %.sroa.0370.0 = phi i32 [ %i.nf, %.thread423 ], [ %i.nb, %bb.bd ], [ %i.mr, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  store i32 %i.ld, ptr %25, align 4, !tbaa !264
  %.sroa.7373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 2 uses
  store i32 %i.lh, ptr %.sroa.7373.0..sroa_idx, align 4, !tbaa !264
  %.sroa.8376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 12
  %i.ng = extractelement <2 x i32> %i.li, i64 1
  store i32 %i.ng, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !264
  store i32 %i.lr, ptr %.sroa.8376.0..sroa_idx, align 4, !tbaa !268
  %i.nh = load ptr, ptr %0, align 8, !tbaa !22
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 424
  %i.nj = load ptr, ptr %i.ni, align 8
  invoke void %i.nj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %.sroa.0370.0, ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef %4)
          to label %bb.bf unwind label %bb.bj

bb.bf:                                            ; preds = %bb.be
  store i32 %i.lh, ptr %.sroa.7373.0..sroa_idx, align 4, !tbaa !264
  store <2 x i32> %i.li, ptr %.sroa.8376.0..sroa_idx, align 4, !tbaa !264
  store i32 %i.lr, ptr %25, align 4, !tbaa !270
  %i.nk = load ptr, ptr %0, align 8, !tbaa !22
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 424
  %i.nm = load ptr, ptr %i.nl, align 8
  invoke void %i.nm(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 -16777216, ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef %4)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.nn = load i8, ptr %i.lx, align 8, !tbaa !32, !range !29, !noundef !30
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.bh, label %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit
end_hunk_1
