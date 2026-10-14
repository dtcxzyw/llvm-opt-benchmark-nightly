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
  %3 = alloca %struct.vec.18, align 8             ; 7 uses
  %4 = alloca %struct.vec.18, align 8             ; 7 uses
  %5 = alloca %struct.mat, align 8                ; 5 uses
  %6 = alloca %struct.vec.18, align 8             ; 7 uses
  %7 = alloca %struct.vec.18, align 8             ; 7 uses
  %8 = alloca %struct.mat, align 8                ; 5 uses
  %9 = alloca %struct.vec.18, align 8             ; 7 uses
  %10 = alloca %struct.vec.18, align 8            ; 7 uses
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
  %i.c = load ptr, ptr %1, align 8, !tbaa !55     ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !57
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !67
  %i.j = or i32 %i.i, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #13
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.c, i64 noundef %i.k) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c, %bb.d
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 14) ; 0 uses
  %i.n = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !57
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !80
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !81
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.s)
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.s, i8 noundef signext 10), !inline_history !26
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.w, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) ; 0 uses
  br label %bb.ah

bb.h:                                             ; preds = %bb.a
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %11, align 16, !tbaa !14
  %.sroa.7130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store double 2.000000e+00, ptr %.sroa.7130.0..sroa_idx, align 16, !tbaa !14
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
  store ptr %i.az, ptr %18, align 8, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.az, ptr noundef nonnull align 1 dereferenceable(15) @.str.2, i64 15, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 15, ptr %i.ba, align 8, !tbaa !85
  %i.bb = getelementptr inbounds nuw i8, ptr %18, i64 31
  store i8 0, ptr %i.bb, align 1, !tbaa !81
  %i.bc = invoke noundef zeroext i1 @_ZNK8TGAImage14write_tga_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr nofree noundef nonnull align 8 dereferenceable(32) %18, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ad unwind label %bb.af     ; 0 uses

bb.i:                                             ; preds = %bb.h, %bb.t
  %indvars.iv = phi i64 [ 1, %bb.h ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !55 ; 4 uses
  store ptr %i.ad, ptr %15, align 8, !tbaa !83
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
  br i1 %i.bk, label %.noexc11.i37, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36, !prof !86

.noexc11.i37:                                     ; preds = %bb.m
  invoke void @_ZSt17__throw_bad_allocv() #14
          to label %.noexc41 unwind label %.loopexit.split-lp

.noexc41:                                         ; preds = %.noexc11.i37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36: ; preds = %bb.m
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #15
          to label %.noexc42 unwind label %.loopexit ; 2 uses

.noexc42:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36
  store ptr %i.bl, ptr %15, align 8, !tbaa !87
  store i64 %i.bg, ptr %i.ad, align 8, !tbaa !81
  br label %._crit_edge.i.i35

._crit_edge.i.i35:                                ; preds = %.noexc42, %bb.k
  %i.bm = phi ptr [ %i.bl, %.noexc42 ], [ %i.ad, %bb.k ] ; 3 uses
  switch i64 %i.bg, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i35
  %i.bn = load i8, ptr %i.be, align 1, !tbaa !81
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !81
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %i.be, i64 %i.bg, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i35
  store i64 %i.bg, ptr %i.ae, align 8, !tbaa !85
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bg
  store i8 0, ptr %i.bo, align 1, !tbaa !81
  invoke void @_ZN5ModelC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %14, ptr nofree noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %15, align 8, !tbaa !87   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ad
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.br = load i64, ptr %i.ad, align 8, !tbaa !81
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV11PhongShader, i64 16), ptr %16, align 8, !tbaa !57
  store ptr %14, ptr %i.af, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ay, i8 0, i64 240, i1 false)
  %i.bt = load <8 x double>, ptr @ModelView, align 8, !tbaa !14, !noalias !89 ; 4 uses
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
  %i.ce = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 64), align 8, !tbaa !14, !noalias !89 ; 4 uses
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
  store <2 x double> %i.cw, ptr %i.ag, align 8, !tbaa !14
  store <2 x double> %i.cv, ptr %.sroa.917.0..sroa_idx.i, align 8, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aa
  %.0 = phi i32 [ %i.lz, %bb.aa ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
  %i.cx = invoke noundef i32 @_ZNK5Model6nfacesEv(ptr noundef nonnull align 8 dereferenceable(264) %14)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cy = icmp slt i32 %.0, %i.cx
  br i1 %i.cy, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @_ZN5ModelD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.i.i, label %bb.i, !llvm.loop !29

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

.loopexit.split-lp:                               ; preds = %bb.j, %.noexc.i38, %.noexc11.i37
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.u:                                             ; preds = %bb.p
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %15, align 8, !tbaa !87   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.ad
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.u
  %i.dc = load i64, ptr %i.ad, align 8, !tbaa !81
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.v:                                             ; preds = %bb.r
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.df = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !90, !nonnull !21, !align !22
  %i.dg = invoke { double, double } @_ZNK5Model2uvEii(ptr noundef nonnull align 8 dereferenceable(264) %i.df, i32 noundef %.0, i32 noundef 0)
          to label %.noexc47 unwind label %bb.ab  ; 2 uses

.noexc47:                                         ; preds = %bb.w
  %i.dh = extractvalue { double, double } %i.dg, 0
  %i.di = extractvalue { double, double } %i.dg, 1
  store double %i.dh, ptr %i.ah, align 8, !tbaa !14, !noalias !90
  store double %i.di, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13, !noalias !90
  invoke void @_ZNK3matILi4ELi4EE16invert_transposeEv(ptr dead_on_unwind nonnull writable sret(%struct.mat) align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) @ModelView)
          to label %.noexc48 unwind label %bb.ab

.noexc48:                                         ; preds = %.noexc47
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !90
  %i.dj = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !90, !nonnull !21, !align !22
  invoke void @_ZNK5Model6normalEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %9, ptr noundef nonnull align 8 dereferenceable(264) %i.dj, i32 noundef %.0, i32 noundef 0)
          to label %.noexc49 unwind label %bb.ab

