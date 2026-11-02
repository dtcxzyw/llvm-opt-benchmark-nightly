Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/icp?download=true
inline.NumInlined: 341
inline.NumDeleted: 135
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.cv::detail::CheckContext" = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%"class.cv::Matx.8" = type { [12 x double] }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::Matx.9" = type { [4 x double] }
%"class.cv::Range" = type { i32, i32 }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::Matx.3" = type { [9 x double] }
%"class.cv::Matx.4" = type { [3 x double] }
%"class.cv::MatExpr" = type { ptr, i32, %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat", double, double, %"class.cv::Scalar_" }
%"class.cv::Scalar_" = type { %"class.cv::Vec.1" }
%"class.cv::Vec.1" = type { %"class.cv::Matx.2" }
%"class.cv::Matx.2" = type { [4 x double] }
%"class.cv::Matx.0" = type { [16 x double] }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [3 x double] }

$_ZN2cv7MatExprD2Ev = comdat any

@_ZZN2cv12ppf_match_3d3ICP20registerModelToSceneERKNS_3MatES4_RdRNS_4MatxIdLi4ELi4EEEE15__cv_check__249 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str, ptr @.str.1, i32 249, i32 6, ptr @.str.2, ptr @.str.3, ptr @.str.4 }, align 8
@.str = private unnamed_addr constant [95 x i8] c"int cv::ppf_match_3d::ICP::registerModelToScene(const Mat &, const Mat &, double &, Matx44d &)\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"/opt-bench/work/opencv/opencv_contrib/modules/surface_matching/src/icp.cpp\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN2cv12ppf_match_3d3ICP20registerModelToSceneERKNS_3MatES4_RdRNS_4MatxIdLi4ELi4EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(128) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Matx.8", align 8        ; 5 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %11 = alloca %"class.cv::Matx.9", align 8       ; 5 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %13 = alloca %"class.cv::Range", align 8        ; 4 uses
  %14 = alloca %"class.cv::Range", align 4        ; 5 uses
  %15 = alloca %"class.cv::Range", align 4        ; 5 uses
  %16 = alloca %"class.cv::Range", align 8        ; 4 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::Range", align 8        ; 4 uses
  %20 = alloca %"class.cv::Range", align 4        ; 5 uses
  %21 = alloca %"class.cv::Range", align 4        ; 5 uses
  %22 = alloca %"class.cv::Range", align 8        ; 4 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %24 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %26 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %27 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %28 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %29 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %30 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %31 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %32 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %33 = alloca %"class.cv::Matx.8", align 8       ; 5 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %35 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %36 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %37 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %38 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %39 = alloca %"class.cv::Matx.9", align 8       ; 5 uses
  %40 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %41 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %42 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %43 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %44 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %sincos.sin.i13.i.i = alloca double, align 8    ; 4 uses
  %sincos.cos.i14.i.i = alloca double, align 8    ; 4 uses
  %45 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %46 = alloca %"class.cv::Matx.3", align 8       ; 8 uses
  %47 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %48 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %49 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %sincos.sin.i7.i.i = alloca double, align 8     ; 4 uses
  %sincos.cos.i8.i.i = alloca double, align 8     ; 4 uses
  %50 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %51 = alloca %"class.cv::Matx.3", align 8       ; 8 uses
  %52 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %53 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %54 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %sincos.sin.i.i.i = alloca double, align 8      ; 4 uses
  %sincos.cos.i.i.i = alloca double, align 8      ; 4 uses
  %55 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %56 = alloca %"class.cv::Matx.3", align 8       ; 8 uses
  %57 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %58 = alloca %"class.cv::Matx.3", align 16      ; 11 uses
  %59 = alloca %"class.cv::Matx.3", align 16      ; 13 uses
  %60 = alloca %"class.cv::Matx.3", align 8       ; 13 uses
  %61 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %62 = alloca %"class.cv::Matx.3", align 8       ; 10 uses
  %63 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %64 = alloca %"class.cv::Matx.3", align 8       ; 5 uses
  %65 = alloca %"class.cv::Range", align 4        ; 5 uses
  %66 = alloca %"class.cv::Range", align 8        ; 4 uses
  %67 = alloca %"class.cv::Range", align 4        ; 5 uses
  %68 = alloca %"class.cv::Range", align 8        ; 4 uses
  %69 = alloca %"class.cv::Range", align 4        ; 5 uses
  %70 = alloca %"class.cv::Range", align 8        ; 4 uses
  %71 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %72 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %73 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %74 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %75 = alloca %"class.cv::Matx.4", align 16      ; 6 uses
  %76 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %77 = alloca %"class.cv::Matx.4", align 8       ; 6 uses
  %78 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %79 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %80 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %81 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %82 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %83 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %84 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %85 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %86 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %87 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %88 = alloca %"class.cv::Range", align 8        ; 4 uses
  %89 = alloca %"class.cv::Range", align 8        ; 4 uses
  %90 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %91 = alloca %"class.cv::Range", align 8        ; 4 uses
  %92 = alloca %"class.cv::Range", align 8        ; 4 uses
  %93 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %94 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %95 = alloca %"class.cv::Mat", align 8          ; 5 uses
  %96 = alloca %"class.cv::Mat", align 8          ; 5 uses
  %97 = alloca %"class.cv::Mat", align 8          ; 5 uses
  %98 = alloca %"class.cv::Mat", align 8          ; 5 uses
  %99 = alloca %"class.cv::Mat", align 8          ; 5 uses
  %100 = alloca %"class.cv::Mat", align 8         ; 5 uses
  %101 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %102 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %103 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %104 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %105 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %106 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %107 = alloca %"class.cv::Mat", align 8         ; 13 uses
  %108 = alloca %"class.cv::Mat", align 8         ; 4 uses
  %109 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %110 = alloca %"class.cv::Mat", align 8         ; 4 uses
  %111 = alloca %"class.cv::Mat", align 8         ; 10 uses
  %112 = alloca %"class.cv::Mat", align 8         ; 4 uses
  %113 = alloca %"class.cv::Mat", align 8         ; 4 uses
  %114 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  %115 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %116 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %117 = alloca %"class.cv::Matx.0", align 8      ; 22 uses
  %118 = alloca %"class.cv::Mat", align 8         ; 9 uses
  %119 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %120 = alloca %"class.cv::Mat", align 8         ; 10 uses
  %121 = alloca %"class.cv::Mat", align 8         ; 10 uses
  %122 = alloca %"class.cv::Vec", align 8         ; 8 uses
  %123 = alloca %"class.cv::Vec", align 8         ; 9 uses
  %124 = alloca %"class.cv::Mat", align 8         ; 6 uses
  %125 = alloca %"class.cv::Mat", align 8         ; 5 uses
  %126 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %127 = alloca %"class.cv::Mat", align 8         ; 4 uses
  %128 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %129 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %130 = alloca %"class.cv::Matx.3", align 8      ; 11 uses
  %131 = alloca %"class.cv::Vec", align 16        ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !77   ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.c, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv12ppf_match_3d3ICP20registerModelToSceneERKNS_3MatES4_RdRNS_4MatxIdLi4ELi4EEEE15__cv_check__249) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !80
  %i.g = fcmp ogt float %i.f, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #18
  call void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %93, ptr noundef nonnull align 8 dereferenceable(208) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #18
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %94, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.d unwind label %bb.x

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %95, ptr noundef nonnull align 8 dereferenceable(208) %93)
          to label %bb.e unwind label %bb.y

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %95, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !77   ; 5 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %.loopexit465

