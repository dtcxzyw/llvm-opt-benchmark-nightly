Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/detector?download=true
inline.NumInlined: 1075
inline.NumDeleted: 289
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5zxing6qrcode8Detector16computeDimensionENS_3RefINS_11ResultPointEEES4_S4_ff:bb.a
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !30
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(12) %i.bz) #17, !inline_history !7
  br label %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit31

_ZN5zxing3RefINS_11ResultPointEED2Ev.exit31:      ; preds = %bb.u, %bb.v, %bb.w
  %i.ch = load ptr, ptr %7, align 8, !tbaa !88    ; 3 uses
  %.not.i32 = icmp eq ptr %i.ch, null
  br i1 %.not.i32, label %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit29, label %bb.x

bb.x:                                             ; preds = %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit31
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !28
  %i.ck = add i32 %i.cj, -1                       ; 2 uses
  store i32 %i.ck, ptr %i.ci, align 8, !tbaa !28
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.y, label %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit29

bb.y:                                             ; preds = %bb.x
  store i32 -559026175, ptr %i.ci, align 8, !tbaa !28
  br label %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit29.sink.split

bb.z:                                             ; preds = %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit25
  %i.cm = add nsw i32 %i.bi, 1
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit25
  %i.cn = add nsw i32 %i.bi, -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit25
  %.0 = phi i32 [ %i.bi, %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit25 ], [ %i.cm, %bb.z ], [ %i.cn, %bb.aa ]
  ret i32 %.0

_ZN5zxing3RefINS_11ResultPointEED2Ev.exit29.sink.split: ; preds = %bb.t, %bb.y
  %.sink49 = phi ptr [ %i.ch, %bb.y ], [ %i.bt, %bb.t ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.by, %bb.y ], [ %i.bk, %bb.t ]
  %i.co = load ptr, ptr %.sink49, align 8, !tbaa !30
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(12) %.sink49) #17
  br label %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit29

_ZN5zxing3RefINS_11ResultPointEED2Ev.exit29:      ; preds = %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit29.sink.split, %bb.x, %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit31, %bb.s, %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit27
  %.pn = phi { ptr, i32 } [ %i.by, %bb.x ], [ %i.bk, %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit27 ], [ %i.bk, %bb.s ], [ %i.by, %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit31 ], [ %.pn.ph, %_ZN5zxing3RefINS_11ResultPointEED2Ev.exit29.sink.split ]
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN5zxing6qrcode7Version33getProvisionalVersionForDimensionEiRNS_12ErrorHandlerE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare noundef i32 @_ZN5zxing6qrcode7Version16getVersionNumberEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #3

