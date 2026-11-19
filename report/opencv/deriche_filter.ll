Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/deriche_filter?download=true
inline.NumInlined: 272
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN2cv8ximgproc16GradientDericheXERKNS_11_InputArrayERKNS_12_OutputArrayEdd:bb.a
  %.not.i.i.i59 = icmp eq ptr %i.dg, %i.df
  br i1 %.not.i.i.i59, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i60, label %.lr.ph.i.i.i57, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i60: ; preds = %.lr.ph.i.i.i57
  %.pr.i61 = load ptr, ptr %6, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i62

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i62: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i60, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.dh = phi ptr [ %.pr.i61, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i60 ], [ %i.dd, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i63 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i1.i63, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i62
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !19
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dm) #16
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64:        ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i62, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.dn = load ptr, ptr %4, align 8, !tbaa !18    ; 3 uses
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %.not4.i.i.i65 = icmp eq ptr %i.dn, %i.do
  br i1 %.not4.i.i.i65, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71, label %.lr.ph.i.i.i66

.lr.ph.i.i.i66:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64, %.lr.ph.i.i.i66
  %.05.i.i.i67 = phi ptr [ %i.dp, %.lr.ph.i.i.i66 ], [ %i.dn, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i67) #14
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i67, i64 208 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.dp, %i.do
  br i1 %.not.i.i.i68, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i69, label %.lr.ph.i.i.i66, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i69: ; preds = %.lr.ph.i.i.i66
  %.pr.i70 = load ptr, ptr %4, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i69, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64
  %i.dq = phi ptr [ %.pr.i70, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i69 ], [ %i.dn, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64 ] ; 3 uses
  %.not.i.i1.i72 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i1.i72, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit73, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !19
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #16
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit73

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit73:        ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

bb.ao:                                            ; preds = %._crit_edge
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %bb.ap

bb.ap:                                            ; preds = %bb.q, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.body, %bb.ao
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.ao ], [ %.pn42.pn.pn, %.body ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn38, %bb.t ], [ %.pn36, %bb.q ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.c
  %.pn42.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn, %bb.ap ], [ %i.v, %bb.c ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  resume { ptr, i32 } %.pn42.pn.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN2cv6detail20check_failed_MatTypeEiRKNS0_12CheckContextE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc28ParallelGradientDericheYColsD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8ximgproc28ParallelGradientDericheYColsclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !42, !range !64, !noundef !65
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN2cv12getThreadNumEv()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.8, i64 noundef 18) ; 0 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !45
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.g) ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.9, i64 noundef 4) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !46
  %i.l = add nsw i32 %i.k, -1
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef %i.l) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.10, i64 noundef 2) ; 0 uses
  %i.o = load i32, ptr %i.j, align 4, !tbaa !46
  %i.p = load i32, ptr %1, align 4, !tbaa !45
  %i.q = sub nsw i32 %i.o, %i.p
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef %i.q) ; 4 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.11, i64 noundef 7) ; 0 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !80   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !86
  %.not.i1.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 67
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !32
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.y)
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.y, i8 noundef signext 10), !inline_history !1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.ac, %bb.d ], [ %i.ag, %bb.e ]
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext %.0.i.i.i)
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !120, !nonnull !65, !align !87 ; 16 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !27
  %i.am = and i32 %i.al, 31
  switch i32 %i.am, label %bb.z [
    i32 0, label %bb.g
    i32 1, label %bb.k
    i32 2, label %bb.o
    i32 3, label %bb.s
    i32 5, label %bb.w
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !121, !nonnull !65, !align !87
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !40 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load double, ptr %i.ar, align 8, !tbaa !41 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !43
  %..i = tail call i32 @llvm.smax.i32(i32 %i.au, i32 %i.aw) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 1, i32 noundef %..i, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef 1, i32 noundef %..i, i32 noundef 6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88 ; 12 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !88 ; 12 uses
  %i.bb = load i32, ptr %i.at, align 8, !tbaa !51 ; 10 uses
  %i.bc = load i32, ptr %i.av, align 4, !tbaa !43 ; 5 uses
  %i.bd = fneg double %i.aq                       ; 4 uses
  %i.be = call double @exp(double noundef %i.bd) #14
  %i.bf = call double @cos(double noundef %i.as) #14
  %i.bg = fmul double %i.be, -2.000000e+00
  %i.bh = call double @llvm.fmuladd.f64(double %i.bg, double %i.bf, double 1.000000e+00)
  %i.bi = fmul double %i.aq, -2.000000e+00        ; 2 uses
  %i.bj = call double @exp(double noundef %i.bi) #14
  %i.bk = fadd double %i.bh, %i.bj
  %i.bl = call double @exp(double noundef %i.bd) #14
  %i.bm = call double @sin(double noundef %i.as) #14
  %i.bn = fmul double %i.bl, %i.bm
  %i.bo = fneg double %i.bk
  %i.bp = fdiv double %i.bo, %i.bn
  %i.bq = call double @exp(double noundef %i.bd) #14
  %i.br = fmul double %i.bq, %i.bp
  %i.bs = call double @sin(double noundef %i.as) #14
  %i.bt = fmul double %i.bs, %i.br                ; 3 uses
  %i.bu = call double @exp(double noundef %i.bd) #14
  %i.bv = fmul double %i.bu, -2.000000e+00
  %i.bw = call double @cos(double noundef %i.as) #14
  %i.bx = fmul double %i.bv, %i.bw                ; 15 uses
  %i.by = call double @exp(double noundef %i.bi) #14
  %i.bz = load i32, ptr %1, align 4, !tbaa !45    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !46 ; 2 uses
  %i.cc = icmp slt i32 %i.bz, %i.cb
  br i1 %i.cc, label %.lr.ph136.i, label %_ZN2cv8ximgprocL17VerticalIIRFilterIhEEvRNS_3MatES3_RKNS_5RangeEdd.exit

.lr.ph136.i:                                      ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !88 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !88
  %i.ch = sext i32 %i.bc to i64                   ; 14 uses
  %i.ci = sub nsw i32 0, %i.bc
  %i.cj = sext i32 %i.ci to i64                   ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cl = icmp sgt i32 %i.bb, 2
  %i.cm = fneg double %i.by                       ; 12 uses
  %i.cn = add nsw i32 %i.bb, -1                   ; 2 uses
  %i.co = mul nsw i32 %i.cn, %i.bc
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.cp ; 2 uses
  %i.cr = sub nsw i64 0, %i.ch                    ; 6 uses
  %i.cs = sext i32 %i.bb to i64
  %i.ct = getelementptr [8 x i8], ptr %i.ba, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 -16    ; 2 uses
  %i.cv = add i32 %i.bb, -3                       ; 3 uses
  %i.cw = icmp sgt i32 %i.bb, 0
  %i.cx = zext i32 %i.cv to i64                   ; 9 uses
  %i.cy = sext i32 %i.bz to i64
  %i.cz = sext i32 %i.co to i64
  %wide.trip.count150.i = sext i32 %i.cb to i64
  %wide.trip.count.i = zext i32 %i.bb to i64      ; 6 uses
  %invariant.gep.i = getelementptr i8, ptr %i.ce, i64 %i.cz ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 8
  %i.da = shl nuw nsw i64 %i.cx, 3
  %i.db = getelementptr i8, ptr %i.ba, i64 %i.da
  %scevgep150 = getelementptr i8, ptr %i.db, i64 8
  %i.dc = add nsw i64 %wide.trip.count.i, -2      ; 2 uses
  %i.dd = add nsw i64 %wide.trip.count.i, -3      ; 2 uses
  %ident.check.not = icmp eq i32 %i.bc, 1
  %xtraiter237 = and i64 %wide.trip.count.i, 1
  %i.de = icmp eq i64 %i.dd, 0
  %unroll_iter240 = and i64 %i.dc, -2
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  %lcmp.mod239 = trunc i32 %i.bb to i1
  %xtraiter242 = and i64 %wide.trip.count.i, 1
  %i.df = icmp eq i64 %i.dd, 0
  %unroll_iter245 = and i64 %i.dc, -2
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  %lcmp.mod244 = trunc i32 %i.bb to i1
  %ident.check148.not = icmp eq i32 %i.bc, 1
  %12 = and i64 %i.cx, 1
  %lcmp.mod248.not.not = icmp eq i64 %12, 0
  %13 = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cx ; 3 uses
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %indvars.iv.next140.i.lver.orig.prol = add nsw i64 %i.cx, -1
  %16 = icmp eq i32 %i.cv, 0
  %i.dg = and i64 %i.cx, 1
  %lcmp.mod250.not.not = icmp eq i64 %i.dg, 0
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cx ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %indvars.iv.next140.i.prol = add nsw i64 %i.cx, -1
  %i.dj = icmp eq i32 %i.cv, 0
  %xtraiter251 = and i64 %wide.trip.count.i, 1
  %i.dk = icmp eq i32 %i.bb, 1
  %unroll_iter254 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod252.not = icmp eq i64 %xtraiter251, 0
  %lcmp.mod253 = trunc i32 %i.bb to i1
  br label %bb.j

common.resume:                                    ; preds = %bb.y, %bb.u, %bb.q, %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.dl, %bb.i ], [ %i.ln, %bb.m ], [ %i.to, %bb.q ], [ %i.aad, %bb.u ], [ %i.akg, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %common.resume

bb.j:                                             ; preds = %._crit_edge133.i, %.lr.ph136.i
  %indvars.iv147.i = phi i64 [ %i.cy, %.lr.ph136.i ], [ %indvars.iv.next148.i, %._crit_edge133.i ] ; 5 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv147.i ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.ce, i64 %indvars.iv147.i ; 6 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !32
  %i.dp = uitofp i8 %i.do to double               ; 2 uses
  store double %i.dp, ptr %i.ay, align 8, !tbaa !89
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %i.ch
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.cj
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !32
  %i.dt = uitofp i8 %i.ds to double
  %i.du = fmul double %i.bx, %i.dp
  %i.dv = fsub double %i.dt, %i.du
  store double %i.dv, ptr %i.ck, align 8, !tbaa !89
  br i1 %i.cl, label %.lr.ph.i.lver.check, label %.preheader.critedge.i

.lr.ph.i.lver.check:                              ; preds = %bb.j
  br i1 %ident.check.not, label %.lr.ph.i.ph, label %.lr.ph.i.lver.orig.preheader

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  br i1 %i.de, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig.preheader, %.lr.ph.i.lver.orig
  %indvars.iv.i.lver.orig = phi i64 [ %indvars.iv.next.i.lver.orig.1, %.lr.ph.i.lver.orig ], [ 2, %.lr.ph.i.lver.orig.preheader ] ; 3 uses
  %i.dw = phi ptr [ %.0115.i.lver.orig, %.lr.ph.i.lver.orig ], [ %i.dn, %.lr.ph.i.lver.orig.preheader ]
  %niter241 = phi i64 [ %niter241.next.1, %.lr.ph.i.lver.orig ], [ 0, %.lr.ph.i.lver.orig.preheader ]
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %i.ch
  %.0115.i.lver.orig = getelementptr inbounds i8, ptr %i.dx, i64 %i.ch ; 4 uses
  %i.dy = getelementptr inbounds i8, ptr %.0115.i.lver.orig, i64 %i.cj
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !32
  %i.ea = uitofp i8 %i.dz to double
  %i.eb = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.lver.orig ; 3 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 -8
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !89 ; 2 uses
  %i.ee = fmul double %i.bx, %i.ed
  %i.ef = fsub double %i.ea, %i.ee
  %i.eg = getelementptr i8, ptr %i.eb, i64 -16
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !89
  %i.ei = call double @llvm.fmuladd.f64(double %i.cm, double %i.eh, double %i.ef)
  store double %i.ei, ptr %i.eb, align 8, !tbaa !89
  %.0115.i.lver.orig.1 = getelementptr inbounds i8, ptr %.0115.i.lver.orig, i64 %i.ch
  %i.ej = getelementptr inbounds i8, ptr %.0115.i.lver.orig.1, i64 %i.cj
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !32
  %i.el = uitofp i8 %i.ek to double
  %i.em = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.lver.orig ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 8
  %i.eo = load double, ptr %i.em, align 8, !tbaa !89
  %i.ep = fmul double %i.bx, %i.eo
  %i.eq = fsub double %i.el, %i.ep
  %i.er = call double @llvm.fmuladd.f64(double %i.cm, double %i.ed, double %i.eq)
  store double %i.er, ptr %i.en, align 8, !tbaa !89
  %indvars.iv.next.i.lver.orig.1 = add nuw nsw i64 %indvars.iv.i.lver.orig, 2 ; 2 uses
  %niter241.next.1 = add i64 %niter241, 2         ; 2 uses
  %niter241.ncmp.1 = icmp eq i64 %niter241.next.1, %unroll_iter240
  br i1 %niter241.ncmp.1, label %.lr.ph129.i.lver.check.loopexit182.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !100

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load double, ptr %scevgep, align 8 ; 2 uses
  br i1 %i.df, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.ph, %.lr.ph.i
  %store_forwarded = phi double [ %i.fm, %.lr.ph.i ], [ %load_initial, %.lr.ph.i.ph ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 2, %.lr.ph.i.ph ] ; 3 uses
  %i.es = phi ptr [ %.0115.i, %.lr.ph.i ], [ %i.dn, %.lr.ph.i.ph ]
  %niter246 = phi i64 [ %niter246.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.ph ]
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %i.ch
  %.0115.i = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ch ; 4 uses
  %i.eu = getelementptr inbounds i8, ptr %.0115.i, i64 %i.cj
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !32
  %i.ew = uitofp i8 %i.ev to double
  %i.ex = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i ; 2 uses
  %i.ey = fmul double %i.bx, %store_forwarded
  %i.ez = fsub double %i.ew, %i.ey
  %i.fa = getelementptr i8, ptr %i.ex, i64 -16
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !89
  %i.fc = call double @llvm.fmuladd.f64(double %i.cm, double %i.fb, double %i.ez) ; 2 uses
  store double %i.fc, ptr %i.ex, align 8, !tbaa !89
  %.0115.i.1 = getelementptr inbounds nuw i8, ptr %.0115.i, i64 %i.ch
  %i.fd = getelementptr inbounds i8, ptr %.0115.i.1, i64 %i.cj
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !32
  %i.ff = uitofp i8 %i.fe to double
  %i.fg = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %i.fi = fmul double %i.bx, %i.fc
  %i.fj = fsub double %i.ff, %i.fi
  %i.fk = getelementptr i8, ptr %i.fg, i64 -8
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !89
  %i.fm = call double @llvm.fmuladd.f64(double %i.cm, double %i.fl, double %i.fj) ; 3 uses
  store double %i.fm, ptr %i.fh, align 8, !tbaa !89
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter246.next.1 = add i64 %niter246, 2         ; 2 uses
  %niter246.ncmp.1 = icmp eq i64 %niter246.next.1, %unroll_iter245
  br i1 %niter246.ncmp.1, label %.lr.ph129.i.lver.check.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !100

.lr.ph129.i.lver.check.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  br i1 %lcmp.mod243.not, label %.lr.ph129.i.lver.check, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph129.i.lver.check.loopexit.unr-lcssa, %.lr.ph.i.ph
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph.i.ph ], [ %i.fm, %.lr.ph129.i.lver.check.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 2, %.lr.ph.i.ph ], [ %indvars.iv.next.i.1, %.lr.ph129.i.lver.check.loopexit.unr-lcssa ]
  %i.fn = phi ptr [ %i.dn, %.lr.ph.i.ph ], [ %.0115.i, %.lr.ph129.i.lver.check.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod244)
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 %i.ch
  %.0115.i.epil = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.ch
  %i.fp = getelementptr inbounds i8, ptr %.0115.i.epil, i64 %i.cj
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !32
  %i.fr = uitofp i8 %i.fq to double
  %i.fs = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ft = fmul double %i.bx, %store_forwarded.epil.init
  %i.fu = fsub double %i.fr, %i.ft
  %i.fv = getelementptr i8, ptr %i.fs, i64 -16
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !89
  %i.fx = call double @llvm.fmuladd.f64(double %i.cm, double %i.fw, double %i.fu)
  store double %i.fx, ptr %i.fs, align 8, !tbaa !89
  br label %.lr.ph129.i.lver.check