.lr.ph.i:                                         ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %95, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %95, i64 128
  %i.n = load i64, ptr %i.m, align 8, !tbaa !83   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.i to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.o = icmp eq i32 %i.i, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %.02127.i = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.ah, %bb.f ]
  %i.p = phi <2 x double> [ zeroinitializer, %.lr.ph.i.new ], [ %i.ad, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %i.q = mul i64 %indvars.iv.i, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q ; 2 uses
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !84
  %i.t = fpext <2 x float> %i.s to <2 x double>
  %i.u = fadd <2 x double> %i.p, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !84
  %i.x = fpext float %i.w to double
  %i.y = fadd double %.02127.i, %i.x
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.z = mul i64 %indvars.iv.next.i, %i.n
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.z ; 2 uses
  %i.ab = load <2 x float>, ptr %i.aa, align 4, !tbaa !84
  %i.ac = fpext <2 x float> %i.ab to <2 x double>
  %i.ad = fadd <2 x double> %i.u, %i.ac           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !84
  %i.ag = fpext float %i.af to double
  %i.ah = fadd double %i.y, %i.ag                 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit465.loopexit.unr-lcssa, label %bb.f, !llvm.loop !12

.loopexit465.loopexit.unr-lcssa:                  ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit465, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit465.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.loopexit465.loopexit.unr-lcssa ]
  %.02127.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.ah, %.loopexit465.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.ad, %.loopexit465.loopexit.unr-lcssa ]
  %lcmp.mod746 = trunc i32 %i.i to i1
  call void @llvm.assume(i1 %lcmp.mod746)
  %i.ai = mul i64 %indvars.iv.i.epil.init, %i.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ai ; 2 uses
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !84
  %i.al = fpext <2 x float> %i.ak to <2 x double>
  %i.am = fadd <2 x double> %.epil.init, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !84
  %i.ap = fpext float %i.ao to double
  %i.aq = fadd double %.02127.i.epil.init, %i.ap
  br label %.loopexit465

.loopexit465:                                     ; preds = %.epil.preheader, %.loopexit465.loopexit.unr-lcssa, %bb.e
  %.021.lcssa.i = phi double [ 0.000000e+00, %bb.e ], [ %i.ah, %.loopexit465.loopexit.unr-lcssa ], [ %i.aq, %.epil.preheader ]
  %i.ar = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.ad, %.loopexit465.loopexit.unr-lcssa ], [ %i.am, %.epil.preheader ]
  %i.as = sitofp i32 %i.i to double               ; 2 uses
  %i.at = insertelement <2 x double> poison, double %i.as, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fdiv <2 x double> %i.ar, %i.au
  %i.aw = fdiv double %.021.lcssa.i, %i.as
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %95) #18
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %96, ptr noundef nonnull align 8 dereferenceable(208) %94)
          to label %bb.g unwind label %bb.y

bb.g:                                             ; preds = %.loopexit465
  %i.ax = getelementptr inbounds nuw i8, ptr %96, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !77 ; 5 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i300, label %.loopexit464

.lr.ph.i300:                                      ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %96, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !81 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %96, i64 128
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !83 ; 3 uses
  %wide.trip.count.i301 = zext nneg i32 %i.ay to i64 ; 2 uses
  %xtraiter748 = and i64 %wide.trip.count.i301, 1
  %i.be = icmp eq i32 %i.ay, 1
  br i1 %i.be, label %.epil.preheader747, label %.lr.ph.i300.new

.lr.ph.i300.new:                                  ; preds = %.lr.ph.i300
end_hunk_0
begin_hunk_1_@_ZN2cv12ppf_match_3d3ICP20registerModelToSceneERKNS_3MatES4_RdRNS_4MatxIdLi4ELi4EEE:bb.a
  store <2 x double> %i.aeb, ptr %75, align 16
  store double %i.aee, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !91
  store i32 -1056833530, ptr %74, align 8, !tbaa !88
  store ptr %75, ptr %i.kp, align 8, !tbaa !89
  store i64 4294967299, ptr %i.ko, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #18
  store double %i.adg, ptr %77, align 8
  store <2 x double> %i.adq, ptr %.sroa.755.0..sroa_idx.i, align 8
  store i32 -1056833530, ptr %76, align 8, !tbaa !88
  store ptr %77, ptr %i.kr, align 8, !tbaa !89
  store i64 4294967299, ptr %i.kq, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #18, !noalias !121
  %indvars.iv.next.i349 = add nuw nsw i64 %indvars.iv.i348, 1 ; 3 uses
  %i.aei = trunc nuw nsw i64 %indvars.iv.i348 to i32
  store i32 %i.aei, ptr %69, align 4, !tbaa !123, !noalias !121
  %i.aej = trunc nuw nsw i64 %indvars.iv.next.i349 to i32
  store i32 %i.aej, ptr %i.ks, align 4, !tbaa !124, !noalias !121
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #18, !noalias !121
  store i64 9223372034707292160, ptr %70, align 8, !noalias !121
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %79, ptr noundef nonnull align 8 dereferenceable(208) %71, ptr noundef nonnull align 4 dereferenceable(8) %69, ptr noundef nonnull align 4 dereferenceable(8) %70)
          to label %bb.dt unwind label %bb.dv

bb.dt:                                            ; preds = %.lr.ph.i347
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #18, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #18, !noalias !121
  store i64 0, ptr %i.ku, align 8
  store i32 -1040121856, ptr %78, align 8, !tbaa !88
  store ptr %79, ptr %i.kt, align 8, !tbaa !89
  invoke void @_ZN2cv7hconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(24) %76, ptr noundef nonnull align 8 dereferenceable(24) %78)
          to label %bb.du unwind label %bb.dw

bb.du:                                            ; preds = %bb.dt
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %79) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #18
  %i.aek = load i32, ptr %i.kh, align 8, !tbaa !77
  %i.ael = sext i32 %i.aek to i64
  %i.aem = icmp slt i64 %indvars.iv.next.i349, %i.ael
  br i1 %i.aem, label %.lr.ph.i347, label %._crit_edge.i, !llvm.loop !42

bb.dv:                                            ; preds = %.lr.ph.i347
  %i.aen = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dw:                                            ; preds = %bb.dt
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %79) #18
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.pn38.pn.i = phi { ptr, i32 } [ %i.aeo, %bb.dw ], [ %i.aen, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #18
  br label %bb.ej

._crit_edge.i:                                    ; preds = %bb.du, %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #18
  store i32 0, ptr %i.kv, align 8, !tbaa !125
  store i32 0, ptr %i.kw, align 4, !tbaa !126
  store i32 16842752, ptr %80, align 8, !tbaa !88
  store ptr %71, ptr %i.kx, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #18
  store i32 0, ptr %i.ky, align 8, !tbaa !125
  store i32 0, ptr %i.kz, align 4, !tbaa !126
  store i32 16842752, ptr %81, align 8, !tbaa !88
  store ptr %72, ptr %i.la, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #18
  store i64 0, ptr %i.lc, align 8
  store i32 33619968, ptr %82, align 8, !tbaa !88
  store ptr %73, ptr %i.lb, align 8, !tbaa !89
  %i.aep = invoke noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %80, ptr noundef nonnull align 8 dereferenceable(24) %81, ptr noundef nonnull align 8 dereferenceable(24) %82, i32 noundef 1)
          to label %bb.dy unwind label %bb.ec     ; 0 uses

