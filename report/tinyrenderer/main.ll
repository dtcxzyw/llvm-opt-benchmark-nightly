Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/main?download=true
inline.NumInlined: 255
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%struct.vec = type { double, double, double }
%struct.mat = type { [4 x %struct.vec.18] }
%struct.vec.18 = type { double, double, double, double }
%struct.TGAImage = type { i32, i32, i8, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.Model = type { %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.5", %"class.std::vector.10", %"class.std::vector.10", %"class.std::vector.10", %struct.TGAImage, %struct.TGAImage, %struct.TGAImage }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<vec<4>, std::allocator<vec<4>>>::_Vector_impl" }
%"struct.std::_Vector_base<vec<4>, std::allocator<vec<4>>>::_Vector_impl" = type { %"struct.std::_Vector_base<vec<4>, std::allocator<vec<4>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<vec<4>, std::allocator<vec<4>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<vec<2>, std::allocator<vec<2>>>::_Vector_impl" }
%"struct.std::_Vector_base<vec<2>, std::allocator<vec<2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<vec<2>, std::allocator<vec<2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<vec<2>, std::allocator<vec<2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.PhongShader = type { %struct.IShader, ptr, %struct.vec.18, [3 x %struct.vec.19], [3 x %struct.vec.18], [3 x %struct.vec.18] }
%struct.IShader = type { ptr }
%struct.vec.19 = type { double, double }

$_ZN11PhongShader6vertexEii = comdat any

$_ZN5ModelD2Ev = comdat any

$_ZNK11PhongShader8fragmentE3vecILi3EE = comdat any

$_ZNK3matILi4ELi4EE16invert_transposeEv = comdat any

$_ZTV11PhongShader = comdat any

$_ZTI11PhongShader = comdat any

$_ZTS11PhongShader = comdat any

$_ZTI7IShader = comdat any

$_ZTS7IShader = comdat any

@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [8 x i8] c"Usage: \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" obj/model.obj\00", align 1
@__const.main.up = private unnamed_addr constant %struct.vec { double 0.000000e+00, double 1.000000e+00, double 0.000000e+00 }, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"framebuffer.tga\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV11PhongShader = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI11PhongShader, ptr @_ZNK11PhongShader8fragmentE3vecILi3EE, ptr @_ZN11PhongShader6vertexEii] }, comdat, align 8
@ModelView = external global %struct.mat, align 8
@_ZTI11PhongShader = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11PhongShader, ptr @_ZTI7IShader }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS11PhongShader = linkonce_odr dso_local constant [14 x i8] c"11PhongShader\00", comdat, align 1
@_ZTI7IShader = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS7IShader }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS7IShader = linkonce_odr dso_local constant [9 x i8] c"7IShader\00", comdat, align 1
@Perspective = external local_unnamed_addr global %struct.mat, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.mat, align 8                ; 5 uses
  %3 = alloca %struct.vec.18, align 16            ; 7 uses
  %4 = alloca %struct.vec.18, align 16            ; 7 uses
  %5 = alloca %struct.mat, align 8                ; 5 uses
  %6 = alloca %struct.vec.18, align 16            ; 7 uses
  %7 = alloca %struct.vec.18, align 16            ; 7 uses
  %8 = alloca %struct.mat, align 8                ; 5 uses
  %9 = alloca %struct.vec.18, align 16            ; 7 uses
  %10 = alloca %struct.vec.18, align 16           ; 7 uses
  %11 = alloca %struct.vec, align 16              ; 3 uses
  %12 = alloca %struct.vec, align 8               ; 2 uses
  %13 = alloca %struct.TGAImage, align 8          ; 10 uses
  %14 = alloca %class.Model, align 8              ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %16 = alloca %struct.PhongShader, align 8       ; 27 uses
  %17 = alloca [3 x %struct.vec.18], align 16     ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = icmp slt i32 %0, 2
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 7) ; 0 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !10     ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15
  %i.j = or i32 %i.i, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #13
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.c, i64 noundef %i.k) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c, %bb.d
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 14) ; 0 uses
  %i.n = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !13
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !33
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !39
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.s)
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.s, i8 noundef signext 10), !inline_history !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.w, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) ; 0 uses
  br label %bb.ah

bb.h:                                             ; preds = %bb.a
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %11, align 16, !tbaa !41
  %.sroa.7130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store double 2.000000e+00, ptr %.sroa.7130.0..sroa_idx, align 16, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  tail call void @_Z6lookat3vecILi3EES0_S0_(ptr noundef nonnull byval(%struct.vec) align 8 %11, ptr noundef nonnull byval(%struct.vec) align 8 %12, ptr noundef nonnull byval(%struct.vec) align 8 @__const.main.up)
  tail call void @_Z16init_perspectived(double noundef f0x4001E3779B97F4A8)
  tail call void @_Z13init_viewportiiii(i32 noundef 50, i32 noundef 50, i32 noundef 700, i32 noundef 700)
  tail call void @_Z12init_zbufferii(i32 noundef 800, i32 noundef 800)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @_ZN8TGAImageC1Eiii8TGAColor(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 800, i32 noundef 800, i32 noundef 3, i40 21471806385)
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.917.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 56
  %spec.select.i11.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  %spec.select.i11.1.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %spec.select.i11.2.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 96
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 112
  %spec.select.i11.i.i9.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %spec.select.i11.1.i.i10.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %spec.select.i11.2.i.i11.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 192
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 208
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 64
  %.sroa.4.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %16, i64 72
  %spec.select.i11.i.i.i52 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %spec.select.i11.1.i.i.i53 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %spec.select.i11.2.i.i.i54 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 128
  %.sroa.517.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %16, i64 144
  %spec.select.i11.i.i9.i70 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %spec.select.i11.1.i.i10.i71 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %spec.select.i11.2.i.i11.i72 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 224
  %.sroa.7.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %16, i64 240
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 80
  %.sroa.4.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %16, i64 88
  %spec.select.i11.i.i.i82 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %spec.select.i11.1.i.i.i83 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %spec.select.i11.2.i.i.i84 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 160
  %.sroa.517.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %16, i64 176
  %spec.select.i11.i.i9.i100 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %spec.select.i11.1.i.i10.i101 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %spec.select.i11.2.i.i11.i102 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 256
  %.sroa.7.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %16, i64 272
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 80
  %wide.trip.count = zext nneg i32 %0 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 48
  br label %bb.i

