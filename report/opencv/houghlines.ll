Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/houghlines?download=true
inline.NumInlined: 160
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cv::Vec<float, 2>, std::allocator<cv::Vec<float, 2>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Vec<float, 2>, std::allocator<cv::Vec<float, 2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Vec<float, 2>, std::allocator<cv::Vec<float, 2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Vec<float, 2>, std::allocator<cv::Vec<float, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::_InputOutputArray" = type { %"class.cv::_OutputArray" }
%"class.cv::Scalar_" = type { %"class.cv::Vec.3" }
%"class.cv::Vec.3" = type { %"class.cv::Matx.4" }
%"class.cv::Matx.4" = type { [4 x double] }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<cv::Vec<int, 4>, std::allocator<cv::Vec<int, 4>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Vec<int, 4>, std::allocator<cv::Vec<int, 4>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Vec<int, 4>, std::allocator<cv::Vec<int, 4>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Vec<int, 4>, std::allocator<cv::Vec<int, 4>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"sudoku.png\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c" Program Arguments: [image_name -- default %s] \0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Detected Lines (in red) - Standard Hough Line Transform\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Detected Lines (in red) - Probabilistic Line Transform\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@str = private unnamed_addr constant [21 x i8] c" Error opening image\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 -1, 1) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.std::vector", align 8      ; 12 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %17 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %18 = alloca %"class.std::vector.5", align 8    ; 12 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %22 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #13
  %i.d = icmp sgt i32 %0, 1
  br i1 %i.d, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !14
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.h, ptr %7, align 8, !tbaa !14
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #14
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.thread, %bb.b
  %i.j = phi ptr [ %i.e, %.thread ], [ %i.h, %bb.b ] ; 6 uses
  %i.k = phi ptr [ @.str, %.thread ], [ %i.g, %bb.b ] ; 3 uses
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 %i.l, ptr %i.c, align 8, !tbaa !17
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc92 unwind label %bb.l   ; 2 uses

.noexc92:                                         ; preds = %.noexc.i
  store ptr %i.n, ptr %7, align 8, !tbaa !19
  %i.o = load i64, ptr %i.c, align 8, !tbaa !17
  store i64 %i.o, ptr %i.j, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc92, %bb.d
  %i.p = phi ptr [ %i.n, %.noexc92 ], [ %i.j, %bb.d ] ; 2 uses
  switch i64 %i.l, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.k, align 1, !tbaa !20
  store i8 %i.q, ptr %i.p, align 1, !tbaa !20
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.k, i64 %i.l, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.r = load i64, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !21
  %i.t = load ptr, ptr %7, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  invoke void @_ZN2cv7samples8findFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %6, align 8, !tbaa !19     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !20
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.j
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.j, align 8, !tbaa !20
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.ae = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  br i1 %i.ae, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str) ; 0 uses
  br label %bb.az

bb.l:                                             ; preds = %.noexc.i, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

bb.m:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.n:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.n
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %i.ai, %bb.n ] ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.j
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.bb

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.p:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.at, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.au, align 4, !tbaa !24
  store i32 16842752, ptr %8, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %5, ptr %i.av, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.ax, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !26
  store ptr %2, ptr %i.aw, align 8, !tbaa !27
  invoke void @_ZN2cv5CannyERKNS_11_InputArrayERKNS_12_OutputArrayEddib(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, double noundef 5.000000e+01, double noundef 2.000000e+02, i32 noundef 3, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.ay, align 8, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.az, align 4, !tbaa !24
  store i32 16842752, ptr %10, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %2, ptr %i.ba, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.bc, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !26
  store ptr %3, ptr %i.bb, align 8, !tbaa !27
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 8, i32 noundef 0, i32 noundef 0)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bd = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.t unwind label %bb.y       ; 0 uses

bb.t:                                             ; preds = %bb.s
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.be, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.bf, align 4, !tbaa !24
  store i32 16842752, ptr %14, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %2, ptr %i.bg, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.bi, align 8
  store i32 -2113732571, ptr %15, align 8, !tbaa !26
  store ptr %13, ptr %i.bh, align 8, !tbaa !27
  invoke void @_ZN2cv10HoughLinesERKNS_11_InputArrayERKNS_12_OutputArrayEddiddddb(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, double noundef 1.000000e+00, double noundef f0x3F91DF46A2529D39, i32 noundef 150, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef f0x400921FB54442D18, i1 noundef zeroext false)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !30
  %i.bl = load ptr, ptr %13, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.bk, %i.bl
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 16
  br label %bb.ab

