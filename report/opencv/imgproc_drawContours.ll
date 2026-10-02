Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/imgproc_drawContours?download=true
inline.NumInlined: 146
inline.NumDeleted: 80
begin_hunk_0
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.cv::MatExpr" = type { ptr, i32, %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat", double, double, %"class.cv::Scalar_" }
%"class.cv::Scalar_" = type { %"class.cv::Vec" }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [4 x double] }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::vector<cv::Point_<int>>, std::allocator<std::vector<cv::Point_<int>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<cv::Point_<int>>, std::allocator<std::vector<cv::Point_<int>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<cv::Point_<int>>, std::allocator<std::vector<cv::Point_<int>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<cv::Point_<int>>, std::allocator<std::vector<cv::Point_<int>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<cv::Vec<int, 4>, std::allocator<cv::Vec<int, 4>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Vec<int, 4>, std::allocator<cv::Vec<int, 4>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Vec<int, 4>, std::allocator<cv::Vec<int, 4>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Vec<int, 4>, std::allocator<cv::Vec<int, 4>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::_InputOutputArray" = type { %"class.cv::_OutputArray" }

$_ZN2cv7MatExprD2Ev = comdat any

$_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev = comdat any

$_ZZN2cv11_InputArrayC1INS_3VecIiLi4EEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = comdat any

@.str = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Components\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZZN2cv11_InputArrayC1INS_3VecIiLi4EEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = linkonce_odr hidden constant %"struct.cv::detail::CheckContext" { ptr @.str.3, ptr @.str.4, i32 174, i32 3, ptr @.str.5, ptr @.str.6, ptr @.str.7 }, comdat, align 8
@.str.3 = private unnamed_addr constant [79 x i8] c"cv::_InputArray::_InputArray(const std::vector<_Tp> &) [_Tp = cv::Vec<int, 4>]\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Must not be larger than INT_MAX\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"vec.size()\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"static_cast<size_t>(std::numeric_limits<int>::max())\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 -1, 1) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.cv::Mat", align 8           ; 13 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %6 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %7 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.std::vector", align 8      ; 11 uses
  %12 = alloca %"class.std::vector.3", align 8    ; 13 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 8 uses
  %17 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #10
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.b, label %.critedge83.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !28
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #11
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %i.f, ptr %i.a, align 8, !tbaa !30
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc84 unwind label %bb.i   ; 2 uses

.noexc84:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %4, align 8, !tbaa !32
  %i.i = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.i, ptr %i.d, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc84, %bb.d
  %i.j = phi ptr [ %i.h, %.noexc84 ], [ %i.d, %bb.d ] ; 2 uses
  switch i64 %i.f, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.c, align 1, !tbaa !33
  store i8 %i.k, ptr %i.j, align 1, !tbaa !33
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.c, i64 %i.f, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !34
  %i.n = load ptr, ptr %4, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  invoke void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %.critedge unwind label %bb.k

.critedge:                                        ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %.not51 = icmp eq ptr %i.r, null
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #10
  %i.s = load ptr, ptr %4, align 8, !tbaa !32     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %.critedge83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.u = load i64, ptr %i.d, align 8, !tbaa !33
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #12
  br label %.critedge83

.critedge83:                                      ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br i1 %.not51, label %.critedge83.thread, label %bb.m

bb.i:                                             ; preds = %.noexc.i, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.j:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pn = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.x, %bb.j ] ; 2 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !32     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.d
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.l
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !33
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.au

bb.m:                                             ; preds = %.critedge83
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !43
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %6, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef 64)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #10
  %i.ah = load ptr, ptr %6, align 8, !tbaa !50, !noalias !51 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(688) %6, ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #10
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %6) #10
  br label %bb.x

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.am) #10
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.an) #10
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ao) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  invoke void @_ZN2cvgtERKNS_3MatEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %2, double noundef 1.000000e+00)
          to label %bb.o unwind label %bb.y