bb.dy:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #18, !noalias !127
  store i32 0, ptr %67, align 4, !tbaa !123, !noalias !127
  store i32 3, ptr %i.ld, align 4, !tbaa !124, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #18, !noalias !127
  store i64 9223372034707292160, ptr %68, align 8, !noalias !127
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %83, ptr noundef nonnull align 8 dereferenceable(208) %73, ptr noundef nonnull align 4 dereferenceable(8) %67, ptr noundef nonnull align 4 dereferenceable(8) %68)
          to label %bb.dz unwind label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #18, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #18, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #18
  store i32 -1040056314, ptr %84, align 8, !tbaa !88
  store ptr %122, ptr %i.le, align 8, !tbaa !89
  store i64 12884901889, ptr %i.lf, align 8, !tbaa !104
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %83, ptr noundef nonnull align 8 dereferenceable(24) %84)
          to label %bb.ea unwind label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %83) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #18, !noalias !128
  store i32 3, ptr %65, align 4, !tbaa !123, !noalias !128
  store i32 6, ptr %i.lg, align 4, !tbaa !124, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #18, !noalias !128
  store i64 9223372034707292160, ptr %66, align 8, !noalias !128
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %85, ptr noundef nonnull align 8 dereferenceable(208) %73, ptr noundef nonnull align 4 dereferenceable(8) %65, ptr noundef nonnull align 4 dereferenceable(8) %66)
          to label %bb.eb unwind label %bb.eg

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #18, !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #18, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #18
  store i32 -1040056314, ptr %86, align 8, !tbaa !88
  store ptr %123, ptr %i.lh, align 8, !tbaa !89
  store i64 12884901889, ptr %i.li, align 8, !tbaa !104
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %85, ptr noundef nonnull align 8 dereferenceable(24) %86)
          to label %bb.el unwind label %bb.eh

bb.ec:                                            ; preds = %._crit_edge.i
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #18
  br label %bb.ej

bb.ed:                                            ; preds = %bb.dy
  %i.aer = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.ee:                                            ; preds = %bb.dz
  %i.aes = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %83) #18
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.pn32.pn.i = phi { ptr, i32 } [ %i.aes, %bb.ee ], [ %i.aer, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #18
  br label %bb.ej

bb.eg:                                            ; preds = %bb.ea
  %i.aet = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.eh:                                            ; preds = %bb.eb
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %85) #18
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.pn35.pn.i = phi { ptr, i32 } [ %i.aeu, %bb.eh ], [ %i.aet, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #18
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.ef, %bb.ec, %bb.dx
  %.pn38.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.aeq, %bb.ec ], [ %.pn35.pn.i, %bb.ei ], [ %.pn32.pn.i, %bb.ef ], [ %.pn38.pn.i, %bb.dx ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %73) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %72) #18
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ds
  %.pn38.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ej ], [ %i.acp, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %71) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #18
  br label %.body351

bb.el:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %85) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %73) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %72) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %71) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %125) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %124) #18
  %i.aev = load double, ptr %122, align 8, !tbaa !11 ; 2 uses
  %i.aew = fcmp ord double %i.aev, 0.000000e+00
  br i1 %i.aew, label %bb.em, label %bb.fq

bb.em:                                            ; preds = %bb.el
  %i.aex = load double, ptr %123, align 8, !tbaa !11 ; 2 uses
  %i.aey = call double @llvm.fmuladd.f64(double %i.aex, double %i.aex, double 0.000000e+00)
  %i.aez = load double, ptr %i.lj, align 8, !tbaa !11 ; 2 uses
  %i.afa = call double @llvm.fmuladd.f64(double %i.aez, double %i.aez, double %i.aey)
  %i.afb = load double, ptr %i.lk, align 8, !tbaa !11 ; 2 uses
  %i.afc = call noundef double @llvm.fmuladd.f64(double %i.afb, double %i.afb, double %i.afa)
  %i.afd = fcmp ult double %i.afc, 0.000000e+00
  br i1 %i.afd, label %bb.fq, label %bb.er

bb.en:                                            ; preds = %.noexc364, %_ZN2cv12ppf_match_3dL10eulerToDCMERKNS_3VecIdLi3EEERNS_4MatxIdLi3ELi3EEE.exit.i, %.noexc362, %_ZN2cv12ppf_match_3dL16getUnitZRotationEdRNS_4MatxIdLi3ELi3EEE.exit.i.i, %.noexc360, %_ZN2cv12ppf_match_3dL16getUnitYRotationEdRNS_4MatxIdLi3ELi3EEE.exit.i.i, %.noexc358, %_ZN2cv12ppf_match_3dL16getUnitXRotationEdRNS_4MatxIdLi3ELi3EEE.exit.i.i, %.noexc354, %bb.er, %.split
  %i.afe = landingpad { ptr, i32 }
          cleanup
  br label %.body356

bb.eo:                                            ; preds = %bb.dp
  %i.aff = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ep:                                            ; preds = %bb.dq
  %i.afg = landingpad { ptr, i32 }
          cleanup
  br label %.body351

.body351:                                         ; preds = %bb.ek, %bb.ep
  %eh.lpad-body352 = phi { ptr, i32 } [ %i.afg, %bb.ep ], [ %.pn38.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ek ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %125) #18
  br label %bb.eq

bb.eq:                                            ; preds = %.body351, %bb.eo
  %.pn247 = phi { ptr, i32 } [ %eh.lpad-body352, %.body351 ], [ %i.aff, %bb.eo ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %124) #18
  br label %.body356

bb.er:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %64, i8 0, i64 72, i1 false), !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %58, i8 0, i64 72, i1 false), !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %59, i8 0, i64 72, i1 false), !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %60, i8 0, i64 72, i1 false), !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i.i.i)
  call void @sincos(double %i.aev, ptr nonnull %sincos.sin.i.i.i, ptr nonnull %sincos.cos.i.i.i)
  %sin.i.i.i = load double, ptr %sincos.sin.i.i.i, align 8 ; 2 uses
  %cos.i.i.i = load double, ptr %sincos.cos.i.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ll, i8 0, i64 56, i1 false), !tbaa !11, !alias.scope !129
  store double 1.000000e+00, ptr %56, align 8, !tbaa !11, !alias.scope !129
  store double 1.000000e+00, ptr %i.lm, align 8, !tbaa !11, !alias.scope !129
  store double 1.000000e+00, ptr %i.ln, align 8, !tbaa !11, !alias.scope !129
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %55, align 16, !tbaa !104
  store i32 153, ptr %i.lo, align 16, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.lp, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.lq, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc354 unwind label %bb.en