.noexc49:                                         ; preds = %.noexc48
  %i.dk = load <8 x double>, ptr %8, align 8, !tbaa !14, !noalias !91 ; 4 uses
  %i.dl = shufflevector <8 x double> %i.dk, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.dm = shufflevector <8 x double> %i.dk, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.dn = shufflevector <8 x double> %i.dk, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.do = shufflevector <8 x double> %i.dk, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.dp = load <8 x double>, ptr %i.ai, align 8, !tbaa !14, !noalias !91 ; 4 uses
  %i.dq = load double, ptr %spec.select.i11.i.i.i, align 8, !tbaa !14, !noalias !91
  %19 = load <1 x double>, ptr %spec.select.i11.1.i.i.i, align 8
  %20 = load <1 x double>, ptr %spec.select.i11.2.i.i.i, align 8
  %21 = load <1 x double>, ptr %9, align 8
  %i.dr = shufflevector <8 x double> %i.dp, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.ds = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.dt, <2 x double> zeroinitializer)
  %i.dv = shufflevector <8 x double> %i.dp, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.dw = shufflevector <1 x double> %19, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.dw, <2 x double> %i.du)
  %i.dy = shufflevector <8 x double> %i.dp, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.dz = shufflevector <1 x double> %20, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ea = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.dz, <2 x double> %i.dx)
  %i.eb = shufflevector <8 x double> %i.dp, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ec = shufflevector <1 x double> %21, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.ec, <2 x double> %i.ea)
  %i.ee = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dt, <2 x double> zeroinitializer)
  %i.ef = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dw, <2 x double> %i.ee)
  %i.eg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.dz, <2 x double> %i.ef)
  %i.eh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.ec, <2 x double> %i.eg)
  store <2 x double> %i.eh, ptr %i.aj, align 8, !tbaa !14, !noalias !90
  store <2 x double> %i.ed, ptr %.sroa.517.0..sroa_idx.i, align 8, !tbaa !14, !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !noalias !90
  %i.ei = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !90, !nonnull !21, !align !22
  invoke void @_ZNK5Model4vertEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %10, ptr noundef nonnull align 8 dereferenceable(264) %i.ei, i32 noundef %.0, i32 noundef 0)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %.noexc49
  %i.ej = load <8 x double>, ptr @ModelView, align 8, !tbaa !14, !noalias !92 ; 4 uses
  %i.ek = shufflevector <8 x double> %i.ej, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.el = shufflevector <8 x double> %i.ej, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.em = shufflevector <8 x double> %i.ej, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.en = shufflevector <8 x double> %i.ej, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.eo = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 64), align 8, !tbaa !14, !noalias !92 ; 4 uses
  %i.ep = load double, ptr %spec.select.i11.i.i9.i, align 8, !tbaa !14, !noalias !92
  %22 = load <1 x double>, ptr %spec.select.i11.1.i.i10.i, align 8
  %23 = load <1 x double>, ptr %spec.select.i11.2.i.i11.i, align 8
  %24 = load <1 x double>, ptr %10, align 8
  %i.eq = shufflevector <8 x double> %i.eo, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.er = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.et = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.es, <2 x double> zeroinitializer)
  %i.eu = shufflevector <8 x double> %i.eo, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ev = shufflevector <1 x double> %22, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ew = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.ev, <2 x double> %i.et)
  %i.ex = shufflevector <8 x double> %i.eo, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ey = shufflevector <1 x double> %23, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> %i.ey, <2 x double> %i.ew)
  %i.fa = shufflevector <8 x double> %i.eo, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.fb = shufflevector <1 x double> %24, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fb, <2 x double> %i.ez) ; 3 uses
  %i.fd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.es, <2 x double> zeroinitializer)
  %i.fe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.ev, <2 x double> %i.fd)
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.ey, <2 x double> %i.fe)
  %i.fg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.fb, <2 x double> %i.ff) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !noalias !90
  store <2 x double> %i.fg, ptr %i.ak, align 8, !tbaa !14, !noalias !90
  store <2 x double> %i.fc, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !14, !noalias !90
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.fh = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @Perspective, i64 64), align 8, !tbaa !14, !noalias !94 ; 4 uses
  %i.fi = shufflevector <8 x double> %i.fh, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.fj = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.fj, <2 x double> zeroinitializer)
  %i.fl = shufflevector <8 x double> %i.fh, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.fm = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.fm, <2 x double> %i.fk)
  %i.fo = shufflevector <8 x double> %i.fh, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.fp = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fp, <2 x double> %i.fn)
  %i.fr = shufflevector <8 x double> %i.fh, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.fs = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ft = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fs, <2 x double> %i.fq)
  store <2 x double> %i.ft, ptr %i.al, align 16, !tbaa !14, !alias.scope !94
  %i.fu = load <8 x double>, ptr @Perspective, align 8, !tbaa !14, !noalias !94 ; 4 uses
  %i.fv = shufflevector <8 x double> %i.fu, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.fw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.fj, <2 x double> zeroinitializer)
  %i.fx = shufflevector <8 x double> %i.fu, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.fy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.fm, <2 x double> %i.fw)
  %i.fz = shufflevector <8 x double> %i.fu, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.fp, <2 x double> %i.fy)
  %i.gb = shufflevector <8 x double> %i.fu, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.gc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.fs, <2 x double> %i.ga)
  store <2 x double> %i.gc, ptr %17, align 16, !tbaa !14, !alias.scope !94
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.gd = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !95, !nonnull !21, !align !22
  %i.ge = invoke { double, double } @_ZNK5Model2uvEii(ptr noundef nonnull align 8 dereferenceable(264) %i.gd, i32 noundef %.0, i32 noundef 1)
          to label %.noexc76 unwind label %bb.ab  ; 2 uses

.noexc76:                                         ; preds = %bb.x
  %i.gf = extractvalue { double, double } %i.ge, 0
  %i.gg = extractvalue { double, double } %i.ge, 1
  store double %i.gf, ptr %i.an, align 8, !tbaa !14, !noalias !95
  store double %i.gg, ptr %.sroa.4.0..sroa_idx.i51, align 8, !tbaa !14, !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !95
  invoke void @_ZNK3matILi4ELi4EE16invert_transposeEv(ptr dead_on_unwind nonnull writable sret(%struct.mat) align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) @ModelView)
          to label %.noexc77 unwind label %bb.ab

.noexc77:                                         ; preds = %.noexc76
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !95
  %i.gh = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !95, !nonnull !21, !align !22
  invoke void @_ZNK5Model6normalEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %6, ptr noundef nonnull align 8 dereferenceable(264) %i.gh, i32 noundef %.0, i32 noundef 1)
          to label %.noexc78 unwind label %bb.ab

