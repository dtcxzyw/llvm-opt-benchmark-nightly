Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/paillou_filter?download=true
inline.NumInlined: 264
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv8ximgproc16GradientPaillouXERKNS_11_InputArrayERKNS_12_OutputArrayEdd:bb.a
  %i.dt = load ptr, ptr %4, align 8, !tbaa !18    ; 3 uses
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %.not4.i.i.i65 = icmp eq ptr %i.dt, %i.du
  br i1 %.not4.i.i.i65, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71, label %.lr.ph.i.i.i66

.lr.ph.i.i.i66:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64, %.lr.ph.i.i.i66
  %.05.i.i.i67 = phi ptr [ %i.dv, %.lr.ph.i.i.i66 ], [ %i.dt, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i67) #14
  %i.dv = getelementptr inbounds nuw i8, ptr %.05.i.i.i67, i64 208 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.dv, %i.du
  br i1 %.not.i.i.i68, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i69, label %.lr.ph.i.i.i66, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i69: ; preds = %.lr.ph.i.i.i66
  %.pr.i70 = load ptr, ptr %4, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i69, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64
  %i.dw = phi ptr [ %.pr.i70, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i69 ], [ %i.dt, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit64 ] ; 3 uses
  %.not.i.i1.i72 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i1.i72, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit73, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !19
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #16
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit73

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit73:        ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i71, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

bb.ao:                                            ; preds = %._crit_edge
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %bb.ap

bb.ap:                                            ; preds = %bb.q, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.body, %bb.ao
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.ao ], [ %.pn42.pn.pn, %.body ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn38, %bb.t ], [ %.pn36, %bb.q ]
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
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !88 ; 12 uses
  %i.bb = load i32, ptr %i.at, align 8, !tbaa !51 ; 10 uses
  %i.bc = load i32, ptr %i.av, align 4, !tbaa !43 ; 3 uses
  %i.bd = fneg double %i.aq                       ; 2 uses
  %i.be = call double @exp(double noundef %i.bd) #14
  %i.bf = call double @cosh(double noundef %i.as) #14
  %i.bg = call double @exp(double noundef %i.bd) #14
  %i.bh = fmul double %i.bg, 2.000000e+00
  %i.bi = call double @cosh(double noundef %i.as) #14
  %i.bj = fmul double %i.aq, -2.000000e+00
  %i.bk = call double @exp(double noundef %i.bj) #14
  %i.bl = fneg double %i.bk                       ; 14 uses
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
  %i.by = sext i32 %i.bc to i64                   ; 8 uses
  %i.bz = fneg double %i.bf
  %i.ca = fmul double %i.bs, %i.bz                ; 15 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cc = icmp sgt i32 %i.bb, 2
  %i.cd = add nsw i32 %i.bb, -1
  %i.ce = load i64, ptr %i.bv, align 8, !tbaa !55
  %i.cf = sext i32 %i.cd to i64                   ; 2 uses
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.cf ; 2 uses
  %i.cj = sub nsw i64 0, %i.by                    ; 8 uses
  %i.ck = sext i32 %i.bb to i64
  %i.cl = getelementptr [8 x i8], ptr %i.ba, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -16    ; 2 uses
  %i.cn = add i32 %i.bb, -3                       ; 3 uses
  %i.co = icmp sgt i32 %i.bb, 0
  %i.cp = zext i32 %i.cn to i64                   ; 9 uses
  %i.cq = sext i32 %i.bo to i64
  %wide.trip.count127.i = sext i32 %i.bq to i64
  %wide.trip.count.i = zext i32 %i.bb to i64      ; 6 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 8
  %i.cr = shl nuw nsw i64 %i.cp, 3
  %i.cs = getelementptr i8, ptr %i.ba, i64 %i.cr
  %scevgep95 = getelementptr i8, ptr %i.cs, i64 8
  %i.ct = add nsw i64 %wide.trip.count.i, -2      ; 2 uses
  %i.cu = add nsw i64 %wide.trip.count.i, -3      ; 2 uses
  %ident.check.not = icmp eq i32 %i.bc, 1
  %xtraiter146 = and i64 %wide.trip.count.i, 1
  %i.cv = icmp eq i64 %i.cu, 0
  %unroll_iter149 = and i64 %i.ct, -2
  %8 = shl nsw i64 %i.by, 1
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  %lcmp.mod148 = trunc i32 %i.bb to i1
  %9 = shl nsw i64 %i.by, 1
  %xtraiter151 = and i64 %wide.trip.count.i, 1
  %i.cw = icmp eq i64 %i.cu, 0
  %unroll_iter154 = and i64 %i.ct, -2
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  %lcmp.mod153 = trunc i32 %i.bb to i1
  %ident.check93.not = icmp eq i32 %i.bc, 1
  %i.cx = and i64 %i.cp, 1
  %lcmp.mod157.not.not = icmp eq i64 %i.cx, 0
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cp ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %indvars.iv.next117.i.lver.orig.prol = add nsw i64 %i.cp, -1
  %i.db = icmp eq i32 %i.cn, 0
  %i.dc = and i64 %i.cp, 1
  %lcmp.mod159.not.not = icmp eq i64 %i.dc, 0
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cp ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %indvars.iv.next117.i.prol = add nsw i64 %i.cp, -1
  %i.df = icmp eq i32 %i.cn, 0
  %xtraiter160 = and i64 %wide.trip.count.i, 1
  %i.dg = icmp eq i32 %i.bb, 1
  %unroll_iter163 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  %lcmp.mod162 = trunc i32 %i.bb to i1
  br label %bb.j

common.resume:                                    ; preds = %bb.s, %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.dh, %bb.i ], [ %i.lj, %bb.m ], [ %i.yh, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %common.resume

bb.j:                                             ; preds = %._crit_edge110.i, %.lr.ph113.i
  %indvars.iv124.i = phi i64 [ %i.cq, %.lr.ph113.i ], [ %indvars.iv.next125.i, %._crit_edge110.i ] ; 5 uses
  %i.di = getelementptr inbounds i8, ptr %i.bu, i64 %indvars.iv124.i ; 6 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv124.i ; 2 uses
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !32
  %i.dl = uitofp i8 %i.dk to double               ; 3 uses
  store double %i.dl, ptr %i.ay, align 8, !tbaa !89
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 %i.by
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !32
  %i.do = uitofp i8 %i.dn to double
  %i.dp = call double @llvm.fmuladd.f64(double %i.ca, double %i.dl, double %i.do)
  %i.dq = call double @llvm.fmuladd.f64(double %i.bl, double %i.dl, double %i.dp)
  store double %i.dq, ptr %i.cb, align 8, !tbaa !89
  br i1 %i.cc, label %.lr.ph.i.lver.check, label %.preheader.critedge.i

.lr.ph.i.lver.check:                              ; preds = %bb.j
  br i1 %ident.check.not, label %.lr.ph.i.ph, label %.lr.ph.i.lver.orig.preheader

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  br i1 %i.cv, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig.preheader, %.lr.ph.i.lver.orig
  %indvars.iv.i.lver.orig = phi i64 [ %indvars.iv.next.i.lver.orig.1, %.lr.ph.i.lver.orig ], [ 2, %.lr.ph.i.lver.orig.preheader ] ; 3 uses
  %i.dr = phi ptr [ %.094.i.lver.orig, %.lr.ph.i.lver.orig ], [ %i.di, %.lr.ph.i.lver.orig.preheader ]
  %niter150 = phi i64 [ %niter150.next.1, %.lr.ph.i.lver.orig ], [ 0, %.lr.ph.i.lver.orig.preheader ]
  %.094.i.lver.orig = getelementptr inbounds i8, ptr %i.dr, i64 %8 ; 4 uses
  %i.ds = load i8, ptr %.094.i.lver.orig, align 1, !tbaa !32
  %i.dt = uitofp i8 %i.ds to double
  %i.du = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.lver.orig ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 -8
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !89 ; 2 uses
  %i.dx = call double @llvm.fmuladd.f64(double %i.ca, double %i.dw, double %i.dt)
  %i.dy = getelementptr i8, ptr %i.du, i64 -16
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !89
  %i.ea = call double @llvm.fmuladd.f64(double %i.bl, double %i.dz, double %i.dx) ; 2 uses
  store double %i.ea, ptr %i.du, align 8, !tbaa !89
  %.094.i.lver.orig.1 = getelementptr inbounds i8, ptr %.094.i.lver.orig, i64 %i.by
  %i.eb = load i8, ptr %.094.i.lver.orig.1, align 1, !tbaa !32
  %i.ec = uitofp i8 %i.eb to double
  %i.ed = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.lver.orig
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  %i.ef = call double @llvm.fmuladd.f64(double %i.ca, double %i.ea, double %i.ec)
  %i.eg = call double @llvm.fmuladd.f64(double %i.bl, double %i.dw, double %i.ef)
  store double %i.eg, ptr %i.ee, align 8, !tbaa !89
  %indvars.iv.next.i.lver.orig.1 = add nuw nsw i64 %indvars.iv.i.lver.orig, 2 ; 2 uses
  %niter150.next.1 = add i64 %niter150, 2         ; 2 uses
  %niter150.ncmp.1 = icmp eq i64 %niter150.next.1, %unroll_iter149
  br i1 %niter150.ncmp.1, label %.lr.ph106.i.lver.check.loopexit114.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !100

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load double, ptr %scevgep, align 8 ; 2 uses
  br i1 %i.cw, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph106.i.lver.check.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  br i1 %lcmp.mod152.not, label %.lr.ph106.i.lver.check, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph106.i.lver.check.loopexit.unr-lcssa, %.lr.ph.i.ph
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph.i.ph ], [ %i.gw, %.lr.ph106.i.lver.check.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 2, %.lr.ph.i.ph ], [ %indvars.iv.next.i.1, %.lr.ph106.i.lver.check.loopexit.unr-lcssa ]
  %i.eh = phi ptr [ %i.di, %.lr.ph.i.ph ], [ %.094.i, %.lr.ph106.i.lver.check.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod153)
  %.094.i.epil = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.ei = load i8, ptr %.094.i.epil, align 1, !tbaa !32
  %i.ej = uitofp i8 %i.ei to double
  %i.ek = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.el = call double @llvm.fmuladd.f64(double %i.ca, double %store_forwarded.epil.init, double %i.ej)
  %i.em = getelementptr i8, ptr %i.ek, i64 -16
  %i.en = load double, ptr %i.em, align 8, !tbaa !89
  %i.eo = call double @llvm.fmuladd.f64(double %i.bl, double %i.en, double %i.el)
  store double %i.eo, ptr %i.ek, align 8, !tbaa !89
  br label %.lr.ph106.i.lver.check

.lr.ph106.i.lver.check.loopexit114.unr-lcssa:     ; preds = %.lr.ph.i.lver.orig
  br i1 %lcmp.mod147.not, label %.lr.ph106.i.lver.check, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.lr.ph106.i.lver.check.loopexit114.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %indvars.iv.i.lver.orig.epil.init = phi i64 [ 2, %.lr.ph.i.lver.orig.preheader ], [ %indvars.iv.next.i.lver.orig.1, %.lr.ph106.i.lver.check.loopexit114.unr-lcssa ]
  %i.ep = phi ptr [ %i.di, %.lr.ph.i.lver.orig.preheader ], [ %.094.i.lver.orig, %.lr.ph106.i.lver.check.loopexit114.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod148)
  %.094.i.lver.orig.epil = getelementptr inbounds i8, ptr %i.ep, i64 %9
  %i.eq = load i8, ptr %.094.i.lver.orig.epil, align 1, !tbaa !32
  %i.er = uitofp i8 %i.eq to double
  %i.es = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.lver.orig.epil.init ; 3 uses
  %i.et = getelementptr i8, ptr %i.es, i64 -8
  %i.eu = load double, ptr %i.et, align 8, !tbaa !89
  %i.ev = call double @llvm.fmuladd.f64(double %i.ca, double %i.eu, double %i.er)
  %i.ew = getelementptr i8, ptr %i.es, i64 -16
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !89
  %i.ey = call double @llvm.fmuladd.f64(double %i.bl, double %i.ex, double %i.ev)
  store double %i.ey, ptr %i.es, align 8, !tbaa !89
  br label %.lr.ph106.i.lver.check

.lr.ph106.i.lver.check:                           ; preds = %.lr.ph.i.lver.orig.epil.preheader, %.lr.ph106.i.lver.check.loopexit114.unr-lcssa, %.lr.ph.i.epil.preheader, %.lr.ph106.i.lver.check.loopexit.unr-lcssa
  %i.ez = getelementptr inbounds i8, ptr %i.ch, i64 %indvars.iv124.i ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !32
  %i.fb = uitofp i8 %i.fa to double               ; 2 uses
  store double %i.fb, ptr %i.ci, align 8, !tbaa !89
  %i.fc = getelementptr inbounds i8, ptr %i.ez, i64 %i.cj ; 5 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !32
  %i.fe = uitofp i8 %i.fd to double
  %i.ff = call double @llvm.fmuladd.f64(double %i.ca, double %i.fb, double %i.fe)
  store double %i.ff, ptr %i.cm, align 8, !tbaa !89
  br i1 %ident.check93.not, label %.lr.ph106.i.ph, label %.lr.ph106.i.lver.orig.preheader

.lr.ph106.i.lver.orig.preheader:                  ; preds = %.lr.ph106.i.lver.check
  br i1 %lcmp.mod157.not.not, label %.lr.ph106.i.lver.orig.prol, label %.lr.ph106.i.lver.orig.prol.loopexit

.lr.ph106.i.lver.orig.prol:                       ; preds = %.lr.ph106.i.lver.orig.preheader
  %.1.i.lver.orig.prol = getelementptr inbounds i8, ptr %i.fc, i64 %i.cj ; 2 uses
  %i.fg = load i8, ptr %.1.i.lver.orig.prol, align 1, !tbaa !32
  %i.fh = uitofp i8 %i.fg to double
  %i.fi = load double, ptr %i.cz, align 8, !tbaa !89
  %i.fj = call double @llvm.fmuladd.f64(double %i.ca, double %i.fi, double %i.fh)
  %i.fk = load double, ptr %i.da, align 8, !tbaa !89
  %i.fl = call double @llvm.fmuladd.f64(double %i.bl, double %i.fk, double %i.fj)
  store double %i.fl, ptr %i.cy, align 8, !tbaa !89
  br label %.lr.ph106.i.lver.orig.prol.loopexit

.lr.ph106.i.lver.orig.prol.loopexit:              ; preds = %.lr.ph106.i.lver.orig.prol, %.lr.ph106.i.lver.orig.preheader
  %indvars.iv116.i.lver.orig.unr = phi i64 [ %i.cp, %.lr.ph106.i.lver.orig.preheader ], [ %indvars.iv.next117.i.lver.orig.prol, %.lr.ph106.i.lver.orig.prol ]
  %.pn100103.i.lver.orig.unr = phi ptr [ %i.fc, %.lr.ph106.i.lver.orig.preheader ], [ %.1.i.lver.orig.prol, %.lr.ph106.i.lver.orig.prol ]
  br i1 %i.db, label %.lr.ph109.i.preheader, label %.lr.ph106.i.lver.orig

