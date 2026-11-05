Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/bundle?download=true
inline.NumInlined: 411
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN2cv4usac17satisfyCheiralityERKNS_4MatxIdLi3ELi3EEERKNS_3VecIdLi3EEES8_S8_:bb.a
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.h, double %i.j)
  %i.m = load <2 x double>, ptr %i.c, align 8, !tbaa !9, !noalias !52
  %i.n = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.o = insertelement <2 x double> %i.n, double %i.e, i64 0
  %i.p = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.l, i64 0
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.o, <2 x double> %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load double, ptr %i.r, align 8, !tbaa !9, !noalias !52
  %i.t = extractelement <2 x double> %i.q, i64 1
  %i.u = tail call double @llvm.fmuladd.f64(double %i.s, double %i.h, double %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load double, ptr %i.v, align 8, !tbaa !9, !noalias !52
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %i.e, double %i.u) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load double, ptr %i.y, align 8, !tbaa !9, !noalias !52
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.i, double 0.000000e+00)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !9, !noalias !52
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.h, double %i.aa)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load double, ptr %i.ae, align 8, !tbaa !9, !noalias !52
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.e, double %i.ad) ; 2 uses
  %i.ah = load double, ptr %3, align 8, !tbaa !9  ; 2 uses
  %i.ai = extractelement <2 x double> %i.q, i64 0 ; 2 uses
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ah, double 0.000000e+00)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !9 ; 2 uses
  %i.am = tail call double @llvm.fmuladd.f64(double %i.x, double %i.al, double %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !9 ; 2 uses
  %i.ap = tail call noundef double @llvm.fmuladd.f64(double %i.ag, double %i.ao, double %i.am) ; 2 uses
  %i.aq = load double, ptr %1, align 8, !tbaa !9  ; 2 uses
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.aq, double 0.000000e+00)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load double, ptr %i.as, align 8, !tbaa !9 ; 2 uses
  %i.au = tail call double @llvm.fmuladd.f64(double %i.x, double %i.at, double %i.ar)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load double, ptr %i.av, align 8, !tbaa !9 ; 2 uses
  %i.ax = tail call noundef double @llvm.fmuladd.f64(double %i.ag, double %i.aw, double %i.au)
  %i.ay = fneg double %i.ax                       ; 2 uses
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.aq, double 0.000000e+00)
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.al, double %i.at, double %i.az)
  %i.bb = tail call noundef double @llvm.fmuladd.f64(double %i.ao, double %i.aw, double %i.ba) ; 2 uses
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.bb, double %i.ay)
  %i.bd = fcmp ogt double %i.bc, 0.000000e+00
  %i.be = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ay, double %i.bb)
  %i.bf = fcmp ogt double %i.be, 0.000000e+00
  %i.bg = and i1 %i.bd, %i.bf
  ret i1 %i.bg
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv4usac14refine_relposeERKNS_3MatERKSt6vectorIiSaIiEEiPNS0_10CameraPoseERKNS0_13BundleOptionsEPKd(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4, ptr noundef %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.cv::usac::MlesacLoss", align 8 ; 7 uses
  %9 = alloca %"class.cv::usac::RelativePoseJacobianAccumulator", align 8 ; 11 uses
  %10 = alloca %"class.cv::Matx.1", align 8       ; 20 uses
  %11 = alloca %"class.cv::Matx.2", align 8       ; 12 uses
  %12 = alloca %"class.cv::Matx.3", align 8       ; 9 uses
  %13 = alloca %"class.cv::Matx.2", align 8       ; 9 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %15 = alloca %"class.cv::Matx.1", align 8       ; 25 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"struct.cv::usac::CameraPose", align 16 ; 14 uses
  %19 = alloca %"class.cv::Vec", align 16         ; 6 uses
  %20 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %21 = alloca %"class.cv::Matx", align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !64 ; 2 uses
  %i.c = fmul double %i.b, %i.b                   ; 3 uses
  store double %i.c, ptr %8, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.e = fmul double %i.c, 3.000000e+00           ; 2 uses
  store double %i.e, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.g = insertelement <2 x double> poison, double %i.e, i64 0
  %i.h = insertelement <2 x double> %i.g, double %i.c, i64 1
  %i.i = fdiv <2 x double> splat (double 1.000000e+00), %i.h
  store <2 x double> %i.i, ptr %i.f, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  store ptr %0, ptr %9, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.j, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %2, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %8, ptr %i.l, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %5, ptr %i.m, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %10, i8 0, i64 200, i1 false), !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false), !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %12, i8 0, i64 48, i1 false), !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.o = load double, ptr %i.n, align 8, !tbaa !67
  %i.p = call noundef double @_ZNK2cv4usac31RelativePoseJacobianAccumulator8residualERKNS0_10CameraPoseE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.q = load i32, ptr %4, align 8, !tbaa !68
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph174, label %.loopexit162

.lr.ph174:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 192 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 112
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 136
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 144
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 152
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 160
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 176
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 192
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %18, i64 96
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bw = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %18, i64 72
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 88
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 80
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 120
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 136
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 160
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 176
  %i.by = getelementptr inbounds nuw i8, ptr %18, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph174, %bb.l
  %.057173 = phi i32 [ 0, %.lr.ph174 ], [ %i.lj, %bb.l ] ; 3 uses
  %.058172 = phi i1 [ true, %.lr.ph174 ], [ %i.kv, %bb.l ]
  %.061171 = phi double [ %i.p, %.lr.ph174 ], [ %.162, %bb.l ] ; 2 uses
  %.064170 = phi double [ %i.o, %.lr.ph174 ], [ %.165, %bb.l ] ; 12 uses
  br i1 %.058172, label %.preheader.preheader, label %.loopexit.4

.preheader.preheader:                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %10, i8 0, i64 200, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false), !tbaa !9
  call void @_ZNK2cv4usac31RelativePoseJacobianAccumulator10accumulateERKNS0_10CameraPoseERNS_4MatxIdLi5ELi5EEERNS5_IdLi5ELi1EEERNS5_IdLi3ELi2EEE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(200) %10, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(48) %12)
  %i.bz = load double, ptr %11, align 8, !tbaa !9 ; 2 uses
  %22 = fmul double %i.bz, %i.bz
  %i.ca = load double, ptr %i.s, align 8, !tbaa !9 ; 2 uses
  %i.cb = call double @llvm.fmuladd.f64(double %i.ca, double %i.ca, double %22)
  %i.cc = load double, ptr %i.t, align 8, !tbaa !9 ; 2 uses
  %i.cd = call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %i.cb)
  %i.ce = load double, ptr %i.u, align 8, !tbaa !9 ; 2 uses
  %i.cf = call double @llvm.fmuladd.f64(double %i.ce, double %i.ce, double %i.cd)
  %i.cg = load double, ptr %i.v, align 8, !tbaa !9 ; 2 uses
  %i.ch = call double @llvm.fmuladd.f64(double %i.cg, double %i.cg, double %i.cf)
  %sqrt = call double @llvm.sqrt.f64(double %i.ch)
  %i.ci = load double, ptr %i.w, align 8, !tbaa !69
  %i.cj = fcmp olt double %sqrt, %i.ci
  br i1 %i.cj, label %.loopexit162, label %.loopexit.4

