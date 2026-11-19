Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/paillou_filter?download=true
inline.NumInlined: 264
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN2cv8ximgproc16GradientPaillouXERKNS_11_InputArrayERKNS_12_OutputArrayEdd:bb.a
.lr.ph.i.i.i57:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %.lr.ph.i.i.i57
  %.05.i.i.i58 = phi ptr [ %i.dn, %.lr.ph.i.i.i57 ], [ %i.dk, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i58) #14
  %i.dn = getelementptr inbounds nuw i8, ptr %.05.i.i.i58, i64 208 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.dn, %i.dm
  br i1 %.not.i.i.i59, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i60, label %.lr.ph.i.i.i57, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i60: ; preds = %.lr.ph.i.i.i57
  %.pr.i61 = load ptr, ptr %6, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i62

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i62: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i60, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.do = phi ptr [ %.pr.i61, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i60 ], [ %i.dk, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i63 = icmp eq ptr %i.do, null
  br i1 %.not.i.i1.i63, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i62
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dt) #16
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64:        ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i62, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.du = load ptr, ptr %4, align 8, !tbaa !18    ; 3 uses
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %.not4.i.i.i65 = icmp eq ptr %i.du, %i.dv
  br i1 %.not4.i.i.i65, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71, label %.lr.ph.i.i.i66

.lr.ph.i.i.i66:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64, %.lr.ph.i.i.i66
  %.05.i.i.i67 = phi ptr [ %i.dw, %.lr.ph.i.i.i66 ], [ %i.du, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i67) #14
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i.i67, i64 208 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.dw, %i.dv
  br i1 %.not.i.i.i68, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i69, label %.lr.ph.i.i.i66, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i69: ; preds = %.lr.ph.i.i.i66
  %.pr.i70 = load ptr, ptr %4, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i69, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64
  %i.dx = phi ptr [ %.pr.i70, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i69 ], [ %i.du, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64 ] ; 3 uses
  %.not.i.i1.i72 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i1.i72, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit73, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !19
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ec) #16
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit73

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit73:        ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

bb.ao:                                            ; preds = %._crit_edge
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %bb.ap

