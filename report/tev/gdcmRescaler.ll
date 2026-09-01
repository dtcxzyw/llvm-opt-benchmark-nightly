Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmRescaler?download=true
inline.NumInlined: 383
inline.NumDeleted: 278
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN4gdcm8Rescaler26RescaleFunctionIntoBestFitIiEEvPcPKT_m:bb.a
.lr.ph.i64:                                       ; preds = %.lr.ph.i64.prol.loopexit, %.lr.ph.i64
  %.010.i65 = phi i64 [ %i.fi, %.lr.ph.i64 ], [ %.010.i65.unr, %.lr.ph.i64.prol.loopexit ] ; 4 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.010.i65
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !28
  %i.ex = sitofp i32 %i.ew to double
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.e, double %i.ex, double %i.c)
  %i.ez = fptosi double %i.ey to i32
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.010.i65
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !28
  %i.fb = add nuw nsw i64 %.010.i65, 1            ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !28
  %i.fe = sitofp i32 %i.fd to double
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.e, double %i.fe, double %i.c)
  %i.fg = fptosi double %i.ff to i32
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fb
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !28
  %i.fi = add nuw nsw i64 %.010.i65, 2            ; 2 uses
  %.not.i66.1 = icmp eq i64 %i.fi, %i.ee
  br i1 %.not.i66.1, label %_ZN4gdcm15RescaleFunctionIhiEEvPT_PKT0_ddm.exit, label %.lr.ph.i64, !llvm.loop !240

bb.m:                                             ; preds = %bb.c
  %i.fj = lshr i64 %3, 2                          ; 4 uses
  %.not9.i67 = icmp eq i64 %i.fj, 0
  br i1 %.not9.i67, label %_ZN4gdcm15RescaleFunctionIhiEEvPT_PKT0_ddm.exit, label %.lr.ph.i68.preheader

.lr.ph.i68.preheader:                             ; preds = %bb.m
  %min.iters.check114 = icmp ult i64 %3, 16
  br i1 %min.iters.check114, label %.lr.ph.i68.preheader240, label %vector.ph115

vector.ph115:                                     ; preds = %.lr.ph.i68.preheader
  %n.vec116 = and i64 %i.fj, 4611686018427387900  ; 3 uses
  %broadcast.splatinsert117 = insertelement <4 x double> poison, double %i.e, i64 0
  %broadcast.splat118 = shufflevector <4 x double> %broadcast.splatinsert117, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert119 = insertelement <4 x double> poison, double %i.c, i64 0
  %broadcast.splat120 = shufflevector <4 x double> %broadcast.splatinsert119, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph115
  %index122 = phi i64 [ 0, %vector.ph115 ], [ %index.next124, %vector.body121 ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index122
  %wide.load123 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !28
  %i.fl = sitofp <4 x i32> %wide.load123 to <4 x double>
  %i.fm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat118, <4 x double> %i.fl, <4 x double> %broadcast.splat120)
  %i.fn = fptrunc <4 x double> %i.fm to <4 x float>
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index122
  store <4 x float> %i.fn, ptr %i.fo, align 4, !tbaa !19
  %index.next124 = add nuw i64 %index122, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next124, %n.vec116
  br i1 %i.fp, label %middle.block125, label %vector.body121, !llvm.loop !241

middle.block125:                                  ; preds = %vector.body121
  %cmp.n126 = icmp eq i64 %i.fj, %n.vec116
  br i1 %cmp.n126, label %_ZN4gdcm15RescaleFunctionIhiEEvPT_PKT0_ddm.exit, label %.lr.ph.i68.preheader240

.lr.ph.i68.preheader240:                          ; preds = %.lr.ph.i68.preheader, %middle.block125
  %.010.i69.ph = phi i64 [ 0, %.lr.ph.i68.preheader ], [ %n.vec116, %middle.block125 ]
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68.preheader240, %.lr.ph.i68
  %.010.i69 = phi i64 [ %i.fw, %.lr.ph.i68 ], [ %.010.i69.ph, %.lr.ph.i68.preheader240 ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.010.i69
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !28
  %i.fs = sitofp i32 %i.fr to double
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.e, double %i.fs, double %i.c)
  %i.fu = fptrunc double %i.ft to float
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.010.i69
  store float %i.fu, ptr %i.fv, align 4, !tbaa !19
  %i.fw = add nuw nsw i64 %.010.i69, 1            ; 2 uses
  %.not.i70 = icmp eq i64 %i.fw, %i.fj
  br i1 %.not.i70, label %_ZN4gdcm15RescaleFunctionIhiEEvPT_PKT0_ddm.exit, label %.lr.ph.i68, !llvm.loop !242