bb.v:                                             ; preds = %bb.p
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.ba

bb.w:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.ba

bb.x:                                             ; preds = %bb.r
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn65 = phi { ptr, i32 } [ %i.bs, %bb.y ], [ %i.br, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.ba

bb.aa:                                            ; preds = %bb.t
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.ax

bb.ab:                                            ; preds = %.lr.ph, %bb.ac
  %i.bu = phi ptr [ %i.bl, %.lr.ph ], [ %i.cl, %bb.ac ]
  %.030147 = phi i64 [ 0, %.lr.ph ], [ %i.cj, %bb.ac ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.030147 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !33 ; 2 uses
  %29 = call noundef float @cosf(float noundef %i.by) #13
  %30 = call noundef float @sinf(float noundef %i.by) #13
  %i.bz = fpext float %i.bw to double
  %i.ca = insertelement <2 x float> poison, float %29, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %30, i64 1
  %i.cc = fpext <2 x float> %i.cb to <2 x double> ; 3 uses
  %i.cd = insertelement <2 x double> poison, double %i.bz, i64 0
  %31 = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %32 = fmul <2 x double> %31, %i.cc              ; 2 uses
  %33 = fneg <2 x double> %i.cc
  %34 = shufflevector <2 x double> %33, <2 x double> %i.cc, <2 x i32> <i32 1, i32 2> ; 2 uses
  %35 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> splat (double 1.000000e+03), <2 x double> %32) ; 2 uses
  %i.ce = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %35)
  %i.cf = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cg = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.cf)
  %36 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> splat (double -1.000000e+03), <2 x double> %32) ; 2 uses
  %i.ch = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %36)
  %37 = shufflevector <2 x double> %36, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ci = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  store i64 0, ptr %i.bn, align 8
  store i32 50397184, ptr %16, align 8, !tbaa !26
  store ptr %3, ptr %i.bm, align 8, !tbaa !27
  %.sroa.6145.0.insert.ext = zext i32 %i.cg to i64
  %.sroa.6145.0.insert.shift = shl nuw i64 %.sroa.6145.0.insert.ext, 32
  %.sroa.0144.0.insert.ext = zext i32 %i.ce to i64
  %.sroa.0144.0.insert.insert = or disjoint i64 %.sroa.6145.0.insert.shift, %.sroa.0144.0.insert.ext
  %.sroa.6.0.insert.ext = zext i32 %i.ci to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0143.0.insert.ext = zext i32 %i.ch to i64
  %.sroa.0143.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0143.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.bo, align 8, !tbaa !35
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 %.sroa.0144.0.insert.insert, i64 %.sroa.0143.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3, i32 noundef 16, i32 noundef 0)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  %i.cj = add nuw i64 %.030147, 1                 ; 2 uses
  %i.ck = load ptr, ptr %i.bj, align 8, !tbaa !30
  %i.cl = load ptr, ptr %13, align 8, !tbaa !31   ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 3
  %i.cq = icmp ult i64 %i.cj, %i.cp
  br i1 %i.cq, label %bb.ab, label %._crit_edge, !llvm.loop !9

bb.ad:                                            ; preds = %bb.ab
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  br label %bb.ax

._crit_edge:                                      ; preds = %bb.ac, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  %i.cs = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %i.cs, align 8, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 0, ptr %i.ct, align 4, !tbaa !24
  store i32 16842752, ptr %19, align 8, !tbaa !26
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %2, ptr %i.cu, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  %i.cv = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 0, ptr %i.cw, align 8
  store i32 -2113732508, ptr %20, align 8, !tbaa !26
  store ptr %18, ptr %i.cv, align 8, !tbaa !27
  invoke void @_ZN2cv11HoughLinesPERKNS_11_InputArrayERKNS_12_OutputArrayEddidd(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, double noundef 1.000000e+00, double noundef f0x3F91DF46A2529D39, i32 noundef 50, double noundef 5.000000e+01, double noundef 1.000000e+01)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  %i.cx = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !39
  %i.cz = load ptr, ptr %18, align 8, !tbaa !40   ; 2 uses
  %.not151 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not151, label %._crit_edge.i.i102, label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %22, i64 16
  br label %bb.ag