.noexc354:                                        ; preds = %bb.er
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.lr, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %53, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %56, i64 noundef 0)
          to label %.noexc355 unwind label %bb.en

.noexc355:                                        ; preds = %.noexc354
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #18
  store i64 0, ptr %i.lt, align 8
  store i32 33619968, ptr %54, align 8, !tbaa !88
  store ptr %55, ptr %i.ls, align 8, !tbaa !89
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %53, ptr noundef nonnull align 8 dereferenceable(24) %54)
          to label %bb.et unwind label %bb.es

bb.es:                                            ; preds = %.noexc355
  %i.afh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  br label %.body356

bb.et:                                            ; preds = %.noexc355
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #18
  store i32 -1040056314, ptr %57, align 8, !tbaa !88
  store ptr %58, ptr %i.lu, align 8, !tbaa !89
  store i64 12884901891, ptr %i.lv, align 8, !tbaa !104
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %55, ptr noundef nonnull align 8 dereferenceable(24) %57)
          to label %_ZN2cv12ppf_match_3dL16getUnitXRotationEdRNS_4MatxIdLi3ELi3EEE.exit.i.i unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.afi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %55) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18
  br label %.body356

_ZN2cv12ppf_match_3dL16getUnitXRotationEdRNS_4MatxIdLi3ELi3EEE.exit.i.i: ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %55) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18
  store double %cos.i.i.i, ptr %i.lw, align 16, !tbaa !11
  %i.afj = fneg double %sin.i.i.i
  store double %i.afj, ptr %i.lx, align 8, !tbaa !11
  store double %sin.i.i.i, ptr %i.ly, align 8, !tbaa !11
  store double %cos.i.i.i, ptr %i.lz, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i.i.i)
  %i.afk = load double, ptr %i.ma, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i8.i.i)
  call void @sincos(double %i.afk, ptr nonnull %sincos.sin.i7.i.i, ptr nonnull %sincos.cos.i8.i.i)
  %sin.i9.i.i = load double, ptr %sincos.sin.i7.i.i, align 8 ; 2 uses
  %cos.i10.i.i = load double, ptr %sincos.cos.i8.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.mb, i8 0, i64 56, i1 false), !tbaa !11, !alias.scope !131
  store double 1.000000e+00, ptr %51, align 8, !tbaa !11, !alias.scope !131
  store double 1.000000e+00, ptr %i.mc, align 8, !tbaa !11, !alias.scope !131
  store double 1.000000e+00, ptr %i.md, align 8, !tbaa !11, !alias.scope !131
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %50, align 16, !tbaa !104
  store i32 153, ptr %i.me, align 16, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mf, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.mg, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc358 unwind label %bb.en

.noexc358:                                        ; preds = %_ZN2cv12ppf_match_3dL16getUnitXRotationEdRNS_4MatxIdLi3ELi3EEE.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.mh, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %48, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %51, i64 noundef 0)
          to label %.noexc359 unwind label %bb.en

.noexc359:                                        ; preds = %.noexc358
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #18
  store i64 0, ptr %i.mj, align 8
  store i32 33619968, ptr %49, align 8, !tbaa !88
  store ptr %50, ptr %i.mi, align 8, !tbaa !89
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %48, ptr noundef nonnull align 8 dereferenceable(24) %49)
          to label %bb.ew unwind label %bb.ev

bb.ev:                                            ; preds = %.noexc359
  %i.afl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  br label %.body356

bb.ew:                                            ; preds = %.noexc359
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #18
  store i32 -1040056314, ptr %52, align 8, !tbaa !88
  store ptr %59, ptr %i.mk, align 8, !tbaa !89
  store i64 12884901891, ptr %i.ml, align 8, !tbaa !104
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %50, ptr noundef nonnull align 8 dereferenceable(24) %52)
          to label %_ZN2cv12ppf_match_3dL16getUnitYRotationEdRNS_4MatxIdLi3ELi3EEE.exit.i.i unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.afm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  br label %.body356

_ZN2cv12ppf_match_3dL16getUnitYRotationEdRNS_4MatxIdLi3ELi3EEE.exit.i.i: ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  store double %cos.i10.i.i, ptr %59, align 16, !tbaa !11
  store double %sin.i9.i.i, ptr %i.mm, align 16, !tbaa !11
  %i.afn = fneg double %sin.i9.i.i
  store double %i.afn, ptr %i.mn, align 16, !tbaa !11
  store double %cos.i10.i.i, ptr %i.mo, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i8.i.i)
  %i.afo = load double, ptr %i.mp, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i13.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i14.i.i)
  call void @sincos(double %i.afo, ptr nonnull %sincos.sin.i13.i.i, ptr nonnull %sincos.cos.i14.i.i)
  %sin.i15.i.i = load double, ptr %sincos.sin.i13.i.i, align 8 ; 4 uses
  %cos.i16.i.i = load double, ptr %sincos.cos.i14.i.i, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.mq, i8 0, i64 56, i1 false), !tbaa !11, !alias.scope !132
  store double 1.000000e+00, ptr %46, align 8, !tbaa !11, !alias.scope !132
  store double 1.000000e+00, ptr %i.mr, align 8, !tbaa !11, !alias.scope !132
  store double 1.000000e+00, ptr %i.ms, align 8, !tbaa !11, !alias.scope !132
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %45, align 16, !tbaa !104
  store i32 153, ptr %i.mt, align 16, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mu, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.mv, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc360 unwind label %bb.en

.noexc360:                                        ; preds = %_ZN2cv12ppf_match_3dL16getUnitYRotationEdRNS_4MatxIdLi3ELi3EEE.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.mw, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %43, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %46, i64 noundef 0)
          to label %.noexc361 unwind label %bb.en

.noexc361:                                        ; preds = %.noexc360
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  store i64 0, ptr %i.my, align 8
  store i32 33619968, ptr %44, align 8, !tbaa !88
  store ptr %45, ptr %i.mx, align 8, !tbaa !89
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(24) %44)
          to label %bb.ez unwind label %bb.ey

bb.ey:                                            ; preds = %.noexc361
  %i.afp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  br label %.body356

bb.ez:                                            ; preds = %.noexc361
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #18
  store i32 -1040056314, ptr %47, align 8, !tbaa !88
  store ptr %60, ptr %i.mz, align 8, !tbaa !89
  store i64 12884901891, ptr %i.na, align 8, !tbaa !104
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %45, ptr noundef nonnull align 8 dereferenceable(24) %47)
          to label %_ZN2cv12ppf_match_3dL16getUnitZRotationEdRNS_4MatxIdLi3ELi3EEE.exit.i.i unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.afq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %45) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  br label %.body356