.lr.ph106.i.lver.orig:                            ; preds = %.lr.ph106.i.lver.orig.prol.loopexit, %.lr.ph106.i.lver.orig
  %indvars.iv116.i.lver.orig = phi i64 [ %indvars.iv.next117.i.lver.orig.1, %.lr.ph106.i.lver.orig ], [ %indvars.iv116.i.lver.orig.unr, %.lr.ph106.i.lver.orig.prol.loopexit ] ; 3 uses
  %.pn100103.i.lver.orig = phi ptr [ %.1.i.lver.orig.1, %.lr.ph106.i.lver.orig ], [ %.pn100103.i.lver.orig.unr, %.lr.ph106.i.lver.orig.prol.loopexit ]
  %.1.i.lver.orig = getelementptr inbounds i8, ptr %.pn100103.i.lver.orig, i64 %i.cj ; 2 uses
  %i.fm = load i8, ptr %.1.i.lver.orig, align 1, !tbaa !32
  %i.fn = uitofp i8 %i.fm to double
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv116.i.lver.orig ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !89 ; 2 uses
  %i.fr = call double @llvm.fmuladd.f64(double %i.ca, double %i.fq, double %i.fn)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !89
  %i.fu = call double @llvm.fmuladd.f64(double %i.bl, double %i.ft, double %i.fr)
  store double %i.fu, ptr %i.fo, align 8, !tbaa !89
  %indvars.iv.next117.i.lver.orig = add nsw i64 %indvars.iv116.i.lver.orig, -1 ; 2 uses
  %.1.i.lver.orig.1 = getelementptr inbounds i8, ptr %.1.i.lver.orig, i64 %i.cj ; 2 uses
  %i.fv = load i8, ptr %.1.i.lver.orig.1, align 1, !tbaa !32
  %i.fw = uitofp i8 %i.fv to double
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next117.i.lver.orig ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !89
  %i.ga = call double @llvm.fmuladd.f64(double %i.ca, double %i.fz, double %i.fw)
  %i.gb = call double @llvm.fmuladd.f64(double %i.bl, double %i.fq, double %i.ga)
  store double %i.gb, ptr %i.fx, align 8, !tbaa !89
  %indvars.iv.next117.i.lver.orig.1 = add nsw i64 %indvars.iv116.i.lver.orig, -2
  %.not.i.lver.orig.1 = icmp eq i64 %indvars.iv.next117.i.lver.orig, 0
  br i1 %.not.i.lver.orig.1, label %.lr.ph109.i.preheader, label %.lr.ph106.i.lver.orig, !llvm.loop !101

.lr.ph106.i.ph:                                   ; preds = %.lr.ph106.i.lver.check
  %load_initial96 = load double, ptr %scevgep95, align 8 ; 2 uses
  br i1 %lcmp.mod159.not.not, label %.lr.ph106.i.prol, label %.lr.ph106.i.prol.loopexit

.lr.ph106.i.prol:                                 ; preds = %.lr.ph106.i.ph
  %.1.i.prol = getelementptr inbounds i8, ptr %i.fc, i64 %i.cj ; 2 uses
  %i.gc = load i8, ptr %.1.i.prol, align 1, !tbaa !32
  %i.gd = uitofp i8 %i.gc to double
  %i.ge = call double @llvm.fmuladd.f64(double %i.ca, double %load_initial96, double %i.gd)
  %i.gf = load double, ptr %i.de, align 8, !tbaa !89
  %i.gg = call double @llvm.fmuladd.f64(double %i.bl, double %i.gf, double %i.ge) ; 2 uses
  store double %i.gg, ptr %i.dd, align 8, !tbaa !89
  br label %.lr.ph106.i.prol.loopexit

.lr.ph106.i.prol.loopexit:                        ; preds = %.lr.ph106.i.prol, %.lr.ph106.i.ph
  %store_forwarded97.unr = phi double [ %load_initial96, %.lr.ph106.i.ph ], [ %i.gg, %.lr.ph106.i.prol ]
  %indvars.iv116.i.unr = phi i64 [ %i.cp, %.lr.ph106.i.ph ], [ %indvars.iv.next117.i.prol, %.lr.ph106.i.prol ]
  %.pn100103.i.unr = phi ptr [ %i.fc, %.lr.ph106.i.ph ], [ %.1.i.prol, %.lr.ph106.i.prol ]
  br i1 %i.df, label %.lr.ph109.i.preheader, label %.lr.ph106.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.ph, %.lr.ph.i
  %store_forwarded = phi double [ %i.gw, %.lr.ph.i ], [ %load_initial, %.lr.ph.i.ph ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 2, %.lr.ph.i.ph ] ; 3 uses
  %i.gh = phi ptr [ %.094.i, %.lr.ph.i ], [ %i.di, %.lr.ph.i.ph ]
  %niter155 = phi i64 [ %niter155.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.ph ]
  %.094.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 2 ; 4 uses
  %i.gi = load i8, ptr %.094.i, align 1, !tbaa !32
  %i.gj = uitofp i8 %i.gi to double
  %i.gk = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i ; 2 uses
  %i.gl = call double @llvm.fmuladd.f64(double %i.ca, double %store_forwarded, double %i.gj)
  %i.gm = getelementptr i8, ptr %i.gk, i64 -16
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !89
  %i.go = call double @llvm.fmuladd.f64(double %i.bl, double %i.gn, double %i.gl) ; 2 uses
  store double %i.go, ptr %i.gk, align 8, !tbaa !89
  %.094.i.1 = getelementptr inbounds nuw i8, ptr %.094.i, i64 %i.by
  %i.gp = load i8, ptr %.094.i.1, align 1, !tbaa !32
  %i.gq = uitofp i8 %i.gp to double
  %i.gr = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  %i.gt = call double @llvm.fmuladd.f64(double %i.ca, double %i.go, double %i.gq)
  %i.gu = getelementptr i8, ptr %i.gr, i64 -8
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !89
  %i.gw = call double @llvm.fmuladd.f64(double %i.bl, double %i.gv, double %i.gt) ; 3 uses
  store double %i.gw, ptr %i.gs, align 8, !tbaa !89
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter155.next.1 = add i64 %niter155, 2         ; 2 uses
  %niter155.ncmp.1 = icmp eq i64 %niter155.next.1, %unroll_iter154
  br i1 %niter155.ncmp.1, label %.lr.ph106.i.lver.check.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !100

.preheader.critedge.i:                            ; preds = %bb.j
  %i.gx = getelementptr inbounds i8, ptr %i.ch, i64 %indvars.iv124.i ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !32
  %i.gz = uitofp i8 %i.gy to double               ; 2 uses
  store double %i.gz, ptr %i.ci, align 8, !tbaa !89
  %i.ha = getelementptr inbounds i8, ptr %i.gx, i64 %i.cj
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !32
  %i.hc = uitofp i8 %i.hb to double
  %i.hd = call double @llvm.fmuladd.f64(double %i.ca, double %i.gz, double %i.hc)
  store double %i.hd, ptr %i.cm, align 8, !tbaa !89
  br i1 %i.co, label %.lr.ph109.i.preheader, label %._crit_edge110.i

.lr.ph109.i.preheader:                            ; preds = %.lr.ph106.i.lver.orig.prol.loopexit, %.lr.ph106.i.lver.orig, %.lr.ph106.i.prol.loopexit, %.lr.ph106.i, %.preheader.critedge.i
  br i1 %i.dg, label %.lr.ph109.i.epil.preheader, label %.lr.ph109.i

.lr.ph106.i:                                      ; preds = %.lr.ph106.i.prol.loopexit, %.lr.ph106.i
  %store_forwarded97 = phi double [ %i.hr, %.lr.ph106.i ], [ %store_forwarded97.unr, %.lr.ph106.i.prol.loopexit ]
  %indvars.iv116.i = phi i64 [ %indvars.iv.next117.i.1, %.lr.ph106.i ], [ %indvars.iv116.i.unr, %.lr.ph106.i.prol.loopexit ] ; 3 uses
  %.pn100103.i = phi ptr [ %.1.i.1, %.lr.ph106.i ], [ %.pn100103.i.unr, %.lr.ph106.i.prol.loopexit ]
  %.1.i = getelementptr inbounds i8, ptr %.pn100103.i, i64 %i.cj ; 2 uses
  %i.he = load i8, ptr %.1.i, align 1, !tbaa !32
  %i.hf = uitofp i8 %i.he to double
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv116.i ; 2 uses
  %i.hh = call double @llvm.fmuladd.f64(double %i.ca, double %store_forwarded97, double %i.hf)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !89
  %i.hk = call double @llvm.fmuladd.f64(double %i.bl, double %i.hj, double %i.hh) ; 2 uses
  store double %i.hk, ptr %i.hg, align 8, !tbaa !89
  %indvars.iv.next117.i = add nsw i64 %indvars.iv116.i, -1 ; 2 uses
  %.1.i.1 = getelementptr inbounds i8, ptr %.1.i, i64 %i.cj ; 2 uses
  %i.hl = load i8, ptr %.1.i.1, align 1, !tbaa !32
  %i.hm = uitofp i8 %i.hl to double
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next117.i ; 2 uses
  %i.ho = call double @llvm.fmuladd.f64(double %i.ca, double %i.hk, double %i.hm)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !89
  %i.hr = call double @llvm.fmuladd.f64(double %i.bl, double %i.hq, double %i.ho) ; 2 uses
  store double %i.hr, ptr %i.hn, align 8, !tbaa !89
  %indvars.iv.next117.i.1 = add nsw i64 %indvars.iv116.i, -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next117.i, 0
  br i1 %.not.i.1, label %.lr.ph109.i.preheader, label %.lr.ph106.i, !llvm.loop !101

._crit_edge110.i.loopexit.unr-lcssa:              ; preds = %.lr.ph109.i
  br i1 %lcmp.mod161.not, label %._crit_edge110.i, label %.lr.ph109.i.epil.preheader

.lr.ph109.i.epil.preheader:                       ; preds = %._crit_edge110.i.loopexit.unr-lcssa, %.lr.ph109.i.preheader
  %indvars.iv119.i.epil.init = phi i64 [ 0, %.lr.ph109.i.preheader ], [ %indvars.iv.next120.i.1, %._crit_edge110.i.loopexit.unr-lcssa ] ; 2 uses
  %.096107.i.epil.init = phi ptr [ %i.dj, %.lr.ph109.i.preheader ], [ %i.io, %._crit_edge110.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod162)
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv119.i.epil.init
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !89
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv119.i.epil.init
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !89
  %i.hw = fsub double %i.ht, %i.hv
  %i.hx = fmul double %i.bn, %i.hw
  %i.hy = fptrunc double %i.hx to float
  store float %i.hy, ptr %.096107.i.epil.init, align 4, !tbaa !91
  br label %._crit_edge110.i

._crit_edge110.i:                                 ; preds = %.lr.ph109.i.epil.preheader, %._crit_edge110.i.loopexit.unr-lcssa, %.preheader.critedge.i
  %indvars.iv.next125.i = add nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next125.i, %wide.trip.count127.i
  br i1 %exitcond128.not.i, label %_ZN2cv8ximgprocL17VerticalIIRFilterIhEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %bb.j, !llvm.loop !102

.lr.ph109.i:                                      ; preds = %.lr.ph109.i.preheader, %.lr.ph109.i
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.1, %.lr.ph109.i ], [ 0, %.lr.ph109.i.preheader ] ; 4 uses
  %.096107.i = phi ptr [ %i.io, %.lr.ph109.i ], [ %i.dj, %.lr.ph109.i.preheader ] ; 2 uses
  %niter164 = phi i64 [ %niter164.next.1, %.lr.ph109.i ], [ 0, %.lr.ph109.i.preheader ]
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv119.i
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !89
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv119.i
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !89
  %i.id = fsub double %i.ia, %i.ic
  %i.ie = fmul double %i.bn, %i.id
  %i.if = fptrunc double %i.ie to float
  store float %i.if, ptr %.096107.i, align 4, !tbaa !91
  %indvars.iv.next120.i = or disjoint i64 %indvars.iv119.i, 1 ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %.096107.i, i64 %i.by ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next120.i
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !89
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next120.i
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !89
  %i.il = fsub double %i.ii, %i.ik
  %i.im = fmul double %i.bn, %i.il
  %i.in = fptrunc double %i.im to float
  store float %i.in, ptr %i.ig, align 4, !tbaa !91
  %indvars.iv.next120.i.1 = add nuw nsw i64 %indvars.iv119.i, 2 ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.by ; 2 uses
  %niter164.next.1 = add i64 %niter164, 2         ; 2 uses
  %niter164.ncmp.1 = icmp eq i64 %niter164.next.1, %unroll_iter163
  br i1 %niter164.ncmp.1, label %._crit_edge110.i.loopexit.unr-lcssa, label %.lr.ph109.i, !llvm.loop !103

_ZN2cv8ximgprocL17VerticalIIRFilterIhEEvRNS_3MatES3_RKNS_5RangeEdd.exit: ; preds = %._crit_edge110.i, %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.t

bb.k:                                             ; preds = %bb.f
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !113, !nonnull !65, !align !87
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.is = load double, ptr %i.ir, align 8, !tbaa !40 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.iu = load double, ptr %i.it, align 8, !tbaa !41 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !51
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !43
  %..i10 = tail call i32 @llvm.smax.i32(i32 %i.iw, i32 %i.iy) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 1, i32 noundef %..i10, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef 1, i32 noundef %..i10, i32 noundef 6)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !88 ; 12 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !88 ; 12 uses
  %i.jd = load i32, ptr %i.iv, align 8, !tbaa !51 ; 10 uses
  %i.je = load i32, ptr %i.ix, align 4, !tbaa !43 ; 3 uses
  %i.jf = fneg double %i.is                       ; 2 uses
  %i.jg = call double @exp(double noundef %i.jf) #14
  %i.jh = call double @cosh(double noundef %i.iu) #14
  %i.ji = call double @exp(double noundef %i.jf) #14
  %i.jj = fmul double %i.ji, 2.000000e+00
  %i.jk = call double @cosh(double noundef %i.iu) #14
  %i.jl = fmul double %i.is, -2.000000e+00
  %i.jm = call double @exp(double noundef %i.jl) #14
  %i.jn = fneg double %i.jm                       ; 14 uses
  %i.jo = call double @llvm.fmuladd.f64(double %i.jj, double %i.jk, double %i.jn)
  %i.jp = fadd double %i.jo, -1.000000e+00        ; 3 uses
  %i.jq = load i32, ptr %1, align 4, !tbaa !45    ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !46 ; 2 uses
  %i.jt = icmp slt i32 %i.jq, %i.js
  br i1 %i.jt, label %.lr.ph113.i11, label %_ZN2cv8ximgprocL17VerticalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit

.lr.ph113.i11:                                    ; preds = %bb.l
  %i.ju = fmul double %i.jg, -2.000000e+00
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !88 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.jy = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !88
  %i.ka = sext i32 %i.je to i64                   ; 8 uses
  %i.kb = fneg double %i.jh
  %i.kc = fmul double %i.ju, %i.kb                ; 15 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.ke = icmp sgt i32 %i.jd, 2
  %i.kf = add nsw i32 %i.jd, -1
  %i.kg = load i64, ptr %i.jx, align 8, !tbaa !55
  %i.kh = sext i32 %i.kf to i64                   ; 2 uses
  %i.ki = mul i64 %i.kg, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.kh ; 2 uses
  %i.kl = sub nsw i64 0, %i.ka                    ; 8 uses
  %i.km = sext i32 %i.jd to i64
  %i.kn = getelementptr [8 x i8], ptr %i.jc, i64 %i.km
  %i.ko = getelementptr i8, ptr %i.kn, i64 -16    ; 2 uses
  %i.kp = add i32 %i.jd, -3                       ; 3 uses
  %i.kq = icmp sgt i32 %i.jd, 0
  %i.kr = zext i32 %i.kp to i64                   ; 9 uses
  %i.ks = sext i32 %i.jq to i64
  %wide.trip.count127.i12 = sext i32 %i.js to i64
  %wide.trip.count.i13 = zext i32 %i.jd to i64    ; 6 uses
  %scevgep100 = getelementptr i8, ptr %i.ja, i64 8
  %i.kt = shl nuw nsw i64 %i.kr, 3
  %i.ku = getelementptr i8, ptr %i.jc, i64 %i.kt
  %scevgep105 = getelementptr i8, ptr %i.ku, i64 8
  %i.kv = add nsw i64 %wide.trip.count.i13, -2    ; 2 uses
  %i.kw = add nsw i64 %wide.trip.count.i13, -3    ; 2 uses
  %ident.check98.not = icmp eq i32 %i.je, 1
  %xtraiter127 = and i64 %wide.trip.count.i13, 1
  %i.kx = icmp eq i64 %i.kw, 0
  %unroll_iter130 = and i64 %i.kv, -2
  %10 = shl nsw i64 %i.ka, 1
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  %lcmp.mod129 = trunc i32 %i.jd to i1
  %11 = shl nsw i64 %i.ka, 1
  %xtraiter132 = and i64 %wide.trip.count.i13, 1
  %i.ky = icmp eq i64 %i.kw, 0
  %unroll_iter135 = and i64 %i.kv, -2
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  %lcmp.mod134 = trunc i32 %i.jd to i1
  %ident.check103.not = icmp eq i32 %i.je, 1
  %i.kz = and i64 %i.kr, 1
  %lcmp.mod138.not.not = icmp eq i64 %i.kz, 0
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.kr ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %indvars.iv.next117.i37.lver.orig.prol = add nsw i64 %i.kr, -1
  %i.ld = icmp eq i32 %i.kp, 0
  %i.le = and i64 %i.kr, 1
  %lcmp.mod140.not.not = icmp eq i64 %i.le, 0
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.kr ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %indvars.iv.next117.i37.prol = add nsw i64 %i.kr, -1
  %i.lh = icmp eq i32 %i.kp, 0
  %xtraiter141 = and i64 %wide.trip.count.i13, 1
  %i.li = icmp eq i32 %i.jd, 1
  %unroll_iter144 = and i64 %wide.trip.count.i13, 4294967294
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  %lcmp.mod143 = trunc i32 %i.jd to i1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %common.resume

bb.n:                                             ; preds = %._crit_edge110.i17, %.lr.ph113.i11
  %indvars.iv124.i15 = phi i64 [ %i.ks, %.lr.ph113.i11 ], [ %indvars.iv.next125.i18, %._crit_edge110.i17 ] ; 5 uses
  %i.lk = getelementptr inbounds i8, ptr %i.jw, i64 %indvars.iv124.i15 ; 6 uses
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %indvars.iv124.i15 ; 2 uses
  %i.lm = load i8, ptr %i.lk, align 1, !tbaa !32
  %i.ln = sitofp i8 %i.lm to double               ; 3 uses
  store double %i.ln, ptr %i.ja, align 8, !tbaa !89
  %i.lo = getelementptr inbounds i8, ptr %i.lk, i64 %i.ka
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !32
  %i.lq = sitofp i8 %i.lp to double
  %i.lr = call double @llvm.fmuladd.f64(double %i.kc, double %i.ln, double %i.lq)
  %i.ls = call double @llvm.fmuladd.f64(double %i.jn, double %i.ln, double %i.lr)
  store double %i.ls, ptr %i.kd, align 8, !tbaa !89
  br i1 %i.ke, label %.lr.ph.i26.lver.check, label %.preheader.critedge.i16

.lr.ph.i26.lver.check:                            ; preds = %bb.n
  br i1 %ident.check98.not, label %.lr.ph.i26.ph, label %.lr.ph.i26.lver.orig.preheader

.lr.ph.i26.lver.orig.preheader:                   ; preds = %.lr.ph.i26.lver.check
  br i1 %i.kx, label %.lr.ph.i26.lver.orig.epil.preheader, label %.lr.ph.i26.lver.orig

.lr.ph.i26.lver.orig:                             ; preds = %.lr.ph.i26.lver.orig.preheader, %.lr.ph.i26.lver.orig
  %indvars.iv.i27.lver.orig = phi i64 [ %indvars.iv.next.i30.lver.orig.1, %.lr.ph.i26.lver.orig ], [ 2, %.lr.ph.i26.lver.orig.preheader ] ; 3 uses
  %i.lt = phi ptr [ %.094.i29.lver.orig, %.lr.ph.i26.lver.orig ], [ %i.lk, %.lr.ph.i26.lver.orig.preheader ]
  %niter131 = phi i64 [ %niter131.next.1, %.lr.ph.i26.lver.orig ], [ 0, %.lr.ph.i26.lver.orig.preheader ]
  %.094.i29.lver.orig = getelementptr inbounds i8, ptr %i.lt, i64 %10 ; 4 uses
  %i.lu = load i8, ptr %.094.i29.lver.orig, align 1, !tbaa !32
  %i.lv = sitofp i8 %i.lu to double
  %i.lw = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv.i27.lver.orig ; 3 uses
  %i.lx = getelementptr i8, ptr %i.lw, i64 -8
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !89 ; 2 uses
  %i.lz = call double @llvm.fmuladd.f64(double %i.kc, double %i.ly, double %i.lv)
  %i.ma = getelementptr i8, ptr %i.lw, i64 -16
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !89
  %i.mc = call double @llvm.fmuladd.f64(double %i.jn, double %i.mb, double %i.lz) ; 2 uses
  store double %i.mc, ptr %i.lw, align 8, !tbaa !89
  %.094.i29.lver.orig.1 = getelementptr inbounds i8, ptr %.094.i29.lver.orig, i64 %i.ka
  %i.md = load i8, ptr %.094.i29.lver.orig.1, align 1, !tbaa !32
  %i.me = sitofp i8 %i.md to double
  %i.mf = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv.i27.lver.orig
  %i.mg = getelementptr i8, ptr %i.mf, i64 8
  %i.mh = call double @llvm.fmuladd.f64(double %i.kc, double %i.mc, double %i.me)
  %i.mi = call double @llvm.fmuladd.f64(double %i.jn, double %i.ly, double %i.mh)
  store double %i.mi, ptr %i.mg, align 8, !tbaa !89
  %indvars.iv.next.i30.lver.orig.1 = add nuw nsw i64 %indvars.iv.i27.lver.orig, 2 ; 2 uses
  %niter131.next.1 = add i64 %niter131, 2         ; 2 uses
  %niter131.ncmp.1 = icmp eq i64 %niter131.next.1, %unroll_iter130
  br i1 %niter131.ncmp.1, label %.lr.ph106.i33.lver.check.loopexit116.unr-lcssa, label %.lr.ph.i26.lver.orig, !llvm.loop !104

.lr.ph.i26.ph:                                    ; preds = %.lr.ph.i26.lver.check
  %load_initial101 = load double, ptr %scevgep100, align 8 ; 2 uses
  br i1 %i.ky, label %.lr.ph.i26.epil.preheader, label %.lr.ph.i26

.lr.ph106.i33.lver.check.loopexit.unr-lcssa:      ; preds = %.lr.ph.i26
  br i1 %lcmp.mod133.not, label %.lr.ph106.i33.lver.check, label %.lr.ph.i26.epil.preheader

.lr.ph.i26.epil.preheader:                        ; preds = %.lr.ph106.i33.lver.check.loopexit.unr-lcssa, %.lr.ph.i26.ph
  %store_forwarded102.epil.init = phi double [ %load_initial101, %.lr.ph.i26.ph ], [ %i.oy, %.lr.ph106.i33.lver.check.loopexit.unr-lcssa ]
  %indvars.iv.i27.epil.init = phi i64 [ 2, %.lr.ph.i26.ph ], [ %indvars.iv.next.i30.1, %.lr.ph106.i33.lver.check.loopexit.unr-lcssa ]
  %i.mj = phi ptr [ %i.lk, %.lr.ph.i26.ph ], [ %.094.i29, %.lr.ph106.i33.lver.check.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod134)
  %.094.i29.epil = getelementptr inbounds nuw i8, ptr %i.mj, i64 2
  %i.mk = load i8, ptr %.094.i29.epil, align 1, !tbaa !32
  %i.ml = sitofp i8 %i.mk to double
  %i.mm = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv.i27.epil.init ; 2 uses
  %i.mn = call double @llvm.fmuladd.f64(double %i.kc, double %store_forwarded102.epil.init, double %i.ml)
  %i.mo = getelementptr i8, ptr %i.mm, i64 -16
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !89
  %i.mq = call double @llvm.fmuladd.f64(double %i.jn, double %i.mp, double %i.mn)
  store double %i.mq, ptr %i.mm, align 8, !tbaa !89
  br label %.lr.ph106.i33.lver.check

.lr.ph106.i33.lver.check.loopexit116.unr-lcssa:   ; preds = %.lr.ph.i26.lver.orig
  br i1 %lcmp.mod128.not, label %.lr.ph106.i33.lver.check, label %.lr.ph.i26.lver.orig.epil.preheader

.lr.ph.i26.lver.orig.epil.preheader:              ; preds = %.lr.ph106.i33.lver.check.loopexit116.unr-lcssa, %.lr.ph.i26.lver.orig.preheader
  %indvars.iv.i27.lver.orig.epil.init = phi i64 [ 2, %.lr.ph.i26.lver.orig.preheader ], [ %indvars.iv.next.i30.lver.orig.1, %.lr.ph106.i33.lver.check.loopexit116.unr-lcssa ]
  %i.mr = phi ptr [ %i.lk, %.lr.ph.i26.lver.orig.preheader ], [ %.094.i29.lver.orig, %.lr.ph106.i33.lver.check.loopexit116.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod129)
  %.094.i29.lver.orig.epil = getelementptr inbounds i8, ptr %i.mr, i64 %11
  %i.ms = load i8, ptr %.094.i29.lver.orig.epil, align 1, !tbaa !32
  %i.mt = sitofp i8 %i.ms to double
  %i.mu = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv.i27.lver.orig.epil.init ; 3 uses
  %i.mv = getelementptr i8, ptr %i.mu, i64 -8
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !89
  %i.mx = call double @llvm.fmuladd.f64(double %i.kc, double %i.mw, double %i.mt)
  %i.my = getelementptr i8, ptr %i.mu, i64 -16
  %i.mz = load double, ptr %i.my, align 8, !tbaa !89
  %i.na = call double @llvm.fmuladd.f64(double %i.jn, double %i.mz, double %i.mx)
  store double %i.na, ptr %i.mu, align 8, !tbaa !89
  br label %.lr.ph106.i33.lver.check

.lr.ph106.i33.lver.check:                         ; preds = %.lr.ph.i26.lver.orig.epil.preheader, %.lr.ph106.i33.lver.check.loopexit116.unr-lcssa, %.lr.ph.i26.epil.preheader, %.lr.ph106.i33.lver.check.loopexit.unr-lcssa
  %i.nb = getelementptr inbounds i8, ptr %i.kj, i64 %indvars.iv124.i15 ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !32
  %i.nd = sitofp i8 %i.nc to double               ; 2 uses
  store double %i.nd, ptr %i.kk, align 8, !tbaa !89
  %i.ne = getelementptr inbounds i8, ptr %i.nb, i64 %i.kl ; 5 uses
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !32
  %i.ng = sitofp i8 %i.nf to double
  %i.nh = call double @llvm.fmuladd.f64(double %i.kc, double %i.nd, double %i.ng)
  store double %i.nh, ptr %i.ko, align 8, !tbaa !89
  br i1 %ident.check103.not, label %.lr.ph106.i33.ph, label %.lr.ph106.i33.lver.orig.preheader

.lr.ph106.i33.lver.orig.preheader:                ; preds = %.lr.ph106.i33.lver.check
  br i1 %lcmp.mod138.not.not, label %.lr.ph106.i33.lver.orig.prol, label %.lr.ph106.i33.lver.orig.prol.loopexit

.lr.ph106.i33.lver.orig.prol:                     ; preds = %.lr.ph106.i33.lver.orig.preheader
  %.1.i36.lver.orig.prol = getelementptr inbounds i8, ptr %i.ne, i64 %i.kl ; 2 uses
  %i.ni = load i8, ptr %.1.i36.lver.orig.prol, align 1, !tbaa !32
  %i.nj = sitofp i8 %i.ni to double
  %i.nk = load double, ptr %i.lb, align 8, !tbaa !89
  %i.nl = call double @llvm.fmuladd.f64(double %i.kc, double %i.nk, double %i.nj)
  %i.nm = load double, ptr %i.lc, align 8, !tbaa !89
  %i.nn = call double @llvm.fmuladd.f64(double %i.jn, double %i.nm, double %i.nl)
  store double %i.nn, ptr %i.la, align 8, !tbaa !89
  br label %.lr.ph106.i33.lver.orig.prol.loopexit

.lr.ph106.i33.lver.orig.prol.loopexit:            ; preds = %.lr.ph106.i33.lver.orig.prol, %.lr.ph106.i33.lver.orig.preheader
  %indvars.iv116.i34.lver.orig.unr = phi i64 [ %i.kr, %.lr.ph106.i33.lver.orig.preheader ], [ %indvars.iv.next117.i37.lver.orig.prol, %.lr.ph106.i33.lver.orig.prol ]
  %.pn100103.i35.lver.orig.unr = phi ptr [ %i.ne, %.lr.ph106.i33.lver.orig.preheader ], [ %.1.i36.lver.orig.prol, %.lr.ph106.i33.lver.orig.prol ]
  br i1 %i.ld, label %.lr.ph109.i21.preheader, label %.lr.ph106.i33.lver.orig