.loopexit.4:                                      ; preds = %.preheader.preheader, %bb.b
  %i.ck = load double, ptr %10, align 8, !tbaa !9
  %i.cl = fadd double %.064170, %i.ck             ; 2 uses
  store double %i.cl, ptr %10, align 8, !tbaa !9
  %i.cm = load double, ptr %i.x, align 8, !tbaa !9
  %i.cn = fadd double %.064170, %i.cm             ; 2 uses
  store double %i.cn, ptr %i.x, align 8, !tbaa !9
  %i.co = load double, ptr %i.y, align 8, !tbaa !9
  %i.cp = fadd double %.064170, %i.co             ; 2 uses
  store double %i.cp, ptr %i.y, align 8, !tbaa !9
  %i.cq = load double, ptr %i.z, align 8, !tbaa !9
  %i.cr = fadd double %.064170, %i.cq             ; 2 uses
  store double %i.cr, ptr %i.z, align 8, !tbaa !9
  %i.cs = load double, ptr %i.aa, align 8, !tbaa !9
  %i.ct = fadd double %.064170, %i.cs             ; 2 uses
  store double %i.ct, ptr %i.aa, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false), !tbaa !9
  %.sroa.14.0.copyload = load double, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.31.0.copyload = load double, ptr %.sroa.31.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.cu = fneg double %i.cl
  store double %i.cu, ptr %15, align 8, !tbaa !9, !alias.scope !70
  %i.cv = fneg double %.sroa.14.0.copyload        ; 2 uses
  store double %i.cv, ptr %i.ab, align 8, !tbaa !9, !alias.scope !70
  store double %i.cv, ptr %i.af, align 8, !tbaa !9, !alias.scope !70
  %i.cw = fneg double %i.cn
  store double %i.cw, ptr %i.ag, align 8, !tbaa !9, !alias.scope !70
  %i.cx = load <2 x double>, ptr %.sroa.22.0..sroa_idx, align 8
  %i.cy = fneg <2 x double> %i.cx                 ; 3 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 0
  store double %i.cz, ptr %i.ac, align 8, !tbaa !9, !alias.scope !70
  %i.da = extractelement <2 x double> %i.cy, i64 1
  store double %i.da, ptr %i.ah, align 8, !tbaa !9, !alias.scope !70
  store <2 x double> %i.cy, ptr %i.ak, align 8, !tbaa !9, !alias.scope !70
  %i.db = fneg double %i.cp
  store double %i.db, ptr %i.al, align 8, !tbaa !9, !alias.scope !70
  %i.dc = fneg double %.sroa.31.0.copyload        ; 2 uses
  store double %i.dc, ptr %i.am, align 8, !tbaa !9, !alias.scope !70
  %i.dd = load <2 x double>, ptr %.sroa.29.0..sroa_idx, align 8
  %i.de = fneg <2 x double> %i.dd                 ; 3 uses
  %i.df = extractelement <2 x double> %i.de, i64 0
  store double %i.df, ptr %i.ad, align 8, !tbaa !9, !alias.scope !70
  %i.dg = extractelement <2 x double> %i.de, i64 1
  store double %i.dg, ptr %i.ai, align 8, !tbaa !9, !alias.scope !70
  store <2 x double> %i.de, ptr %i.ao, align 8, !tbaa !9, !alias.scope !70
  store double %i.dc, ptr %i.ap, align 8, !tbaa !9, !alias.scope !70
  %i.dh = fneg double %i.cr
  store double %i.dh, ptr %i.aq, align 8, !tbaa !9, !alias.scope !70
  %i.di = load <2 x double>, ptr %.sroa.35.0..sroa_idx, align 8
  %i.dj = fneg <2 x double> %i.di                 ; 3 uses
  %i.dk = extractelement <2 x double> %i.dj, i64 0
  store double %i.dk, ptr %i.ae, align 8, !tbaa !9, !alias.scope !70
  %i.dl = extractelement <2 x double> %i.dj, i64 1
  store double %i.dl, ptr %i.aj, align 8, !tbaa !9, !alias.scope !70
  store <2 x double> %i.dj, ptr %i.as, align 8, !tbaa !9, !alias.scope !70
  %i.dm = load <2 x double>, ptr %.sroa.37.0..sroa_idx, align 8
  %i.dn = fneg <2 x double> %i.dm                 ; 3 uses
  %i.do = extractelement <2 x double> %i.dn, i64 0
  store double %i.do, ptr %i.an, align 8, !tbaa !9, !alias.scope !70
  %i.dp = extractelement <2 x double> %i.dn, i64 1
  store double %i.dp, ptr %i.ar, align 8, !tbaa !9, !alias.scope !70
  store <2 x double> %i.dn, ptr %i.at, align 8, !tbaa !9, !alias.scope !70
  %i.dq = fneg double %i.ct
  store double %i.dq, ptr %i.au, align 8, !tbaa !9, !alias.scope !70
  store i32 -1056833530, ptr %14, align 8, !tbaa !24
  store ptr %15, ptr %i.aw, align 8, !tbaa !25
  store i64 21474836485, ptr %i.av, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  store i32 -1056833530, ptr %16, align 8, !tbaa !24
  store ptr %11, ptr %i.ay, align 8, !tbaa !25
  store i64 21474836481, ptr %i.ax, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  store i32 -1040056314, ptr %17, align 8, !tbaa !24
  store ptr %13, ptr %i.az, align 8, !tbaa !25
  store i64 21474836481, ptr %i.ba, align 8, !tbaa !26
  %i.dr = invoke noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef 0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.loopexit.4
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br i1 %i.dr, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ds = load double, ptr %13, align 8, !tbaa !9 ; 3 uses
  %23 = fmul double %i.ds, %i.ds
  %i.dt = load <2 x double>, ptr %i.bb, align 8, !tbaa !9 ; 3 uses
  %i.du = extractelement <2 x double> %i.dt, i64 0 ; 2 uses
  %i.dv = call double @llvm.fmuladd.f64(double %i.du, double %i.du, double %23)
  %i.dw = extractelement <2 x double> %i.dt, i64 1 ; 2 uses
  %i.dx = call double @llvm.fmuladd.f64(double %i.dw, double %i.dw, double %i.dv) ; 2 uses
  %i.dy = load <2 x double>, ptr %i.bc, align 8, !tbaa !9 ; 4 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 0 ; 2 uses
  %i.ea = call double @llvm.fmuladd.f64(double %i.dz, double %i.dz, double %i.dx)
  %i.eb = extractelement <2 x double> %i.dy, i64 1 ; 3 uses
  %i.ec = call double @llvm.fmuladd.f64(double %i.eb, double %i.eb, double %i.ea)
  %sqrt160 = call double @llvm.sqrt.f64(double %i.ec)
  %i.ed = load double, ptr %i.bd, align 8, !tbaa !71
  %i.ee = fcmp olt double %sqrt160, %i.ed
  br i1 %i.ee, label %.thread, label %bb.f