bb.n:                                             ; preds = %bb.c
  %i.fx = lshr i64 %3, 2                          ; 4 uses
  %.not9.i71 = icmp eq i64 %i.fx, 0
  br i1 %.not9.i71, label %_ZN4gdcm15RescaleFunctionIhiEEvPT_PKT0_ddm.exit, label %.lr.ph.i72.preheader

.lr.ph.i72.preheader:                             ; preds = %bb.n
  %min.iters.check = icmp ult i64 %3, 16
  br i1 %min.iters.check, label %.lr.ph.i72.preheader242, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i72.preheader
  %n.vec = and i64 %i.fx, 4611686018427387900     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert110 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat111 = shufflevector <2 x double> %broadcast.splatinsert110, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %wide.load = load <2 x i32>, ptr %i.fy, align 4, !tbaa !28
  %wide.load112 = load <2 x i32>, ptr %i.fz, align 4, !tbaa !28
  %i.ga = sitofp <2 x i32> %wide.load to <2 x double>
  %i.gb = sitofp <2 x i32> %wide.load112 to <2 x double>
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.ga, <2 x double> %broadcast.splat111)
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.gb, <2 x double> %broadcast.splat111)
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store <2 x double> %i.gc, ptr %i.ge, align 8, !tbaa !31
  store <2 x double> %i.gd, ptr %i.gf, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gg = icmp eq i64 %index.next, %n.vec
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fx, %n.vec
  br i1 %cmp.n, label %_ZN4gdcm15RescaleFunctionIhiEEvPT_PKT0_ddm.exit, label %.lr.ph.i72.preheader242

.lr.ph.i72.preheader242:                          ; preds = %.lr.ph.i72.preheader, %middle.block
  %.010.i73.ph = phi i64 [ 0, %.lr.ph.i72.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.lr.ph.i72.preheader242, %.lr.ph.i72
  %.010.i73 = phi i64 [ %i.gm, %.lr.ph.i72 ], [ %.010.i73.ph, %.lr.ph.i72.preheader242 ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.010.i73
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !28
  %i.gj = sitofp i32 %i.gi to double
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.e, double %i.gj, double %i.c)
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.010.i73
  store double %i.gk, ptr %i.gl, align 8, !tbaa !31
  %i.gm = add nuw nsw i64 %.010.i73, 1            ; 2 uses
  %.not.i74 = icmp eq i64 %i.gm, %i.fx
  br i1 %.not.i74, label %_ZN4gdcm15RescaleFunctionIhiEEvPT_PKT0_ddm.exit, label %.lr.ph.i72, !llvm.loop !244

bb.o:                                             ; preds = %bb.c
  %i.gn = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.gn, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 262, ptr noundef nonnull @.str.2)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.gn, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #19
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZN4gdcm15RescaleFunctionIhiEEvPT_PKT0_ddm.exit:  ; preds = %.lr.ph.i72, %.lr.ph.i68, %.lr.ph.i64.prol.loopexit, %.lr.ph.i64, %.lr.ph.i60.prol.loopexit, %.lr.ph.i60, %.lr.ph.i56, %.lr.ph.i52, %.lr.ph.i48.prol.loopexit, %.lr.ph.i48, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %middle.block125, %middle.block140, %middle.block157, %middle.block172, %middle.block187, %middle.block204, %middle.block225, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  ret void

