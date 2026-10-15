Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/facemarkLBF?download=true
inline.NumInlined: 2580
inline.NumDeleted: 725
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv4face15FacemarkLBFImpl3LBF12calcVarianceERKSt6vectorIdSaIdEE:bb.a
bb.q:                                             ; preds = %bb.p, %bb.k
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.p ], [ %i.ar, %bb.k ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn15.pn.pn.pn

bb.r:                                             ; preds = %bb.a, %bb.j
  %.0 = phi double [ %i.aq, %bb.j ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN2cv4face15FacemarkLBFImpl3LBF13calcMeanErrorERSt6vectorINS_3MatESaIS4_EES7_iRS3_IiSaIiEESA_(ptr nofree nonnull readnone align 1 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Range", align 4         ; 5 uses
  %7 = alloca %"class.cv::Range", align 8         ; 4 uses
  %8 = alloca %"class.cv::Range", align 4         ; 5 uses
  %9 = alloca %"class.cv::Range", align 8         ; 4 uses
  %10 = alloca %"class.cv::Mat_", align 8         ; 14 uses
  %11 = alloca %"class.cv::Mat_", align 8         ; 11 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %13 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %14 = alloca %"class.cv::Mat_", align 8         ; 7 uses
  %15 = alloca %"class.cv::Mat_", align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.c = load ptr, ptr %1, align 8, !tbaa !123
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 208                 ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph131, label %._crit_edge132

.lr.ph131:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = icmp sgt i32 %3, 0
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 432
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 224
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 16
  %wide.trip.count159 = and i64 %i.g, 2147483647
  br label %bb.b

._crit_edge132:                                   ; preds = %._crit_edge126, %bb.a
  %.076.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.fl, %._crit_edge126 ]
  %i.u = mul nsw i32 %3, %i.h
  %i.v = sitofp i32 %i.u to double
  %i.w = fdiv double %.076.lcssa, %i.v
  ret double %i.w

bb.b:                                             ; preds = %.lr.ph131, %._crit_edge126
  %indvars.iv156 = phi i64 [ 0, %.lr.ph131 ], [ %indvars.iv.next157, %._crit_edge126 ] ; 3 uses
  %.076128 = phi double [ 0.000000e+00, %.lr.ph131 ], [ %i.fl, %._crit_edge126 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.x = load ptr, ptr %1, align 8, !tbaa !123
  %i.y = getelementptr inbounds nuw [208 x i8], ptr %i.x, i64 %indvars.iv156
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %10) #29
  %i.z = load i32, ptr %10, align 8, !tbaa !144
  %i.aa = and i32 %i.z, -4096
  %i.ab = or disjoint i32 %i.aa, 6
  store i32 %i.ab, ptr %10, align 8, !tbaa !144
  %i.ac = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.y)
          to label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit unwind label %bb.c ; 0 uses

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.c ], [ %.pn.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #29
  br label %common.resume

_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit:                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.ae = load ptr, ptr %2, align 8, !tbaa !123
  %i.af = getelementptr inbounds nuw [208 x i8], ptr %i.ae, i64 %indvars.iv156
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #29
  %i.ag = load i32, ptr %11, align 8, !tbaa !144
  %i.ah = and i32 %i.ag, -4096
  %i.ai = or disjoint i32 %i.ah, 6
  store i32 %i.ai, ptr %11, align 8, !tbaa !144
  %i.aj = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.af)
          to label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader unwind label %bb.d ; 0 uses

_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader:     ; preds = %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.al = load ptr, ptr %4, align 8, !tbaa !54    ; 6 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 2                 ; 5 uses
  %i.aq = trunc i64 %i.ap to i32                  ; 4 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader
  %i.as = load i32, ptr %i.k, align 4, !tbaa !145
  %.fr134 = freeze i32 %i.as
  %i.at = icmp slt i32 %.fr134, 2
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !154 ; 6 uses
  %i.av = load i64, ptr %i.m, align 8             ; 5 uses
  br i1 %i.at, label %.lr.ph.split.us, label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader136

