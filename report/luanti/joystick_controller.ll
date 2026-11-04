Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/joystick_controller?download=true
inline.NumInlined: 489
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%struct.JoystickAxisLayout = type { i16, i32 }
%struct.JoystickLayout = type <{ %"class.std::vector", %"class.std::vector.0", [4 x %struct.JoystickAxisLayout], i16, [6 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<JoystickButtonCmb, std::allocator<JoystickButtonCmb>>::_Vector_impl" }
%"struct.std::_Vector_base<JoystickButtonCmb, std::allocator<JoystickButtonCmb>>::_Vector_impl" = type { %"struct.std::_Vector_base<JoystickButtonCmb, std::allocator<JoystickButtonCmb>>::_Vector_impl_data" }
%"struct.std::_Vector_base<JoystickButtonCmb, std::allocator<JoystickButtonCmb>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<JoystickAxisCmb, std::allocator<JoystickAxisCmb>>::_Vector_impl" }
%"struct.std::_Vector_base<JoystickAxisCmb, std::allocator<JoystickAxisCmb>>::_Vector_impl" = type { %"struct.std::_Vector_base<JoystickAxisCmb, std::allocator<JoystickAxisCmb>>::_Vector_impl_data" }
%"struct.std::_Vector_base<JoystickAxisCmb, std::allocator<JoystickAxisCmb>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.timespec = type { i64, i64 }

$_ZN14JoystickLayoutD2Ev = comdat any

$_ZN17JoystickButtonCmbD2Ev = comdat any

$_ZN17JoystickButtonCmbD0Ev = comdat any

$_ZN15JoystickAxisCmbD2Ev = comdat any

$_ZN15JoystickAxisCmbD0Ev = comdat any

$_ZNSt6vectorI17JoystickButtonCmbSaIS0_EE17_M_realloc_insertIJN7KeyType1TEiiEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6vectorI17JoystickButtonCmbSaIS0_EE17_M_realloc_insertIJN7KeyType1TEjiEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6vectorI17JoystickButtonCmbSaIS0_EE17_M_realloc_insertIJN7KeyType1TEjjEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6vectorI15JoystickAxisCmbSaIS0_EE17_M_realloc_insertIJN7KeyType1TEiiRsEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZTI19JoystickCombination = comdat any

$_ZTS19JoystickCombination = comdat any

@g_settings = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"joystick_deadzone\00", align 1
@__const._Z17create_ps5_layoutv.axes = private unnamed_addr constant [4 x %struct.JoystickAxisLayout] [%struct.JoystickAxisLayout { i16 0, i32 1 }, %struct.JoystickAxisLayout { i16 1, i32 1 }, %struct.JoystickAxisLayout { i16 2, i32 1 }, %struct.JoystickAxisLayout { i16 3, i32 1 }], align 16
@__const._Z33create_dragonrise_gamecube_layoutv.axes = private unnamed_addr constant [4 x %struct.JoystickAxisLayout] [%struct.JoystickAxisLayout { i16 0, i32 1 }, %struct.JoystickAxisLayout { i16 1, i32 1 }, %struct.JoystickAxisLayout { i16 3, i32 1 }, %struct.JoystickAxisLayout { i16 4, i32 1 }], align 16
@.str.1 = private unnamed_addr constant [28 x i8] c"repeat_joystick_button_time\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"joystick_id\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"joystick_type\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"xbox\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ps5\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"dualsense\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"dragonrise_gamecube\00", align 1
@_ZTV17JoystickButtonCmb = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17JoystickButtonCmb, ptr @_ZNK17JoystickButtonCmb11isTriggeredERKN6SEvent14SJoystickEventE, ptr @_ZN17JoystickButtonCmbD2Ev, ptr @_ZN17JoystickButtonCmbD0Ev] }, align 8
@_ZTI17JoystickButtonCmb = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17JoystickButtonCmb, ptr @_ZTI19JoystickCombination }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17JoystickButtonCmb = dso_local constant [20 x i8] c"17JoystickButtonCmb\00", align 1
@_ZTI19JoystickCombination = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS19JoystickCombination }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS19JoystickCombination = linkonce_odr dso_local constant [22 x i8] c"19JoystickCombination\00", comdat, align 1
@_ZTV15JoystickAxisCmb = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI15JoystickAxisCmb, ptr @_ZNK15JoystickAxisCmb11isTriggeredERKN6SEvent14SJoystickEventE, ptr @_ZN15JoystickAxisCmbD2Ev, ptr @_ZN15JoystickAxisCmbD0Ev] }, align 8
@_ZTI15JoystickAxisCmb = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15JoystickAxisCmb, ptr @_ZTI19JoystickCombination }, align 8
@_ZTS15JoystickAxisCmb = dso_local constant [18 x i8] c"15JoystickAxisCmb\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"bitset::set\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"%s: __position (which is %zu) >= _Nb (which is %zu)\00", align 1