.noexc78:                                         ; preds = %.noexc77
  %i.gi = load <8 x double>, ptr %5, align 8, !tbaa !14, !noalias !96 ; 4 uses
  %i.gj = shufflevector <8 x double> %i.gi, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.gk = shufflevector <8 x double> %i.gi, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.gl = shufflevector <8 x double> %i.gi, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.gm = shufflevector <8 x double> %i.gi, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.gn = load <8 x double>, ptr %i.ao, align 8, !tbaa !14, !noalias !96 ; 4 uses
  %i.go = load double, ptr %spec.select.i11.i.i.i52, align 8, !tbaa !14, !noalias !96
  %25 = load <1 x double>, ptr %spec.select.i11.1.i.i.i53, align 8
  %26 = load <1 x double>, ptr %spec.select.i11.2.i.i.i54, align 8
  %27 = load <1 x double>, ptr %6, align 8
  %i.gp = shufflevector <8 x double> %i.gn, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.gq = insertelement <2 x double> poison, double %i.go, i64 0
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.gr, <2 x double> zeroinitializer)
  %i.gt = shufflevector <8 x double> %i.gn, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.gu = shufflevector <1 x double> %25, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.gu, <2 x double> %i.gs)
  %i.gw = shufflevector <8 x double> %i.gn, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.gx = shufflevector <1 x double> %26, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.gx, <2 x double> %i.gv)
  %i.gz = shufflevector <8 x double> %i.gn, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ha = shufflevector <1 x double> %27, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.ha, <2 x double> %i.gy)
  %i.hc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.gr, <2 x double> zeroinitializer)
  %i.hd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gu, <2 x double> %i.hc)
  %i.he = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> %i.gx, <2 x double> %i.hd)
  %i.hf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.ha, <2 x double> %i.he)
  store <2 x double> %i.hf, ptr %i.ap, align 8, !tbaa !14, !noalias !95
  store <2 x double> %i.hb, ptr %.sroa.517.0..sroa_idx.i68, align 8, !tbaa !14, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13, !noalias !95
  %i.hg = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !95, !nonnull !21, !align !22
  invoke void @_ZNK5Model4vertEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %7, ptr noundef nonnull align 8 dereferenceable(264) %i.hg, i32 noundef %.0, i32 noundef 1)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %.noexc78
  %i.hh = load <8 x double>, ptr @ModelView, align 8, !tbaa !14, !noalias !97 ; 4 uses
  %i.hi = shufflevector <8 x double> %i.hh, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.hj = shufflevector <8 x double> %i.hh, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.hk = shufflevector <8 x double> %i.hh, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.hl = shufflevector <8 x double> %i.hh, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.hm = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 64), align 8, !tbaa !14, !noalias !97 ; 4 uses
  %i.hn = load double, ptr %spec.select.i11.i.i9.i70, align 8, !tbaa !14, !noalias !97
  %28 = load <1 x double>, ptr %spec.select.i11.1.i.i10.i71, align 8
  %29 = load <1 x double>, ptr %spec.select.i11.2.i.i11.i72, align 8
  %30 = load <1 x double>, ptr %7, align 8
  %i.ho = shufflevector <8 x double> %i.hm, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.hp = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.hq, <2 x double> zeroinitializer)
  %i.hs = shufflevector <8 x double> %i.hm, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ht = shufflevector <1 x double> %28, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.ht, <2 x double> %i.hr)
  %i.hv = shufflevector <8 x double> %i.hm, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.hw = shufflevector <1 x double> %29, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hw, <2 x double> %i.hu)
  %i.hy = shufflevector <8 x double> %i.hm, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.hz = shufflevector <1 x double> %30, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.hz, <2 x double> %i.hx) ; 3 uses
  %i.ib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.hq, <2 x double> zeroinitializer)
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> %i.ht, <2 x double> %i.ib)
  %i.id = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.hw, <2 x double> %i.ic)
  %i.ie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.hz, <2 x double> %i.id) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13, !noalias !95
  store <2 x double> %i.ie, ptr %i.aq, align 8, !tbaa !14, !noalias !95
  store <2 x double> %i.ia, ptr %.sroa.7.0..sroa_idx.i74, align 8, !tbaa !14, !noalias !95
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.if = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @Perspective, i64 64), align 8, !tbaa !14, !noalias !99 ; 4 uses
  %i.ig = shufflevector <8 x double> %i.if, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.ih = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.ih, <2 x double> zeroinitializer)
  %i.ij = shufflevector <8 x double> %i.if, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ik = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.il = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.ik, <2 x double> %i.ii)
  %i.im = shufflevector <8 x double> %i.if, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.in = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.io = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.im, <2 x double> %i.in, <2 x double> %i.il)
  %i.ip = shufflevector <8 x double> %i.if, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.iq = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ir = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.iq, <2 x double> %i.io)
  store <2 x double> %i.ir, ptr %i.ar, align 16, !tbaa !14, !alias.scope !99
  %i.is = load <8 x double>, ptr @Perspective, align 8, !tbaa !14, !noalias !99 ; 4 uses
  %i.it = shufflevector <8 x double> %i.is, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.iu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.it, <2 x double> %i.ih, <2 x double> zeroinitializer)
  %i.iv = shufflevector <8 x double> %i.is, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.iw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.ik, <2 x double> %i.iu)
  %i.ix = shufflevector <8 x double> %i.is, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.iy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.in, <2 x double> %i.iw)
  %i.iz = shufflevector <8 x double> %i.is, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ja = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> %i.iq, <2 x double> %i.iy)
  store <2 x double> %i.ja, ptr %i.am, align 16, !tbaa !14, !alias.scope !99
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.jb = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !100, !nonnull !21, !align !22
  %i.jc = invoke { double, double } @_ZNK5Model2uvEii(ptr noundef nonnull align 8 dereferenceable(264) %i.jb, i32 noundef %.0, i32 noundef 2)
          to label %.noexc106 unwind label %bb.ab ; 2 uses

.noexc106:                                        ; preds = %bb.y
  %i.jd = extractvalue { double, double } %i.jc, 0
  %i.je = extractvalue { double, double } %i.jc, 1
  store double %i.jd, ptr %i.at, align 8, !tbaa !14, !noalias !100
  store double %i.je, ptr %.sroa.4.0..sroa_idx.i81, align 8, !tbaa !14, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !100
  invoke void @_ZNK3matILi4ELi4EE16invert_transposeEv(ptr dead_on_unwind nonnull writable sret(%struct.mat) align 8 %2, ptr noundef nonnull align 8 dereferenceable(128) @ModelView)
          to label %.noexc107 unwind label %bb.ab

.noexc107:                                        ; preds = %.noexc106
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !100
  %i.jf = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !100, !nonnull !21, !align !22
  invoke void @_ZNK5Model6normalEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.jf, i32 noundef %.0, i32 noundef 2)
          to label %.noexc108 unwind label %bb.ab