bb.r:                                             ; preds = %bb.q, %bb.f
  %.sink = phi ptr [ %i.gn, %bb.q ], [ %i.l, %bb.f ]
  %.pn = phi { ptr, i32 } [ %i.go, %bb.q ], [ %i.m, %bb.f ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4gdcm8Rescaler21SetMinMaxForPixelTypeEdd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(49) initializes((32, 48)) %0, double noundef %1, double noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = fcmp olt double %1, %2                   ; 2 uses
  %.sink9 = select i1 %i.a, double %1, double %2
  %.sink = select i1 %i.a, double %2, double %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sink9, ptr %i.b, align 8, !tbaa !245
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sink, ptr %i.c, align 8, !tbaa !246
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { i64, i16 } @_ZN4gdcm8Rescaler26ComputePixelTypeFromMinMaxEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.gdcm::PixelFormat", align 8 ; 22 uses
  %2 = alloca %"class.gdcm::PixelFormat", align 2 ; 4 uses
  %3 = alloca %"class.gdcm::PixelFormat", align 2 ; 4 uses
  %4 = alloca %"class.gdcm::PixelFormat", align 2 ; 4 uses
  %5 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 6 uses
  %6 = alloca %"class.gdcm::PixelFormat", align 2 ; 4 uses
  %7 = alloca %"class.gdcm::PixelFormat", align 2 ; 4 uses
  %8 = alloca %"class.gdcm::PixelFormat", align 2 ; 4 uses
  %9 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 6 uses
  %10 = alloca %"class.gdcm::PixelFormat", align 2 ; 4 uses
  %11 = alloca %"class.gdcm::PixelFormat", align 2 ; 4 uses
  %12 = alloca %"class.gdcm::PixelFormat", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef i32 @_ZNK4gdcm11PixelFormat13GetScalarTypeEv(ptr noundef nonnull align 2 dereferenceable(10) %i.a)
  %.not = icmp eq i32 %i.b, 14
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 531, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #18
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %13 = load double, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load double, ptr %i.e, align 8, !tbaa !9  ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load <2 x double>, ptr %15, align 8, !tbaa !31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @_ZN4gdcm11PixelFormatC1ENS0_10ScalarTypeE(ptr noundef nonnull align 2 dereferenceable(10) %1, i32 noundef 14)
  %i.g = extractelement <2 x double> %i.f, i64 0
  %i.h = extractelement <2 x double> %i.f, i64 1
  %i.i = fcmp ugt double %i.g, %i.h
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 424, ptr noundef nonnull @.str.2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #19
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.j) #18
  br label %common.resume

bb.i:                                             ; preds = %bb.e
  %16 = insertelement <2 x double> poison, double %13, i64 0
  %i.l = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fsub <2 x double> %i.f, %i.l
  %17 = fcmp olt double %14, 0.000000e+00
  %18 = insertelement <2 x double> poison, double %14, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x double> %i.m, %19              ; 2 uses
  %i.o = insertelement <2 x i1> poison, i1 %17, i64 0
  %i.p = shufflevector <2 x i1> %i.o, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.q = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.r = select <2 x i1> %i.p, <2 x double> %i.n, <2 x double> %i.q ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0  ; 3 uses
  %i.t = extractelement <2 x double> %i.r, i64 1  ; 3 uses
  %i.u = fcmp ugt double %i.t, %i.s
  br i1 %i.u, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.v = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @.str.2)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #19
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #18
  br label %common.resume

bb.m:                                             ; preds = %bb.i
  %i.x = fcmp ugt double %i.s, f0x43E0000000000000
  br i1 %i.x, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.y = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @.str.2)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #19
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.y) #18
  br label %common.resume

bb.q:                                             ; preds = %bb.m
  %i.aa = fcmp ult double %i.t, f0xC3E0000000000000
  br i1 %i.aa, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ab = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 434, ptr noundef nonnull @.str.2)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #19
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ab) #18
  br label %common.resume

bb.u:                                             ; preds = %bb.q
  %i.ad = fptosi double %i.t to i64               ; 7 uses
  %i.ae = fptosi double %i.s to i64               ; 9 uses
  %i.af = icmp sgt i64 %i.ad, -1
  br i1 %i.af, label %bb.v, label %bb.aq