.lr.ph129.i.lver.check.loopexit182.unr-lcssa:     ; preds = %.lr.ph.i.lver.orig
  br i1 %lcmp.mod238.not, label %.lr.ph129.i.lver.check, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.lr.ph129.i.lver.check.loopexit182.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %indvars.iv.i.lver.orig.epil.init = phi i64 [ 2, %.lr.ph.i.lver.orig.preheader ], [ %indvars.iv.next.i.lver.orig.1, %.lr.ph129.i.lver.check.loopexit182.unr-lcssa ]
  %i.fy = phi ptr [ %i.dn, %.lr.ph.i.lver.orig.preheader ], [ %.0115.i.lver.orig, %.lr.ph129.i.lver.check.loopexit182.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod239)
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 %i.ch
  %.0115.i.lver.orig.epil = getelementptr inbounds i8, ptr %i.fz, i64 %i.ch
  %i.ga = getelementptr inbounds i8, ptr %.0115.i.lver.orig.epil, i64 %i.cj
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !32
  %i.gc = uitofp i8 %i.gb to double
  %i.gd = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.lver.orig.epil.init ; 3 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 -8
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !89
  %i.gg = fmul double %i.bx, %i.gf
  %i.gh = fsub double %i.gc, %i.gg
  %i.gi = getelementptr i8, ptr %i.gd, i64 -16
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !89
  %i.gk = call double @llvm.fmuladd.f64(double %i.cm, double %i.gj, double %i.gh)
  store double %i.gk, ptr %i.gd, align 8, !tbaa !89
  br label %.lr.ph129.i.lver.check

