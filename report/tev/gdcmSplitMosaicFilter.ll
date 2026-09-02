Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmSplitMosaicFilter?download=true
inline.NumInlined: 1635
inline.NumDeleted: 716
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4gdcm16DirectionCosines5CrossEPd
declare void @_ZNK4gdcm16DirectionCosines5CrossEPd(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

declare noundef double @_ZN4gdcm16DirectionCosines3DotEPKdS2_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm17SplitMosaicFilter33ComputeMOSAICImagePositionPatientEPdPKdS3_S3_PKjS5_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.gdcm::CSAHeader", align 8   ; 11 uses
  %9 = alloca %"class.gdcm::DirectionCosines", align 16 ; 16 uses
  %i.a = alloca [3 x double], align 16            ; 10 uses
  %10 = alloca %"class.gdcm::MrProtocol", align 8 ; 8 uses
  %11 = alloca %"struct.gdcm::MrProtocol::SliceArray", align 8 ; 12 uses
  %i.b = alloca [3 x double], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr %i.c, ptr %8, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.d, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4gdcm17SplitMosaicFilter7GetFileEv.exit

bb.b:                                             ; preds = %bb.a
  %i.h = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 63, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #22
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.h) #21
  br label %.body

_ZN4gdcm17SplitMosaicFilter7GetFileEv.exit:       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZN4gdcm16DirectionCosinesC1EPKd(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %3)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %_ZN4gdcm17SplitMosaicFilter7GetFileEv.exit
  invoke void @_ZN4gdcm16DirectionCosines9NormalizeEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZNK4gdcm16DirectionCosines5CrossEPd(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %i.a)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4gdcm16DirectionCosines9NormalizeEPd(ptr noundef nonnull %i.a)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN4gdcm10MrProtocolC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.l = invoke noundef zeroext i1 @_ZN4gdcm9CSAHeader13GetMrProtocolERKNS_7DataSetERNS_10MrProtocolE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  br i1 %i.l, label %bb.k, label %bb.aa

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.m = invoke noundef zeroext i1 @_ZNK4gdcm10MrProtocol13GetSliceArrayERNS0_10SliceArrayE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %.pre = load ptr, ptr %11, align 8, !tbaa !106  ; 10 uses
  br i1 %i.m, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !107  ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %.pre to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %.not = icmp eq ptr %i.o, %.pre
  br i1 %.not, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = sdiv exact i64 %i.r, 48
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43   ; 3 uses
  %i.v = zext i32 %i.u to i64
  %i.w = icmp eq i64 %i.s, %i.v
  br i1 %i.w, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.z = load double, ptr %i.y, align 8, !tbaa !109
  %i.aa = load <2 x double>, ptr %i.x, align 8, !tbaa !31
  %i.ab = load <2 x i32>, ptr %6, align 4, !tbaa !43
  %i.ac = uitofp <2 x i32> %i.ab to <2 x double>
  %i.ad = fmul nnan <2 x double> %i.ac, splat (double 5.000000e-01)
  %i.ae = load <2 x double>, ptr %4, align 8, !tbaa !31
  %i.af = fneg <2 x double> %i.ae
  %i.ag = fmul <2 x double> %i.ad, %i.af          ; 4 uses
  %i.ah = load <2 x double>, ptr %9, align 16, !tbaa !31
  %i.ai = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ah, <2 x double> %i.aa)
  %i.ak = load <2 x double>, ptr %i.k, align 8, !tbaa !31
  %i.al = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.am = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.ak, <2 x double> %i.aj) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ao = load double, ptr %i.an, align 16, !tbaa !31
  %i.ap = extractelement <2 x double> %i.ag, i64 0
  %i.aq = call double @llvm.fmuladd.f64(double %i.ap, double %i.ao, double %i.z)
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.as = load double, ptr %i.ar, align 8, !tbaa !31
  %i.at = extractelement <2 x double> %i.ag, i64 1
  %i.au = call double @llvm.fmuladd.f64(double %i.at, double %i.as, double %i.aq) ; 2 uses
  br i1 %7, label %bb.w, label %.thread

bb.p:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.e, %_ZN4gdcm17SplitMosaicFilter7GetFileEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.r:                                             ; preds = %bb.g, %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.s:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.t:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.u:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %11, align 8, !tbaa !106  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %_ZN4gdcm10MrProtocol10SliceArrayD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !107
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !110
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bb to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bh) #23
  br label %_ZN4gdcm10MrProtocol10SliceArrayD2Ev.exit

_ZN4gdcm10MrProtocol10SliceArrayD2Ev.exit:        ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.af

bb.w:                                             ; preds = %bb.o
  %i.bi = and i32 %i.u, 1
  %i.bj = uitofp nneg i32 %i.bi to double
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !31
  %i.bm = call double @llvm.fmuladd.f64(double %i.bj, double %i.bl, double %i.au)
  br label %.thread