bb.ap:                                            ; preds = %bb.q, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.body, %bb.ao
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ed, %bb.ao ], [ %.pn42.pn.pn, %.body ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn38, %bb.t ], [ %.pn36, %bb.q ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.c
  %.pn42.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn, %bb.ap ], [ %i.ab, %bb.c ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  resume { ptr, i32 } %.pn42.pn.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN2cv6detail20check_failed_MatTypeEiRKNS0_12CheckContextE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc28ParallelGradientPaillouYColsD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8ximgproc28ParallelGradientPaillouYColsclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 6 uses
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
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !112, !nonnull !65, !align !87 ; 15 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !27
  %i.am = and i32 %i.al, 31
  switch i32 %i.am, label %bb.t [
    i32 0, label %bb.g
    i32 1, label %bb.k
    i32 3, label %bb.o
    i32 2, label %bb.p
    i32 5, label %bb.q
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !113, !nonnull !65, !align !87
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !40 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load double, ptr %i.ar, align 8, !tbaa !41 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !43
  %..i = tail call i32 @llvm.smax.i32(i32 %i.au, i32 %i.aw) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 1, i32 noundef %..i, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 1, i32 noundef %..i, i32 noundef 6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88 ; 12 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !88 ; 9 uses
  %i.bb = load i32, ptr %i.at, align 8, !tbaa !51 ; 10 uses
  %i.bc = load i32, ptr %i.av, align 4, !tbaa !43 ; 2 uses
  %i.bd = fneg double %i.aq                       ; 2 uses
  %i.be = call double @exp(double noundef %i.bd) #14
  %i.bf = call double @cosh(double noundef %i.as) #14
  %i.bg = call double @exp(double noundef %i.bd) #14
  %i.bh = fmul double %i.bg, 2.000000e+00
  %i.bi = call double @cosh(double noundef %i.as) #14
  %i.bj = fmul double %i.aq, -2.000000e+00
  %i.bk = call double @exp(double noundef %i.bj) #14
  %i.bl = fneg double %i.bk                       ; 11 uses
  %i.bm = call double @llvm.fmuladd.f64(double %i.bh, double %i.bi, double %i.bl)
  %i.bn = fadd double %i.bm, -1.000000e+00        ; 3 uses
  %i.bo = load i32, ptr %1, align 4, !tbaa !45    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !46 ; 2 uses
  %i.br = icmp slt i32 %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph113.i, label %_ZN2cv8ximgprocL17VerticalIIRFilterIhEEvRNS_3MatES3_RKNS_5RangeEdd.exit

.lr.ph113.i:                                      ; preds = %bb.h
  %i.bs = fmul double %i.be, -2.000000e+00
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !88 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !88
  %i.by = sext i32 %i.bc to i64                   ; 14 uses
  %i.bz = fneg double %i.bf
  %i.ca = fmul double %i.bs, %i.bz                ; 12 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cc = icmp sgt i32 %i.bb, 2
  %i.cd = add nsw i32 %i.bb, -1
  %i.ce = load i64, ptr %i.bv, align 8, !tbaa !55
  %i.cf = sext i32 %i.cd to i64                   ; 2 uses
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.cf ; 2 uses
  %i.cj = sub nsw i64 0, %i.by                    ; 5 uses
  %i.ck = sext i32 %i.bb to i64
  %i.cl = getelementptr [8 x i8], ptr %i.ba, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -16    ; 2 uses
  %i.cn = add i32 %i.bb, -3                       ; 2 uses
  %i.co = icmp sgt i32 %i.bb, 0
  %i.cp = zext i32 %i.cn to i64                   ; 5 uses
  %i.cq = sext i32 %i.bo to i64
  %wide.trip.count127.i = sext i32 %i.bq to i64
  %wide.trip.count.i = zext i32 %i.bb to i64      ; 6 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 8
  %i.cr = shl nuw nsw i64 %i.cp, 3
  %i.cs = getelementptr i8, ptr %i.ba, i64 %i.cr
  %scevgep93 = getelementptr i8, ptr %i.cs, i64 8
  %i.ct = add nsw i64 %wide.trip.count.i, -2      ; 2 uses
  %i.cu = add nsw i64 %wide.trip.count.i, -3      ; 2 uses
  %ident.check.not = icmp eq i32 %i.bc, 1
  %xtraiter144 = and i64 %wide.trip.count.i, 1
  %i.cv = icmp eq i64 %i.cu, 0
  %unroll_iter147 = and i64 %i.ct, -2
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  %lcmp.mod146 = trunc i32 %i.bb to i1
  %xtraiter149 = and i64 %wide.trip.count.i, 1
  %i.cw = icmp eq i64 %i.cu, 0
  %unroll_iter152 = and i64 %i.ct, -2
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  %lcmp.mod151 = trunc i32 %i.bb to i1
  %i.cx = and i64 %i.cp, 1
  %lcmp.mod157.not.not = icmp eq i64 %i.cx, 0
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cp ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %indvars.iv.next117.i.prol = add nsw i64 %i.cp, -1
  %i.da = icmp eq i32 %i.cn, 0
  %xtraiter158 = and i64 %wide.trip.count.i, 1
  %i.db = icmp eq i32 %i.bb, 1
  %unroll_iter161 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  %lcmp.mod160 = trunc i32 %i.bb to i1
  br label %bb.j

common.resume:                                    ; preds = %bb.s, %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.dc, %bb.i ], [ %i.kf, %bb.m ], [ %i.wl, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %common.resume

bb.j:                                             ; preds = %._crit_edge110.i, %.lr.ph113.i
  %indvars.iv124.i = phi i64 [ %i.cq, %.lr.ph113.i ], [ %indvars.iv.next125.i, %._crit_edge110.i ] ; 5 uses
  %i.dd = getelementptr inbounds i8, ptr %i.bu, i64 %indvars.iv124.i ; 6 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv124.i ; 2 uses
  %i.df = load i8, ptr %i.dd, align 1, !tbaa !32
  %i.dg = uitofp i8 %i.df to double               ; 3 uses
  store double %i.dg, ptr %i.ay, align 8, !tbaa !89
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 %i.by
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !32
  %i.dj = uitofp i8 %i.di to double
  %i.dk = call double @llvm.fmuladd.f64(double %i.ca, double %i.dg, double %i.dj)
  %i.dl = call double @llvm.fmuladd.f64(double %i.bl, double %i.dg, double %i.dk)
  store double %i.dl, ptr %i.cb, align 8, !tbaa !89
  br i1 %i.cc, label %.lr.ph.i.lver.check, label %.preheader.critedge.i

.lr.ph.i.lver.check:                              ; preds = %bb.j
  br i1 %ident.check.not, label %.lr.ph.i.ph, label %.lr.ph.i.lver.orig.preheader

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  br i1 %i.cv, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig.preheader, %.lr.ph.i.lver.orig
  %indvars.iv.i.lver.orig = phi i64 [ %indvars.iv.next.i.lver.orig.1, %.lr.ph.i.lver.orig ], [ 2, %.lr.ph.i.lver.orig.preheader ] ; 3 uses
  %i.dm = phi ptr [ %.094.i.lver.orig, %.lr.ph.i.lver.orig ], [ %i.dd, %.lr.ph.i.lver.orig.preheader ]
  %niter148 = phi i64 [ %niter148.next.1, %.lr.ph.i.lver.orig ], [ 0, %.lr.ph.i.lver.orig.preheader ]
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.by
  %.094.i.lver.orig = getelementptr inbounds i8, ptr %i.dn, i64 %i.by ; 4 uses
  %i.do = load i8, ptr %.094.i.lver.orig, align 1, !tbaa !32
  %i.dp = uitofp i8 %i.do to double
  %i.dq = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.lver.orig ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 -8
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !89 ; 2 uses
  %i.dt = call double @llvm.fmuladd.f64(double %i.ca, double %i.ds, double %i.dp)
  %i.du = getelementptr i8, ptr %i.dq, i64 -16
  %i.dv = load double, ptr %i.du, align 8, !tbaa !89
  %i.dw = call double @llvm.fmuladd.f64(double %i.bl, double %i.dv, double %i.dt) ; 2 uses
  store double %i.dw, ptr %i.dq, align 8, !tbaa !89
  %.094.i.lver.orig.1 = getelementptr inbounds i8, ptr %.094.i.lver.orig, i64 %i.by
  %i.dx = load i8, ptr %.094.i.lver.orig.1, align 1, !tbaa !32
  %i.dy = uitofp i8 %i.dx to double
  %i.dz = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.lver.orig
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = call double @llvm.fmuladd.f64(double %i.ca, double %i.dw, double %i.dy)
  %i.ec = call double @llvm.fmuladd.f64(double %i.bl, double %i.ds, double %i.eb)
  store double %i.ec, ptr %i.ea, align 8, !tbaa !89
  %indvars.iv.next.i.lver.orig.1 = add nuw nsw i64 %indvars.iv.i.lver.orig, 2 ; 2 uses
  %niter148.next.1 = add i64 %niter148, 2         ; 2 uses
  %niter148.ncmp.1 = icmp eq i64 %niter148.next.1, %unroll_iter147
  br i1 %niter148.ncmp.1, label %.lr.ph106.i.lver.check.loopexit112.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !100

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load double, ptr %scevgep, align 8 ; 2 uses
  br i1 %i.cw, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph106.i.lver.check.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  br i1 %lcmp.mod150.not, label %.lr.ph106.i.lver.orig, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph106.i.lver.check.loopexit.unr-lcssa, %.lr.ph.i.ph
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph.i.ph ], [ %i.fx, %.lr.ph106.i.lver.check.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 2, %.lr.ph.i.ph ], [ %indvars.iv.next.i.1, %.lr.ph106.i.lver.check.loopexit.unr-lcssa ]
  %i.ed = phi ptr [ %i.dd, %.lr.ph.i.ph ], [ %.094.i, %.lr.ph106.i.lver.check.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod151)
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.by
  %.094.i.epil = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.by
  %i.ef = load i8, ptr %.094.i.epil, align 1, !tbaa !32
  %i.eg = uitofp i8 %i.ef to double
  %i.eh = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ei = call double @llvm.fmuladd.f64(double %i.ca, double %store_forwarded.epil.init, double %i.eg)
  %i.ej = getelementptr i8, ptr %i.eh, i64 -16
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !89
  %i.el = call double @llvm.fmuladd.f64(double %i.bl, double %i.ek, double %i.ei)
  store double %i.el, ptr %i.eh, align 8, !tbaa !89
  br label %.lr.ph106.i.lver.orig

.lr.ph106.i.lver.check.loopexit112.unr-lcssa:     ; preds = %.lr.ph.i.lver.orig
  br i1 %lcmp.mod145.not, label %.lr.ph106.i.lver.orig, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.lr.ph106.i.lver.check.loopexit112.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %indvars.iv.i.lver.orig.epil.init = phi i64 [ 2, %.lr.ph.i.lver.orig.preheader ], [ %indvars.iv.next.i.lver.orig.1, %.lr.ph106.i.lver.check.loopexit112.unr-lcssa ]
  %i.em = phi ptr [ %i.dd, %.lr.ph.i.lver.orig.preheader ], [ %.094.i.lver.orig, %.lr.ph106.i.lver.check.loopexit112.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod146)
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %i.by
  %.094.i.lver.orig.epil = getelementptr inbounds i8, ptr %i.en, i64 %i.by
  %i.eo = load i8, ptr %.094.i.lver.orig.epil, align 1, !tbaa !32
  %i.ep = uitofp i8 %i.eo to double
  %i.eq = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.lver.orig.epil.init ; 3 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 -8
  %i.es = load double, ptr %i.er, align 8, !tbaa !89
  %i.et = call double @llvm.fmuladd.f64(double %i.ca, double %i.es, double %i.ep)
  %i.eu = getelementptr i8, ptr %i.eq, i64 -16
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !89
  %i.ew = call double @llvm.fmuladd.f64(double %i.bl, double %i.ev, double %i.et)
  store double %i.ew, ptr %i.eq, align 8, !tbaa !89
  br label %.lr.ph106.i.lver.orig

.lr.ph106.i.lver.orig:                            ; preds = %.lr.ph.i.lver.orig.epil.preheader, %.lr.ph106.i.lver.check.loopexit112.unr-lcssa, %.lr.ph.i.epil.preheader, %.lr.ph106.i.lver.check.loopexit.unr-lcssa
  %.1.i.lver.orig = getelementptr inbounds i8, ptr %i.ch, i64 %indvars.iv124.i ; 2 uses
  %i.ex = load i8, ptr %.1.i.lver.orig, align 1, !tbaa !32
  %i.ey = uitofp i8 %i.ex to double               ; 2 uses
  store double %i.ey, ptr %i.ci, align 8, !tbaa !89
  %.1.i.lver.orig.1 = getelementptr inbounds i8, ptr %.1.i.lver.orig, i64 %i.cj ; 3 uses
  %i.ez = load i8, ptr %.1.i.lver.orig.1, align 1, !tbaa !32
  %i.fa = uitofp i8 %i.ez to double
  %i.fb = call double @llvm.fmuladd.f64(double %i.ca, double %i.ey, double %i.fa)
  store double %i.fb, ptr %i.cm, align 8, !tbaa !89
  %load_initial92 = load double, ptr %scevgep93, align 8 ; 2 uses
  br i1 %lcmp.mod157.not.not, label %.lr.ph106.i.prol, label %.lr.ph106.i.prol.loopexit

.lr.ph106.i.prol:                                 ; preds = %.lr.ph106.i.lver.orig
  %.1.i.prol = getelementptr inbounds i8, ptr %.1.i.lver.orig.1, i64 %i.cj ; 2 uses
  %i.fc = load i8, ptr %.1.i.prol, align 1, !tbaa !32
  %i.fd = uitofp i8 %i.fc to double
  %i.fe = call double @llvm.fmuladd.f64(double %i.ca, double %load_initial92, double %i.fd)
  %i.ff = load double, ptr %i.cz, align 8, !tbaa !89
  %i.fg = call double @llvm.fmuladd.f64(double %i.bl, double %i.ff, double %i.fe) ; 2 uses
  store double %i.fg, ptr %i.cy, align 8, !tbaa !89
  br label %.lr.ph106.i.prol.loopexit

.lr.ph106.i.prol.loopexit:                        ; preds = %.lr.ph106.i.prol, %.lr.ph106.i.lver.orig
  %store_forwarded95.unr = phi double [ %load_initial92, %.lr.ph106.i.lver.orig ], [ %i.fg, %.lr.ph106.i.prol ]
  %indvars.iv116.i.unr = phi i64 [ %i.cp, %.lr.ph106.i.lver.orig ], [ %indvars.iv.next117.i.prol, %.lr.ph106.i.prol ]
  %.pn100103.i.unr = phi ptr [ %.1.i.lver.orig.1, %.lr.ph106.i.lver.orig ], [ %.1.i.prol, %.lr.ph106.i.prol ]
  br i1 %i.da, label %.lr.ph109.i.preheader, label %.lr.ph106.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.ph, %.lr.ph.i
  %store_forwarded = phi double [ %i.fx, %.lr.ph.i ], [ %load_initial, %.lr.ph.i.ph ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 2, %.lr.ph.i.ph ] ; 3 uses
  %i.fh = phi ptr [ %.094.i, %.lr.ph.i ], [ %i.dd, %.lr.ph.i.ph ]
  %niter153 = phi i64 [ %niter153.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.ph ]
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 %i.by
  %.094.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.by ; 4 uses
  %i.fj = load i8, ptr %.094.i, align 1, !tbaa !32
  %i.fk = uitofp i8 %i.fj to double
  %i.fl = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i ; 2 uses
  %i.fm = call double @llvm.fmuladd.f64(double %i.ca, double %store_forwarded, double %i.fk)
  %i.fn = getelementptr i8, ptr %i.fl, i64 -16
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !89
  %i.fp = call double @llvm.fmuladd.f64(double %i.bl, double %i.fo, double %i.fm) ; 2 uses
  store double %i.fp, ptr %i.fl, align 8, !tbaa !89
  %.094.i.1 = getelementptr inbounds nuw i8, ptr %.094.i, i64 %i.by
  %i.fq = load i8, ptr %.094.i.1, align 1, !tbaa !32
  %i.fr = uitofp i8 %i.fq to double
  %i.fs = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 8
  %i.fu = call double @llvm.fmuladd.f64(double %i.ca, double %i.fp, double %i.fr)
  %i.fv = getelementptr i8, ptr %i.fs, i64 -8
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !89
  %i.fx = call double @llvm.fmuladd.f64(double %i.bl, double %i.fw, double %i.fu) ; 3 uses
  store double %i.fx, ptr %i.ft, align 8, !tbaa !89
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter153.next.1 = add i64 %niter153, 2         ; 2 uses
  %niter153.ncmp.1 = icmp eq i64 %niter153.next.1, %unroll_iter152
  br i1 %niter153.ncmp.1, label %.lr.ph106.i.lver.check.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !100

.preheader.critedge.i:                            ; preds = %bb.j
  %i.fy = getelementptr inbounds i8, ptr %i.ch, i64 %indvars.iv124.i ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !32
  %i.ga = uitofp i8 %i.fz to double               ; 2 uses
  store double %i.ga, ptr %i.ci, align 8, !tbaa !89
  %i.gb = getelementptr inbounds i8, ptr %i.fy, i64 %i.cj
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !32
  %i.gd = uitofp i8 %i.gc to double
  %i.ge = call double @llvm.fmuladd.f64(double %i.ca, double %i.ga, double %i.gd)
  store double %i.ge, ptr %i.cm, align 8, !tbaa !89
  br i1 %i.co, label %.lr.ph109.i.preheader, label %._crit_edge110.i

.lr.ph109.i.preheader:                            ; preds = %.lr.ph106.i.prol.loopexit, %.lr.ph106.i, %.preheader.critedge.i
  br i1 %i.db, label %.lr.ph109.i.epil.preheader, label %.lr.ph109.i

.lr.ph106.i:                                      ; preds = %.lr.ph106.i.prol.loopexit, %.lr.ph106.i
  %store_forwarded95 = phi double [ %i.gs, %.lr.ph106.i ], [ %store_forwarded95.unr, %.lr.ph106.i.prol.loopexit ]
  %indvars.iv116.i = phi i64 [ %indvars.iv.next117.i.1, %.lr.ph106.i ], [ %indvars.iv116.i.unr, %.lr.ph106.i.prol.loopexit ] ; 3 uses
  %.pn100103.i = phi ptr [ %.1.i.1, %.lr.ph106.i ], [ %.pn100103.i.unr, %.lr.ph106.i.prol.loopexit ]
  %.1.i = getelementptr inbounds i8, ptr %.pn100103.i, i64 %i.cj ; 2 uses
  %i.gf = load i8, ptr %.1.i, align 1, !tbaa !32
  %i.gg = uitofp i8 %i.gf to double
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv116.i ; 2 uses
  %i.gi = call double @llvm.fmuladd.f64(double %i.ca, double %store_forwarded95, double %i.gg)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !89
  %i.gl = call double @llvm.fmuladd.f64(double %i.bl, double %i.gk, double %i.gi) ; 2 uses
  store double %i.gl, ptr %i.gh, align 8, !tbaa !89
  %indvars.iv.next117.i = add nsw i64 %indvars.iv116.i, -1 ; 2 uses
  %.1.i.1 = getelementptr inbounds i8, ptr %.1.i, i64 %i.cj ; 2 uses
  %i.gm = load i8, ptr %.1.i.1, align 1, !tbaa !32
  %i.gn = uitofp i8 %i.gm to double
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next117.i ; 2 uses
  %i.gp = call double @llvm.fmuladd.f64(double %i.ca, double %i.gl, double %i.gn)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !89
  %i.gs = call double @llvm.fmuladd.f64(double %i.bl, double %i.gr, double %i.gp) ; 2 uses
  store double %i.gs, ptr %i.go, align 8, !tbaa !89
  %indvars.iv.next117.i.1 = add nsw i64 %indvars.iv116.i, -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next117.i, 0
  br i1 %.not.i.1, label %.lr.ph109.i.preheader, label %.lr.ph106.i, !llvm.loop !101

._crit_edge110.i.loopexit.unr-lcssa:              ; preds = %.lr.ph109.i
  br i1 %lcmp.mod159.not, label %._crit_edge110.i, label %.lr.ph109.i.epil.preheader

.lr.ph109.i.epil.preheader:                       ; preds = %._crit_edge110.i.loopexit.unr-lcssa, %.lr.ph109.i.preheader
  %indvars.iv119.i.epil.init = phi i64 [ 0, %.lr.ph109.i.preheader ], [ %indvars.iv.next120.i.1, %._crit_edge110.i.loopexit.unr-lcssa ] ; 2 uses
  %.096107.i.epil.init = phi ptr [ %i.de, %.lr.ph109.i.preheader ], [ %i.hp, %._crit_edge110.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod160)
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv119.i.epil.init
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !89
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv119.i.epil.init
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !89
  %i.gx = fsub double %i.gu, %i.gw
  %i.gy = fmul double %i.bn, %i.gx
  %i.gz = fptrunc double %i.gy to float
  store float %i.gz, ptr %.096107.i.epil.init, align 4, !tbaa !91
  br label %._crit_edge110.i

._crit_edge110.i:                                 ; preds = %.lr.ph109.i.epil.preheader, %._crit_edge110.i.loopexit.unr-lcssa, %.preheader.critedge.i
  %indvars.iv.next125.i = add nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next125.i, %wide.trip.count127.i
  br i1 %exitcond128.not.i, label %_ZN2cv8ximgprocL17VerticalIIRFilterIhEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %bb.j, !llvm.loop !102

.lr.ph109.i:                                      ; preds = %.lr.ph109.i.preheader, %.lr.ph109.i
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.1, %.lr.ph109.i ], [ 0, %.lr.ph109.i.preheader ] ; 4 uses
  %.096107.i = phi ptr [ %i.hp, %.lr.ph109.i ], [ %i.de, %.lr.ph109.i.preheader ] ; 2 uses
  %niter162 = phi i64 [ %niter162.next.1, %.lr.ph109.i ], [ 0, %.lr.ph109.i.preheader ]
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv119.i
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !89
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv119.i
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !89
  %i.he = fsub double %i.hb, %i.hd
  %i.hf = fmul double %i.bn, %i.he
  %i.hg = fptrunc double %i.hf to float
  store float %i.hg, ptr %.096107.i, align 4, !tbaa !91
  %indvars.iv.next120.i = or disjoint i64 %indvars.iv119.i, 1 ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %.096107.i, i64 %i.by ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next120.i
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !89
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next120.i
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !89
  %i.hm = fsub double %i.hj, %i.hl
  %i.hn = fmul double %i.bn, %i.hm
  %i.ho = fptrunc double %i.hn to float
  store float %i.ho, ptr %i.hh, align 4, !tbaa !91
  %indvars.iv.next120.i.1 = add nuw nsw i64 %indvars.iv119.i, 2 ; 2 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.by ; 2 uses
  %niter162.next.1 = add i64 %niter162, 2         ; 2 uses
  %niter162.ncmp.1 = icmp eq i64 %niter162.next.1, %unroll_iter161
  br i1 %niter162.ncmp.1, label %._crit_edge110.i.loopexit.unr-lcssa, label %.lr.ph109.i, !llvm.loop !103