@_ZN18JoystickControllerC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18JoystickControllerC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK17JoystickButtonCmb11isTriggeredERKN6SEvent14SJoystickEventE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(44) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18
  %i.d = and i32 %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = icmp eq i32 %i.d, %i.f
  ret i1 %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK15JoystickAxisCmb11isTriggeredERKN6SEvent14SJoystickEventE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(22) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(44) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i16, ptr %i.b, align 4, !tbaa !21
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !22
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23
  %i.j = mul nsw i32 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i16, ptr %i.k, align 4, !tbaa !24
  %i.m = sext i16 %i.l to i32
  %i.n = sub nsw i32 0, %i.m
  %i.o = icmp slt i32 %i.j, %i.n
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z21create_default_layoutv(ptr dead_on_unwind noalias writable sret(%struct.JoystickLayout) align 8 initializes((0, 48)) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %i.w = alloca i32, align 4                      ; 5 uses
  %i.x = alloca i32, align 4                      ; 5 uses
  %i.y = alloca i32, align 4                      ; 5 uses
  %i.z = alloca i32, align 4                      ; 5 uses
  %i.aa = alloca i32, align 4                     ; 5 uses
  %i.ab = alloca i32, align 4                     ; 5 uses
  %i.ac = alloca i32, align 4                     ; 5 uses
  %i.ad = alloca i32, align 4                     ; 5 uses
  %i.ae = alloca i32, align 4                     ; 5 uses
  %i.af = alloca i32, align 4                     ; 5 uses
  %i.ag = alloca i32, align 4                     ; 5 uses
  %i.ah = alloca i32, align 4                     ; 5 uses
  %i.ai = alloca i32, align 4                     ; 5 uses
  %i.aj = alloca i32, align 4                     ; 5 uses
  %i.ak = alloca i32, align 4                     ; 5 uses
  %i.al = alloca i32, align 4                     ; 5 uses
  %i.am = alloca i32, align 4                     ; 5 uses
  %i.an = alloca i32, align 4                     ; 5 uses
  %i.ao = alloca i32, align 4                     ; 5 uses
  %i.ap = alloca i32, align 4                     ; 5 uses
  %i.aq = alloca i32, align 4                     ; 5 uses
  %i.ar = alloca i32, align 4                     ; 5 uses
  %i.as = alloca i32, align 4                     ; 5 uses
  %i.at = alloca i32, align 4                     ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(82) %0, i8 0, i64 48, i1 false)
  %i.au = load ptr, ptr @g_settings, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 17, ptr %i.a, align 8, !tbaa !32
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.af    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.aw, ptr %1, align 8, !tbaa !34
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.aw, ptr noundef nonnull align 1 dereferenceable(17) @.str, i64 17, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !36
  %i.az = load ptr, ptr %1, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.bb = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.ag

bb.a:                                             ; preds = %.noexc
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 13 uses
  store i16 %i.bb, ptr %i.bc, align 8, !tbaa !48
  %i.bd = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.av
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !35
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 16 dereferenceable(32) @__const._Z33create_dragonrise_gamecube_layoutv.axes, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 10, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 64, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 64, ptr %i.d, align 4, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !51 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !52 ; 2 uses
  %.not.i = icmp eq ptr %i.bj, %i.bl
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17JoystickButtonCmb, i64 16), ptr %i.bj, align 8, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 64, ptr %i.bm, align 4, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
end_hunk_0
begin_hunk_1_@_ZN18JoystickController27setLayoutFromControllerNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.ja to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.je) #19
  br label %_ZNSt6vectorI15JoystickAxisCmbSaIS0_EED2Ev.exit.i123

_ZNSt6vectorI15JoystickAxisCmbSaIS0_EED2Ev.exit.i123: ; preds = %bb.z, %_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exit.i.i121
  %i.jf = load ptr, ptr %8, align 16, !tbaa !60   ; 3 uses
  %i.jg = load ptr, ptr %i.hp, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i1.i124 = icmp eq ptr %i.jf, %i.jg
  br i1 %.not4.i.i.i1.i124, label %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i130, label %.lr.ph.i.i.i2.i125