bb.o:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.ap = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 8 dereferenceable(688) %7, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.z, !inline_history !23

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.at) #10
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.au) #10
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.av) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.aw, ptr %8, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.aw, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 6, ptr %i.ax, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i8 0, ptr %i.ay, align 2, !tbaa !33
  invoke void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 1)
          to label %bb.p unwind label %bb.ab

bb.p:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.az = load ptr, ptr %8, align 8, !tbaa !32    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aw
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.p
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !33
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.bd, ptr %9, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bd, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 6, ptr %i.be, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i8 0, ptr %i.bf, align 2, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.bg, align 8, !tbaa !55
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.bh, align 4, !tbaa !56
  store i32 16842752, ptr %10, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %2, ptr %i.bi, align 8, !tbaa !59
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.q unwind label %bb.ac

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %i.bj = load ptr, ptr %9, align 8, !tbaa !32    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.bd
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.q
  %i.bl = load i64, ptr %i.bd, align 8, !tbaa !33
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.bn, align 8, !tbaa !55
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %i.bo, align 4, !tbaa !56
  store i32 16842752, ptr %13, align 8, !tbaa !58
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %2, ptr %i.bp, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 0, ptr %i.br, align 8
  store i32 -2113667036, ptr %14, align 8, !tbaa !58
  store ptr %11, ptr %i.bq, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.bt, align 8
  store i32 -2113732508, ptr %15, align 8, !tbaa !58
  store ptr %12, ptr %i.bs, align 8, !tbaa !59
  invoke void @_ZN2cv12findContoursERKNS_11_InputArrayERKNS_12_OutputArrayES5_iiNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 2, i32 noundef 2, i64 0)
          to label %bb.r unwind label %bb.ad

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 20
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.v
  %.0141 = phi i32 [ 0, %bb.r ], [ %i.cy, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  %i.cg = call i32 @rand() #10
  %i.ch = and i32 %i.cg, 255
  %i.ci = uitofp nneg i32 %i.ch to double
  %i.cj = call i32 @rand() #10
  %i.ck = and i32 %i.cj, 255
  %i.cl = uitofp nneg i32 %i.ck to double
  %i.cm = call i32 @rand() #10
  %i.cn = and i32 %i.cm, 255
  %i.co = uitofp nneg i32 %i.cn to double
  store double %i.ci, ptr %16, align 8, !tbaa !60
  store double %i.cl, ptr %i.bu, align 8, !tbaa !60
  store double %i.co, ptr %i.bv, align 8, !tbaa !60
  store double 0.000000e+00, ptr %i.bw, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  store i64 0, ptr %i.by, align 8
  store i32 50397184, ptr %17, align 8, !tbaa !58
  store ptr %5, ptr %i.bx, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  store i32 0, ptr %i.bz, align 8, !tbaa !55
  store i32 0, ptr %i.ca, align 4, !tbaa !56
  store i32 -2130444252, ptr %18, align 8, !tbaa !58
  store ptr %11, ptr %i.cb, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #10
  store i32 0, ptr %i.cc, align 8, !tbaa !55
  store i32 0, ptr %i.cd, align 4, !tbaa !56
  %i.cp = load ptr, ptr %i.ce, align 8, !tbaa !63
  %i.cq = load ptr, ptr %12, align 8, !tbaa !64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 4                 ; 2 uses
  %.not.i = icmp ugt i64 %i.cu, 2147483647
  br i1 %.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.cu, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_3VecIiLi4EEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #11
          to label %.noexc103 unwind label %bb.ae

.noexc103:                                        ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  store i32 -2130509724, ptr %19, align 8, !tbaa !58
  store ptr %12, ptr %i.cf, align 8, !tbaa !59
  invoke void @_ZN2cv12drawContoursERKNS_17_InputOutputArrayERKNS_11_InputArrayEiRKNS_7Scalar_IdEEiiS5_iNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef %.0141, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef -1, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef 2147483647, i64 0)
          to label %bb.v unwind label %bb.af

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  %i.cv = zext nneg i32 %.0141 to i64
  %i.cw = load ptr, ptr %12, align 8, !tbaa !64