_ZN2cv8ximgprocL17VerticalIIRFilterIhEEvRNS_3MatES3_RKNS_5RangeEdd.exit: ; preds = %._crit_edge110.i, %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.t

bb.k:                                             ; preds = %bb.f
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !113, !nonnull !65, !align !87
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !40 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !41 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !43
  %..i10 = tail call i32 @llvm.smax.i32(i32 %i.hx, i32 %i.hz) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 1, i32 noundef %..i10, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef 1, i32 noundef %..i10, i32 noundef 6)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !88 ; 12 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !88 ; 9 uses
  %i.ie = load i32, ptr %i.hw, align 8, !tbaa !51 ; 10 uses
  %i.if = load i32, ptr %i.hy, align 4, !tbaa !43 ; 2 uses
  %i.ig = fneg double %i.ht                       ; 2 uses
  %i.ih = call double @exp(double noundef %i.ig) #14
  %i.ii = call double @cosh(double noundef %i.hv) #14
  %i.ij = call double @exp(double noundef %i.ig) #14
  %i.ik = fmul double %i.ij, 2.000000e+00
  %i.il = call double @cosh(double noundef %i.hv) #14
  %i.im = fmul double %i.ht, -2.000000e+00
  %i.in = call double @exp(double noundef %i.im) #14
  %i.io = fneg double %i.in                       ; 11 uses
  %i.ip = call double @llvm.fmuladd.f64(double %i.ik, double %i.il, double %i.io)
  %i.iq = fadd double %i.ip, -1.000000e+00        ; 3 uses
  %i.ir = load i32, ptr %1, align 4, !tbaa !45    ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !46 ; 2 uses
  %i.iu = icmp slt i32 %i.ir, %i.it
  br i1 %i.iu, label %.lr.ph113.i11, label %_ZN2cv8ximgprocL17VerticalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit

