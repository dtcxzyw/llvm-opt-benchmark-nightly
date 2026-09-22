Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/affine_feature2d?download=true
inline.NumInlined: 720
inline.NumDeleted: 255
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv11xfeatures2d20AffineFeature2D_Impl6detectERKNS_11_InputArrayERSt6vectorINS0_17Elliptic_KeyPointESaIS6_EES4_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !25
  store ptr %5, ptr %i.j, align 8, !tbaa !24
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 5, double noundef f0x3F70101020000000, double noundef 0.000000e+00)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  invoke fastcc void @_ZN12_GLOBAL__N_126calcAffineCovariantRegionsERKN2cv3MatERKSt6vectorINS0_8KeyPointESaIS5_EERS4_INS0_11xfeatures2d17Elliptic_KeyPointESaISB_EE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.l = load ptr, ptr %4, align 8, !tbaa !28     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #20
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit:     ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.i:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.k ], [ %i.s, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn12 = phi { ptr, i32 } [ %i.u, %bb.m ], [ %.pn.pn, %bb.l ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %bb.n ], [ %i.r, %bb.i ]
  %i.v = load ptr, ptr %4, align 8, !tbaa !28     ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #20
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit18

_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit18:   ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn12.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_126calcAffineCovariantRegionsERKN2cv3MatERKSt6vectorINS0_8KeyPointESaIS5_EERS4_INS0_11xfeatures2d17Elliptic_KeyPointESaISB_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %5 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %8 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %9 = alloca %"class.cv::MatExpr", align 8       ; 9 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %14 = alloca %"class.cv::Matx.19", align 4      ; 8 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %19 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %22 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %23 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %26 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %28 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %29 = alloca %"class.cv::Matx.19", align 4      ; 9 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %31 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %32 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %35 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %36 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %37 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %38 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %39 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %40 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %41 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %42 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %43 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %44 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %45 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %46 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %47 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %48 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %49 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %50 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %51 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %52 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %53 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %54 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %55 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %56 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %57 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %58 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %59 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %60 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %61 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %62 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %63 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %64 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %65 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %66 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %67 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %68 = alloca %"class.cv::Matx", align 8         ; 13 uses
  %69 = alloca %"class.cv::Matx.19", align 16     ; 16 uses
  %70 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %71 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %72 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %73 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %74 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %75 = alloca %"class.cv::Rect_", align 8        ; 8 uses
  %76 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %77 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %78 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %79 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %80 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %81 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %82 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %83 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %84 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %85 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %86 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %87 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %88 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %89 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %90 = alloca %"class.cv::xfeatures2d::Elliptic_KeyPoint", align 8 ; 13 uses
  %91 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %92 = alloca %"class.cv::xfeatures2d::Elliptic_KeyPoint", align 8 ; 9 uses
  %93 = alloca %"class.cv::xfeatures2d::Elliptic_KeyPoint", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %69, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %69, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %90, i64 44 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %90, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %90, i64 16 ; 2 uses
  %.sroa.5394.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 3 uses
  %.sroa.6395.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %68, i64 12 ; 2 uses
  %.sroa.7396.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %68, i64 16
  %.sroa.8397.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %68, i64 20 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %90, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %79, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %79, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %79, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %80, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %81, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %78, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %84, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %64, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %66, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %61, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %61, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %61, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %30, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %34, i64 20
  %i.av = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %36, i64 432
  %i.az = getelementptr inbounds nuw i8, ptr %36, i64 224
  %i.ba = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %37, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %39, i64 432
  %i.bh = getelementptr inbounds nuw i8, ptr %39, i64 224
  %i.bi = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %42, i64 20
  %i.bl = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %41, i64 432
  %i.bn = getelementptr inbounds nuw i8, ptr %41, i64 224
  %i.bo = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %43, i64 20
  %i.br = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %47, i64 20
  %i.bw = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %46, i64 432
  %i.by = getelementptr inbounds nuw i8, ptr %46, i64 224
  %i.bz = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %48, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %52, i64 20
  %i.ch = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %51, i64 432
  %i.cj = getelementptr inbounds nuw i8, ptr %51, i64 224
  %i.ck = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %53, i64 20
  %i.cn = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %25, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %25, i64 128
  %i.ct = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.cw = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %27, i64 128
  %i.db = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.dc = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %55, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %55, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %55, i64 128
  %i.dj = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %71, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %71, i64 24 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %71, i64 128 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %72, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %72, i64 24 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %72, i64 128 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %73, i64 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %73, i64 24 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %73, i64 128 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %18, i64 432
  %i.ei = getelementptr inbounds nuw i8, ptr %18, i64 224
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %19, i64 432
  %i.el = getelementptr inbounds nuw i8, ptr %19, i64 224
  %i.em = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.eq = getelementptr inbounds nuw i8, ptr %22, i64 432
  %i.er = getelementptr inbounds nuw i8, ptr %22, i64 224
  %i.es = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %23, i64 432
  %i.eu = getelementptr inbounds nuw i8, ptr %23, i64 224
  %i.ev = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %87, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %88, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %89, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 432
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 432
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %85, i64 4 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %85, i64 24 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %85, i64 128 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 432
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 432
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %86, i64 4
  %i.fs = getelementptr inbounds nuw i8, ptr %86, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %86, i64 128
  %i.fu = getelementptr inbounds nuw i8, ptr %90, i64 36 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %90, i64 20
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv11xfeatures2d17Elliptic_KeyPointESaIS2_EE9push_backERKS2_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %91) #21
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !33 ; 2 uses
  %i.ga = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %.not85 = icmp eq ptr %i.fz, %i.ga
  br i1 %.not85, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %._crit_edge
  %i.gb = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %92, i64 36 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %93, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %93, i64 36 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %92, i64 20
  %i.gg = getelementptr inbounds nuw i8, ptr %93, i64 20
  %i.gh = getelementptr inbounds nuw i8, ptr %93, i64 44
  %i.gi = getelementptr inbounds nuw i8, ptr %92, i64 44
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_126calcAffineCovariantRegionsERKN2cv3MatERKSt6vectorINS0_8KeyPointESaIS5_EERS4_INS0_11xfeatures2d17Elliptic_KeyPointESaISB_EE:bb.a
bb.ct:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i.i
  %i.zj = load ptr, ptr %19, align 8, !tbaa !109  ; 2 uses
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !14
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 24
  %i.zm = load ptr, ptr %i.zl, align 8
  invoke void %i.zm(ptr noundef nonnull align 8 dereferenceable(8) %i.zj, ptr noundef nonnull align 8 dereferenceable(688) %19, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef -1)
          to label %bb.cu unwind label %bb.df, !inline_history !79

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ek) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.el) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.em) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.zn = load i32, ptr %i.en, align 4, !tbaa !103
  %i.zo = load ptr, ptr %i.eo, align 8, !tbaa !56 ; 3 uses
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !36
  %i.zq = call noundef float @sqrtf(float noundef %i.zp) #21 ; 5 uses
  store float %i.zq, ptr %i.zo, align 4, !tbaa !36
  %i.zr = icmp slt i32 %i.zn, 2
  %i.zs = load i64, ptr %i.ep, align 8
  %.sink.idx.i.i288.i = select i1 %i.zr, i64 0, i64 %i.zs
  %.sink.i.i289.i = getelementptr inbounds nuw i8, ptr %i.zo, i64 %.sink.idx.i.i288.i ; 2 uses
  %i.zt = load float, ptr %.sink.i.i289.i, align 4, !tbaa !36
  %i.zu = call noundef float @sqrtf(float noundef %i.zt) #21 ; 5 uses
  store float %i.zu, ptr %.sink.i.i289.i, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  invoke void @_ZN2cv3Mat4diagERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.cv unwind label %bb.dh