.lr.ph106.i33.lver.orig:                          ; preds = %.lr.ph106.i33.lver.orig.prol.loopexit, %.lr.ph106.i33.lver.orig
  %indvars.iv116.i34.lver.orig = phi i64 [ %indvars.iv.next117.i37.lver.orig.1, %.lr.ph106.i33.lver.orig ], [ %indvars.iv116.i34.lver.orig.unr, %.lr.ph106.i33.lver.orig.prol.loopexit ] ; 3 uses
  %.pn100103.i35.lver.orig = phi ptr [ %.1.i36.lver.orig.1, %.lr.ph106.i33.lver.orig ], [ %.pn100103.i35.lver.orig.unr, %.lr.ph106.i33.lver.orig.prol.loopexit ]
  %.1.i36.lver.orig = getelementptr inbounds i8, ptr %.pn100103.i35.lver.orig, i64 %i.kl ; 2 uses
  %i.no = load i8, ptr %.1.i36.lver.orig, align 1, !tbaa !32
  %i.np = sitofp i8 %i.no to double
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv116.i34.lver.orig ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !89 ; 2 uses
  %i.nt = call double @llvm.fmuladd.f64(double %i.kc, double %i.ns, double %i.np)
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !89
  %i.nw = call double @llvm.fmuladd.f64(double %i.jn, double %i.nv, double %i.nt)
  store double %i.nw, ptr %i.nq, align 8, !tbaa !89
  %indvars.iv.next117.i37.lver.orig = add nsw i64 %indvars.iv116.i34.lver.orig, -1 ; 2 uses
  %.1.i36.lver.orig.1 = getelementptr inbounds i8, ptr %.1.i36.lver.orig, i64 %i.kl ; 2 uses
  %i.nx = load i8, ptr %.1.i36.lver.orig.1, align 1, !tbaa !32
  %i.ny = sitofp i8 %i.nx to double
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.next117.i37.lver.orig ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !89
  %i.oc = call double @llvm.fmuladd.f64(double %i.kc, double %i.ob, double %i.ny)
  %i.od = call double @llvm.fmuladd.f64(double %i.jn, double %i.ns, double %i.oc)
  store double %i.od, ptr %i.nz, align 8, !tbaa !89
  %indvars.iv.next117.i37.lver.orig.1 = add nsw i64 %indvars.iv116.i34.lver.orig, -2
  %.not.i38.lver.orig.1 = icmp eq i64 %indvars.iv.next117.i37.lver.orig, 0
  br i1 %.not.i38.lver.orig.1, label %.lr.ph109.i21.preheader, label %.lr.ph106.i33.lver.orig, !llvm.loop !105

.lr.ph106.i33.ph:                                 ; preds = %.lr.ph106.i33.lver.check
  %load_initial106 = load double, ptr %scevgep105, align 8 ; 2 uses
  br i1 %lcmp.mod140.not.not, label %.lr.ph106.i33.prol, label %.lr.ph106.i33.prol.loopexit

.lr.ph106.i33.prol:                               ; preds = %.lr.ph106.i33.ph
  %.1.i36.prol = getelementptr inbounds i8, ptr %i.ne, i64 %i.kl ; 2 uses
  %i.oe = load i8, ptr %.1.i36.prol, align 1, !tbaa !32
  %i.of = sitofp i8 %i.oe to double
  %i.og = call double @llvm.fmuladd.f64(double %i.kc, double %load_initial106, double %i.of)
  %i.oh = load double, ptr %i.lg, align 8, !tbaa !89
  %i.oi = call double @llvm.fmuladd.f64(double %i.jn, double %i.oh, double %i.og) ; 2 uses
  store double %i.oi, ptr %i.lf, align 8, !tbaa !89
  br label %.lr.ph106.i33.prol.loopexit

.lr.ph106.i33.prol.loopexit:                      ; preds = %.lr.ph106.i33.prol, %.lr.ph106.i33.ph
  %store_forwarded107.unr = phi double [ %load_initial106, %.lr.ph106.i33.ph ], [ %i.oi, %.lr.ph106.i33.prol ]
  %indvars.iv116.i34.unr = phi i64 [ %i.kr, %.lr.ph106.i33.ph ], [ %indvars.iv.next117.i37.prol, %.lr.ph106.i33.prol ]
  %.pn100103.i35.unr = phi ptr [ %i.ne, %.lr.ph106.i33.ph ], [ %.1.i36.prol, %.lr.ph106.i33.prol ]
  br i1 %i.lh, label %.lr.ph109.i21.preheader, label %.lr.ph106.i33

.lr.ph.i26:                                       ; preds = %.lr.ph.i26.ph, %.lr.ph.i26
  %store_forwarded102 = phi double [ %i.oy, %.lr.ph.i26 ], [ %load_initial101, %.lr.ph.i26.ph ]
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i30.1, %.lr.ph.i26 ], [ 2, %.lr.ph.i26.ph ] ; 3 uses
  %i.oj = phi ptr [ %.094.i29, %.lr.ph.i26 ], [ %i.lk, %.lr.ph.i26.ph ]
  %niter136 = phi i64 [ %niter136.next.1, %.lr.ph.i26 ], [ 0, %.lr.ph.i26.ph ]
  %.094.i29 = getelementptr inbounds nuw i8, ptr %i.oj, i64 2 ; 4 uses
  %i.ok = load i8, ptr %.094.i29, align 1, !tbaa !32
  %i.ol = sitofp i8 %i.ok to double
  %i.om = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv.i27 ; 2 uses
  %i.on = call double @llvm.fmuladd.f64(double %i.kc, double %store_forwarded102, double %i.ol)
  %i.oo = getelementptr i8, ptr %i.om, i64 -16
  %i.op = load double, ptr %i.oo, align 8, !tbaa !89
  %i.oq = call double @llvm.fmuladd.f64(double %i.jn, double %i.op, double %i.on) ; 2 uses
  store double %i.oq, ptr %i.om, align 8, !tbaa !89
  %.094.i29.1 = getelementptr inbounds nuw i8, ptr %.094.i29, i64 %i.ka
  %i.or = load i8, ptr %.094.i29.1, align 1, !tbaa !32
  %i.os = sitofp i8 %i.or to double
  %i.ot = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv.i27 ; 2 uses
  %i.ou = getelementptr i8, ptr %i.ot, i64 8
  %i.ov = call double @llvm.fmuladd.f64(double %i.kc, double %i.oq, double %i.os)
  %i.ow = getelementptr i8, ptr %i.ot, i64 -8
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !89
  %i.oy = call double @llvm.fmuladd.f64(double %i.jn, double %i.ox, double %i.ov) ; 3 uses
  store double %i.oy, ptr %i.ou, align 8, !tbaa !89
  %indvars.iv.next.i30.1 = add nuw nsw i64 %indvars.iv.i27, 2 ; 2 uses
  %niter136.next.1 = add i64 %niter136, 2         ; 2 uses
  %niter136.ncmp.1 = icmp eq i64 %niter136.next.1, %unroll_iter135
  br i1 %niter136.ncmp.1, label %.lr.ph106.i33.lver.check.loopexit.unr-lcssa, label %.lr.ph.i26, !llvm.loop !104

.preheader.critedge.i16:                          ; preds = %bb.n
  %i.oz = getelementptr inbounds i8, ptr %i.kj, i64 %indvars.iv124.i15 ; 2 uses
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !32
  %i.pb = sitofp i8 %i.pa to double               ; 2 uses
  store double %i.pb, ptr %i.kk, align 8, !tbaa !89
  %i.pc = getelementptr inbounds i8, ptr %i.oz, i64 %i.kl
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !32
  %i.pe = sitofp i8 %i.pd to double
  %i.pf = call double @llvm.fmuladd.f64(double %i.kc, double %i.pb, double %i.pe)
  store double %i.pf, ptr %i.ko, align 8, !tbaa !89
  br i1 %i.kq, label %.lr.ph109.i21.preheader, label %._crit_edge110.i17

.lr.ph109.i21.preheader:                          ; preds = %.lr.ph106.i33.lver.orig.prol.loopexit, %.lr.ph106.i33.lver.orig, %.lr.ph106.i33.prol.loopexit, %.lr.ph106.i33, %.preheader.critedge.i16
  br i1 %i.li, label %.lr.ph109.i21.epil.preheader, label %.lr.ph109.i21

.lr.ph106.i33:                                    ; preds = %.lr.ph106.i33.prol.loopexit, %.lr.ph106.i33
  %store_forwarded107 = phi double [ %i.pt, %.lr.ph106.i33 ], [ %store_forwarded107.unr, %.lr.ph106.i33.prol.loopexit ]
  %indvars.iv116.i34 = phi i64 [ %indvars.iv.next117.i37.1, %.lr.ph106.i33 ], [ %indvars.iv116.i34.unr, %.lr.ph106.i33.prol.loopexit ] ; 3 uses
  %.pn100103.i35 = phi ptr [ %.1.i36.1, %.lr.ph106.i33 ], [ %.pn100103.i35.unr, %.lr.ph106.i33.prol.loopexit ]
  %.1.i36 = getelementptr inbounds i8, ptr %.pn100103.i35, i64 %i.kl ; 2 uses
  %i.pg = load i8, ptr %.1.i36, align 1, !tbaa !32
  %i.ph = sitofp i8 %i.pg to double
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv116.i34 ; 2 uses
  %i.pj = call double @llvm.fmuladd.f64(double %i.kc, double %store_forwarded107, double %i.ph)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !89
  %i.pm = call double @llvm.fmuladd.f64(double %i.jn, double %i.pl, double %i.pj) ; 2 uses
  store double %i.pm, ptr %i.pi, align 8, !tbaa !89
  %indvars.iv.next117.i37 = add nsw i64 %indvars.iv116.i34, -1 ; 2 uses
  %.1.i36.1 = getelementptr inbounds i8, ptr %.1.i36, i64 %i.kl ; 2 uses
  %i.pn = load i8, ptr %.1.i36.1, align 1, !tbaa !32
  %i.po = sitofp i8 %i.pn to double
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.next117.i37 ; 2 uses
  %i.pq = call double @llvm.fmuladd.f64(double %i.kc, double %i.pm, double %i.po)
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !89
  %i.pt = call double @llvm.fmuladd.f64(double %i.jn, double %i.ps, double %i.pq) ; 2 uses
  store double %i.pt, ptr %i.pp, align 8, !tbaa !89
  %indvars.iv.next117.i37.1 = add nsw i64 %indvars.iv116.i34, -2
  %.not.i38.1 = icmp eq i64 %indvars.iv.next117.i37, 0
  br i1 %.not.i38.1, label %.lr.ph109.i21.preheader, label %.lr.ph106.i33, !llvm.loop !105

._crit_edge110.i17.loopexit.unr-lcssa:            ; preds = %.lr.ph109.i21
  br i1 %lcmp.mod142.not, label %._crit_edge110.i17, label %.lr.ph109.i21.epil.preheader

.lr.ph109.i21.epil.preheader:                     ; preds = %._crit_edge110.i17.loopexit.unr-lcssa, %.lr.ph109.i21.preheader
  %indvars.iv119.i22.epil.init = phi i64 [ 0, %.lr.ph109.i21.preheader ], [ %indvars.iv.next120.i24.1, %._crit_edge110.i17.loopexit.unr-lcssa ] ; 2 uses
  %.096107.i23.epil.init = phi ptr [ %i.ll, %.lr.ph109.i21.preheader ], [ %i.qq, %._crit_edge110.i17.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod143)
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv119.i22.epil.init
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !89
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv119.i22.epil.init
  %i.px = load double, ptr %i.pw, align 8, !tbaa !89
  %i.py = fsub double %i.pv, %i.px
  %i.pz = fmul double %i.jp, %i.py
  %i.qa = fptrunc double %i.pz to float
  store float %i.qa, ptr %.096107.i23.epil.init, align 4, !tbaa !91
  br label %._crit_edge110.i17

._crit_edge110.i17:                               ; preds = %.lr.ph109.i21.epil.preheader, %._crit_edge110.i17.loopexit.unr-lcssa, %.preheader.critedge.i16
  %indvars.iv.next125.i18 = add nsw i64 %indvars.iv124.i15, 1 ; 2 uses
  %exitcond128.not.i19 = icmp eq i64 %indvars.iv.next125.i18, %wide.trip.count127.i12
  br i1 %exitcond128.not.i19, label %_ZN2cv8ximgprocL17VerticalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %bb.n, !llvm.loop !106

.lr.ph109.i21:                                    ; preds = %.lr.ph109.i21.preheader, %.lr.ph109.i21
  %indvars.iv119.i22 = phi i64 [ %indvars.iv.next120.i24.1, %.lr.ph109.i21 ], [ 0, %.lr.ph109.i21.preheader ] ; 4 uses
  %.096107.i23 = phi ptr [ %i.qq, %.lr.ph109.i21 ], [ %i.ll, %.lr.ph109.i21.preheader ] ; 2 uses
  %niter145 = phi i64 [ %niter145.next.1, %.lr.ph109.i21 ], [ 0, %.lr.ph109.i21.preheader ]
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv119.i22
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !89
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv119.i22
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !89
  %i.qf = fsub double %i.qc, %i.qe
  %i.qg = fmul double %i.jp, %i.qf
  %i.qh = fptrunc double %i.qg to float
  store float %i.qh, ptr %.096107.i23, align 4, !tbaa !91
  %indvars.iv.next120.i24 = or disjoint i64 %indvars.iv119.i22, 1 ; 2 uses
  %i.qi = getelementptr inbounds [4 x i8], ptr %.096107.i23, i64 %i.ka ; 2 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.next120.i24
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !89
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next120.i24
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !89
  %i.qn = fsub double %i.qk, %i.qm
  %i.qo = fmul double %i.jp, %i.qn
  %i.qp = fptrunc double %i.qo to float
  store float %i.qp, ptr %i.qi, align 4, !tbaa !91
  %indvars.iv.next120.i24.1 = add nuw nsw i64 %indvars.iv119.i22, 2 ; 2 uses
  %i.qq = getelementptr inbounds [4 x i8], ptr %i.qi, i64 %i.ka ; 2 uses
  %niter145.next.1 = add i64 %niter145, 2         ; 2 uses
  %niter145.ncmp.1 = icmp eq i64 %niter145.next.1, %unroll_iter144
  br i1 %niter145.ncmp.1, label %._crit_edge110.i17.loopexit.unr-lcssa, label %.lr.ph109.i21, !llvm.loop !107

_ZN2cv8ximgprocL17VerticalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit: ; preds = %._crit_edge110.i17, %bb.l
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !113, !nonnull !65, !align !87
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !40
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !41
  tail call fastcc void @_ZN2cv8ximgprocL17VerticalIIRFilterIsEEvRNS_3MatES3_RKNS_5RangeEdd(ptr noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noundef nonnull align 8 dereferenceable(208) %i.qs, ptr noundef nonnull align 4 dereferenceable(8) %1, double noundef %i.qu, double noundef %i.qw)
  br label %bb.t

bb.p:                                             ; preds = %bb.f
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !113, !nonnull !65, !align !87
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !40
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !41
  tail call fastcc void @_ZN2cv8ximgprocL17VerticalIIRFilterIsEEvRNS_3MatES3_RKNS_5RangeEdd(ptr noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noundef nonnull align 8 dereferenceable(208) %i.qy, ptr noundef nonnull align 4 dereferenceable(8) %1, double noundef %i.ra, double noundef %i.rc)
  br label %bb.t