.lr.ph113.i11:                                    ; preds = %bb.l
  %i.iv = fmul double %i.ih, -2.000000e+00
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !88 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !88
  %i.jb = sext i32 %i.if to i64                   ; 14 uses
  %i.jc = fneg double %i.ii
  %i.jd = fmul double %i.iv, %i.jc                ; 12 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.jf = icmp sgt i32 %i.ie, 2
  %i.jg = add nsw i32 %i.ie, -1
  %i.jh = load i64, ptr %i.iy, align 8, !tbaa !55
  %i.ji = sext i32 %i.jg to i64                   ; 2 uses
  %i.jj = mul i64 %i.jh, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.jj ; 2 uses
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.ji ; 2 uses
  %i.jm = sub nsw i64 0, %i.jb                    ; 5 uses
  %i.jn = sext i32 %i.ie to i64
  %i.jo = getelementptr [8 x i8], ptr %i.id, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.jo, i64 -16    ; 2 uses
  %i.jq = add i32 %i.ie, -3                       ; 2 uses
  %i.jr = icmp sgt i32 %i.ie, 0
  %i.js = zext i32 %i.jq to i64                   ; 5 uses
  %i.jt = sext i32 %i.ir to i64
  %wide.trip.count127.i12 = sext i32 %i.it to i64
  %wide.trip.count.i13 = zext i32 %i.ie to i64    ; 6 uses
  %scevgep98 = getelementptr i8, ptr %i.ib, i64 8
  %i.ju = shl nuw nsw i64 %i.js, 3
  %i.jv = getelementptr i8, ptr %i.id, i64 %i.ju
  %scevgep103 = getelementptr i8, ptr %i.jv, i64 8
  %i.jw = add nsw i64 %wide.trip.count.i13, -2    ; 2 uses
  %i.jx = add nsw i64 %wide.trip.count.i13, -3    ; 2 uses
  %ident.check96.not = icmp eq i32 %i.if, 1
  %xtraiter125 = and i64 %wide.trip.count.i13, 1
  %i.jy = icmp eq i64 %i.jx, 0
  %unroll_iter128 = and i64 %i.jw, -2
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  %lcmp.mod127 = trunc i32 %i.ie to i1
  %xtraiter130 = and i64 %wide.trip.count.i13, 1
  %i.jz = icmp eq i64 %i.jx, 0
  %unroll_iter133 = and i64 %i.jw, -2
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  %lcmp.mod132 = trunc i32 %i.ie to i1
  %i.ka = and i64 %i.js, 1
  %lcmp.mod138.not.not = icmp eq i64 %i.ka, 0
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.js ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %indvars.iv.next117.i37.prol = add nsw i64 %i.js, -1
  %i.kd = icmp eq i32 %i.jq, 0
  %xtraiter139 = and i64 %wide.trip.count.i13, 1
  %i.ke = icmp eq i32 %i.ie, 1
  %unroll_iter142 = and i64 %wide.trip.count.i13, 4294967294
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  %lcmp.mod141 = trunc i32 %i.ie to i1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %common.resume