end_hunk_0
begin_hunk_1_@main:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #10
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ag, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %bb.ad
  %.pn70.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dn, %bb.ad ], [ %.pn70, %bb.ag ], [ %i.dq, %bb.ah ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ]
  %i.fp = load ptr, ptr %12, align 8, !tbaa !64   ; 3 uses
  %.not.i.i.i131 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i131, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit132, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !66
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #12
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit132

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit132: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %bb.aa
  %.pn70.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn70.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit132 ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %.pn54, %bb.aa ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #10
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.x
  %.pn70.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn70.pn.pn.pn.pn.pn.pn, %bb.as ], [ %.pn52, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.at
  %.pn70.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn70.pn.pn.pn.pn.pn.pn.pn, %bb.at ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  resume { ptr, i32 } %.pn70.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #10
  ret void
}

declare void @_ZN2cvgtERKNS_3MatEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), double noundef) local_unnamed_addr #3

declare void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN2cv12findContoursERKNS_11_InputArrayERKNS_12_OutputArrayES5_iiNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #2

declare void @_ZN2cv12drawContoursERKNS_17_InputOutputArrayERKNS_11_InputArrayEiRKNS_7Scalar_IdEEiiS5_iNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i64) local_unnamed_addr #3

declare noundef i32 @_ZN2cv7waitKeyEi(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !18 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #12
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !14
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #12
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !11}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"p1 _ZTSSt6vectorIN2cv6Point_IiEESaIS2_EE", !10, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!13, !12, i64 0}
!15 = !{!13, !12, i64 8}
!16 = !{!"p1 _ZTSN2cv6Point_IiEE", !10, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 0}
!19 = !{!17, !16, i64 16}
!20 = !{!13, !12, i64 16}
!21 = distinct !{!21, i1 false, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!22 = distinct !{!22, !21, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!23 = distinct !{null}
!24 = distinct !{!24, !11}
!25 = !{!"p1 omnipotent char", !10, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!28 = !{!27, !25, i64 0}
!29 = !{!"long", !6, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !29, i64 8, !6, i64 16}
!32 = !{!31, !25, i64 0}
!33 = !{!6, !6, i64 0}
!34 = !{!31, !29, i64 8}
!35 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!36 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!37 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!38 = !{!"_ZTSN2cv8MatShapeE", !7, i64 0, !37, i64 4, !7, i64 8, !6, i64 12}
!39 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!40 = !{!"_ZTSN2cv3MatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !35, i64 56, !36, i64 64, !38, i64 72, !39, i64 128}
!41 = !{!40, !25, i64 24}
!42 = !{!40, !7, i64 8}
!43 = !{!40, !7, i64 12}
!44 = !{!"p1 _ZTSN2cv5MatOpE", !10, i64 0}
!45 = !{!"double", !6, i64 0}
!46 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !6, i64 0}
!47 = !{!"_ZTSN2cv3VecIdLi4EEE", !46, i64 0}
!48 = !{!"_ZTSN2cv7Scalar_IdEE", !47, i64 0}
!49 = !{!"_ZTSN2cv7MatExprE", !44, i64 0, !7, i64 8, !40, i64 16, !40, i64 224, !40, i64 432, !45, i64 640, !45, i64 648, !48, i64 656}
!50 = !{!49, !44, i64 0}
!51 = !{!22}
!52 = !{!"vtable pointer", !5, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"_ZTSN2cv5Size_IiEE", !7, i64 0, !7, i64 4}
!55 = !{!54, !7, i64 0}
!56 = !{!54, !7, i64 4}
!57 = !{!"_ZTSN2cv11_InputArrayE", !7, i64 0, !10, i64 8, !54, i64 16}
!58 = !{!57, !7, i64 0}
!59 = !{!57, !10, i64 8}
!60 = !{!45, !45, i64 0}
!61 = !{!"p1 _ZTSN2cv3VecIiLi4EEE", !10, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIiLi4EEESaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!62, !61, i64 8}
!64 = !{!62, !61, i64 0}
!65 = !{!7, !7, i64 0}
!66 = !{!62, !61, i64 16}
end_hunk_1