bb.v:                                             ; preds = %bb.u
  %.not72.i = icmp sgt i64 %i.ae, 255
  br i1 %.not72.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN4gdcm11PixelFormatC1ENS0_10ScalarTypeE(ptr noundef nonnull align 2 dereferenceable(10) %2, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %1, ptr noundef nonnull align 2 dereferenceable(10) %2, i64 10, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.preheader

.preheader:                                       ; preds = %bb.aa, %bb.y, %bb.w
  br label %bb.ah

bb.x:                                             ; preds = %bb.v
  %.not73.i = icmp samesign ugt i64 %i.ae, 65535
  br i1 %.not73.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN4gdcm11PixelFormatC1ENS0_10ScalarTypeE(ptr noundef nonnull align 2 dereferenceable(10) %3, i32 noundef 4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %1, ptr noundef nonnull align 2 dereferenceable(10) %3, i64 10, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.preheader

bb.z:                                             ; preds = %bb.x
  %.not74.i = icmp samesign ugt i64 %i.ae, 4294967295
  br i1 %.not74.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN4gdcm11PixelFormatC1ENS0_10ScalarTypeE(ptr noundef nonnull align 2 dereferenceable(10) %4, i32 noundef 6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %1, ptr noundef nonnull align 2 dereferenceable(10) %4, i64 10, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.preheader

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.21, i64 noundef 109)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit.i unwind label %bb.ae

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit.i: ; preds = %bb.ab
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef 462)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit.i
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.22, i64 noundef 11)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit84.i unwind label %bb.ae

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit84.i: ; preds = %bb.ac
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4gdcmL31ComputeInverseBestFitFromMinMaxEdddd, i64 noundef 81)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit85.i unwind label %bb.ae

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit85.i: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit84.i
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit86.i unwind label %bb.ae ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit86.i: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit85.i
  %i.al = call ptr @__cxa_allocate_exception(i64 24) #18 ; 3 uses
  invoke void @_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8 %i.al, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit86.i
  invoke void @__cxa_throw(ptr %i.al, ptr nonnull @_ZTINSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE, ptr nonnull @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev) #19
          to label %bb.ci unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit85.i, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit84.i, %bb.ac, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit.i, %bb.ab
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit86.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.al) #18
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn75.i = phi { ptr, i32 } [ %i.am, %bb.ae ], [ %i.an, %bb.af ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %common.resume

bb.ah:                                            ; preds = %.preheader, %bb.ah
  %.053.i = phi i16 [ %i.ap, %bb.ah ], [ 0, %.preheader ]
  %.052.i = phi i64 [ %i.ao, %bb.ah ], [ %i.ae, %.preheader ]
  %i.ao = ashr i64 %.052.i, 1                     ; 2 uses
  %.not77.i = icmp eq i64 %i.ao, 0
  %i.ap = add i16 %.053.i, 1                      ; 3 uses
  br i1 %.not77.i, label %bb.ai, label %bb.ah, !llvm.loop !248

bb.ai:                                            ; preds = %bb.ah
  switch i16 %i.ap, label %bb.am [
    i16 -1, label %bb.aj
    i16 4095, label %bb.ak
    i16 255, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  br label %bb.am

bb.al:                                            ; preds = %bb.ai
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.0.i.i = phi i16 [ %i.ap, %bb.ai ], [ 16, %bb.aj ], [ 12, %bb.ak ], [ 8, %bb.al ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !249
  %i.as = add i16 %.0.i.i, -1                     ; 3 uses
  %or.cond.i.i = icmp ult i16 %i.as, %i.ar
  br i1 %or.cond.i.i, label %bb.an, label %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit.i

bb.an:                                            ; preds = %bb.am
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %.0.i.i, ptr %i.at, align 4, !tbaa !250
  switch i16 %i.as, label %bb.ap [
    i16 254, label %bb.ao
    i16 4094, label %.thread.i.i.i
  ]

bb.ao:                                            ; preds = %bb.an
  br label %.thread.i.i.i

bb.ap:                                            ; preds = %bb.an
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ap, %bb.ao, %bb.an
  %.09.i.i.i = phi i16 [ %i.as, %bb.ap ], [ 7, %bb.ao ], [ 11, %bb.an ] ; 2 uses
  %i.au = icmp ult i16 %.09.i.i.i, %.0.i.i
end_hunk_0