_ZN2cv12ppf_match_3dL16getUnitZRotationEdRNS_4MatxIdLi3ELi3EEE.exit.i.i: ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %45) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  store double %cos.i16.i.i, ptr %60, align 8, !tbaa !11
  %i.afr = fneg double %sin.i15.i.i               ; 2 uses
  store double %i.afr, ptr %i.nb, align 8, !tbaa !11
  store double %sin.i15.i.i, ptr %i.nc, align 8, !tbaa !11
  store double %cos.i16.i.i, ptr %i.nd, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i13.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i14.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #18
  %i.afs = load double, ptr %i.nf, align 8, !tbaa !11, !noalias !133 ; 2 uses
  %i.aft = load <2 x double>, ptr %59, align 16, !tbaa !11, !noalias !133 ; 5 uses
  %i.afu = insertelement <2 x double> poison, double %i.afs, i64 0
  %i.afv = insertelement <2 x double> %i.afu, double %cos.i16.i.i, i64 1 ; 2 uses
  %i.afw = load double, ptr %i.nh, align 8, !tbaa !11, !noalias !133 ; 2 uses
  %i.afx = load <2 x double>, ptr %i.mm, align 16, !tbaa !11, !noalias !133 ; 5 uses
  %i.afy = shufflevector <2 x double> %i.aft, <2 x double> %i.afx, <2 x i32> <i32 1, i32 2>
  %i.afz = insertelement <2 x double> poison, double %i.afw, i64 0
  %i.aga = insertelement <2 x double> %i.afz, double %cos.i16.i.i, i64 1 ; 2 uses
  %i.agb = load double, ptr %i.ni, align 16, !tbaa !11, !noalias !133 ; 2 uses
  %i.agc = load <2 x double>, ptr %i.nj, align 8, !tbaa !11, !noalias !133 ; 4 uses
  %i.agd = shufflevector <2 x double> %i.aft, <2 x double> %i.afx, <2 x i32> <i32 0, i32 3>
  %i.age = insertelement <2 x double> poison, double %i.afr, i64 0 ; 2 uses
  %i.agf = insertelement <2 x double> %i.age, double %i.afs, i64 1
  %i.agg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agd, <2 x double> %i.agf, <2 x double> zeroinitializer) ; 2 uses
  %i.agh = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.agg, <2 x i32> <i32 0, i32 2>
  %i.agi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aft, <2 x double> %i.afv, <2 x double> %i.agh)
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.agj = load <2 x double>, ptr %58, align 16, !tbaa !11, !noalias !134 ; 4 uses
  %i.agk = extractelement <2 x double> %i.agj, i64 0
  %i.agl = load <2 x double>, ptr %i.ng, align 8, !tbaa !11, !noalias !133 ; 4 uses
  %i.agm = extractelement <2 x double> %i.agl, i64 0
  %i.agn = extractelement <2 x double> %i.agg, i64 1
  %i.ago = call double @llvm.fmuladd.f64(double %i.agb, double %i.agm, double %i.agn)
  %i.agp = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ago, i64 0
  %i.agq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agc, <2 x double> %i.aga, <2 x double> %i.agp) ; 4 uses
  %i.agr = load <2 x double>, ptr %i.nk, align 8, !tbaa !11, !noalias !133 ; 3 uses
  %i.ags = load double, ptr %i.mo, align 16, !tbaa !11, !noalias !133
  %i.agt = shufflevector <2 x double> %i.agc, <2 x double> %i.aft, <2 x i32> <i32 1, i32 2>
  %i.agu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agt, <2 x double> %i.afv, <2 x double> zeroinitializer)
  %i.agv = shufflevector <2 x double> %i.agr, <2 x double> %i.aft, <2 x i32> <i32 0, i32 3>
  %i.agw = insertelement <2 x double> %i.agl, double %sin.i15.i.i, i64 1
  %i.agx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agv, <2 x double> %i.agw, <2 x double> %i.agu)
  %i.agy = shufflevector <2 x double> %i.agr, <2 x double> %i.afx, <2 x i32> <i32 1, i32 2>
  %i.agz = insertelement <2 x double> %i.agl, double %i.afw, i64 0
  %i.aha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agy, <2 x double> %i.agz, <2 x double> %i.agx) ; 4 uses
  %i.ahb = extractelement <2 x double> %i.aha, i64 1
  %i.ahc = load <2 x double>, ptr %i.nl, align 16, !tbaa !11, !noalias !134 ; 4 uses
  %i.ahd = extractelement <2 x double> %i.agq, i64 0
  %i.ahe = shufflevector <2 x double> %i.agj, <2 x double> %i.ahc, <2 x i32> <i32 1, i32 2>
  %i.ahf = load double, ptr %i.lw, align 16, !tbaa !11, !noalias !134 ; 2 uses
  %i.ahg = extractelement <2 x double> %i.aha, i64 0
  %i.ahh = load <2 x double>, ptr %i.lx, align 8, !tbaa !11, !noalias !134 ; 4 uses
  %i.ahi = shufflevector <2 x double> %i.afx, <2 x double> %i.agc, <2 x i32> <i32 1, i32 3>
  %i.ahj = shufflevector <2 x double> %i.age, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahi, <2 x double> %i.ahj, <2 x double> zeroinitializer) ; 2 uses
  %i.ahl = load <2 x double>, ptr %i.ne, align 8, !tbaa !11, !noalias !133 ; 3 uses
  %i.ahm = shufflevector <2 x double> %i.agl, <2 x double> %i.ahl, <2 x i32> <i32 0, i32 3>
  %i.ahn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afy, <2 x double> %i.ahm, <2 x double> %i.agi) ; 4 uses
  %i.aho = insertelement <2 x double> %i.ahn, double 0.000000e+00, i64 1
  %i.ahp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afx, <2 x double> %i.aga, <2 x double> %i.aho) ; 4 uses
  %i.ahq = insertelement <2 x double> poison, double %i.agb, i64 0
  %i.ahr = shufflevector <2 x double> %i.ahq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahs = insertelement <2 x double> poison, double %sin.i15.i.i, i64 0
  %i.aht = insertelement <2 x double> %i.ahs, double %cos.i16.i.i, i64 1 ; 2 uses
  %i.ahu = shufflevector <2 x double> %i.ahp, <2 x double> %i.ahk, <2 x i32> <i32 1, i32 2>
  %i.ahv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahr, <2 x double> %i.aht, <2 x double> %i.ahu)
  %i.ahw = shufflevector <2 x double> %i.agc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahw, <2 x double> %i.ahl, <2 x double> %i.ahv) ; 4 uses
  %i.ahy = shufflevector <2 x double> %i.agr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahz = shufflevector <2 x double> %i.agq, <2 x double> %i.ahk, <2 x i32> <i32 1, i32 3>
  %i.aia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahy, <2 x double> %i.aht, <2 x double> %i.ahz)
  %i.aib = insertelement <2 x double> poison, double %i.ags, i64 0
  %i.aic = shufflevector <2 x double> %i.aib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aid = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aic, <2 x double> %i.ahl, <2 x double> %i.aia) ; 4 uses
  %i.aie = call double @llvm.fmuladd.f64(double %i.agk, double %i.ahb, double 0.000000e+00)
  %i.aif = shufflevector <2 x double> %i.ahn, <2 x double> %i.ahx, <2 x i32> <i32 1, i32 2>
  %i.aig = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.aie, i64 1
  %i.aih = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agj, <2 x double> %i.aif, <2 x double> %i.aig) ; 2 uses
  %i.aii = shufflevector <2 x double> %i.ahp, <2 x double> %i.ahx, <2 x i32> <i32 0, i32 3>
  %i.aij = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.aih, <2 x i32> <i32 0, i32 2>
  %i.aik = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agj, <2 x double> %i.aii, <2 x double> %i.aij)
  %i.ail = shufflevector <2 x double> %i.agq, <2 x double> %i.aid, <2 x i32> <i32 0, i32 3>
  %i.aim = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahe, <2 x double> %i.ail, <2 x double> %i.aik) ; 2 uses
  %i.ain = insertelement <2 x double> %i.aim, double 0.000000e+00, i64 1
  %i.aio = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahc, <2 x double> %i.aha, <2 x double> %i.ain) ; 2 uses
  %i.aip = shufflevector <2 x double> %i.aim, <2 x double> %i.aio, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.aip, ptr %i.nm, align 8, !tbaa !11, !alias.scope !134
  %i.aiq = shufflevector <2 x double> %i.aid, <2 x double> %i.ahn, <2 x i32> <i32 0, i32 3>
  %i.air = shufflevector <2 x double> %i.aih, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ais = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahc, <2 x double> %i.aiq, <2 x double> %i.air) ; 2 uses
  %i.ait = extractelement <2 x double> %i.ais, i64 0
  store double %i.ait, ptr %62, align 8, !tbaa !11, !alias.scope !134
  %i.aiu = insertelement <2 x double> poison, double %i.ahf, i64 0
  %i.aiv = shufflevector <2 x double> %i.aiu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aiw = shufflevector <2 x double> %i.aio, <2 x double> %i.ais, <2 x i32> <i32 1, i32 3>
  %i.aix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aiv, <2 x double> %i.ahx, <2 x double> %i.aiw)
  %i.aiy = shufflevector <2 x double> %i.ahh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aiz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aiy, <2 x double> %i.aid, <2 x double> %i.aix)
  store <2 x double> %i.aiz, ptr %i.nn, align 8, !tbaa !11, !alias.scope !134
  %i.aja = load double, ptr %i.ly, align 8, !tbaa !11, !noalias !134 ; 2 uses
  %i.ajb = load double, ptr %i.lz, align 16, !tbaa !11, !noalias !134 ; 2 uses
  %i.ajc = shufflevector <2 x double> %i.ahc, <2 x double> %i.ahh, <2 x i32> <i32 1, i32 3>
  %i.ajd = shufflevector <2 x double> %i.ahp, <2 x double> %i.ahn, <2 x i32> <i32 0, i32 3>
  %i.aje = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajc, <2 x double> %i.ajd, <2 x double> zeroinitializer) ; 2 uses
  %i.ajf = insertelement <2 x double> poison, double %i.aja, i64 0
  %i.ajg = shufflevector <2 x double> %i.ajf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajh = insertelement <2 x double> poison, double %i.ajb, i64 0
  %i.aji = shufflevector <2 x double> %i.ajh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajj = insertelement <2 x double> %i.ahh, double %i.ahf, i64 0
  %i.ajk = shufflevector <2 x double> %i.agq, <2 x double> %i.ahp, <2 x i32> <i32 0, i32 2>
  %i.ajl = insertelement <2 x double> %i.aje, double 0.000000e+00, i64 1
  %i.ajm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajj, <2 x double> %i.ajk, <2 x double> %i.ajl) ; 2 uses
  %i.ajn = insertelement <2 x double> %i.ajm, double 0.000000e+00, i64 1
  %i.ajo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahh, <2 x double> %i.aha, <2 x double> %i.ajn) ; 2 uses
  %i.ajp = extractelement <2 x double> %i.ajo, i64 0
  store double %i.ajp, ptr %i.no, align 8, !tbaa !11, !alias.scope !134
  %i.ajq = shufflevector <2 x double> %i.ajo, <2 x double> %i.aje, <2 x i32> <i32 1, i32 3>
  %i.ajr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajg, <2 x double> %i.ahx, <2 x double> %i.ajq)
  %i.ajs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aji, <2 x double> %i.aid, <2 x double> %i.ajr)
  store <2 x double> %i.ajs, ptr %i.np, align 8, !tbaa !11, !alias.scope !134
  %i.ajt = extractelement <2 x double> %i.ajm, i64 1
  %i.aju = call double @llvm.fmuladd.f64(double %i.aja, double %i.ahd, double %i.ajt)
  %i.ajv = call double @llvm.fmuladd.f64(double %i.ajb, double %i.ahg, double %i.aju)
  store double %i.ajv, ptr %i.nq, align 8, !tbaa !11, !alias.scope !134
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %61, align 16, !tbaa !104
  store i32 153, ptr %i.nr, align 16, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ns, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.nt, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc362 unwind label %bb.en

