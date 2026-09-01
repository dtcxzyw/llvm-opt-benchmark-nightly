Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lsd?download=true
inline.NumInlined: 937
inline.NumDeleted: 383
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv7noArrayEv

declare noundef float @_ZN2cv9fastAtan2Eff(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv23LineSegmentDetectorImpl12compare_normERKNS0_9normPointES3_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !176
  %i.e = icmp sgt i32 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZNK2cv23LineSegmentDetectorImpl9get_thetaERKSt6vectorINS0_11RegionPointESaIS2_EERKdS8_S8_S8_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !114    ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %_Z12double_equalRKdS0_.exit36.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 5
  %i.h = load double, ptr %2, align 8, !tbaa !99
  %i.i = load double, ptr %3, align 8, !tbaa !99
  %i.j = insertelement <2 x double> poison, double %i.h, i64 0
  %i.k = insertelement <2 x double> %i.j, double %i.i, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.l = extractelement <2 x double> %i.ad, i64 1 ; 6 uses
  %i.m = fcmp oeq double %i.l, 0.000000e+00
  br i1 %i.m, label %_Z12double_equalRKdS0_.exit.thread, label %_Z12double_equalRKdS0_.exit

_Z12double_equalRKdS0_.exit:                      ; preds = %._crit_edge
  %i.n = tail call double @llvm.fabs.f64(double %i.l) ; 2 uses
  %i.o = fcmp one double %i.l, 0.000000e+00
  %i.p = select i1 %i.o, double %i.n, double 0.000000e+00 ; 2 uses
  %i.q = fcmp olt double %i.p, f0x0010000000000000
  %spec.store.select.i = select i1 %i.q, double f0x0010000000000000, double %i.p
  %i.r = fdiv double %i.n, %spec.store.select.i
  %i.s = fcmp ugt double %i.r, f0x3D19000000000000
  br i1 %i.s, label %.critedge, label %_Z12double_equalRKdS0_.exit.thread

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.02865 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %bb.b ] ; 2 uses
  %.05564 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ai, %bb.b ]
  %i.t = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ad, %bb.b ]
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.02865 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !99 ; 2 uses
  %i.x = load <2 x i32>, ptr %i.u, align 8, !tbaa !81
  %i.y = sitofp <2 x i32> %i.x to <2 x double>
  %i.z = fsub <2 x double> %i.y, %i.k             ; 4 uses
  %i.aa = fmul <2 x double> %i.z, %i.z
  %i.ab = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.ac, <2 x double> %i.t) ; 5 uses
  %i.ae = extractelement <2 x double> %i.z, i64 1
  %i.af = fneg double %i.ae
  %i.ag = extractelement <2 x double> %i.z, i64 0
  %i.ah = fmul double %i.ag, %i.af
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.w, double %.05564) ; 8 uses
  %i.aj = add nuw i64 %.02865, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !178

_Z12double_equalRKdS0_.exit.thread:               ; preds = %._crit_edge, %_Z12double_equalRKdS0_.exit
  %i.ak = extractelement <2 x double> %i.ad, i64 0 ; 3 uses
  %i.al = fcmp oeq double %i.ak, 0.000000e+00
  br i1 %i.al, label %_Z12double_equalRKdS0_.exit33.thread, label %_Z12double_equalRKdS0_.exit33

_Z12double_equalRKdS0_.exit33:                    ; preds = %_Z12double_equalRKdS0_.exit.thread
  %i.am = tail call double @llvm.fabs.f64(double %i.ak) ; 2 uses
  %i.an = fcmp one double %i.ak, 0.000000e+00
  %i.ao = select i1 %i.an, double %i.am, double 0.000000e+00 ; 2 uses
  %i.ap = fcmp olt double %i.ao, f0x0010000000000000
  %spec.store.select.i31 = select i1 %i.ap, double f0x0010000000000000, double %i.ao
  %i.aq = fdiv double %i.am, %spec.store.select.i31
  %i.ar = fcmp ugt double %i.aq, f0x3D19000000000000
  br i1 %i.ar, label %.critedge, label %_Z12double_equalRKdS0_.exit33.thread

_Z12double_equalRKdS0_.exit33.thread:             ; preds = %_Z12double_equalRKdS0_.exit.thread, %_Z12double_equalRKdS0_.exit33
  %i.as = fcmp oeq double %i.ai, 0.000000e+00
  br i1 %i.as, label %_Z12double_equalRKdS0_.exit36.thread, label %_Z12double_equalRKdS0_.exit36