bb.n:                                             ; preds = %._crit_edge110.i17, %.lr.ph113.i11
  %indvars.iv124.i15 = phi i64 [ %i.jt, %.lr.ph113.i11 ], [ %indvars.iv.next125.i18, %._crit_edge110.i17 ] ; 5 uses
  %i.kg = getelementptr inbounds i8, ptr %i.ix, i64 %indvars.iv124.i15 ; 6 uses
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %indvars.iv124.i15 ; 2 uses
  %i.ki = load i8, ptr %i.kg, align 1, !tbaa !32
  %i.kj = sitofp i8 %i.ki to double               ; 3 uses
  store double %i.kj, ptr %i.ib, align 8, !tbaa !89
  %i.kk = getelementptr inbounds i8, ptr %i.kg, i64 %i.jb
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !32
  %i.km = sitofp i8 %i.kl to double
  %i.kn = call double @llvm.fmuladd.f64(double %i.jd, double %i.kj, double %i.km)
  %i.ko = call double @llvm.fmuladd.f64(double %i.io, double %i.kj, double %i.kn)
  store double %i.ko, ptr %i.je, align 8, !tbaa !89
  br i1 %i.jf, label %.lr.ph.i26.lver.check, label %.preheader.critedge.i16

.lr.ph.i26.lver.check:                            ; preds = %bb.n
  br i1 %ident.check96.not, label %.lr.ph.i26.ph, label %.lr.ph.i26.lver.orig.preheader

.lr.ph.i26.lver.orig.preheader:                   ; preds = %.lr.ph.i26.lver.check
  br i1 %i.jy, label %.lr.ph.i26.lver.orig.epil.preheader, label %.lr.ph.i26.lver.orig

.lr.ph.i26.lver.orig:                             ; preds = %.lr.ph.i26.lver.orig.preheader, %.lr.ph.i26.lver.orig
  %indvars.iv.i27.lver.orig = phi i64 [ %indvars.iv.next.i30.lver.orig.1, %.lr.ph.i26.lver.orig ], [ 2, %.lr.ph.i26.lver.orig.preheader ] ; 3 uses
  %i.kp = phi ptr [ %.094.i29.lver.orig, %.lr.ph.i26.lver.orig ], [ %i.kg, %.lr.ph.i26.lver.orig.preheader ]
  %niter129 = phi i64 [ %niter129.next.1, %.lr.ph.i26.lver.orig ], [ 0, %.lr.ph.i26.lver.orig.preheader ]
  %i.kq = getelementptr inbounds i8, ptr %i.kp, i64 %i.jb
  %.094.i29.lver.orig = getelementptr inbounds i8, ptr %i.kq, i64 %i.jb ; 4 uses
  %i.kr = load i8, ptr %.094.i29.lver.orig, align 1, !tbaa !32
  %i.ks = sitofp i8 %i.kr to double
  %i.kt = getelementptr [8 x i8], ptr %i.ib, i64 %indvars.iv.i27.lver.orig ; 3 uses
  %i.ku = getelementptr i8, ptr %i.kt, i64 -8
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !89 ; 2 uses
  %i.kw = call double @llvm.fmuladd.f64(double %i.jd, double %i.kv, double %i.ks)
  %i.kx = getelementptr i8, ptr %i.kt, i64 -16
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !89
  %i.kz = call double @llvm.fmuladd.f64(double %i.io, double %i.ky, double %i.kw) ; 2 uses
  store double %i.kz, ptr %i.kt, align 8, !tbaa !89
  %.094.i29.lver.orig.1 = getelementptr inbounds i8, ptr %.094.i29.lver.orig, i64 %i.jb
  %i.la = load i8, ptr %.094.i29.lver.orig.1, align 1, !tbaa !32
  %i.lb = sitofp i8 %i.la to double
  %i.lc = getelementptr [8 x i8], ptr %i.ib, i64 %indvars.iv.i27.lver.orig
  %i.ld = getelementptr i8, ptr %i.lc, i64 8
  %i.le = call double @llvm.fmuladd.f64(double %i.jd, double %i.kz, double %i.lb)
  %i.lf = call double @llvm.fmuladd.f64(double %i.io, double %i.kv, double %i.le)
  store double %i.lf, ptr %i.ld, align 8, !tbaa !89
  %indvars.iv.next.i30.lver.orig.1 = add nuw nsw i64 %indvars.iv.i27.lver.orig, 2 ; 2 uses
  %niter129.next.1 = add i64 %niter129, 2         ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %.lr.ph106.i33.lver.check.loopexit114.unr-lcssa, label %.lr.ph.i26.lver.orig, !llvm.loop !104

.lr.ph.i26.ph:                                    ; preds = %.lr.ph.i26.lver.check
  %load_initial99 = load double, ptr %scevgep98, align 8 ; 2 uses
  br i1 %i.jz, label %.lr.ph.i26.epil.preheader, label %.lr.ph.i26

.lr.ph106.i33.lver.check.loopexit.unr-lcssa:      ; preds = %.lr.ph.i26
  br i1 %lcmp.mod131.not, label %.lr.ph106.i33.lver.orig, label %.lr.ph.i26.epil.preheader