bb.e:                                             ; preds = %.loopexit.4
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.eg = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %sqrt161 = call double @llvm.sqrt.f64(double %i.dx) ; 3 uses
  %i.eh = call double @sin(double noundef %sqrt161) #13 ; 4 uses
  %i.ei = call double @cos(double noundef %sqrt161) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.be, align 16, !tbaa !76
  %i.ej = fdiv double 1.000000e+00, %sqrt161      ; 2 uses
  %i.ek = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x double> %i.dt, %i.el          ; 6 uses
  %i.en = fneg <2 x double> %i.em                 ; 5 uses
  %i.eo = extractelement <2 x double> %i.em, i64 0 ; 3 uses
  %i.ep = extractelement <2 x double> %i.em, i64 1
  %i.eq = extractelement <2 x double> %i.en, i64 1 ; 2 uses
  %i.er = extractelement <2 x double> %i.en, i64 0
  %i.es = fmul double %i.ds, %i.ej                ; 6 uses
  %i.et = fneg double %i.es                       ; 3 uses
  %i.eu = fmul double %i.ep, %i.eh
  %i.ev = fsub double 1.000000e+00, %i.ei         ; 4 uses
  %i.ew = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ey = fmul <2 x double> %i.em, %i.ex          ; 4 uses
  %i.ez = extractelement <2 x double> %i.ey, i64 1 ; 2 uses
  %i.fa = insertelement <2 x double> %i.em, double 0.000000e+00, i64 0 ; 2 uses
  %i.fb = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fc = shufflevector <2 x double> %i.ey, <2 x double> %i.en, <2 x i32> <i32 0, i32 2>
  %i.fd = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = load <2 x double>, ptr %3, align 8, !tbaa !9, !noalias !77 ; 6 uses
  %i.fg = extractelement <2 x double> %i.ff, i64 0
  %i.fh = fmul double %i.eo, %i.eh                ; 2 uses
  %i.fi = call double @llvm.fmuladd.f64(double %i.ez, double %i.eq, double 0.000000e+00)
  %i.fj = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fk = load <2 x double>, ptr %i.bf, align 8, !tbaa !9, !noalias !77 ; 6 uses
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> %i.ff, <2 x i32> <i32 0, i32 3>
  %i.fm = load <2 x double>, ptr %i.bg, align 8, !tbaa !9, !noalias !77 ; 5 uses
  %i.fn = shufflevector <2 x double> %i.fk, <2 x double> %i.fm, <2 x i32> <i32 1, i32 2>
  %i.fo = load double, ptr %i.bi, align 8, !tbaa !9, !noalias !77 ; 4 uses
  %i.fp = load <2 x double>, ptr %i.bh, align 8, !tbaa !9, !noalias !77 ; 5 uses
  %i.fq = extractelement <2 x double> %i.fp, i64 0 ; 2 uses
  %i.fr = extractelement <2 x double> %i.fp, i64 1
  %i.fs = insertelement <2 x double> %i.fp, double %i.fo, i64 0
  %i.ft = fmul double %i.es, %i.eh                ; 2 uses
  %i.fu = fmul double %i.ev, %i.eq                ; 3 uses
  %i.fv = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fw = call double @llvm.fmuladd.f64(double %i.ez, double %i.eo, double 0.000000e+00)
  %i.fx = fmul double %i.ev, %i.er                ; 2 uses
  %i.fy = insertelement <2 x double> poison, double %i.et, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.es, i64 1 ; 2 uses
  %i.ga = fmul <2 x double> %i.ex, %i.fz          ; 4 uses
  %i.gb = shufflevector <2 x double> %i.fb, <2 x double> %i.ga, <2 x i32> <i32 0, i32 2>
  %i.gc = fmul double %i.ev, 0.000000e+00         ; 5 uses
  %i.gd = call double @llvm.fmuladd.f64(double %i.gc, double 0.000000e+00, double 0.000000e+00)
  %i.ge = insertelement <2 x double> poison, double %i.gc, i64 0 ; 3 uses
  %i.gf = insertelement <2 x double> %i.ge, double %i.fu, i64 1
  %i.gg = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.gd, i64 1
  %i.gh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.em, <2 x double> %i.gg) ; 2 uses
  %i.gi = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.gh, <2 x i32> <i32 3, i32 1>
  %i.gj = insertelement <2 x double> %i.ey, double %i.gc, i64 1
  %i.gk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.en, <2 x double> %i.gi) ; 2 uses
  %i.gl = extractelement <2 x double> %i.gh, i64 0
  %i.gm = call double @llvm.fmuladd.f64(double %i.fu, double %i.et, double %i.gl)
  %i.gn = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.gm, i64 0
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> zeroinitializer, <2 x double> %i.gn) ; 2 uses
  %i.gp = insertelement <2 x double> %i.fv, double %i.gc, i64 1
  %i.gq = shufflevector <2 x double> %i.gk, <2 x double> %i.go, <2 x i32> <i32 1, i32 3>
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.fa, <2 x double> %i.gq)
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.fc, <2 x double> %i.gr) ; 2 uses
  %i.gt = insertelement <2 x double> %i.ge, double %i.fx, i64 1 ; 2 uses
  %i.gu = insertelement <2 x double> %i.fz, double 0.000000e+00, i64 1
  %i.gv = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.fw, i64 0
  %i.gw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.gu, <2 x double> %i.gv)
  %i.gx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %i.fa, <2 x double> %i.gw) ; 2 uses
  %i.gy = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.gx, <2 x i32> <i32 3, i32 1>
  %i.gz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.en, <2 x double> %i.gy) ; 2 uses
  %i.ha = call double @llvm.fmuladd.f64(double %i.fx, double %i.eo, double 0.000000e+00)
  %i.hb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hc = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.et, i64 1
  %i.hd = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.he = insertelement <2 x double> %i.hd, double %i.ha, i64 1
  %i.hf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.hc, <2 x double> %i.he)
  %i.hg = extractelement <2 x double> %i.gk, i64 0
  %i.hh = extractelement <2 x double> %i.go, i64 0
  %i.hi = fadd <2 x double> %i.gs, %i.fe
  %i.hj = fsub <2 x double> %i.gs, %i.fe
  %i.hk = shufflevector <2 x double> %i.hj, <2 x double> %i.hi, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.hl = extractelement <2 x double> %i.gx, i64 0
  %i.hm = fsub double %i.hl, %i.ft                ; 2 uses
  %i.hn = fmul double %i.eh, 0.000000e+00         ; 3 uses
  %i.ho = call double @llvm.fmuladd.f64(double %i.gc, double 0.000000e+00, double %i.fi)
  %i.hp = extractelement <2 x double> %i.ga, i64 0
  %i.hq = call double @llvm.fmuladd.f64(double %i.hp, double %i.es, double %i.ho)
  %i.hr = fadd double %i.fh, %i.hh                ; 2 uses
  %i.hs = insertelement <2 x double> %i.gz, double %i.hq, i64 1 ; 2 uses
  %i.ht = insertelement <2 x double> %i.fj, double %i.hn, i64 1 ; 2 uses
  %i.hu = fsub <2 x double> %i.hs, %i.ht          ; 2 uses
  %i.hv = fadd <2 x double> %i.hs, %i.ht          ; 2 uses
  %i.hw = shufflevector <2 x double> %i.hu, <2 x double> %i.hv, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hx = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.es, i64 0
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %i.hy, <2 x double> %i.hf)
  %i.ia = fadd double %i.hn, %i.hg                ; 3 uses
  %i.ib = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.ic = insertelement <2 x double> %i.ib, double %i.hn, i64 1
  %i.id = fadd <2 x double> %i.ic, %i.hz          ; 4 uses
  %i.ie = call double @llvm.fmuladd.f64(double %i.fg, double %i.ia, double 0.000000e+00)
  %i.if = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ie, i64 1
  %i.ig = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %i.hk, <2 x double> %i.if)
  %i.ih = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.hw, <2 x double> %i.ih) ; 2 uses
  %i.ij = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ik = insertelement <2 x double> %i.ij, double %i.ia, i64 1
  %i.il = shufflevector <2 x double> %i.hv, <2 x double> %i.hu, <2 x i32> <i32 1, i32 2>
  %i.im = shufflevector <2 x double> %i.ff, <2 x double> %i.fk, <2 x i32> <i32 0, i32 3>
  %i.in = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.im, <2 x double> %i.io, <2 x double> zeroinitializer)
  %i.iq = shufflevector <2 x double> %i.ff, <2 x double> %i.fm, <2 x i32> <i32 1, i32 2>
  %i.ir = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.is = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> zeroinitializer
  %i.it = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iq, <2 x double> %i.is, <2 x double> %i.ip) ; 2 uses
  %i.iu = insertelement <2 x double> %i.it, double 0.000000e+00, i64 1
  %i.iv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.ik, <2 x double> %i.iu) ; 2 uses
  %i.iw = insertelement <2 x double> %i.iv, double 0.000000e+00, i64 0
  %i.ix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.hk, <2 x double> %i.iw)
  %i.iy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.il, <2 x double> %i.ix) ; 2 uses
  %i.iz = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ja = shufflevector <2 x double> %i.iy, <2 x double> %i.it, <2 x i32> <i32 0, i32 3>
  %i.jb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> %i.id, <2 x double> %i.ja)
  %i.jc = call double @llvm.fmuladd.f64(double %i.fq, double %i.ia, double 0.000000e+00)
  %i.jd = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.jc, i64 1
  %i.je = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.hk, <2 x double> %i.jd)
  %i.jf = shufflevector <2 x double> %i.je, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.hw, <2 x double> %i.jf) ; 2 uses
  %i.jh = call double @llvm.fmuladd.f64(double %i.fq, double %i.hr, double 0.000000e+00)
  %i.ji = call double @llvm.fmuladd.f64(double %i.fr, double %i.hm, double %i.jh)
  %i.jj = fadd <2 x double> %i.fm, %i.jb
  %i.jk = insertelement <2 x double> %i.fk, double %i.fo, i64 1
  %i.jl = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jm = insertelement <2 x double> %i.jl, double %i.ji, i64 1
  %i.jn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.id, <2 x double> %i.jm) ; 2 uses
  %i.jo = extractelement <2 x double> %i.jn, i64 1
  %i.jp = fadd double %i.fo, %i.jo
  %i.jq = shufflevector <2 x double> %i.ii, <2 x double> %i.jn, <2 x i32> <i32 0, i32 2>
  %i.jr = fadd <2 x double> %i.ff, %i.jq
  store <2 x double> %i.jr, ptr %18, align 16
  %i.js = shufflevector <2 x double> %i.iv, <2 x double> %i.iy, <2 x i32> <i32 0, i32 3>
  %i.jt = fadd <2 x double> %i.fk, %i.js
  store <2 x double> %i.jt, ptr %.sroa.5118.0..sroa_idx, align 16
  store <2 x double> %i.jj, ptr %.sroa.7.0..sroa_idx, align 16
  store double %i.jp, ptr %.sroa.11.0..sroa_idx, align 16, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.ju = load double, ptr %12, align 8, !tbaa !9, !noalias !78
  %i.jv = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.jw = insertelement <2 x double> %i.jv, double %i.ju, i64 1
  %i.jx = shufflevector <2 x double> %i.id, <2 x double> %i.dy, <2 x i32> <i32 0, i32 2>
  %i.jy = shufflevector <2 x double> %i.jg, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.jz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.jx, <2 x double> %i.jy) ; 2 uses
  %i.ka = shufflevector <2 x double> %i.jg, <2 x double> %i.jz, <2 x i32> <i32 0, i32 2>
  %i.kb = fadd <2 x double> %i.fp, %i.ka
  store <2 x double> %i.kb, ptr %.sroa.9.0..sroa_idx, align 16
  %i.kc = load <2 x double>, ptr %i.bj, align 8, !tbaa !9, !noalias !78
  %i.kd = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.jz, <2 x i32> <i32 3, i32 1>
  %i.ke = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.eg, <2 x double> %i.kd) ; 2 uses
  %i.kf = extractelement <2 x double> %i.ke, i64 0
  store double %i.kf, ptr %21, align 8, !tbaa !9, !alias.scope !78
  %i.kg = load <2 x double>, ptr %i.bk, align 8, !tbaa !9, !noalias !78
  %i.kh = shufflevector <2 x double> %i.ke, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ki = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> %i.eg, <2 x double> %i.kh) ; 2 uses
  %i.kj = extractelement <2 x double> %i.ki, i64 0
  store double %i.kj, ptr %i.bl, align 8, !tbaa !9, !alias.scope !78