.lr.ph129.i.lver.check:                           ; preds = %.lr.ph.i.lver.orig.epil.preheader, %.lr.ph129.i.lver.check.loopexit182.unr-lcssa, %.lr.ph.i.epil.preheader, %.lr.ph129.i.lver.check.loopexit.unr-lcssa
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv147.i ; 6 uses
  %17 = load i8, ptr %gep.i, align 1, !tbaa !32
  %18 = uitofp i8 %17 to double                   ; 2 uses
  store double %18, ptr %i.cq, align 8, !tbaa !89
  %19 = load i8, ptr %gep.i, align 1, !tbaa !32
  %20 = uitofp i8 %19 to double
  %21 = fmul double %i.bx, %18
  %22 = fadd double %21, %20
  store double %22, ptr %i.cu, align 8, !tbaa !89
  br i1 %ident.check148.not, label %.lr.ph129.i.ph, label %.lr.ph129.i.lver.orig.preheader

.lr.ph129.i.lver.orig.preheader:                  ; preds = %.lr.ph129.i.lver.check
  br i1 %lcmp.mod248.not.not, label %.lr.ph129.i.lver.orig.prol, label %.lr.ph129.i.lver.orig.prol.loopexit

.lr.ph129.i.lver.orig.prol:                       ; preds = %.lr.ph129.i.lver.orig.preheader
  %.pn122.i.lver.orig.prol = getelementptr inbounds i8, ptr %gep.i, i64 %i.cr ; 2 uses
  %23 = load i8, ptr %.pn122.i.lver.orig.prol, align 1, !tbaa !32
  %24 = uitofp i8 %23 to double
  %25 = load double, ptr %14, align 8, !tbaa !89
  %26 = fmul double %i.bx, %25
  %27 = fsub double %24, %26
  %28 = load double, ptr %15, align 8, !tbaa !89
  %29 = call double @llvm.fmuladd.f64(double %i.cm, double %28, double %27)
  store double %29, ptr %13, align 8, !tbaa !89
  br label %.lr.ph129.i.lver.orig.prol.loopexit

.lr.ph129.i.lver.orig.prol.loopexit:              ; preds = %.lr.ph129.i.lver.orig.prol, %.lr.ph129.i.lver.orig.preheader
  %indvars.iv139.i.lver.orig.unr = phi i64 [ %i.cx, %.lr.ph129.i.lver.orig.preheader ], [ %indvars.iv.next140.i.lver.orig.prol, %.lr.ph129.i.lver.orig.prol ]
  %.pn123126.i.lver.orig.unr = phi ptr [ %gep.i, %.lr.ph129.i.lver.orig.preheader ], [ %.pn122.i.lver.orig.prol, %.lr.ph129.i.lver.orig.prol ]
  br i1 %16, label %.lr.ph132.i.preheader, label %.lr.ph129.i.lver.orig

.lr.ph129.i.lver.orig:                            ; preds = %.lr.ph129.i.lver.orig.prol.loopexit, %.lr.ph129.i.lver.orig
  %indvars.iv139.i.lver.orig = phi i64 [ %indvars.iv.next140.i.lver.orig.1, %.lr.ph129.i.lver.orig ], [ %indvars.iv139.i.lver.orig.unr, %.lr.ph129.i.lver.orig.prol.loopexit ] ; 3 uses
  %.pn123126.i.lver.orig = phi ptr [ %.pn122.i.lver.orig.1, %.lr.ph129.i.lver.orig ], [ %.pn123126.i.lver.orig.unr, %.lr.ph129.i.lver.orig.prol.loopexit ]
  %.pn122.i.lver.orig = getelementptr inbounds i8, ptr %.pn123126.i.lver.orig, i64 %i.cr ; 2 uses
  %i.gl = load i8, ptr %.pn122.i.lver.orig, align 1, !tbaa !32
  %i.gm = uitofp i8 %i.gl to double
  %30 = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv139.i.lver.orig ; 3 uses
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %32 = load double, ptr %31, align 8, !tbaa !89  ; 2 uses
  %33 = fmul double %i.bx, %32
  %34 = fsub double %i.gm, %33
  %35 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %36 = load double, ptr %35, align 8, !tbaa !89
  %37 = call double @llvm.fmuladd.f64(double %i.cm, double %36, double %34)
  store double %37, ptr %30, align 8, !tbaa !89
  %indvars.iv.next140.i.lver.orig = add nsw i64 %indvars.iv139.i.lver.orig, -1 ; 2 uses
  %.pn122.i.lver.orig.1 = getelementptr inbounds i8, ptr %.pn122.i.lver.orig, i64 %i.cr ; 2 uses
  %i.gn = load i8, ptr %.pn122.i.lver.orig.1, align 1, !tbaa !32
  %i.go = uitofp i8 %i.gn to double
  %38 = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next140.i.lver.orig ; 2 uses
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %40 = load double, ptr %39, align 8, !tbaa !89
  %i.gp = fmul double %i.bx, %40
  %41 = fsub double %i.go, %i.gp
  %42 = call double @llvm.fmuladd.f64(double %i.cm, double %32, double %41)
  store double %42, ptr %38, align 8, !tbaa !89
  %indvars.iv.next140.i.lver.orig.1 = add nsw i64 %indvars.iv139.i.lver.orig, -2
  %.not.i.lver.orig.1 = icmp eq i64 %indvars.iv.next140.i.lver.orig, 0
  br i1 %.not.i.lver.orig.1, label %.lr.ph132.i.preheader, label %.lr.ph129.i.lver.orig, !llvm.loop !101

.lr.ph129.i.ph:                                   ; preds = %.lr.ph129.i.lver.check
  %load_initial151 = load double, ptr %scevgep150, align 8 ; 2 uses
  br i1 %lcmp.mod250.not.not, label %.lr.ph129.i.prol, label %.lr.ph129.i.prol.loopexit

.lr.ph129.i.prol:                                 ; preds = %.lr.ph129.i.ph
  %.pn122.i.prol = getelementptr inbounds i8, ptr %gep.i, i64 %i.cr ; 2 uses
  %i.gq = load i8, ptr %.pn122.i.prol, align 1, !tbaa !32
  %i.gr = uitofp i8 %i.gq to double
  %i.gs = fmul double %i.bx, %load_initial151
  %i.gt = fsub double %i.gr, %i.gs
  %i.gu = load double, ptr %i.di, align 8, !tbaa !89
  %i.gv = call double @llvm.fmuladd.f64(double %i.cm, double %i.gu, double %i.gt) ; 2 uses
  store double %i.gv, ptr %i.dh, align 8, !tbaa !89
  br label %.lr.ph129.i.prol.loopexit

.lr.ph129.i.prol.loopexit:                        ; preds = %.lr.ph129.i.prol, %.lr.ph129.i.ph
  %store_forwarded152.unr = phi double [ %load_initial151, %.lr.ph129.i.ph ], [ %i.gv, %.lr.ph129.i.prol ]
  %indvars.iv139.i.unr = phi i64 [ %i.cx, %.lr.ph129.i.ph ], [ %indvars.iv.next140.i.prol, %.lr.ph129.i.prol ]
  %.pn123126.i.unr = phi ptr [ %gep.i, %.lr.ph129.i.ph ], [ %.pn122.i.prol, %.lr.ph129.i.prol ]
  br i1 %i.dj, label %.lr.ph132.i.preheader, label %.lr.ph129.i

.preheader.critedge.i:                            ; preds = %bb.j
  %gep.c.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv147.i ; 2 uses
  %i.gw = load i8, ptr %gep.c.i, align 1, !tbaa !32
  %i.gx = uitofp i8 %i.gw to double               ; 2 uses
  store double %i.gx, ptr %i.cq, align 8, !tbaa !89
  %i.gy = load i8, ptr %gep.c.i, align 1, !tbaa !32
  %i.gz = uitofp i8 %i.gy to double
  %i.ha = fmul double %i.bx, %i.gx
  %i.hb = fadd double %i.ha, %i.gz
  store double %i.hb, ptr %i.cu, align 8, !tbaa !89
  br i1 %i.cw, label %.lr.ph132.i.preheader, label %._crit_edge133.i

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.prol.loopexit, %.lr.ph129.i
  %store_forwarded152 = phi double [ %i.hr, %.lr.ph129.i ], [ %store_forwarded152.unr, %.lr.ph129.i.prol.loopexit ]
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i.1, %.lr.ph129.i ], [ %indvars.iv139.i.unr, %.lr.ph129.i.prol.loopexit ] ; 3 uses
  %.pn123126.i = phi ptr [ %.pn122.i.1, %.lr.ph129.i ], [ %.pn123126.i.unr, %.lr.ph129.i.prol.loopexit ]
  %.pn122.i = getelementptr inbounds i8, ptr %.pn123126.i, i64 %i.cr ; 2 uses
  %i.hc = load i8, ptr %.pn122.i, align 1, !tbaa !32
  %i.hd = uitofp i8 %i.hc to double
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv139.i ; 2 uses
  %i.hf = fmul double %i.bx, %store_forwarded152
  %i.hg = fsub double %i.hd, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !89
  %i.hj = call double @llvm.fmuladd.f64(double %i.cm, double %i.hi, double %i.hg) ; 2 uses
  store double %i.hj, ptr %i.he, align 8, !tbaa !89
  %indvars.iv.next140.i = add nsw i64 %indvars.iv139.i, -1 ; 2 uses
  %.pn122.i.1 = getelementptr inbounds i8, ptr %.pn122.i, i64 %i.cr ; 2 uses
  %i.hk = load i8, ptr %.pn122.i.1, align 1, !tbaa !32
  %i.hl = uitofp i8 %i.hk to double
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next140.i ; 2 uses
  %i.hn = fmul double %i.bx, %i.hj
  %i.ho = fsub double %i.hl, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !89
  %i.hr = call double @llvm.fmuladd.f64(double %i.cm, double %i.hq, double %i.ho) ; 2 uses
  store double %i.hr, ptr %i.hm, align 8, !tbaa !89
  %indvars.iv.next140.i.1 = add nsw i64 %indvars.iv139.i, -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next140.i, 0
  br i1 %.not.i.1, label %.lr.ph132.i.preheader, label %.lr.ph129.i, !llvm.loop !101