.noexc108:                                        ; preds = %.noexc107
  %i.jg = load <8 x double>, ptr %2, align 8, !tbaa !14, !noalias !101 ; 4 uses
  %i.jh = shufflevector <8 x double> %i.jg, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.ji = shufflevector <8 x double> %i.jg, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.jj = shufflevector <8 x double> %i.jg, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.jk = shufflevector <8 x double> %i.jg, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.jl = load <8 x double>, ptr %i.au, align 8, !tbaa !14, !noalias !101 ; 4 uses
  %i.jm = load double, ptr %spec.select.i11.i.i.i82, align 8, !tbaa !14, !noalias !101
  %31 = load <1 x double>, ptr %spec.select.i11.1.i.i.i83, align 8
  %32 = load <1 x double>, ptr %spec.select.i11.2.i.i.i84, align 8
  %33 = load <1 x double>, ptr %3, align 8
  %i.jn = shufflevector <8 x double> %i.jl, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.jo = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.jp = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.jp, <2 x double> zeroinitializer)
  %i.jr = shufflevector <8 x double> %i.jl, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.js = shufflevector <1 x double> %31, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %i.js, <2 x double> %i.jq)
  %i.ju = shufflevector <8 x double> %i.jl, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.jv = shufflevector <1 x double> %32, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> %i.jv, <2 x double> %i.jt)
  %i.jx = shufflevector <8 x double> %i.jl, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.jy = shufflevector <1 x double> %33, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> %i.jy, <2 x double> %i.jw)
  %i.ka = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.jp, <2 x double> zeroinitializer)
  %i.kb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> %i.js, <2 x double> %i.ka)
  %i.kc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.jv, <2 x double> %i.kb)
  %i.kd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.jy, <2 x double> %i.kc)
  store <2 x double> %i.kd, ptr %i.av, align 8, !tbaa !14, !noalias !100
  store <2 x double> %i.jz, ptr %.sroa.517.0..sroa_idx.i98, align 8, !tbaa !14, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13, !noalias !100
  %i.ke = load ptr, ptr %i.af, align 8, !tbaa !20, !noalias !100, !nonnull !21, !align !22
  invoke void @_ZNK5Model4vertEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %4, ptr noundef nonnull align 8 dereferenceable(264) %i.ke, i32 noundef %.0, i32 noundef 2)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %.noexc108
  %i.kf = load <8 x double>, ptr @ModelView, align 8, !tbaa !14, !noalias !102 ; 4 uses
  %i.kg = shufflevector <8 x double> %i.kf, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.kh = shufflevector <8 x double> %i.kf, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ki = shufflevector <8 x double> %i.kf, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.kj = shufflevector <8 x double> %i.kf, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.kk = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 64), align 8, !tbaa !14, !noalias !102 ; 4 uses
  %i.kl = load double, ptr %spec.select.i11.i.i9.i100, align 8, !tbaa !14, !noalias !102
  %34 = load <1 x double>, ptr %spec.select.i11.1.i.i10.i101, align 8
  %35 = load <1 x double>, ptr %spec.select.i11.2.i.i11.i102, align 8
  %36 = load <1 x double>, ptr %4, align 8
  %i.km = shufflevector <8 x double> %i.kk, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.kn = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.ko = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> %i.ko, <2 x double> zeroinitializer)
  %i.kq = shufflevector <8 x double> %i.kk, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.kr = shufflevector <1 x double> %34, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ks = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> %i.kr, <2 x double> %i.kp)
  %i.kt = shufflevector <8 x double> %i.kk, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ku = shufflevector <1 x double> %35, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kt, <2 x double> %i.ku, <2 x double> %i.ks)
  %i.kw = shufflevector <8 x double> %i.kk, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.kx = shufflevector <1 x double> %36, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ky = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kw, <2 x double> %i.kx, <2 x double> %i.kv) ; 3 uses
  %i.kz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> %i.ko, <2 x double> zeroinitializer)
  %i.la = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kh, <2 x double> %i.kr, <2 x double> %i.kz)
  %i.lb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> %i.ku, <2 x double> %i.la)
  %i.lc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> %i.kx, <2 x double> %i.lb) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13, !noalias !100
  store <2 x double> %i.lc, ptr %i.aw, align 8, !tbaa !14, !noalias !100
  store <2 x double> %i.ky, ptr %.sroa.7.0..sroa_idx.i104, align 8, !tbaa !14, !noalias !100
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.ld = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @Perspective, i64 64), align 8, !tbaa !14, !noalias !104 ; 4 uses
  %i.le = shufflevector <8 x double> %i.ld, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.lf = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> %i.lf, <2 x double> zeroinitializer)
  %i.lh = shufflevector <8 x double> %i.ld, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.li = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %i.li, <2 x double> %i.lg)
  %i.lk = shufflevector <8 x double> %i.ld, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ll = shufflevector <2 x double> %i.lc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> %i.ll, <2 x double> %i.lj)
  %i.ln = shufflevector <8 x double> %i.ld, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.lo = shufflevector <2 x double> %i.lc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ln, <2 x double> %i.lo, <2 x double> %i.lm)
  store <2 x double> %i.lp, ptr %i.ax, align 16, !tbaa !14, !alias.scope !104
  %i.lq = load <8 x double>, ptr @Perspective, align 8, !tbaa !14, !noalias !104 ; 4 uses
  %i.lr = shufflevector <8 x double> %i.lq, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.ls = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lr, <2 x double> %i.lf, <2 x double> zeroinitializer)
  %i.lt = shufflevector <8 x double> %i.lq, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.lu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> %i.li, <2 x double> %i.ls)
  %i.lv = shufflevector <8 x double> %i.lq, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.lw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.ll, <2 x double> %i.lu)
  %i.lx = shufflevector <8 x double> %i.lq, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ly = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lx, <2 x double> %i.lo, <2 x double> %i.lw)
  store <2 x double> %i.ly, ptr %i.as, align 16, !tbaa !14, !alias.scope !104
  invoke void @_Z9rasterizeRA3_K3vecILi4EERK7IShaderR8TGAImage(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  %i.lz = add nuw nsw i32 %.0, 1
  br label %bb.r, !llvm.loop !54

bb.ab:                                            ; preds = %.noexc108, %.noexc107, %.noexc106, %bb.y, %.noexc78, %.noexc77, %.noexc76, %bb.x, %.noexc49, %.noexc48, %.noexc47, %bb.w, %bb.z
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.v, %bb.ab
  %.pn28.pn = phi { ptr, i32 } [ %i.de, %bb.v ], [ %i.ma, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @_ZN5ModelD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %14) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.u, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.ac
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.ac ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.cz, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.ad:                                            ; preds = %._crit_edge.i.i
  %i.mb = load ptr, ptr %18, align 8, !tbaa !87   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.az
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.ad
  %i.md = load i64, ptr %i.az, align 8, !tbaa !81
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  %i.mf = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i.i, label %_ZN8TGAImageD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.mh = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !25
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.mg to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %i.ml) #16
  br label %_ZN8TGAImageD2Ev.exit

_ZN8TGAImageD2Ev.exit:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.ah

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.mm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mn = load ptr, ptr %18, align 8, !tbaa !87   ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.az
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.af
  %i.mp = load i64, ptr %i.az, align 8, !tbaa !81
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %i.mm, %bb.af ]
  %i.mr = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i117 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i117, label %_ZN8TGAImageD2Ev.exit118, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.mt = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !25
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.ms to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mx) #16
  br label %_ZN8TGAImageD2Ev.exit118

_ZN8TGAImageD2Ev.exit118:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  resume { ptr, i32 } %.pn28.pn.pn.pn

bb.ah:                                            ; preds = %_ZN8TGAImageD2Ev.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.023 = phi i32 [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %_ZN8TGAImageD2Ev.exit ]
  ret i32 %.023
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @_Z6lookat3vecILi3EES0_S0_(ptr noundef byval(%struct.vec) align 8, ptr noundef byval(%struct.vec) align 8, ptr noundef byval(%struct.vec) align 8) local_unnamed_addr #3