declare noundef i32 @_ZN5zxing6qrcode7Version22getDimensionForVersionERNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare void @_ZN5zxing6qrcode16AlignmentPatternC1Efff(ptr noundef nonnull align 8 dereferenceable(24), float noundef, float noundef, float noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5zxing6qrcode8Detector24findAlignmentWithFitLineENS_3RefINS_11ResultPointEEES4_S4_fRNS_12ErrorHandlerE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.zxing::Ref.26") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef readonly align 8 captures(none) %3, ptr nofree noundef readonly align 8 captures(none) %4, float noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector.31", align 8    ; 11 uses
  %8 = alloca %"class.std::vector.31", align 8    ; 11 uses
  %9 = alloca %"struct.zxing::qrcode::Detector::Rect_", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca float, align 4                    ; 7 uses
  %10 = alloca %"class.zxing::ReaderErrorHandler", align 8 ; 13 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca float, align 4                    ; 6 uses
  %i.f = alloca float, align 4                    ; 7 uses
  %11 = alloca %"class.zxing::ReaderErrorHandler", align 8 ; 13 uses
  %12 = alloca %"class.zxing::ReaderErrorHandler", align 8 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = tail call noundef i32 @_ZNK5zxing9BitMatrix8getWidthEv(ptr noundef nonnull align 8 dereferenceable(346) %i.h) ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.k = tail call noundef i32 @_ZNK5zxing9BitMatrix9getHeightEv(ptr noundef nonnull align 8 dereferenceable(346) %i.j) ; 3 uses
  %i.l = fmul float %5, 7.000000e+00
  %i.m = fpext float %i.l to double
  %i.n = load ptr, ptr %4, align 8, !tbaa !88     ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef float %i.q(ptr noundef nonnull align 8 dereferenceable(20) %i.n)
  %i.s = fpext float %i.r to double
  %i.t = fmul double %i.m, 5.000000e-01           ; 8 uses
  %i.u = fcmp olt double %i.t, %i.s
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %4, align 8, !tbaa !88     ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef float %i.y(ptr noundef nonnull align 8 dereferenceable(20) %i.v)
  %i.aa = fpext float %i.z to double
  %i.ab = fsub double %i.aa, %i.t
  %i.ac = fptosi double %i.ab to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ad = phi i32 [ %i.ac, %bb.b ], [ 0, %bb.a ]  ; 4 uses
  %i.ae = load ptr, ptr %4, align 8, !tbaa !88    ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef float %i.ah(ptr noundef nonnull align 8 dereferenceable(20) %i.ae)
  %i.aj = fpext float %i.ai to double
  %i.ak = fcmp olt double %i.t, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %4, align 8, !tbaa !88    ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef float %i.ao(ptr noundef nonnull align 8 dereferenceable(20) %i.al)
  %i.aq = fpext float %i.ap to double
  %i.ar = fsub double %i.aq, %i.t
  %i.as = fptosi double %i.ar to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.at = phi i32 [ %i.as, %bb.d ], [ 0, %bb.c ]  ; 4 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !88    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef float %i.ax(ptr noundef nonnull align 8 dereferenceable(20) %i.au)
  %i.az = sitofp i32 %i.ad to float
  %i.ba = fsub float %i.ay, %i.az
  %i.bb = fmul float %i.ba, 2.000000e+00
  %i.bc = fptosi float %i.bb to i32               ; 2 uses
  %i.bd = add nsw i32 %i.ad, %i.bc
  %i.be = icmp sgt i32 %i.bd, %i.i
  %i.bf = sub nsw i32 %i.i, %i.ad
  %spec.select = select i1 %i.be, i32 %i.bf, i32 %i.bc
  %i.bg = load ptr, ptr %4, align 8, !tbaa !88    ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef float %i.bj(ptr noundef nonnull align 8 dereferenceable(20) %i.bg)
  %i.bl = sitofp i32 %i.at to float
  %i.bm = fsub float %i.bk, %i.bl
  %i.bn = fmul float %i.bm, 2.000000e+00
  %i.bo = fptosi float %i.bn to i32               ; 2 uses
  %i.bp = add nsw i32 %i.at, %i.bo
  %i.bq = icmp sgt i32 %i.bp, %i.k
  %i.br = sub nsw i32 %i.k, %i.at
  %.sroa.15.0 = select i1 %i.bq, i32 %i.br, i32 %i.bo
  %i.bs = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef float %i.bv(ptr noundef nonnull align 8 dereferenceable(20) %i.bs)
  %i.bx = fpext float %i.bw to double
  %i.by = fcmp olt double %i.t, %i.bx
  br i1 %i.by, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bz = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef float %i.cc(ptr noundef nonnull align 8 dereferenceable(20) %i.bz)
  %i.ce = fpext float %i.cd to double
  %i.cf = fsub double %i.ce, %i.t
  %i.cg = fptosi double %i.cf to i32
  %i.ch = zext i32 %i.cg to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.013.0.insert.ext = phi i64 [ %i.ch, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.ci = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !30
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef float %i.cl(ptr noundef nonnull align 8 dereferenceable(20) %i.ci)
  %i.cn = fpext float %i.cm to double
  %i.co = fcmp olt double %i.t, %i.cn
  br i1 %i.co, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cp = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !30
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef float %i.cs(ptr noundef nonnull align 8 dereferenceable(20) %i.cp)
  %i.cu = fpext float %i.ct to double
  %i.cv = fsub double %i.cu, %i.t
  %i.cw = fptosi double %i.cv to i32
  %i.cx = zext i32 %i.cw to i64
  %i.cy = shl nuw i64 %i.cx, 32
  %i.cz = or disjoint i64 %i.cy, %.sroa.013.0.insert.ext
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.013.4.insert.ext = phi i64 [ %i.cz, %bb.h ], [ %.sroa.013.0.insert.ext, %bb.g ] ; 3 uses
  %i.da = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !30
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call noundef float %i.dd(ptr noundef nonnull align 8 dereferenceable(20) %i.da)
  %i.df = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = tail call noundef float %i.di(ptr noundef nonnull align 8 dereferenceable(20) %i.df)
  %i.dk = bitcast i64 %.sroa.013.4.insert.ext to <2 x i32>
  %i.dl = sitofp <2 x i32> %i.dk to <2 x float>
  %i.dm = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.dj, i64 1
  %i.do = fsub <2 x float> %i.dn, %i.dl
  %i.dp = fmul <2 x float> %i.do, splat (float 2.000000e+00)
  %i.dq = fptosi <2 x float> %i.dp to <2 x i32>   ; 2 uses
  %13 = bitcast i64 %.sroa.013.4.insert.ext to <2 x i32> ; 2 uses
  %i.dr = add nsw <2 x i32> %i.dq, %13
  %i.ds = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %i.dt = insertelement <2 x i32> %i.ds, i32 %i.k, i64 1 ; 2 uses
  %i.du = icmp sgt <2 x i32> %i.dr, %i.dt
  %i.dv = sub nsw <2 x i32> %i.dt, %13
  %i.dw = select <2 x i1> %i.du, <2 x i32> %i.dv, <2 x i32> %i.dq
  %.sroa.12.1 = bitcast <2 x i32> %i.dw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store i32 %i.ad, ptr %9, align 8, !tbaa !108
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.at, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !108
  %.sroa.1240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %spec.select, ptr %.sroa.1240.0..sroa_idx, align 8, !tbaa !108
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !108
  invoke void @_ZN5zxing6qrcode8Detector17findPointsForLineERNS_3RefINS_11ResultPointEEES5_S5_NS1_5Rect_ES6_RSt6vectorIS4_SaIS4_EESA_f(ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %.sroa.013.4.insert.ext, i64 %.sroa.12.1, ptr noundef nonnull byval(%"struct.zxing::qrcode::Detector::Rect_") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, float noundef %5)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.dx = invoke noundef i32 @_ZN5zxing6qrcode8Detector7fitLineERSt6vectorINS_3RefINS_11ResultPointEEESaIS5_EERfS9_Ri(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str.3)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing18ReaderErrorHandlerE, i64 16), ptr %10, align 8, !tbaa !30
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %i.dz, align 8, !tbaa !90
  %i.ea = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %bb.n unwind label %bb.r       ; 0 uses

bb.n:                                             ; preds = %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %10, align 8, !tbaa !30
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !83 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZN5zxing12ErrorHandlerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !84
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #19
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit

_ZN5zxing12ErrorHandlerD2Ev.exit:                 ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  store ptr null, ptr %0, align 8, !tbaa !85
  br label %bb.as

bb.o:                                             ; preds = %bb.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.p:                                             ; preds = %bb.j
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.q:                                             ; preds = %bb.l
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit87

bb.r:                                             ; preds = %bb.m
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %10, align 8, !tbaa !30
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !83 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZN5zxing12ErrorHandlerD2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85: ; preds = %bb.r
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !84
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #19
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit87

_ZN5zxing12ErrorHandlerD2Ev.exit87:               ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85, %bb.q
  %.pn80 = phi { ptr, i32 } [ %i.ej, %bb.q ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85 ], [ %i.ek, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.az

bb.s:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.er = invoke noundef i32 @_ZN5zxing6qrcode8Detector7fitLineERSt6vectorINS_3RefINS_11ResultPointEEESaIS5_EERfS9_Ri(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  invoke void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.3)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing18ReaderErrorHandlerE, i64 16), ptr %11, align 8, !tbaa !30
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 3, ptr %i.et, align 8, !tbaa !90
  %i.eu = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.w unwind label %bb.z       ; 0 uses

bb.w:                                             ; preds = %bb.v
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %11, align 8, !tbaa !30
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !83 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZN5zxing12ErrorHandlerD2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89: ; preds = %bb.w
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !84
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #19
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit91

_ZN5zxing12ErrorHandlerD2Ev.exit91:               ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.aq

bb.x:                                             ; preds = %bb.s
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.y:                                             ; preds = %bb.u
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit94

bb.z:                                             ; preds = %bb.v
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %11, align 8, !tbaa !30
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !83 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZN5zxing12ErrorHandlerD2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92: ; preds = %bb.z
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !84
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #19
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit94

_ZN5zxing12ErrorHandlerD2Ev.exit94:               ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92, %bb.y
  %.pn77 = phi { ptr, i32 } [ %i.fc, %bb.y ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92 ], [ %i.fd, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.ar

bb.aa:                                            ; preds = %bb.t
  %i.fk = load i32, ptr %i.a, align 4, !tbaa !108
  %i.fl = icmp eq i32 %i.fk, 0
  %i.fm = load i32, ptr %i.d, align 4, !tbaa !108
  %i.fn = icmp eq i32 %i.fm, 0                    ; 2 uses
  br i1 %i.fl, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.fn, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fo = load float, ptr %i.c, align 4, !tbaa !69
  %i.fp = fneg float %i.fo                        ; 2 uses
  %i.fq = load float, ptr %i.f, align 4, !tbaa !69
  %i.fr = load float, ptr %i.e, align 4, !tbaa !69
  %i.fs = call float @llvm.fmuladd.f32(float %i.fp, float %i.fr, float %i.fq)
  br label %bb.am

bb.ad:                                            ; preds = %bb.aa
  br i1 %i.fn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ft = load float, ptr %i.f, align 4, !tbaa !69
  %i.fu = fneg float %i.ft                        ; 2 uses
  %i.fv = load float, ptr %i.c, align 4, !tbaa !69
  %i.fw = load float, ptr %i.b, align 4, !tbaa !69
  %i.fx = call float @llvm.fmuladd.f32(float %i.fu, float %i.fw, float %i.fv)
  br label %bb.am

bb.af:                                            ; preds = %bb.ad
  %i.fy = load float, ptr %i.b, align 4, !tbaa !69 ; 3 uses
  %i.fz = load float, ptr %i.e, align 4, !tbaa !69 ; 2 uses
  %i.ga = fcmp oeq float %i.fy, %i.fz
  br i1 %i.ga, label %.critedge, label %bb.ag
end_hunk_0