.lr.ph132.i.preheader:                            ; preds = %.lr.ph129.i.lver.orig.prol.loopexit, %.lr.ph129.i.lver.orig, %.lr.ph129.i.prol.loopexit, %.lr.ph129.i, %.preheader.critedge.i
  br i1 %i.dk, label %.lr.ph132.i.epil.preheader, label %.lr.ph132.i

.lr.ph132.i:                                      ; preds = %.lr.ph132.i.preheader, %.lr.ph132.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i.1, %.lr.ph132.i ], [ 0, %.lr.ph132.i.preheader ] ; 4 uses
  %.0118130.i = phi ptr [ %i.ih, %.lr.ph132.i ], [ %i.dm, %.lr.ph132.i.preheader ] ; 2 uses
  %niter255 = phi i64 [ %niter255.next.1, %.lr.ph132.i ], [ 0, %.lr.ph132.i.preheader ]
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv142.i
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !89
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv142.i
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !89
  %i.hw = fsub double %i.ht, %i.hv
  %i.hx = fmul double %i.bt, %i.hw
  %i.hy = fptrunc double %i.hx to float
  store float %i.hy, ptr %.0118130.i, align 4, !tbaa !91
  %indvars.iv.next143.i = or disjoint i64 %indvars.iv142.i, 1 ; 2 uses
  %i.hz = getelementptr inbounds [4 x i8], ptr %.0118130.i, i64 %i.ch ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next143.i
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !89
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next143.i
  %i.id = load double, ptr %i.ic, align 8, !tbaa !89
  %i.ie = fsub double %i.ib, %i.id
  %i.if = fmul double %i.bt, %i.ie
  %i.ig = fptrunc double %i.if to float
  store float %i.ig, ptr %i.hz, align 4, !tbaa !91
  %indvars.iv.next143.i.1 = add nuw nsw i64 %indvars.iv142.i, 2 ; 2 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.ch ; 2 uses
  %niter255.next.1 = add i64 %niter255, 2         ; 2 uses
  %niter255.ncmp.1 = icmp eq i64 %niter255.next.1, %unroll_iter254
  br i1 %niter255.ncmp.1, label %._crit_edge133.i.loopexit.unr-lcssa, label %.lr.ph132.i, !llvm.loop !102

._crit_edge133.i.loopexit.unr-lcssa:              ; preds = %.lr.ph132.i
  br i1 %lcmp.mod252.not, label %._crit_edge133.i, label %.lr.ph132.i.epil.preheader

.lr.ph132.i.epil.preheader:                       ; preds = %._crit_edge133.i.loopexit.unr-lcssa, %.lr.ph132.i.preheader
  %indvars.iv142.i.epil.init = phi i64 [ 0, %.lr.ph132.i.preheader ], [ %indvars.iv.next143.i.1, %._crit_edge133.i.loopexit.unr-lcssa ] ; 2 uses
  %.0118130.i.epil.init = phi ptr [ %i.dm, %.lr.ph132.i.preheader ], [ %i.ih, %._crit_edge133.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod253)
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv142.i.epil.init
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !89
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv142.i.epil.init
  %i.il = load double, ptr %i.ik, align 8, !tbaa !89
  %i.im = fsub double %i.ij, %i.il
  %i.in = fmul double %i.bt, %i.im
  %i.io = fptrunc double %i.in to float
  store float %i.io, ptr %.0118130.i.epil.init, align 4, !tbaa !91
  br label %._crit_edge133.i

._crit_edge133.i:                                 ; preds = %.lr.ph132.i.epil.preheader, %._crit_edge133.i.loopexit.unr-lcssa, %.preheader.critedge.i
  %indvars.iv.next148.i = add nsw i64 %indvars.iv147.i, 1 ; 2 uses
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next148.i, %wide.trip.count150.i
  br i1 %exitcond151.not.i, label %_ZN2cv8ximgprocL17VerticalIIRFilterIhEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %bb.j, !llvm.loop !103

_ZN2cv8ximgprocL17VerticalIIRFilterIhEEvRNS_3MatES3_RKNS_5RangeEdd.exit: ; preds = %._crit_edge133.i, %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.z

bb.k:                                             ; preds = %bb.f
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !121, !nonnull !65, !align !87
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.is = load double, ptr %i.ir, align 8, !tbaa !40 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.iu = load double, ptr %i.it, align 8, !tbaa !41 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !51
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !43
  %..i10 = tail call i32 @llvm.smax.i32(i32 %i.iw, i32 %i.iy) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef 1, i32 noundef %..i10, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef 1, i32 noundef %..i10, i32 noundef 6)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.iz = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !88 ; 12 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !88 ; 12 uses
  %i.jd = load i32, ptr %i.iv, align 8, !tbaa !51 ; 10 uses
  %i.je = load i32, ptr %i.ix, align 4, !tbaa !43 ; 5 uses
  %i.jf = fneg double %i.is                       ; 4 uses
  %i.jg = call double @exp(double noundef %i.jf) #14
  %i.jh = call double @cos(double noundef %i.iu) #14
  %i.ji = fmul double %i.jg, -2.000000e+00
  %i.jj = call double @llvm.fmuladd.f64(double %i.ji, double %i.jh, double 1.000000e+00)
  %i.jk = fmul double %i.is, -2.000000e+00        ; 2 uses
  %i.jl = call double @exp(double noundef %i.jk) #14
  %i.jm = fadd double %i.jj, %i.jl
  %i.jn = call double @exp(double noundef %i.jf) #14
  %i.jo = call double @sin(double noundef %i.iu) #14
  %i.jp = fmul double %i.jn, %i.jo
  %i.jq = fneg double %i.jm
  %i.jr = fdiv double %i.jq, %i.jp
  %i.js = call double @exp(double noundef %i.jf) #14
  %i.jt = fmul double %i.js, %i.jr
  %i.ju = call double @sin(double noundef %i.iu) #14
  %i.jv = fmul double %i.ju, %i.jt                ; 3 uses
  %i.jw = call double @exp(double noundef %i.jf) #14
  %i.jx = fmul double %i.jw, -2.000000e+00
  %i.jy = call double @cos(double noundef %i.iu) #14
  %i.jz = fmul double %i.jx, %i.jy                ; 15 uses
  %i.ka = call double @exp(double noundef %i.jk) #14
  %i.kb = load i32, ptr %1, align 4, !tbaa !45    ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !46 ; 2 uses
  %i.ke = icmp slt i32 %i.kb, %i.kd
  br i1 %i.ke, label %.lr.ph136.i11, label %_ZN2cv8ximgprocL17VerticalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit

.lr.ph136.i11:                                    ; preds = %bb.l
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !88 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !88
  %i.kj = sext i32 %i.je to i64                   ; 14 uses
  %i.kk = sub nsw i32 0, %i.je
  %i.kl = sext i32 %i.kk to i64                   ; 7 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.kn = icmp sgt i32 %i.jd, 2
  %i.ko = fneg double %i.ka                       ; 12 uses
  %i.kp = add nsw i32 %i.jd, -1                   ; 2 uses
  %i.kq = mul nsw i32 %i.kp, %i.je
  %i.kr = sext i32 %i.kp to i64
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.kr ; 2 uses
  %i.kt = sub nsw i64 0, %i.kj                    ; 6 uses
  %i.ku = sext i32 %i.jd to i64
  %i.kv = getelementptr [8 x i8], ptr %i.jc, i64 %i.ku
  %i.kw = getelementptr i8, ptr %i.kv, i64 -16    ; 2 uses
  %i.kx = add i32 %i.jd, -3                       ; 3 uses
  %i.ky = icmp sgt i32 %i.jd, 0
  %i.kz = zext i32 %i.kx to i64                   ; 9 uses
  %i.la = sext i32 %i.kb to i64
  %i.lb = sext i32 %i.kq to i64
  %wide.trip.count150.i12 = sext i32 %i.kd to i64
  %wide.trip.count.i13 = zext i32 %i.jd to i64    ; 6 uses
  %invariant.gep.i14 = getelementptr i8, ptr %i.kg, i64 %i.lb ; 2 uses
  %scevgep155 = getelementptr i8, ptr %i.ja, i64 8
  %i.lc = shl nuw nsw i64 %i.kz, 3
  %i.ld = getelementptr i8, ptr %i.jc, i64 %i.lc
  %scevgep160 = getelementptr i8, ptr %i.ld, i64 8
  %i.le = add nsw i64 %wide.trip.count.i13, -2    ; 2 uses
  %i.lf = add nsw i64 %wide.trip.count.i13, -3    ; 2 uses
  %ident.check153.not = icmp eq i32 %i.je, 1
  %xtraiter218 = and i64 %wide.trip.count.i13, 1
  %i.lg = icmp eq i64 %i.lf, 0
  %unroll_iter221 = and i64 %i.le, -2
  %lcmp.mod219.not = icmp eq i64 %xtraiter218, 0
  %lcmp.mod220 = trunc i32 %i.jd to i1
  %xtraiter223 = and i64 %wide.trip.count.i13, 1
  %i.lh = icmp eq i64 %i.lf, 0
  %unroll_iter226 = and i64 %i.le, -2
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  %lcmp.mod225 = trunc i32 %i.jd to i1
  %ident.check158.not = icmp eq i32 %i.je, 1
  %43 = and i64 %i.kz, 1
  %lcmp.mod229.not.not = icmp eq i64 %43, 0
  %44 = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.kz ; 3 uses
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 16
  %indvars.iv.next140.i40.lver.orig.prol = add nsw i64 %i.kz, -1
  %47 = icmp eq i32 %i.kx, 0
  %i.li = and i64 %i.kz, 1
  %lcmp.mod231.not.not = icmp eq i64 %i.li, 0
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.kz ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %indvars.iv.next140.i40.prol = add nsw i64 %i.kz, -1
  %i.ll = icmp eq i32 %i.kx, 0
  %xtraiter232 = and i64 %wide.trip.count.i13, 1
  %i.lm = icmp eq i32 %i.jd, 1
  %unroll_iter235 = and i64 %wide.trip.count.i13, 4294967294
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  %lcmp.mod234 = trunc i32 %i.jd to i1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %common.resume

bb.n:                                             ; preds = %._crit_edge133.i19, %.lr.ph136.i11
  %indvars.iv147.i16 = phi i64 [ %i.la, %.lr.ph136.i11 ], [ %indvars.iv.next148.i20, %._crit_edge133.i19 ] ; 5 uses
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %indvars.iv147.i16 ; 2 uses
  %i.lp = getelementptr inbounds i8, ptr %i.kg, i64 %indvars.iv147.i16 ; 6 uses
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !32
  %i.lr = sitofp i8 %i.lq to double               ; 2 uses
  store double %i.lr, ptr %i.ja, align 8, !tbaa !89
  %i.ls = getelementptr inbounds i8, ptr %i.lp, i64 %i.kj
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 %i.kl
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !32
  %i.lv = sitofp i8 %i.lu to double
  %i.lw = fmul double %i.jz, %i.lr
  %i.lx = fsub double %i.lv, %i.lw
  store double %i.lx, ptr %i.km, align 8, !tbaa !89
  br i1 %i.kn, label %.lr.ph.i28.lver.check, label %.preheader.critedge.i17

.lr.ph.i28.lver.check:                            ; preds = %bb.n
  br i1 %ident.check153.not, label %.lr.ph.i28.ph, label %.lr.ph.i28.lver.orig.preheader

.lr.ph.i28.lver.orig.preheader:                   ; preds = %.lr.ph.i28.lver.check
  br i1 %i.lg, label %.lr.ph.i28.lver.orig.epil.preheader, label %.lr.ph.i28.lver.orig

.lr.ph.i28.lver.orig:                             ; preds = %.lr.ph.i28.lver.orig.preheader, %.lr.ph.i28.lver.orig
  %indvars.iv.i29.lver.orig = phi i64 [ %indvars.iv.next.i32.lver.orig.1, %.lr.ph.i28.lver.orig ], [ 2, %.lr.ph.i28.lver.orig.preheader ] ; 3 uses
  %i.ly = phi ptr [ %.0115.i31.lver.orig, %.lr.ph.i28.lver.orig ], [ %i.lp, %.lr.ph.i28.lver.orig.preheader ]
  %niter222 = phi i64 [ %niter222.next.1, %.lr.ph.i28.lver.orig ], [ 0, %.lr.ph.i28.lver.orig.preheader ]
  %i.lz = getelementptr inbounds i8, ptr %i.ly, i64 %i.kj
  %.0115.i31.lver.orig = getelementptr inbounds i8, ptr %i.lz, i64 %i.kj ; 4 uses
  %i.ma = getelementptr inbounds i8, ptr %.0115.i31.lver.orig, i64 %i.kl
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !32
  %i.mc = sitofp i8 %i.mb to double
  %i.md = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv.i29.lver.orig ; 3 uses
  %i.me = getelementptr i8, ptr %i.md, i64 -8
  %i.mf = load double, ptr %i.me, align 8, !tbaa !89 ; 2 uses
  %i.mg = fmul double %i.jz, %i.mf
  %i.mh = fsub double %i.mc, %i.mg
  %i.mi = getelementptr i8, ptr %i.md, i64 -16
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !89
  %i.mk = call double @llvm.fmuladd.f64(double %i.ko, double %i.mj, double %i.mh)
  store double %i.mk, ptr %i.md, align 8, !tbaa !89
  %.0115.i31.lver.orig.1 = getelementptr inbounds i8, ptr %.0115.i31.lver.orig, i64 %i.kj
  %i.ml = getelementptr inbounds i8, ptr %.0115.i31.lver.orig.1, i64 %i.kl
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !32
  %i.mn = sitofp i8 %i.mm to double
  %i.mo = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv.i29.lver.orig ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mo, i64 8
  %i.mq = load double, ptr %i.mo, align 8, !tbaa !89
  %i.mr = fmul double %i.jz, %i.mq
  %i.ms = fsub double %i.mn, %i.mr
  %i.mt = call double @llvm.fmuladd.f64(double %i.ko, double %i.mf, double %i.ms)
  store double %i.mt, ptr %i.mp, align 8, !tbaa !89
  %indvars.iv.next.i32.lver.orig.1 = add nuw nsw i64 %indvars.iv.i29.lver.orig, 2 ; 2 uses
  %niter222.next.1 = add i64 %niter222, 2         ; 2 uses
  %niter222.ncmp.1 = icmp eq i64 %niter222.next.1, %unroll_iter221
  br i1 %niter222.ncmp.1, label %.lr.ph129.i36.lver.check.loopexit184.unr-lcssa, label %.lr.ph.i28.lver.orig, !llvm.loop !104

.lr.ph.i28.ph:                                    ; preds = %.lr.ph.i28.lver.check
  %load_initial156 = load double, ptr %scevgep155, align 8 ; 2 uses
  br i1 %i.lh, label %.lr.ph.i28.epil.preheader, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.ph, %.lr.ph.i28
  %store_forwarded157 = phi double [ %i.no, %.lr.ph.i28 ], [ %load_initial156, %.lr.ph.i28.ph ]
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i32.1, %.lr.ph.i28 ], [ 2, %.lr.ph.i28.ph ] ; 3 uses
  %i.mu = phi ptr [ %.0115.i31, %.lr.ph.i28 ], [ %i.lp, %.lr.ph.i28.ph ]
  %niter227 = phi i64 [ %niter227.next.1, %.lr.ph.i28 ], [ 0, %.lr.ph.i28.ph ]
  %i.mv = getelementptr inbounds i8, ptr %i.mu, i64 %i.kj
  %.0115.i31 = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.kj ; 4 uses
  %i.mw = getelementptr inbounds i8, ptr %.0115.i31, i64 %i.kl
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !32
  %i.my = sitofp i8 %i.mx to double
  %i.mz = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv.i29 ; 2 uses
  %i.na = fmul double %i.jz, %store_forwarded157
  %i.nb = fsub double %i.my, %i.na
  %i.nc = getelementptr i8, ptr %i.mz, i64 -16
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !89
  %i.ne = call double @llvm.fmuladd.f64(double %i.ko, double %i.nd, double %i.nb) ; 2 uses
  store double %i.ne, ptr %i.mz, align 8, !tbaa !89
  %.0115.i31.1 = getelementptr inbounds nuw i8, ptr %.0115.i31, i64 %i.kj
  %i.nf = getelementptr inbounds i8, ptr %.0115.i31.1, i64 %i.kl
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !32
  %i.nh = sitofp i8 %i.ng to double
  %i.ni = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv.i29 ; 2 uses
  %i.nj = getelementptr i8, ptr %i.ni, i64 8
  %i.nk = fmul double %i.jz, %i.ne
  %i.nl = fsub double %i.nh, %i.nk
  %i.nm = getelementptr i8, ptr %i.ni, i64 -8
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !89
  %i.no = call double @llvm.fmuladd.f64(double %i.ko, double %i.nn, double %i.nl) ; 3 uses
  store double %i.no, ptr %i.nj, align 8, !tbaa !89
  %indvars.iv.next.i32.1 = add nuw nsw i64 %indvars.iv.i29, 2 ; 2 uses
  %niter227.next.1 = add i64 %niter227, 2         ; 2 uses
  %niter227.ncmp.1 = icmp eq i64 %niter227.next.1, %unroll_iter226
  br i1 %niter227.ncmp.1, label %.lr.ph129.i36.lver.check.loopexit.unr-lcssa, label %.lr.ph.i28, !llvm.loop !104