.lr.ph.i.i.i2.i125:                               ; preds = %_ZNSt6vectorI15JoystickAxisCmbSaIS0_EED2Ev.exit.i123, %.lr.ph.i.i.i2.i125
  %.05.i.i.i3.i126 = phi ptr [ %i.jk, %.lr.ph.i.i.i2.i125 ], [ %i.jf, %_ZNSt6vectorI15JoystickAxisCmbSaIS0_EED2Ev.exit.i123 ] ; 3 uses
  %i.jh = load ptr, ptr %.05.i.i.i3.i126, align 8, !tbaa !54
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %.05.i.i.i3.i126) #18, !inline_history !83
  %i.jk = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i126, i64 24 ; 2 uses
  %.not.i.i.i4.i127 = icmp eq ptr %i.jk, %i.jg
  br i1 %.not.i.i.i4.i127, label %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i128, label %.lr.ph.i.i.i2.i125, !llvm.loop !1

_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i128: ; preds = %.lr.ph.i.i.i2.i125
  %.pr.i5.i129 = load ptr, ptr %8, align 16, !tbaa !60
  br label %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i130

_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i130: ; preds = %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i128, %_ZNSt6vectorI15JoystickAxisCmbSaIS0_EED2Ev.exit.i123
  %i.jl = phi ptr [ %.pr.i5.i129, %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i128 ], [ %i.jf, %_ZNSt6vectorI15JoystickAxisCmbSaIS0_EED2Ev.exit.i123 ] ; 3 uses
  %.not.i.i1.i6.i131 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i1.i6.i131, label %_ZN14JoystickLayoutD2Ev.exit132, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i130
  %i.jm = load ptr, ptr %i.hr, align 16, !tbaa !52
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = ptrtoint ptr %i.jl to i64
  %i.jp = sub i64 %i.jn, %i.jo
  call void @_ZdlPvm(ptr noundef nonnull %i.jl, i64 noundef %i.jp) #19
  br label %_ZN14JoystickLayoutD2Ev.exit132

_ZN14JoystickLayoutD2Ev.exit132:                  ; preds = %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i130, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.ag

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @_Z21create_default_layoutv(ptr dead_on_unwind nonnull writable sret(%struct.JoystickLayout) align 8 %9)
  %i.jq = load ptr, ptr %i.hj, align 8, !tbaa !60 ; 5 uses
  %i.jr = load ptr, ptr %i.hk, align 8, !tbaa !51 ; 2 uses
  %i.js = load ptr, ptr %i.hl, align 8, !tbaa !52
  %i.jt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ju = load <2 x ptr>, ptr %9, align 16, !tbaa !68
  store <2 x ptr> %i.ju, ptr %i.hj, align 8, !tbaa !68
  %i.jv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 16, !tbaa !52
  store ptr %i.jw, ptr %i.hl, align 8, !tbaa !52
  %.not4.i.i.i.i.i.i133 = icmp eq ptr %i.jq, %i.jr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(82) %9, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i133, label %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i.i.i137, label %.lr.ph.i.i.i.i.i.i134

.lr.ph.i.i.i.i.i.i134:                            ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i134
  %.05.i.i.i.i.i.i135 = phi ptr [ %i.ka, %.lr.ph.i.i.i.i.i.i134 ], [ %i.jq, %bb.ab ] ; 3 uses
  %i.jx = load ptr, ptr %.05.i.i.i.i.i.i135, align 8, !tbaa !54
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %.05.i.i.i.i.i.i135) #18, !inline_history !80
  %i.ka = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i135, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i136 = icmp eq ptr %i.ka, %i.jr
  br i1 %.not.i.i.i.i.i.i136, label %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i.i.i137, label %.lr.ph.i.i.i.i.i.i134, !llvm.loop !1

_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i.i.i137: ; preds = %.lr.ph.i.i.i.i.i.i134, %bb.ab
  %.not.i.i1.i.i.i.i138 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i1.i.i.i.i138, label %_ZNSt6vectorI17JoystickButtonCmbSaIS0_EEaSEOS2_.exit.i139, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i.i.i137
  %i.kb = ptrtoint ptr %i.js to i64
  %i.kc = ptrtoint ptr %i.jq to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef %i.kd) #19
  br label %_ZNSt6vectorI17JoystickButtonCmbSaIS0_EEaSEOS2_.exit.i139

_ZNSt6vectorI17JoystickButtonCmbSaIS0_EEaSEOS2_.exit.i139: ; preds = %bb.ac, %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i.i.i137
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.kg = load ptr, ptr %i.ke, align 8, !tbaa !58 ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !56 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !57
  %i.kl = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.km = load <2 x ptr>, ptr %i.kf, align 8, !tbaa !69
  store <2 x ptr> %i.km, ptr %i.ke, align 8, !tbaa !69
  %i.kn = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !57
  store ptr %i.ko, ptr %i.kj, align 8, !tbaa !57
  %.not4.i.i.i.i.i4.i140 = icmp eq ptr %i.kg, %i.ki
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kf, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i4.i140, label %_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exit.i.i.i.i144, label %.lr.ph.i.i.i.i.i5.i141