_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader136:  ; preds = %.lr.ph
  %wide.trip.count = and i64 %i.ap, 2147483647
  %i.aw = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.ap, 3                    ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 3
  br i1 %i.ax, label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil.preheader, label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader136.new

_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader136.new: ; preds = %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader136
  %unroll_iter = and i64 %i.ap, 2147483644
  br label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ay = load <2 x double>, ptr %i.au, align 8, !tbaa !58 ; 9 uses
  %xtraiter201 = and i32 %i.aq, 7                 ; 3 uses
  %i.az = icmp ult i32 %i.aq, 8
  br i1 %i.az, label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter208 = and i32 %i.aq, 2147483640
  br label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us

_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us:            ; preds = %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us, %.lr.ph.split.us.new
  %i.ba = phi <2 x double> [ zeroinitializer, %.lr.ph.split.us.new ], [ %i.bi, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us ]
  %niter209 = phi i32 [ 0, %.lr.ph.split.us.new ], [ %niter209.next.7, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us ]
  %i.bb = fadd <2 x double> %i.ba, %i.ay
  %i.bc = fadd <2 x double> %i.bb, %i.ay
  %i.bd = fadd <2 x double> %i.bc, %i.ay
  %i.be = fadd <2 x double> %i.bd, %i.ay
  %i.bf = fadd <2 x double> %i.be, %i.ay
  %i.bg = fadd <2 x double> %i.bf, %i.ay
  %i.bh = fadd <2 x double> %i.bg, %i.ay
  %i.bi = fadd <2 x double> %i.bh, %i.ay          ; 3 uses
  %niter209.next.7 = add i32 %niter209, 8         ; 2 uses
  %niter209.ncmp.7 = icmp eq i32 %niter209.next.7, %unroll_iter208
  br i1 %niter209.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us, !llvm.loop !437

bb.d:                                             ; preds = %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #29
  br label %.body

.preheader.loopexit.unr-lcssa:                    ; preds = %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us
  %lcmp.mod205.not = icmp eq i32 %xtraiter201, 0
  br i1 %lcmp.mod205.not, label %.preheader, label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us.epil.preheader

_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us.epil.preheader: ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us
  %.epil.init204 = phi <2 x double> [ zeroinitializer, %.lr.ph.split.us ], [ %i.bi, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod207 = icmp ne i32 %xtraiter201, 0
  call void @llvm.assume(i1 %lcmp.mod207)
  br label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us.epil

_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us.epil:       ; preds = %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us.epil, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us.epil.preheader
  %i.bk = phi <2 x double> [ %.epil.init204, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us.epil.preheader ], [ %i.bl, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us.epil ]
  %epil.iter202 = phi i32 [ 0, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us.epil.preheader ], [ %epil.iter202.next, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us.epil ]
  %i.bl = fadd <2 x double> %i.bk, %i.ay          ; 2 uses
  %epil.iter202.next = add i32 %epil.iter202, 1   ; 2 uses
  %epil.iter202.cmp.not = icmp eq i32 %epil.iter202.next, %xtraiter201
  br i1 %epil.iter202.cmp.not, label %.preheader, label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us.epil, !llvm.loop !438

.preheader.loopexit193.unr-lcssa:                 ; preds = %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil.preheader

_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil.preheader: ; preds = %.preheader.loopexit193.unr-lcssa, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader136
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader136 ], [ %indvars.iv.next.3, %.preheader.loopexit193.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader136 ], [ %i.du, %.preheader.loopexit193.unr-lcssa ]
  %lcmp.mod200 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod200)
  br label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil

_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil:          ; preds = %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil.preheader ], [ %indvars.iv.next.epil, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil ] ; 2 uses
  %i.bm = phi <2 x double> [ %.epil.init, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil.preheader ], [ %i.bs, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil ]
  %epil.iter = phi i64 [ 0, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil.preheader ], [ %epil.iter.next, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.epil
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !48
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %i.av, %i.bp
  %.sink.i.epil = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bq
  %i.br = load <2 x double>, ptr %.sink.i.epil, align 8, !tbaa !58
  %i.bs = fadd <2 x double> %i.bm, %i.br          ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil, !llvm.loop !439

.preheader:                                       ; preds = %.preheader.loopexit193.unr-lcssa, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil, %.preheader.loopexit.unr-lcssa, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us.epil, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader
  %i.bt = phi <2 x double> [ zeroinitializer, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader ], [ %i.bl, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.us.epil ], [ %i.bi, %.preheader.loopexit.unr-lcssa ], [ %i.du, %.preheader.loopexit193.unr-lcssa ], [ %i.bs, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.epil ] ; 2 uses
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.bv = load ptr, ptr %5, align 8, !tbaa !54    ; 6 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 2                 ; 5 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 4 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph114, label %._crit_edge

.lr.ph114:                                        ; preds = %.preheader
  %i.cc = load i32, ptr %i.k, align 4, !tbaa !145
  %.fr = freeze i32 %i.cc
  %i.cd = icmp slt i32 %.fr, 2
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !154 ; 6 uses
  %i.cf = load i64, ptr %i.m, align 8             ; 5 uses
  br i1 %i.cd, label %.lr.ph114.split.us, label %.lr.ph114.split.preheader

.lr.ph114.split.preheader:                        ; preds = %.lr.ph114
  %wide.trip.count152 = and i64 %i.bz, 2147483647
  %i.cg = add nsw i64 %wide.trip.count152, -1
  %xtraiter210 = and i64 %i.bz, 3                 ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 3
  br i1 %i.ch, label %.lr.ph114.split.epil.preheader, label %.lr.ph114.split.preheader.new

.lr.ph114.split.preheader.new:                    ; preds = %.lr.ph114.split.preheader
  %unroll_iter217 = and i64 %i.bz, 2147483644
  br label %.lr.ph114.split

.lr.ph114.split.us:                               ; preds = %.lr.ph114
  %i.ci = load <2 x double>, ptr %i.ce, align 8, !tbaa !58 ; 9 uses
  %xtraiter219 = and i32 %i.ca, 7                 ; 3 uses
  %i.cj = icmp ult i32 %i.ca, 8
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph114.split.us.new

.lr.ph114.split.us.new:                           ; preds = %.lr.ph114.split.us
  %unroll_iter226 = and i32 %i.ca, 2147483640
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph114.split.us.new
  %i.ck = phi <2 x double> [ zeroinitializer, %.lr.ph114.split.us.new ], [ %i.cs, %bb.e ]
  %niter227 = phi i32 [ 0, %.lr.ph114.split.us.new ], [ %niter227.next.7, %bb.e ]
  %i.cl = fadd <2 x double> %i.ck, %i.ci
  %i.cm = fadd <2 x double> %i.cl, %i.ci
  %i.cn = fadd <2 x double> %i.cm, %i.ci
  %i.co = fadd <2 x double> %i.cn, %i.ci
  %i.cp = fadd <2 x double> %i.co, %i.ci
  %i.cq = fadd <2 x double> %i.cp, %i.ci
  %i.cr = fadd <2 x double> %i.cq, %i.ci
  %i.cs = fadd <2 x double> %i.cr, %i.ci          ; 3 uses
  %niter227.next.7 = add i32 %niter227, 8         ; 2 uses
  %niter227.ncmp.7 = icmp eq i32 %niter227.next.7, %unroll_iter226
  br i1 %niter227.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !440

_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83:               ; preds = %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader136.new
  %indvars.iv = phi i64 [ 0, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader136.new ], [ %indvars.iv.next.3, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83 ] ; 5 uses
  %i.ct = phi <2 x double> [ zeroinitializer, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader136.new ], [ %i.du, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83 ]
  %niter = phi i64 [ 0, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83.preheader136.new ], [ %niter.next.3, %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83 ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !48
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.av, %i.cw
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.cx
  %i.cy = load <2 x double>, ptr %.sink.i, align 8, !tbaa !58
  %i.cz = fadd <2 x double> %i.ct, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !48
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul i64 %i.av, %i.dd
  %.sink.i.1 = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.de
  %i.df = load <2 x double>, ptr %.sink.i.1, align 8, !tbaa !58
  %i.dg = fadd <2 x double> %i.cz, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !48
  %i.dk = sext i32 %i.dj to i64
  %i.dl = mul i64 %i.av, %i.dk
  %.sink.i.2 = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.dl
  %i.dm = load <2 x double>, ptr %.sink.i.2, align 8, !tbaa !58
  %i.dn = fadd <2 x double> %i.dg, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !48
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul i64 %i.av, %i.dr
  %.sink.i.3 = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ds
  %i.dt = load <2 x double>, ptr %.sink.i.3, align 8, !tbaa !58
  %i.du = fadd <2 x double> %i.dn, %i.dt          ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit193.unr-lcssa, label %_ZN2cv4Mat_IdEC2ERKNS_3MatE.exit83, !llvm.loop !437

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod223.not = icmp eq i32 %xtraiter219, 0
  br i1 %lcmp.mod223.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph114.split.us
  %.epil.init222 = phi <2 x double> [ zeroinitializer, %.lr.ph114.split.us ], [ %i.cs, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod225 = icmp ne i32 %xtraiter219, 0
  call void @llvm.assume(i1 %lcmp.mod225)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %i.dv = phi <2 x double> [ %.epil.init222, %.epil.preheader ], [ %i.dw, %bb.f ]
  %epil.iter220 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter220.next, %bb.f ]
  %i.dw = fadd <2 x double> %i.dv, %i.ci          ; 2 uses
  %epil.iter220.next = add i32 %epil.iter220, 1   ; 2 uses
  %epil.iter220.cmp.not = icmp eq i32 %epil.iter220.next, %xtraiter219
  br i1 %epil.iter220.cmp.not, label %._crit_edge, label %bb.f, !llvm.loop !441

._crit_edge.loopexit192.unr-lcssa:                ; preds = %.lr.ph114.split
  %lcmp.mod214.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod214.not, label %._crit_edge, label %.lr.ph114.split.epil.preheader

.lr.ph114.split.epil.preheader:                   ; preds = %._crit_edge.loopexit192.unr-lcssa, %.lr.ph114.split.preheader
  %indvars.iv149.epil.init = phi i64 [ 0, %.lr.ph114.split.preheader ], [ %indvars.iv.next150.3, %._crit_edge.loopexit192.unr-lcssa ]
  %.epil.init213 = phi <2 x double> [ zeroinitializer, %.lr.ph114.split.preheader ], [ %i.fj, %._crit_edge.loopexit192.unr-lcssa ]
  %lcmp.mod216 = icmp ne i64 %xtraiter210, 0
  call void @llvm.assume(i1 %lcmp.mod216)
  br label %.lr.ph114.split.epil

.lr.ph114.split.epil:                             ; preds = %.lr.ph114.split.epil, %.lr.ph114.split.epil.preheader
  %indvars.iv149.epil = phi i64 [ %indvars.iv149.epil.init, %.lr.ph114.split.epil.preheader ], [ %indvars.iv.next150.epil, %.lr.ph114.split.epil ] ; 2 uses
  %i.dx = phi <2 x double> [ %.epil.init213, %.lr.ph114.split.epil.preheader ], [ %i.ed, %.lr.ph114.split.epil ]
  %epil.iter211 = phi i64 [ 0, %.lr.ph114.split.epil.preheader ], [ %epil.iter211.next, %.lr.ph114.split.epil ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv149.epil
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !48
  %i.ea = sext i32 %i.dz to i64
  %i.eb = mul i64 %i.cf, %i.ea
  %.sink.i87.epil = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.eb
  %i.ec = load <2 x double>, ptr %.sink.i87.epil, align 8, !tbaa !58
  %i.ed = fadd <2 x double> %i.dx, %i.ec          ; 2 uses
  %indvars.iv.next150.epil = add nuw nsw i64 %indvars.iv149.epil, 1
  %epil.iter211.next = add i64 %epil.iter211, 1   ; 2 uses
  %epil.iter211.cmp.not = icmp eq i64 %epil.iter211.next, %xtraiter210
  br i1 %epil.iter211.cmp.not, label %._crit_edge, label %.lr.ph114.split.epil, !llvm.loop !442

._crit_edge:                                      ; preds = %._crit_edge.loopexit192.unr-lcssa, %.lr.ph114.split.epil, %._crit_edge.loopexit.unr-lcssa, %bb.f, %.preheader
  %i.ee = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.dw, %bb.f ], [ %i.cs, %._crit_edge.loopexit.unr-lcssa ], [ %i.fj, %._crit_edge.loopexit192.unr-lcssa ], [ %i.ed, %.lr.ph114.split.epil ] ; 2 uses
  %16 = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %17 = insertelement <2 x i64> %16, i64 %i.ap, i64 1
  %18 = uitofp <2 x i64> %17 to <2 x double>      ; 2 uses
  %19 = shufflevector <2 x double> %i.ee, <2 x double> %i.bt, <2 x i32> <i32 0, i32 2>
  %20 = fdiv <2 x double> %19, %18                ; 2 uses
  %21 = shufflevector <2 x double> %i.ee, <2 x double> %i.bt, <2 x i32> <i32 1, i32 3>
  %22 = fdiv <2 x double> %21, %18                ; 2 uses
  %shift = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %20, %shift
  %i.ef = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %shift188 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop188 = fsub <2 x double> %22, %shift188 ; 2 uses
  %foldExtExtBinop190 = fmul <2 x double> %foldExtExtBinop188, %foldExtExtBinop188
  %i.eg = extractelement <2 x double> %foldExtExtBinop190, i64 0
  %i.eh = call double @llvm.fmuladd.f64(double %i.ef, double %i.ef, double %i.eg)
  %sqrt = call double @sqrt(double noundef %i.eh) #29
  br i1 %i.o, label %.lr.ph125, label %._crit_edge126

.lr.ph114.split:                                  ; preds = %.lr.ph114.split, %.lr.ph114.split.preheader.new
  %indvars.iv149 = phi i64 [ 0, %.lr.ph114.split.preheader.new ], [ %indvars.iv.next150.3, %.lr.ph114.split ] ; 5 uses
  %i.ei = phi <2 x double> [ zeroinitializer, %.lr.ph114.split.preheader.new ], [ %i.fj, %.lr.ph114.split ]
  %niter218 = phi i64 [ 0, %.lr.ph114.split.preheader.new ], [ %niter218.next.3, %.lr.ph114.split ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv149
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !48
  %i.el = sext i32 %i.ek to i64
  %i.em = mul i64 %i.cf, %i.el
  %.sink.i87 = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.em
  %i.en = load <2 x double>, ptr %.sink.i87, align 8, !tbaa !58
  %i.eo = fadd <2 x double> %i.ei, %i.en
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv149
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !48
  %i.es = sext i32 %i.er to i64
  %i.et = mul i64 %i.cf, %i.es
  %.sink.i87.1 = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.et
  %i.eu = load <2 x double>, ptr %.sink.i87.1, align 8, !tbaa !58
  %i.ev = fadd <2 x double> %i.eo, %i.eu
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv149
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !48
  %i.ez = sext i32 %i.ey to i64
  %i.fa = mul i64 %i.cf, %i.ez
  %.sink.i87.2 = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.fa
  %i.fb = load <2 x double>, ptr %.sink.i87.2, align 8, !tbaa !58
  %i.fc = fadd <2 x double> %i.ev, %i.fb
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv149
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !48
  %i.fg = sext i32 %i.ff to i64
  %i.fh = mul i64 %i.cf, %i.fg
  %.sink.i87.3 = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.fh
  %i.fi = load <2 x double>, ptr %.sink.i87.3, align 8, !tbaa !58
  %i.fj = fadd <2 x double> %i.fc, %i.fi          ; 3 uses
  %indvars.iv.next150.3 = add nuw nsw i64 %indvars.iv149, 4 ; 2 uses
  %niter218.next.3 = add i64 %niter218, 4         ; 2 uses
  %niter218.ncmp.3 = icmp eq i64 %niter218.next.3, %unroll_iter217
  br i1 %niter218.ncmp.3, label %._crit_edge.loopexit192.unr-lcssa, label %.lr.ph114.split, !llvm.loop !440

._crit_edge126:                                   ; preds = %bb.l, %._crit_edge
  %.062.lcssa = phi double [ 0.000000e+00, %._crit_edge ], [ %i.fp, %bb.l ]
  %i.fk = fdiv double %.062.lcssa, %sqrt
  %i.fl = fadd double %.076128, %i.fk             ; 2 uses
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %._crit_edge132, label %bb.b, !llvm.loop !443

.lr.ph125:                                        ; preds = %._crit_edge, %bb.l
  %.0123 = phi i32 [ %i.fm, %bb.l ], [ 0, %._crit_edge ] ; 3 uses
  %.062122 = phi double [ %i.fp, %bb.l ], [ 0.000000e+00, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29, !noalias !449
  %i.fm = add nuw nsw i32 %.0123, 1               ; 4 uses
  store i32 %.0123, ptr %8, align 4, !tbaa !174, !noalias !449
  store i32 %i.fm, ptr %i.p, align 4, !tbaa !175, !noalias !449
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29, !noalias !449
  store i64 9223372034707292160, ptr %9, align 8, !noalias !449
  invoke void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %.lr.ph125
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29, !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29, !noalias !449
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29, !noalias !450
  store i32 %.0123, ptr %6, align 4, !tbaa !174, !noalias !450
  store i32 %i.fm, ptr %i.q, align 4, !tbaa !175, !noalias !450
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29, !noalias !450
  store i64 9223372034707292160, ptr %7, align 8, !noalias !450
  invoke void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !450
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !450
  invoke void @_ZN2cvmiERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %15)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(688) %13)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.fn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.fo = invoke noundef double @_ZN2cv4normERKNS_11_InputArrayEiS2_(ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %i.fn)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.fp = fadd double %.062122, %i.fo             ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.r) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.s) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.t) #29
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %exitcond155.not = icmp eq i32 %i.fm, %3
  br i1 %exitcond155.not, label %._crit_edge126, label %.lr.ph125, !llvm.loop !448

bb.m:                                             ; preds = %.lr.ph125
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.g
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.h
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.k, %bb.j
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.fu, %bb.q ], [ %i.ft, %bb.p ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %13) #29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.fs, %bb.o ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.fr, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.t ], [ %i.fq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %.body

.body:                                            ; preds = %bb.d, %bb.u
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.u ], [ %i.bj, %bb.d ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv4face15FacemarkLBFImpl10RandomTree8initTreeEiiSt6vectorIiSaIiEES3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(296) initializes((0, 12)) %0, i32 noundef %1, i32 noundef %2, ptr noundef align 8 %3, ptr noundef align 8 %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !203
  store i32 %2, ptr %0, align 8, !tbaa !204
  %i.b = shl nuw i32 1, %2                        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.b, ptr %i.c, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %5, i32 noundef %i.b, i32 noundef 4, i32 noundef 6)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %5, align 8, !tbaa !181    ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(688) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.d, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit unwind label %bb.e, !inline_history !13

_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit:             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #29
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.j) #29
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !205
end_hunk_0