._crit_edge.i.i:                                  ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.az, ptr %18, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.az, ptr noundef nonnull align 1 dereferenceable(15) @.str.2, i64 15, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 15, ptr %i.ba, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw i8, ptr %18, i64 31
  store i8 0, ptr %i.bb, align 1, !tbaa !39
  %i.bc = invoke noundef zeroext i1 @_ZNK8TGAImage14write_tga_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr nofree noundef nonnull align 8 dereferenceable(32) %18, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ad unwind label %bb.af     ; 0 uses

bb.i:                                             ; preds = %bb.h, %bb.t
  %indvars.iv = phi i64 [ 1, %bb.h ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !10 ; 4 uses
  store ptr %i.ad, ptr %15, align 8, !tbaa !43
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #14
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #13 ; 8 uses
  %i.bh = icmp ugt i64 %i.bg, 15
  br i1 %i.bh, label %bb.l, label %._crit_edge.i.i35

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp slt i64 %i.bg, 0
  br i1 %i.bi, label %.noexc.i38, label %bb.m

.noexc.i38:                                       ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #14
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %.noexc.i38
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bj = add nuw i64 %i.bg, 1                    ; 2 uses
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %.noexc11.i37, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36, !prof !47

.noexc11.i37:                                     ; preds = %bb.m
  invoke void @_ZSt17__throw_bad_allocv() #14
          to label %.noexc41 unwind label %.loopexit.split-lp

.noexc41:                                         ; preds = %.noexc11.i37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36: ; preds = %bb.m
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #15
          to label %.noexc42 unwind label %.loopexit ; 2 uses

.noexc42:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36
  store ptr %i.bl, ptr %15, align 8, !tbaa !48
  store i64 %i.bg, ptr %i.ad, align 8, !tbaa !39
  br label %._crit_edge.i.i35

._crit_edge.i.i35:                                ; preds = %.noexc42, %bb.k
  %i.bm = phi ptr [ %i.bl, %.noexc42 ], [ %i.ad, %bb.k ] ; 3 uses
  switch i64 %i.bg, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i35
  %i.bn = load i8, ptr %i.be, align 1, !tbaa !39
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !39
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %i.be, i64 %i.bg, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i35
  store i64 %i.bg, ptr %i.ae, align 8, !tbaa !45
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bg
  store i8 0, ptr %i.bo, align 1, !tbaa !39
  invoke void @_ZN5ModelC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %14, ptr nofree noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %15, align 8, !tbaa !48   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ad
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.br = load i64, ptr %i.ad, align 8, !tbaa !39
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV11PhongShader, i64 16), ptr %16, align 8, !tbaa !13
  store ptr %14, ptr %i.af, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ay, i8 0, i64 240, i1 false)
  %i.bt = load <8 x double>, ptr @ModelView, align 8, !tbaa !41, !noalias !51 ; 4 uses
  %i.bu = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.bv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.bw = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.bx = fadd <2 x double> %i.bw, %i.bv
  %i.by = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.bz = fadd <2 x double> %i.by, %i.bx
  %i.ca = shufflevector <8 x double> %i.bt, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.cb = fadd <2 x double> %i.ca, %i.bz          ; 3 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 1 ; 2 uses
  %i.cd = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.ce = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 64), align 8, !tbaa !41, !noalias !51 ; 4 uses
  %i.cf = shufflevector <8 x double> %i.ce, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.cg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.ch = shufflevector <8 x double> %i.ce, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ci = fadd <2 x double> %i.ch, %i.cg
  %i.cj = shufflevector <8 x double> %i.ce, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ck = fadd <2 x double> %i.cj, %i.ci
  %i.cl = shufflevector <8 x double> %i.ce, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.cm = fadd <2 x double> %i.cl, %i.ck          ; 3 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 1 ; 2 uses
  %i.co = call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double 0.000000e+00)
  %i.cp = extractelement <2 x double> %i.cm, i64 0 ; 2 uses
  %i.cq = call double @llvm.fmuladd.f64(double %i.cp, double %i.cp, double %i.co)
  %i.cr = call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %i.cq)
  %i.cs = call noundef double @llvm.fmuladd.f64(double %i.cd, double %i.cd, double %i.cr)
  %sqrt.i.i.i = call noundef double @llvm.sqrt.f64(double %i.cs)
  %i.ct = insertelement <2 x double> poison, double %sqrt.i.i.i, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = fdiv <2 x double> %i.cm, %i.cu
  %i.cw = fdiv <2 x double> %i.cb, %i.cu
  store <2 x double> %i.cw, ptr %i.ag, align 8, !tbaa !41
  store <2 x double> %i.cv, ptr %.sroa.917.0..sroa_idx.i, align 8, !tbaa !41
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aa
  %.0 = phi i32 [ %i.mr, %bb.aa ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
end_hunk_0