bb.x:                                             ; preds = %bb.n
  %i.bn = icmp eq i64 %i.r, 48
  br i1 %i.bn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !109
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bs = add i32 %i.u, -1
  %i.bt = load <2 x double>, ptr %i.bo, align 8, !tbaa !31
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !43
  %i.bv = load i32, ptr %6, align 4, !tbaa !43
  %i.bw = uitofp i32 %i.bv to double
  %i.bx = uitofp i32 %i.bu to double
  %i.by = uitofp i32 %i.bs to double
  %12 = insertelement <3 x double> poison, double %i.by, i64 0
  %13 = insertelement <3 x double> %12, double %i.bx, i64 1
  %14 = insertelement <3 x double> %13, double %i.bw, i64 2
  %15 = fmul nnan <3 x double> %14, splat (double 5.000000e-01)
  %16 = load <3 x double>, ptr %4, align 8, !tbaa !31
  %17 = fneg <3 x double> %16
  %18 = shufflevector <3 x double> %17, <3 x double> poison, <3 x i32> <i32 2, i32 1, i32 0>
  %19 = fmul <3 x double> %15, %18                ; 6 uses
  %i.bz = load <2 x double>, ptr %9, align 16, !tbaa !31
  %20 = shufflevector <3 x double> %19, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ca = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %i.bz, <2 x double> %i.bt)
  %i.cb = load <2 x double>, ptr %i.k, align 8, !tbaa !31
  %21 = shufflevector <3 x double> %19, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %i.cb, <2 x double> %i.ca)
  %i.cd = load <2 x double>, ptr %i.a, align 16, !tbaa !31
  %i.ce = shufflevector <3 x double> %19, <3 x double> poison, <2 x i32> zeroinitializer
  %i.cf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.cd, <2 x double> %i.cc)
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ch = load double, ptr %i.cg, align 16, !tbaa !31
  %22 = extractelement <3 x double> %19, i64 2
  %i.ci = call double @llvm.fmuladd.f64(double %22, double %i.ch, double %i.bq)
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !31
  %23 = extractelement <3 x double> %19, i64 1
  %i.cl = call double @llvm.fmuladd.f64(double %23, double %i.ck, double %i.ci)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cn = load double, ptr %i.cm, align 16, !tbaa !31
  %24 = extractelement <3 x double> %19, i64 0
  %i.co = call double @llvm.fmuladd.f64(double %24, double %i.cn, double %i.cl)
  br label %.thread

bb.z:                                             ; preds = %bb.m, %bb.x, %bb.l
  %.not.i.i.i107 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i107, label %_ZN4gdcm10MrProtocol10SliceArrayD2Ev.exit108, label %.thread

.thread:                                          ; preds = %bb.y, %bb.w, %bb.o, %bb.z
  %.1142 = phi i1 [ false, %bb.z ], [ true, %bb.o ], [ true, %bb.w ], [ true, %bb.y ]
  %.sroa.10.1140 = phi double [ 0.000000e+00, %bb.z ], [ %i.au, %bb.o ], [ %i.bm, %bb.w ], [ %i.co, %bb.y ]
  %i.cp = phi <2 x double> [ zeroinitializer, %bb.z ], [ %i.am, %bb.o ], [ %i.am, %bb.w ], [ %i.cf, %bb.y ]
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.pre, ptr %i.cq, align 8, !tbaa !107
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !110
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %.pre to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cv) #23
  br label %_ZN4gdcm10MrProtocol10SliceArrayD2Ev.exit108