.lr.ph.i.i.i.i.i5.i141:                           ; preds = %_ZNSt6vectorI17JoystickButtonCmbSaIS0_EEaSEOS2_.exit.i139, %.lr.ph.i.i.i.i.i5.i141
  %.05.i.i.i.i.i6.i142 = phi ptr [ %i.ks, %.lr.ph.i.i.i.i.i5.i141 ], [ %i.kg, %_ZNSt6vectorI17JoystickButtonCmbSaIS0_EEaSEOS2_.exit.i139 ] ; 3 uses
  %i.kp = load ptr, ptr %.05.i.i.i.i.i6.i142, align 8, !tbaa !54
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  call void %i.kr(ptr noundef nonnull align 8 dead_on_return(22) dereferenceable(22) %.05.i.i.i.i.i6.i142) #18, !inline_history !81
  %i.ks = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i6.i142, i64 24 ; 2 uses
  %.not.i.i.i.i.i7.i143 = icmp eq ptr %i.ks, %i.ki
  br i1 %.not.i.i.i.i.i7.i143, label %_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exit.i.i.i.i144, label %.lr.ph.i.i.i.i.i5.i141, !llvm.loop !0

_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exit.i.i.i.i144: ; preds = %.lr.ph.i.i.i.i.i5.i141, %_ZNSt6vectorI17JoystickButtonCmbSaIS0_EEaSEOS2_.exit.i139
  %.not.i.i1.i.i.i8.i145 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i1.i.i.i8.i145, label %_ZN14JoystickLayoutaSEOS_.exit146, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exit.i.i.i.i144
  %i.kt = ptrtoint ptr %i.kk to i64
  %i.ku = ptrtoint ptr %i.kg to i64
  %i.kv = sub i64 %i.kt, %i.ku
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kv) #19
  br label %_ZN14JoystickLayoutaSEOS_.exit146

_ZN14JoystickLayoutaSEOS_.exit146:                ; preds = %_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exit.i.i.i.i144, %bb.ad
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kx = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.kw, ptr noundef nonnull align 16 dereferenceable(34) %i.kx, i64 34, i1 false)
  %i.ky = load ptr, ptr %i.kf, align 8, !tbaa !58 ; 3 uses
  %i.kz = load ptr, ptr %i.kl, align 16, !tbaa !56 ; 2 uses
  %.not4.i.i.i.i147 = icmp eq ptr %i.ky, %i.kz
  br i1 %.not4.i.i.i.i147, label %_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exit.i.i153, label %.lr.ph.i.i.i.i148

.lr.ph.i.i.i.i148:                                ; preds = %_ZN14JoystickLayoutaSEOS_.exit146, %.lr.ph.i.i.i.i148
  %.05.i.i.i.i149 = phi ptr [ %i.ld, %.lr.ph.i.i.i.i148 ], [ %i.ky, %_ZN14JoystickLayoutaSEOS_.exit146 ] ; 3 uses
  %i.la = load ptr, ptr %.05.i.i.i.i149, align 8, !tbaa !54
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8
  call void %i.lc(ptr noundef nonnull align 8 dead_on_return(22) dereferenceable(22) %.05.i.i.i.i149) #18, !inline_history !82
  %i.ld = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i149, i64 24 ; 2 uses
  %.not.i.i.i.i150 = icmp eq ptr %i.ld, %i.kz
  br i1 %.not.i.i.i.i150, label %_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i151, label %.lr.ph.i.i.i.i148, !llvm.loop !0

_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i151: ; preds = %.lr.ph.i.i.i.i148
  %.pr.i.i152 = load ptr, ptr %i.kf, align 8, !tbaa !58
  br label %_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exit.i.i153

_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exit.i.i153: ; preds = %_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i151, %_ZN14JoystickLayoutaSEOS_.exit146
  %i.le = phi ptr [ %.pr.i.i152, %_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i151 ], [ %i.ky, %_ZN14JoystickLayoutaSEOS_.exit146 ] ; 3 uses
  %.not.i.i1.i.i154 = icmp eq ptr %i.le, null
  br i1 %.not.i.i1.i.i154, label %_ZNSt6vectorI15JoystickAxisCmbSaIS0_EED2Ev.exit.i155, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exit.i.i153
  %i.lf = load ptr, ptr %i.kn, align 8, !tbaa !57
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = ptrtoint ptr %i.le to i64
  %i.li = sub i64 %i.lg, %i.lh
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.li) #19
  br label %_ZNSt6vectorI15JoystickAxisCmbSaIS0_EED2Ev.exit.i155