_Z12double_equalRKdS0_.exit36:                    ; preds = %_Z12double_equalRKdS0_.exit33.thread
  %i.at = tail call double @llvm.fabs.f64(double %i.ai) ; 2 uses
  %i.au = fcmp one double %i.ai, 0.000000e+00
  %i.av = select i1 %i.au, double %i.at, double 0.000000e+00 ; 2 uses
  %i.aw = fcmp olt double %i.av, f0x0010000000000000
  %spec.store.select.i34 = select i1 %i.aw, double f0x0010000000000000, double %i.av
  %i.ax = fdiv double %i.at, %spec.store.select.i34
  %i.ay = fcmp ugt double %i.ax, f0x3D19000000000000
  br i1 %i.ay, label %.critedge, label %_Z12double_equalRKdS0_.exit36.thread

_Z12double_equalRKdS0_.exit36.thread:             ; preds = %bb.a, %_Z12double_equalRKdS0_.exit33.thread, %_Z12double_equalRKdS0_.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv23LineSegmentDetectorImpl9get_thetaERKSt6vectorINS0_11RegionPointESaIS2_EERKdS8_S8_S8_, ptr noundef nonnull @.str.1, i32 noundef 735) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_Z12double_equalRKdS0_.exit36.thread
  unreachable

bb.d:                                             ; preds = %_Z12double_equalRKdS0_.exit36.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !58
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %i.az

.critedge:                                        ; preds = %_Z12double_equalRKdS0_.exit33, %_Z12double_equalRKdS0_.exit, %_Z12double_equalRKdS0_.exit36
  %i.bf = extractelement <2 x double> %i.ad, i64 0 ; 3 uses
  %i.bg = fadd double %i.l, %i.bf
  %i.bh = fsub double %i.l, %i.bf                 ; 2 uses
  %i.bi = fmul double %i.ai, 4.000000e+00
  %i.bj = fmul double %i.ai, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %i.bj)
  %i.bl = tail call double @sqrt(double noundef %i.bk) #24
  %i.bm = fsub double %i.bg, %i.bl
  %i.bn = fmul double %i.bm, 5.000000e-01         ; 2 uses
  %i.bo = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ad) ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 0
  %i.bq = extractelement <2 x double> %i.bo, i64 1
  %i.br = fcmp ogt double %i.bq, %i.bp            ; 2 uses
  %i.bs = fsub double %i.bn, %i.bf
  %i.bt = fsub double %i.bn, %i.l
  %.sink101 = select i1 %i.br, double %i.ai, double %i.bs
  %.sink.v = select i1 %i.br, double %i.bt, double %i.ai
  %.sink = fptrunc double %.sink.v to float
  %i.bu = fptrunc double %.sink101 to float
  %i.bv = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %.sink, float noundef %i.bu)
  %i.bw = fpext float %i.bv to double
  %i.bx = fmul double %i.bw, f0x3F91DF46A2529D39  ; 3 uses
  %i.by = load double, ptr %4, align 8, !tbaa !99
  %i.bz = fsub double %i.bx, %i.by                ; 3 uses
  %i.ca = fcmp ugt double %i.bz, f0xC00921FB54442D18
  br i1 %i.ca, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.critedge
  %.0.lcssa.i.i = phi double [ %i.bz, %.critedge ], [ %i.cc, %.lr.ph.i.i ] ; 3 uses
  %i.cb = fcmp ogt double %.0.lcssa.i.i, f0x400921FB54442D18
  br i1 %i.cb, label %.lr.ph9.i.i, label %_Z10angle_diffRKdS0_.exit

.lr.ph.i.i:                                       ; preds = %.critedge, %.lr.ph.i.i
  %.07.i.i = phi double [ %i.cc, %.lr.ph.i.i ], [ %i.bz, %.critedge ]
  %i.cc = fadd double %.07.i.i, f0x401921FB54442D18 ; 3 uses
  %i.cd = fcmp ugt double %i.cc, f0xC00921FB54442D18
  br i1 %i.cd, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !172

.lr.ph9.i.i:                                      ; preds = %.preheader.i.i, %.lr.ph9.i.i
  %.18.i.i = phi double [ %i.ce, %.lr.ph9.i.i ], [ %.0.lcssa.i.i, %.preheader.i.i ]
  %i.ce = fadd double %.18.i.i, f0xC01921FB54442D18 ; 3 uses
  %i.cf = fcmp ogt double %i.ce, f0x400921FB54442D18
  br i1 %i.cf, label %.lr.ph9.i.i, label %_Z10angle_diffRKdS0_.exit, !llvm.loop !173