.noexc362:                                        ; preds = %_ZN2cv12ppf_match_3dL16getUnitZRotationEdRNS_4MatxIdLi3ELi3EEE.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.nu, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %41, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %62, i64 noundef 0)
          to label %.noexc363 unwind label %bb.en

.noexc363:                                        ; preds = %.noexc362
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  store i64 0, ptr %i.nw, align 8
  store i32 33619968, ptr %42, align 8, !tbaa !88
  store ptr %61, ptr %i.nv, align 8, !tbaa !89
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 8 dereferenceable(24) %42)
          to label %bb.fc unwind label %bb.fb

bb.fb:                                            ; preds = %.noexc363
  %i.ajw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  br label %.body356

bb.fc:                                            ; preds = %.noexc363
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #18
  store i32 -1040056314, ptr %63, align 8, !tbaa !88
  store ptr %64, ptr %i.nx, align 8, !tbaa !89
  store i64 12884901891, ptr %i.ny, align 8, !tbaa !104
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %61, ptr noundef nonnull align 8 dereferenceable(24) %63)
          to label %_ZN2cv12ppf_match_3dL10eulerToDCMERKNS_3VecIdLi3EEERNS_4MatxIdLi3ELi3EEE.exit.i unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ajx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %61) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #18
  br label %.body356

_ZN2cv12ppf_match_3dL10eulerToDCMERKNS_3VecIdLi3EEERNS_4MatxIdLi3ELi3EEE.exit.i: ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %61) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %33, i8 0, i64 96, i1 false), !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  store i32 -1056833530, ptr %34, align 8, !tbaa !88
  store ptr %64, ptr %i.oa, align 8, !tbaa !89
  store i64 12884901891, ptr %i.nz, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  store i32 -1056833530, ptr %35, align 8, !tbaa !88
  store ptr %123, ptr %i.oc, align 8, !tbaa !89
  store i64 12884901889, ptr %i.ob, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  store i32 -1040056314, ptr %36, align 8, !tbaa !88
  store ptr %33, ptr %i.od, align 8, !tbaa !89
  store i64 12884901892, ptr %i.oe, align 8, !tbaa !104
  invoke void @_ZN2cv7hconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %.noexc364 unwind label %bb.en