end_hunk_0
begin_hunk_1_@_ZNK2cv4usac31RelativePoseJacobianAccumulator8residualERKNS0_10CameraPoseE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load double, ptr %i.k, align 8, !tbaa !9, !noalias !87 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load double, ptr %i.m, align 8, !tbaa !9, !noalias !87 ; 3 uses
  %i.o = load <2 x double>, ptr %i.c, align 8, !tbaa !9, !noalias !86 ; 3 uses
  %i.p = load double, ptr %i.b, align 8, !tbaa !9, !noalias !86 ; 3 uses
  %i.q = fneg double %i.p                         ; 2 uses
  %i.r = extractelement <2 x double> %i.o, i64 0  ; 2 uses
  %i.s = fneg double %i.r                         ; 3 uses
  %i.t = load <2 x double>, ptr %1, align 8, !tbaa !9, !noalias !87 ; 3 uses
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.v = load <2 x double>, ptr %i.f, align 8, !tbaa !9, !noalias !87 ; 3 uses
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = load <2 x double>, ptr %i.g, align 8, !tbaa !9, !noalias !87 ; 3 uses
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.z = tail call double @llvm.fmuladd.f64(double %i.q, double %i.l, double %i.j)
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.r, double %i.n, double %i.z)
  %i.ab = shufflevector <2 x double> %i.o, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.ac = shufflevector <4 x double> <double 0.000000e+00, double 0.000000e+00, double poison, double 0.000000e+00>, <4 x double> %i.ab, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ad = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.u, <4 x double> %i.ac, <4 x double> zeroinitializer)
  %i.ae = insertelement <4 x double> <double poison, double 0.000000e+00, double poison, double poison>, double %i.q, i64 0
  %i.af = shufflevector <4 x double> %i.ae, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ag = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.af, <4 x double> %i.w, <4 x double> %i.ad)
  %i.ah = insertelement <2 x double> %i.o, double %i.e, i64 1
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.aj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ai, <4 x double> %i.y, <4 x double> %i.ag)
  %i.ak = extractelement <2 x double> %i.t, i64 1 ; 2 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ak, double 0.000000e+00)
  %i.am = extractelement <2 x double> %i.v, i64 1 ; 2 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double 0.000000e+00, double %i.al)
  %i.ao = extractelement <2 x double> %i.x, i64 1 ; 2 uses
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.e, double %i.ao, double %i.an)
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.p, double %i.i, double 0.000000e+00)
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.l, double 0.000000e+00, double %i.aq)
  %i.as = tail call double @llvm.fmuladd.f64(double %i.e, double %i.n, double %i.ar)
  %i.at = extractelement <2 x double> %i.t, i64 0
  %i.au = tail call double @llvm.fmuladd.f64(double %i.s, double %i.at, double 0.000000e+00)
  %i.av = extractelement <2 x double> %i.v, i64 0
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.d, double %i.av, double %i.au)
  %i.ax = extractelement <2 x double> %i.x, i64 0
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double 0.000000e+00, double %i.aw)
  %i.az = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ak, double 0.000000e+00)
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.d, double %i.am, double %i.az)
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ao, double 0.000000e+00, double %i.ba)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.s, double %i.i, double 0.000000e+00)
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.d, double %i.l, double %i.bc)
  %i.be = tail call double @llvm.fmuladd.f64(double %i.n, double 0.000000e+00, double %i.bd)
  %i.bf = fptrunc double %i.aa to float           ; 2 uses
  %i.bg = fptrunc <4 x double> %i.aj to <4 x float> ; 4 uses
  %i.bh = fptrunc double %i.ap to float           ; 2 uses
  %i.bi = fptrunc double %i.as to float           ; 2 uses
  %i.bj = fptrunc double %i.ay to float           ; 4 uses
  %i.bk = fptrunc double %i.bb to float           ; 4 uses
  %i.bl = fptrunc double %i.be to float           ; 2 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !20 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !42 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !21 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !43, !nonnull !38, !align !39 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !12 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load double, ptr %i.cc, align 8         ; 2 uses
  %wide.trip.count67 = zext nneg i32 %i.bq to i64 ; 2 uses
  br i1 %i.bx, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ce = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.cf = shufflevector <4 x float> %i.bg, <4 x float> %i.ce, <4 x i32> <i32 3, i32 2, i32 4, i32 4>
  %i.cg = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ch = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.ci = shufflevector <4 x float> %i.bg, <4 x float> %i.ch, <4 x i32> <i32 3, i32 2, i32 4, i32 4>
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %.05759.us = phi double [ %i.dx, %.lr.ph.split.us ], [ 0.000000e+00, %.lr.ph.split.us.preheader ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv64
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !26
  %i.cl = shl nsw i32 %i.ck, 2
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.cm ; 4 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %i.cp = getelementptr i8, ptr %i.cn, i64 8
  %i.cq = getelementptr i8, ptr %i.cn, i64 12
  %i.cr = load <4 x float>, ptr %i.cn, align 4, !tbaa !45 ; 3 uses
  %i.cs = load float, ptr %i.cq, align 4, !tbaa !45
  %i.ct = load float, ptr %i.cp, align 4, !tbaa !45
  %i.cu = load float, ptr %i.co, align 4, !tbaa !45
  %i.cv = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.cw = fmul <4 x float> %i.cv, %i.ci
  %i.cx = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.cx, <4 x float> %i.cw) ; 4 uses
  %i.cz = extractelement <4 x float> %i.cy, i64 0
  %i.da = fadd float %i.cz, %i.bf                 ; 3 uses
  %i.db = extractelement <4 x float> %i.cy, i64 2
  %i.dc = fadd float %i.db, %i.bi                 ; 3 uses
  %i.dd = extractelement <4 x float> %i.cy, i64 1
  %i.de = fadd float %i.dd, %i.bj                 ; 2 uses
  %i.df = extractelement <4 x float> %i.cy, i64 3
  %i.dg = fadd float %i.df, %i.bk                 ; 2 uses
  %i.dh = fmul float %i.cs, %i.dc
  %i.di = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.da, float %i.dh)
  %i.dj = extractelement <4 x float> %i.cr, i64 0
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.dj, float %i.di)
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.cu, float %i.dk)
  %i.dm = fadd float %i.dl, %i.bl                 ; 2 uses
  %i.dn = fmul float %i.dm, %i.dm
  %i.do = fmul float %i.dc, %i.dc
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.do)
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.dp)
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.dq)
  %i.ds = fdiv float %i.dn, %i.dr
  %i.dt = fpext float %i.ds to double             ; 2 uses
  %i.du = fcmp ogt double %i.cb, %i.dt
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.cd, double -1.000000e+00)
  %i.dw = select i1 %i.du, double %i.dv, double 0.000000e+00
  %i.dx = fadd double %.05759.us, %i.dw           ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !85

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %.057.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.dx, %.lr.ph.split.us ], [ %i.fo, %.lr.ph.split ]
  ret double %.057.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %.05759 = phi double [ %i.fo, %.lr.ph.split ], [ 0.000000e+00, %.lr.ph.split.preheader ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !26
  %i.ea = shl nsw i32 %i.dz, 2
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.eb ; 4 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 4
  %i.ee = getelementptr i8, ptr %i.ec, i64 8
  %i.ef = getelementptr i8, ptr %i.ec, i64 12
  %i.eg = load <4 x float>, ptr %i.ec, align 4, !tbaa !45 ; 3 uses
  %i.eh = load float, ptr %i.ef, align 4, !tbaa !45
  %i.ei = load float, ptr %i.ee, align 4, !tbaa !45
  %i.ej = load float, ptr %i.ed, align 4, !tbaa !45
  %i.ek = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.el = fmul <4 x float> %i.ek, %i.cf
  %i.em = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.en = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.em, <4 x float> %i.el) ; 4 uses
  %i.eo = extractelement <4 x float> %i.en, i64 0
  %i.ep = fadd float %i.eo, %i.bf                 ; 3 uses
  %i.eq = extractelement <4 x float> %i.en, i64 2
  %i.er = fadd float %i.eq, %i.bi                 ; 3 uses
  %i.es = extractelement <4 x float> %i.en, i64 1
  %i.et = fadd float %i.es, %i.bj                 ; 2 uses
  %i.eu = extractelement <4 x float> %i.en, i64 3
  %i.ev = fadd float %i.eu, %i.bk                 ; 2 uses
  %i.ew = fmul float %i.eh, %i.er
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ep, float %i.ew)
  %i.ey = extractelement <4 x float> %i.eg, i64 0
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.ey, float %i.ex)
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.ej, float %i.ez)
  %i.fb = fadd float %i.fa, %i.bl                 ; 2 uses
  %i.fc = fmul float %i.fb, %i.fb
  %i.fd = fmul float %i.er, %i.er
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.fd)
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.fe)
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.ff)
  %i.fh = fdiv float %i.fc, %i.fg
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !9
  %i.fk = fpext float %i.fh to double             ; 2 uses
  %i.fl = fcmp ogt double %i.cb, %i.fk
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.cd, double -1.000000e+00)
  %i.fn = select i1 %i.fl, double %i.fm, double 0.000000e+00
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.fn, double %.05759) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count67
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !85
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv4usac31RelativePoseJacobianAccumulator10accumulateERKNS0_10CameraPoseERNS_4MatxIdLi5ELi5EEERNS5_IdLi5ELi1EEERNS5_IdLi3ELi2EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !9 ; 6 uses
  %5 = extractelement <2 x double> %i.f, i64 0    ; 6 uses
  %6 = tail call noundef double @llvm.fabs.f64(double %5) ; 2 uses
  %7 = load <2 x double>, ptr %i.e, align 8, !tbaa !9 ; 12 uses
  %i.g = extractelement <2 x double> %7, i64 0    ; 3 uses
  %8 = tail call noundef double @llvm.fabs.f64(double %i.g) ; 2 uses
  %i.h = fcmp olt double %6, %8
  %i.i = extractelement <2 x double> %7, i64 1    ; 4 uses
  %i.j = tail call noundef double @llvm.fabs.f64(double %i.i) ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = fcmp olt double %6, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = fmul double %i.i, -0.000000e+00
  %i.m = fmul double %5, 0.000000e+00
  %i.n = fsub double %i.i, %i.m
  %9 = fneg double %i.g
  %10 = insertelement <2 x double> poison, double %9, i64 0
  %i.o = insertelement <2 x double> %10, double %i.l, i64 1
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> zeroinitializer, <2 x double> %i.o) ; 2 uses
  %11 = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %12 = insertelement <2 x double> %11, double %i.n, i64 0
  br label %_ZN2cv4MatxIdLi9ELi3EEC2ESt16initializer_listIdE.exit

bb.d:                                             ; preds = %bb.b
  %i.q = fneg double %5
  %i.r = fmul <2 x double> %7, <double -0.000000e+00, double 0.000000e+00> ; 2 uses
  %shift = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %7, %shift
  %13 = shufflevector <2 x double> %7, <2 x double> %i.f, <2 x i32> <i32 1, i32 2>
  %14 = insertelement <2 x double> poison, double %i.q, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> zeroinitializer, <2 x double> %15) ; 2 uses
  %16 = shufflevector <2 x double> %i.s, <2 x double> %foldExtExtBinop, <2 x i32> <i32 1, i32 2>
  br label %_ZN2cv4MatxIdLi9ELi3EEC2ESt16initializer_listIdE.exit