._crit_edge.i.i102:                               ; preds = %bb.ah, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  %i.dd = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.dd, ptr %23, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dd, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 6, ptr %i.de, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %23, i64 22
  store i8 0, ptr %i.df, align 2, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  %i.dg = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 0, ptr %i.dg, align 8, !tbaa !23
  %i.dh = getelementptr inbounds nuw i8, ptr %24, i64 20
  store i32 0, ptr %i.dh, align 4, !tbaa !24
  store i32 16842752, ptr %24, align 8, !tbaa !26
  %i.di = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %5, ptr %i.di, align 8, !tbaa !27
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.aj unwind label %bb.ap

bb.af:                                            ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.av

bb.ag:                                            ; preds = %.lr.ph150, %bb.ah
  %i.dk = phi ptr [ %i.cz, %.lr.ph150 ], [ %i.dr, %bb.ah ]
  %.0148 = phi i64 [ 0, %.lr.ph150 ], [ %i.dp, %bb.ah ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %.0148 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load i64, ptr %i.dn, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  store i64 0, ptr %i.db, align 8
  store i32 50397184, ptr %21, align 8, !tbaa !26
  store ptr %4, ptr %i.da, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.dc, align 8, !tbaa !35
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 %i.dm, i64 %i.do, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 3, i32 noundef 16, i32 noundef 0)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  %i.dp = add nuw i64 %.0148, 1                   ; 2 uses
  %i.dq = load ptr, ptr %i.cx, align 8, !tbaa !39
  %i.dr = load ptr, ptr %18, align 8, !tbaa !40   ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 4
  %i.dw = icmp ult i64 %i.dp, %i.dv
  br i1 %i.dw, label %bb.ag, label %._crit_edge.i.i102, !llvm.loop !10

bb.ai:                                            ; preds = %bb.ag
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.av

bb.aj:                                            ; preds = %._crit_edge.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  %i.dy = load ptr, ptr %23, align 8, !tbaa !19   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dd
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.aj
  %i.ea = load i64, ptr %i.dd, align 8, !tbaa !20
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #13
  %i.ec = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.ec, ptr %25, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 55, ptr %i.b, align 8, !tbaa !17
  %i.ed = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc111 unwind label %bb.aq ; 3 uses

.noexc111:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  store ptr %i.ed, ptr %25, align 8, !tbaa !19
  %i.ee = load i64, ptr %i.b, align 8, !tbaa !17  ; 3 uses
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ed, ptr noundef nonnull align 1 dereferenceable(55) @.str.4, i64 55, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !21
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store i8 0, ptr %i.eg, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  %i.eh = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 0, ptr %i.eh, align 8, !tbaa !23
  %i.ei = getelementptr inbounds nuw i8, ptr %26, i64 20
  store i32 0, ptr %i.ei, align 4, !tbaa !24
  store i32 16842752, ptr %26, align 8, !tbaa !26
  %i.ej = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %3, ptr %i.ej, align 8, !tbaa !27
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.ek = load ptr, ptr %25, align 8, !tbaa !19   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ec
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.ak
  %i.em = load i64, ptr %i.ec, align 8, !tbaa !20
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  %i.eo = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.eo, ptr %27, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 54, ptr %i.a, align 8, !tbaa !17
  %i.ep = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
end_hunk_0
begin_hunk_1_@main:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  %i.fh = load ptr, ptr %13, align 8, !tbaa !31   ; 3 uses
  %.not.i.i.i123 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIN2cv3VecIfLi2EEESaIS2_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !42
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fh to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fm) #15
  br label %_ZNSt6vectorIN2cv3VecIfLi2EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3VecIfLi2EEESaIS2_EED2Ev.exit:   ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.az