.noexc364:                                        ; preds = %_ZN2cv12ppf_match_3dL10eulerToDCMERKNS_3VecIdLi3EEERNS_4MatxIdLi3ELi3EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #18
  store i32 -1056833530, ptr %37, align 8, !tbaa !88
  store ptr %33, ptr %i.og, align 8, !tbaa !89
  store i64 12884901892, ptr %i.of, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.oh, align 8, !tbaa !11
  store i32 -1056833530, ptr %38, align 8, !tbaa !88
  store ptr %39, ptr %i.oj, align 8, !tbaa !89
  store i64 4294967300, ptr %i.oi, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  store i32 -1040056314, ptr %40, align 8, !tbaa !88
  store ptr %117, ptr %i.ok, align 8, !tbaa !89
  store i64 17179869188, ptr %i.ol, align 8, !tbaa !104
  invoke void @_ZN2cv7vconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %bb.fe unwind label %bb.en

bb.fe:                                            ; preds = %.noexc364
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #18
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %127, ptr noundef nonnull align 8 dereferenceable(208) %107)
          to label %bb.ff unwind label %bb.fk

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN2cv12ppf_match_3d15transformPCPoseENS_3MatERKNS_4MatxIdLi4ELi4EEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %126, ptr noundef nonnull align 8 %127, ptr noundef nonnull align 8 dereferenceable(128) %117)
          to label %bb.fg unwind label %bb.fl

bb.fg:                                            ; preds = %bb.ff
  %i.ajy = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %114, ptr noundef nonnull align 8 dereferenceable(208) %126)
          to label %bb.fh unwind label %bb.fm     ; 0 uses

bb.fh:                                            ; preds = %bb.fg
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %126) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %127) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #18
  store i32 0, ptr %i.om, align 8, !tbaa !125
  store i32 0, ptr %i.on, align 4, !tbaa !126
  store i32 16842752, ptr %128, align 8, !tbaa !88
  store ptr %120, ptr %i.oo, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #18
  store i32 0, ptr %i.op, align 8, !tbaa !125
  store i32 0, ptr %i.oq, align 4, !tbaa !126
  store i32 16842752, ptr %129, align 8, !tbaa !88
  store ptr %121, ptr %i.or, align 8, !tbaa !89
  %i.ajz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.fi unwind label %bb.fp

bb.fi:                                            ; preds = %bb.fh
  %i.aka = invoke noundef double @_ZN2cv4normERKNS_11_InputArrayES2_iS2_(ptr noundef nonnull align 8 dereferenceable(24) %128, ptr noundef nonnull align 8 dereferenceable(24) %129, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %i.ajz)
          to label %bb.fj unwind label %bb.fp

bb.fj:                                            ; preds = %bb.fi
  %i.akb = load i32, ptr %i.jl, align 8, !tbaa !77
end_hunk_1
begin_hunk_2_@_ZN2cv12ppf_match_3d3ICP20registerModelToSceneERKNS_3MatES4_RdRNS_4MatxIdLi4ELi4EEE:bb.a
  %.pn265.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn265.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ha ], [ %i.pi, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %93) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #18
  resume { ptr, i32 } %.pn265.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #18
  ret void
}

declare void @_ZN2cv12ppf_match_3d15transformPCPoseENS_3MatERKNS_4MatxIdLi4ELi4EEE(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare void @_ZN2cv12ppf_match_3d15samplePCUniformENS_3MatEi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef align 8, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare noundef ptr @_ZN2cv12ppf_match_3d12indexPCFlannENS_3MatE(ptr noundef align 8) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

declare void @_ZN2cv3MatC1EiPKiiPvPKm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN2cv12ppf_match_3d12queryPCFlannEPvRNS_3MatES3_S3_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cvltERKNS_3MatEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), double noundef) local_unnamed_addr #3

declare void @_ZN2cv12ppf_match_3d16hashtableDestroyEPNS0_8HSHTBL_iE(ptr noundef) local_unnamed_addr #3

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare noundef double @_ZN2cv4normERKNS_11_InputArrayES2_iS2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