declare void @_Z16init_perspectived(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_Z13init_viewportiiii(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_Z12init_zbufferii(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN8TGAImageC1Eiii8TGAColor(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef, i32 noundef, i40) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN5ModelC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264), ptr nofree noundef align 8 dereferenceable(32)) unnamed_addr #3

declare noundef i32 @_ZNK5Model6nfacesEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11PhongShader6vertexEii(ptr dead_on_unwind noalias writable sret(%struct.vec.18) align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %struct.mat, align 8                ; 5 uses
  %5 = alloca %struct.vec.18, align 8             ; 7 uses
  %6 = alloca %struct.vec.18, align 8             ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.c = tail call { double, double } @_ZNK5Model2uvEii(ptr noundef nonnull align 8 dereferenceable(264) %i.b, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.d = extractvalue { double, double } %i.c, 0
  %i.e = extractvalue { double, double } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = sext i32 %3 to i64                       ; 3 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g ; 2 uses
  store double %i.d, ptr %i.h, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store double %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZNK3matILi4ELi4EE16invert_transposeEv(ptr dead_on_unwind nonnull writable sret(%struct.mat) align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) @ModelView)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !20, !nonnull !21, !align !22
  call void @_ZNK5Model6normalEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %5, ptr noundef nonnull align 8 dereferenceable(264) %i.i, i32 noundef %2, i32 noundef %3)
  %spec.select.i11.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %spec.select.i11.1.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %spec.select.i11.2.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.g ; 2 uses
  %i.m = load <8 x double>, ptr %4, align 8, !tbaa !14, !noalias !111 ; 4 uses
  %i.n = shufflevector <8 x double> %i.m, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.o = shufflevector <8 x double> %i.m, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.p = shufflevector <8 x double> %i.m, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.q = shufflevector <8 x double> %i.m, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load <8 x double>, ptr %i.j, align 8, !tbaa !14, !noalias !111 ; 4 uses
  %i.s = load double, ptr %spec.select.i11.i.i, align 8, !tbaa !14, !noalias !111
  %7 = load <1 x double>, ptr %spec.select.i11.1.i.i, align 8
  %8 = load <1 x double>, ptr %spec.select.i11.2.i.i, align 8
  %9 = load <1 x double>, ptr %5, align 8
  %i.t = shufflevector <8 x double> %i.r, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.u = insertelement <2 x double> poison, double %i.s, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.v, <2 x double> zeroinitializer)
  %i.x = shufflevector <8 x double> %i.r, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.y = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.y, <2 x double> %i.w)
  %i.aa = shufflevector <8 x double> %i.r, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ab = shufflevector <1 x double> %8, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.ab, <2 x double> %i.z)
  %i.ad = shufflevector <8 x double> %i.r, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ae = shufflevector <1 x double> %9, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.ae, <2 x double> %i.ac)
  %i.ag = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.v, <2 x double> zeroinitializer)
  %i.ah = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.y, <2 x double> %i.ag)
  %i.ai = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.ab, <2 x double> %i.ah)
  %i.aj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.ae, <2 x double> %i.ai)
  store <2 x double> %i.aj, ptr %i.l, align 8, !tbaa !14
  store <2 x double> %i.af, ptr %.sroa.517.0..sroa_idx, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !20, !nonnull !21, !align !22
  call void @_ZNK5Model4vertEii(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %6, ptr noundef nonnull align 8 dereferenceable(264) %i.ak, i32 noundef %2, i32 noundef %3)
  %spec.select.i11.i.i9 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %spec.select.i11.1.i.i10 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %spec.select.i11.2.i.i11 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.am = getelementptr inbounds [32 x i8], ptr %i.al, i64 %i.g ; 2 uses
  %i.an = load <8 x double>, ptr @ModelView, align 8, !tbaa !14, !noalias !112 ; 4 uses
  %i.ao = shufflevector <8 x double> %i.an, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.ap = shufflevector <8 x double> %i.an, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.aq = shufflevector <8 x double> %i.an, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ar = shufflevector <8 x double> %i.an, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.as = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @ModelView, i64 64), align 8, !tbaa !14, !noalias !112 ; 4 uses
  %i.at = load double, ptr %spec.select.i11.i.i9, align 8, !tbaa !14, !noalias !112
  %10 = load <1 x double>, ptr %spec.select.i11.1.i.i10, align 8
  %11 = load <1 x double>, ptr %spec.select.i11.2.i.i11, align 8
  %12 = load <1 x double>, ptr %6, align 8
  %i.au = shufflevector <8 x double> %i.as, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.av = insertelement <2 x double> poison, double %i.at, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ax = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.aw, <2 x double> zeroinitializer)
  %i.ay = shufflevector <8 x double> %i.as, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.az = shufflevector <1 x double> %10, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.az, <2 x double> %i.ax)
  %i.bb = shufflevector <8 x double> %i.as, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.bc = shufflevector <1 x double> %11, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bc, <2 x double> %i.ba)
  %i.be = shufflevector <8 x double> %i.as, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.bf = shufflevector <1 x double> %12, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.bf, <2 x double> %i.bd) ; 3 uses
  %i.bh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.aw, <2 x double> zeroinitializer)
  %i.bi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.az, <2 x double> %i.bh)
  %i.bj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.bc, <2 x double> %i.bi)
  %i.bk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.bf, <2 x double> %i.bj) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  store <2 x double> %i.bk, ptr %i.am, align 8, !tbaa !14
  store <2 x double> %i.bg, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load <8 x double>, ptr getelementptr inbounds nuw (i8, ptr @Perspective, i64 64), align 8, !tbaa !14, !noalias !113 ; 4 uses
  %i.bn = shufflevector <8 x double> %i.bm, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.bo = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bo, <2 x double> zeroinitializer)
  %i.bq = shufflevector <8 x double> %i.bm, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.br = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.br, <2 x double> %i.bp)
  %i.bt = shufflevector <8 x double> %i.bm, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.bu = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bu, <2 x double> %i.bs)
  %i.bw = shufflevector <8 x double> %i.bm, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.bx = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.by = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bx, <2 x double> %i.bv)
  store <2 x double> %i.by, ptr %i.bl, align 8, !tbaa !14, !alias.scope !113
  %i.bz = load <8 x double>, ptr @Perspective, align 8, !tbaa !14, !noalias !113 ; 4 uses
  %i.ca = shufflevector <8 x double> %i.bz, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.cb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.bo, <2 x double> zeroinitializer)
  %i.cc = shufflevector <8 x double> %i.bz, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.cd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.br, <2 x double> %i.cb)
  %i.ce = shufflevector <8 x double> %i.bz, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.cf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.bu, <2 x double> %i.cd)
  %i.cg = shufflevector <8 x double> %i.bz, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ch = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.bx, <2 x double> %i.cf)
  store <2 x double> %i.ch, ptr %0, align 8, !tbaa !14, !alias.scope !113
  ret void
}