bb.ap:                                            ; preds = %._crit_edge.i.i102
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  %i.fo = load ptr, ptr %23, align 8, !tbaa !19   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.dd
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.ap
  %i.fq = load i64, ptr %i.dd, align 8, !tbaa !20
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  br label %bb.av

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.ar:                                            ; preds = %.noexc111
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.fu = load ptr, ptr %25, align 8, !tbaa !19   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.ec
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.ar
  %i.fw = load i64, ptr %i.ec, align 8, !tbaa !20
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.aq
  %.pn76.pn = phi { ptr, i32 } [ %i.fs, %bb.aq ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.ft, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  br label %bb.av

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.at:                                            ; preds = %.noexc118
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  %i.ga = load ptr, ptr %27, align 8, !tbaa !19   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.eo
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.at
  %i.gc = load i64, ptr %i.eo, align 8, !tbaa !20
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.as
  %.pn79.pn = phi { ptr, i32 } [ %i.fy, %bb.as ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %i.fz, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  br label %bb.av

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %bb.ai, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %bb.af
  %.pn82.pn.pn = phi { ptr, i32 } [ %i.dj, %bb.af ], [ %i.ge, %bb.au ], [ %.pn79.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %.pn76.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %i.dx, %bb.ai ]
  %i.gf = load ptr, ptr %18, align 8, !tbaa !40   ; 3 uses
  %.not.i.i.i133 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i133, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit134, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gg = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !41
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gf to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gk) #15
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit134

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit134: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ad, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit134, %bb.aa
  %.pn86.pn.pn = phi { ptr, i32 } [ %i.bt, %bb.aa ], [ %.pn82.pn.pn, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit134 ], [ %i.cr, %bb.ad ]
  %i.gl = load ptr, ptr %13, align 8, !tbaa !31   ; 3 uses
  %.not.i.i.i135 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIN2cv3VecIfLi2EEESaIS2_EED2Ev.exit136, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gm = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !42
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gq) #15
  br label %_ZNSt6vectorIN2cv3VecIfLi2EEESaIS2_EED2Ev.exit136

_ZNSt6vectorIN2cv3VecIfLi2EEESaIS2_EED2Ev.exit136: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.ba

bb.az:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi2EEESaIS2_EED2Ev.exit, %bb.k
  %.029 = phi i32 [ -1, %bb.k ], [ 0, %_ZNSt6vectorIN2cv3VecIfLi2EEESaIS2_EED2Ev.exit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %.029

bb.ba:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi2EEESaIS2_EED2Ev.exit136, %bb.z, %bb.w, %bb.v, %bb.o
  %.pn86.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn, %_ZNSt6vectorIN2cv3VecIfLi2EEESaIS2_EED2Ev.exit136 ], [ %.pn65, %bb.z ], [ %i.bq, %bb.w ], [ %i.bp, %bb.v ], [ %i.as, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #13
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %.pn86.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn, %bb.ba ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %.pn86.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv7samples8findFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @_ZN2cv5CannyERKNS_11_InputArrayERKNS_12_OutputArrayEddib(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #2

declare void @_ZN2cv10HoughLinesERKNS_11_InputArrayERKNS_12_OutputArrayEddiddddb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef, double noundef, double noundef, double noundef, double noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i64, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2cv11HoughLinesPERKNS_11_InputArrayERKNS_12_OutputArrayEddidd(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef i32 @_ZN2cv7waitKeyEi(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !36}
!10 = distinct !{!10, !36}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!12, !12, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !16, i64 8, !5, i64 16}
!19 = !{!18, !12, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{!18, !16, i64 8}
!22 = !{!"_ZTSN2cv5Size_IiEE", !6, i64 0, !6, i64 4}
!23 = !{!22, !6, i64 0}
!24 = !{!22, !6, i64 4}
!25 = !{!"_ZTSN2cv11_InputArrayE", !6, i64 0, !11, i64 8, !22, i64 16}
!26 = !{!25, !6, i64 0}
!27 = !{!25, !11, i64 8}
!28 = !{!"p1 _ZTSN2cv3VecIfLi2EEE", !11, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIfLi2EEESaIS2_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!29, !28, i64 8}
!31 = !{!29, !28, i64 0}
!32 = !{!"float", !5, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"double", !5, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"p1 _ZTSN2cv3VecIiLi4EEE", !11, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIiLi4EEESaIS2_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!38, !37, i64 8}
!40 = !{!38, !37, i64 0}
!41 = !{!38, !37, i64 16}
!42 = !{!29, !28, i64 16}
end_hunk_1