_ZNSt6vectorI15JoystickAxisCmbSaIS0_EED2Ev.exit.i155: ; preds = %bb.ae, %_ZSt8_DestroyIP15JoystickAxisCmbS0_EvT_S2_RSaIT0_E.exit.i.i153
  %i.lj = load ptr, ptr %9, align 16, !tbaa !60   ; 3 uses
  %i.lk = load ptr, ptr %i.jt, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i1.i156 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not4.i.i.i1.i156, label %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i162, label %.lr.ph.i.i.i2.i157

.lr.ph.i.i.i2.i157:                               ; preds = %_ZNSt6vectorI15JoystickAxisCmbSaIS0_EED2Ev.exit.i155, %.lr.ph.i.i.i2.i157
  %.05.i.i.i3.i158 = phi ptr [ %i.lo, %.lr.ph.i.i.i2.i157 ], [ %i.lj, %_ZNSt6vectorI15JoystickAxisCmbSaIS0_EED2Ev.exit.i155 ] ; 3 uses
  %i.ll = load ptr, ptr %.05.i.i.i3.i158, align 8, !tbaa !54
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8
  call void %i.ln(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %.05.i.i.i3.i158) #18, !inline_history !83
  %i.lo = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i158, i64 24 ; 2 uses
  %.not.i.i.i4.i159 = icmp eq ptr %i.lo, %i.lk
  br i1 %.not.i.i.i4.i159, label %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i160, label %.lr.ph.i.i.i2.i157, !llvm.loop !1

_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i160: ; preds = %.lr.ph.i.i.i2.i157
  %.pr.i5.i161 = load ptr, ptr %9, align 16, !tbaa !60
  br label %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i162

_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i162: ; preds = %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i160, %_ZNSt6vectorI15JoystickAxisCmbSaIS0_EED2Ev.exit.i155
  %i.lp = phi ptr [ %.pr.i5.i161, %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i160 ], [ %i.lj, %_ZNSt6vectorI15JoystickAxisCmbSaIS0_EED2Ev.exit.i155 ] ; 3 uses
  %.not.i.i1.i6.i163 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i1.i6.i163, label %_ZN14JoystickLayoutD2Ev.exit164, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i162
  %i.lq = load ptr, ptr %i.jv, align 16, !tbaa !52
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lp to i64
  %i.lt = sub i64 %i.lr, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %i.lp, i64 noundef %i.lt) #19
  br label %_ZN14JoystickLayoutD2Ev.exit164