declare void @_Z9rasterizeRA3_K3vecILi4EERK7IShaderR8TGAImage(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5ModelD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN8TGAImageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #16
  br label %_ZN8TGAImageD2Ev.exit

_ZN8TGAImageD2Ev.exit:                            ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i1, label %_ZN8TGAImageD2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZN8TGAImageD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #16
  br label %_ZN8TGAImageD2Ev.exit2

_ZN8TGAImageD2Ev.exit2:                           ; preds = %_ZN8TGAImageD2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i3, label %_ZN8TGAImageD2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZN8TGAImageD2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #16
  br label %_ZN8TGAImageD2Ev.exit4

_ZN8TGAImageD2Ev.exit4:                           ; preds = %_ZN8TGAImageD2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !115  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8TGAImageD2Ev.exit4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !116
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8TGAImageD2Ev.exit4, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit6, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !116
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6

_ZNSt6vectorIiSaIiEED2Ev.exit6:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !116
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit8

_ZNSt6vectorIiSaIiEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !119 ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !120
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #16
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit

_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit8, %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !124
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #16
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit

_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit, %bb.i
  %i.be = load ptr, ptr %0, align 8, !tbaa !123   ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !124
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #16
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit12

_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit12:       ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit, %bb.j
  ret void
}

declare noundef zeroext i1 @_ZNK8TGAImage14write_tga_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(40), ptr nofree noundef align 8 dereferenceable(32), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i48 @_ZNK11PhongShader8fragmentE3vecILi3EE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef byval(%struct.vec) align 8 %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.vec.19, align 8             ; 7 uses
  %3 = alloca %struct.vec.18, align 8             ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.9239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %spec.select.i.1.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sroa.22247.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load double, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.3.0.copyload.i = load double, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !14 ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load double, ptr %.in.i.i, align 8, !tbaa !14 ; 3 uses
  %i.g = fsub double %.sroa.3.0.copyload.i, %i.f  ; 2 uses
  %i.h = load double, ptr %i.d, align 8, !tbaa !14 ; 3 uses
  %i.i = fsub double %.sroa.0.0.copyload.i, %i.h  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0.0.copyload.i15 = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %.sroa.3.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.3.0.copyload.i17 = load double, ptr %.sroa.3.0..sroa_idx.i16, align 8, !tbaa !14 ; 2 uses
  %i.k = fsub double %.sroa.3.0.copyload.i17, %i.f ; 2 uses
  %i.l = fsub double %.sroa.0.0.copyload.i15, %i.h
  %i.m = fneg double %i.g
  %i.n = fneg double %i.l                         ; 2 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.g, double 0.000000e+00)
  %i.p = tail call noundef double @llvm.fmuladd.f64(double %i.k, double %i.i, double %i.o)
  %i.q = load <2 x double>, ptr %.sroa.9239.0..sroa_idx, align 8, !tbaa !14
  %i.r = load <2 x double>, ptr %spec.select.i.1.i, align 8, !tbaa !14, !noalias !129 ; 2 uses
  %i.s = fsub <2 x double> %i.q, %i.r             ; 2 uses
  %i.t = load <2 x double>, ptr %.sroa.22247.32..sroa_idx, align 8, !tbaa !14
  %i.u = fsub <2 x double> %i.t, %i.r             ; 2 uses
  %i.v = insertelement <2 x double> poison, double %i.m, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.k, i64 1
  %i.x = insertelement <2 x double> poison, double %i.p, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fdiv <2 x double> %i.w, %i.y             ; 2 uses
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.u, <2 x double> zeroinitializer)
  %i.ac = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.s, <2 x double> %i.ab) ; 3 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 1 ; 2 uses
  %i.af = extractelement <2 x double> %i.ad, i64 0 ; 2 uses
  %i.ag = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  %i.ah = load <2 x double>, ptr %i.a, align 8, !tbaa !14, !noalias !129 ; 2 uses
  %i.ai = fsub <2 x double> %i.ag, %i.ah          ; 2 uses
  %i.aj = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %i.ak = fsub <2 x double> %i.aj, %i.ah          ; 2 uses
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.ak, <2 x double> zeroinitializer)
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ai, <2 x double> %i.al) ; 3 uses
  %i.an = insertelement <2 x double> poison, double %i.i, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.n, i64 1
  %i.ap = fdiv <2 x double> %i.ao, %i.y           ; 2 uses
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.u, <2 x double> zeroinitializer)
  %i.as = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.s, <2 x double> %i.ar) ; 3 uses
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double 0.000000e+00)
  %i.av = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.au)
  %i.aw = shufflevector <2 x double> %i.am, <2 x double> %i.at, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ax = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.av, i64 0
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.aw, <2 x double> %i.ax)
  %i.az = shufflevector <2 x double> %i.am, <2 x double> %i.at, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.az, <2 x double> %i.ay) ; 2 uses
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.ak, <2 x double> zeroinitializer)
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.ai, <2 x double> %i.bb) ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bi = load <2 x double>, ptr %.sroa.8183.0..sroa_idx, align 8, !tbaa !14
  %i.bj = load <2 x double>, ptr %.sroa.9173.0..sroa_idx, align 8, !tbaa !14
  %i.bk = load <2 x double>, ptr %.sroa.9164.0..sroa_idx, align 8, !tbaa !14
  %i.bl = load <2 x double>, ptr %i.bd, align 8, !tbaa !14
  %i.bm = load <2 x double>, ptr %i.be, align 8, !tbaa !14
  %i.bn = load <2 x double>, ptr %i.bg, align 8, !tbaa !14
  %i.bo = load double, ptr %1, align 8, !tbaa !14 ; 3 uses
  %i.bp = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = fmul <2 x double> %i.bq, %i.bi
  %i.bs = fmul <2 x double> %i.bq, %i.bl
  %i.bt = load double, ptr %i.bf, align 8, !tbaa !14 ; 3 uses
  %i.bu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bw = fmul <2 x double> %i.bv, %i.bj
  %i.bx = fmul <2 x double> %i.bv, %i.bm
  %i.by = fadd <2 x double> %i.br, %i.bw
  %i.bz = fadd <2 x double> %i.bs, %i.bx
  %i.ca = load double, ptr %i.bh, align 8, !tbaa !14 ; 3 uses
  %i.cb = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cd = fmul <2 x double> %i.cc, %i.bk
  %i.ce = fmul <2 x double> %i.cc, %i.bn
  %i.cf = fadd <2 x double> %i.by, %i.cd          ; 3 uses
  %i.cg = fadd <2 x double> %i.bz, %i.ce          ; 3 uses
  %i.ch = shufflevector <2 x double> %i.bc, <2 x double> %i.cf, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ci = shufflevector <2 x double> %i.ba, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ch, <2 x double> %i.ci)
  %i.ck = shufflevector <2 x double> %i.bc, <2 x double> %i.cf, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.ck, <2 x double> %i.cj) ; 2 uses
  %i.cm = shufflevector <2 x double> %i.ba, <2 x double> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.cn = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cm) ; 2 uses
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = fdiv <2 x double> %i.ad, %i.co
  %i.cq = fdiv <2 x double> %i.am, %i.co
  %i.cr = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cs = fdiv <2 x double> %i.at, %i.cr
  %i.ct = fdiv <2 x double> %i.bc, %i.cr
  %i.cu = extractelement <2 x double> %i.cg, i64 1 ; 2 uses
  %i.cv = extractelement <2 x double> %i.cl, i64 1
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cu, double %i.cv)
  %i.cx = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  %i.cy = tail call noundef double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %i.cw)
  %sqrt.i.i35 = tail call noundef double @llvm.sqrt.f64(double %i.cy)
  %i.cz = insertelement <2 x double> poison, double %sqrt.i.i35, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.db = fdiv <2 x double> %i.cf, %i.da
  %i.dc = fdiv <2 x double> %i.cg, %i.da
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.dd = fmul double %i.f, %i.bo
  %i.de = fmul double %i.h, %i.bo
  %i.df = fmul double %.sroa.3.0.copyload.i, %i.bt
  %i.dg = fmul double %.sroa.0.0.copyload.i, %i.bt
  %i.dh = fadd double %i.dd, %i.df
  %i.di = fadd double %i.de, %i.dg
  %i.dj = fmul double %.sroa.3.0.copyload.i17, %i.ca
  %i.dk = fmul double %.sroa.0.0.copyload.i15, %i.ca
  %i.dl = fadd double %i.dh, %i.dj
  %i.dm = fadd double %i.di, %i.dk
  store double %i.dm, ptr %2, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store double %i.dl, ptr %i.dn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !20, !nonnull !21, !align !22
  call void @_ZNK5Model6normalERK3vecILi2EE(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %spec.select.i11.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %spec.select.i11.1.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %spec.select.i11.2.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dq = load double, ptr %spec.select.i11.i.i, align 8, !tbaa !14, !noalias !130
  %i.dr = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> zeroinitializer) ; 2 uses
  %4 = load <1 x double>, ptr %spec.select.i11.1.i.i, align 8
  %5 = load <1 x double>, ptr %spec.select.i11.2.i.i, align 8
  %6 = load <1 x double>, ptr %3, align 8
  %i.du = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.du, <2 x double> %i.dt)
  %i.dw = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.dw, <2 x double> %i.dv)
  %i.dy = shufflevector <1 x double> %6, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.dy, <2 x double> %i.dx) ; 3 uses
  %i.ea = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.du, <2 x double> %i.ea)
  %i.ec = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.dw, <2 x double> %i.eb)
  %i.ed = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.dy, <2 x double> %i.ec) ; 3 uses
  %i.ee = extractelement <2 x double> %i.dz, i64 1 ; 2 uses
  %i.ef = call double @llvm.fmuladd.f64(double %i.ee, double %i.ee, double 0.000000e+00)
  %i.eg = extractelement <2 x double> %i.dz, i64 0 ; 2 uses
  %i.eh = call double @llvm.fmuladd.f64(double %i.eg, double %i.eg, double %i.ef)
  %i.ei = extractelement <2 x double> %i.ed, i64 1 ; 2 uses
  %i.ej = call double @llvm.fmuladd.f64(double %i.ei, double %i.ei, double %i.eh)
  %i.ek = extractelement <2 x double> %i.ed, i64 0 ; 2 uses
  %i.el = call noundef double @llvm.fmuladd.f64(double %i.ek, double %i.ek, double %i.ej)
  %sqrt.i.i73 = call noundef double @llvm.sqrt.f64(double %i.el)
  %i.em = insertelement <2 x double> poison, double %sqrt.i.i73, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eo = fdiv <2 x double> %i.dz, %i.en          ; 2 uses
  %i.ep = fdiv <2 x double> %i.ed, %i.en          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %spec.select.i11.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.er = load double, ptr %spec.select.i11.i, align 8, !tbaa !14 ; 2 uses
  %i.es = extractelement <2 x double> %i.eo, i64 1 ; 2 uses
  %i.et = call double @llvm.fmuladd.f64(double %i.es, double %i.er, double 0.000000e+00)
  %spec.select.i11.1.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eu = load double, ptr %spec.select.i11.1.i, align 8, !tbaa !14 ; 2 uses
  %i.ev = extractelement <2 x double> %i.eo, i64 0 ; 2 uses
  %i.ew = call double @llvm.fmuladd.f64(double %i.ev, double %i.eu, double %i.et)
  %spec.select.i11.2.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ex = load double, ptr %spec.select.i11.2.i, align 8, !tbaa !14 ; 2 uses
  %i.ey = extractelement <2 x double> %i.ep, i64 1 ; 2 uses
  %i.ez = call double @llvm.fmuladd.f64(double %i.ey, double %i.ex, double %i.ew)
  %i.fa = load double, ptr %i.eq, align 8, !tbaa !14 ; 2 uses
  %i.fb = extractelement <2 x double> %i.ep, i64 0 ; 2 uses
  %i.fc = call noundef double @llvm.fmuladd.f64(double %i.fb, double %i.fa, double %i.ez) ; 6 uses
  %i.fd = fmul double %i.es, %i.fc
  %i.fe = fmul double %i.ev, %i.fc
  %i.ff = fmul double %i.ey, %i.fc
  %i.fg = fmul double %i.fb, %i.fc
  %i.fh = fmul double %i.fd, 2.000000e+00
  %i.fi = fmul double %i.fe, 2.000000e+00
  %i.fj = fmul double %i.ff, 2.000000e+00
  %i.fk = fmul double %i.fg, 2.000000e+00
  %i.fl = fsub double %i.fh, %i.er                ; 2 uses
  %i.fm = fsub double %i.fj, %i.ex                ; 2 uses
  %i.fn = fsub double %i.fk, %i.fa                ; 2 uses
  %i.fo = call double @llvm.fmuladd.f64(double %i.fl, double %i.fl, double 0.000000e+00)
  %i.fp = fcmp ogt double %i.fc, 0.000000e+00
  %.sroa.speculated102 = select i1 %i.fp, double %i.fc, double 0.000000e+00
  %i.fq = load ptr, ptr %i.do, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.fr = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model8specularEv(ptr noundef nonnull align 8 dereferenceable(264) %i.fq) ; 3 uses
  %i.fs = load double, ptr %2, align 8, !tbaa !14
  %i.ft = call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fr)
  %i.fu = sitofp i32 %i.ft to double
  %i.fv = fmul double %i.fs, %i.fu
  %i.fw = fptosi double %i.fv to i32
  %i.fx = load double, ptr %i.dn, align 8, !tbaa !14
  %i.fy = call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fr)
  %i.fz = sitofp i32 %i.fy to double
  %i.ga = fmul double %i.fx, %i.fz
  %i.gb = fptosi double %i.ga to i32
  %i.gc = call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.fr, i32 noundef %i.fw, i32 noundef %i.gb)
  %.sroa.0100.0.extract.trunc = trunc i40 %i.gc to i8
  %i.gd = uitofp i8 %.sroa.0100.0.extract.trunc to double
  %i.ge = fsub double %i.fi, %i.eu                ; 3 uses
  %i.gf = call double @llvm.fmuladd.f64(double %i.ge, double %i.ge, double %i.fo)
  %i.gg = call double @llvm.fmuladd.f64(double %i.fm, double %i.fm, double %i.gf)
  %i.gh = call noundef double @llvm.fmuladd.f64(double %i.fn, double %i.fn, double %i.gg)
  %sqrt.i.i83 = call noundef double @llvm.sqrt.f64(double %i.gh)
  %i.gi = fmul nnan double %i.gd, 2.000000e+00
  %i.gj = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.gi, i64 1
  %i.gl = insertelement <2 x double> <double poison, double 2.550000e+02>, double %sqrt.i.i83, i64 0
  %i.gm = fdiv <2 x double> %i.gk, %i.gl          ; 2 uses
  %i.gn = extractelement <2 x double> %i.gm, i64 1
  %i.go = fadd nnan double %i.gn, 5.000000e-01
  %i.gp = extractelement <2 x double> %i.gm, i64 0 ; 2 uses
  %i.gq = fcmp olt double %i.gp, 0.000000e+00
  %.sroa.speculated99 = select i1 %i.gq, double 0.000000e+00, double %i.gp
  %i.gr = call noundef double @pow(double noundef %.sroa.speculated99, double noundef 3.500000e+01) #13
  %i.gs = fmul double %i.gr, %i.go
  %i.gt = load ptr, ptr %i.do, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.gu = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model7diffuseEv(ptr noundef nonnull align 8 dereferenceable(264) %i.gt) ; 3 uses
  %i.gv = load double, ptr %2, align 8, !tbaa !14
  %i.gw = call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gu)
  %i.gx = sitofp i32 %i.gw to double
  %i.gy = fmul double %i.gv, %i.gx
  %i.gz = fptosi double %i.gy to i32
  %i.ha = load double, ptr %i.dn, align 8, !tbaa !14
  %i.hb = call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gu)
  %i.hc = sitofp i32 %i.hb to double
  %i.hd = fmul double %i.ha, %i.hc
  %i.he = fptosi double %i.hd to i32
  %i.hf = call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.gu, i32 noundef %i.gz, i32 noundef %i.he) ; 4 uses
  %.sroa.7.0.extract.shift = and i40 %i.hf, -16777216
  %i.hg = fadd nnan double %.sroa.speculated102, 4.000000e-01
  %i.hh = fadd double %i.hg, %i.gs                ; 3 uses
  %i.hi = trunc i40 %i.hf to i8
  %i.hj = uitofp i8 %i.hi to double
  %i.hk = fmul double %i.hh, %i.hj
  %i.hl = fptosi double %i.hk to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.hl, i32 255)
  %i.hm = lshr i40 %i.hf, 8
  %i.hn = trunc i40 %i.hm to i8
  %i.ho = uitofp i8 %i.hn to double
  %i.hp = fmul double %i.hh, %i.ho
  %i.hq = fptosi double %i.hp to i32
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.hq, i32 255)
  %i.hr = lshr i40 %i.hf, 16
  %i.hs = trunc i40 %i.hr to i8
  %i.ht = uitofp i8 %i.hs to double
  %i.hu = fmul double %i.hh, %i.ht
  %i.hv = fptosi double %i.hu to i32
  %.sroa.speculated.2 = call i32 @llvm.smin.i32(i32 %i.hv, i32 255)
  %.mask = shl i32 %.sroa.speculated.2, 16
  %i.hw = and i32 %.mask, 16711680
  %.sroa.6.0.insert.shift = zext nneg i32 %i.hw to i40
  %.sroa.6.0.insert.insert = or disjoint i40 %.sroa.7.0.extract.shift, %.sroa.6.0.insert.shift
  %.mask253 = shl i32 %.sroa.speculated.1, 8
  %i.hx = and i32 %.mask253, 65280
  %.sroa.5.0.insert.shift = zext nneg i32 %i.hx to i40
  %.sroa.5.0.insert.insert = or disjoint i40 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.mask254 = and i32 %.sroa.speculated, 255
  %.sroa.0.0.insert.ext = zext nneg i32 %.mask254 to i40
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.5.0.insert.insert, %.sroa.0.0.insert.ext
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.sroa.2.0.insert.ext = zext i40 %.sroa.0.0.insert.insert to i48
  %.sroa.2.0.insert.shift = shl nuw i48 %.sroa.2.0.insert.ext, 8
  ret i48 %.sroa.2.0.insert.shift
}