bb.cv:                                            ; preds = %bb.cu
  %i.zv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.cw unwind label %bb.di     ; 0 uses

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %23, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.cx unwind label %bb.dk

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %22, ptr noundef nonnull align 8 dereferenceable(688) %23, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.cy unwind label %bb.dl

bb.cy:                                            ; preds = %bb.cx
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %21) #21
  %i.zw = load ptr, ptr %22, align 8, !tbaa !109, !noalias !114 ; 2 uses
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !14
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 24
  %i.zz = load ptr, ptr %i.zy, align 8
  invoke void %i.zz(ptr noundef nonnull align 8 dereferenceable(8) %i.zw, ptr noundef nonnull align 8 dereferenceable(688) %22, ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i290.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i:             ; preds = %bb.cy
  %i.aab = invoke { <2 x float>, <2 x float> } @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi2ELi2EEEv(ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.dq unwind label %bb.dm     ; 2 uses

bb.da:                                            ; preds = %bb.cq
  %i.aac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.dp

bb.db:                                            ; preds = %bb.cr
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cs
  %i.aae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %18) #21
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn22.i.i = phi { ptr, i32 } [ %i.aae, %bb.dc ], [ %i.aad, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.dp

bb.de:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i.i
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.df:                                            ; preds = %bb.ct
  %i.aag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %19) #21
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.pn24.i.i = phi { ptr, i32 } [ %i.aag, %bb.df ], [ %i.aaf, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.dp

bb.dh:                                            ; preds = %bb.cu
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.di:                                            ; preds = %bb.cv
  %i.aai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #21
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.pn26.i.i = phi { ptr, i32 } [ %i.aai, %bb.di ], [ %i.aah, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.dp

bb.dk:                                            ; preds = %bb.cw
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dl:                                            ; preds = %bb.cx
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.dm:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %.body.i290.i

.body.i290.i:                                     ; preds = %bb.dm, %bb.cz
  %.pn28.i.i = phi { ptr, i32 } [ %i.aal, %bb.dm ], [ %i.aaa, %bb.cz ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #21
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %22) #21
  br label %bb.dn

bb.dn:                                            ; preds = %.body.i290.i, %bb.dl
  %.pn28.pn.i.i = phi { ptr, i32 } [ %.pn28.i.i, %.body.i290.i ], [ %i.aak, %bb.dl ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %23) #21
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dk
  %.pn28.pn.pn.i.i = phi { ptr, i32 } [ %.pn28.pn.i.i, %bb.dn ], [ %i.aaj, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dj, %bb.dg, %bb.dd, %bb.da
  %.pn28.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn28.pn.pn.i.i, %bb.do ], [ %.pn24.i.i, %bb.dg ], [ %.pn22.i.i, %bb.dd ], [ %i.aac, %bb.da ], [ %.pn26.i.i, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body.i

bb.dq:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.eq) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.er) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.es) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.et) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.eu) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ev) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.aam = fcmp olt float %i.zu, %i.zq
  %.sroa.speculated42.i.i = select i1 %i.aam, float %i.zu, float %i.zq
  %i.aan = fcmp olt float %i.zq, %i.zu
  %.sroa.speculated.i292.i = select i1 %i.aan, float %i.zu, float %i.zq
  %i.aao = fdiv float %.sroa.speculated42.i.i, %.sroa.speculated.i292.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.aap = fsub float 1.000000e+00, %i.aao        ; 3 uses
  %i.aaq = fcmp ord float %i.aap, 0.000000e+00
  %i.aar = fcmp une float %i.aap, 1.000000e+00
  %or.cond5.i = and i1 %i.aaq, %i.aar
  br i1 %or.cond5.i, label %bb.dr, label %bb.er