bb.e:                                             ; preds = %bb.a
  %i.t = fcmp olt double %8, %i.j
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = fneg double %i.i
  %17 = fmul double %5, -0.000000e+00
  %18 = fmul double %i.g, 0.000000e+00
  %i.v = insertelement <2 x double> poison, double %i.u, i64 0
  %19 = insertelement <2 x double> %i.v, double %17, i64 1
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> zeroinitializer, <2 x double> %19) ; 2 uses
  %20 = fsub double %5, %18                       ; 2 uses
  %21 = insertelement <2 x double> poison, double %20, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> %i.w, <2 x i32> <i32 0, i32 2>
  %23 = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %24 = insertelement <2 x double> %23, double %20, i64 1
  br label %_ZN2cv4MatxIdLi9ELi3EEC2ESt16initializer_listIdE.exit

bb.g:                                             ; preds = %bb.e
  %i.x = fneg double %5
  %i.y = fmul <2 x double> %7, <double -0.000000e+00, double 0.000000e+00> ; 2 uses
  %shift397 = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop398 = fsub <2 x double> %7, %shift397
  %25 = shufflevector <2 x double> %7, <2 x double> %i.f, <2 x i32> <i32 1, i32 2>
  %26 = insertelement <2 x double> poison, double %i.x, i64 0
  %27 = shufflevector <2 x double> %26, <2 x double> %i.y, <2 x i32> <i32 0, i32 2>
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> zeroinitializer, <2 x double> %27) ; 2 uses
  %28 = shufflevector <2 x double> %i.z, <2 x double> %foldExtExtBinop398, <2 x i32> <i32 1, i32 2>
  br label %_ZN2cv4MatxIdLi9ELi3EEC2ESt16initializer_listIdE.exit

_ZN2cv4MatxIdLi9ELi3EEC2ESt16initializer_listIdE.exit: ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %29 = phi <2 x double> [ %i.p, %bb.c ], [ %16, %bb.d ], [ %22, %bb.f ], [ %28, %bb.g ] ; 4 uses
  %i.aa = phi <2 x double> [ %12, %bb.c ], [ %i.s, %bb.d ], [ %24, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %foldExtExtBinop397 = fmul <2 x double> %29, %29
  %30 = extractelement <2 x double> %foldExtExtBinop397, i64 1
  %i.ab = extractelement <2 x double> %i.aa, i64 0 ; 2 uses
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %30)
  %i.ad = extractelement <2 x double> %29, i64 0  ; 2 uses
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ad, double %i.ac)
  %sqrt321 = tail call double @llvm.sqrt.f64(double %i.ae)
  %i.af = fdiv double 1.000000e+00, %sqrt321
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = insertelement <2 x double> poison, double %i.af, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %31 = fmul <2 x double> %29, %i.av              ; 10 uses
  %i.aw = fmul <2 x double> %i.aa, %i.av          ; 6 uses
  %i.ax = extractelement <2 x double> %31, i64 0
  store double %i.ax, ptr %i.ak, align 8, !tbaa !9
  %i.ay = extractelement <2 x double> %31, i64 1  ; 3 uses
  store double %i.ay, ptr %4, align 8, !tbaa !9
  %32 = fneg <2 x double> %i.aw
  %33 = shufflevector <2 x double> %7, <2 x double> %i.f, <2 x i32> <i32 1, i32 2>
  %34 = fmul <2 x double> %33, %32
  %35 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %31, <2 x double> %34) ; 6 uses
  %36 = extractelement <2 x double> %i.aw, i64 0  ; 3 uses
  store double %36, ptr %i.ai, align 8, !tbaa !9
  %37 = shufflevector <2 x double> %7, <2 x double> %35, <2 x i32> <i32 0, i32 2>
  %38 = fneg <2 x double> %31
  %39 = shufflevector <2 x double> %38, <2 x double> %35, <2 x i32> <i32 1, i32 2>
  %40 = fmul <2 x double> %37, %39
  %41 = shufflevector <2 x double> %i.f, <2 x double> %35, <2 x i32> <i32 0, i32 3>
  %42 = shufflevector <2 x double> %i.aw, <2 x double> %35, <2 x i32> <i32 0, i32 3>
  %43 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %41, <2 x double> %42, <2 x double> %40) ; 3 uses
  %44 = extractelement <2 x double> %43, i64 0    ; 2 uses
  %45 = extractelement <2 x double> %43, i64 1
  %i.az = tail call double @llvm.fmuladd.f64(double %44, double %44, double %45)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.az)
  %i.ba = fdiv double 1.000000e+00, %sqrt
  %46 = insertelement <2 x double> poison, double %i.ba, i64 0
  %47 = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %48 = fmul <2 x double> %35, %47                ; 5 uses
  %49 = shufflevector <2 x double> %43, <2 x double> %35, <2 x i32> <i32 0, i32 2>
  %i.bb = fmul <2 x double> %49, %47              ; 9 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 1 ; 2 uses
  store double %i.bc, ptr %i.ah, align 8, !tbaa !9
  %50 = extractelement <2 x double> %48, i64 1    ; 3 uses
  store double %50, ptr %i.aj, align 8, !tbaa !9
  %i.bd = extractelement <2 x double> %i.bb, i64 0
  store double %i.bd, ptr %i.al, align 8, !tbaa !9
  %i.be = load double, ptr %i.ar, align 8, !tbaa !9, !noalias !93 ; 5 uses
  %i.bf = load <2 x double>, ptr %i.e, align 8, !tbaa !9, !noalias !94 ; 4 uses
  %i.bg = load double, ptr %i.ag, align 8, !tbaa !9, !noalias !94
  %i.bh = fneg double %i.bg
  %i.bi = extractelement <2 x double> %i.bf, i64 0
  %i.bj = fneg double %i.bi                       ; 2 uses
  %i.bk = load <2 x double>, ptr %1, align 8, !tbaa !9, !noalias !93 ; 8 uses
  %i.bl = load double, ptr %i.ao, align 8, !tbaa !9, !noalias !93 ; 4 uses
  %i.bm = load <2 x double>, ptr %i.am, align 8, !tbaa !9, !noalias !93 ; 5 uses
  %i.bn = load double, ptr %i.ap, align 8, !tbaa !9, !noalias !93 ; 4 uses
  %i.bo = load double, ptr %i.as, align 8, !tbaa !9, !noalias !93 ; 5 uses
  %i.bp = shufflevector <2 x double> %i.bk, <2 x double> %i.bf, <2 x i32> <i32 0, i32 3>
  %i.bq = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bq, <2 x double> zeroinitializer)
  %i.bs = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bh, i64 0 ; 3 uses
  %i.bt = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.bt, <2 x double> %i.br)
  %i.bv = shufflevector <2 x double> %i.bk, <2 x double> %i.bf, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bw = insertelement <2 x double> %i.bk, double 0.000000e+00, i64 0
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bw, <2 x double> zeroinitializer)
  %i.by = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.by, <2 x double> %i.bx)
  %i.ca = insertelement <2 x double> %i.bv, double %i.be, i64 0
  %i.cb = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.be, i64 1
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cb, <2 x double> zeroinitializer)
  %i.cd = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.ce, <2 x double> %i.cc)
  %51 = extractelement <2 x double> %i.bk, i64 0
  %i.cg = load double, ptr %i.d, align 8, !tbaa !9, !noalias !94 ; 3 uses
  %i.ch = fneg double %i.cg
  %i.ci = load double, ptr %i.at, align 8, !tbaa !9, !noalias !93 ; 3 uses
  %i.cj = insertelement <2 x double> %i.bf, double %i.ch, i64 1 ; 3 uses
  %i.ck = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.cl, <2 x double> %i.cf) ; 5 uses
  %52 = extractelement <2 x double> %i.bm, i64 0  ; 2 uses
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.be, double 0.000000e+00)
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.bo, double %i.cn)
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.ci, double 0.000000e+00, double %i.co) ; 3 uses
  %i.cq = extractelement <2 x double> %i.cm, i64 1
  %53 = fneg double %i.cp
  %i.cr = fneg double %51                         ; 2 uses
  %i.cs = insertelement <2 x double> %i.bm, double %i.ci, i64 1
  %i.ct = fneg <2 x double> %i.cs                 ; 3 uses
  %i.cu = load <2 x double>, ptr %i.an, align 8, !tbaa !9, !noalias !93 ; 5 uses
  %i.cv = load double, ptr %i.aq, align 8, !tbaa !9, !noalias !93 ; 4 uses
  %i.cw = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.cw, <2 x double> %i.bu) ; 6 uses
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.cx, <2 x double> %i.bz) ; 5 uses
  %i.da = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = insertelement <2 x double> %i.bk, double %i.bl, i64 1
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.dc, <2 x double> zeroinitializer)
  %i.de = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = insertelement <2 x double> %i.bm, double %i.bn, i64 1
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dg, <2 x double> %i.dd)
  %i.di = insertelement <2 x double> %i.cu, double %i.cv, i64 1
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> zeroinitializer, <2 x double> %i.dh) ; 6 uses
  %i.dk = extractelement <2 x double> %i.dj, i64 0 ; 2 uses
  %i.dl = fneg double %i.dk
  %i.dm = extractelement <2 x double> %i.cz, i64 0 ; 2 uses
  %i.dn = fneg double %i.dm
  %i.do = extractelement <2 x double> %i.cz, i64 1 ; 2 uses
  %i.dp = fneg double %i.do
  %i.dq = shufflevector <2 x double> %i.dj, <2 x double> %i.cm, <2 x i32> <i32 1, i32 2>
  %i.dr = fneg <2 x double> %i.dq
  %i.ds = insertelement <2 x double> %i.cu, double %i.be, i64 1 ; 2 uses
  %i.dt = fneg <2 x double> %i.ds                 ; 3 uses
  %54 = fmul double %36, %i.cr
  %55 = tail call double @llvm.fmuladd.f64(double %i.ay, double %52, double %54)
  %56 = shufflevector <2 x double> %i.bb, <2 x double> %31, <2 x i32> <i32 0, i32 3> ; 2 uses
  %57 = fmul <2 x double> %56, %i.ct
  %i.du = shufflevector <2 x double> %i.bb, <2 x double> %i.aw, <2 x i32> <i32 1, i32 2>
  %i.dv = fmul <2 x double> %i.du, %i.dt
  %58 = fmul double %50, %i.cr
  %59 = tail call double @llvm.fmuladd.f64(double %i.bc, double %52, double %58)
  %60 = fneg double %i.bl                         ; 2 uses
  %i.dw = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.dx = insertelement <2 x double> %i.dw, double %i.cv, i64 1
  %61 = fneg <2 x double> %i.dx                   ; 3 uses
  %62 = fmul double %36, %60
  %63 = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.bn, double %62)
  %foldExtExtBinop399 = fmul <2 x double> %i.bb, %61
  %64 = extractelement <2 x double> %foldExtExtBinop399, i64 0
  %65 = tail call double @llvm.fmuladd.f64(double %50, double %i.cv, double %64)
  %66 = shufflevector <2 x double> %48, <2 x double> %31, <2 x i32> <i32 1, i32 2>
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %66, <2 x double> %i.ds, <2 x double> %57)
  %i.dz = insertelement <2 x double> %i.bk, double %i.bo, i64 1
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %56, <2 x double> %i.dz, <2 x double> %i.dv)
  %67 = shufflevector <2 x double> %i.bb, <2 x double> %48, <2 x i32> <i32 1, i32 3>
  %i.eb = shufflevector <2 x double> %i.ct, <2 x double> %i.dt, <2 x i32> <i32 1, i32 3>
  %i.ec = fmul <2 x double> %67, %i.eb
  %i.ed = insertelement <2 x double> poison, double %i.be, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %i.bo, i64 1
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.ee, <2 x double> %i.ec) ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !20 ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv4MatxIdLi9ELi3EEC2ESt16initializer_listIdE.exit
  %68 = shufflevector <2 x double> %i.aw, <2 x double> %48, <2 x i32> <i32 0, i32 3>
  %69 = shufflevector <2 x double> %31, <2 x double> %i.bb, <2 x i32> <i32 0, i32 2>
  %i.ej = fneg double %i.bo
  %i.ek = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x double> %69, %i.el
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %68, <2 x double> %i.cl, <2 x double> %i.em) ; 2 uses
  %i.eo = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.bn, i64 1
  %i.eq = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.er = insertelement <2 x double> %i.eq, double %60, i64 1
  %i.es = fmul <2 x double> %48, %i.er
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.ep, <2 x double> %i.es) ; 2 uses
  %i.eu = shufflevector <2 x double> %i.aw, <2 x double> %31, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ev = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.bl, i64 1
  %i.ex = fmul <2 x double> %31, %61
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.ew, <2 x double> %i.ex) ; 2 uses
  %i.ez = shufflevector <2 x double> %i.cu, <2 x double> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.fa = shufflevector <2 x double> %i.ct, <2 x double> %i.dt, <2 x i32> <i32 0, i32 2>
  %i.fb = fmul <2 x double> %31, %i.fa
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.ez, <2 x double> %i.fb) ; 2 uses
  %i.fd = fneg <2 x double> %i.cy                 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !42
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !43, !nonnull !38, !align !39 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = uitofp nneg i32 %i.eh to double
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.eh to i64
  %i.fx = extractelement <2 x double> %i.cm, i64 0
  %i.fy = extractelement <2 x double> %i.cy, i64 0
  %i.fz = extractelement <2 x double> %i.cy, i64 1
  %i.ga = shufflevector <2 x double> %i.cy, <2 x double> %i.cz, <2 x i32> <i32 1, i32 3>
  %i.gb = shufflevector <2 x double> %i.cy, <2 x double> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.gc = extractelement <2 x double> %i.dj, i64 1
  %i.gd = extractelement <2 x double> %i.fc, i64 1
  %i.ge = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.fc, <2 x i32> <i32 0, i32 2>
  %i.gf = extractelement <2 x double> %i.ey, i64 0
  %i.gg = extractelement <2 x double> %i.ey, i64 1
  %i.gh = extractelement <2 x double> %i.et, i64 0
  %i.gi = extractelement <2 x double> %i.et, i64 1
  %i.gj = extractelement <2 x double> %i.en, i64 0
  %i.gk = extractelement <2 x double> %i.en, i64 1
  %i.gl = extractelement <2 x double> %i.ef, i64 0
  %i.gm = extractelement <2 x double> %i.fd, i64 0
  %i.gn = extractelement <2 x double> %i.fd, i64 1
  %i.go = fneg <2 x double> %i.cm
  %i.gp = shufflevector <2 x double> %i.ef, <2 x double> %i.go, <2 x i32> <i32 1, i32 3>
  br label %bb.h