.lr.ph129.i36.lver.check.loopexit.unr-lcssa:      ; preds = %.lr.ph.i28
  br i1 %lcmp.mod224.not, label %.lr.ph129.i36.lver.check, label %.lr.ph.i28.epil.preheader

.lr.ph.i28.epil.preheader:                        ; preds = %.lr.ph129.i36.lver.check.loopexit.unr-lcssa, %.lr.ph.i28.ph
  %store_forwarded157.epil.init = phi double [ %load_initial156, %.lr.ph.i28.ph ], [ %i.no, %.lr.ph129.i36.lver.check.loopexit.unr-lcssa ]
  %indvars.iv.i29.epil.init = phi i64 [ 2, %.lr.ph.i28.ph ], [ %indvars.iv.next.i32.1, %.lr.ph129.i36.lver.check.loopexit.unr-lcssa ]
  %i.np = phi ptr [ %i.lp, %.lr.ph.i28.ph ], [ %.0115.i31, %.lr.ph129.i36.lver.check.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod225)
  %i.nq = getelementptr inbounds i8, ptr %i.np, i64 %i.kj
  %.0115.i31.epil = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.kj
  %i.nr = getelementptr inbounds i8, ptr %.0115.i31.epil, i64 %i.kl
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !32
  %i.nt = sitofp i8 %i.ns to double
  %i.nu = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv.i29.epil.init ; 2 uses
  %i.nv = fmul double %i.jz, %store_forwarded157.epil.init
  %i.nw = fsub double %i.nt, %i.nv
  %i.nx = getelementptr i8, ptr %i.nu, i64 -16
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !89
  %i.nz = call double @llvm.fmuladd.f64(double %i.ko, double %i.ny, double %i.nw)
  store double %i.nz, ptr %i.nu, align 8, !tbaa !89
  br label %.lr.ph129.i36.lver.check

.lr.ph129.i36.lver.check.loopexit184.unr-lcssa:   ; preds = %.lr.ph.i28.lver.orig
  br i1 %lcmp.mod219.not, label %.lr.ph129.i36.lver.check, label %.lr.ph.i28.lver.orig.epil.preheader

.lr.ph.i28.lver.orig.epil.preheader:              ; preds = %.lr.ph129.i36.lver.check.loopexit184.unr-lcssa, %.lr.ph.i28.lver.orig.preheader
  %indvars.iv.i29.lver.orig.epil.init = phi i64 [ 2, %.lr.ph.i28.lver.orig.preheader ], [ %indvars.iv.next.i32.lver.orig.1, %.lr.ph129.i36.lver.check.loopexit184.unr-lcssa ]
  %i.oa = phi ptr [ %i.lp, %.lr.ph.i28.lver.orig.preheader ], [ %.0115.i31.lver.orig, %.lr.ph129.i36.lver.check.loopexit184.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod220)
  %i.ob = getelementptr inbounds i8, ptr %i.oa, i64 %i.kj
  %.0115.i31.lver.orig.epil = getelementptr inbounds i8, ptr %i.ob, i64 %i.kj
  %i.oc = getelementptr inbounds i8, ptr %.0115.i31.lver.orig.epil, i64 %i.kl
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !32
  %i.oe = sitofp i8 %i.od to double
  %i.of = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv.i29.lver.orig.epil.init ; 3 uses
  %i.og = getelementptr i8, ptr %i.of, i64 -8
  %i.oh = load double, ptr %i.og, align 8, !tbaa !89
  %i.oi = fmul double %i.jz, %i.oh
  %i.oj = fsub double %i.oe, %i.oi
  %i.ok = getelementptr i8, ptr %i.of, i64 -16
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !89
  %i.om = call double @llvm.fmuladd.f64(double %i.ko, double %i.ol, double %i.oj)
  store double %i.om, ptr %i.of, align 8, !tbaa !89
  br label %.lr.ph129.i36.lver.check

.lr.ph129.i36.lver.check:                         ; preds = %.lr.ph.i28.lver.orig.epil.preheader, %.lr.ph129.i36.lver.check.loopexit184.unr-lcssa, %.lr.ph.i28.epil.preheader, %.lr.ph129.i36.lver.check.loopexit.unr-lcssa
  %gep.i35 = getelementptr i8, ptr %invariant.gep.i14, i64 %indvars.iv147.i16 ; 6 uses
  %48 = load i8, ptr %gep.i35, align 1, !tbaa !32
  %49 = sitofp i8 %48 to double                   ; 2 uses
  store double %49, ptr %i.ks, align 8, !tbaa !89
  %50 = load i8, ptr %gep.i35, align 1, !tbaa !32
  %51 = sitofp i8 %50 to double
  %52 = fmul double %i.jz, %49
  %53 = fadd double %52, %51
  store double %53, ptr %i.kw, align 8, !tbaa !89
  br i1 %ident.check158.not, label %.lr.ph129.i36.ph, label %.lr.ph129.i36.lver.orig.preheader

.lr.ph129.i36.lver.orig.preheader:                ; preds = %.lr.ph129.i36.lver.check
  br i1 %lcmp.mod229.not.not, label %.lr.ph129.i36.lver.orig.prol, label %.lr.ph129.i36.lver.orig.prol.loopexit

.lr.ph129.i36.lver.orig.prol:                     ; preds = %.lr.ph129.i36.lver.orig.preheader
  %.pn122.i39.lver.orig.prol = getelementptr inbounds i8, ptr %gep.i35, i64 %i.kt ; 2 uses
  %54 = load i8, ptr %.pn122.i39.lver.orig.prol, align 1, !tbaa !32
  %55 = sitofp i8 %54 to double
  %56 = load double, ptr %45, align 8, !tbaa !89
  %57 = fmul double %i.jz, %56
  %58 = fsub double %55, %57
  %59 = load double, ptr %46, align 8, !tbaa !89
  %60 = call double @llvm.fmuladd.f64(double %i.ko, double %59, double %58)
  store double %60, ptr %44, align 8, !tbaa !89
  br label %.lr.ph129.i36.lver.orig.prol.loopexit

.lr.ph129.i36.lver.orig.prol.loopexit:            ; preds = %.lr.ph129.i36.lver.orig.prol, %.lr.ph129.i36.lver.orig.preheader
  %indvars.iv139.i37.lver.orig.unr = phi i64 [ %i.kz, %.lr.ph129.i36.lver.orig.preheader ], [ %indvars.iv.next140.i40.lver.orig.prol, %.lr.ph129.i36.lver.orig.prol ]
  %.pn123126.i38.lver.orig.unr = phi ptr [ %gep.i35, %.lr.ph129.i36.lver.orig.preheader ], [ %.pn122.i39.lver.orig.prol, %.lr.ph129.i36.lver.orig.prol ]
  br i1 %47, label %.lr.ph132.i23.preheader, label %.lr.ph129.i36.lver.orig

.lr.ph129.i36.lver.orig:                          ; preds = %.lr.ph129.i36.lver.orig.prol.loopexit, %.lr.ph129.i36.lver.orig
  %indvars.iv139.i37.lver.orig = phi i64 [ %indvars.iv.next140.i40.lver.orig.1, %.lr.ph129.i36.lver.orig ], [ %indvars.iv139.i37.lver.orig.unr, %.lr.ph129.i36.lver.orig.prol.loopexit ] ; 3 uses
  %.pn123126.i38.lver.orig = phi ptr [ %.pn122.i39.lver.orig.1, %.lr.ph129.i36.lver.orig ], [ %.pn123126.i38.lver.orig.unr, %.lr.ph129.i36.lver.orig.prol.loopexit ]
  %.pn122.i39.lver.orig = getelementptr inbounds i8, ptr %.pn123126.i38.lver.orig, i64 %i.kt ; 2 uses
  %i.on = load i8, ptr %.pn122.i39.lver.orig, align 1, !tbaa !32
  %i.oo = sitofp i8 %i.on to double
  %61 = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv139.i37.lver.orig ; 3 uses
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %63 = load double, ptr %62, align 8, !tbaa !89  ; 2 uses
  %64 = fmul double %i.jz, %63
  %65 = fsub double %i.oo, %64
  %66 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %67 = load double, ptr %66, align 8, !tbaa !89
  %68 = call double @llvm.fmuladd.f64(double %i.ko, double %67, double %65)
  store double %68, ptr %61, align 8, !tbaa !89
  %indvars.iv.next140.i40.lver.orig = add nsw i64 %indvars.iv139.i37.lver.orig, -1 ; 2 uses
  %.pn122.i39.lver.orig.1 = getelementptr inbounds i8, ptr %.pn122.i39.lver.orig, i64 %i.kt ; 2 uses
  %i.op = load i8, ptr %.pn122.i39.lver.orig.1, align 1, !tbaa !32
  %i.oq = sitofp i8 %i.op to double
  %69 = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.next140.i40.lver.orig ; 2 uses
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %71 = load double, ptr %70, align 8, !tbaa !89
  %i.or = fmul double %i.jz, %71
  %72 = fsub double %i.oq, %i.or
  %73 = call double @llvm.fmuladd.f64(double %i.ko, double %63, double %72)
  store double %73, ptr %69, align 8, !tbaa !89
  %indvars.iv.next140.i40.lver.orig.1 = add nsw i64 %indvars.iv139.i37.lver.orig, -2
  %.not.i41.lver.orig.1 = icmp eq i64 %indvars.iv.next140.i40.lver.orig, 0
  br i1 %.not.i41.lver.orig.1, label %.lr.ph132.i23.preheader, label %.lr.ph129.i36.lver.orig, !llvm.loop !105