bb.dr:                                            ; preds = %bb.dq
  %i.aas = extractvalue { <2 x float>, <2 x float> } %i.aab, 1 ; 2 uses
  %i.aat = extractvalue { <2 x float>, <2 x float> } %i.aab, 0 ; 2 uses
  %94 = load <2 x float>, ptr %69, align 16, !tbaa !36 ; 2 uses
  %i.aau = shufflevector <2 x float> %94, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aav = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aau, <2 x float> %i.aat, <2 x float> zeroinitializer)
  %i.aaw = shufflevector <2 x float> %94, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aax = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaw, <2 x float> %i.aas, <2 x float> %i.aav)
  %95 = load <2 x float>, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %96 = shufflevector <2 x float> %95, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %96, <2 x float> %i.aat, <2 x float> zeroinitializer)
  %97 = shufflevector <2 x float> %95, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aaz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %97, <2 x float> %i.aas, <2 x float> %i.aay)
  store <2 x float> %i.aax, ptr %69, align 16
  store <2 x float> %i.aaz, ptr %i.e, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %85) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %86) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #21
  store i32 -1056833531, ptr %87, align 8, !tbaa !25
  store ptr %69, ptr %i.ex, align 8, !tbaa !24
  store i64 8589934594, ptr %i.ew, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #21
  store i64 0, ptr %i.ez, align 8
  store i32 33619968, ptr %88, align 8, !tbaa !25
  store ptr %85, ptr %i.ey, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #21
  store i64 0, ptr %i.fb, align 8
  store i32 33619968, ptr %89, align 8, !tbaa !25
  store ptr %86, ptr %i.fa, align 8, !tbaa !24
  %i.aba = invoke noundef zeroext i1 @_ZN2cv5eigenERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %87, ptr noundef nonnull align 8 dereferenceable(24) %88, ptr noundef nonnull align 8 dereferenceable(24) %89)
          to label %bb.ds unwind label %bb.el     ; 0 uses

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(208) %86)
          to label %.noexc.i unwind label %bb.em

.noexc.i:                                         ; preds = %bb.ds
  %i.abb = load ptr, ptr %3, align 8, !tbaa !109  ; 2 uses
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !14
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 24
  %i.abe = load ptr, ptr %i.abd, align 8
  invoke void %i.abe(ptr noundef nonnull align 8 dereferenceable(8) %i.abb, ptr noundef nonnull align 8 dereferenceable(688) %3, ptr noundef nonnull align 8 dereferenceable(208) %86, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit.i299.i unwind label %bb.dv, !inline_history !79

_ZN2cv3MataSERKNS_7MatExprE.exit.i299.i:          ; preds = %.noexc.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fc) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fd) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fe) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %86, i32 noundef 0)
          to label %.noexc305.i unwind label %bb.em