_ZN14JoystickLayoutD2Ev.exit164:                  ; preds = %_ZSt8_DestroyIP17JoystickButtonCmbS0_EvT_S2_RSaIT0_E.exit.i.i162, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN14JoystickLayoutD2Ev.exit81, %_ZN14JoystickLayoutD2Ev.exit164, %_ZN14JoystickLayoutD2Ev.exit132, %_ZN14JoystickLayoutD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN18JoystickController11handleEventERKN6SEvent14SJoystickEventE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(44) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.b = load i8, ptr %i.a, align 2, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i8, ptr %i.c, align 8, !tbaa !65
  %.not = icmp eq i8 %i.b, %i.d                   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.e = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %2) #18 ; 0 uses
  %i.f = load i64, ptr %2, align 8, !tbaa !97
  %i.g = mul i64 %i.f, 1000
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !98
  %i.j = udiv i64 %i.i, 1000000
  %i.k = add i64 %i.j, %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.l = uitofp nsz i64 %i.k to float
  %i.m = fdiv nsz float %i.l, 1.000000e+03
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store float %i.m, ptr %i.n, align 8, !tbaa !99
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68   ; 2 uses
  %.not7583 = icmp eq ptr %i.p, %i.r
  br i1 %.not7583, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ %.sroa.0.2, %bb.e ] ; 2 uses
  %.sroa.6.0 = phi i64 [ 0, %bb.b ], [ %.sroa.6.2, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !69   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !69   ; 2 uses
  %.not7685 = icmp eq ptr %i.t, %i.v
  br i1 %.not7685, label %.preheader81, label %.lr.ph88

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.sroa.0.1 = phi i64 [ %.sroa.0.2, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %.sroa.6.1 = phi i64 [ %.sroa.6.2, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %.sroa.068.084 = phi ptr [ %i.af, %bb.e ], [ %i.p, %bb.b ] ; 4 uses
  %i.w = load ptr, ptr %.sroa.068.084, align 8, !tbaa !54
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.068.084, ptr noundef nonnull align 4 dereferenceable(44) %1)
  br i1 %i.y, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.068.084, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !55  ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = icmp ugt i32 %i.aa, 80
  br i1 %i.ac, label %bb.d, label %_ZNSt6bitsetILm81EE3setEmb.exit

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i64 noundef %i.ab, i64 noundef 81) #20
  unreachable

_ZNSt6bitsetILm81EE3setEmb.exit:                  ; preds = %bb.c
  %i.ad = and i64 %i.ab, 63
  %i.ae = shl nuw i64 1, %i.ad
  %.sroa.idx.not = icmp samesign ult i32 %i.aa, 64 ; 3 uses
  %.sroa.speculated107 = select i1 %.sroa.idx.not, i64 %.sroa.0.1, i64 %.sroa.6.1
  %3 = or i64 %.sroa.speculated107, %i.ae         ; 2 uses
  %spec.select = select i1 %.sroa.idx.not, i64 %3, i64 %.sroa.0.1
  %spec.select119 = select i1 %.sroa.idx.not, i64 %.sroa.6.1, i64 %3
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6bitsetILm81EE3setEmb.exit, %.lr.ph
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %.lr.ph ], [ %spec.select, %_ZNSt6bitsetILm81EE3setEmb.exit ] ; 2 uses
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %.lr.ph ], [ %spec.select119, %_ZNSt6bitsetILm81EE3setEmb.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.068.084, i64 24 ; 2 uses
  %.not75 = icmp eq ptr %i.af, %i.r
  br i1 %.not75, label %._crit_edge, label %.lr.ph

.preheader81:                                     ; preds = %bb.h, %._crit_edge
  %.sroa.0.3 = phi i64 [ %.sroa.0.0, %._crit_edge ], [ %.sroa.0.5, %bb.h ]
  %.sroa.6.3 = phi i64 [ %.sroa.6.0, %._crit_edge ], [ %.sroa.6.5, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 488
  br label %bb.i

.lr.ph88:                                         ; preds = %._crit_edge, %bb.h
  %.sroa.0.4 = phi i64 [ %.sroa.0.5, %bb.h ], [ %.sroa.0.0, %._crit_edge ] ; 3 uses
  %.sroa.6.4 = phi i64 [ %.sroa.6.5, %bb.h ], [ %.sroa.6.0, %._crit_edge ] ; 3 uses
  %.sroa.064.086 = phi ptr [ %i.au, %bb.h ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.al = load ptr, ptr %.sroa.064.086, align 8, !tbaa !54
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(22) %.sroa.064.086, ptr noundef nonnull align 4 dereferenceable(44) %1)
  br i1 %i.an, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph88
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.064.086, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !55 ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = icmp ugt i32 %i.ap, 80
  br i1 %i.ar, label %bb.g, label %_ZNSt6bitsetILm81EE3setEmb.exit42

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i64 noundef %i.aq, i64 noundef 81) #20
  unreachable

_ZNSt6bitsetILm81EE3setEmb.exit42:                ; preds = %bb.f
  %i.as = and i64 %i.aq, 63
  %i.at = shl nuw i64 1, %i.as
  %.sroa.idx94.not = icmp samesign ult i32 %i.ap, 64 ; 3 uses
  %.sroa.speculated104 = select i1 %.sroa.idx94.not, i64 %.sroa.0.4, i64 %.sroa.6.4
  %4 = or i64 %.sroa.speculated104, %i.at         ; 2 uses
  %spec.select120 = select i1 %.sroa.idx94.not, i64 %4, i64 %.sroa.0.4
  %spec.select121 = select i1 %.sroa.idx94.not, i64 %.sroa.6.4, i64 %4
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6bitsetILm81EE3setEmb.exit42, %.lr.ph88
  %.sroa.0.5 = phi i64 [ %.sroa.0.4, %.lr.ph88 ], [ %spec.select120, %_ZNSt6bitsetILm81EE3setEmb.exit42 ] ; 2 uses
  %.sroa.6.5 = phi i64 [ %.sroa.6.4, %.lr.ph88 ], [ %spec.select121, %_ZNSt6bitsetILm81EE3setEmb.exit42 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.064.086, i64 24 ; 2 uses
  %.not76 = icmp eq ptr %i.au, %i.v
  br i1 %.not76, label %.preheader81, label %.lr.ph88

.preheader:                                       ; preds = %_ZNSt6bitsetILm81EE9referenceaSERKS1_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !101
  %i.ba = load i16, ptr %i.av, align 8, !tbaa !102
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !22
  %i.be = trunc i32 %i.az to i16
  %i.bf = mul i16 %i.bd, %i.be
  store i16 %i.bf, ptr %i.ax, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !101
  %i.bj = load i16, ptr %i.bg, align 8, !tbaa !102
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !22
  %i.bn = trunc i32 %i.bi to i16
  %i.bo = mul i16 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i16 %i.bo, ptr %i.bp, align 2, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !101
  %i.bt = load i16, ptr %i.bq, align 8, !tbaa !102
  %i.bu = zext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !22
  %i.bx = trunc i32 %i.bs to i16
  %i.by = mul i16 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i16 %i.by, ptr %i.bz, align 4, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !101
  %i.cd = load i16, ptr %i.ca, align 8, !tbaa !102
  %i.ce = zext i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !22
  %i.ch = trunc i32 %i.cc to i16
  %i.ci = mul i16 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !22
  br label %bb.r

bb.i:                                             ; preds = %.preheader81, %_ZNSt6bitsetILm81EE9referenceaSERKS1_.exit
  %.03989 = phi i64 [ 0, %.preheader81 ], [ %i.dt, %_ZNSt6bitsetILm81EE9referenceaSERKS1_.exit ] ; 4 uses
  %i.ck = lshr i64 %.03989, 6                     ; 7 uses
  %.sroa.idx98 = icmp eq i64 %i.ck, 1
  %i.cl = and i64 %.03989, 63
  %.sroa.speculated = select i1 %.sroa.idx98, i64 %.sroa.6.3, i64 %.sroa.0.3
  %i.cm = shl nuw i64 1, %i.cl                    ; 10 uses
  %i.cn = and i64 %.sroa.speculated, %i.cm
  %.not77 = icmp eq i64 %i.cn, 0
  br i1 %.not77, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ck ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !32 ; 2 uses
  %i.cq = and i64 %i.cp, %i.cm
  %.not79 = icmp eq i64 %i.cq, 0
  br i1 %.not79, label %bb.k, label %.critedge41

bb.k:                                             ; preds = %bb.j
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.03989 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !103
  %i.ct = load float, ptr %i.n, align 8, !tbaa !99 ; 2 uses
  %i.cu = load float, ptr %0, align 8, !tbaa !66
  %i.cv = fsub nsz float %i.ct, %i.cu
  %i.cw = fcmp nsz olt float %i.cs, %i.cv
  br i1 %i.cw, label %bb.l, label %.critedge41

bb.l:                                             ; preds = %bb.k
  %i.cx = or i64 %i.cp, %i.cm
  store i64 %i.cx, ptr %i.co, align 8, !tbaa !32
  store float %i.ct, ptr %i.cr, align 4, !tbaa !103
  br label %.critedge41

bb.m:                                             ; preds = %bb.i
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ck ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !32 ; 2 uses
  %i.da = and i64 %i.cz, %i.cm
  %.not78 = icmp eq i64 %i.da, 0
  br i1 %.not78, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ck ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !32
  %i.dd = or i64 %i.dc, %i.cm
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !32
  br label %bb.q

.critedge41:                                      ; preds = %bb.j, %bb.k, %bb.l
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ck ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !32 ; 2 uses
  %i.dg = and i64 %i.df, %i.cm
  %.not80 = icmp eq i64 %i.dg, 0
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ck ; 3 uses
  br i1 %.not80, label %.thread71, label %bb.o

.thread71:                                        ; preds = %.critedge41
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !32
  %i.dj = or i64 %i.di, %i.cm
  br label %bb.p

bb.o:                                             ; preds = %.critedge41
  %i.dk = xor i64 %i.cm, -1
  %i.dl = load i64, ptr %i.dh, align 8, !tbaa !32
  %i.dm = and i64 %i.dl, %i.dk
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread71
  %.sink = phi i64 [ %i.dm, %bb.o ], [ %i.dj, %.thread71 ]
  store i64 %.sink, ptr %i.dh, align 8, !tbaa !32
  %i.dn = or i64 %i.df, %i.cm
  store i64 %i.dn, ptr %i.de, align 8, !tbaa !32
  br label %_ZNSt6bitsetILm81EE9referenceaSERKS1_.exit

bb.q:                                             ; preds = %bb.m, %bb.n
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ck ; 2 uses
  %i.dp = xor i64 %i.cm, -1                       ; 2 uses
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !32
  %i.dr = and i64 %i.dq, %i.dp
  store i64 %i.dr, ptr %i.do, align 8, !tbaa !32
  %i.ds = and i64 %i.cz, %i.dp
  store i64 %i.ds, ptr %i.cy, align 8, !tbaa !32
  br label %_ZNSt6bitsetILm81EE9referenceaSERKS1_.exit

_ZNSt6bitsetILm81EE9referenceaSERKS1_.exit:       ; preds = %bb.p, %bb.q
  %i.dt = add nuw nsw i64 %.03989, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dt, 81
  br i1 %exitcond.not, label %.preheader, label %bb.i, !llvm.loop !94

bb.r:                                             ; preds = %bb.a, %.preheader
  ret i1 %.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !22   ; 3 uses
  %i.e = tail call i16 @llvm.abs.i16(i16 %i.d, i1 false)
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i16, ptr %i.g, align 8, !tbaa !67   ; 3 uses
  %i.i = sext i16 %i.h to i32                     ; 2 uses
  %i.j = icmp slt i32 %i.f, %i.i
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i16 %i.d, 0
  %i.l = sub i16 0, %i.h
  %i.m = select i1 %i.k, i16 %i.h, i16 %i.l
  %i.n = add i16 %i.m, %i.d
  %i.o = sitofp nsz i16 %i.n to float
  %i.p = sub nsw i32 32767, %i.i
  %i.q = uitofp nneg i32 %i.p to float
  %i.r = fdiv nsz float %i.o, %i.q
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi nsz float [ %i.r, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN18JoystickController20getMovementDirectionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i16, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = tail call i16 @llvm.abs.i16(i16 %i.b, i1 false)
  %i.d = zext i16 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i16, ptr %i.e, align 8, !tbaa !67   ; 5 uses
  %i.g = sext i16 %i.f to i32                     ; 4 uses
  %i.h = icmp slt i32 %i.d, %i.g
  br i1 %i.h, label %_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i16 %i.b, 0
  %i.j = sub i16 0, %i.f
  %i.k = select i1 %i.i, i16 %i.f, i16 %i.j
  %i.l = add i16 %i.k, %i.b
  %i.m = sitofp nsz i16 %i.l to float
  %i.n = sub nsw i32 32767, %i.g
  %i.o = uitofp nneg i32 %i.n to float
  %i.p = fdiv nsz float %i.m, %i.o
  br label %_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis.exit

_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi nsz float [ %i.p, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.r = load i16, ptr %i.q, align 2, !tbaa !22   ; 3 uses
  %i.s = tail call i16 @llvm.abs.i16(i16 %i.r, i1 false)
  %i.t = zext i16 %i.s to i32
  %i.u = icmp slt i32 %i.t, %i.g
  br i1 %i.u, label %_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis.exit2, label %bb.c

bb.c:                                             ; preds = %_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis.exit
  %i.v = icmp slt i16 %i.r, 0
  %i.w = sub i16 0, %i.f
  %i.x = select i1 %i.v, i16 %i.f, i16 %i.w
  %i.y = add i16 %i.x, %i.r
  %i.z = sitofp nsz i16 %i.y to float
  %i.aa = sub nsw i32 32767, %i.g
  %i.ab = uitofp nneg i32 %i.aa to float
  %i.ac = fdiv nsz float %i.z, %i.ab
  br label %_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis.exit2

_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis.exit2: ; preds = %_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis.exit, %bb.c
  %.0.i1 = phi nsz float [ %i.ac, %bb.c ], [ 0.000000e+00, %_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis.exit ]
  %i.ad = fneg nsz float %.0.i1
  %i.ae = tail call nsz noundef float @llvm.atan2.f32(float %.0.i, float %i.ad)
  ret float %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN18JoystickController16getMovementSpeedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.c = load i16, ptr %i.b, align 2, !tbaa !22   ; 3 uses
  %i.d = tail call i16 @llvm.abs.i16(i16 %i.c, i1 false)
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !tbaa !67   ; 5 uses
  %i.h = sext i16 %i.g to i32                     ; 4 uses
  %i.i = icmp slt i32 %i.e, %i.h
  br i1 %i.i, label %_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i16 %i.c, 0
  %i.k = sub i16 0, %i.g
  %i.l = select i1 %i.j, i16 %i.g, i16 %i.k
  %i.m = add i16 %i.l, %i.c
  %i.n = sitofp nsz i16 %i.m to float
  %i.o = sub nsw i32 32767, %i.h
  %i.p = uitofp nneg i32 %i.o to float
  %i.q = fdiv nsz float %i.n, %i.p
  %i.r = fpext nsz float %i.q to double           ; 2 uses
  %square = fmul nsz double %i.r, %i.r
  br label %_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis.exit

_ZN18JoystickController18getAxisWithoutDeadE12JoystickAxis.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi double [ %square, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.s = load i16, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.t = tail call i16 @llvm.abs.i16(i16 %i.s, i1 false)
end_hunk_1