bb.q:                                             ; preds = %bb.f
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !113, !nonnull !65, !align !87
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !40 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !41 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !51
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !43
  %..i39 = tail call i32 @llvm.smax.i32(i32 %i.rk, i32 %i.rm) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 1, i32 noundef %..i39, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1, i32 noundef %..i39, i32 noundef 6)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.rn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !88 ; 12 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !88 ; 11 uses
  %i.rr = load i32, ptr %i.rj, align 8, !tbaa !51 ; 10 uses
  %i.rs = load i32, ptr %i.rl, align 4, !tbaa !43
  %i.rt = fneg double %i.rg                       ; 2 uses
  %i.ru = call double @exp(double noundef %i.rt) #14
  %i.rv = call double @cosh(double noundef %i.ri) #14
  %i.rw = call double @exp(double noundef %i.rt) #14
  %i.rx = fmul double %i.rw, 2.000000e+00
  %i.ry = call double @cosh(double noundef %i.ri) #14
  %i.rz = fmul double %i.rg, -2.000000e+00
  %i.sa = call double @exp(double noundef %i.rz) #14
  %i.sb = fneg double %i.sa                       ; 10 uses
  %i.sc = call double @llvm.fmuladd.f64(double %i.rx, double %i.ry, double %i.sb)
  %i.sd = fadd double %i.sc, -1.000000e+00        ; 5 uses
  %i.se = load i32, ptr %1, align 4, !tbaa !45    ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !46 ; 2 uses
  %i.sh = icmp slt i32 %i.se, %i.sg
  br i1 %i.sh, label %.lr.ph113.i40, label %_ZN2cv8ximgprocL17VerticalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit

.lr.ph113.i40:                                    ; preds = %bb.r
  %i.si = fmul double %i.ru, -2.000000e+00
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !88 ; 4 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.sm = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !88 ; 2 uses
  %i.so = sext i32 %i.rs to i64                   ; 10 uses
  %i.sp = fneg double %i.rv
  %i.sq = fmul double %i.si, %i.sp                ; 12 uses
  %i.sr = getelementptr i8, ptr %i.ro, i64 8      ; 3 uses
  %i.ss = icmp sgt i32 %i.rr, 2
  %i.st = add nsw i32 %i.rr, -1
  %i.su = load i64, ptr %i.sl, align 8, !tbaa !55
  %i.sv = sext i32 %i.st to i64                   ; 2 uses
  %i.sw = mul i64 %i.su, %i.sv
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.sw ; 3 uses
  %i.sy = getelementptr inbounds [8 x i8], ptr %i.rq, i64 %i.sv ; 3 uses
  %i.sz = sub nsw i64 0, %i.so                    ; 6 uses
  %i.ta = sext i32 %i.rr to i64
  %i.tb = getelementptr [8 x i8], ptr %i.rq, i64 %i.ta
  %i.tc = getelementptr i8, ptr %i.tb, i64 -16    ; 3 uses
  %i.td = add i32 %i.rr, -3                       ; 2 uses
  %i.te = zext i32 %i.td to i64                   ; 5 uses
  %i.tf = sext i32 %i.se to i64                   ; 3 uses
  %wide.trip.count127.i41 = sext i32 %i.sg to i64 ; 3 uses
  %wide.trip.count.i42 = zext i32 %i.rr to i64    ; 4 uses
  br i1 %i.ss, label %.lr.ph.i55.preheader.us.preheader, label %.lr.ph113.i40.split

.lr.ph.i55.preheader.us.preheader:                ; preds = %.lr.ph113.i40
  %i.tg = shl nuw nsw i64 %i.te, 3
  %i.th = getelementptr i8, ptr %i.rq, i64 %i.tg
  %scevgep110 = getelementptr i8, ptr %i.th, i64 8
  %xtraiter = and i64 %wide.trip.count.i42, 1
  %i.ti = icmp eq i32 %i.rr, 3
  %i.tj = and i64 %wide.trip.count.i42, 2147483646
  %.094.i58.us.idx = shl nsw i64 %i.so, 3
  %i.tk = add nsw i64 %i.tj, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod119 = trunc i32 %i.rr to i1
  %.094.i58.us.epil.idx = shl nsw i64 %i.so, 3
  %i.tl = and i64 %i.te, 1
  %lcmp.mod121.not.not = icmp eq i64 %i.tl, 0
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %i.te ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %indvars.iv.next117.i66.us.prol = add nsw i64 %i.te, -1
  %i.to = icmp eq i32 %i.td, 0
  %xtraiter122 = and i64 %wide.trip.count.i42, 1
  %unroll_iter125 = and i64 %wide.trip.count.i42, 2147483646
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod124 = trunc i32 %i.rr to i1
  br label %.lr.ph.i55.preheader.us

.lr.ph.i55.preheader.us:                          ; preds = %.lr.ph.i55.preheader.us.preheader, %._crit_edge110.i46.loopexit.us
  %indvars.iv124.i44.us = phi i64 [ %indvars.iv.next125.i47.us, %._crit_edge110.i46.loopexit.us ], [ %i.tf, %.lr.ph.i55.preheader.us.preheader ] ; 4 uses
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %indvars.iv124.i44.us ; 4 uses
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !91
  %i.tr = fpext float %i.tq to double             ; 3 uses
  store double %i.tr, ptr %i.ro, align 8, !tbaa !89
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.so
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !91
  %i.tu = fpext float %i.tt to double
  %i.tv = call double @llvm.fmuladd.f64(double %i.sq, double %i.tr, double %i.tu)
  %i.tw = call double @llvm.fmuladd.f64(double %i.sb, double %i.tr, double %i.tv) ; 3 uses
  store double %i.tw, ptr %i.sr, align 8, !tbaa !89
  br i1 %i.ti, label %.lr.ph.i55.us.epil.preheader, label %.lr.ph.i55.us

.lr.ph.i55.us:                                    ; preds = %.lr.ph.i55.preheader.us, %.lr.ph.i55.us
  %store_forwarded109 = phi double [ %i.um, %.lr.ph.i55.us ], [ %i.tw, %.lr.ph.i55.preheader.us ]
  %indvars.iv.i56.us = phi i64 [ %indvars.iv.next.i59.us.1, %.lr.ph.i55.us ], [ 2, %.lr.ph.i55.preheader.us ] ; 3 uses
  %i.tx = phi ptr [ %.094.i58.us, %.lr.ph.i55.us ], [ %i.tp, %.lr.ph.i55.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i55.us ], [ 0, %.lr.ph.i55.preheader.us ] ; 2 uses
  %.094.i58.us = getelementptr inbounds i8, ptr %i.tx, i64 %.094.i58.us.idx ; 4 uses
  %i.ty = load float, ptr %.094.i58.us, align 4, !tbaa !91
  %i.tz = fpext float %i.ty to double
  %i.ua = getelementptr [8 x i8], ptr %i.ro, i64 %indvars.iv.i56.us ; 2 uses
  %i.ub = call double @llvm.fmuladd.f64(double %i.sq, double %store_forwarded109, double %i.tz)
  %i.uc = getelementptr i8, ptr %i.ua, i64 -16
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !89
  %i.ue = call double @llvm.fmuladd.f64(double %i.sb, double %i.ud, double %i.ub) ; 2 uses
  store double %i.ue, ptr %i.ua, align 8, !tbaa !89
  %.094.i58.us.1 = getelementptr inbounds [4 x i8], ptr %.094.i58.us, i64 %i.so
  %i.uf = load float, ptr %.094.i58.us.1, align 4, !tbaa !91
  %i.ug = fpext float %i.uf to double
  %i.uh = getelementptr [8 x i8], ptr %i.ro, i64 %indvars.iv.i56.us ; 2 uses
  %i.ui = getelementptr i8, ptr %i.uh, i64 8
  %i.uj = call double @llvm.fmuladd.f64(double %i.sq, double %i.ue, double %i.ug)
  %i.uk = getelementptr i8, ptr %i.uh, i64 -8
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !89
  %i.um = call double @llvm.fmuladd.f64(double %i.sb, double %i.ul, double %i.uj) ; 3 uses
  store double %i.um, ptr %i.ui, align 8, !tbaa !89
  %indvars.iv.next.i59.us.1 = add nuw nsw i64 %indvars.iv.i56.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.tk
  br i1 %niter.ncmp.1, label %._crit_edge.i61.us.unr-lcssa, label %.lr.ph.i55.us, !llvm.loop !108

._crit_edge.i61.us.unr-lcssa:                     ; preds = %.lr.ph.i55.us
  br i1 %lcmp.mod.not, label %._crit_edge.i61.us, label %.lr.ph.i55.us.epil.preheader

.lr.ph.i55.us.epil.preheader:                     ; preds = %._crit_edge.i61.us.unr-lcssa, %.lr.ph.i55.preheader.us
  %store_forwarded109.epil.init = phi double [ %i.tw, %.lr.ph.i55.preheader.us ], [ %i.um, %._crit_edge.i61.us.unr-lcssa ]
  %indvars.iv.i56.us.epil.init = phi i64 [ 2, %.lr.ph.i55.preheader.us ], [ %indvars.iv.next.i59.us.1, %._crit_edge.i61.us.unr-lcssa ]
  %i.un = phi ptr [ %i.tp, %.lr.ph.i55.preheader.us ], [ %.094.i58.us, %._crit_edge.i61.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod119)
  %.094.i58.us.epil = getelementptr inbounds i8, ptr %i.un, i64 %.094.i58.us.epil.idx
  %i.uo = load float, ptr %.094.i58.us.epil, align 4, !tbaa !91
  %i.up = fpext float %i.uo to double
  %i.uq = getelementptr [8 x i8], ptr %i.ro, i64 %indvars.iv.i56.us.epil.init ; 2 uses
  %i.ur = call double @llvm.fmuladd.f64(double %i.sq, double %store_forwarded109.epil.init, double %i.up)
  %i.us = getelementptr i8, ptr %i.uq, i64 -16
  %i.ut = load double, ptr %i.us, align 8, !tbaa !89
  %i.uu = call double @llvm.fmuladd.f64(double %i.sb, double %i.ut, double %i.ur)
  store double %i.uu, ptr %i.uq, align 8, !tbaa !89
  br label %._crit_edge.i61.us

._crit_edge.i61.us:                               ; preds = %._crit_edge.i61.us.unr-lcssa, %.lr.ph.i55.us.epil.preheader
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %indvars.iv124.i44.us ; 2 uses
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !91
  %i.ux = fpext float %i.uw to double             ; 2 uses
  store double %i.ux, ptr %i.sy, align 8, !tbaa !89
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.sz ; 3 uses
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !91
  %i.va = fpext float %i.uz to double
  %i.vb = call double @llvm.fmuladd.f64(double %i.sq, double %i.ux, double %i.va)
  store double %i.vb, ptr %i.tc, align 8, !tbaa !89
  %load_initial111 = load double, ptr %scevgep110, align 8 ; 2 uses
  br i1 %lcmp.mod121.not.not, label %.lr.ph106.i62.us.prol, label %.lr.ph106.i62.us.prol.loopexit

.lr.ph106.i62.us.prol:                            ; preds = %._crit_edge.i61.us
  %.1.i65.us.prol = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.sz ; 2 uses
  %i.vc = load float, ptr %.1.i65.us.prol, align 4, !tbaa !91
  %i.vd = fpext float %i.vc to double
  %i.ve = call double @llvm.fmuladd.f64(double %i.sq, double %load_initial111, double %i.vd)
  %i.vf = load double, ptr %i.tn, align 8, !tbaa !89
  %i.vg = call double @llvm.fmuladd.f64(double %i.sb, double %i.vf, double %i.ve) ; 2 uses
  store double %i.vg, ptr %i.tm, align 8, !tbaa !89
  br label %.lr.ph106.i62.us.prol.loopexit

.lr.ph106.i62.us.prol.loopexit:                   ; preds = %.lr.ph106.i62.us.prol, %._crit_edge.i61.us
  %store_forwarded112.unr = phi double [ %load_initial111, %._crit_edge.i61.us ], [ %i.vg, %.lr.ph106.i62.us.prol ]
  %indvars.iv116.i63.us.unr = phi i64 [ %i.te, %._crit_edge.i61.us ], [ %indvars.iv.next117.i66.us.prol, %.lr.ph106.i62.us.prol ]
  %.pn100103.i64.us.unr = phi ptr [ %i.uy, %._crit_edge.i61.us ], [ %.1.i65.us.prol, %.lr.ph106.i62.us.prol ]
  br i1 %i.to, label %.lr.ph109.i50.us.preheader.new, label %.lr.ph106.i62.us

.lr.ph106.i62.us:                                 ; preds = %.lr.ph106.i62.us.prol.loopexit, %.lr.ph106.i62.us
  %store_forwarded112 = phi double [ %i.vu, %.lr.ph106.i62.us ], [ %store_forwarded112.unr, %.lr.ph106.i62.us.prol.loopexit ]
  %indvars.iv116.i63.us = phi i64 [ %indvars.iv.next117.i66.us.1, %.lr.ph106.i62.us ], [ %indvars.iv116.i63.us.unr, %.lr.ph106.i62.us.prol.loopexit ] ; 3 uses
  %.pn100103.i64.us = phi ptr [ %.1.i65.us.1, %.lr.ph106.i62.us ], [ %.pn100103.i64.us.unr, %.lr.ph106.i62.us.prol.loopexit ]
  %.1.i65.us = getelementptr inbounds [4 x i8], ptr %.pn100103.i64.us, i64 %i.sz ; 2 uses
  %i.vh = load float, ptr %.1.i65.us, align 4, !tbaa !91
  %i.vi = fpext float %i.vh to double
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv116.i63.us ; 2 uses
  %i.vk = call double @llvm.fmuladd.f64(double %i.sq, double %store_forwarded112, double %i.vi)
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !89
  %i.vn = call double @llvm.fmuladd.f64(double %i.sb, double %i.vm, double %i.vk) ; 2 uses
  store double %i.vn, ptr %i.vj, align 8, !tbaa !89
  %indvars.iv.next117.i66.us = add nsw i64 %indvars.iv116.i63.us, -1 ; 2 uses
  %.1.i65.us.1 = getelementptr inbounds [4 x i8], ptr %.1.i65.us, i64 %i.sz ; 2 uses
  %i.vo = load float, ptr %.1.i65.us.1, align 4, !tbaa !91
  %i.vp = fpext float %i.vo to double
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.next117.i66.us ; 2 uses
  %i.vr = call double @llvm.fmuladd.f64(double %i.sq, double %i.vn, double %i.vp)
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !89
  %i.vu = call double @llvm.fmuladd.f64(double %i.sb, double %i.vt, double %i.vr) ; 2 uses
  store double %i.vu, ptr %i.vq, align 8, !tbaa !89
  %indvars.iv.next117.i66.us.1 = add nsw i64 %indvars.iv116.i63.us, -2
  %.not.i67.us.1 = icmp eq i64 %indvars.iv.next117.i66.us, 0
  br i1 %.not.i67.us.1, label %.lr.ph109.i50.us.preheader.new, label %.lr.ph106.i62.us, !llvm.loop !109