declare void @_ZNK5Model6normalERK3vecILi2EE(ptr dead_on_unwind writable sret(%struct.vec.18) align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model8specularEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model7diffuseEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3

declare i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

declare { double, double } @_ZNK5Model2uvEii(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK3matILi4ELi4EE16invert_transposeEv(ptr dead_on_unwind noalias writable sret(%struct.mat) align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.mat, align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 3, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 7 uses
  %.0612 = phi i32 [ 4, %bb.a ], [ %i.cb, %.preheader ] ; 3 uses
  %i.a = icmp samesign ult i32 %.0612, 4
  %i.b = select i1 %i.a, i64 3, i64 2
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.b ; 3 uses
  %i.d = icmp samesign ult i32 %.0612, 3
  %i.e = select i1 %i.d, i64 2, i64 1
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.e ; 3 uses
  %i.g = icmp samesign ult i32 %.0612, 2
  %i.h = zext i1 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds [32 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %spec.select.i.1.i9 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load double, ptr %i.c, align 8, !tbaa !14
  %spec.select.i.1.1.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load double, ptr %i.f, align 8, !tbaa !14 ; 2 uses
  %spec.select.i.220.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load double, ptr %spec.select.i.220.i, align 8, !tbaa !14 ; 3 uses
  %spec.select.i.1.2.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load double, ptr %spec.select.i.1.2.i, align 8, !tbaa !14 ; 2 uses
  %i.o = load double, ptr %i.i, align 8, !tbaa !14 ; 3 uses
  %i.p = fneg double %i.k                         ; 2 uses
  %i.q = load <2 x double>, ptr %spec.select.i.1.1.i, align 8, !tbaa !14 ; 4 uses
  %i.r = insertelement <2 x double> poison, double %i.p, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.s, <2 x double> zeroinitializer)
  %i.u = load <2 x double>, ptr %spec.select.i.1.i9, align 8, !tbaa !14 ; 4 uses
  %i.v = insertelement <2 x double> poison, double %i.l, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.u, <2 x double> %i.t) ; 4 uses
  %i.y = extractelement <2 x double> %i.x, i64 1
  %i.z = extractelement <2 x double> %i.u, i64 0
  %i.aa = fneg double %i.z                        ; 2 uses
  %i.ab = extractelement <2 x double> %i.q, i64 1
  %i.ac = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.aa, i64 1
  %i.ae = shufflevector <2 x double> %i.x, <2 x double> %i.q, <2 x i32> <i32 0, i32 3>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.ae, <2 x double> zeroinitializer)
  %i.ag = extractelement <2 x double> %i.u, i64 1
  %i.ah = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ai = insertelement <2 x double> %i.ah, double %i.n, i64 0 ; 2 uses
  %i.aj = fneg <2 x double> %i.x
  %i.ak = shufflevector <2 x double> %i.u, <2 x double> %i.aj, <2 x i32> <i32 3, i32 1>
end_hunk_0