_ZN4gdcm10MrProtocol10SliceArrayD2Ev.exit108:     ; preds = %bb.z, %.thread
  %.1143 = phi i1 [ false, %bb.z ], [ %.1142, %.thread ]
  %.sroa.10.1141 = phi double [ 0.000000e+00, %bb.z ], [ %.sroa.10.1140, %.thread ]
  %i.cw = phi <2 x double> [ zeroinitializer, %bb.z ], [ %i.cp, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4gdcm10MrProtocol10SliceArrayD2Ev.exit108, %bb.j
  %.sroa.10.2 = phi double [ %.sroa.10.1141, %_ZN4gdcm10MrProtocol10SliceArrayD2Ev.exit108 ], [ 0.000000e+00, %bb.j ]
  %.2 = phi i1 [ %.1143, %_ZN4gdcm10MrProtocol10SliceArrayD2Ev.exit108 ], [ false, %bb.j ]
  %i.cx = phi <2 x double> [ %i.cw, %_ZN4gdcm10MrProtocol10SliceArrayD2Ev.exit108 ], [ zeroinitializer, %bb.j ]
  %i.cy = load <2 x i32>, ptr %5, align 4, !tbaa !43
  %i.cz = load <2 x i32>, ptr %6, align 4, !tbaa !43
  %i.da = sub <2 x i32> %i.cy, %i.cz
  %i.db = uitofp <2 x i32> %i.da to <2 x double>
  %i.dc = fmul nnan <2 x double> %i.db, splat (double 5.000000e-01)
  %i.dd = load <2 x double>, ptr %4, align 8, !tbaa !31
  %i.de = fmul <2 x double> %i.dd, %i.dc          ; 4 uses
  %i.df = load <2 x double>, ptr %2, align 8, !tbaa !31
  %i.dg = load <2 x double>, ptr %9, align 16, !tbaa !31
  %i.dh = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.dg, <2 x double> %i.df)
  %i.dj = load <2 x double>, ptr %i.k, align 8, !tbaa !31
  %i.dk = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dj, <2 x double> %i.di) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !31
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dp = load double, ptr %i.do, align 16, !tbaa !31
  %i.dq = extractelement <2 x double> %i.de, i64 0
  %i.dr = call double @llvm.fmuladd.f64(double %i.dq, double %i.dp, double %i.dn)
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !31
  %i.du = extractelement <2 x double> %i.de, i64 1
  %i.dv = call double @llvm.fmuladd.f64(double %i.du, double %i.dt, double %i.dr) ; 2 uses
  br i1 %7, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !31
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !43
  %i.ea = add i32 %i.dz, -1
  %i.eb = uitofp i32 %i.ea to double              ; 2 uses
  %i.ec = fneg double %i.dx                       ; 2 uses
  %i.ed = load <2 x double>, ptr %i.a, align 16, !tbaa !31
  %i.ee = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x double> %i.ed, %i.ef
  %i.eh = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.ei, <2 x double> %i.dl)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.el = load double, ptr %i.ek, align 16, !tbaa !31
  %i.em = fmul double %i.el, %i.ec
  %i.en = call double @llvm.fmuladd.f64(double %i.em, double %i.eb, double %i.dv)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.aa
  %.sroa.13.0 = phi double [ %i.en, %.preheader ], [ %i.dv, %bb.aa ] ; 2 uses
  %i.eo = phi <2 x double> [ %i.ej, %.preheader ], [ %i.dl, %bb.aa ] ; 2 uses
  br i1 %.2, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ep = fsub <2 x double> %i.eo, %i.cx
  store <2 x double> %i.ep, ptr %i.b, align 16, !tbaa !31
  %i.eq = fsub double %.sroa.13.0, %.sroa.10.2
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %i.eq, ptr %i.er, align 16, !tbaa !31
  %i.es = invoke noundef double @_ZN4gdcm16DirectionCosines4NormEPKd(ptr noundef nonnull %i.b)
          to label %bb.ac unwind label %bb.ad     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac, %.loopexit
  store <2 x double> %i.eo, ptr %1, align 8, !tbaa !31
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !31
  call void @_ZN4gdcm10MrProtocolD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.eu = load ptr, ptr %i.e, align 8, !tbaa !46
  call void @_ZNSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.eu) #21
  %i.ev = load ptr, ptr %i.c, align 8, !tbaa !46
  call void @_ZNSt3__16__treeIN4gdcm10CSAElementENS_4lessIS2_EENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %i.ev) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret i1 true

bb.af:                                            ; preds = %bb.ad, %_ZN4gdcm10MrProtocol10SliceArrayD2Ev.exit, %bb.t
  %.pn = phi { ptr, i32 } [ %i.et, %bb.ad ], [ %i.ba, %_ZN4gdcm10MrProtocol10SliceArrayD2Ev.exit ], [ %i.az, %bb.t ]
  call void @_ZN4gdcm10MrProtocolD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.af ], [ %i.ay, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ag ], [ %i.ax, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ah ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %.body

.body:                                            ; preds = %bb.p, %bb.d, %bb.ai
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ai ], [ %i.av, %bb.p ], [ %i.i, %bb.d ]
  call void @_ZN4gdcm9CSAHeaderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZN4gdcm16DirectionCosines9NormalizeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN4gdcm16DirectionCosines9NormalizeEPd(ptr noundef) local_unnamed_addr #2

declare void @_ZN4gdcm10MrProtocolC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef zeroext i1 @_ZN4gdcm9CSAHeader13GetMrProtocolERKNS_7DataSetERNS_10MrProtocolE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4gdcm10MrProtocol13GetSliceArrayERNS0_10SliceArrayE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

declare noundef double @_ZN4gdcm16DirectionCosines4NormEPKd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4gdcm10MrProtocolD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm17SplitMosaicFilter26ComputeMOSAICSlicePositionEPdb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gdcm::CSAHeader", align 8   ; 11 uses
  %4 = alloca %"class.gdcm::MrProtocol", align 8  ; 8 uses
  %5 = alloca %"struct.gdcm::MrProtocol::SliceArray", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %3, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4gdcm17SplitMosaicFilter7GetFileEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 63, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #22
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.f) #21
end_hunk_0