.lr.ph.i26.epil.preheader:                        ; preds = %.lr.ph106.i33.lver.check.loopexit.unr-lcssa, %.lr.ph.i26.ph
  %store_forwarded100.epil.init = phi double [ %load_initial99, %.lr.ph.i26.ph ], [ %i.na, %.lr.ph106.i33.lver.check.loopexit.unr-lcssa ]
  %indvars.iv.i27.epil.init = phi i64 [ 2, %.lr.ph.i26.ph ], [ %indvars.iv.next.i30.1, %.lr.ph106.i33.lver.check.loopexit.unr-lcssa ]
  %i.lg = phi ptr [ %i.kg, %.lr.ph.i26.ph ], [ %.094.i29, %.lr.ph106.i33.lver.check.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod132)
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 %i.jb
  %.094.i29.epil = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.jb
  %i.li = load i8, ptr %.094.i29.epil, align 1, !tbaa !32
  %i.lj = sitofp i8 %i.li to double
  %i.lk = getelementptr [8 x i8], ptr %i.ib, i64 %indvars.iv.i27.epil.init ; 2 uses
  %i.ll = call double @llvm.fmuladd.f64(double %i.jd, double %store_forwarded100.epil.init, double %i.lj)
  %i.lm = getelementptr i8, ptr %i.lk, i64 -16
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !89
  %i.lo = call double @llvm.fmuladd.f64(double %i.io, double %i.ln, double %i.ll)
  store double %i.lo, ptr %i.lk, align 8, !tbaa !89
  br label %.lr.ph106.i33.lver.orig

.lr.ph106.i33.lver.check.loopexit114.unr-lcssa:   ; preds = %.lr.ph.i26.lver.orig
  br i1 %lcmp.mod126.not, label %.lr.ph106.i33.lver.orig, label %.lr.ph.i26.lver.orig.epil.preheader

.lr.ph.i26.lver.orig.epil.preheader:              ; preds = %.lr.ph106.i33.lver.check.loopexit114.unr-lcssa, %.lr.ph.i26.lver.orig.preheader
  %indvars.iv.i27.lver.orig.epil.init = phi i64 [ 2, %.lr.ph.i26.lver.orig.preheader ], [ %indvars.iv.next.i30.lver.orig.1, %.lr.ph106.i33.lver.check.loopexit114.unr-lcssa ]
  %i.lp = phi ptr [ %i.kg, %.lr.ph.i26.lver.orig.preheader ], [ %.094.i29.lver.orig, %.lr.ph106.i33.lver.check.loopexit114.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod127)
  %i.lq = getelementptr inbounds i8, ptr %i.lp, i64 %i.jb
  %.094.i29.lver.orig.epil = getelementptr inbounds i8, ptr %i.lq, i64 %i.jb
  %i.lr = load i8, ptr %.094.i29.lver.orig.epil, align 1, !tbaa !32
  %i.ls = sitofp i8 %i.lr to double
  %i.lt = getelementptr [8 x i8], ptr %i.ib, i64 %indvars.iv.i27.lver.orig.epil.init ; 3 uses
  %i.lu = getelementptr i8, ptr %i.lt, i64 -8
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !89
  %i.lw = call double @llvm.fmuladd.f64(double %i.jd, double %i.lv, double %i.ls)
  %i.lx = getelementptr i8, ptr %i.lt, i64 -16
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !89
  %i.lz = call double @llvm.fmuladd.f64(double %i.io, double %i.ly, double %i.lw)
  store double %i.lz, ptr %i.lt, align 8, !tbaa !89
  br label %.lr.ph106.i33.lver.orig

.lr.ph106.i33.lver.orig:                          ; preds = %.lr.ph.i26.lver.orig.epil.preheader, %.lr.ph106.i33.lver.check.loopexit114.unr-lcssa, %.lr.ph.i26.epil.preheader, %.lr.ph106.i33.lver.check.loopexit.unr-lcssa
  %.1.i36.lver.orig = getelementptr inbounds i8, ptr %i.jk, i64 %indvars.iv124.i15 ; 2 uses
  %i.ma = load i8, ptr %.1.i36.lver.orig, align 1, !tbaa !32
  %i.mb = sitofp i8 %i.ma to double               ; 2 uses
  store double %i.mb, ptr %i.jl, align 8, !tbaa !89
  %.1.i36.lver.orig.1 = getelementptr inbounds i8, ptr %.1.i36.lver.orig, i64 %i.jm ; 3 uses
  %i.mc = load i8, ptr %.1.i36.lver.orig.1, align 1, !tbaa !32
  %i.md = sitofp i8 %i.mc to double
  %i.me = call double @llvm.fmuladd.f64(double %i.jd, double %i.mb, double %i.md)
  store double %i.me, ptr %i.jp, align 8, !tbaa !89
  %load_initial100 = load double, ptr %scevgep103, align 8 ; 2 uses
  br i1 %lcmp.mod138.not.not, label %.lr.ph106.i33.prol, label %.lr.ph106.i33.prol.loopexit

.lr.ph106.i33.prol:                               ; preds = %.lr.ph106.i33.lver.orig
  %.1.i36.prol = getelementptr inbounds i8, ptr %.1.i36.lver.orig.1, i64 %i.jm ; 2 uses
  %i.mf = load i8, ptr %.1.i36.prol, align 1, !tbaa !32
  %i.mg = sitofp i8 %i.mf to double
  %i.mh = call double @llvm.fmuladd.f64(double %i.jd, double %load_initial100, double %i.mg)
  %i.mi = load double, ptr %i.kc, align 8, !tbaa !89
  %i.mj = call double @llvm.fmuladd.f64(double %i.io, double %i.mi, double %i.mh) ; 2 uses
  store double %i.mj, ptr %i.kb, align 8, !tbaa !89
  br label %.lr.ph106.i33.prol.loopexit

.lr.ph106.i33.prol.loopexit:                      ; preds = %.lr.ph106.i33.prol, %.lr.ph106.i33.lver.orig
  %store_forwarded105.unr = phi double [ %load_initial100, %.lr.ph106.i33.lver.orig ], [ %i.mj, %.lr.ph106.i33.prol ]
  %indvars.iv116.i34.unr = phi i64 [ %i.js, %.lr.ph106.i33.lver.orig ], [ %indvars.iv.next117.i37.prol, %.lr.ph106.i33.prol ]
  %.pn100103.i35.unr = phi ptr [ %.1.i36.lver.orig.1, %.lr.ph106.i33.lver.orig ], [ %.1.i36.prol, %.lr.ph106.i33.prol ]
  br i1 %i.kd, label %.lr.ph109.i21.preheader, label %.lr.ph106.i33