.lr.ph109.i50.us.preheader.new:                   ; preds = %.lr.ph106.i62.us.prol.loopexit, %.lr.ph106.i62.us
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.sn, i64 %indvars.iv124.i44.us
  br label %.lr.ph109.i50.us

.lr.ph109.i50.us:                                 ; preds = %.lr.ph109.i50.us, %.lr.ph109.i50.us.preheader.new
  %indvars.iv119.i51.us = phi i64 [ 0, %.lr.ph109.i50.us.preheader.new ], [ %indvars.iv.next120.i53.us.1, %.lr.ph109.i50.us ] ; 4 uses
  %.096107.i52.us = phi ptr [ %i.vv, %.lr.ph109.i50.us.preheader.new ], [ %i.wl, %.lr.ph109.i50.us ] ; 2 uses
  %niter126 = phi i64 [ 0, %.lr.ph109.i50.us.preheader.new ], [ %niter126.next.1, %.lr.ph109.i50.us ]
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv119.i51.us
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !89
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %indvars.iv119.i51.us
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !89
  %i.wa = fsub double %i.vx, %i.vz
  %i.wb = fmul double %i.sd, %i.wa
  %i.wc = fptrunc double %i.wb to float
  store float %i.wc, ptr %.096107.i52.us, align 4, !tbaa !91
  %indvars.iv.next120.i53.us = or disjoint i64 %indvars.iv119.i51.us, 1 ; 2 uses
  %i.wd = getelementptr inbounds [4 x i8], ptr %.096107.i52.us, i64 %i.so ; 2 uses
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.next120.i53.us
  %i.wf = load double, ptr %i.we, align 8, !tbaa !89
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %indvars.iv.next120.i53.us
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !89
  %i.wi = fsub double %i.wf, %i.wh
  %i.wj = fmul double %i.sd, %i.wi
  %i.wk = fptrunc double %i.wj to float
  store float %i.wk, ptr %i.wd, align 4, !tbaa !91
  %indvars.iv.next120.i53.us.1 = add nuw nsw i64 %indvars.iv119.i51.us, 2 ; 3 uses
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.wd, i64 %i.so ; 2 uses
  %niter126.next.1 = add nuw nsw i64 %niter126, 2 ; 2 uses
  %niter126.ncmp.1 = icmp eq i64 %niter126.next.1, %unroll_iter125
  br i1 %niter126.ncmp.1, label %._crit_edge110.i46.loopexit.us.unr-lcssa, label %.lr.ph109.i50.us, !llvm.loop !110

._crit_edge110.i46.loopexit.us.unr-lcssa:         ; preds = %.lr.ph109.i50.us
  br i1 %lcmp.mod123.not, label %._crit_edge110.i46.loopexit.us, label %.lr.ph109.i50.us.epil.preheader

.lr.ph109.i50.us.epil.preheader:                  ; preds = %._crit_edge110.i46.loopexit.us.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod124)
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.next120.i53.us.1
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !89
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %indvars.iv.next120.i53.us.1
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !89
  %i.wq = fsub double %i.wn, %i.wp
  %i.wr = fmul double %i.sd, %i.wq
  %i.ws = fptrunc double %i.wr to float
  store float %i.ws, ptr %i.wl, align 4, !tbaa !91
  br label %._crit_edge110.i46.loopexit.us

._crit_edge110.i46.loopexit.us:                   ; preds = %._crit_edge110.i46.loopexit.us.unr-lcssa, %.lr.ph109.i50.us.epil.preheader
  %indvars.iv.next125.i47.us = add nsw i64 %indvars.iv124.i44.us, 1 ; 2 uses
  %exitcond128.not.i48.us = icmp eq i64 %indvars.iv.next125.i47.us, %wide.trip.count127.i41
  br i1 %exitcond128.not.i48.us, label %_ZN2cv8ximgprocL17VerticalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %.lr.ph.i55.preheader.us, !llvm.loop !111

.lr.ph113.i40.split:                              ; preds = %.lr.ph113.i40
  %i.wt = icmp sgt i32 %i.rr, 0
  br i1 %i.wt, label %.preheader.critedge.i45.us.preheader, label %.preheader.critedge.i45.preheader

.preheader.critedge.i45.preheader:                ; preds = %.lr.ph113.i40.split
  %i.wu = insertelement <2 x double> poison, double %i.sb, i64 0
  %i.wv = insertelement <2 x double> %i.wu, double %i.sq, i64 1
  br label %.preheader.critedge.i45

.preheader.critedge.i45.us.preheader:             ; preds = %.lr.ph113.i40.split
  %i.ww = insertelement <2 x double> poison, double %i.sb, i64 0
  %i.wx = insertelement <2 x double> %i.ww, double %i.sq, i64 1
  %exitcond123.not.i54.us74 = icmp eq i32 %i.rr, 1
  %i.wy = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  br label %.preheader.critedge.i45.us

.preheader.critedge.i45.us:                       ; preds = %.preheader.critedge.i45.us.preheader, %._crit_edge110.i46.loopexit.us75
  %indvars.iv124.i44.us68 = phi i64 [ %indvars.iv.next125.i47.us77, %._crit_edge110.i46.loopexit.us75 ], [ %i.tf, %.preheader.critedge.i45.us.preheader ] ; 4 uses
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %indvars.iv124.i44.us68 ; 2 uses
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !91
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.xa, i64 %i.so
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !91
  %i.xe = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %indvars.iv124.i44.us68 ; 2 uses
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !91
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.xe, i64 %i.sz
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !91
  %i.xi = insertelement <2 x float> poison, float %i.xb, i64 0
  %i.xj = insertelement <2 x float> %i.xi, float %i.xf, i64 1
  %i.xk = fpext <2 x float> %i.xj to <2 x double> ; 3 uses
  %i.xl = extractelement <2 x double> %i.xk, i64 0 ; 2 uses
  store double %i.xl, ptr %i.ro, align 8, !tbaa !89
  %i.xm = fpext float %i.xd to double
  %i.xn = call double @llvm.fmuladd.f64(double %i.sq, double %i.xl, double %i.xm)
  %i.xo = fpext float %i.xh to double
  %i.xp = insertelement <2 x double> poison, double %i.xn, i64 0
  %i.xq = insertelement <2 x double> %i.xp, double %i.xo, i64 1
  %i.xr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wx, <2 x double> %i.xk, <2 x double> %i.xq) ; 2 uses
  %i.xs = extractelement <2 x double> %i.xr, i64 0
  store double %i.xs, ptr %i.sr, align 8, !tbaa !89
  %i.xt = extractelement <2 x double> %i.xk, i64 1
  store double %i.xt, ptr %i.sy, align 8, !tbaa !89
  %i.xu = extractelement <2 x double> %i.xr, i64 1
  store double %i.xu, ptr %i.tc, align 8, !tbaa !89
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.sn, i64 %indvars.iv124.i44.us68 ; 2 uses
  %i.xw = load double, ptr %i.rq, align 8, !tbaa !89
  %i.xx = load double, ptr %i.ro, align 8, !tbaa !89
  %i.xy = fsub double %i.xw, %i.xx
  %i.xz = fmul double %i.sd, %i.xy
  %i.ya = fptrunc double %i.xz to float
  store float %i.ya, ptr %i.xv, align 4, !tbaa !91
  br i1 %exitcond123.not.i54.us74, label %._crit_edge110.i46.loopexit.us75, label %.lr.ph109.i50.us70.1

.lr.ph109.i50.us70.1:                             ; preds = %.preheader.critedge.i45.us
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.xv, i64 %i.so
  %i.yc = load double, ptr %i.wy, align 8, !tbaa !89
  %i.yd = load double, ptr %i.wz, align 8, !tbaa !89
  %i.ye = fsub double %i.yc, %i.yd
  %i.yf = fmul double %i.sd, %i.ye
  %i.yg = fptrunc double %i.yf to float
  store float %i.yg, ptr %i.yb, align 4, !tbaa !91
  br label %._crit_edge110.i46.loopexit.us75

._crit_edge110.i46.loopexit.us75:                 ; preds = %.lr.ph109.i50.us70.1, %.preheader.critedge.i45.us
  %indvars.iv.next125.i47.us77 = add nsw i64 %indvars.iv124.i44.us68, 1 ; 2 uses
  %exitcond128.not.i48.us78 = icmp eq i64 %indvars.iv.next125.i47.us77, %wide.trip.count127.i41
  br i1 %exitcond128.not.i48.us78, label %_ZN2cv8ximgprocL17VerticalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %.preheader.critedge.i45.us, !llvm.loop !111

bb.s:                                             ; preds = %bb.q
  %i.yh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %common.resume

.preheader.critedge.i45:                          ; preds = %.preheader.critedge.i45.preheader, %.preheader.critedge.i45
  %indvars.iv124.i44 = phi i64 [ %indvars.iv.next125.i47, %.preheader.critedge.i45 ], [ %i.tf, %.preheader.critedge.i45.preheader ] ; 3 uses
  %i.yi = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %indvars.iv124.i44 ; 2 uses
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !91
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.so
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !91
  %i.ym = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %indvars.iv124.i44 ; 2 uses
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !91
  %i.yo = getelementptr inbounds [4 x i8], ptr %i.ym, i64 %i.sz
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !91
  %i.yq = insertelement <2 x float> poison, float %i.yj, i64 0
  %i.yr = insertelement <2 x float> %i.yq, float %i.yn, i64 1
  %i.ys = fpext <2 x float> %i.yr to <2 x double> ; 3 uses
  %i.yt = extractelement <2 x double> %i.ys, i64 0 ; 2 uses
  store double %i.yt, ptr %i.ro, align 8, !tbaa !89
  %i.yu = fpext float %i.yl to double
  %i.yv = call double @llvm.fmuladd.f64(double %i.sq, double %i.yt, double %i.yu)
  %i.yw = fpext float %i.yp to double
  %i.yx = insertelement <2 x double> poison, double %i.yv, i64 0
  %i.yy = insertelement <2 x double> %i.yx, double %i.yw, i64 1
  %i.yz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wv, <2 x double> %i.ys, <2 x double> %i.yy) ; 2 uses
  %i.za = extractelement <2 x double> %i.yz, i64 0
  store double %i.za, ptr %i.sr, align 8, !tbaa !89
  %i.zb = extractelement <2 x double> %i.ys, i64 1
  store double %i.zb, ptr %i.sy, align 8, !tbaa !89
  %i.zc = extractelement <2 x double> %i.yz, i64 1
  store double %i.zc, ptr %i.tc, align 8, !tbaa !89
  %indvars.iv.next125.i47 = add nsw i64 %indvars.iv124.i44, 1 ; 2 uses
  %exitcond128.not.i48 = icmp eq i64 %indvars.iv.next125.i47, %wide.trip.count127.i41
  br i1 %exitcond128.not.i48, label %_ZN2cv8ximgprocL17VerticalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %.preheader.critedge.i45, !llvm.loop !111

_ZN2cv8ximgprocL17VerticalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit: ; preds = %.preheader.critedge.i45, %._crit_edge110.i46.loopexit.us75, %._crit_edge110.i46.loopexit.us, %bb.r
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %_ZN2cv8ximgprocL17VerticalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %bb.p, %bb.o, %_ZN2cv8ximgprocL17VerticalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL17VerticalIIRFilterIhEEvRNS_3MatES3_RKNS_5RangeEdd.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2cv12getThreadNumEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv8ximgprocL17VerticalIIRFilterIsEEvRNS_3MatES3_RKNS_5RangeEdd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, double noundef %3, double noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %. = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef 1, i32 noundef %., i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 1, i32 noundef %., i32 noundef 6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 9 uses
  %i.i = load i32, ptr %i.a, align 8, !tbaa !51   ; 10 uses
  %i.j = load i32, ptr %i.c, align 4, !tbaa !43
  %i.k = fneg double %3                           ; 2 uses
  %i.l = call double @exp(double noundef %i.k) #14
  %i.m = call double @cosh(double noundef %4) #14
  %i.n = call double @exp(double noundef %i.k) #14
  %i.o = fmul double %i.n, 2.000000e+00
  %i.p = call double @cosh(double noundef %4) #14
  %i.q = fmul double %3, -2.000000e+00
  %i.r = call double @exp(double noundef %i.q) #14
  %i.s = fneg double %i.r                         ; 8 uses
  %i.t = call double @llvm.fmuladd.f64(double %i.o, double %i.p, double %i.s)
  %i.u = fadd double %i.t, -1.000000e+00          ; 3 uses
  %i.v = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !46   ; 2 uses
  %i.y = icmp slt i32 %i.v, %i.x
  br i1 %i.y, label %.lr.ph113, label %._crit_edge114

.lr.ph113:                                        ; preds = %bb.b
  %i.z = fmul double %i.l, -2.000000e+00
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !88
  %i.af = sext i32 %i.j to i64                    ; 7 uses
  %i.ag = fneg double %i.m
  %i.ah = fmul double %i.z, %i.ag                 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aj = icmp sgt i32 %i.i, 2
  %i.ak = add nsw i32 %i.i, -1
  %i.al = load i64, ptr %i.ac, align 8, !tbaa !55
  %i.am = sext i32 %i.ak to i64                   ; 2 uses
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.am ; 2 uses
  %i.aq = sub nsw i64 0, %i.af                    ; 5 uses
  %i.ar = sext i32 %i.i to i64
  %i.as = getelementptr [8 x i8], ptr %i.h, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 -16    ; 2 uses
  %i.au = add i32 %i.i, -3                        ; 2 uses
  %i.av = icmp sgt i32 %i.i, 0
  %i.aw = zext i32 %i.au to i64                   ; 5 uses
  %i.ax = sext i32 %i.v to i64
  %wide.trip.count127 = sext i32 %i.x to i64
  %wide.trip.count = zext i32 %i.i to i64         ; 4 uses
  %scevgep = getelementptr i8, ptr %i.f, i64 8
  %i.ay = shl nuw nsw i64 %i.aw, 3
  %i.az = getelementptr i8, ptr %i.h, i64 %i.ay
  %scevgep132 = getelementptr i8, ptr %i.az, i64 8
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ba = icmp eq i32 %i.i, 3
  %i.bb = and i64 %wide.trip.count, 2147483646
  %.094.idx = shl nsw i64 %i.af, 2
  %i.bc = add nsw i64 %i.bb, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod135 = trunc i32 %i.i to i1
  %.094.epil.idx = shl nsw i64 %i.af, 2
  %i.bd = and i64 %i.aw, 1
  %lcmp.mod137.not.not = icmp eq i64 %i.bd, 0
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aw ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %indvars.iv.next117.prol = add nsw i64 %i.aw, -1
  %i.bg = icmp eq i32 %i.au, 0
  %xtraiter138 = and i64 %wide.trip.count, 1
  %i.bh = icmp eq i32 %i.i, 1
  %unroll_iter141 = and i64 %wide.trip.count, 4294967294
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  %lcmp.mod140 = trunc i32 %i.i to i1
  br label %bb.d

._crit_edge114:                                   ; preds = %._crit_edge110, %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void

bb.c:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %i.bi