.lr.ph129.i36.ph:                                 ; preds = %.lr.ph129.i36.lver.check
  %load_initial161 = load double, ptr %scevgep160, align 8 ; 2 uses
  br i1 %lcmp.mod231.not.not, label %.lr.ph129.i36.prol, label %.lr.ph129.i36.prol.loopexit

.lr.ph129.i36.prol:                               ; preds = %.lr.ph129.i36.ph
  %.pn122.i39.prol = getelementptr inbounds i8, ptr %gep.i35, i64 %i.kt ; 2 uses
  %i.os = load i8, ptr %.pn122.i39.prol, align 1, !tbaa !32
  %i.ot = sitofp i8 %i.os to double
  %i.ou = fmul double %i.jz, %load_initial161
  %i.ov = fsub double %i.ot, %i.ou
  %i.ow = load double, ptr %i.lk, align 8, !tbaa !89
  %i.ox = call double @llvm.fmuladd.f64(double %i.ko, double %i.ow, double %i.ov) ; 2 uses
  store double %i.ox, ptr %i.lj, align 8, !tbaa !89
  br label %.lr.ph129.i36.prol.loopexit

.lr.ph129.i36.prol.loopexit:                      ; preds = %.lr.ph129.i36.prol, %.lr.ph129.i36.ph
  %store_forwarded162.unr = phi double [ %load_initial161, %.lr.ph129.i36.ph ], [ %i.ox, %.lr.ph129.i36.prol ]
  %indvars.iv139.i37.unr = phi i64 [ %i.kz, %.lr.ph129.i36.ph ], [ %indvars.iv.next140.i40.prol, %.lr.ph129.i36.prol ]
  %.pn123126.i38.unr = phi ptr [ %gep.i35, %.lr.ph129.i36.ph ], [ %.pn122.i39.prol, %.lr.ph129.i36.prol ]
  br i1 %i.ll, label %.lr.ph132.i23.preheader, label %.lr.ph129.i36

.preheader.critedge.i17:                          ; preds = %bb.n
  %gep.c.i18 = getelementptr i8, ptr %invariant.gep.i14, i64 %indvars.iv147.i16 ; 2 uses
  %i.oy = load i8, ptr %gep.c.i18, align 1, !tbaa !32
  %i.oz = sitofp i8 %i.oy to double               ; 2 uses
  store double %i.oz, ptr %i.ks, align 8, !tbaa !89
  %i.pa = load i8, ptr %gep.c.i18, align 1, !tbaa !32
  %i.pb = sitofp i8 %i.pa to double
  %i.pc = fmul double %i.jz, %i.oz
  %i.pd = fadd double %i.pc, %i.pb
  store double %i.pd, ptr %i.kw, align 8, !tbaa !89
  br i1 %i.ky, label %.lr.ph132.i23.preheader, label %._crit_edge133.i19

.lr.ph129.i36:                                    ; preds = %.lr.ph129.i36.prol.loopexit, %.lr.ph129.i36
  %store_forwarded162 = phi double [ %i.pt, %.lr.ph129.i36 ], [ %store_forwarded162.unr, %.lr.ph129.i36.prol.loopexit ]
  %indvars.iv139.i37 = phi i64 [ %indvars.iv.next140.i40.1, %.lr.ph129.i36 ], [ %indvars.iv139.i37.unr, %.lr.ph129.i36.prol.loopexit ] ; 3 uses
  %.pn123126.i38 = phi ptr [ %.pn122.i39.1, %.lr.ph129.i36 ], [ %.pn123126.i38.unr, %.lr.ph129.i36.prol.loopexit ]
  %.pn122.i39 = getelementptr inbounds i8, ptr %.pn123126.i38, i64 %i.kt ; 2 uses
  %i.pe = load i8, ptr %.pn122.i39, align 1, !tbaa !32
  %i.pf = sitofp i8 %i.pe to double
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv139.i37 ; 2 uses
  %i.ph = fmul double %i.jz, %store_forwarded162
  %i.pi = fsub double %i.pf, %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !89
  %i.pl = call double @llvm.fmuladd.f64(double %i.ko, double %i.pk, double %i.pi) ; 2 uses
  store double %i.pl, ptr %i.pg, align 8, !tbaa !89
  %indvars.iv.next140.i40 = add nsw i64 %indvars.iv139.i37, -1 ; 2 uses
  %.pn122.i39.1 = getelementptr inbounds i8, ptr %.pn122.i39, i64 %i.kt ; 2 uses
  %i.pm = load i8, ptr %.pn122.i39.1, align 1, !tbaa !32
  %i.pn = sitofp i8 %i.pm to double
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.next140.i40 ; 2 uses
  %i.pp = fmul double %i.jz, %i.pl
  %i.pq = fsub double %i.pn, %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !89
  %i.pt = call double @llvm.fmuladd.f64(double %i.ko, double %i.ps, double %i.pq) ; 2 uses
  store double %i.pt, ptr %i.po, align 8, !tbaa !89
  %indvars.iv.next140.i40.1 = add nsw i64 %indvars.iv139.i37, -2
  %.not.i41.1 = icmp eq i64 %indvars.iv.next140.i40, 0
  br i1 %.not.i41.1, label %.lr.ph132.i23.preheader, label %.lr.ph129.i36, !llvm.loop !105

.lr.ph132.i23.preheader:                          ; preds = %.lr.ph129.i36.lver.orig.prol.loopexit, %.lr.ph129.i36.lver.orig, %.lr.ph129.i36.prol.loopexit, %.lr.ph129.i36, %.preheader.critedge.i17
  br i1 %i.lm, label %.lr.ph132.i23.epil.preheader, label %.lr.ph132.i23

.lr.ph132.i23:                                    ; preds = %.lr.ph132.i23.preheader, %.lr.ph132.i23
  %indvars.iv142.i24 = phi i64 [ %indvars.iv.next143.i26.1, %.lr.ph132.i23 ], [ 0, %.lr.ph132.i23.preheader ] ; 4 uses
  %.0118130.i25 = phi ptr [ %i.qj, %.lr.ph132.i23 ], [ %i.lo, %.lr.ph132.i23.preheader ] ; 2 uses
  %niter236 = phi i64 [ %niter236.next.1, %.lr.ph132.i23 ], [ 0, %.lr.ph132.i23.preheader ]
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv142.i24
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !89
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv142.i24
  %i.px = load double, ptr %i.pw, align 8, !tbaa !89
  %i.py = fsub double %i.pv, %i.px
  %i.pz = fmul double %i.jv, %i.py
  %i.qa = fptrunc double %i.pz to float
  store float %i.qa, ptr %.0118130.i25, align 4, !tbaa !91
  %indvars.iv.next143.i26 = or disjoint i64 %indvars.iv142.i24, 1 ; 2 uses
  %i.qb = getelementptr inbounds [4 x i8], ptr %.0118130.i25, i64 %i.kj ; 2 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next143.i26
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !89
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.next143.i26
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !89
  %i.qg = fsub double %i.qd, %i.qf
  %i.qh = fmul double %i.jv, %i.qg
  %i.qi = fptrunc double %i.qh to float
  store float %i.qi, ptr %i.qb, align 4, !tbaa !91
  %indvars.iv.next143.i26.1 = add nuw nsw i64 %indvars.iv142.i24, 2 ; 2 uses
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.kj ; 2 uses
  %niter236.next.1 = add i64 %niter236, 2         ; 2 uses
  %niter236.ncmp.1 = icmp eq i64 %niter236.next.1, %unroll_iter235
  br i1 %niter236.ncmp.1, label %._crit_edge133.i19.loopexit.unr-lcssa, label %.lr.ph132.i23, !llvm.loop !106

._crit_edge133.i19.loopexit.unr-lcssa:            ; preds = %.lr.ph132.i23
  br i1 %lcmp.mod233.not, label %._crit_edge133.i19, label %.lr.ph132.i23.epil.preheader

.lr.ph132.i23.epil.preheader:                     ; preds = %._crit_edge133.i19.loopexit.unr-lcssa, %.lr.ph132.i23.preheader
  %indvars.iv142.i24.epil.init = phi i64 [ 0, %.lr.ph132.i23.preheader ], [ %indvars.iv.next143.i26.1, %._crit_edge133.i19.loopexit.unr-lcssa ] ; 2 uses
  %.0118130.i25.epil.init = phi ptr [ %i.lo, %.lr.ph132.i23.preheader ], [ %i.qj, %._crit_edge133.i19.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod234)
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv142.i24.epil.init
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !89
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv142.i24.epil.init
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !89
  %i.qo = fsub double %i.ql, %i.qn
  %i.qp = fmul double %i.jv, %i.qo
  %i.qq = fptrunc double %i.qp to float
  store float %i.qq, ptr %.0118130.i25.epil.init, align 4, !tbaa !91
  br label %._crit_edge133.i19