.lr.ph.i26:                                       ; preds = %.lr.ph.i26.ph, %.lr.ph.i26
  %store_forwarded100 = phi double [ %i.na, %.lr.ph.i26 ], [ %load_initial99, %.lr.ph.i26.ph ]
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i30.1, %.lr.ph.i26 ], [ 2, %.lr.ph.i26.ph ] ; 3 uses
  %i.mk = phi ptr [ %.094.i29, %.lr.ph.i26 ], [ %i.kg, %.lr.ph.i26.ph ]
  %niter134 = phi i64 [ %niter134.next.1, %.lr.ph.i26 ], [ 0, %.lr.ph.i26.ph ]
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 %i.jb
  %.094.i29 = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.jb ; 4 uses
  %i.mm = load i8, ptr %.094.i29, align 1, !tbaa !32
  %i.mn = sitofp i8 %i.mm to double
  %i.mo = getelementptr [8 x i8], ptr %i.ib, i64 %indvars.iv.i27 ; 2 uses
  %i.mp = call double @llvm.fmuladd.f64(double %i.jd, double %store_forwarded100, double %i.mn)
  %i.mq = getelementptr i8, ptr %i.mo, i64 -16
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !89
  %i.ms = call double @llvm.fmuladd.f64(double %i.io, double %i.mr, double %i.mp) ; 2 uses
  store double %i.ms, ptr %i.mo, align 8, !tbaa !89
  %.094.i29.1 = getelementptr inbounds nuw i8, ptr %.094.i29, i64 %i.jb
  %i.mt = load i8, ptr %.094.i29.1, align 1, !tbaa !32
  %i.mu = sitofp i8 %i.mt to double
  %i.mv = getelementptr [8 x i8], ptr %i.ib, i64 %indvars.iv.i27 ; 2 uses
  %i.mw = getelementptr i8, ptr %i.mv, i64 8
  %i.mx = call double @llvm.fmuladd.f64(double %i.jd, double %i.ms, double %i.mu)
  %i.my = getelementptr i8, ptr %i.mv, i64 -8
  %i.mz = load double, ptr %i.my, align 8, !tbaa !89
  %i.na = call double @llvm.fmuladd.f64(double %i.io, double %i.mz, double %i.mx) ; 3 uses
  store double %i.na, ptr %i.mw, align 8, !tbaa !89
  %indvars.iv.next.i30.1 = add nuw nsw i64 %indvars.iv.i27, 2 ; 2 uses
  %niter134.next.1 = add i64 %niter134, 2         ; 2 uses
  %niter134.ncmp.1 = icmp eq i64 %niter134.next.1, %unroll_iter133
  br i1 %niter134.ncmp.1, label %.lr.ph106.i33.lver.check.loopexit.unr-lcssa, label %.lr.ph.i26, !llvm.loop !104

.preheader.critedge.i16:                          ; preds = %bb.n
  %i.nb = getelementptr inbounds i8, ptr %i.jk, i64 %indvars.iv124.i15 ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !32
  %i.nd = sitofp i8 %i.nc to double               ; 2 uses
  store double %i.nd, ptr %i.jl, align 8, !tbaa !89
  %i.ne = getelementptr inbounds i8, ptr %i.nb, i64 %i.jm
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !32
  %i.ng = sitofp i8 %i.nf to double
  %i.nh = call double @llvm.fmuladd.f64(double %i.jd, double %i.nd, double %i.ng)
  store double %i.nh, ptr %i.jp, align 8, !tbaa !89
  br i1 %i.jr, label %.lr.ph109.i21.preheader, label %._crit_edge110.i17

.lr.ph109.i21.preheader:                          ; preds = %.lr.ph106.i33.prol.loopexit, %.lr.ph106.i33, %.preheader.critedge.i16
  br i1 %i.ke, label %.lr.ph109.i21.epil.preheader, label %.lr.ph109.i21

.lr.ph106.i33:                                    ; preds = %.lr.ph106.i33.prol.loopexit, %.lr.ph106.i33
  %store_forwarded105 = phi double [ %i.nv, %.lr.ph106.i33 ], [ %store_forwarded105.unr, %.lr.ph106.i33.prol.loopexit ]
  %indvars.iv116.i34 = phi i64 [ %indvars.iv.next117.i37.1, %.lr.ph106.i33 ], [ %indvars.iv116.i34.unr, %.lr.ph106.i33.prol.loopexit ] ; 3 uses
  %.pn100103.i35 = phi ptr [ %.1.i36.1, %.lr.ph106.i33 ], [ %.pn100103.i35.unr, %.lr.ph106.i33.prol.loopexit ]
  %.1.i36 = getelementptr inbounds i8, ptr %.pn100103.i35, i64 %i.jm ; 2 uses
  %i.ni = load i8, ptr %.1.i36, align 1, !tbaa !32
  %i.nj = sitofp i8 %i.ni to double
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv116.i34 ; 2 uses
  %i.nl = call double @llvm.fmuladd.f64(double %i.jd, double %store_forwarded105, double %i.nj)
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !89
  %i.no = call double @llvm.fmuladd.f64(double %i.io, double %i.nn, double %i.nl) ; 2 uses
  store double %i.no, ptr %i.nk, align 8, !tbaa !89
  %indvars.iv.next117.i37 = add nsw i64 %indvars.iv116.i34, -1 ; 2 uses
  %.1.i36.1 = getelementptr inbounds i8, ptr %.1.i36, i64 %i.jm ; 2 uses
  %i.np = load i8, ptr %.1.i36.1, align 1, !tbaa !32
  %i.nq = sitofp i8 %i.np to double
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.next117.i37 ; 2 uses
  %i.ns = call double @llvm.fmuladd.f64(double %i.jd, double %i.no, double %i.nq)
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !89
  %i.nv = call double @llvm.fmuladd.f64(double %i.io, double %i.nu, double %i.ns) ; 2 uses
  store double %i.nv, ptr %i.nr, align 8, !tbaa !89
  %indvars.iv.next117.i37.1 = add nsw i64 %indvars.iv116.i34, -2
  %.not.i38.1 = icmp eq i64 %indvars.iv.next117.i37, 0
  br i1 %.not.i38.1, label %.lr.ph109.i21.preheader, label %.lr.ph106.i33, !llvm.loop !105

._crit_edge110.i17.loopexit.unr-lcssa:            ; preds = %.lr.ph109.i21
  br i1 %lcmp.mod140.not, label %._crit_edge110.i17, label %.lr.ph109.i21.epil.preheader

.lr.ph109.i21.epil.preheader:                     ; preds = %._crit_edge110.i17.loopexit.unr-lcssa, %.lr.ph109.i21.preheader
  %indvars.iv119.i22.epil.init = phi i64 [ 0, %.lr.ph109.i21.preheader ], [ %indvars.iv.next120.i24.1, %._crit_edge110.i17.loopexit.unr-lcssa ] ; 2 uses
  %.096107.i23.epil.init = phi ptr [ %i.kh, %.lr.ph109.i21.preheader ], [ %i.os, %._crit_edge110.i17.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod141)
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv119.i22.epil.init
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !89
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv119.i22.epil.init
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !89
  %i.oa = fsub double %i.nx, %i.nz
  %i.ob = fmul double %i.iq, %i.oa
  %i.oc = fptrunc double %i.ob to float
  store float %i.oc, ptr %.096107.i23.epil.init, align 4, !tbaa !91
  br label %._crit_edge110.i17

._crit_edge110.i17:                               ; preds = %.lr.ph109.i21.epil.preheader, %._crit_edge110.i17.loopexit.unr-lcssa, %.preheader.critedge.i16
  %indvars.iv.next125.i18 = add nsw i64 %indvars.iv124.i15, 1 ; 2 uses
  %exitcond128.not.i19 = icmp eq i64 %indvars.iv.next125.i18, %wide.trip.count127.i12
  br i1 %exitcond128.not.i19, label %_ZN2cv8ximgprocL17VerticalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %bb.n, !llvm.loop !106