_Z10angle_diffRKdS0_.exit:                        ; preds = %.lr.ph9.i.i, %.preheader.i.i
  %.1.lcssa.i.i = phi double [ %.0.lcssa.i.i, %.preheader.i.i ], [ %i.ce, %.lr.ph9.i.i ]
  %i.cg = tail call noundef double @llvm.fabs.f64(double %.1.lcssa.i.i)
  %i.ch = load double, ptr %5, align 8, !tbaa !99
  %i.ci = fcmp ogt double %i.cg, %i.ch
  %i.cj = fadd double %i.bx, f0x400921FB54442D18
  %.0 = select i1 %i.ci, double %i.cj, double %i.bx
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv23LineSegmentDetectorImpl20reduce_region_radiusERSt6vectorINS0_11RegionPointESaIS2_EEdddRNS0_4rectEdRKd(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1160) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, double noundef %2, double noundef %3, double noundef %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %5, double noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.cv::LineSegmentDetectorImpl::RegionPoint", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !114    ; 2 uses
  %9 = load <2 x i32>, ptr %i.a, align 8, !tbaa !81
  %10 = sitofp <2 x i32> %9 to <2 x double>       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load double, ptr %7, align 8, !tbaa !99
  %i.f = fcmp uge double %6, %i.e
  br i1 %i.f, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.a
  %i.g = load <4 x double>, ptr %5, align 8, !tbaa !99 ; 2 uses
  %i.h = shufflevector <4 x double> %i.g, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.i = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fsub <2 x double> %i.h, %i.i             ; 2 uses
  %i.k = shufflevector <4 x double> %i.g, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.l = fsub <2 x double> %i.k, %11              ; 2 uses
  %i.m = fmul <2 x double> %i.l, %i.l
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> %i.j, <2 x double> %i.m) ; 2 uses
  %i.o = extractelement <2 x double> %i.n, i64 0  ; 2 uses
  %i.p = extractelement <2 x double> %i.n, i64 1  ; 2 uses
  %i.q = fcmp ogt double %i.o, %i.p
  %i.r = select i1 %i.q, double %i.o, double %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !118
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph57, %bb.e
  %i.u = phi ptr [ %i.a, %.lr.ph57 ], [ %i.bb, %bb.e ] ; 2 uses
  %i.v = phi ptr [ %.pre, %.lr.ph57 ], [ %i.ba, %bb.e ] ; 2 uses
  %.04855 = phi double [ %i.r, %.lr.ph57 ], [ %i.w, %bb.e ]
  %i.w = fmul double %.04855, 5.625000e-01        ; 2 uses
  %.not = icmp eq ptr %i.v, %i.u
  br i1 %.not, label %._crit_edge58, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d
  %i.x = icmp ugt i64 %i.ay, 1
  br i1 %i.x, label %bb.e, label %._crit_edge58

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.y = phi ptr [ %i.as, %bb.d ], [ %i.u, %bb.b ] ; 2 uses
  %i.z = phi ptr [ %i.at, %bb.d ], [ %i.v, %bb.b ]
  %.053 = phi i64 [ %i.au, %bb.d ], [ 0, %bb.b ]  ; 4 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.053 ; 2 uses
  %i.ab = load <2 x i32>, ptr %i.aa, align 8, !tbaa !81
  %i.ac = sitofp <2 x i32> %i.ab to <2 x double>  ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.ac, %10
  %12 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop68 = fsub <2 x double> %i.ac, %10 ; 2 uses
  %foldExtExtBinop70 = fmul <2 x double> %foldExtExtBinop68, %foldExtExtBinop68
  %13 = extractelement <2 x double> %foldExtExtBinop70, i64 1
  %i.ad = tail call noundef double @llvm.fmuladd.f64(double %12, double %12, double %13)
  %i.ae = fcmp ogt double %i.ad, %i.w
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !171
  store i8 0, ptr %i.ag, align 1, !tbaa !58
  %i.ah = load ptr, ptr %1, align 8, !tbaa !114   ; 3 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %.053 ; 2 uses
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !118
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr i8, ptr %i.ah, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -32    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !tbaa.struct !179
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false), !tbaa.struct !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !179
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !118
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -32 ; 2 uses
  store ptr %i.aq, ptr %i.s, align 8, !tbaa !118
  %i.ar = add i64 %.053, -1
  %.pre62 = load ptr, ptr %1, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.as = phi ptr [ %.pre62, %bb.c ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.at = phi ptr [ %i.aq, %bb.c ], [ %i.z, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ %i.ar, %bb.c ], [ %.053, %.lr.ph ]
  %i.au = add i64 %.1, 1                          ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5                 ; 2 uses
  %i.az = icmp ult i64 %i.au, %i.ay
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !180

bb.e:                                             ; preds = %._crit_edge
  tail call void @_ZNK2cv23LineSegmentDetectorImpl11region2rectERKSt6vectorINS0_11RegionPointESaIS2_EEdddRNS0_4rectE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef nonnull align 8 dereferenceable(96) %5)
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !118 ; 2 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !114   ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 5
  %i.bg = uitofp i64 %i.bf to double
  %i.bh = load double, ptr %5, align 8, !tbaa !167
  %i.bi = load double, ptr %i.b, align 8, !tbaa !168
  %i.bj = load double, ptr %i.c, align 8, !tbaa !169
  %i.bk = load double, ptr %i.d, align 8, !tbaa !170
  %i.bl = fsub double %i.bj, %i.bh                ; 2 uses
  %i.bm = fsub double %i.bk, %i.bi                ; 2 uses
  %i.bn = fmul double %i.bm, %i.bm
  %i.bo = tail call noundef double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double %i.bn)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.bo)
  %i.bp = load double, ptr %i.t, align 8, !tbaa !119
  %i.bq = fmul double %i.bp, %sqrt.i
  %i.br = fdiv double %i.bg, %i.bq
  %i.bs = load double, ptr %7, align 8, !tbaa !99
  %i.bt = fcmp uge double %i.br, %i.bs
  br i1 %i.bt, label %._crit_edge58, label %bb.b, !llvm.loop !181