._crit_edge133.i19:                               ; preds = %.lr.ph132.i23.epil.preheader, %._crit_edge133.i19.loopexit.unr-lcssa, %.preheader.critedge.i17
  %indvars.iv.next148.i20 = add nsw i64 %indvars.iv147.i16, 1 ; 2 uses
  %exitcond151.not.i21 = icmp eq i64 %indvars.iv.next148.i20, %wide.trip.count150.i12
  br i1 %exitcond151.not.i21, label %_ZN2cv8ximgprocL17VerticalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %bb.n, !llvm.loop !107

_ZN2cv8ximgprocL17VerticalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit: ; preds = %._crit_edge133.i19, %bb.l
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.z

bb.o:                                             ; preds = %bb.f
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !121, !nonnull !65, !align !87
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !40 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !41 ; 4 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !51
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !43
  %..i42 = tail call i32 @llvm.smax.i32(i32 %i.qy, i32 %i.ra) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 1, i32 noundef %..i42, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 1, i32 noundef %..i42, i32 noundef 6)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.rb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !88 ; 9 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !88 ; 9 uses
  %i.rf = load i32, ptr %i.qx, align 8, !tbaa !51 ; 10 uses
  %i.rg = load i32, ptr %i.qz, align 4, !tbaa !43 ; 3 uses
  %i.rh = fneg double %i.qu                       ; 4 uses
  %i.ri = call double @exp(double noundef %i.rh) #14
  %i.rj = call double @cos(double noundef %i.qw) #14
  %i.rk = fmul double %i.ri, -2.000000e+00
  %i.rl = call double @llvm.fmuladd.f64(double %i.rk, double %i.rj, double 1.000000e+00)
  %i.rm = fmul double %i.qu, -2.000000e+00        ; 2 uses
  %i.rn = call double @exp(double noundef %i.rm) #14
  %i.ro = fadd double %i.rl, %i.rn
  %i.rp = call double @exp(double noundef %i.rh) #14
  %i.rq = call double @sin(double noundef %i.qw) #14
  %i.rr = fmul double %i.rp, %i.rq
  %i.rs = fneg double %i.ro
  %i.rt = fdiv double %i.rs, %i.rr
  %i.ru = call double @exp(double noundef %i.rh) #14
  %i.rv = fmul double %i.ru, %i.rt
  %i.rw = call double @sin(double noundef %i.qw) #14
  %i.rx = fmul double %i.rw, %i.rv                ; 3 uses
  %i.ry = call double @exp(double noundef %i.rh) #14
  %i.rz = fmul double %i.ry, -2.000000e+00
  %i.sa = call double @cos(double noundef %i.qw) #14
  %i.sb = fmul double %i.rz, %i.sa                ; 9 uses
  %i.sc = call double @exp(double noundef %i.rm) #14
  %i.sd = load i32, ptr %1, align 4, !tbaa !45    ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !46 ; 2 uses
  %i.sg = icmp slt i32 %i.sd, %i.sf
  br i1 %i.sg, label %.lr.ph136.i43, label %_ZN2cv8ximgprocL17VerticalIIRFilterItEEvRNS_3MatES3_RKNS_5RangeEdd.exit

.lr.ph136.i43:                                    ; preds = %bb.p
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !88 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !88
  %i.sl = sext i32 %i.rg to i64                   ; 9 uses
  %i.sm = sub nsw i32 0, %i.rg
  %i.sn = sext i32 %i.sm to i64                   ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.sp = icmp sgt i32 %i.rf, 2
  %i.sq = fneg double %i.sc                       ; 6 uses
  %i.sr = add nsw i32 %i.rf, -1                   ; 2 uses
  %i.ss = mul nsw i32 %i.sr, %i.rg
  %i.st = sext i32 %i.sr to i64
  %i.su = getelementptr inbounds [8 x i8], ptr %i.re, i64 %i.st ; 2 uses
  %i.sv = sub nsw i64 0, %i.sl                    ; 3 uses
  %i.sw = sext i32 %i.rf to i64
  %i.sx = getelementptr [8 x i8], ptr %i.re, i64 %i.sw
  %i.sy = getelementptr i8, ptr %i.sx, i64 -16    ; 2 uses
  %i.sz = add i32 %i.rf, -3                       ; 2 uses
  %i.ta = icmp sgt i32 %i.rf, 0
  %i.tb = zext i32 %i.sz to i64                   ; 5 uses
  %i.tc = sext i32 %i.sd to i64
  %i.td = sext i32 %i.ss to i64
  %wide.trip.count150.i44 = sext i32 %i.sf to i64
  %invariant.gep.i45 = getelementptr [2 x i8], ptr %i.si, i64 %i.td ; 2 uses
  %wide.trip.count.i46 = zext i32 %i.rf to i64    ; 4 uses
  %scevgep163 = getelementptr i8, ptr %i.rc, i64 8
  %i.te = shl nuw nsw i64 %i.tb, 3
  %i.tf = getelementptr i8, ptr %i.re, i64 %i.te
  %scevgep166 = getelementptr i8, ptr %i.tf, i64 8
  %xtraiter206 = and i64 %wide.trip.count.i46, 1
  %i.tg = icmp eq i32 %i.rf, 3
  %i.th = and i64 %wide.trip.count.i46, 2147483646
  %i.ti = add nsw i64 %i.th, -4
  %lcmp.mod207.not = icmp eq i64 %xtraiter206, 0
  %lcmp.mod208 = trunc i32 %i.rf to i1
  %i.tj = and i64 %i.tb, 1
  %lcmp.mod212.not.not = icmp eq i64 %i.tj, 0
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %i.tb ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %indvars.iv.next140.i66.prol = add nsw i64 %i.tb, -1
  %i.tm = icmp eq i32 %i.sz, 0
  %xtraiter213 = and i64 %wide.trip.count.i46, 1
  %i.tn = icmp eq i32 %i.rf, 1
  %unroll_iter216 = and i64 %wide.trip.count.i46, 4294967294
  %lcmp.mod214.not = icmp eq i64 %xtraiter213, 0
  %lcmp.mod215 = trunc i32 %i.rf to i1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.to = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %common.resume

bb.r:                                             ; preds = %._crit_edge133.i50, %.lr.ph136.i43
  %indvars.iv147.i48 = phi i64 [ %i.tc, %.lr.ph136.i43 ], [ %indvars.iv.next148.i51, %._crit_edge133.i50 ] ; 5 uses
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %indvars.iv147.i48 ; 2 uses
  %i.tq = getelementptr inbounds [2 x i8], ptr %i.si, i64 %indvars.iv147.i48 ; 4 uses
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !93
  %i.ts = uitofp i16 %i.tr to double              ; 2 uses
  store double %i.ts, ptr %i.rc, align 8, !tbaa !89
  %i.tt = getelementptr inbounds [2 x i8], ptr %i.tq, i64 %i.sl
  %i.tu = getelementptr inbounds [2 x i8], ptr %i.tt, i64 %i.sn
  %i.tv = load i16, ptr %i.tu, align 2, !tbaa !93
  %i.tw = uitofp i16 %i.tv to double
  %i.tx = fmul double %i.sb, %i.ts
  %i.ty = fsub double %i.tw, %i.tx
  store double %i.ty, ptr %i.so, align 8, !tbaa !89
  br i1 %i.sp, label %.lr.ph.i59.preheader, label %.preheader.i

.lr.ph.i59.preheader:                             ; preds = %bb.r
  %load_initial164 = load double, ptr %scevgep163, align 8 ; 2 uses
  br i1 %i.tg, label %.lr.ph.i59.epil.preheader, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %.lr.ph.i59.preheader, %.lr.ph.i59
  %store_forwarded165 = phi double [ %i.ut, %.lr.ph.i59 ], [ %load_initial164, %.lr.ph.i59.preheader ]
  %indvars.iv.i60 = phi i64 [ %indvars.iv.next.i62.1, %.lr.ph.i59 ], [ 2, %.lr.ph.i59.preheader ] ; 3 uses
  %i.tz = phi ptr [ %.0115.i61, %.lr.ph.i59 ], [ %i.tq, %.lr.ph.i59.preheader ]
  %niter210 = phi i64 [ %niter210.next.1, %.lr.ph.i59 ], [ 0, %.lr.ph.i59.preheader ] ; 2 uses
  %i.ua = getelementptr inbounds [2 x i8], ptr %i.tz, i64 %i.sl
  %.0115.i61 = getelementptr inbounds [2 x i8], ptr %i.ua, i64 %i.sl ; 4 uses
  %i.ub = getelementptr inbounds [2 x i8], ptr %.0115.i61, i64 %i.sn
  %i.uc = load i16, ptr %i.ub, align 2, !tbaa !93
  %i.ud = uitofp i16 %i.uc to double
end_hunk_0