.lr.ph109.i21:                                    ; preds = %.lr.ph109.i21.preheader, %.lr.ph109.i21
  %indvars.iv119.i22 = phi i64 [ %indvars.iv.next120.i24.1, %.lr.ph109.i21 ], [ 0, %.lr.ph109.i21.preheader ] ; 4 uses
  %.096107.i23 = phi ptr [ %i.os, %.lr.ph109.i21 ], [ %i.kh, %.lr.ph109.i21.preheader ] ; 2 uses
  %niter143 = phi i64 [ %niter143.next.1, %.lr.ph109.i21 ], [ 0, %.lr.ph109.i21.preheader ]
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv119.i22
  %i.oe = load double, ptr %i.od, align 8, !tbaa !89
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv119.i22
  %i.og = load double, ptr %i.of, align 8, !tbaa !89
  %i.oh = fsub double %i.oe, %i.og
  %i.oi = fmul double %i.iq, %i.oh
  %i.oj = fptrunc double %i.oi to float
  store float %i.oj, ptr %.096107.i23, align 4, !tbaa !91
  %indvars.iv.next120.i24 = or disjoint i64 %indvars.iv119.i22, 1 ; 2 uses
  %i.ok = getelementptr inbounds [4 x i8], ptr %.096107.i23, i64 %i.jb ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.next120.i24
  %i.om = load double, ptr %i.ol, align 8, !tbaa !89
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv.next120.i24
  %i.oo = load double, ptr %i.on, align 8, !tbaa !89
  %i.op = fsub double %i.om, %i.oo
  %i.oq = fmul double %i.iq, %i.op
  %i.or = fptrunc double %i.oq to float
  store float %i.or, ptr %i.ok, align 4, !tbaa !91
  %indvars.iv.next120.i24.1 = add nuw nsw i64 %indvars.iv119.i22, 2 ; 2 uses
  %i.os = getelementptr inbounds [4 x i8], ptr %i.ok, i64 %i.jb ; 2 uses
  %niter143.next.1 = add i64 %niter143, 2         ; 2 uses
  %niter143.ncmp.1 = icmp eq i64 %niter143.next.1, %unroll_iter142
  br i1 %niter143.ncmp.1, label %._crit_edge110.i17.loopexit.unr-lcssa, label %.lr.ph109.i21, !llvm.loop !107

_ZN2cv8ximgprocL17VerticalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit: ; preds = %._crit_edge110.i17, %bb.l
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !113, !nonnull !65, !align !87
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !40
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !41
  tail call fastcc void @_ZN2cv8ximgprocL17VerticalIIRFilterIsEEvRNS_3MatES3_RKNS_5RangeEdd(ptr noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noundef nonnull align 8 dereferenceable(208) %i.ou, ptr noundef nonnull align 4 dereferenceable(8) %1, double noundef %i.ow, double noundef %i.oy)
  br label %bb.t

bb.p:                                             ; preds = %bb.f
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !113, !nonnull !65, !align !87
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !40
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !41
  tail call fastcc void @_ZN2cv8ximgprocL17VerticalIIRFilterIsEEvRNS_3MatES3_RKNS_5RangeEdd(ptr noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noundef nonnull align 8 dereferenceable(208) %i.pa, ptr noundef nonnull align 4 dereferenceable(8) %1, double noundef %i.pc, double noundef %i.pe)
  br label %bb.t

bb.q:                                             ; preds = %bb.f
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !113, !nonnull !65, !align !87
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !40 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !41 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !51
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !43
  %..i39 = tail call i32 @llvm.smax.i32(i32 %i.pm, i32 %i.po) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 1, i32 noundef %..i39, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1, i32 noundef %..i39, i32 noundef 6)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.pp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !88 ; 12 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !88 ; 11 uses
  %i.pt = load i32, ptr %i.pl, align 8, !tbaa !51 ; 10 uses
  %i.pu = load i32, ptr %i.pn, align 4, !tbaa !43
  %i.pv = fneg double %i.pi                       ; 2 uses
  %i.pw = call double @exp(double noundef %i.pv) #14
  %i.px = call double @cosh(double noundef %i.pk) #14
  %i.py = call double @exp(double noundef %i.pv) #14
  %i.pz = fmul double %i.py, 2.000000e+00
  %i.qa = call double @cosh(double noundef %i.pk) #14
  %i.qb = fmul double %i.pi, -2.000000e+00
  %i.qc = call double @exp(double noundef %i.qb) #14
  %i.qd = fneg double %i.qc                       ; 10 uses
  %i.qe = call double @llvm.fmuladd.f64(double %i.pz, double %i.qa, double %i.qd)
  %i.qf = fadd double %i.qe, -1.000000e+00        ; 5 uses
  %i.qg = load i32, ptr %1, align 4, !tbaa !45    ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !46 ; 2 uses
  %i.qj = icmp slt i32 %i.qg, %i.qi
  br i1 %i.qj, label %.lr.ph113.i40, label %_ZN2cv8ximgprocL17VerticalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit

.lr.ph113.i40:                                    ; preds = %bb.r
  %i.qk = fmul double %i.pw, -2.000000e+00
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !88 ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !88 ; 2 uses
  %i.qq = sext i32 %i.pu to i64                   ; 12 uses
  %i.qr = fneg double %i.px
  %i.qs = fmul double %i.qk, %i.qr                ; 12 uses
  %i.qt = getelementptr i8, ptr %i.pq, i64 8      ; 3 uses
  %i.qu = icmp sgt i32 %i.pt, 2
  %i.qv = add nsw i32 %i.pt, -1
  %i.qw = load i64, ptr %i.qn, align 8, !tbaa !55
  %i.qx = sext i32 %i.qv to i64                   ; 2 uses
  %i.qy = mul i64 %i.qw, %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qy ; 3 uses
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.ps, i64 %i.qx ; 3 uses
  %i.rb = sub nsw i64 0, %i.qq                    ; 6 uses
  %i.rc = sext i32 %i.pt to i64
  %i.rd = getelementptr [8 x i8], ptr %i.ps, i64 %i.rc
  %i.re = getelementptr i8, ptr %i.rd, i64 -16    ; 3 uses
  %i.rf = add i32 %i.pt, -3                       ; 2 uses
  %i.rg = zext i32 %i.rf to i64                   ; 5 uses
  %i.rh = sext i32 %i.qg to i64                   ; 3 uses
  %wide.trip.count127.i41 = sext i32 %i.qi to i64 ; 3 uses
  %wide.trip.count.i42 = zext i32 %i.pt to i64    ; 4 uses
  br i1 %i.qu, label %.lr.ph.i55.preheader.us.preheader, label %.lr.ph113.i40.split

.lr.ph.i55.preheader.us.preheader:                ; preds = %.lr.ph113.i40
  %i.ri = shl nuw nsw i64 %i.rg, 3
  %i.rj = getelementptr i8, ptr %i.ps, i64 %i.ri
  %scevgep108 = getelementptr i8, ptr %i.rj, i64 8
  %xtraiter = and i64 %wide.trip.count.i42, 1
  %i.rk = icmp eq i32 %i.pt, 3
  %i.rl = and i64 %wide.trip.count.i42, 2147483646
  %i.rm = add nsw i64 %i.rl, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod117 = trunc i32 %i.pt to i1
  %i.rn = and i64 %i.rg, 1
  %lcmp.mod119.not.not = icmp eq i64 %i.rn, 0
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.rg ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %indvars.iv.next117.i64.us.prol = add nsw i64 %i.rg, -1
  %i.rq = icmp eq i32 %i.rf, 0
  %xtraiter120 = and i64 %wide.trip.count.i42, 1
  %unroll_iter123 = and i64 %wide.trip.count.i42, 2147483646
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  %lcmp.mod122 = trunc i32 %i.pt to i1
  br label %.lr.ph.i55.preheader.us

.lr.ph.i55.preheader.us:                          ; preds = %.lr.ph.i55.preheader.us.preheader, %._crit_edge110.i46.loopexit.us
end_hunk_0