._crit_edge58:                                    ; preds = %._crit_edge, %bb.e, %bb.b, %bb.a
  %.lcssa52 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ false, %._crit_edge ], [ true, %bb.e ]
  ret i1 %.lcssa52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden noundef double @_ZNK2cv23LineSegmentDetectorImpl8rect_nfaERKNS0_4rectE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #9 align 2 {
.preheader.preheader:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca [4 x %"class.cv::Point_.25"], align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !119
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.f = fmul double %i.d, 5.000000e-01
  %i.g = load <2 x double>, ptr %i.e, align 8, !tbaa !99
  %i.h = insertelement <2 x double> poison, double %i.f, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x double> %i.g, %i.i
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.l = load <4 x double>, ptr %1, align 8, !tbaa !99 ; 2 uses
  %i.m = fsub <4 x double> %i.l, %i.k             ; 6 uses
  %i.n = fadd <4 x double> %i.l, %i.k             ; 6 uses
  %i.o = shufflevector <4 x double> %i.m, <4 x double> %i.n, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x double> %i.o, ptr %2, align 16, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = shufflevector <4 x double> %i.n, <4 x double> %i.m, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.r = shufflevector <4 x double> %i.q, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x double> %i.r, ptr %i.p, align 16, !tbaa !99
  %i.s = extractelement <4 x double> %i.n, i64 1  ; 2 uses
  %i.t = extractelement <4 x double> %i.n, i64 3  ; 2 uses
  %i.u = fcmp oeq double %i.t, %i.s
  %i.v = extractelement <4 x double> %i.m, i64 0
  %i.w = extractelement <4 x double> %i.m, i64 2
  %i.x = fcmp olt double %i.w, %i.v
  %i.y = fcmp olt double %i.t, %i.s
  %.0.i = select i1 %i.u, i1 %i.x, i1 %i.y        ; 3 uses
  %spec.select = zext i1 %.0.i to i32
  %.sroa.sel.idx = select i1 %.0.i, i64 16, i64 0
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.sel.idx
  %.sroa.sel.sroa.sel.v = select i1 %.0.i, i64 24, i64 8
  %.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.sel.sroa.sel.v
  %i.z = load double, ptr %.sroa.sel.sroa.sel, align 8, !tbaa !182 ; 2 uses
  %i.aa = extractelement <4 x double> %i.m, i64 3 ; 2 uses
  %i.ab = fcmp oeq double %i.aa, %i.z
  %i.ac = load double, ptr %.sroa.sel, align 16
  %i.ad = extractelement <4 x double> %i.n, i64 2
  %i.ae = fcmp olt double %i.ad, %i.ac
  %i.af = fcmp olt double %i.aa, %i.z
  %.0.i.1 = select i1 %i.ab, i1 %i.ae, i1 %i.af
  %spec.select.1 = select i1 %.0.i.1, i32 2, i32 %spec.select ; 2 uses
  %i.ag = zext nneg i32 %spec.select.1 to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !182 ; 2 uses
  %i.ak = load double, ptr %i.ah, align 16
  %i.al = extractelement <4 x double> %i.m, i64 1 ; 2 uses
  %i.am = fcmp oeq double %i.al, %i.aj
  %i.an = extractelement <4 x double> %i.n, i64 0
  %i.ao = fcmp olt double %i.an, %i.ak
  %i.ap = fcmp olt double %i.al, %i.aj
  %.0.i.2 = select i1 %i.am, i1 %i.ao, i1 %i.ap
  %i.aq = zext nneg i32 %spec.select.1 to i64
  %i.ar = select i1 %.0.i.2, i64 3, i64 %i.aq     ; 4 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ar ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.at = add nuw nsw i64 %i.ar, 1
  %i.au = and i64 %i.at, 3
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.au ; 2 uses
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.aw = xor i64 %i.ar, 2
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.aw ; 2 uses
  %.sroa.11.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ay = add nuw nsw i64 %i.ar, 3
  %i.az = and i64 %i.ay, 3
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.az ; 2 uses
  %.sroa.14.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bb = load <2 x double>, ptr %i.as, align 16, !tbaa !99 ; 4 uses
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !99 ; 4 uses
  %i.bc = load <2 x double>, ptr %i.av, align 16, !tbaa !99 ; 5 uses
  %.sroa.8.16.copyload = load double, ptr %.sroa.8.16..sroa_idx, align 8, !tbaa !99 ; 2 uses
  %i.bd = load <2 x double>, ptr %i.ax, align 16, !tbaa !99 ; 3 uses
  %.sroa.11.32.copyload = load double, ptr %.sroa.11.32..sroa_idx, align 8, !tbaa !99 ; 2 uses
  %i.be = tail call double @llvm.ceil.f64(double %.sroa.8.16.copyload)
  %i.bf = fptosi double %i.be to i32              ; 3 uses
  %i.bg = tail call double @llvm.ceil.f64(double %.sroa.5.0.copyload)
  %i.bh = fptosi double %i.bg to i32              ; 4 uses
  %.not.i = icmp eq i32 %i.bf, %i.bh
  %i.bi = shufflevector <2 x double> %i.bc, <2 x double> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bj = shufflevector <2 x double> %i.bb, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bk = fsub <2 x double> %i.bi, %i.bj
  %i.bl = shufflevector <2 x double> %i.bc, <2 x double> %i.bd, <2 x i32> <i32 1, i32 3>
  %i.bm = shufflevector <2 x double> %i.bb, <2 x double> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.bn = fsub <2 x double> %i.bl, %i.bm
  %i.bo = fdiv <2 x double> %i.bk, %i.bn          ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 0
  %i.bq = select i1 %.not.i, double 0.000000e+00, double %i.bp
  %i.br = tail call double @llvm.ceil.f64(double %.sroa.11.32.copyload)
  %i.bs = fptosi double %i.br to i32              ; 4 uses
  %.not.i95 = icmp eq i32 %i.bs, %i.bf
  %i.bt = extractelement <2 x double> %i.bo, i64 1
  %i.bu = select i1 %.not.i95, double 0.000000e+00, double %i.bt
  %i.bv = load <2 x double>, ptr %i.ba, align 16, !tbaa !99 ; 3 uses
  %.sroa.14.48.copyload = load double, ptr %.sroa.14.48..sroa_idx, align 8, !tbaa !99 ; 4 uses
  %i.bw = tail call double @llvm.ceil.f64(double %.sroa.14.48.copyload)
  %i.bx = fptosi double %i.bw to i32              ; 3 uses
  %.not.i96 = icmp eq i32 %i.bx, %i.bh
  %i.by = shufflevector <2 x double> %i.bv, <2 x double> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bz = shufflevector <2 x double> %i.bb, <2 x double> %i.bv, <2 x i32> <i32 0, i32 2>
  %i.ca = fsub <2 x double> %i.by, %i.bz
  %i.cb = fsub double %.sroa.11.32.copyload, %.sroa.14.48.copyload
  %i.cc = fsub double %.sroa.14.48.copyload, %.sroa.5.0.copyload
  %i.cd = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.ce = insertelement <2 x double> %i.cd, double %i.cb, i64 1
  %i.cf = fdiv <2 x double> %i.ca, %i.ce          ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %i.ch = select i1 %.not.i96, double 0.000000e+00, double %i.cg
  %.not.i97 = icmp eq i32 %i.bs, %i.bx
  %i.ci = extractelement <2 x double> %i.cf, i64 1
  %i.cj = select i1 %.not.i97, double 0.000000e+00, double %i.ci
  %.not125 = icmp sgt i32 %i.bh, %i.bs
  br i1 %.not125, label %._crit_edge, label %.lr.ph130

.lr.ph130:                                        ; preds = %.preheader.preheader
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 552
end_hunk_0