bb.d:                                             ; preds = %.lr.ph113, %._crit_edge110
  %indvars.iv124 = phi i64 [ %i.ax, %.lr.ph113 ], [ %indvars.iv.next125, %._crit_edge110 ] ; 5 uses
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %indvars.iv124 ; 4 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %indvars.iv124 ; 2 uses
  %i.bl = load i16, ptr %i.bj, align 2, !tbaa !93
  %i.bm = sitofp i16 %i.bl to double              ; 3 uses
  store double %i.bm, ptr %i.f, align 8, !tbaa !89
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %i.af
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !93
  %i.bp = sitofp i16 %i.bo to double
  %i.bq = call double @llvm.fmuladd.f64(double %i.ah, double %i.bm, double %i.bp)
  %i.br = call double @llvm.fmuladd.f64(double %i.s, double %i.bm, double %i.bq)
  store double %i.br, ptr %i.ai, align 8, !tbaa !89
  br i1 %i.aj, label %.lr.ph.preheader, label %.preheader.critedge

.lr.ph.preheader:                                 ; preds = %bb.d
  %load_initial = load double, ptr %scevgep, align 8 ; 2 uses
  br i1 %i.ba, label %.lr.ph.epil.preheader, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph.preheader ], [ %i.db, %._crit_edge.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %i.bs = phi ptr [ %i.bj, %.lr.ph.preheader ], [ %.094, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod135)
  %.094.epil = getelementptr inbounds i8, ptr %i.bs, i64 %.094.epil.idx
  %i.bt = load i16, ptr %.094.epil, align 2, !tbaa !93
  %i.bu = sitofp i16 %i.bt to double
  %i.bv = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.epil.init ; 2 uses
  %i.bw = call double @llvm.fmuladd.f64(double %i.ah, double %store_forwarded.epil.init, double %i.bu)
  %i.bx = getelementptr i8, ptr %i.bv, i64 -16
  %i.by = load double, ptr %i.bx, align 8, !tbaa !89
  %i.bz = call double @llvm.fmuladd.f64(double %i.s, double %i.by, double %i.bw)
  store double %i.bz, ptr %i.bv, align 8, !tbaa !89
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %indvars.iv124 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !93
  %i.cc = sitofp i16 %i.cb to double              ; 2 uses
  store double %i.cc, ptr %i.ap, align 8, !tbaa !89
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %i.aq ; 3 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !93
  %i.cf = sitofp i16 %i.ce to double
  %i.cg = call double @llvm.fmuladd.f64(double %i.ah, double %i.cc, double %i.cf)
  store double %i.cg, ptr %i.at, align 8, !tbaa !89
  %load_initial133 = load double, ptr %scevgep132, align 8 ; 2 uses
  br i1 %lcmp.mod137.not.not, label %.lr.ph106.prol, label %.lr.ph106.prol.loopexit

.lr.ph106.prol:                                   ; preds = %._crit_edge
  %.1.prol = getelementptr inbounds [2 x i8], ptr %i.cd, i64 %i.aq ; 2 uses
  %i.ch = load i16, ptr %.1.prol, align 2, !tbaa !93
  %i.ci = sitofp i16 %i.ch to double
  %i.cj = call double @llvm.fmuladd.f64(double %i.ah, double %load_initial133, double %i.ci)
  %i.ck = load double, ptr %i.bf, align 8, !tbaa !89
  %i.cl = call double @llvm.fmuladd.f64(double %i.s, double %i.ck, double %i.cj) ; 2 uses
  store double %i.cl, ptr %i.be, align 8, !tbaa !89
  br label %.lr.ph106.prol.loopexit

.lr.ph106.prol.loopexit:                          ; preds = %.lr.ph106.prol, %._crit_edge
  %store_forwarded134.unr = phi double [ %load_initial133, %._crit_edge ], [ %i.cl, %.lr.ph106.prol ]
  %indvars.iv116.unr = phi i64 [ %i.aw, %._crit_edge ], [ %indvars.iv.next117.prol, %.lr.ph106.prol ]
  %.pn100103.unr = phi ptr [ %i.cd, %._crit_edge ], [ %.1.prol, %.lr.ph106.prol ]
  br i1 %i.bg, label %.lr.ph109.preheader, label %.lr.ph106

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi double [ %i.db, %.lr.ph ], [ %load_initial, %.lr.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 2, %.lr.ph.preheader ] ; 3 uses
  %i.cm = phi ptr [ %.094, %.lr.ph ], [ %i.bj, %.lr.ph.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.094 = getelementptr inbounds i8, ptr %i.cm, i64 %.094.idx ; 4 uses
  %i.cn = load i16, ptr %.094, align 2, !tbaa !93
  %i.co = sitofp i16 %i.cn to double
  %i.cp = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.cq = call double @llvm.fmuladd.f64(double %i.ah, double %store_forwarded, double %i.co)
  %i.cr = getelementptr i8, ptr %i.cp, i64 -16
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !89
  %i.ct = call double @llvm.fmuladd.f64(double %i.s, double %i.cs, double %i.cq) ; 2 uses
  store double %i.ct, ptr %i.cp, align 8, !tbaa !89
  %.094.1 = getelementptr inbounds [2 x i8], ptr %.094, i64 %i.af
  %i.cu = load i16, ptr %.094.1, align 2, !tbaa !93
  %i.cv = sitofp i16 %i.cu to double
  %i.cw = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %i.cy = call double @llvm.fmuladd.f64(double %i.ah, double %i.ct, double %i.cv)
  %i.cz = getelementptr i8, ptr %i.cw, i64 -8
  %i.da = load double, ptr %i.cz, align 8, !tbaa !89
  %i.db = call double @llvm.fmuladd.f64(double %i.s, double %i.da, double %i.cy) ; 3 uses
  store double %i.db, ptr %i.cx, align 8, !tbaa !89
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.bc
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !114

.preheader.critedge:                              ; preds = %bb.d
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %indvars.iv124 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !93
  %i.de = sitofp i16 %i.dd to double              ; 2 uses
  store double %i.de, ptr %i.ap, align 8, !tbaa !89
  %i.df = getelementptr inbounds [2 x i8], ptr %i.dc, i64 %i.aq
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !93
  %i.dh = sitofp i16 %i.dg to double
  %i.di = call double @llvm.fmuladd.f64(double %i.ah, double %i.de, double %i.dh)
  store double %i.di, ptr %i.at, align 8, !tbaa !89
  br i1 %i.av, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %.lr.ph106.prol.loopexit, %.lr.ph106, %.preheader.critedge
  br i1 %i.bh, label %.lr.ph109.epil.preheader, label %.lr.ph109

.lr.ph106:                                        ; preds = %.lr.ph106.prol.loopexit, %.lr.ph106
  %store_forwarded134 = phi double [ %i.dw, %.lr.ph106 ], [ %store_forwarded134.unr, %.lr.ph106.prol.loopexit ]
  %indvars.iv116 = phi i64 [ %indvars.iv.next117.1, %.lr.ph106 ], [ %indvars.iv116.unr, %.lr.ph106.prol.loopexit ] ; 3 uses
  %.pn100103 = phi ptr [ %.1.1, %.lr.ph106 ], [ %.pn100103.unr, %.lr.ph106.prol.loopexit ]
  %.1 = getelementptr inbounds [2 x i8], ptr %.pn100103, i64 %i.aq ; 2 uses
  %i.dj = load i16, ptr %.1, align 2, !tbaa !93
  %i.dk = sitofp i16 %i.dj to double
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv116 ; 2 uses
  %i.dm = call double @llvm.fmuladd.f64(double %i.ah, double %store_forwarded134, double %i.dk)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = load double, ptr %i.dn, align 8, !tbaa !89
  %i.dp = call double @llvm.fmuladd.f64(double %i.s, double %i.do, double %i.dm) ; 2 uses
  store double %i.dp, ptr %i.dl, align 8, !tbaa !89
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1 ; 2 uses
  %.1.1 = getelementptr inbounds [2 x i8], ptr %.1, i64 %i.aq ; 2 uses
  %i.dq = load i16, ptr %.1.1, align 2, !tbaa !93
  %i.dr = sitofp i16 %i.dq to double
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next117 ; 2 uses
  %i.dt = call double @llvm.fmuladd.f64(double %i.ah, double %i.dp, double %i.dr)
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dv = load double, ptr %i.du, align 8, !tbaa !89
  %i.dw = call double @llvm.fmuladd.f64(double %i.s, double %i.dv, double %i.dt) ; 2 uses
  store double %i.dw, ptr %i.ds, align 8, !tbaa !89
  %indvars.iv.next117.1 = add nsw i64 %indvars.iv116, -2
  %.not.1 = icmp eq i64 %indvars.iv.next117, 0
  br i1 %.not.1, label %.lr.ph109.preheader, label %.lr.ph106, !llvm.loop !115

._crit_edge110.loopexit.unr-lcssa:                ; preds = %.lr.ph109
  br i1 %lcmp.mod139.not, label %._crit_edge110, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %._crit_edge110.loopexit.unr-lcssa, %.lr.ph109.preheader
  %indvars.iv119.epil.init = phi i64 [ 0, %.lr.ph109.preheader ], [ %indvars.iv.next120.1, %._crit_edge110.loopexit.unr-lcssa ] ; 2 uses
  %.096107.epil.init = phi ptr [ %i.bk, %.lr.ph109.preheader ], [ %i.et, %._crit_edge110.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod140)
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv119.epil.init
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !89
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv119.epil.init
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !89
  %i.eb = fsub double %i.dy, %i.ea
  %i.ec = fmul double %i.u, %i.eb
  %i.ed = fptrunc double %i.ec to float
  store float %i.ed, ptr %.096107.epil.init, align 4, !tbaa !91
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %.lr.ph109.epil.preheader, %._crit_edge110.loopexit.unr-lcssa, %.preheader.critedge
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %._crit_edge114, label %bb.d, !llvm.loop !116

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.lr.ph109
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %.lr.ph109 ], [ 0, %.lr.ph109.preheader ] ; 4 uses
  %.096107 = phi ptr [ %i.et, %.lr.ph109 ], [ %i.bk, %.lr.ph109.preheader ] ; 2 uses
  %niter142 = phi i64 [ %niter142.next.1, %.lr.ph109 ], [ 0, %.lr.ph109.preheader ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv119
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !89
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv119
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !89
  %i.ei = fsub double %i.ef, %i.eh
  %i.ej = fmul double %i.u, %i.ei
  %i.ek = fptrunc double %i.ej to float
  store float %i.ek, ptr %.096107, align 4, !tbaa !91
  %indvars.iv.next120 = or disjoint i64 %indvars.iv119, 1 ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %.096107, i64 %i.af ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next120
  %i.en = load double, ptr %i.em, align 8, !tbaa !89
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next120
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !89
  %i.eq = fsub double %i.en, %i.ep
  %i.er = fmul double %i.u, %i.eq
  %i.es = fptrunc double %i.er to float
  store float %i.es, ptr %i.el, align 4, !tbaa !91
  %indvars.iv.next120.1 = add nuw nsw i64 %indvars.iv119, 2 ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.af ; 2 uses
  %niter142.next.1 = add i64 %niter142, 2         ; 2 uses
  %niter142.ncmp.1 = icmp eq i64 %niter142.next.1, %unroll_iter141
  br i1 %niter142.ncmp.1, label %._crit_edge110.loopexit.unr-lcssa, label %.lr.ph109, !llvm.loop !117
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cosh(double noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc28ParallelGradientPaillouYRowsD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8ximgproc28ParallelGradientPaillouYRowsclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !50, !range !64, !noundef !65
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

end_hunk_0
begin_hunk_1_@_ZNK2cv8ximgproc28ParallelGradientPaillouXRowsclERKNS_5RangeE:bb.a
  %i.ady = call double @llvm.fmuladd.f64(double %i.zo, double %i.adx, double %i.adv) ; 2 uses
  store double %i.ady, ptr %i.adu, align 8, !tbaa !89
  %indvars.iv.next110.i120 = add nsw i64 %indvars.iv109.i118, -1 ; 2 uses
  %i.adz = getelementptr inbounds i8, ptr %.194.i119, i64 -4
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !91
  %i.aeb = fpext float %i.aea to double
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %indvars.iv.next110.i120 ; 2 uses
  %i.aed = call double @llvm.fmuladd.f64(double %i.aab, double %i.ady, double %i.aeb)
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aec, i64 16
  %i.aef = load double, ptr %i.aee, align 8, !tbaa !89
  %i.aeg = call double @llvm.fmuladd.f64(double %i.zo, double %i.aef, double %i.aed) ; 2 uses
  store double %i.aeg, ptr %i.aec, align 8, !tbaa !89
  %indvars.iv.next110.i120.1 = add nsw i64 %indvars.iv109.i118, -2
  %i.aeh = getelementptr inbounds i8, ptr %.194.i119, i64 -8
  %.not.i121.1 = icmp eq i64 %indvars.iv.next110.i120, 0
  br i1 %.not.i121.1, label %.lr.ph102.preheader.i104, label %.lr.ph97.i117, !llvm.loop !147

._crit_edge103.i101:                              ; preds = %.lr.ph102.i105, %middle.block, %._crit_edge98.critedge.i100
  %indvars.iv.next118.i102 = add nsw i64 %indvars.iv117.i99, 1 ; 2 uses
  %exitcond121.not.i103 = icmp eq i64 %indvars.iv.next118.i102, %wide.trip.count120.i96
  br i1 %exitcond121.not.i103, label %_ZN2cv8ximgprocL19HorizontalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %bb.z, !llvm.loop !148

.lr.ph102.i105:                                   ; preds = %.lr.ph102.i105.preheader, %.lr.ph102.i105
  %indvars.iv112.i106 = phi i64 [ %indvars.iv.next113.i108, %.lr.ph102.i105 ], [ %indvars.iv112.i106.ph, %.lr.ph102.i105.preheader ] ; 3 uses
  %.08899.i107 = phi ptr [ %i.aep, %.lr.ph102.i105 ], [ %.08899.i107.ph, %.lr.ph102.i105.preheader ] ; 2 uses
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %indvars.iv112.i106
  %i.aej = load double, ptr %i.aei, align 8, !tbaa !89
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %indvars.iv112.i106
  %i.ael = load double, ptr %i.aek, align 8, !tbaa !89
  %i.aem = fsub double %i.aej, %i.ael
  %i.aen = fmul double %i.zq, %i.aem
  %i.aeo = fptrunc double %i.aen to float
  store float %i.aeo, ptr %.08899.i107, align 4, !tbaa !91
  %indvars.iv.next113.i108 = add nuw nsw i64 %indvars.iv112.i106, 1 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.08899.i107, i64 4
  %exitcond116.not.i109 = icmp eq i64 %indvars.iv.next113.i108, %wide.trip.count.i97
  br i1 %exitcond116.not.i109, label %._crit_edge103.i101, label %.lr.ph102.i105, !llvm.loop !149

_ZN2cv8ximgprocL19HorizontalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit: ; preds = %._crit_edge103.i101, %bb.x
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.f, %_ZN2cv8ximgprocL19HorizontalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL19HorizontalIIRFilterItEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL19HorizontalIIRFilterIsEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL19HorizontalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL19HorizontalIIRFilterIhEEvRNS_3MatES3_RKNS_5RangeEdd.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc28ParallelGradientPaillouXColsD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8ximgproc28ParallelGradientPaillouXColsclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !63, !range !64, !noundef !65
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
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !157, !nonnull !65, !align !87 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !43
  %. = tail call i32 @llvm.smax.i32(i32 %i.am, i32 %i.ao) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 1, i32 noundef %., i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1, i32 noundef %., i32 noundef 6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !88 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !88 ; 9 uses
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !157, !nonnull !65, !align !87 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !51 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !43 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load double, ptr %i.ay, align 8, !tbaa !61 ; 4 uses
  %i.ba = fneg double %i.az                       ; 4 uses
  %i.bb = call double @exp(double noundef %i.ba) #14
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !62 ; 7 uses
  %i.be = call double @cosh(double noundef %i.bd) #14
  %i.bf = fmul double %i.az, -2.000000e+00        ; 3 uses
  %i.bg = call double @exp(double noundef %i.bf) #14
  %i.bh = fmul double %i.az, 2.000000e+00
  %i.bi = call double @exp(double noundef %i.ba) #14
  %i.bj = call double @sinh(double noundef %i.bd) #14
  %i.bk = call double @exp(double noundef %i.bf) #14
  %i.bl = fsub double 1.000000e+00, %i.bk
  %i.bm = fmul double %i.bd, %i.bl
  %i.bn = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bh, i64 1
  %i.bp = insertelement <2 x double> <double -2.000000e+00, double poison>, double %i.bi, i64 1
  %i.bq = fmul <2 x double> %i.bo, %i.bp
  %i.br = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bj, i64 1
  %i.bt = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.bm, i64 1
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bs, <2 x double> %i.bt) ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0
  %i.bw = fadd double %i.bv, %i.bg
  %i.bx = extractelement <2 x double> %i.bu, i64 1
  %i.by = fdiv double %i.bw, %i.bx                ; 2 uses
  %i.bz = fmul double %i.az, %i.by
  %i.ca = fmul double %i.bd, %i.by                ; 5 uses
  %i.cb = call double @exp(double noundef %i.ba) #14
  %i.cc = fmul double %i.cb, -2.000000e+00
  %i.cd = call double @cosh(double noundef %i.bd) #14
  %i.ce = fmul double %i.cc, %i.cd                ; 3 uses
  %i.cf = call double @exp(double noundef %i.bf) #14 ; 2 uses
  %i.cg = call double @sinh(double noundef %i.bd) #14
  %i.ch = call double @cosh(double noundef %i.bd) #14
  %i.ci = fneg double %i.ch
  %i.cj = fmul double %i.ca, %i.ci
  %i.ck = call double @llvm.fmuladd.f64(double %i.bz, double %i.cg, double %i.cj)
  %i.cl = call double @exp(double noundef %i.ba) #14
  %i.cm = fmul double %i.cl, %i.ck                ; 3 uses
  %i.cn = fneg double %i.ca                       ; 2 uses
  %i.co = call double @llvm.fmuladd.f64(double %i.cn, double %i.ce, double %i.cm) ; 3 uses
  %i.cp = fmul double %i.cf, %i.cn
  %i.cq = load i32, ptr %1, align 4, !tbaa !45    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !46 ; 2 uses
  %i.ct = icmp slt i32 %i.cq, %i.cs
  br i1 %i.ct, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !88 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  %i.cx = sext i32 %i.ax to i64                   ; 9 uses
  %i.cy = sub nsw i32 0, %i.ax
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = fneg double %i.ce                       ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.dc = icmp sgt i32 %i.av, 2
  %i.dd = fneg double %i.cf                       ; 2 uses
  %i.de = add nsw i32 %i.av, -1
  %i.df = load i64, ptr %i.cw, align 8, !tbaa !55
  %i.dg = sext i32 %i.de to i64                   ; 2 uses
  %i.dh = mul i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.dg ; 2 uses
  %i.dk = sub nsw i64 0, %i.cx                    ; 2 uses
  %i.dl = fmul double %i.ce, -0.000000e+00        ; 2 uses
  %i.dm = sext i32 %i.av to i64
  %i.dn = getelementptr [8 x i8], ptr %i.aq, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -16    ; 2 uses
  %.idx = shl nsw i64 %i.dk, 3
  %i.dp = add i32 %i.av, -3
  %i.dq = shl nsw i32 %i.ax, 1
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !158, !nonnull !65, !align !87
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !88
  %i.dw = icmp sgt i32 %i.av, 0
  %i.dx = zext i32 %i.dp to i64                   ; 2 uses
  %i.dy = sext i32 %i.cq to i64
  %wide.trip.count139 = sext i32 %i.cs to i64
  %wide.trip.count = zext i32 %i.av to i64        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 8
  %i.dz = shl nuw nsw i64 %i.dx, 3
  %i.ea = getelementptr i8, ptr %i.aq, i64 %i.dz
  %scevgep145 = getelementptr i8, ptr %i.ea, i64 8
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.eb = add i32 %i.av, -1
  %i.ec = icmp ult i32 %i.eb, 3
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod148 = icmp ne i64 %xtraiter, 0
  br label %bb.i

._crit_edge126:                                   ; preds = %._crit_edge122, %bb.g
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

bb.h:                                             ; preds = %bb.f
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %i.ed

bb.i:                                             ; preds = %.lr.ph125, %._crit_edge122
  %indvars.iv136 = phi i64 [ %i.dy, %.lr.ph125 ], [ %indvars.iv.next137, %._crit_edge122 ] ; 5 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %indvars.iv136 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !91
  %i.eg = fpext float %i.ef to double
  %i.eh = fmul double %i.ca, %i.eg                ; 2 uses
  store double %i.eh, ptr %i.as, align 8, !tbaa !89
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.cx ; 3 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !91
  %i.ek = fpext float %i.ej to double
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.cz
  %i.em = load float, ptr %i.el, align 4, !tbaa !91
  %i.en = fpext float %i.em to double
  %i.eo = fmul double %i.cm, %i.en
  %i.ep = call double @llvm.fmuladd.f64(double %i.ca, double %i.ek, double %i.eo)
  %i.eq = call double @llvm.fmuladd.f64(double %i.da, double %i.eh, double %i.ep)
  store double %i.eq, ptr %i.db, align 8, !tbaa !89
  br i1 %i.dc, label %.lr.ph.preheader, label %._crit_edge117

.lr.ph.preheader:                                 ; preds = %bb.i
  %load_initial = load double, ptr %scevgep, align 8
  br label %.lr.ph

.lr.ph116.preheader:                              ; preds = %.lr.ph
  %i.er = getelementptr inbounds [4 x i8], ptr %i.di, i64 %indvars.iv136 ; 2 uses
  store double 0.000000e+00, ptr %i.dj, align 8, !tbaa !89
  %i.es = load float, ptr %i.er, align 4, !tbaa !91
  %i.et = fpext float %i.es to double
  %i.eu = call double @llvm.fmuladd.f64(double %i.co, double %i.et, double %i.dl)
  store double %i.eu, ptr %i.do, align 8, !tbaa !89
  %4 = getelementptr inbounds i8, ptr %i.er, i64 %.idx
  %load_initial146 = load double, ptr %scevgep145, align 8
  br label %.lr.ph116

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi double [ %load_initial, %.lr.ph.preheader ], [ %i.fg, %.lr.ph ]
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.pn111 = phi ptr [ %i.ei, %.lr.ph.preheader ], [ %.0106, %.lr.ph ]
  %.0106 = getelementptr inbounds [4 x i8], ptr %.pn111, i64 %i.cx ; 3 uses
  %i.ev = load float, ptr %.0106, align 4, !tbaa !91
  %i.ew = fpext float %i.ev to double
  %i.ex = getelementptr inbounds [4 x i8], ptr %.0106, i64 %i.cz
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !91
  %i.ez = fpext float %i.ey to double
  %i.fa = fmul double %i.cm, %i.ez
  %i.fb = call double @llvm.fmuladd.f64(double %i.ca, double %i.ew, double %i.fa)
  %i.fc = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv ; 2 uses
  %i.fd = call double @llvm.fmuladd.f64(double %i.da, double %store_forwarded, double %i.fb)
  %i.fe = getelementptr i8, ptr %i.fc, i64 -16
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !89
  %i.fg = call double @llvm.fmuladd.f64(double %i.dd, double %i.ff, double %i.fd) ; 2 uses
  store double %i.fg, ptr %i.fc, align 8, !tbaa !89
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph116.preheader, label %.lr.ph, !llvm.loop !152

._crit_edge117:                                   ; preds = %bb.i
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.di, i64 %indvars.iv136
  store double 0.000000e+00, ptr %i.dj, align 8, !tbaa !89
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !91
  %i.fj = fpext float %i.fi to double
  %i.fk = call double @llvm.fmuladd.f64(double %i.co, double %i.fj, double %i.dl)
  store double %i.fk, ptr %i.do, align 8, !tbaa !89
  br i1 %i.dw, label %.lr.ph121.preheader, label %._crit_edge122

.lr.ph121.preheader:                              ; preds = %.lr.ph116, %._crit_edge117
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %indvars.iv136 ; 2 uses
  br i1 %i.ec, label %.lr.ph121.epil.preheader, label %.lr.ph121

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %.lr.ph116
  %store_forwarded147 = phi double [ %load_initial146, %.lr.ph116.preheader ], [ %i.fx, %.lr.ph116 ]
  %indvars.iv128 = phi i64 [ %i.dx, %.lr.ph116.preheader ], [ %indvars.iv.next129, %.lr.ph116 ] ; 3 uses
  %.pn110113 = phi ptr [ %4, %.lr.ph116.preheader ], [ %5, %.lr.ph116 ] ; 3 uses
  %.1 = getelementptr inbounds [4 x i8], ptr %.pn110113, i64 %i.cx
  %i.fm = load float, ptr %.1, align 4, !tbaa !91
  %i.fn = fpext float %i.fm to double
  %i.fo = getelementptr inbounds [4 x i8], ptr %.pn110113, i64 %i.dr
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !91
  %i.fq = fpext float %i.fp to double
  %i.fr = fmul double %i.cp, %i.fq
  %i.fs = call double @llvm.fmuladd.f64(double %i.co, double %i.fn, double %i.fr)
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv128 ; 2 uses
  %i.fu = call double @llvm.fmuladd.f64(double %i.da, double %store_forwarded147, double %i.fs)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !89
  %i.fx = call double @llvm.fmuladd.f64(double %i.dd, double %i.fw, double %i.fu) ; 2 uses
  store double %i.fx, ptr %i.ft, align 8, !tbaa !89
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, -1
  %5 = getelementptr inbounds [4 x i8], ptr %.pn110113, i64 %i.dk
  %.not = icmp eq i64 %indvars.iv128, 0
  br i1 %.not, label %.lr.ph121.preheader, label %.lr.ph116, !llvm.loop !153

._crit_edge122.loopexit.unr-lcssa:                ; preds = %.lr.ph121
  br i1 %lcmp.mod.not, label %._crit_edge122, label %.lr.ph121.epil.preheader

.lr.ph121.epil.preheader:                         ; preds = %._crit_edge122.loopexit.unr-lcssa, %.lr.ph121.preheader
  %indvars.iv131.epil.init = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next132.3, %._crit_edge122.loopexit.unr-lcssa ]
  %.0105118.epil.init = phi ptr [ %i.fl, %.lr.ph121.preheader ], [ %i.hg, %._crit_edge122.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph121.epil

.lr.ph121.epil:                                   ; preds = %.lr.ph121.epil, %.lr.ph121.epil.preheader
  %indvars.iv131.epil = phi i64 [ %indvars.iv131.epil.init, %.lr.ph121.epil.preheader ], [ %indvars.iv.next132.epil, %.lr.ph121.epil ] ; 3 uses
  %.0105118.epil = phi ptr [ %.0105118.epil.init, %.lr.ph121.epil.preheader ], [ %i.ge, %.lr.ph121.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph121.epil.preheader ], [ %epil.iter.next, %.lr.ph121.epil ]
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv131.epil
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !89
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv131.epil
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !89
  %i.gc = fadd double %i.fz, %i.gb
  %i.gd = fptrunc double %i.gc to float
  store float %i.gd, ptr %.0105118.epil, align 4, !tbaa !91
  %indvars.iv.next132.epil = add nuw nsw i64 %indvars.iv131.epil, 1
  %i.ge = getelementptr inbounds [4 x i8], ptr %.0105118.epil, i64 %i.cx
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge122, label %.lr.ph121.epil, !llvm.loop !154

._crit_edge122:                                   ; preds = %._crit_edge122.loopexit.unr-lcssa, %.lr.ph121.epil, %._crit_edge117
  %indvars.iv.next137 = add nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %._crit_edge126, label %bb.i, !llvm.loop !155

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.lr.ph121
  %indvars.iv131 = phi i64 [ %indvars.iv.next132.3, %.lr.ph121 ], [ 0, %.lr.ph121.preheader ] ; 6 uses
  %.0105118 = phi ptr [ %i.hg, %.lr.ph121 ], [ %i.fl, %.lr.ph121.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph121 ], [ 0, %.lr.ph121.preheader ]
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv131
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !89
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv131
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !89
  %i.gj = fadd double %i.gg, %i.gi
  %i.gk = fptrunc double %i.gj to float
  store float %i.gk, ptr %.0105118, align 4, !tbaa !91
  %indvars.iv.next132 = or disjoint i64 %indvars.iv131, 1 ; 2 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %.0105118, i64 %i.cx ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next132
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !89
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next132
  %i.gp = load double, ptr %i.go, align 8, !tbaa !89
  %i.gq = fadd double %i.gn, %i.gp
  %i.gr = fptrunc double %i.gq to float
  store float %i.gr, ptr %i.gl, align 4, !tbaa !91
  %indvars.iv.next132.1 = or disjoint i64 %indvars.iv131, 2 ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.cx ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next132.1
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !89
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next132.1
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !89
  %i.gx = fadd double %i.gu, %i.gw
  %i.gy = fptrunc double %i.gx to float
  store float %i.gy, ptr %i.gs, align 4, !tbaa !91
  %indvars.iv.next132.2 = or disjoint i64 %indvars.iv131, 3 ; 2 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.cx ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next132.2
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !89
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next132.2
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !89
  %i.he = fadd double %i.hb, %i.hd
  %i.hf = fptrunc double %i.he to float
  store float %i.hf, ptr %i.gz, align 4, !tbaa !91
  %indvars.iv.next132.3 = add nuw nsw i64 %indvars.iv131, 4 ; 2 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.cx ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge122.loopexit.unr-lcssa, label %.lr.ph121, !llvm.loop !156
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775696
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #15
  unreachable

_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 208                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 44343134792571037)
  %i.l = select i1 %i.j, i64 44343134792571037, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 208
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #17 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.q, ptr noundef nonnull align 8 dereferenceable(208) %2) #14
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i) #14
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i) #14
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !160

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 208 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i19) #14
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i19) #14
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 208 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !160

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #16
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !18
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
end_hunk_1