._crit_edge:                                      ; preds = %bb.m, %_ZN2cv4MatxIdLi9ELi3EEC2ESt16initializer_listIdE.exit
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !26
  %i.gs = shl nsw i32 %i.gr, 2
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.gt ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  %i.gw = load <2 x float>, ptr %i.gv, align 4, !tbaa !45
  %i.gx = fpext <2 x float> %i.gw to <2 x double> ; 9 uses
  %i.gy = load <2 x float>, ptr %i.gu, align 4, !tbaa !45
  %i.gz = fpext <2 x float> %i.gy to <2 x double> ; 5 uses
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.ha, <2 x double> zeroinitializer)
  %i.hc = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.hd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.hc, <2 x double> %i.hb)
  %i.he = fadd <2 x double> %i.cm, %i.hd          ; 7 uses
  %i.hf = extractelement <2 x double> %i.he, i64 0 ; 2 uses
  %i.hg = shufflevector <2 x double> %i.dj, <2 x double> %i.gx, <2 x i32> <i32 0, i32 2>
  %i.hh = shufflevector <2 x double> %i.gz, <2 x double> %i.he, <2 x i32> <i32 0, i32 2>
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hg, <2 x double> %i.hh, <2 x double> zeroinitializer)
  %i.hj = extractelement <2 x double> %i.he, i64 1 ; 2 uses
  %i.hk = shufflevector <2 x double> %i.dj, <2 x double> %i.gx, <2 x i32> <i32 1, i32 3>
  %i.hl = shufflevector <2 x double> %i.gz, <2 x double> %i.he, <2 x i32> <i32 1, i32 3>
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.hl, <2 x double> %i.hi) ; 2 uses
  %i.hn = extractelement <2 x double> %i.hm, i64 0
  %i.ho = fadd double %i.cp, %i.hn
  %i.hp = extractelement <2 x double> %i.hm, i64 1
  %i.hq = fadd double %i.ho, %i.hp                ; 2 uses
  %i.hr = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.hr, <2 x double> zeroinitializer)
  %i.ht = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %i.ht, <2 x double> %i.hs)
  %i.hv = fadd <2 x double> %i.dj, %i.hu          ; 6 uses
  %foldExtExtBinop401 = fmul <2 x double> %i.hv, %i.hv
  %70 = extractelement <2 x double> %foldExtExtBinop401, i64 0
  %i.hw = extractelement <2 x double> %i.hv, i64 1 ; 2 uses
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.hw, double %i.hw, double %70)
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.hf, double %i.hf, double %i.hx)
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.hj, double %i.hy)
  %sqrt322 = tail call double @llvm.sqrt.f64(double %i.hz)
  %i.ia = fdiv double 1.000000e+00, %sqrt322      ; 12 uses
  %i.ib = fmul double %i.hq, %i.ia                ; 3 uses
  %i.ic = fmul double %i.ib, %i.ib                ; 2 uses
  %i.id = load double, ptr %i.fi, align 8, !tbaa !11
  %i.ie = fcmp ogt double %i.ic, %i.id
  br i1 %i.ie, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.if = load double, ptr %i.fj, align 8, !tbaa !95
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.ic, double %i.if, double 1.000000e+00)
  %i.ih = fdiv double 1.000000e+00, %i.ig
  %i.ii = fdiv double %i.ih, %i.fk                ; 2 uses
  %i.ij = load ptr, ptr %i.fl, align 8, !tbaa !21 ; 2 uses
  %.not = icmp eq ptr %i.ij, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv
  %i.il = load double, ptr %i.ik, align 8, !tbaa !9
  %i.im = fmul double %i.ii, %i.il
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi double [ %i.im, %bb.j ], [ %i.ii, %bb.i ] ; 4 uses
  %i.in = fcmp olt double %.0, f0x3CB0000000000000
  br i1 %i.in, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.io = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = fmul <2 x double> %i.io, %i.gx
  %i.iq = fneg double %i.ia
  %i.ir = fmul double %i.ib, %i.iq
  %i.is = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> %i.ha, <2 x double> %i.ip)
  %i.it = fmul <2 x double> %i.ha, %i.gx
  %i.iu = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.iv = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.iw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.is, <2 x double> %i.it) ; 2 uses
  %i.ix = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iy = fmul <2 x double> %i.ix, %i.gx
  %i.iz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> %i.hc, <2 x double> %i.iy)
  %i.ja = fmul <2 x double> %i.hc, %i.gx
  %i.jb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.iz, <2 x double> %i.ja) ; 2 uses
  %i.jc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.hv, <2 x double> %i.gz) ; 2 uses
  %i.jd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.he, <2 x double> %i.gx) ; 2 uses
  %i.je = extractelement <2 x double> %i.iw, i64 1
  %i.jf = fmul double %i.ia, %i.je                ; 5 uses
  %i.jg = extractelement <2 x double> %i.jc, i64 0
  %i.jh = fmul double %i.ia, %i.jg                ; 5 uses
  %i.ji = extractelement <2 x double> %i.jb, i64 0
  %i.jj = fmul double %i.ia, %i.ji                ; 5 uses
  %i.jk = extractelement <2 x double> %i.jb, i64 1
  %i.jl = fmul double %i.ia, %i.jk                ; 5 uses
  %i.jm = extractelement <2 x double> %i.jc, i64 1
  %i.jn = fmul double %i.ia, %i.jm                ; 5 uses
  %i.jo = extractelement <2 x double> %i.jd, i64 0
  %i.jp = fmul double %i.ia, %i.jo                ; 5 uses
  %i.jq = insertelement <2 x double> poison, double %i.ia, i64 0 ; 3 uses
  %i.jr = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.js = shufflevector <2 x double> %i.iw, <2 x double> %i.jd, <2 x i32> <i32 0, i32 3>
  %i.jt = fmul <2 x double> %i.jr, %i.js          ; 4 uses
  %i.ju = extractelement <2 x double> %i.jt, i64 0 ; 2 uses
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.ju, double 0.000000e+00, double 0.000000e+00)
  %i.jw = tail call double @llvm.fmuladd.f64(double %i.jf, double 0.000000e+00, double %i.jv)
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.jh, double 0.000000e+00, double %i.jw)
  %i.jy = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.fx, double %i.jx)
  %i.jz = tail call double @llvm.fmuladd.f64(double %i.jl, double %i.cq, double %i.jy)
  %i.ka = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.cp, double %i.jz)
  %i.kb = tail call double @llvm.fmuladd.f64(double %i.jp, double %i.dn, double %i.ka)
  %i.kc = extractelement <2 x double> %i.jt, i64 1 ; 4 uses
  %i.kd = tail call double @llvm.fmuladd.f64(double %i.kc, double %i.dp, double %i.kb)
  %i.ke = shufflevector <2 x double> %i.jq, <2 x double> %i.jt, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kf = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.kd, i64 0
  %i.kg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> %i.dr, <2 x double> %i.kf) ; 4 uses
  %i.kh = tail call double @llvm.fmuladd.f64(double %i.ju, double %i.dm, double 0.000000e+00)
  %i.ki = tail call double @llvm.fmuladd.f64(double %i.jf, double %i.do, double %i.kh)
  %i.kj = tail call double @llvm.fmuladd.f64(double %i.jh, double %i.gc, double %i.ki)
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.gm, double %i.kj)
  %i.kl = tail call double @llvm.fmuladd.f64(double %i.jl, double %i.gn, double %i.kk)
  %i.km = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.dl, double %i.kl)
  %i.kn = tail call double @llvm.fmuladd.f64(double %i.jp, double 0.000000e+00, double %i.km)
  %i.ko = tail call double @llvm.fmuladd.f64(double %i.kc, double 0.000000e+00, double %i.kn)
  %i.kp = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ko, i64 0
  %i.kq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> %i.ge, <2 x double> %i.kp) ; 4 uses
  %i.kr = extractelement <2 x double> %i.kq, i64 1
  %i.ks = tail call double @llvm.fmuladd.f64(double %i.jf, double %i.gd, double %i.kr)
  %i.kt = tail call double @llvm.fmuladd.f64(double %i.jh, double %55, double %i.ks)
  %i.ku = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.gf, double %i.kt)
  %i.kv = tail call double @llvm.fmuladd.f64(double %i.jl, double %i.gg, double %i.ku)
  %i.kw = tail call double @llvm.fmuladd.f64(double %i.jn, double %63, double %i.kv)
  %i.kx = tail call double @llvm.fmuladd.f64(double %i.jp, double %i.gj, double %i.kw)
  %i.ky = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.kx, i64 1
  %i.kz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.dy, <2 x double> %i.ky)
  %i.la = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.lb = insertelement <2 x double> %i.la, double %i.ia, i64 1
  %i.lc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lb, <2 x double> %i.ea, <2 x double> %i.kz) ; 3 uses
  %i.ld = extractelement <2 x double> %i.lc, i64 0
  %i.le = tail call double @llvm.fmuladd.f64(double %i.jh, double %59, double %i.ld)
  %i.lf = tail call double @llvm.fmuladd.f64(double %i.jj, double %65, double %i.le)
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.jl, double %i.gh, double %i.lf)
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.gi, double %i.lg)
  %i.li = tail call double @llvm.fmuladd.f64(double %i.jp, double %i.gk, double %i.lh)
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.kc, double %i.gl, double %i.li)
  %i.lk = fmul double %i.hq, %.0
  %i.ll = fmul double %i.ia, %i.lk                ; 2 uses
  %i.lm = insertelement <2 x double> poison, double %i.ll, i64 0
  %i.ln = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lo = shufflevector <2 x double> %i.kq, <2 x double> %i.lc, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.lp = fmul <2 x double> %i.ln, %i.lo
  %i.lq = load <2 x double>, ptr %i.fm, align 8, !tbaa !9
  %i.lr = fadd <2 x double> %i.lp, %i.lq
  store <2 x double> %i.lr, ptr %i.fm, align 8, !tbaa !9
  %i.ls = load double, ptr %i.fn, align 8, !tbaa !9
  %i.lt = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lu = insertelement <2 x double> poison, double %.0, i64 0
  %i.lv = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.lw = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lx = shufflevector <2 x double> %i.lc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ly = fmul <2 x double> %i.lx, %i.lo
  %i.lz = load <2 x double>, ptr %3, align 8, !tbaa !9
  %i.ma = insertelement <2 x double> %i.jq, double %i.jf, i64 1
  %i.mb = insertelement <2 x double> %i.kg, double %i.lj, i64 0
  %i.mc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.gp, <2 x double> %i.mb) ; 5 uses
  %i.md = extractelement <2 x double> %i.mc, i64 0
  %i.me = fmul double %i.ll, %i.md
  %i.mf = fadd double %i.me, %i.ls
  store double %i.mf, ptr %i.fn, align 8, !tbaa !9
  %i.mg = extractelement <2 x double> %i.mc, i64 1
  %i.mh = tail call double @llvm.fmuladd.f64(double %i.jh, double %53, double %i.mg)
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.jj, double 0.000000e+00, double %i.mh)
  %i.mj = tail call double @llvm.fmuladd.f64(double %i.jl, double 0.000000e+00, double %i.mi)
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.jn, double 0.000000e+00, double %i.mj)
  %i.ml = tail call double @llvm.fmuladd.f64(double %i.jp, double %i.fy, double %i.mk)
  %i.mm = tail call double @llvm.fmuladd.f64(double %i.kc, double %i.fz, double %i.ml)
  %i.mn = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.dk, double %i.mm) ; 4 uses
  %i.mo = insertelement <2 x double> %i.kg, double %i.mn, i64 1 ; 4 uses
  %i.mp = fmul <2 x double> %i.ln, %i.mo
  %i.mq = fadd <2 x double> %i.mp, %i.lz
  store <2 x double> %i.mq, ptr %3, align 8, !tbaa !9
  %i.mr = load <2 x double>, ptr %2, align 8
  %i.ms = fmul <2 x double> %i.lt, %i.mo
  %i.mt = load double, ptr %i.fo, align 8, !tbaa !9
  %i.mu = insertelement <2 x double> %i.mr, double %i.mt, i64 1
  %i.mv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.ms, <2 x double> %i.mu) ; 2 uses
  %i.mw = extractelement <2 x double> %i.mv, i64 0
  store double %i.mw, ptr %2, align 8, !tbaa !9
  %i.mx = extractelement <2 x double> %i.mv, i64 1
  store double %i.mx, ptr %i.fo, align 8, !tbaa !9
  %i.my = fmul double %i.mn, %i.mn
  %i.mz = load double, ptr %i.fp, align 8, !tbaa !9
  %i.na = tail call double @llvm.fmuladd.f64(double %.0, double %i.my, double %i.mz)
  store double %i.na, ptr %i.fp, align 8, !tbaa !9
  %i.nb = load <2 x double>, ptr %i.fq, align 8
  %i.nc = insertelement <2 x double> %i.lw, double %i.mn, i64 0
  %i.nd = fmul <2 x double> %i.nc, %i.lw
  %i.ne = load <2 x double>, ptr %i.fr, align 8, !tbaa !9
  %i.nf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.nd, <2 x double> %i.ne)
  store <2 x double> %i.nf, ptr %i.fr, align 8, !tbaa !9
  %i.ng = fmul <2 x double> %i.mo, %i.lx
  %i.nh = load <2 x double>, ptr %i.fs, align 8, !tbaa !9
  %i.ni = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.ng, <2 x double> %i.nh)
  store <2 x double> %i.ni, ptr %i.fs, align 8, !tbaa !9
  %i.nj = load <2 x double>, ptr %i.ft, align 8, !tbaa !9
  %i.nk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.ly, <2 x double> %i.nj)
  store <2 x double> %i.nk, ptr %i.ft, align 8, !tbaa !9
  %i.nl = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nm = fmul <2 x double> %i.mo, %i.nl
  %i.nn = load <2 x double>, ptr %i.fu, align 8, !tbaa !9
  %i.no = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.nm, <2 x double> %i.nn)
  store <2 x double> %i.no, ptr %i.fu, align 8, !tbaa !9
  %i.np = fmul <2 x double> %i.lo, %i.nl
  %i.nq = load <2 x double>, ptr %i.fv, align 8, !tbaa !9
  %i.nr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.np, <2 x double> %i.nq)
  store <2 x double> %i.nr, ptr %i.fv, align 8, !tbaa !9
  %i.ns = load double, ptr %i.fw, align 8, !tbaa !9
  %i.nt = shufflevector <2 x double> %i.kg, <2 x double> %i.mc, <2 x i32> <i32 0, i32 2>
  %i.nu = shufflevector <2 x double> %i.kq, <2 x double> %i.mc, <2 x i32> <i32 0, i32 2>
  %i.nv = fmul <2 x double> %i.nt, %i.nu
  %i.nw = insertelement <2 x double> %i.nb, double %i.ns, i64 1
  %i.nx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.nv, <2 x double> %i.nw) ; 2 uses
  %i.ny = extractelement <2 x double> %i.nx, i64 0
  store double %i.ny, ptr %i.fq, align 8, !tbaa !9
  %i.nz = extractelement <2 x double> %i.nx, i64 1
  store double %i.nz, ptr %i.fw, align 8, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !92
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Vec") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 4 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 3
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !96   ; 3 uses
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = icmp eq i32 %i.j, 1
  %or.cond13 = select i1 %i.h, i1 true, i1 %i.k
  %i.l = add nsw i32 %i.j, %i.g
  %i.m = icmp eq i32 %i.l, 4
  %or.cond15 = select i1 %or.cond13, i1 %i.m, i1 false
  br i1 %or.cond15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %1, align 8, !tbaa !97     ; 2 uses
  %i.o = and i32 %i.n, 4064
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv, ptr noundef nonnull @.str.1, i32 noundef 1301) #14
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !49     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.v = load i64, ptr %i.t, align 8, !tbaa !27
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.o