declare void @_ZN2cv12ppf_match_3d12destroyFlannEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN2cv12ppf_match_3d3ICP20registerModelToSceneERKNS_3MatES4_RSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Matx.0", align 8        ; 10 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = load ptr, ptr %3, align 8, !tbaa !147
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 120
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.j, i8 0, i64 112, i1 false), !tbaa !11, !alias.scope !148
  store double 1.000000e+00, ptr %4, align 8, !tbaa !11, !alias.scope !148
  store double 1.000000e+00, ptr %i.k, align 8, !tbaa !11, !alias.scope !148
  store double 1.000000e+00, ptr %i.l, align 8, !tbaa !11, !alias.scope !148
  store double 1.000000e+00, ptr %i.m, align 8, !tbaa !11, !alias.scope !148
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.n = load ptr, ptr %3, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !153
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  invoke void @_ZN2cv12ppf_match_3d15transformPCPoseENS_3MatERKNS_4MatxIdLi4ELi4EEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %i.q)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  %i.r = load ptr, ptr %3, align 8, !tbaa !147
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = invoke noundef i32 @_ZN2cv12ppf_match_3d3ICP20registerModelToSceneERKNS_3MatES4_RdRNS_4MatxIdLi4ELi4EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %3, align 8, !tbaa !147
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !153
  invoke void @_ZN2cv12ppf_match_3d6Pose3D10appendPoseERNS_4MatxIdLi4ELi4EEE(ptr noundef nonnull align 8 dereferenceable(232) %i.y, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.aa = load ptr, ptr %3, align 8, !tbaa !147
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = shl i64 %i.ad, 28
  %i.af = ashr i64 %i.ae, 32
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.b, label %._crit_edge, !llvm.loop !143

bb.f:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi ptr [ %5, %bb.g ], [ %6, %bb.f ]
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.ah, %bb.f ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.sink) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv12ppf_match_3d6Pose3D10appendPoseERNS_4MatxIdLi4ELi4EEE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZN2cv12ppf_match_3d15hashtableCreateEmPFmjE(i64 noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN2cv12ppf_match_3d21hashtableInsertHashedEPNS0_8HSHTBL_iEjPv(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN2cv7hconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

declare void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #3

declare void @_ZN2cv7vconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { noreturn }
attributes #18 = { nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"double", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, i1 true, !"_ZNK2cv3MatclENS_5RangeES1_"}
!16 = distinct !{!16, !15, !"_ZNK2cv3MatclENS_5RangeES1_: argument 0"}
!17 = distinct !{!17, i1 true, !"_ZNK2cv3MatclENS_5RangeES1_"}
!18 = distinct !{!18, !17, !"_ZNK2cv3MatclENS_5RangeES1_: argument 0"}
!19 = distinct !{!19, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!20 = distinct !{!20, !19, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!21 = distinct !{!21, i1 true, !"_ZN2cv4MatxIdLi4ELi4EE3eyeEv"}
!22 = distinct !{!22, !21, !"_ZN2cv4MatxIdLi4ELi4EE3eyeEv: argument 0"}
!23 = distinct !{!23, !9, !106, !107}
!24 = distinct !{!24, !9, !106}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9, !106, !107}
!30 = distinct !{!30, !9, !107, !106}
!31 = distinct !{!31, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!32 = distinct !{!32, !31, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9, !106, !107}
!38 = distinct !{!38, !9, !106}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, i1 true, !"_ZNK2cv3Mat3rowEi"}
!41 = distinct !{!41, !40, !"_ZNK2cv3Mat3rowEi: argument 0"}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, i1 true, !"_ZNK2cv3Mat8rowRangeEii"}
!44 = distinct !{!44, !43, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!45 = distinct !{!45, i1 true, !"_ZNK2cv3Mat8rowRangeEii"}
!46 = distinct !{!46, !45, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!47 = distinct !{!47, i1 true, !"_ZN2cv4MatxIdLi3ELi3EE3eyeEv"}
!48 = distinct !{!48, !47, !"_ZN2cv4MatxIdLi3ELi3EE3eyeEv: argument 0"}
!49 = distinct !{!49, i1 true, !"_ZN2cv4MatxIdLi3ELi3EE3eyeEv"}
!50 = distinct !{!50, !49, !"_ZN2cv4MatxIdLi3ELi3EE3eyeEv: argument 0"}
!51 = distinct !{!51, i1 true, !"_ZN2cv4MatxIdLi3ELi3EE3eyeEv"}
!52 = distinct !{!52, !51, !"_ZN2cv4MatxIdLi3ELi3EE3eyeEv: argument 0"}
!53 = distinct !{!53, i1 true, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!54 = distinct !{!54, !53, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!55 = distinct !{!55, i1 true, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!56 = distinct !{!56, !55, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, i1 true, !"_ZNK2cv3Mat8rowRangeEii"}
!59 = distinct !{!59, !58, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!60 = distinct !{!60, i1 true, !"_ZNK2cv3Mat8colRangeEii"}
!61 = distinct !{!61, !60, !"_ZNK2cv3Mat8colRangeEii: argument 0"}
!62 = distinct !{!62, i1 true, !"_ZNK2cv3Mat8rowRangeEii"}
!63 = distinct !{!63, !62, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!64 = distinct !{!64, i1 true, !"_ZNK2cv3Mat8colRangeEii"}
!65 = distinct !{!65, !64, !"_ZNK2cv3Mat8colRangeEii: argument 0"}
!66 = distinct !{!66, i1 true, !"_ZN2cvdvIdLi3EEENS_3VecIT_XT0_EEERKS3_d"}
!67 = distinct !{!67, !66, !"_ZN2cvdvIdLi3EEENS_3VecIT_XT0_EEERKS3_d: argument 0"}
!68 = distinct !{!68, i1 true, !"_ZN2cvmlIdLi3ELi3EEENS_3VecIT_XT0_EEERKNS_4MatxIS2_XT0_EXT1_EEERKNS1_IS2_XT1_EEE"}
!69 = distinct !{!69, !68, !"_ZN2cvmlIdLi3ELi3EEENS_3VecIT_XT0_EEERKNS_4MatxIS2_XT0_EXT1_EEERKNS1_IS2_XT1_EEE: argument 0"}
!70 = !{!"p1 omnipotent char", !8, i64 0}
!71 = !{!"p1 _ZTSN2cv12MatAllocatorE", !8, i64 0}
!72 = !{!"p1 _ZTSN2cv8UMatDataE", !8, i64 0}
!73 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!74 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !73, i64 4, !5, i64 8, !4, i64 12}
!75 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!76 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !70, i64 24, !70, i64 32, !70, i64 40, !70, i64 48, !71, i64 56, !72, i64 64, !74, i64 72, !75, i64 128}
!77 = !{!76, !5, i64 8}
!78 = !{!"float", !4, i64 0}
!79 = !{!"_ZTSN2cv12ppf_match_3d3ICPE", !78, i64 8, !5, i64 12, !78, i64 16, !5, i64 20, !5, i64 24, !5, i64 28}
!80 = !{!79, !78, i64 16}
!81 = !{!76, !70, i64 24}
!82 = !{!"long", !4, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!78, !78, i64 0}
!85 = !{!16}
!86 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!87 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !8, i64 8, !86, i64 16}
!88 = !{!87, !5, i64 0}
!89 = !{!87, !8, i64 8}
!90 = !{!18}
!91 = !{!4, !4, i64 0}
!92 = !{!"p1 _ZTSN2cv5MatOpE", !8, i64 0}
!93 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !4, i64 0}
!94 = !{!"_ZTSN2cv3VecIdLi4EEE", !93, i64 0}
!95 = !{!"_ZTSN2cv7Scalar_IdEE", !94, i64 0}
!96 = !{!"_ZTSN2cv7MatExprE", !92, i64 0, !5, i64 8, !76, i64 16, !76, i64 224, !76, i64 432, !10, i64 640, !10, i64 648, !95, i64 656}
!97 = !{!96, !92, i64 0}
!98 = !{!20}
!99 = !{!"vtable pointer", !3, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!79, !5, i64 24}
!102 = !{!79, !78, i64 8}
!103 = !{!79, !5, i64 12}
!104 = !{!5, !5, i64 0}
!105 = !{!22}
!106 = !{!"llvm.loop.isvectorized", i32 1}
!107 = !{!"llvm.loop.unroll.runtime.disable"}
!108 = !{!32}
!109 = !{!"any p2 pointer", !8, i64 0}
!110 = !{!"p2 _ZTSN2cv12ppf_match_3d10hashnode_iE", !109, i64 0}
!111 = !{!"_ZTSN2cv12ppf_match_3d8HSHTBL_iE", !82, i64 0, !110, i64 8, !8, i64 16}
!112 = !{!111, !82, i64 0}
!113 = !{!111, !110, i64 8}
!114 = !{!"p1 _ZTSN2cv12ppf_match_3d10hashnode_iE", !8, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!"_ZTSN2cv12ppf_match_3d10hashnode_iE", !5, i64 0, !8, i64 8, !114, i64 16}
!117 = !{!116, !8, i64 8}
!118 = !{!116, !5, i64 0}
!119 = !{!116, !114, i64 16}
!120 = !{!76, !5, i64 12}
!121 = !{!41}
!122 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!123 = !{!122, !5, i64 0}
!124 = !{!122, !5, i64 4}
!125 = !{!86, !5, i64 0}
!126 = !{!86, !5, i64 4}
!127 = !{!44}
!128 = !{!46}
!129 = !{!48}
!130 = !{!76, !5, i64 16}
!131 = !{!50}
!132 = !{!52}
!133 = !{!54}
!134 = !{!56}
!135 = !{!59}
!136 = !{!61}
!137 = !{!63}
!138 = !{!65}
!139 = !{!67}
!140 = !{!69}
!141 = distinct !{!141, i1 true, !"_ZN2cv4MatxIdLi4ELi4EE3eyeEv"}
!142 = distinct !{!142, !141, !"_ZN2cv4MatxIdLi4ELi4EE3eyeEv: argument 0"}
!143 = distinct !{!143, !9}
!144 = !{!"p1 _ZTSN2cv3PtrINS_12ppf_match_3d6Pose3DEEE", !8, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE17_Vector_impl_dataE", !144, i64 0, !144, i64 8, !144, i64 16}
!146 = !{!145, !144, i64 8}
!147 = !{!145, !144, i64 0}
!148 = !{!142}
!149 = !{!"p1 _ZTSN2cv12ppf_match_3d6Pose3DE", !8, i64 0}
!150 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!151 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !150, i64 0}
!152 = !{!"_ZTSSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE", !149, i64 0, !151, i64 8}
!153 = !{!152, !149, i64 0}
end_hunk_2