.noexc305.i:                                      ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i299.i
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #21
  %i.abf = load ptr, ptr %5, align 8, !tbaa !109, !noalias !115 ; 2 uses
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !14
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 24
  %i.abi = load ptr, ptr %i.abh, align 8
  invoke void %i.abi(ptr noundef nonnull align 8 dereferenceable(8) %i.abf, ptr noundef nonnull align 8 dereferenceable(688) %5, ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef -1)
          to label %bb.dt unwind label %.body.i300.i

.body.i300.i:                                     ; preds = %.noexc305.i
  %i.abj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ej

bb.dt:                                            ; preds = %.noexc305.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ff) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fg) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fh) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.abk = load i32, ptr %i.fi, align 4, !tbaa !103
  %i.abl = load ptr, ptr %i.fj, align 8, !tbaa !56 ; 5 uses
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !36 ; 3 uses
  %i.abn = icmp slt i32 %i.abk, 2                 ; 2 uses
  %i.abo = load i64, ptr %i.fk, align 8
  %.sink.idx.i.i301.i = select i1 %i.abn, i64 0, i64 %i.abo
  %.sink.i.i302.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 %.sink.idx.i.i301.i ; 2 uses
  %i.abp = load float, ptr %.sink.i.i302.i, align 4, !tbaa !36 ; 3 uses
  %i.abq = call noundef float @llvm.fabs.f32(float %i.abm)
  %i.abr = call noundef float @llvm.fabs.f32(float %i.abp)
  %i.abs = fcmp olt float %i.abq, %i.abr
  br i1 %i.abs, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %bb.dt
  store float 1.000000e+00, ptr %i.abl, align 4, !tbaa !36
  %i.abt = load i64, ptr %i.fk, align 8
  %.sink.idx.i50.i.i = select i1 %i.abn, i64 0, i64 %i.abt
  %.sink.i51.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 %.sink.idx.i50.i.i
  %i.abu = fdiv float %i.abp, %i.abm
  store float %i.abu, ptr %.sink.i51.i.i, align 4, !tbaa !36
  br label %bb.dx

bb.dv:                                            ; preds = %.noexc.i
  %i.abv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body306.i

bb.dw:                                            ; preds = %bb.dt
  store float 1.000000e+00, ptr %.sink.i.i302.i, align 4, !tbaa !36
  %i.abw = fdiv float %i.abm, %i.abp
  store float %i.abw, ptr %i.abl, align 4, !tbaa !36
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN2cv3Mat4diagERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %85)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %86, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.dz unwind label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(688) %9, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.ea unwind label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #21
  %i.abx = load ptr, ptr %8, align 8, !tbaa !109, !noalias !116 ; 2 uses
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !14
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 24
  %i.aca = load ptr, ptr %i.abz, align 8
  invoke void %i.aca(ptr noundef nonnull align 8 dereferenceable(8) %i.abx, ptr noundef nonnull align 8 dereferenceable(688) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit58.i.i unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.acb = landingpad { ptr, i32 }
          cleanup
  br label %.body56.i.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit58.i.i:           ; preds = %bb.ea
  %i.acc = invoke { <2 x float>, <2 x float> } @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi2ELi2EEEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.ek unwind label %bb.ef     ; 2 uses

bb.ec:                                            ; preds = %bb.dx
  %i.acd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ed:                                            ; preds = %bb.dy
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.ee:                                            ; preds = %bb.dz
  %i.acf = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ef:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit58.i.i
  %i.acg = landingpad { ptr, i32 }
          cleanup
  br label %.body56.i.i

.body56.i.i:                                      ; preds = %bb.ef, %bb.eb
  %.pn.i.i = phi { ptr, i32 } [ %i.acg, %bb.ef ], [ %i.acb, %bb.eb ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #21
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %8) #21
  br label %bb.eg

bb.eg:                                            ; preds = %.body56.i.i, %bb.ee
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body56.i.i ], [ %i.acf, %bb.ee ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #21
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ed
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.eg ], [ %i.ace, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.ec
  %.pn38.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %bb.eh ], [ %i.acd, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %.body.i300.i
  %.pn38.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn.i.i, %bb.ei ], [ %i.abj, %.body.i300.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body306.i

bb.ek:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit58.i.i
  %i.ach = extractvalue { <2 x float>, <2 x float> } %i.acc, 0
  %i.aci = extractvalue { <2 x float>, <2 x float> } %i.acc, 1
  store <2 x float> %i.ach, ptr %69, align 16
  store <2 x float> %i.aci, ptr %i.e, align 8, !tbaa !44
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fl) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fm) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fn) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fo) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fp) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fq) #21
end_hunk_1