bb.i:                                             ; preds = %bb.c
  %i.x = and i32 %i.n, 16415
  %or.cond17 = icmp eq i32 %i.x, 16390
  br i1 %or.cond17, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = load double, ptr %i.b, align 8, !tbaa !9
  store double %i.y, ptr %0, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.aa, ptr %i.ab, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ad, ptr %i.ae, align 8, !tbaa !9
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %i.g, i32 noundef %i.j, i32 noundef 6, ptr noundef nonnull %0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.ag, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !24
  store ptr %4, ptr %i.af, align 8, !tbaa !25
  %i.ah = load i32, ptr %4, align 8, !tbaa !97
  %i.ai = and i32 %i.ah, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.ai, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.j
  ret void

bb.o:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn6.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #4

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #4

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !98
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.d, ptr %i.a, align 8, !tbaa !99
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !49
  %i.g = load i64, ptr %i.a, align 8, !tbaa !99
  store i64 %i.g, ptr %i.b, align 8, !tbaa !27
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !27
  store i8 %i.i, ptr %i.h, align 1, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !100
  %i.l = load ptr, ptr %0, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }

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
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTSN2cv4usac10MlesacLossE", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!11 = !{!10, !8, i64 0}
!12 = !{!10, !8, i64 8}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTSN2cv3MatE", !13, i64 0}
!15 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !13, i64 0}
!16 = !{!"p1 _ZTSN2cv4usac10MlesacLossE", !13, i64 0}
!17 = !{!"p1 double", !13, i64 0}
!18 = !{!"_ZTSN2cv4usac31RelativePoseJacobianAccumulatorE", !14, i64 0, !15, i64 8, !5, i64 16, !16, i64 24, !17, i64 32}
!19 = !{!18, !14, i64 0}
!20 = !{!18, !5, i64 16}
!21 = !{!18, !17, i64 32}
!22 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!23 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !13, i64 8, !22, i64 16}
!24 = !{!23, !5, i64 0}
!25 = !{!23, !13, i64 8}
!26 = !{!5, !5, i64 0}
!27 = !{!4, !4, i64 0}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"p1 _ZTSN2cv12MatAllocatorE", !13, i64 0}
!30 = !{!"p1 _ZTSN2cv8UMatDataE", !13, i64 0}
!31 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!32 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !31, i64 4, !5, i64 8, !4, i64 12}
!33 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!34 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !29, i64 56, !30, i64 64, !32, i64 72, !33, i64 128}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!34, !28, i64 24}
!37 = !{!18, !15, i64 8}
!38 = !{}
!39 = !{i64 8}
!40 = !{!"p1 int", !13, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!41, !40, i64 0}
!43 = !{!18, !16, i64 24}
!44 = !{!"float", !4, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!47 = !{!"long", !4, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !46, i64 0, !47, i64 8, !4, i64 16}
!49 = !{!48, !28, i64 0}
!50 = distinct !{!50, i1 true, !"_ZN2cvmlIdLi3ELi3EEENS_3VecIT_XT0_EEERKNS_4MatxIS2_XT0_EXT1_EEERKNS1_IS2_XT1_EEE"}
!51 = distinct !{!51, !50, !"_ZN2cvmlIdLi3ELi3EEENS_3VecIT_XT0_EEERKNS_4MatxIS2_XT0_EXT1_EEERKNS1_IS2_XT1_EEE: argument 0"}
!52 = !{!51}
!53 = distinct !{!53, i1 true, !"_ZN2cvngIdLi5ELi5EEENS_4MatxIT_XT0_EXT1_EEERKS3_"}
!54 = distinct !{!54, !53, !"_ZN2cvngIdLi5ELi5EEENS_4MatxIT_XT0_EXT1_EEERKS3_: argument 0"}
!55 = distinct !{!55, i1 true, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!56 = distinct !{!56, !55, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!57 = distinct !{!57, i1 true, !"_ZN2cvmlIdLi3ELi1ELi2EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!58 = distinct !{!58, !57, !"_ZN2cvmlIdLi3ELi1ELi2EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!59 = distinct !{!59, i1 true, !"_ZN2cvplIdLi3EEENS_3VecIT_XT0_EEERKS3_S5_"}
!60 = distinct !{!60, !59, !"_ZN2cvplIdLi3EEENS_3VecIT_XT0_EEERKS3_S5_: argument 0"}
!61 = distinct !{!61, !35}
!62 = !{!"_ZTSN2cv4usac13BundleOptions8LossTypeE", !4, i64 0}
!63 = !{!"_ZTSN2cv4usac13BundleOptionsE", !5, i64 0, !62, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!64 = !{!63, !8, i64 8}
!65 = !{!15, !15, i64 0}
!66 = !{!16, !16, i64 0}
!67 = !{!63, !8, i64 32}
!68 = !{!63, !5, i64 0}
!69 = !{!63, !8, i64 16}
!70 = !{!54}
!71 = !{!63, !8, i64 24}
!72 = !{!"_ZTSN2cv4MatxIdLi3ELi3EEE", !4, i64 0}
!73 = !{!"_ZTSN2cv4MatxIdLi3ELi1EEE", !4, i64 0}
!74 = !{!"_ZTSN2cv3VecIdLi3EEE", !73, i64 0}
!75 = !{!"_ZTSN2cv4usac10CameraPoseE", !72, i64 0, !74, i64 72, !8, i64 96}
!76 = !{!75, !8, i64 96}
!77 = !{!56}
!78 = !{!58}
!79 = !{!34, !5, i64 16}
!80 = !{!60}
!81 = distinct !{!81, i1 true, !"_ZNK2cv4usac31RelativePoseJacobianAccumulator21essential_from_motionERKNS0_10CameraPoseE"}
!82 = distinct !{!82, !81, !"_ZNK2cv4usac31RelativePoseJacobianAccumulator21essential_from_motionERKNS0_10CameraPoseE: argument 0"}
!83 = distinct !{!83, i1 true, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!84 = distinct !{!84, !83, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!85 = distinct !{!85, !35}
!86 = !{!82}
!87 = !{!84, !82}
!88 = distinct !{!88, i1 true, !"_ZNK2cv4usac31RelativePoseJacobianAccumulator21essential_from_motionERKNS0_10CameraPoseE"}
!89 = distinct !{!89, !88, !"_ZNK2cv4usac31RelativePoseJacobianAccumulator21essential_from_motionERKNS0_10CameraPoseE: argument 0"}
!90 = distinct !{!90, i1 true, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!91 = distinct !{!91, !90, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!92 = distinct !{!92, !35}
!93 = !{!91, !89}
!94 = !{!89}
!95 = !{!10, !8, i64 24}
!96 = !{!34, !5, i64 8}
!97 = !{!34, !5, i64 0}
!98 = !{!46, !28, i64 0}
!99 = !{!47, !47, i64 0}
!100 = !{!48, !47, i64 8}
end_hunk_1
