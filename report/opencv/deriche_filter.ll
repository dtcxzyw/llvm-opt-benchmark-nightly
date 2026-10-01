Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/deriche_filter?download=true
inline.NumInlined: 272
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN2cv8ximgproc16GradientDericheXERKNS_11_InputArrayERKNS_12_OutputArrayEdd:bb.a
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
  %i.ch = sext i32 %i.bc to i64                   ; 12 uses
  %i.ci = sub nsw i32 0, %i.bc
  %i.cj = sext i32 %i.ci to i64                   ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cl = icmp sgt i32 %i.bb, 2
  %i.cm = fneg double %i.by                       ; 12 uses
  %i.cn = add nsw i32 %i.bb, -1                   ; 2 uses
  %i.co = mul nsw i32 %i.cn, %i.bc
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.cp ; 2 uses
  %i.cr = sub nsw i64 0, %i.ch                    ; 4 uses
  %i.cs = sext i32 %i.bb to i64
  %i.ct = getelementptr [8 x i8], ptr %i.ba, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 -16    ; 2 uses
  %12 = shl nsw i64 %i.cr, 1
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
  %scevgep153 = getelementptr i8, ptr %i.db, i64 8
  %i.dc = add nsw i64 %wide.trip.count.i, -2      ; 2 uses
  %i.dd = add nsw i64 %wide.trip.count.i, -3      ; 2 uses
  %ident.check.not = icmp eq i32 %i.bc, 1
  %xtraiter240 = and i64 %wide.trip.count.i, 1
  %i.de = icmp eq i64 %i.dd, 0
  %unroll_iter243 = and i64 %i.dc, -2
  %13 = shl nsw i64 %i.ch, 1
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  %lcmp.mod242 = trunc i32 %i.bb to i1
  %14 = shl nsw i64 %i.ch, 1
  %xtraiter245 = and i64 %wide.trip.count.i, 1
  %i.df = icmp eq i64 %i.dd, 0
  %unroll_iter248 = and i64 %i.dc, -2
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  %lcmp.mod247 = trunc i32 %i.bb to i1
  %ident.check151.not = icmp eq i32 %i.bc, 1
  %i.dg = and i64 %i.cx, 1
  %lcmp.mod251.not.not.a = icmp eq i64 %i.dg, 0
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cx ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %indvars.iv.next140.i.lver.orig.prol = add nsw i64 %i.cx, -1
  %i.dk = icmp eq i32 %i.cv, 0
  %15 = shl nsw i64 %i.cr, 1
  %i.dl = and i64 %i.cx, 1
  %lcmp.mod253.not.not = icmp eq i64 %i.dl, 0
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cx ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %indvars.iv.next140.i.prol = add nsw i64 %i.cx, -1
  %i.do = icmp eq i32 %i.cv, 0
  %xtraiter254 = and i64 %wide.trip.count.i, 1
  %i.dp = icmp eq i32 %i.bb, 1
  %unroll_iter257 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod255.not = icmp eq i64 %xtraiter254, 0
  %lcmp.mod256 = trunc i32 %i.bb to i1
  br label %bb.j

common.resume:                                    ; preds = %bb.y, %bb.u, %bb.q, %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.dq, %bb.i ], [ %i.mt, %bb.m ], [ %i.vq, %bb.q ], [ %i.acd, %bb.u ], [ %i.amc, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %common.resume

bb.j:                                             ; preds = %._crit_edge133.i, %.lr.ph136.i
  %indvars.iv147.i = phi i64 [ %i.cy, %.lr.ph136.i ], [ %indvars.iv.next148.i, %._crit_edge133.i ] ; 5 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv147.i ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.ce, i64 %indvars.iv147.i ; 6 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !32
  %i.du = uitofp i8 %i.dt to double               ; 2 uses
  store double %i.du, ptr %i.ay, align 8, !tbaa !89
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 %i.ch
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %i.cj
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !32
  %i.dy = uitofp i8 %i.dx to double
  %i.dz = fmul double %i.bx, %i.du
  %i.ea = fsub double %i.dy, %i.dz
  store double %i.ea, ptr %i.ck, align 8, !tbaa !89
  br i1 %i.cl, label %.lr.ph.i.lver.check, label %.preheader.critedge.i

.lr.ph.i.lver.check:                              ; preds = %bb.j
  br i1 %ident.check.not, label %.lr.ph.i.ph, label %.lr.ph.i.lver.orig.preheader

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  br i1 %i.de, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig.preheader, %.lr.ph.i.lver.orig
  %indvars.iv.i.lver.orig = phi i64 [ %indvars.iv.next.i.lver.orig.1, %.lr.ph.i.lver.orig ], [ 2, %.lr.ph.i.lver.orig.preheader ] ; 3 uses
  %i.eb = phi ptr [ %.0115.i.lver.orig, %.lr.ph.i.lver.orig ], [ %i.ds, %.lr.ph.i.lver.orig.preheader ]
  %niter244 = phi i64 [ %niter244.next.1, %.lr.ph.i.lver.orig ], [ 0, %.lr.ph.i.lver.orig.preheader ]
  %.0115.i.lver.orig = getelementptr inbounds i8, ptr %i.eb, i64 %13 ; 4 uses
  %i.ec = getelementptr inbounds i8, ptr %.0115.i.lver.orig, i64 %i.cj
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !32
  %i.ee = uitofp i8 %i.ed to double
  %i.ef = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.lver.orig ; 3 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 -8
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !89 ; 2 uses
  %i.ei = fmul double %i.bx, %i.eh
  %i.ej = fsub double %i.ee, %i.ei
  %i.ek = getelementptr i8, ptr %i.ef, i64 -16
  %i.el = load double, ptr %i.ek, align 8, !tbaa !89
  %i.em = call double @llvm.fmuladd.f64(double %i.cm, double %i.el, double %i.ej)
  store double %i.em, ptr %i.ef, align 8, !tbaa !89
  %.0115.i.lver.orig.1 = getelementptr inbounds i8, ptr %.0115.i.lver.orig, i64 %i.ch
  %i.en = getelementptr inbounds i8, ptr %.0115.i.lver.orig.1, i64 %i.cj
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !32
  %i.ep = uitofp i8 %i.eo to double
  %i.eq = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.lver.orig ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  %i.es = load double, ptr %i.eq, align 8, !tbaa !89
  %i.et = fmul double %i.bx, %i.es
  %i.eu = fsub double %i.ep, %i.et
  %i.ev = call double @llvm.fmuladd.f64(double %i.cm, double %i.eh, double %i.eu)
  store double %i.ev, ptr %i.er, align 8, !tbaa !89
  %indvars.iv.next.i.lver.orig.1 = add nuw nsw i64 %indvars.iv.i.lver.orig, 2 ; 2 uses
  %niter244.next.1 = add i64 %niter244, 2         ; 2 uses
  %niter244.ncmp.1 = icmp eq i64 %niter244.next.1, %unroll_iter243
  br i1 %niter244.ncmp.1, label %.lr.ph129.i.lver.check.loopexit185.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !100

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load double, ptr %scevgep, align 8 ; 2 uses
  br i1 %i.df, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.ph, %.lr.ph.i
  %store_forwarded = phi double [ %i.fp, %.lr.ph.i ], [ %load_initial, %.lr.ph.i.ph ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 2, %.lr.ph.i.ph ] ; 3 uses
  %i.ew = phi ptr [ %.0115.i, %.lr.ph.i ], [ %i.ds, %.lr.ph.i.ph ]
  %niter249 = phi i64 [ %niter249.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.ph ]
  %.0115.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 2 ; 4 uses
  %i.ex = getelementptr inbounds i8, ptr %.0115.i, i64 %i.cj
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !32
  %i.ez = uitofp i8 %i.ey to double
  %i.fa = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i ; 2 uses
  %i.fb = fmul double %i.bx, %store_forwarded
  %i.fc = fsub double %i.ez, %i.fb
  %i.fd = getelementptr i8, ptr %i.fa, i64 -16
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !89
  %i.ff = call double @llvm.fmuladd.f64(double %i.cm, double %i.fe, double %i.fc) ; 2 uses
  store double %i.ff, ptr %i.fa, align 8, !tbaa !89
  %.0115.i.1 = getelementptr inbounds nuw i8, ptr %.0115.i, i64 %i.ch
  %i.fg = getelementptr inbounds i8, ptr %.0115.i.1, i64 %i.cj
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !32
  %i.fi = uitofp i8 %i.fh to double
  %i.fj = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  %i.fl = fmul double %i.bx, %i.ff
  %i.fm = fsub double %i.fi, %i.fl
  %i.fn = getelementptr i8, ptr %i.fj, i64 -8
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !89
  %i.fp = call double @llvm.fmuladd.f64(double %i.cm, double %i.fo, double %i.fm) ; 3 uses
  store double %i.fp, ptr %i.fk, align 8, !tbaa !89
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter249.next.1 = add i64 %niter249, 2         ; 2 uses
  %niter249.ncmp.1 = icmp eq i64 %niter249.next.1, %unroll_iter248
  br i1 %niter249.ncmp.1, label %.lr.ph129.i.lver.check.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !100

.lr.ph129.i.lver.check.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  br i1 %lcmp.mod246.not, label %.lr.ph129.i.lver.check, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph129.i.lver.check.loopexit.unr-lcssa, %.lr.ph.i.ph
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph.i.ph ], [ %i.fp, %.lr.ph129.i.lver.check.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 2, %.lr.ph.i.ph ], [ %indvars.iv.next.i.1, %.lr.ph129.i.lver.check.loopexit.unr-lcssa ]
  %i.fq = phi ptr [ %i.ds, %.lr.ph.i.ph ], [ %.0115.i, %.lr.ph129.i.lver.check.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod247)
  %.0115.i.epil = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.fr = getelementptr inbounds i8, ptr %.0115.i.epil, i64 %i.cj
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !32
  %i.ft = uitofp i8 %i.fs to double
  %i.fu = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fv = fmul double %i.bx, %store_forwarded.epil.init
  %i.fw = fsub double %i.ft, %i.fv
  %i.fx = getelementptr i8, ptr %i.fu, i64 -16
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !89
  %i.fz = call double @llvm.fmuladd.f64(double %i.cm, double %i.fy, double %i.fw)
  store double %i.fz, ptr %i.fu, align 8, !tbaa !89
  br label %.lr.ph129.i.lver.check

.lr.ph129.i.lver.check.loopexit185.unr-lcssa:     ; preds = %.lr.ph.i.lver.orig
  br i1 %lcmp.mod241.not, label %.lr.ph129.i.lver.check, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.lr.ph129.i.lver.check.loopexit185.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %indvars.iv.i.lver.orig.epil.init = phi i64 [ 2, %.lr.ph.i.lver.orig.preheader ], [ %indvars.iv.next.i.lver.orig.1, %.lr.ph129.i.lver.check.loopexit185.unr-lcssa ]
  %i.ga = phi ptr [ %i.ds, %.lr.ph.i.lver.orig.preheader ], [ %.0115.i.lver.orig, %.lr.ph129.i.lver.check.loopexit185.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod242)
  %.0115.i.lver.orig.epil = getelementptr inbounds i8, ptr %i.ga, i64 %14
  %i.gb = getelementptr inbounds i8, ptr %.0115.i.lver.orig.epil, i64 %i.cj
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !32
  %i.gd = uitofp i8 %i.gc to double
  %i.ge = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.lver.orig.epil.init ; 3 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 -8
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !89
  %i.gh = fmul double %i.bx, %i.gg
  %i.gi = fsub double %i.gd, %i.gh
  %i.gj = getelementptr i8, ptr %i.ge, i64 -16
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !89
  %i.gl = call double @llvm.fmuladd.f64(double %i.cm, double %i.gk, double %i.gi)
  store double %i.gl, ptr %i.ge, align 8, !tbaa !89
  br label %.lr.ph129.i.lver.check

.lr.ph129.i.lver.check:                           ; preds = %.lr.ph.i.lver.orig.epil.preheader, %.lr.ph129.i.lver.check.loopexit185.unr-lcssa, %.lr.ph.i.epil.preheader, %.lr.ph129.i.lver.check.loopexit.unr-lcssa
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv147.i ; 3 uses
  %i.gm = load i8, ptr %gep.i, align 1, !tbaa !32
  %i.gn = uitofp i8 %i.gm to double               ; 2 uses
  store double %i.gn, ptr %i.cq, align 8, !tbaa !89
  %i.go = load i8, ptr %gep.i, align 1, !tbaa !32
  %i.gp = uitofp i8 %i.go to double
  %i.gq = fmul double %i.bx, %i.gn
  %i.gr = fadd double %i.gq, %i.gp
  store double %i.gr, ptr %i.cu, align 8, !tbaa !89
  %16 = getelementptr inbounds i8, ptr %gep.i, i64 %12 ; 6 uses
  br i1 %ident.check151.not, label %.lr.ph129.i.ph, label %.lr.ph129.i.lver.orig.preheader

.lr.ph129.i.lver.orig.preheader:                  ; preds = %.lr.ph129.i.lver.check
  br i1 %lcmp.mod251.not.not.a, label %.lr.ph129.i.lver.orig.prol, label %.lr.ph129.i.lver.orig.prol.loopexit

.lr.ph129.i.lver.orig.prol:                       ; preds = %.lr.ph129.i.lver.orig.preheader
  %.pn122.i.lver.orig.prol = getelementptr inbounds i8, ptr %16, i64 %i.ch
  %i.gs = load i8, ptr %.pn122.i.lver.orig.prol, align 1, !tbaa !32
  %i.gt = uitofp i8 %i.gs to double
  %i.gu = load double, ptr %i.di, align 8, !tbaa !89
  %i.gv = fmul double %i.bx, %i.gu
  %i.gw = fsub double %i.gt, %i.gv
  %i.gx = load double, ptr %i.dj, align 8, !tbaa !89
  %i.gy = call double @llvm.fmuladd.f64(double %i.cm, double %i.gx, double %i.gw)
  store double %i.gy, ptr %i.dh, align 8, !tbaa !89
  %17 = getelementptr inbounds i8, ptr %16, i64 %i.cr
  br label %.lr.ph129.i.lver.orig.prol.loopexit

.lr.ph129.i.lver.orig.prol.loopexit:              ; preds = %.lr.ph129.i.lver.orig.prol, %.lr.ph129.i.lver.orig.preheader
  %indvars.iv139.i.lver.orig.unr = phi i64 [ %i.cx, %.lr.ph129.i.lver.orig.preheader ], [ %indvars.iv.next140.i.lver.orig.prol, %.lr.ph129.i.lver.orig.prol ]
  %.pn123126.i.lver.orig.unr = phi ptr [ %16, %.lr.ph129.i.lver.orig.preheader ], [ %17, %.lr.ph129.i.lver.orig.prol ]
  br i1 %i.dk, label %.lr.ph132.i.preheader, label %.lr.ph129.i.lver.orig

.lr.ph129.i.lver.orig:                            ; preds = %.lr.ph129.i.lver.orig.prol.loopexit, %.lr.ph129.i.lver.orig
  %indvars.iv139.i.lver.orig = phi i64 [ %indvars.iv.next140.i.lver.orig.1, %.lr.ph129.i.lver.orig ], [ %indvars.iv139.i.lver.orig.unr, %.lr.ph129.i.lver.orig.prol.loopexit ] ; 3 uses
  %.pn123126.i.lver.orig = phi ptr [ %18, %.lr.ph129.i.lver.orig ], [ %.pn123126.i.lver.orig.unr, %.lr.ph129.i.lver.orig.prol.loopexit ] ; 3 uses
  %.pn122.i.lver.orig = getelementptr inbounds i8, ptr %.pn123126.i.lver.orig, i64 %i.ch
  %i.gz = load i8, ptr %.pn122.i.lver.orig, align 1, !tbaa !32
  %i.ha = uitofp i8 %i.gz to double
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv139.i.lver.orig ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !89 ; 2 uses
  %i.he = fmul double %i.bx, %i.hd
  %i.hf = fsub double %i.ha, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !89
  %i.hi = call double @llvm.fmuladd.f64(double %i.cm, double %i.hh, double %i.hf)
  store double %i.hi, ptr %i.hb, align 8, !tbaa !89
  %indvars.iv.next140.i.lver.orig = add nsw i64 %indvars.iv139.i.lver.orig, -1 ; 2 uses
  %i.hj = load i8, ptr %.pn123126.i.lver.orig, align 1, !tbaa !32
  %i.hk = uitofp i8 %i.hj to double
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next140.i.lver.orig ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !89
  %i.ho = fmul double %i.bx, %i.hn
  %i.hp = fsub double %i.hk, %i.ho
  %i.hq = call double @llvm.fmuladd.f64(double %i.cm, double %i.hd, double %i.hp)
  store double %i.hq, ptr %i.hl, align 8, !tbaa !89
  %indvars.iv.next140.i.lver.orig.1 = add nsw i64 %indvars.iv139.i.lver.orig, -2
  %18 = getelementptr inbounds i8, ptr %.pn123126.i.lver.orig, i64 %15
  %.not.i.lver.orig.1 = icmp eq i64 %indvars.iv.next140.i.lver.orig, 0
  br i1 %.not.i.lver.orig.1, label %.lr.ph132.i.preheader, label %.lr.ph129.i.lver.orig, !llvm.loop !101

.lr.ph129.i.ph:                                   ; preds = %.lr.ph129.i.lver.check
  %load_initial154 = load double, ptr %scevgep153, align 8 ; 2 uses
  br i1 %lcmp.mod253.not.not, label %.lr.ph129.i.prol, label %.lr.ph129.i.prol.loopexit

.lr.ph129.i.prol:                                 ; preds = %.lr.ph129.i.ph
  %.pn122.i.prol = getelementptr inbounds nuw i8, ptr %16, i64 %i.ch
  %i.hr = load i8, ptr %.pn122.i.prol, align 1, !tbaa !32
  %i.hs = uitofp i8 %i.hr to double
  %i.ht = fmul double %i.bx, %load_initial154
  %i.hu = fsub double %i.hs, %i.ht
  %i.hv = load double, ptr %i.dn, align 8, !tbaa !89
  %i.hw = call double @llvm.fmuladd.f64(double %i.cm, double %i.hv, double %i.hu) ; 2 uses
  store double %i.hw, ptr %i.dm, align 8, !tbaa !89
  %19 = getelementptr inbounds i8, ptr %16, i64 %i.cr
  br label %.lr.ph129.i.prol.loopexit

.lr.ph129.i.prol.loopexit:                        ; preds = %.lr.ph129.i.prol, %.lr.ph129.i.ph
  %store_forwarded155.unr = phi double [ %load_initial154, %.lr.ph129.i.ph ], [ %i.hw, %.lr.ph129.i.prol ]
  %indvars.iv139.i.unr = phi i64 [ %i.cx, %.lr.ph129.i.ph ], [ %indvars.iv.next140.i.prol, %.lr.ph129.i.prol ]
  %.pn123126.i.unr = phi ptr [ %16, %.lr.ph129.i.ph ], [ %19, %.lr.ph129.i.prol ]
  br i1 %i.do, label %.lr.ph132.i.preheader, label %.lr.ph129.i

.preheader.critedge.i:                            ; preds = %bb.j
  %gep.c.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv147.i ; 2 uses
  %i.hx = load i8, ptr %gep.c.i, align 1, !tbaa !32
  %i.hy = uitofp i8 %i.hx to double               ; 2 uses
  store double %i.hy, ptr %i.cq, align 8, !tbaa !89
  %i.hz = load i8, ptr %gep.c.i, align 1, !tbaa !32
  %i.ia = uitofp i8 %i.hz to double
  %i.ib = fmul double %i.bx, %i.hy
  %i.ic = fadd double %i.ib, %i.ia
  store double %i.ic, ptr %i.cu, align 8, !tbaa !89
  br i1 %i.cw, label %.lr.ph132.i.preheader, label %._crit_edge133.i

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.prol.loopexit, %.lr.ph129.i
  %store_forwarded155 = phi double [ %i.is, %.lr.ph129.i ], [ %store_forwarded155.unr, %.lr.ph129.i.prol.loopexit ]
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i.1, %.lr.ph129.i ], [ %indvars.iv139.i.unr, %.lr.ph129.i.prol.loopexit ] ; 3 uses
  %.pn123126.i = phi ptr [ %20, %.lr.ph129.i ], [ %.pn123126.i.unr, %.lr.ph129.i.prol.loopexit ] ; 3 uses
  %.pn122.i = getelementptr inbounds nuw i8, ptr %.pn123126.i, i64 %i.ch
  %i.id = load i8, ptr %.pn122.i, align 1, !tbaa !32
  %i.ie = uitofp i8 %i.id to double
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv139.i ; 2 uses
  %i.ig = fmul double %i.bx, %store_forwarded155
  %i.ih = fsub double %i.ie, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !89
  %i.ik = call double @llvm.fmuladd.f64(double %i.cm, double %i.ij, double %i.ih) ; 2 uses
  store double %i.ik, ptr %i.if, align 8, !tbaa !89
  %indvars.iv.next140.i = add nsw i64 %indvars.iv139.i, -1 ; 2 uses
  %i.il = load i8, ptr %.pn123126.i, align 1, !tbaa !32
  %i.im = uitofp i8 %i.il to double
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next140.i ; 2 uses
  %i.io = fmul double %i.bx, %i.ik
  %i.ip = fsub double %i.im, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !89
  %i.is = call double @llvm.fmuladd.f64(double %i.cm, double %i.ir, double %i.ip) ; 2 uses
  store double %i.is, ptr %i.in, align 8, !tbaa !89
  %indvars.iv.next140.i.1 = add nsw i64 %indvars.iv139.i, -2
  %20 = getelementptr inbounds i8, ptr %.pn123126.i, i64 -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next140.i, 0
  br i1 %.not.i.1, label %.lr.ph132.i.preheader, label %.lr.ph129.i, !llvm.loop !101

.lr.ph132.i.preheader:                            ; preds = %.lr.ph129.i.lver.orig.prol.loopexit, %.lr.ph129.i.lver.orig, %.lr.ph129.i.prol.loopexit, %.lr.ph129.i, %.preheader.critedge.i
  br i1 %i.dp, label %.lr.ph132.i.epil.preheader, label %.lr.ph132.i

.lr.ph132.i:                                      ; preds = %.lr.ph132.i.preheader, %.lr.ph132.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i.1, %.lr.ph132.i ], [ 0, %.lr.ph132.i.preheader ] ; 4 uses
  %.0118130.i = phi ptr [ %i.ji, %.lr.ph132.i ], [ %i.dr, %.lr.ph132.i.preheader ] ; 2 uses
  %niter258 = phi i64 [ %niter258.next.1, %.lr.ph132.i ], [ 0, %.lr.ph132.i.preheader ]
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv142.i
  %i.iu = load double, ptr %i.it, align 8, !tbaa !89
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv142.i
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !89
  %i.ix = fsub double %i.iu, %i.iw
  %i.iy = fmul double %i.bt, %i.ix
  %i.iz = fptrunc double %i.iy to float
  store float %i.iz, ptr %.0118130.i, align 4, !tbaa !91
  %indvars.iv.next143.i = or disjoint i64 %indvars.iv142.i, 1 ; 2 uses
  %i.ja = getelementptr inbounds [4 x i8], ptr %.0118130.i, i64 %i.ch ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next143.i
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !89
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next143.i
  %i.je = load double, ptr %i.jd, align 8, !tbaa !89
  %i.jf = fsub double %i.jc, %i.je
  %i.jg = fmul double %i.bt, %i.jf
  %i.jh = fptrunc double %i.jg to float
  store float %i.jh, ptr %i.ja, align 4, !tbaa !91
  %indvars.iv.next143.i.1 = add nuw nsw i64 %indvars.iv142.i, 2 ; 2 uses
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.ch ; 2 uses
  %niter258.next.1 = add i64 %niter258, 2         ; 2 uses
  %niter258.ncmp.1 = icmp eq i64 %niter258.next.1, %unroll_iter257
  br i1 %niter258.ncmp.1, label %._crit_edge133.i.loopexit.unr-lcssa, label %.lr.ph132.i, !llvm.loop !102

._crit_edge133.i.loopexit.unr-lcssa:              ; preds = %.lr.ph132.i
  br i1 %lcmp.mod255.not, label %._crit_edge133.i, label %.lr.ph132.i.epil.preheader

.lr.ph132.i.epil.preheader:                       ; preds = %._crit_edge133.i.loopexit.unr-lcssa, %.lr.ph132.i.preheader
  %indvars.iv142.i.epil.init = phi i64 [ 0, %.lr.ph132.i.preheader ], [ %indvars.iv.next143.i.1, %._crit_edge133.i.loopexit.unr-lcssa ] ; 2 uses
  %.0118130.i.epil.init = phi ptr [ %i.dr, %.lr.ph132.i.preheader ], [ %i.ji, %._crit_edge133.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod256)
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv142.i.epil.init
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !89
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv142.i.epil.init
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !89
  %i.jn = fsub double %i.jk, %i.jm
  %i.jo = fmul double %i.bt, %i.jn
  %i.jp = fptrunc double %i.jo to float
  store float %i.jp, ptr %.0118130.i.epil.init, align 4, !tbaa !91
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
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !121, !nonnull !65, !align !87
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jt = load double, ptr %i.js, align 8, !tbaa !40 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !41 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !51
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !43
  %..i10 = tail call i32 @llvm.smax.i32(i32 %i.jx, i32 %i.jz) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef 1, i32 noundef %..i10, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef 1, i32 noundef %..i10, i32 noundef 6)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ka = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !88 ; 12 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !88 ; 12 uses
  %i.ke = load i32, ptr %i.jw, align 8, !tbaa !51 ; 10 uses
  %i.kf = load i32, ptr %i.jy, align 4, !tbaa !43 ; 5 uses
  %i.kg = fneg double %i.jt                       ; 4 uses
  %i.kh = call double @exp(double noundef %i.kg) #14
  %i.ki = call double @cos(double noundef %i.jv) #14
  %i.kj = fmul double %i.kh, -2.000000e+00
  %i.kk = call double @llvm.fmuladd.f64(double %i.kj, double %i.ki, double 1.000000e+00)
  %i.kl = fmul double %i.jt, -2.000000e+00        ; 2 uses
  %i.km = call double @exp(double noundef %i.kl) #14
  %i.kn = fadd double %i.kk, %i.km
  %i.ko = call double @exp(double noundef %i.kg) #14
  %i.kp = call double @sin(double noundef %i.jv) #14
  %i.kq = fmul double %i.ko, %i.kp
  %i.kr = fneg double %i.kn
  %i.ks = fdiv double %i.kr, %i.kq
  %i.kt = call double @exp(double noundef %i.kg) #14
  %i.ku = fmul double %i.kt, %i.ks
  %i.kv = call double @sin(double noundef %i.jv) #14
  %i.kw = fmul double %i.kv, %i.ku                ; 3 uses
  %i.kx = call double @exp(double noundef %i.kg) #14
  %i.ky = fmul double %i.kx, -2.000000e+00
  %i.kz = call double @cos(double noundef %i.jv) #14
  %i.la = fmul double %i.ky, %i.kz                ; 15 uses
  %i.lb = call double @exp(double noundef %i.kl) #14
  %i.lc = load i32, ptr %1, align 4, !tbaa !45    ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !46 ; 2 uses
  %i.lf = icmp slt i32 %i.lc, %i.le
  br i1 %i.lf, label %.lr.ph136.i11, label %_ZN2cv8ximgprocL17VerticalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit

.lr.ph136.i11:                                    ; preds = %bb.l
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !88 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !88
  %i.lk = sext i32 %i.kf to i64                   ; 12 uses
  %i.ll = sub nsw i32 0, %i.kf
  %i.lm = sext i32 %i.ll to i64                   ; 7 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.lo = icmp sgt i32 %i.ke, 2
  %i.lp = fneg double %i.lb                       ; 12 uses
  %i.lq = add nsw i32 %i.ke, -1                   ; 2 uses
  %i.lr = mul nsw i32 %i.lq, %i.kf
  %i.ls = sext i32 %i.lq to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.ls ; 2 uses
  %i.lu = sub nsw i64 0, %i.lk                    ; 4 uses
  %i.lv = sext i32 %i.ke to i64
  %i.lw = getelementptr [8 x i8], ptr %i.kd, i64 %i.lv
  %i.lx = getelementptr i8, ptr %i.lw, i64 -16    ; 2 uses
  %21 = shl nsw i64 %i.lu, 1
  %i.ly = add i32 %i.ke, -3                       ; 3 uses
  %i.lz = icmp sgt i32 %i.ke, 0
  %i.ma = zext i32 %i.ly to i64                   ; 9 uses
  %i.mb = sext i32 %i.lc to i64
  %i.mc = sext i32 %i.lr to i64
  %wide.trip.count150.i12 = sext i32 %i.le to i64
  %wide.trip.count.i13 = zext i32 %i.ke to i64    ; 6 uses
  %invariant.gep.i14 = getelementptr i8, ptr %i.lh, i64 %i.mc ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.kb, i64 8
  %i.md = shl nuw nsw i64 %i.ma, 3
  %i.me = getelementptr i8, ptr %i.kd, i64 %i.md
  %scevgep163 = getelementptr i8, ptr %i.me, i64 8
  %i.mf = add nsw i64 %wide.trip.count.i13, -2    ; 2 uses
  %i.mg = add nsw i64 %wide.trip.count.i13, -3    ; 2 uses
  %ident.check156.not = icmp eq i32 %i.kf, 1
  %xtraiter221 = and i64 %wide.trip.count.i13, 1
  %i.mh = icmp eq i64 %i.mg, 0
  %unroll_iter224 = and i64 %i.mf, -2
  %22 = shl nsw i64 %i.lk, 1
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  %lcmp.mod223 = trunc i32 %i.ke to i1
  %23 = shl nsw i64 %i.lk, 1
  %xtraiter226 = and i64 %wide.trip.count.i13, 1
  %i.mi = icmp eq i64 %i.mg, 0
  %unroll_iter229 = and i64 %i.mf, -2
  %lcmp.mod227.not = icmp eq i64 %xtraiter226, 0
  %lcmp.mod228 = trunc i32 %i.ke to i1
  %ident.check161.not = icmp eq i32 %i.kf, 1
  %i.mj = and i64 %i.ma, 1
  %lcmp.mod232.not.not.a = icmp eq i64 %i.mj, 0
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.ma ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %indvars.iv.next140.i40.lver.orig.prol = add nsw i64 %i.ma, -1
  %i.mn = icmp eq i32 %i.ly, 0
  %24 = shl nsw i64 %i.lu, 1
  %i.mo = and i64 %i.ma, 1
  %lcmp.mod234.not.not = icmp eq i64 %i.mo, 0
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.ma ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %indvars.iv.next140.i40.prol = add nsw i64 %i.ma, -1
  %i.mr = icmp eq i32 %i.ly, 0
  %xtraiter235 = and i64 %wide.trip.count.i13, 1
  %i.ms = icmp eq i32 %i.ke, 1
  %unroll_iter238 = and i64 %wide.trip.count.i13, 4294967294
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  %lcmp.mod237 = trunc i32 %i.ke to i1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %common.resume

bb.n:                                             ; preds = %._crit_edge133.i19, %.lr.ph136.i11
  %indvars.iv147.i16 = phi i64 [ %i.mb, %.lr.ph136.i11 ], [ %indvars.iv.next148.i20, %._crit_edge133.i19 ] ; 5 uses
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %indvars.iv147.i16 ; 2 uses
  %i.mv = getelementptr inbounds i8, ptr %i.lh, i64 %indvars.iv147.i16 ; 6 uses
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !32
  %i.mx = sitofp i8 %i.mw to double               ; 2 uses
  store double %i.mx, ptr %i.kb, align 8, !tbaa !89
  %i.my = getelementptr inbounds i8, ptr %i.mv, i64 %i.lk
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 %i.lm
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !32
  %i.nb = sitofp i8 %i.na to double
  %i.nc = fmul double %i.la, %i.mx
  %i.nd = fsub double %i.nb, %i.nc
  store double %i.nd, ptr %i.ln, align 8, !tbaa !89
  br i1 %i.lo, label %.lr.ph.i28.lver.check, label %.preheader.critedge.i17

.lr.ph.i28.lver.check:                            ; preds = %bb.n
  br i1 %ident.check156.not, label %.lr.ph.i28.ph, label %.lr.ph.i28.lver.orig.preheader

.lr.ph.i28.lver.orig.preheader:                   ; preds = %.lr.ph.i28.lver.check
  br i1 %i.mh, label %.lr.ph.i28.lver.orig.epil.preheader, label %.lr.ph.i28.lver.orig

.lr.ph.i28.lver.orig:                             ; preds = %.lr.ph.i28.lver.orig.preheader, %.lr.ph.i28.lver.orig
  %indvars.iv.i29.lver.orig = phi i64 [ %indvars.iv.next.i32.lver.orig.1, %.lr.ph.i28.lver.orig ], [ 2, %.lr.ph.i28.lver.orig.preheader ] ; 3 uses
  %i.ne = phi ptr [ %.0115.i31.lver.orig, %.lr.ph.i28.lver.orig ], [ %i.mv, %.lr.ph.i28.lver.orig.preheader ]
  %niter225 = phi i64 [ %niter225.next.1, %.lr.ph.i28.lver.orig ], [ 0, %.lr.ph.i28.lver.orig.preheader ]
  %.0115.i31.lver.orig = getelementptr inbounds i8, ptr %i.ne, i64 %22 ; 4 uses
  %i.nf = getelementptr inbounds i8, ptr %.0115.i31.lver.orig, i64 %i.lm
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !32
  %i.nh = sitofp i8 %i.ng to double
  %i.ni = getelementptr [8 x i8], ptr %i.kb, i64 %indvars.iv.i29.lver.orig ; 3 uses
  %i.nj = getelementptr i8, ptr %i.ni, i64 -8
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !89 ; 2 uses
  %i.nl = fmul double %i.la, %i.nk
  %i.nm = fsub double %i.nh, %i.nl
  %i.nn = getelementptr i8, ptr %i.ni, i64 -16
  %i.no = load double, ptr %i.nn, align 8, !tbaa !89
  %i.np = call double @llvm.fmuladd.f64(double %i.lp, double %i.no, double %i.nm)
  store double %i.np, ptr %i.ni, align 8, !tbaa !89
  %.0115.i31.lver.orig.1 = getelementptr inbounds i8, ptr %.0115.i31.lver.orig, i64 %i.lk
  %i.nq = getelementptr inbounds i8, ptr %.0115.i31.lver.orig.1, i64 %i.lm
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !32
  %i.ns = sitofp i8 %i.nr to double
  %i.nt = getelementptr [8 x i8], ptr %i.kb, i64 %indvars.iv.i29.lver.orig ; 2 uses
  %i.nu = getelementptr i8, ptr %i.nt, i64 8
  %i.nv = load double, ptr %i.nt, align 8, !tbaa !89
  %i.nw = fmul double %i.la, %i.nv
  %i.nx = fsub double %i.ns, %i.nw
  %i.ny = call double @llvm.fmuladd.f64(double %i.lp, double %i.nk, double %i.nx)
  store double %i.ny, ptr %i.nu, align 8, !tbaa !89
  %indvars.iv.next.i32.lver.orig.1 = add nuw nsw i64 %indvars.iv.i29.lver.orig, 2 ; 2 uses
  %niter225.next.1 = add i64 %niter225, 2         ; 2 uses
  %niter225.ncmp.1 = icmp eq i64 %niter225.next.1, %unroll_iter224
  br i1 %niter225.ncmp.1, label %.lr.ph129.i36.lver.check.loopexit187.unr-lcssa, label %.lr.ph.i28.lver.orig, !llvm.loop !104

.lr.ph.i28.ph:                                    ; preds = %.lr.ph.i28.lver.check
  %load_initial159 = load double, ptr %scevgep158, align 8 ; 2 uses
  br i1 %i.mi, label %.lr.ph.i28.epil.preheader, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.ph, %.lr.ph.i28
  %store_forwarded160 = phi double [ %i.os, %.lr.ph.i28 ], [ %load_initial159, %.lr.ph.i28.ph ]
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i32.1, %.lr.ph.i28 ], [ 2, %.lr.ph.i28.ph ] ; 3 uses
  %i.nz = phi ptr [ %.0115.i31, %.lr.ph.i28 ], [ %i.mv, %.lr.ph.i28.ph ]
  %niter230 = phi i64 [ %niter230.next.1, %.lr.ph.i28 ], [ 0, %.lr.ph.i28.ph ]
  %.0115.i31 = getelementptr inbounds nuw i8, ptr %i.nz, i64 2 ; 4 uses
  %i.oa = getelementptr inbounds i8, ptr %.0115.i31, i64 %i.lm
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !32
  %i.oc = sitofp i8 %i.ob to double
  %i.od = getelementptr [8 x i8], ptr %i.kb, i64 %indvars.iv.i29 ; 2 uses
  %i.oe = fmul double %i.la, %store_forwarded160
  %i.of = fsub double %i.oc, %i.oe
  %i.og = getelementptr i8, ptr %i.od, i64 -16
  %i.oh = load double, ptr %i.og, align 8, !tbaa !89
  %i.oi = call double @llvm.fmuladd.f64(double %i.lp, double %i.oh, double %i.of) ; 2 uses
  store double %i.oi, ptr %i.od, align 8, !tbaa !89
  %.0115.i31.1 = getelementptr inbounds nuw i8, ptr %.0115.i31, i64 %i.lk
  %i.oj = getelementptr inbounds i8, ptr %.0115.i31.1, i64 %i.lm
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !32
  %i.ol = sitofp i8 %i.ok to double
  %i.om = getelementptr [8 x i8], ptr %i.kb, i64 %indvars.iv.i29 ; 2 uses
  %i.on = getelementptr i8, ptr %i.om, i64 8
  %i.oo = fmul double %i.la, %i.oi
  %i.op = fsub double %i.ol, %i.oo
  %i.oq = getelementptr i8, ptr %i.om, i64 -8
  %i.or = load double, ptr %i.oq, align 8, !tbaa !89
  %i.os = call double @llvm.fmuladd.f64(double %i.lp, double %i.or, double %i.op) ; 3 uses
  store double %i.os, ptr %i.on, align 8, !tbaa !89
  %indvars.iv.next.i32.1 = add nuw nsw i64 %indvars.iv.i29, 2 ; 2 uses
  %niter230.next.1 = add i64 %niter230, 2         ; 2 uses
  %niter230.ncmp.1 = icmp eq i64 %niter230.next.1, %unroll_iter229
  br i1 %niter230.ncmp.1, label %.lr.ph129.i36.lver.check.loopexit.unr-lcssa, label %.lr.ph.i28, !llvm.loop !104

.lr.ph129.i36.lver.check.loopexit.unr-lcssa:      ; preds = %.lr.ph.i28
  br i1 %lcmp.mod227.not, label %.lr.ph129.i36.lver.check, label %.lr.ph.i28.epil.preheader

.lr.ph.i28.epil.preheader:                        ; preds = %.lr.ph129.i36.lver.check.loopexit.unr-lcssa, %.lr.ph.i28.ph
  %store_forwarded160.epil.init = phi double [ %load_initial159, %.lr.ph.i28.ph ], [ %i.os, %.lr.ph129.i36.lver.check.loopexit.unr-lcssa ]
  %indvars.iv.i29.epil.init = phi i64 [ 2, %.lr.ph.i28.ph ], [ %indvars.iv.next.i32.1, %.lr.ph129.i36.lver.check.loopexit.unr-lcssa ]
  %i.ot = phi ptr [ %i.mv, %.lr.ph.i28.ph ], [ %.0115.i31, %.lr.ph129.i36.lver.check.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod228)
  %.0115.i31.epil = getelementptr inbounds nuw i8, ptr %i.ot, i64 2
  %i.ou = getelementptr inbounds i8, ptr %.0115.i31.epil, i64 %i.lm
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !32
  %i.ow = sitofp i8 %i.ov to double
  %i.ox = getelementptr [8 x i8], ptr %i.kb, i64 %indvars.iv.i29.epil.init ; 2 uses
  %i.oy = fmul double %i.la, %store_forwarded160.epil.init
  %i.oz = fsub double %i.ow, %i.oy
  %i.pa = getelementptr i8, ptr %i.ox, i64 -16
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !89
  %i.pc = call double @llvm.fmuladd.f64(double %i.lp, double %i.pb, double %i.oz)
  store double %i.pc, ptr %i.ox, align 8, !tbaa !89
  br label %.lr.ph129.i36.lver.check

.lr.ph129.i36.lver.check.loopexit187.unr-lcssa:   ; preds = %.lr.ph.i28.lver.orig
  br i1 %lcmp.mod222.not, label %.lr.ph129.i36.lver.check, label %.lr.ph.i28.lver.orig.epil.preheader

.lr.ph.i28.lver.orig.epil.preheader:              ; preds = %.lr.ph129.i36.lver.check.loopexit187.unr-lcssa, %.lr.ph.i28.lver.orig.preheader
  %indvars.iv.i29.lver.orig.epil.init = phi i64 [ 2, %.lr.ph.i28.lver.orig.preheader ], [ %indvars.iv.next.i32.lver.orig.1, %.lr.ph129.i36.lver.check.loopexit187.unr-lcssa ]
  %i.pd = phi ptr [ %i.mv, %.lr.ph.i28.lver.orig.preheader ], [ %.0115.i31.lver.orig, %.lr.ph129.i36.lver.check.loopexit187.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod223)
  %.0115.i31.lver.orig.epil = getelementptr inbounds i8, ptr %i.pd, i64 %23
  %i.pe = getelementptr inbounds i8, ptr %.0115.i31.lver.orig.epil, i64 %i.lm
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !32
  %i.pg = sitofp i8 %i.pf to double
  %i.ph = getelementptr [8 x i8], ptr %i.kb, i64 %indvars.iv.i29.lver.orig.epil.init ; 3 uses
  %i.pi = getelementptr i8, ptr %i.ph, i64 -8
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !89
  %i.pk = fmul double %i.la, %i.pj
  %i.pl = fsub double %i.pg, %i.pk
  %i.pm = getelementptr i8, ptr %i.ph, i64 -16
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !89
  %i.po = call double @llvm.fmuladd.f64(double %i.lp, double %i.pn, double %i.pl)
  store double %i.po, ptr %i.ph, align 8, !tbaa !89
  br label %.lr.ph129.i36.lver.check

.lr.ph129.i36.lver.check:                         ; preds = %.lr.ph.i28.lver.orig.epil.preheader, %.lr.ph129.i36.lver.check.loopexit187.unr-lcssa, %.lr.ph.i28.epil.preheader, %.lr.ph129.i36.lver.check.loopexit.unr-lcssa
  %gep.i35 = getelementptr i8, ptr %invariant.gep.i14, i64 %indvars.iv147.i16 ; 3 uses
  %i.pp = load i8, ptr %gep.i35, align 1, !tbaa !32
  %i.pq = sitofp i8 %i.pp to double               ; 2 uses
  store double %i.pq, ptr %i.lt, align 8, !tbaa !89
  %i.pr = load i8, ptr %gep.i35, align 1, !tbaa !32
  %i.ps = sitofp i8 %i.pr to double
  %i.pt = fmul double %i.la, %i.pq
  %i.pu = fadd double %i.pt, %i.ps
  store double %i.pu, ptr %i.lx, align 8, !tbaa !89
  %25 = getelementptr inbounds i8, ptr %gep.i35, i64 %21 ; 6 uses
  br i1 %ident.check161.not, label %.lr.ph129.i36.ph, label %.lr.ph129.i36.lver.orig.preheader

.lr.ph129.i36.lver.orig.preheader:                ; preds = %.lr.ph129.i36.lver.check
  br i1 %lcmp.mod232.not.not.a, label %.lr.ph129.i36.lver.orig.prol, label %.lr.ph129.i36.lver.orig.prol.loopexit

.lr.ph129.i36.lver.orig.prol:                     ; preds = %.lr.ph129.i36.lver.orig.preheader
  %.pn122.i39.lver.orig.prol = getelementptr inbounds i8, ptr %25, i64 %i.lk
  %i.pv = load i8, ptr %.pn122.i39.lver.orig.prol, align 1, !tbaa !32
  %i.pw = sitofp i8 %i.pv to double
  %i.px = load double, ptr %i.ml, align 8, !tbaa !89
  %i.py = fmul double %i.la, %i.px
  %i.pz = fsub double %i.pw, %i.py
  %i.qa = load double, ptr %i.mm, align 8, !tbaa !89
  %i.qb = call double @llvm.fmuladd.f64(double %i.lp, double %i.qa, double %i.pz)
  store double %i.qb, ptr %i.mk, align 8, !tbaa !89
  %26 = getelementptr inbounds i8, ptr %25, i64 %i.lu
  br label %.lr.ph129.i36.lver.orig.prol.loopexit

.lr.ph129.i36.lver.orig.prol.loopexit:            ; preds = %.lr.ph129.i36.lver.orig.prol, %.lr.ph129.i36.lver.orig.preheader
  %indvars.iv139.i37.lver.orig.unr = phi i64 [ %i.ma, %.lr.ph129.i36.lver.orig.preheader ], [ %indvars.iv.next140.i40.lver.orig.prol, %.lr.ph129.i36.lver.orig.prol ]
  %.pn123126.i38.lver.orig.unr = phi ptr [ %25, %.lr.ph129.i36.lver.orig.preheader ], [ %26, %.lr.ph129.i36.lver.orig.prol ]
  br i1 %i.mn, label %.lr.ph132.i23.preheader, label %.lr.ph129.i36.lver.orig

.lr.ph129.i36.lver.orig:                          ; preds = %.lr.ph129.i36.lver.orig.prol.loopexit, %.lr.ph129.i36.lver.orig
  %indvars.iv139.i37.lver.orig = phi i64 [ %indvars.iv.next140.i40.lver.orig.1, %.lr.ph129.i36.lver.orig ], [ %indvars.iv139.i37.lver.orig.unr, %.lr.ph129.i36.lver.orig.prol.loopexit ] ; 3 uses
  %.pn123126.i38.lver.orig = phi ptr [ %27, %.lr.ph129.i36.lver.orig ], [ %.pn123126.i38.lver.orig.unr, %.lr.ph129.i36.lver.orig.prol.loopexit ] ; 3 uses
  %.pn122.i39.lver.orig = getelementptr inbounds i8, ptr %.pn123126.i38.lver.orig, i64 %i.lk
  %i.qc = load i8, ptr %.pn122.i39.lver.orig, align 1, !tbaa !32
  %i.qd = sitofp i8 %i.qc to double
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv139.i37.lver.orig ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !89 ; 2 uses
  %i.qh = fmul double %i.la, %i.qg
  %i.qi = fsub double %i.qd, %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !89
  %i.ql = call double @llvm.fmuladd.f64(double %i.lp, double %i.qk, double %i.qi)
  store double %i.ql, ptr %i.qe, align 8, !tbaa !89
  %indvars.iv.next140.i40.lver.orig = add nsw i64 %indvars.iv139.i37.lver.orig, -1 ; 2 uses
  %i.qm = load i8, ptr %.pn123126.i38.lver.orig, align 1, !tbaa !32
  %i.qn = sitofp i8 %i.qm to double
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv.next140.i40.lver.orig ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !89
  %i.qr = fmul double %i.la, %i.qq
  %i.qs = fsub double %i.qn, %i.qr
  %i.qt = call double @llvm.fmuladd.f64(double %i.lp, double %i.qg, double %i.qs)
  store double %i.qt, ptr %i.qo, align 8, !tbaa !89
  %indvars.iv.next140.i40.lver.orig.1 = add nsw i64 %indvars.iv139.i37.lver.orig, -2
  %27 = getelementptr inbounds i8, ptr %.pn123126.i38.lver.orig, i64 %24
  %.not.i41.lver.orig.1 = icmp eq i64 %indvars.iv.next140.i40.lver.orig, 0
  br i1 %.not.i41.lver.orig.1, label %.lr.ph132.i23.preheader, label %.lr.ph129.i36.lver.orig, !llvm.loop !105

.lr.ph129.i36.ph:                                 ; preds = %.lr.ph129.i36.lver.check
  %load_initial164 = load double, ptr %scevgep163, align 8 ; 2 uses
  br i1 %lcmp.mod234.not.not, label %.lr.ph129.i36.prol, label %.lr.ph129.i36.prol.loopexit

.lr.ph129.i36.prol:                               ; preds = %.lr.ph129.i36.ph
  %.pn122.i39.prol = getelementptr inbounds nuw i8, ptr %25, i64 %i.lk
  %i.qu = load i8, ptr %.pn122.i39.prol, align 1, !tbaa !32
  %i.qv = sitofp i8 %i.qu to double
  %i.qw = fmul double %i.la, %load_initial164
  %i.qx = fsub double %i.qv, %i.qw
  %i.qy = load double, ptr %i.mq, align 8, !tbaa !89
  %i.qz = call double @llvm.fmuladd.f64(double %i.lp, double %i.qy, double %i.qx) ; 2 uses
  store double %i.qz, ptr %i.mp, align 8, !tbaa !89
  %28 = getelementptr inbounds i8, ptr %25, i64 %i.lu
  br label %.lr.ph129.i36.prol.loopexit

.lr.ph129.i36.prol.loopexit:                      ; preds = %.lr.ph129.i36.prol, %.lr.ph129.i36.ph
  %store_forwarded165.unr = phi double [ %load_initial164, %.lr.ph129.i36.ph ], [ %i.qz, %.lr.ph129.i36.prol ]
  %indvars.iv139.i37.unr = phi i64 [ %i.ma, %.lr.ph129.i36.ph ], [ %indvars.iv.next140.i40.prol, %.lr.ph129.i36.prol ]
  %.pn123126.i38.unr = phi ptr [ %25, %.lr.ph129.i36.ph ], [ %28, %.lr.ph129.i36.prol ]
  br i1 %i.mr, label %.lr.ph132.i23.preheader, label %.lr.ph129.i36

.preheader.critedge.i17:                          ; preds = %bb.n
  %gep.c.i18 = getelementptr i8, ptr %invariant.gep.i14, i64 %indvars.iv147.i16 ; 2 uses
  %i.ra = load i8, ptr %gep.c.i18, align 1, !tbaa !32
  %i.rb = sitofp i8 %i.ra to double               ; 2 uses
  store double %i.rb, ptr %i.lt, align 8, !tbaa !89
  %i.rc = load i8, ptr %gep.c.i18, align 1, !tbaa !32
  %i.rd = sitofp i8 %i.rc to double
  %i.re = fmul double %i.la, %i.rb
  %i.rf = fadd double %i.re, %i.rd
  store double %i.rf, ptr %i.lx, align 8, !tbaa !89
  br i1 %i.lz, label %.lr.ph132.i23.preheader, label %._crit_edge133.i19

.lr.ph129.i36:                                    ; preds = %.lr.ph129.i36.prol.loopexit, %.lr.ph129.i36
  %store_forwarded165 = phi double [ %i.rv, %.lr.ph129.i36 ], [ %store_forwarded165.unr, %.lr.ph129.i36.prol.loopexit ]
  %indvars.iv139.i37 = phi i64 [ %indvars.iv.next140.i40.1, %.lr.ph129.i36 ], [ %indvars.iv139.i37.unr, %.lr.ph129.i36.prol.loopexit ] ; 3 uses
  %.pn123126.i38 = phi ptr [ %29, %.lr.ph129.i36 ], [ %.pn123126.i38.unr, %.lr.ph129.i36.prol.loopexit ] ; 3 uses
  %.pn122.i39 = getelementptr inbounds nuw i8, ptr %.pn123126.i38, i64 %i.lk
  %i.rg = load i8, ptr %.pn122.i39, align 1, !tbaa !32
  %i.rh = sitofp i8 %i.rg to double
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv139.i37 ; 2 uses
  %i.rj = fmul double %i.la, %store_forwarded165
  %i.rk = fsub double %i.rh, %i.rj
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !89
  %i.rn = call double @llvm.fmuladd.f64(double %i.lp, double %i.rm, double %i.rk) ; 2 uses
  store double %i.rn, ptr %i.ri, align 8, !tbaa !89
  %indvars.iv.next140.i40 = add nsw i64 %indvars.iv139.i37, -1 ; 2 uses
  %i.ro = load i8, ptr %.pn123126.i38, align 1, !tbaa !32
  %i.rp = sitofp i8 %i.ro to double
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv.next140.i40 ; 2 uses
  %i.rr = fmul double %i.la, %i.rn
  %i.rs = fsub double %i.rp, %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.ru = load double, ptr %i.rt, align 8, !tbaa !89
  %i.rv = call double @llvm.fmuladd.f64(double %i.lp, double %i.ru, double %i.rs) ; 2 uses
  store double %i.rv, ptr %i.rq, align 8, !tbaa !89
  %indvars.iv.next140.i40.1 = add nsw i64 %indvars.iv139.i37, -2
  %29 = getelementptr inbounds i8, ptr %.pn123126.i38, i64 -2
  %.not.i41.1 = icmp eq i64 %indvars.iv.next140.i40, 0
  br i1 %.not.i41.1, label %.lr.ph132.i23.preheader, label %.lr.ph129.i36, !llvm.loop !105

.lr.ph132.i23.preheader:                          ; preds = %.lr.ph129.i36.lver.orig.prol.loopexit, %.lr.ph129.i36.lver.orig, %.lr.ph129.i36.prol.loopexit, %.lr.ph129.i36, %.preheader.critedge.i17
  br i1 %i.ms, label %.lr.ph132.i23.epil.preheader, label %.lr.ph132.i23

.lr.ph132.i23:                                    ; preds = %.lr.ph132.i23.preheader, %.lr.ph132.i23
  %indvars.iv142.i24 = phi i64 [ %indvars.iv.next143.i26.1, %.lr.ph132.i23 ], [ 0, %.lr.ph132.i23.preheader ] ; 4 uses
  %.0118130.i25 = phi ptr [ %i.sl, %.lr.ph132.i23 ], [ %i.mu, %.lr.ph132.i23.preheader ] ; 2 uses
  %niter239 = phi i64 [ %niter239.next.1, %.lr.ph132.i23 ], [ 0, %.lr.ph132.i23.preheader ]
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %indvars.iv142.i24
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !89
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv142.i24
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !89
  %i.sa = fsub double %i.rx, %i.rz
  %i.sb = fmul double %i.kw, %i.sa
  %i.sc = fptrunc double %i.sb to float
  store float %i.sc, ptr %.0118130.i25, align 4, !tbaa !91
  %indvars.iv.next143.i26 = or disjoint i64 %indvars.iv142.i24, 1 ; 2 uses
  %i.sd = getelementptr inbounds [4 x i8], ptr %.0118130.i25, i64 %i.lk ; 2 uses
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %indvars.iv.next143.i26
  %i.sf = load double, ptr %i.se, align 8, !tbaa !89
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv.next143.i26
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !89
  %i.si = fsub double %i.sf, %i.sh
  %i.sj = fmul double %i.kw, %i.si
  %i.sk = fptrunc double %i.sj to float
  store float %i.sk, ptr %i.sd, align 4, !tbaa !91
  %indvars.iv.next143.i26.1 = add nuw nsw i64 %indvars.iv142.i24, 2 ; 2 uses
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sd, i64 %i.lk ; 2 uses
  %niter239.next.1 = add i64 %niter239, 2         ; 2 uses
  %niter239.ncmp.1 = icmp eq i64 %niter239.next.1, %unroll_iter238
  br i1 %niter239.ncmp.1, label %._crit_edge133.i19.loopexit.unr-lcssa, label %.lr.ph132.i23, !llvm.loop !106

._crit_edge133.i19.loopexit.unr-lcssa:            ; preds = %.lr.ph132.i23
  br i1 %lcmp.mod236.not, label %._crit_edge133.i19, label %.lr.ph132.i23.epil.preheader

.lr.ph132.i23.epil.preheader:                     ; preds = %._crit_edge133.i19.loopexit.unr-lcssa, %.lr.ph132.i23.preheader
  %indvars.iv142.i24.epil.init = phi i64 [ 0, %.lr.ph132.i23.preheader ], [ %indvars.iv.next143.i26.1, %._crit_edge133.i19.loopexit.unr-lcssa ] ; 2 uses
  %.0118130.i25.epil.init = phi ptr [ %i.mu, %.lr.ph132.i23.preheader ], [ %i.sl, %._crit_edge133.i19.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod237)
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %indvars.iv142.i24.epil.init
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !89
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv142.i24.epil.init
  %i.sp = load double, ptr %i.so, align 8, !tbaa !89
  %i.sq = fsub double %i.sn, %i.sp
  %i.sr = fmul double %i.kw, %i.sq
  %i.ss = fptrunc double %i.sr to float
  store float %i.ss, ptr %.0118130.i25.epil.init, align 4, !tbaa !91
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
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !121, !nonnull !65, !align !87
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !40 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !41 ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !51
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !43
  %..i42 = tail call i32 @llvm.smax.i32(i32 %i.ta, i32 %i.tc) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 1, i32 noundef %..i42, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 1, i32 noundef %..i42, i32 noundef 6)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.td = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !88 ; 9 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !88 ; 9 uses
  %i.th = load i32, ptr %i.sz, align 8, !tbaa !51 ; 10 uses
  %i.ti = load i32, ptr %i.tb, align 4, !tbaa !43 ; 3 uses
  %i.tj = fneg double %i.sw                       ; 4 uses
  %i.tk = call double @exp(double noundef %i.tj) #14
  %i.tl = call double @cos(double noundef %i.sy) #14
  %i.tm = fmul double %i.tk, -2.000000e+00
  %i.tn = call double @llvm.fmuladd.f64(double %i.tm, double %i.tl, double 1.000000e+00)
  %i.to = fmul double %i.sw, -2.000000e+00        ; 2 uses
  %i.tp = call double @exp(double noundef %i.to) #14
  %i.tq = fadd double %i.tn, %i.tp
  %i.tr = call double @exp(double noundef %i.tj) #14
  %i.ts = call double @sin(double noundef %i.sy) #14
  %i.tt = fmul double %i.tr, %i.ts
  %i.tu = fneg double %i.tq
  %i.tv = fdiv double %i.tu, %i.tt
  %i.tw = call double @exp(double noundef %i.tj) #14
  %i.tx = fmul double %i.tw, %i.tv
  %i.ty = call double @sin(double noundef %i.sy) #14
  %i.tz = fmul double %i.ty, %i.tx                ; 3 uses
  %i.ua = call double @exp(double noundef %i.tj) #14
  %i.ub = fmul double %i.ua, -2.000000e+00
  %i.uc = call double @cos(double noundef %i.sy) #14
  %i.ud = fmul double %i.ub, %i.uc                ; 9 uses
  %i.ue = call double @exp(double noundef %i.to) #14
  %i.uf = load i32, ptr %1, align 4, !tbaa !45    ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !46 ; 2 uses
  %i.ui = icmp slt i32 %i.uf, %i.uh
  br i1 %i.ui, label %.lr.ph136.i43, label %_ZN2cv8ximgprocL17VerticalIIRFilterItEEvRNS_3MatES3_RKNS_5RangeEdd.exit

.lr.ph136.i43:                                    ; preds = %bb.p
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !88 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !88
  %i.un = sext i32 %i.ti to i64                   ; 9 uses
  %i.uo = sub nsw i32 0, %i.ti
  %i.up = sext i32 %i.uo to i64                   ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.ur = icmp sgt i32 %i.th, 2
  %i.us = fneg double %i.ue                       ; 6 uses
  %i.ut = add nsw i32 %i.th, -1                   ; 2 uses
  %i.uu = mul nsw i32 %i.ut, %i.ti
  %i.uv = sext i32 %i.ut to i64
  %i.uw = getelementptr inbounds [8 x i8], ptr %i.tg, i64 %i.uv ; 2 uses
  %i.ux = sub nsw i64 0, %i.un                    ; 3 uses
  %i.uy = sext i32 %i.th to i64
  %i.uz = getelementptr [8 x i8], ptr %i.tg, i64 %i.uy
  %i.va = getelementptr i8, ptr %i.uz, i64 -16    ; 2 uses
  %.idx.i = shl nsw i64 %i.ux, 2
  %i.vb = add i32 %i.th, -3                       ; 2 uses
  %i.vc = icmp sgt i32 %i.th, 0
  %i.vd = zext i32 %i.vb to i64                   ; 5 uses
  %i.ve = sext i32 %i.uf to i64
  %i.vf = sext i32 %i.uu to i64
  %wide.trip.count150.i44 = sext i32 %i.uh to i64
  %invariant.gep.i45 = getelementptr [2 x i8], ptr %i.uk, i64 %i.vf ; 2 uses
  %wide.trip.count.i46 = zext i32 %i.th to i64    ; 4 uses
  %scevgep166 = getelementptr i8, ptr %i.te, i64 8
  %i.vg = shl nuw nsw i64 %i.vd, 3
  %i.vh = getelementptr i8, ptr %i.tg, i64 %i.vg
  %scevgep169 = getelementptr i8, ptr %i.vh, i64 8
  %xtraiter209 = and i64 %wide.trip.count.i46, 1
  %i.vi = icmp eq i32 %i.th, 3
  %i.vj = and i64 %wide.trip.count.i46, 2147483646
  %.0115.i61.idx = shl nsw i64 %i.un, 2
  %i.vk = add nsw i64 %i.vj, -4
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  %lcmp.mod211 = trunc i32 %i.th to i1
  %.0115.i61.epil.idx = shl nsw i64 %i.un, 2
  %i.vl = and i64 %i.vd, 1
  %lcmp.mod215.not.not = icmp eq i64 %i.vl, 0
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.vd ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %indvars.iv.next140.i69.prol = add nsw i64 %i.vd, -1
  %i.vo = icmp eq i32 %i.vb, 0
  %.idx258 = shl nsw i64 %i.ux, 2
  %xtraiter216 = and i64 %wide.trip.count.i46, 1
  %i.vp = icmp eq i32 %i.th, 1
  %unroll_iter219 = and i64 %wide.trip.count.i46, 4294967294
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  %lcmp.mod218 = trunc i32 %i.th to i1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.vq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %common.resume

bb.r:                                             ; preds = %._crit_edge133.i50, %.lr.ph136.i43
  %indvars.iv147.i48 = phi i64 [ %i.ve, %.lr.ph136.i43 ], [ %indvars.iv.next148.i51, %._crit_edge133.i50 ] ; 5 uses
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.um, i64 %indvars.iv147.i48 ; 2 uses
  %i.vs = getelementptr inbounds [2 x i8], ptr %i.uk, i64 %indvars.iv147.i48 ; 4 uses
  %i.vt = load i16, ptr %i.vs, align 2, !tbaa !93
  %i.vu = uitofp i16 %i.vt to double              ; 2 uses
  store double %i.vu, ptr %i.te, align 8, !tbaa !89
  %i.vv = getelementptr inbounds [2 x i8], ptr %i.vs, i64 %i.un
  %i.vw = getelementptr inbounds [2 x i8], ptr %i.vv, i64 %i.up
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !93
  %i.vy = uitofp i16 %i.vx to double
  %i.vz = fmul double %i.ud, %i.vu
  %i.wa = fsub double %i.vy, %i.vz
  store double %i.wa, ptr %i.uq, align 8, !tbaa !89
  br i1 %i.ur, label %.lr.ph.i59.preheader, label %.preheader.i

.lr.ph.i59.preheader:                             ; preds = %bb.r
  %load_initial167 = load double, ptr %scevgep166, align 8 ; 2 uses
  br i1 %i.vi, label %.lr.ph.i59.epil.preheader, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %.lr.ph.i59.preheader, %.lr.ph.i59
  %store_forwarded168 = phi double [ %i.wu, %.lr.ph.i59 ], [ %load_initial167, %.lr.ph.i59.preheader ]
  %indvars.iv.i60 = phi i64 [ %indvars.iv.next.i63.1, %.lr.ph.i59 ], [ 2, %.lr.ph.i59.preheader ] ; 3 uses
  %i.wb = phi ptr [ %.0115.i61, %.lr.ph.i59 ], [ %i.vs, %.lr.ph.i59.preheader ]
  %niter213 = phi i64 [ %niter213.next.1, %.lr.ph.i59 ], [ 0, %.lr.ph.i59.preheader ] ; 2 uses
  %.0115.i61 = getelementptr inbounds i8, ptr %i.wb, i64 %.0115.i61.idx ; 4 uses
  %i.wc = getelementptr inbounds [2 x i8], ptr %.0115.i61, i64 %i.up
  %i.wd = load i16, ptr %i.wc, align 2, !tbaa !93
  %i.we = uitofp i16 %i.wd to double
  %i.wf = getelementptr [8 x i8], ptr %i.te, i64 %indvars.iv.i60 ; 2 uses
  %i.wg = fmul double %i.ud, %store_forwarded168
  %i.wh = fsub double %i.we, %i.wg
  %i.wi = getelementptr i8, ptr %i.wf, i64 -16
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !89
  %i.wk = call double @llvm.fmuladd.f64(double %i.us, double %i.wj, double %i.wh) ; 2 uses
  store double %i.wk, ptr %i.wf, align 8, !tbaa !89
  %.0115.i62.1 = getelementptr inbounds [2 x i8], ptr %.0115.i61, i64 %i.un
  %i.wl = getelementptr inbounds [2 x i8], ptr %.0115.i62.1, i64 %i.up
  %i.wm = load i16, ptr %i.wl, align 2, !tbaa !93
  %i.wn = uitofp i16 %i.wm to double
  %i.wo = getelementptr [8 x i8], ptr %i.te, i64 %indvars.iv.i60 ; 2 uses
  %i.wp = getelementptr i8, ptr %i.wo, i64 8
  %i.wq = fmul double %i.ud, %i.wk
  %i.wr = fsub double %i.wn, %i.wq
  %i.ws = getelementptr i8, ptr %i.wo, i64 -8
  %i.wt = load double, ptr %i.ws, align 8, !tbaa !89
  %i.wu = call double @llvm.fmuladd.f64(double %i.us, double %i.wt, double %i.wr) ; 3 uses
  store double %i.wu, ptr %i.wp, align 8, !tbaa !89
  %indvars.iv.next.i63.1 = add nuw nsw i64 %indvars.iv.i60, 2 ; 2 uses
  %niter213.next.1 = add i64 %niter213, 2
  %niter213.ncmp.1 = icmp eq i64 %niter213, %i.vk
  br i1 %niter213.ncmp.1, label %.lr.ph129.preheader.i.unr-lcssa, label %.lr.ph.i59, !llvm.loop !108

.lr.ph129.preheader.i.unr-lcssa:                  ; preds = %.lr.ph.i59
  br i1 %lcmp.mod210.not, label %.lr.ph129.preheader.i, label %.lr.ph.i59.epil.preheader

.lr.ph.i59.epil.preheader:                        ; preds = %.lr.ph129.preheader.i.unr-lcssa, %.lr.ph.i59.preheader
  %store_forwarded168.epil.init = phi double [ %load_initial167, %.lr.ph.i59.preheader ], [ %i.wu, %.lr.ph129.preheader.i.unr-lcssa ]
  %indvars.iv.i60.epil.init = phi i64 [ 2, %.lr.ph.i59.preheader ], [ %indvars.iv.next.i63.1, %.lr.ph129.preheader.i.unr-lcssa ]
  %i.wv = phi ptr [ %i.vs, %.lr.ph.i59.preheader ], [ %.0115.i61, %.lr.ph129.preheader.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod211)
  %.0115.i61.epil = getelementptr inbounds i8, ptr %i.wv, i64 %.0115.i61.epil.idx
  %i.ww = getelementptr inbounds [2 x i8], ptr %.0115.i61.epil, i64 %i.up
  %i.wx = load i16, ptr %i.ww, align 2, !tbaa !93
  %i.wy = uitofp i16 %i.wx to double
  %i.wz = getelementptr [8 x i8], ptr %i.te, i64 %indvars.iv.i60.epil.init ; 2 uses
  %i.xa = fmul double %i.ud, %store_forwarded168.epil.init
  %i.xb = fsub double %i.wy, %i.xa
  %i.xc = getelementptr i8, ptr %i.wz, i64 -16
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !89
  %i.xe = call double @llvm.fmuladd.f64(double %i.us, double %i.xd, double %i.xb)
  store double %i.xe, ptr %i.wz, align 8, !tbaa !89
  br label %.lr.ph129.preheader.i

.lr.ph129.preheader.i:                            ; preds = %.lr.ph129.preheader.i.unr-lcssa, %.lr.ph.i59.epil.preheader
  %gep155.i = getelementptr [2 x i8], ptr %invariant.gep.i45, i64 %indvars.iv147.i48 ; 2 uses
  %i.xf = load i16, ptr %gep155.i, align 2, !tbaa !93
  %i.xg = uitofp i16 %i.xf to double              ; 3 uses
  store double %i.xg, ptr %i.uw, align 8, !tbaa !89
  %i.xh = fmul double %i.ud, %i.xg
  %i.xi = fadd double %i.xh, %i.xg
  store double %i.xi, ptr %i.va, align 8, !tbaa !89
  %30 = getelementptr inbounds i8, ptr %gep155.i, i64 %.idx.i ; 3 uses
  %load_initial170 = load double, ptr %scevgep169, align 8 ; 2 uses
  br i1 %lcmp.mod215.not.not, label %.lr.ph129.i65.prol, label %.lr.ph129.i65.prol.loopexit

.lr.ph129.i65.prol:                               ; preds = %.lr.ph129.preheader.i
  %.pn122.i68.prol = getelementptr inbounds [2 x i8], ptr %30, i64 %i.un
  %i.xj = load i16, ptr %.pn122.i68.prol, align 2, !tbaa !93
  %i.xk = uitofp i16 %i.xj to double
  %i.xl = fmul double %i.ud, %load_initial170
  %i.xm = fsub double %i.xk, %i.xl
  %i.xn = load double, ptr %i.vn, align 8, !tbaa !89
  %i.xo = call double @llvm.fmuladd.f64(double %i.us, double %i.xn, double %i.xm) ; 2 uses
  store double %i.xo, ptr %i.vm, align 8, !tbaa !89
  %31 = getelementptr inbounds [2 x i8], ptr %30, i64 %i.ux
  br label %.lr.ph129.i65.prol.loopexit

.lr.ph129.i65.prol.loopexit:                      ; preds = %.lr.ph129.i65.prol, %.lr.ph129.preheader.i
  %store_forwarded171.unr = phi double [ %load_initial170, %.lr.ph129.preheader.i ], [ %i.xo, %.lr.ph129.i65.prol ]
  %indvars.iv139.i66.unr = phi i64 [ %i.vd, %.lr.ph129.preheader.i ], [ %indvars.iv.next140.i69.prol, %.lr.ph129.i65.prol ]
  %.pn123126.i67.unr = phi ptr [ %30, %.lr.ph129.preheader.i ], [ %31, %.lr.ph129.i65.prol ]
  br i1 %i.vo, label %.lr.ph132.i54.preheader, label %.lr.ph129.i65

.preheader.i:                                     ; preds = %bb.r
  %gep.i49 = getelementptr [2 x i8], ptr %invariant.gep.i45, i64 %indvars.iv147.i48
  %i.xp = load i16, ptr %gep.i49, align 2, !tbaa !93
  %i.xq = uitofp i16 %i.xp to double              ; 3 uses
  store double %i.xq, ptr %i.uw, align 8, !tbaa !89
  %i.xr = fmul double %i.ud, %i.xq
  %i.xs = fadd double %i.xr, %i.xq
  store double %i.xs, ptr %i.va, align 8, !tbaa !89
  br i1 %i.vc, label %.lr.ph132.i54.preheader, label %._crit_edge133.i50

.lr.ph129.i65:                                    ; preds = %.lr.ph129.i65.prol.loopexit, %.lr.ph129.i65
  %store_forwarded171 = phi double [ %i.yi, %.lr.ph129.i65 ], [ %store_forwarded171.unr, %.lr.ph129.i65.prol.loopexit ]
  %indvars.iv139.i66 = phi i64 [ %indvars.iv.next140.i69.1, %.lr.ph129.i65 ], [ %indvars.iv139.i66.unr, %.lr.ph129.i65.prol.loopexit ] ; 3 uses
  %.pn123126.i67 = phi ptr [ %32, %.lr.ph129.i65 ], [ %.pn123126.i67.unr, %.lr.ph129.i65.prol.loopexit ] ; 3 uses
  %.pn122.i68 = getelementptr inbounds [2 x i8], ptr %.pn123126.i67, i64 %i.un
  %i.xt = load i16, ptr %.pn122.i68, align 2, !tbaa !93
  %i.xu = uitofp i16 %i.xt to double
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv139.i66 ; 2 uses
  %i.xw = fmul double %i.ud, %store_forwarded171
  %i.xx = fsub double %i.xu, %i.xw
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !89
  %i.ya = call double @llvm.fmuladd.f64(double %i.us, double %i.xz, double %i.xx) ; 2 uses
  store double %i.ya, ptr %i.xv, align 8, !tbaa !89
  %indvars.iv.next140.i69 = add nsw i64 %indvars.iv139.i66, -1 ; 2 uses
  %i.yb = load i16, ptr %.pn123126.i67, align 2, !tbaa !93
  %i.yc = uitofp i16 %i.yb to double
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next140.i69 ; 2 uses
  %i.ye = fmul double %i.ud, %i.ya
  %i.yf = fsub double %i.yc, %i.ye
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !89
  %i.yi = call double @llvm.fmuladd.f64(double %i.us, double %i.yh, double %i.yf) ; 2 uses
  store double %i.yi, ptr %i.yd, align 8, !tbaa !89
  %indvars.iv.next140.i69.1 = add nsw i64 %indvars.iv139.i66, -2
  %32 = getelementptr inbounds i8, ptr %.pn123126.i67, i64 %.idx258
  %.not.i70.1 = icmp eq i64 %indvars.iv.next140.i69, 0
  br i1 %.not.i70.1, label %.lr.ph132.i54.preheader, label %.lr.ph129.i65, !llvm.loop !109

.lr.ph132.i54.preheader:                          ; preds = %.lr.ph129.i65.prol.loopexit, %.lr.ph129.i65, %.preheader.i
  br i1 %i.vp, label %.lr.ph132.i54.epil.preheader, label %.lr.ph132.i54

.lr.ph132.i54:                                    ; preds = %.lr.ph132.i54.preheader, %.lr.ph132.i54
  %indvars.iv142.i55 = phi i64 [ %indvars.iv.next143.i57.1, %.lr.ph132.i54 ], [ 0, %.lr.ph132.i54.preheader ] ; 4 uses
  %.0118130.i56 = phi ptr [ %i.yy, %.lr.ph132.i54 ], [ %i.vr, %.lr.ph132.i54.preheader ] ; 2 uses
  %niter220 = phi i64 [ %niter220.next.1, %.lr.ph132.i54 ], [ 0, %.lr.ph132.i54.preheader ]
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv142.i55
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !89
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv142.i55
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !89
  %i.yn = fsub double %i.yk, %i.ym
  %i.yo = fmul double %i.tz, %i.yn
  %i.yp = fptrunc double %i.yo to float
  store float %i.yp, ptr %.0118130.i56, align 4, !tbaa !91
  %indvars.iv.next143.i57 = or disjoint i64 %indvars.iv142.i55, 1 ; 2 uses
  %i.yq = getelementptr inbounds [4 x i8], ptr %.0118130.i56, i64 %i.un ; 2 uses
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next143.i57
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !89
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next143.i57
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !89
  %i.yv = fsub double %i.ys, %i.yu
  %i.yw = fmul double %i.tz, %i.yv
  %i.yx = fptrunc double %i.yw to float
  store float %i.yx, ptr %i.yq, align 4, !tbaa !91
  %indvars.iv.next143.i57.1 = add nuw nsw i64 %indvars.iv142.i55, 2 ; 2 uses
  %i.yy = getelementptr inbounds [4 x i8], ptr %i.yq, i64 %i.un ; 2 uses
  %niter220.next.1 = add i64 %niter220, 2         ; 2 uses
  %niter220.ncmp.1 = icmp eq i64 %niter220.next.1, %unroll_iter219
  br i1 %niter220.ncmp.1, label %._crit_edge133.i50.loopexit.unr-lcssa, label %.lr.ph132.i54, !llvm.loop !110

._crit_edge133.i50.loopexit.unr-lcssa:            ; preds = %.lr.ph132.i54
  br i1 %lcmp.mod217.not, label %._crit_edge133.i50, label %.lr.ph132.i54.epil.preheader

.lr.ph132.i54.epil.preheader:                     ; preds = %._crit_edge133.i50.loopexit.unr-lcssa, %.lr.ph132.i54.preheader
  %indvars.iv142.i55.epil.init = phi i64 [ 0, %.lr.ph132.i54.preheader ], [ %indvars.iv.next143.i57.1, %._crit_edge133.i50.loopexit.unr-lcssa ] ; 2 uses
  %.0118130.i56.epil.init = phi ptr [ %i.vr, %.lr.ph132.i54.preheader ], [ %i.yy, %._crit_edge133.i50.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod218)
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv142.i55.epil.init
  %i.za = load double, ptr %i.yz, align 8, !tbaa !89
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv142.i55.epil.init
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !89
  %i.zd = fsub double %i.za, %i.zc
  %i.ze = fmul double %i.tz, %i.zd
  %i.zf = fptrunc double %i.ze to float
  store float %i.zf, ptr %.0118130.i56.epil.init, align 4, !tbaa !91
  br label %._crit_edge133.i50

._crit_edge133.i50:                               ; preds = %.lr.ph132.i54.epil.preheader, %._crit_edge133.i50.loopexit.unr-lcssa, %.preheader.i
  %indvars.iv.next148.i51 = add nsw i64 %indvars.iv147.i48, 1 ; 2 uses
  %exitcond151.not.i52 = icmp eq i64 %indvars.iv.next148.i51, %wide.trip.count150.i44
  br i1 %exitcond151.not.i52, label %_ZN2cv8ximgprocL17VerticalIIRFilterItEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %bb.r, !llvm.loop !111

_ZN2cv8ximgprocL17VerticalIIRFilterItEEvRNS_3MatES3_RKNS_5RangeEdd.exit: ; preds = %._crit_edge133.i50, %bb.p
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.z

bb.s:                                             ; preds = %bb.f
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !121, !nonnull !65, !align !87
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.zj = load double, ptr %i.zi, align 8, !tbaa !40 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !41 ; 4 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.zn = load i32, ptr %i.zm, align 8, !tbaa !51
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !43
  %..i71 = tail call i32 @llvm.smax.i32(i32 %i.zn, i32 %i.zp) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 1, i32 noundef %..i71, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef 1, i32 noundef %..i71, i32 noundef 6)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.zq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !88 ; 9 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !88 ; 9 uses
  %i.zu = load i32, ptr %i.zm, align 8, !tbaa !51 ; 10 uses
  %i.zv = load i32, ptr %i.zo, align 4, !tbaa !43 ; 3 uses
  %i.zw = fneg double %i.zj                       ; 4 uses
  %i.zx = call double @exp(double noundef %i.zw) #14
  %i.zy = call double @cos(double noundef %i.zl) #14
  %i.zz = fmul double %i.zx, -2.000000e+00
  %i.aaa = call double @llvm.fmuladd.f64(double %i.zz, double %i.zy, double 1.000000e+00)
  %i.aab = fmul double %i.zj, -2.000000e+00       ; 2 uses
  %i.aac = call double @exp(double noundef %i.aab) #14
  %i.aad = fadd double %i.aaa, %i.aac
  %i.aae = call double @exp(double noundef %i.zw) #14
  %i.aaf = call double @sin(double noundef %i.zl) #14
  %i.aag = fmul double %i.aae, %i.aaf
  %i.aah = fneg double %i.aad
  %i.aai = fdiv double %i.aah, %i.aag
  %i.aaj = call double @exp(double noundef %i.zw) #14
  %i.aak = fmul double %i.aaj, %i.aai
  %i.aal = call double @sin(double noundef %i.zl) #14
  %i.aam = fmul double %i.aal, %i.aak             ; 3 uses
  %i.aan = call double @exp(double noundef %i.zw) #14
  %i.aao = fmul double %i.aan, -2.000000e+00
  %i.aap = call double @cos(double noundef %i.zl) #14
  %i.aaq = fmul double %i.aao, %i.aap             ; 9 uses
  %i.aar = call double @exp(double noundef %i.aab) #14
  %i.aas = load i32, ptr %1, align 4, !tbaa !45   ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !46 ; 2 uses
  %i.aav = icmp slt i32 %i.aas, %i.aau
  br i1 %i.aav, label %.lr.ph136.i72, label %_ZN2cv8ximgprocL17VerticalIIRFilterIsEEvRNS_3MatES3_RKNS_5RangeEdd.exit

.lr.ph136.i72:                                    ; preds = %bb.t
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !88 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.zh, i64 24
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !88
  %i.aba = sext i32 %i.zv to i64                  ; 9 uses
  %i.abb = sub nsw i32 0, %i.zv
  %i.abc = sext i32 %i.abb to i64                 ; 4 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.abe = icmp sgt i32 %i.zu, 2
  %i.abf = fneg double %i.aar                     ; 6 uses
  %i.abg = add nsw i32 %i.zu, -1                  ; 2 uses
  %i.abh = mul nsw i32 %i.abg, %i.zv
  %i.abi = sext i32 %i.abg to i64
  %i.abj = getelementptr inbounds [8 x i8], ptr %i.zt, i64 %i.abi ; 2 uses
  %i.abk = sub nsw i64 0, %i.aba                  ; 3 uses
  %i.abl = sext i32 %i.zu to i64
  %i.abm = getelementptr [8 x i8], ptr %i.zt, i64 %i.abl
  %i.abn = getelementptr i8, ptr %i.abm, i64 -16  ; 2 uses
  %.idx.i71 = shl nsw i64 %i.abk, 2
  %i.abo = add i32 %i.zu, -3                      ; 2 uses
  %i.abp = icmp sgt i32 %i.zu, 0
  %i.abq = zext i32 %i.abo to i64                 ; 5 uses
  %i.abr = sext i32 %i.aas to i64
  %i.abs = sext i32 %i.abh to i64
  %wide.trip.count150.i73 = sext i32 %i.aau to i64
  %invariant.gep.i74 = getelementptr [2 x i8], ptr %i.aax, i64 %i.abs ; 2 uses
  %wide.trip.count.i75 = zext i32 %i.zu to i64    ; 4 uses
  %scevgep172 = getelementptr i8, ptr %i.zr, i64 8
  %i.abt = shl nuw nsw i64 %i.abq, 3
  %i.abu = getelementptr i8, ptr %i.zt, i64 %i.abt
  %scevgep175 = getelementptr i8, ptr %i.abu, i64 8
  %xtraiter197 = and i64 %wide.trip.count.i75, 1
  %i.abv = icmp eq i32 %i.zu, 3
  %i.abw = and i64 %wide.trip.count.i75, 2147483646
  %.0115.i92.idx = shl nsw i64 %i.aba, 2
  %i.abx = add nsw i64 %i.abw, -4
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  %lcmp.mod199 = trunc i32 %i.zu to i1
  %.0115.i92.epil.idx = shl nsw i64 %i.aba, 2
  %i.aby = and i64 %i.abq, 1
  %lcmp.mod203.not.not = icmp eq i64 %i.aby, 0
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %i.abq ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 16
  %indvars.iv.next140.i102.prol = add nsw i64 %i.abq, -1
  %i.acb = icmp eq i32 %i.abo, 0
  %.idx257 = shl nsw i64 %i.abk, 2
  %xtraiter204 = and i64 %wide.trip.count.i75, 1
  %i.acc = icmp eq i32 %i.zu, 1
  %unroll_iter207 = and i64 %wide.trip.count.i75, 4294967294
  %lcmp.mod205.not = icmp eq i64 %xtraiter204, 0
  %lcmp.mod206 = trunc i32 %i.zu to i1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.acd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %common.resume

bb.v:                                             ; preds = %._crit_edge133.i81, %.lr.ph136.i72
  %indvars.iv147.i78 = phi i64 [ %i.abr, %.lr.ph136.i72 ], [ %indvars.iv.next148.i82, %._crit_edge133.i81 ] ; 5 uses
  %i.ace = getelementptr inbounds [4 x i8], ptr %i.aaz, i64 %indvars.iv147.i78 ; 2 uses
  %i.acf = getelementptr inbounds [2 x i8], ptr %i.aax, i64 %indvars.iv147.i78 ; 4 uses
  %i.acg = load i16, ptr %i.acf, align 2, !tbaa !93
  %i.ach = sitofp i16 %i.acg to double            ; 2 uses
  store double %i.ach, ptr %i.zr, align 8, !tbaa !89
  %i.aci = getelementptr inbounds [2 x i8], ptr %i.acf, i64 %i.aba
  %i.acj = getelementptr inbounds [2 x i8], ptr %i.aci, i64 %i.abc
  %i.ack = load i16, ptr %i.acj, align 2, !tbaa !93
  %i.acl = sitofp i16 %i.ack to double
  %i.acm = fmul double %i.aaq, %i.ach
  %i.acn = fsub double %i.acl, %i.acm
  store double %i.acn, ptr %i.abd, align 8, !tbaa !89
  br i1 %i.abe, label %.lr.ph.i90.preheader, label %.preheader.i79

.lr.ph.i90.preheader:                             ; preds = %bb.v
  %load_initial173 = load double, ptr %scevgep172, align 8 ; 2 uses
  br i1 %i.abv, label %.lr.ph.i90.epil.preheader, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %.lr.ph.i90.preheader, %.lr.ph.i90
  %store_forwarded174 = phi double [ %i.adh, %.lr.ph.i90 ], [ %load_initial173, %.lr.ph.i90.preheader ]
  %indvars.iv.i91 = phi i64 [ %indvars.iv.next.i94.1, %.lr.ph.i90 ], [ 2, %.lr.ph.i90.preheader ] ; 3 uses
  %i.aco = phi ptr [ %.0115.i92, %.lr.ph.i90 ], [ %i.acf, %.lr.ph.i90.preheader ]
  %niter201 = phi i64 [ %niter201.next.1, %.lr.ph.i90 ], [ 0, %.lr.ph.i90.preheader ] ; 2 uses
  %.0115.i92 = getelementptr inbounds i8, ptr %i.aco, i64 %.0115.i92.idx ; 4 uses
  %i.acp = getelementptr inbounds [2 x i8], ptr %.0115.i92, i64 %i.abc
  %i.acq = load i16, ptr %i.acp, align 2, !tbaa !93
  %i.acr = sitofp i16 %i.acq to double
  %i.acs = getelementptr [8 x i8], ptr %i.zr, i64 %indvars.iv.i91 ; 2 uses
  %i.act = fmul double %i.aaq, %store_forwarded174
  %i.acu = fsub double %i.acr, %i.act
  %i.acv = getelementptr i8, ptr %i.acs, i64 -16
  %i.acw = load double, ptr %i.acv, align 8, !tbaa !89
  %i.acx = call double @llvm.fmuladd.f64(double %i.abf, double %i.acw, double %i.acu) ; 2 uses
  store double %i.acx, ptr %i.acs, align 8, !tbaa !89
  %.0115.i93.1 = getelementptr inbounds [2 x i8], ptr %.0115.i92, i64 %i.aba
  %i.acy = getelementptr inbounds [2 x i8], ptr %.0115.i93.1, i64 %i.abc
  %i.acz = load i16, ptr %i.acy, align 2, !tbaa !93
  %i.ada = sitofp i16 %i.acz to double
  %i.adb = getelementptr [8 x i8], ptr %i.zr, i64 %indvars.iv.i91 ; 2 uses
  %i.adc = getelementptr i8, ptr %i.adb, i64 8
  %i.add = fmul double %i.aaq, %i.acx
  %i.ade = fsub double %i.ada, %i.add
  %i.adf = getelementptr i8, ptr %i.adb, i64 -8
  %i.adg = load double, ptr %i.adf, align 8, !tbaa !89
  %i.adh = call double @llvm.fmuladd.f64(double %i.abf, double %i.adg, double %i.ade) ; 3 uses
  store double %i.adh, ptr %i.adc, align 8, !tbaa !89
  %indvars.iv.next.i94.1 = add nuw nsw i64 %indvars.iv.i91, 2 ; 2 uses
  %niter201.next.1 = add i64 %niter201, 2
  %niter201.ncmp.1 = icmp eq i64 %niter201, %i.abx
  br i1 %niter201.ncmp.1, label %.lr.ph129.preheader.i96.unr-lcssa, label %.lr.ph.i90, !llvm.loop !112

.lr.ph129.preheader.i96.unr-lcssa:                ; preds = %.lr.ph.i90
  br i1 %lcmp.mod198.not, label %.lr.ph129.preheader.i96, label %.lr.ph.i90.epil.preheader

.lr.ph.i90.epil.preheader:                        ; preds = %.lr.ph129.preheader.i96.unr-lcssa, %.lr.ph.i90.preheader
  %store_forwarded174.epil.init = phi double [ %load_initial173, %.lr.ph.i90.preheader ], [ %i.adh, %.lr.ph129.preheader.i96.unr-lcssa ]
  %indvars.iv.i91.epil.init = phi i64 [ 2, %.lr.ph.i90.preheader ], [ %indvars.iv.next.i94.1, %.lr.ph129.preheader.i96.unr-lcssa ]
  %i.adi = phi ptr [ %i.acf, %.lr.ph.i90.preheader ], [ %.0115.i92, %.lr.ph129.preheader.i96.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod199)
  %.0115.i92.epil = getelementptr inbounds i8, ptr %i.adi, i64 %.0115.i92.epil.idx
  %i.adj = getelementptr inbounds [2 x i8], ptr %.0115.i92.epil, i64 %i.abc
  %i.adk = load i16, ptr %i.adj, align 2, !tbaa !93
  %i.adl = sitofp i16 %i.adk to double
  %i.adm = getelementptr [8 x i8], ptr %i.zr, i64 %indvars.iv.i91.epil.init ; 2 uses
  %i.adn = fmul double %i.aaq, %store_forwarded174.epil.init
  %i.ado = fsub double %i.adl, %i.adn
  %i.adp = getelementptr i8, ptr %i.adm, i64 -16
  %i.adq = load double, ptr %i.adp, align 8, !tbaa !89
  %i.adr = call double @llvm.fmuladd.f64(double %i.abf, double %i.adq, double %i.ado)
  store double %i.adr, ptr %i.adm, align 8, !tbaa !89
  br label %.lr.ph129.preheader.i96

.lr.ph129.preheader.i96:                          ; preds = %.lr.ph129.preheader.i96.unr-lcssa, %.lr.ph.i90.epil.preheader
  %gep155.i97 = getelementptr [2 x i8], ptr %invariant.gep.i74, i64 %indvars.iv147.i78 ; 2 uses
  %i.ads = load i16, ptr %gep155.i97, align 2, !tbaa !93
  %i.adt = sitofp i16 %i.ads to double            ; 3 uses
  store double %i.adt, ptr %i.abj, align 8, !tbaa !89
  %i.adu = fmul double %i.aaq, %i.adt
  %i.adv = fadd double %i.adu, %i.adt
  store double %i.adv, ptr %i.abn, align 8, !tbaa !89
  %33 = getelementptr inbounds i8, ptr %gep155.i97, i64 %.idx.i71 ; 3 uses
  %load_initial176 = load double, ptr %scevgep175, align 8 ; 2 uses
  br i1 %lcmp.mod203.not.not, label %.lr.ph129.i98.prol, label %.lr.ph129.i98.prol.loopexit

.lr.ph129.i98.prol:                               ; preds = %.lr.ph129.preheader.i96
  %.pn122.i101.prol = getelementptr inbounds [2 x i8], ptr %33, i64 %i.aba
  %i.adw = load i16, ptr %.pn122.i101.prol, align 2, !tbaa !93
  %i.adx = sitofp i16 %i.adw to double
  %i.ady = fmul double %i.aaq, %load_initial176
  %i.adz = fsub double %i.adx, %i.ady
  %i.aea = load double, ptr %i.aca, align 8, !tbaa !89
  %i.aeb = call double @llvm.fmuladd.f64(double %i.abf, double %i.aea, double %i.adz) ; 2 uses
  store double %i.aeb, ptr %i.abz, align 8, !tbaa !89
  %34 = getelementptr inbounds [2 x i8], ptr %33, i64 %i.abk
  br label %.lr.ph129.i98.prol.loopexit

.lr.ph129.i98.prol.loopexit:                      ; preds = %.lr.ph129.i98.prol, %.lr.ph129.preheader.i96
  %store_forwarded177.unr = phi double [ %load_initial176, %.lr.ph129.preheader.i96 ], [ %i.aeb, %.lr.ph129.i98.prol ]
  %indvars.iv139.i99.unr = phi i64 [ %i.abq, %.lr.ph129.preheader.i96 ], [ %indvars.iv.next140.i102.prol, %.lr.ph129.i98.prol ]
  %.pn123126.i100.unr = phi ptr [ %33, %.lr.ph129.preheader.i96 ], [ %34, %.lr.ph129.i98.prol ]
  br i1 %i.acb, label %.lr.ph132.i85.preheader, label %.lr.ph129.i98

.preheader.i79:                                   ; preds = %bb.v
  %gep.i80 = getelementptr [2 x i8], ptr %invariant.gep.i74, i64 %indvars.iv147.i78
  %i.aec = load i16, ptr %gep.i80, align 2, !tbaa !93
  %i.aed = sitofp i16 %i.aec to double            ; 3 uses
  store double %i.aed, ptr %i.abj, align 8, !tbaa !89
  %i.aee = fmul double %i.aaq, %i.aed
  %i.aef = fadd double %i.aee, %i.aed
  store double %i.aef, ptr %i.abn, align 8, !tbaa !89
  br i1 %i.abp, label %.lr.ph132.i85.preheader, label %._crit_edge133.i81

.lr.ph129.i98:                                    ; preds = %.lr.ph129.i98.prol.loopexit, %.lr.ph129.i98
  %store_forwarded177 = phi double [ %i.aev, %.lr.ph129.i98 ], [ %store_forwarded177.unr, %.lr.ph129.i98.prol.loopexit ]
  %indvars.iv139.i99 = phi i64 [ %indvars.iv.next140.i102.1, %.lr.ph129.i98 ], [ %indvars.iv139.i99.unr, %.lr.ph129.i98.prol.loopexit ] ; 3 uses
  %.pn123126.i100 = phi ptr [ %35, %.lr.ph129.i98 ], [ %.pn123126.i100.unr, %.lr.ph129.i98.prol.loopexit ] ; 3 uses
  %.pn122.i101 = getelementptr inbounds [2 x i8], ptr %.pn123126.i100, i64 %i.aba
  %i.aeg = load i16, ptr %.pn122.i101, align 2, !tbaa !93
  %i.aeh = sitofp i16 %i.aeg to double
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %indvars.iv139.i99 ; 2 uses
  %i.aej = fmul double %i.aaq, %store_forwarded177
  %i.aek = fsub double %i.aeh, %i.aej
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aei, i64 16
  %i.aem = load double, ptr %i.ael, align 8, !tbaa !89
  %i.aen = call double @llvm.fmuladd.f64(double %i.abf, double %i.aem, double %i.aek) ; 2 uses
  store double %i.aen, ptr %i.aei, align 8, !tbaa !89
  %indvars.iv.next140.i102 = add nsw i64 %indvars.iv139.i99, -1 ; 2 uses
  %i.aeo = load i16, ptr %.pn123126.i100, align 2, !tbaa !93
  %i.aep = sitofp i16 %i.aeo to double
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %indvars.iv.next140.i102 ; 2 uses
  %i.aer = fmul double %i.aaq, %i.aen
  %i.aes = fsub double %i.aep, %i.aer
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeq, i64 16
  %i.aeu = load double, ptr %i.aet, align 8, !tbaa !89
  %i.aev = call double @llvm.fmuladd.f64(double %i.abf, double %i.aeu, double %i.aes) ; 2 uses
  store double %i.aev, ptr %i.aeq, align 8, !tbaa !89
  %indvars.iv.next140.i102.1 = add nsw i64 %indvars.iv139.i99, -2
  %35 = getelementptr inbounds i8, ptr %.pn123126.i100, i64 %.idx257
  %.not.i103.1 = icmp eq i64 %indvars.iv.next140.i102, 0
  br i1 %.not.i103.1, label %.lr.ph132.i85.preheader, label %.lr.ph129.i98, !llvm.loop !113

.lr.ph132.i85.preheader:                          ; preds = %.lr.ph129.i98.prol.loopexit, %.lr.ph129.i98, %.preheader.i79
  br i1 %i.acc, label %.lr.ph132.i85.epil.preheader, label %.lr.ph132.i85

.lr.ph132.i85:                                    ; preds = %.lr.ph132.i85.preheader, %.lr.ph132.i85
  %indvars.iv142.i86 = phi i64 [ %indvars.iv.next143.i88.1, %.lr.ph132.i85 ], [ 0, %.lr.ph132.i85.preheader ] ; 4 uses
  %.0118130.i87 = phi ptr [ %i.afl, %.lr.ph132.i85 ], [ %i.ace, %.lr.ph132.i85.preheader ] ; 2 uses
  %niter208 = phi i64 [ %niter208.next.1, %.lr.ph132.i85 ], [ 0, %.lr.ph132.i85.preheader ]
  %i.aew = getelementptr inbounds nuw [8 x i8], ptr %i.zr, i64 %indvars.iv142.i86
  %i.aex = load double, ptr %i.aew, align 8, !tbaa !89
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %indvars.iv142.i86
  %i.aez = load double, ptr %i.aey, align 8, !tbaa !89
  %i.afa = fsub double %i.aex, %i.aez
  %i.afb = fmul double %i.aam, %i.afa
  %i.afc = fptrunc double %i.afb to float
  store float %i.afc, ptr %.0118130.i87, align 4, !tbaa !91
  %indvars.iv.next143.i88 = or disjoint i64 %indvars.iv142.i86, 1 ; 2 uses
  %i.afd = getelementptr inbounds [4 x i8], ptr %.0118130.i87, i64 %i.aba ; 2 uses
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.zr, i64 %indvars.iv.next143.i88
  %i.aff = load double, ptr %i.afe, align 8, !tbaa !89
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %indvars.iv.next143.i88
  %i.afh = load double, ptr %i.afg, align 8, !tbaa !89
  %i.afi = fsub double %i.aff, %i.afh
  %i.afj = fmul double %i.aam, %i.afi
  %i.afk = fptrunc double %i.afj to float
  store float %i.afk, ptr %i.afd, align 4, !tbaa !91
  %indvars.iv.next143.i88.1 = add nuw nsw i64 %indvars.iv142.i86, 2 ; 2 uses
  %i.afl = getelementptr inbounds [4 x i8], ptr %i.afd, i64 %i.aba ; 2 uses
  %niter208.next.1 = add i64 %niter208, 2         ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %._crit_edge133.i81.loopexit.unr-lcssa, label %.lr.ph132.i85, !llvm.loop !114

._crit_edge133.i81.loopexit.unr-lcssa:            ; preds = %.lr.ph132.i85
  br i1 %lcmp.mod205.not, label %._crit_edge133.i81, label %.lr.ph132.i85.epil.preheader

.lr.ph132.i85.epil.preheader:                     ; preds = %._crit_edge133.i81.loopexit.unr-lcssa, %.lr.ph132.i85.preheader
  %indvars.iv142.i86.epil.init = phi i64 [ 0, %.lr.ph132.i85.preheader ], [ %indvars.iv.next143.i88.1, %._crit_edge133.i81.loopexit.unr-lcssa ] ; 2 uses
  %.0118130.i87.epil.init = phi ptr [ %i.ace, %.lr.ph132.i85.preheader ], [ %i.afl, %._crit_edge133.i81.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod206)
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %i.zr, i64 %indvars.iv142.i86.epil.init
  %i.afn = load double, ptr %i.afm, align 8, !tbaa !89
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %indvars.iv142.i86.epil.init
  %i.afp = load double, ptr %i.afo, align 8, !tbaa !89
  %i.afq = fsub double %i.afn, %i.afp
  %i.afr = fmul double %i.aam, %i.afq
  %i.afs = fptrunc double %i.afr to float
  store float %i.afs, ptr %.0118130.i87.epil.init, align 4, !tbaa !91
  br label %._crit_edge133.i81

._crit_edge133.i81:                               ; preds = %.lr.ph132.i85.epil.preheader, %._crit_edge133.i81.loopexit.unr-lcssa, %.preheader.i79
  %indvars.iv.next148.i82 = add nsw i64 %indvars.iv147.i78, 1 ; 2 uses
  %exitcond151.not.i83 = icmp eq i64 %indvars.iv.next148.i82, %wide.trip.count150.i73
  br i1 %exitcond151.not.i83, label %_ZN2cv8ximgprocL17VerticalIIRFilterIsEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %bb.v, !llvm.loop !115

_ZN2cv8ximgprocL17VerticalIIRFilterIsEEvRNS_3MatES3_RKNS_5RangeEdd.exit: ; preds = %._crit_edge133.i81, %bb.t
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.z

bb.w:                                             ; preds = %bb.f
  %i.aft = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !121, !nonnull !65, !align !87
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.afw = load double, ptr %i.afv, align 8, !tbaa !40 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.afy = load double, ptr %i.afx, align 8, !tbaa !41 ; 4 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.aga = load i32, ptr %i.afz, align 8, !tbaa !51
  %i.agb = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !43
  %..i104 = tail call i32 @llvm.smax.i32(i32 %i.aga, i32 %i.agc) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 1, i32 noundef %..i104, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1, i32 noundef %..i104, i32 noundef 6)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.agd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !88 ; 11 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !88 ; 11 uses
  %i.agh = load i32, ptr %i.afz, align 8, !tbaa !51 ; 10 uses
  %i.agi = load i32, ptr %i.agb, align 4, !tbaa !43 ; 3 uses
  %i.agj = fneg double %i.afw                     ; 4 uses
  %i.agk = call double @exp(double noundef %i.agj) #14
  %i.agl = call double @cos(double noundef %i.afy) #14
  %i.agm = fmul double %i.agk, -2.000000e+00
  %i.agn = call double @llvm.fmuladd.f64(double %i.agm, double %i.agl, double 1.000000e+00)
  %i.ago = fmul double %i.afw, -2.000000e+00      ; 2 uses
  %i.agp = call double @exp(double noundef %i.ago) #14
  %i.agq = fadd double %i.agn, %i.agp
  %i.agr = call double @exp(double noundef %i.agj) #14
  %i.ags = call double @sin(double noundef %i.afy) #14
  %i.agt = fmul double %i.agr, %i.ags
  %i.agu = fneg double %i.agq
  %i.agv = fdiv double %i.agu, %i.agt
  %i.agw = call double @exp(double noundef %i.agj) #14
  %i.agx = fmul double %i.agw, %i.agv
  %i.agy = call double @sin(double noundef %i.afy) #14
  %i.agz = fmul double %i.agy, %i.agx             ; 5 uses
  %i.aha = call double @exp(double noundef %i.agj) #14
  %i.ahb = fmul double %i.aha, -2.000000e+00
  %i.ahc = call double @cos(double noundef %i.afy) #14
  %i.ahd = fmul double %i.ahb, %i.ahc             ; 10 uses
  %i.ahe = call double @exp(double noundef %i.ago) #14
  %i.ahf = load i32, ptr %1, align 4, !tbaa !45   ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !46 ; 2 uses
  %i.ahi = icmp slt i32 %i.ahf, %i.ahh
  br i1 %i.ahi, label %.lr.ph136.i105, label %_ZN2cv8ximgprocL17VerticalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit

.lr.ph136.i105:                                   ; preds = %bb.x
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !88 ; 3 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.afu, i64 24
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !88 ; 2 uses
  %i.ahn = sext i32 %i.agi to i64                 ; 11 uses
  %i.aho = sub nsw i32 0, %i.agi
  %i.ahp = sext i32 %i.aho to i64                 ; 5 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.age, i64 8 ; 2 uses
  %i.ahr = icmp sgt i32 %i.agh, 2
  %i.ahs = fneg double %i.ahe                     ; 6 uses
  %i.aht = add nsw i32 %i.agh, -1                 ; 2 uses
  %i.ahu = mul nsw i32 %i.aht, %i.agi
  %i.ahv = sext i32 %i.aht to i64
  %i.ahw = getelementptr inbounds [8 x i8], ptr %i.agg, i64 %i.ahv ; 2 uses
  %i.ahx = sub nsw i64 0, %i.ahn                  ; 3 uses
  %i.ahy = sext i32 %i.agh to i64
  %i.ahz = getelementptr [8 x i8], ptr %i.agg, i64 %i.ahy
  %i.aia = getelementptr i8, ptr %i.ahz, i64 -16  ; 2 uses
  %.idx.i104 = shl nsw i64 %i.ahx, 3
  %i.aib = add i32 %i.agh, -3                     ; 2 uses
  %i.aic = icmp sgt i32 %i.agh, 0
  %i.aid = zext i32 %i.aib to i64                 ; 5 uses
  %i.aie = sext i32 %i.ahf to i64                 ; 2 uses
  %i.aif = sext i32 %i.ahu to i64
  %wide.trip.count150.i106 = sext i32 %i.ahh to i64 ; 2 uses
  %invariant.gep.i107 = getelementptr [4 x i8], ptr %i.ahk, i64 %i.aif ; 2 uses
  %wide.trip.count.i108 = zext i32 %i.agh to i64  ; 4 uses
  br i1 %i.ahr, label %.lr.ph.i123.preheader.us.preheader, label %.preheader.i112.preheader

.preheader.i112.preheader:                        ; preds = %.lr.ph136.i105
  %exitcond146.not.i122 = icmp eq i32 %i.agh, 1
  %i.aig = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %i.aih = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  br label %.preheader.i112

.lr.ph.i123.preheader.us.preheader:               ; preds = %.lr.ph136.i105
  %i.aii = shl nuw nsw i64 %i.aid, 3
  %i.aij = getelementptr i8, ptr %i.agg, i64 %i.aii
  %scevgep181 = getelementptr i8, ptr %i.aij, i64 8
  %xtraiter = and i64 %wide.trip.count.i108, 1
  %i.aik = icmp eq i32 %i.agh, 3
  %i.ail = and i64 %wide.trip.count.i108, 2147483646
  %.0115.i125.us.idx = shl nsw i64 %i.ahn, 3
  %i.aim = add nsw i64 %i.ail, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod189 = trunc i32 %i.agh to i1
  %.0115.i125.us.epil.idx = shl nsw i64 %i.ahn, 3
  %i.ain = and i64 %i.aid, 1
  %lcmp.mod191.not.not = icmp eq i64 %i.ain, 0
  %i.aio = getelementptr inbounds nuw [8 x i8], ptr %i.agg, i64 %i.aid ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 16
  %indvars.iv.next140.i135.us.prol = add nsw i64 %i.aid, -1
  %i.aiq = icmp eq i32 %i.aib, 0
  %.idx = shl nsw i64 %i.ahx, 3
  %xtraiter192 = and i64 %wide.trip.count.i108, 1
  %unroll_iter195 = and i64 %wide.trip.count.i108, 2147483646
  %lcmp.mod193.not = icmp eq i64 %xtraiter192, 0
  %lcmp.mod194 = trunc i32 %i.agh to i1
  br label %.lr.ph.i123.preheader.us

.lr.ph.i123.preheader.us:                         ; preds = %.lr.ph.i123.preheader.us.preheader, %._crit_edge133.i114.loopexit.us
  %indvars.iv147.i111.us = phi i64 [ %indvars.iv.next148.i115.us, %._crit_edge133.i114.loopexit.us ], [ %i.aie, %.lr.ph.i123.preheader.us.preheader ] ; 4 uses
  %i.air = getelementptr inbounds [4 x i8], ptr %i.ahk, i64 %indvars.iv147.i111.us ; 4 uses
  %i.ais = load float, ptr %i.air, align 4, !tbaa !91
  %i.ait = fpext float %i.ais to double           ; 2 uses
  store double %i.ait, ptr %i.age, align 8, !tbaa !89
  %i.aiu = getelementptr inbounds [4 x i8], ptr %i.air, i64 %i.ahn
  %i.aiv = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.ahp
  %i.aiw = load float, ptr %i.aiv, align 4, !tbaa !91
  %i.aix = fpext float %i.aiw to double
  %i.aiy = fmul double %i.ahd, %i.ait
  %i.aiz = fsub double %i.aix, %i.aiy             ; 3 uses
  store double %i.aiz, ptr %i.ahq, align 8, !tbaa !89
  br i1 %i.aik, label %.lr.ph.i123.us.epil.preheader, label %.lr.ph.i123.us

.lr.ph.i123.us:                                   ; preds = %.lr.ph.i123.preheader.us, %.lr.ph.i123.us
  %store_forwarded180 = phi double [ %i.ajt, %.lr.ph.i123.us ], [ %i.aiz, %.lr.ph.i123.preheader.us ]
  %indvars.iv.i124.us = phi i64 [ %indvars.iv.next.i127.us.1, %.lr.ph.i123.us ], [ 2, %.lr.ph.i123.preheader.us ] ; 3 uses
  %i.aja = phi ptr [ %.0115.i125.us, %.lr.ph.i123.us ], [ %i.air, %.lr.ph.i123.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i123.us ], [ 0, %.lr.ph.i123.preheader.us ] ; 2 uses
  %.0115.i125.us = getelementptr inbounds i8, ptr %i.aja, i64 %.0115.i125.us.idx ; 4 uses
  %i.ajb = getelementptr inbounds [4 x i8], ptr %.0115.i125.us, i64 %i.ahp
  %i.ajc = load float, ptr %i.ajb, align 4, !tbaa !91
  %i.ajd = fpext float %i.ajc to double
  %i.aje = getelementptr [8 x i8], ptr %i.age, i64 %indvars.iv.i124.us ; 2 uses
  %i.ajf = fmul double %i.ahd, %store_forwarded180
  %i.ajg = fsub double %i.ajd, %i.ajf
  %i.ajh = getelementptr i8, ptr %i.aje, i64 -16
  %i.aji = load double, ptr %i.ajh, align 8, !tbaa !89
  %i.ajj = call double @llvm.fmuladd.f64(double %i.ahs, double %i.aji, double %i.ajg) ; 2 uses
  store double %i.ajj, ptr %i.aje, align 8, !tbaa !89
  %.0115.i126.us.1 = getelementptr inbounds [4 x i8], ptr %.0115.i125.us, i64 %i.ahn
  %i.ajk = getelementptr inbounds [4 x i8], ptr %.0115.i126.us.1, i64 %i.ahp
  %i.ajl = load float, ptr %i.ajk, align 4, !tbaa !91
  %i.ajm = fpext float %i.ajl to double
  %i.ajn = getelementptr [8 x i8], ptr %i.age, i64 %indvars.iv.i124.us ; 2 uses
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 8
  %i.ajp = fmul double %i.ahd, %i.ajj
  %i.ajq = fsub double %i.ajm, %i.ajp
  %i.ajr = getelementptr i8, ptr %i.ajn, i64 -8
  %i.ajs = load double, ptr %i.ajr, align 8, !tbaa !89
  %i.ajt = call double @llvm.fmuladd.f64(double %i.ahs, double %i.ajs, double %i.ajq) ; 3 uses
  store double %i.ajt, ptr %i.ajo, align 8, !tbaa !89
  %indvars.iv.next.i127.us.1 = add nuw nsw i64 %indvars.iv.i124.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.aim
  br i1 %niter.ncmp.1, label %.lr.ph129.preheader.i129.us.unr-lcssa, label %.lr.ph.i123.us, !llvm.loop !116

.lr.ph129.preheader.i129.us.unr-lcssa:            ; preds = %.lr.ph.i123.us
  br i1 %lcmp.mod.not, label %.lr.ph129.preheader.i129.us, label %.lr.ph.i123.us.epil.preheader

.lr.ph.i123.us.epil.preheader:                    ; preds = %.lr.ph129.preheader.i129.us.unr-lcssa, %.lr.ph.i123.preheader.us
  %store_forwarded180.epil.init = phi double [ %i.aiz, %.lr.ph.i123.preheader.us ], [ %i.ajt, %.lr.ph129.preheader.i129.us.unr-lcssa ]
  %indvars.iv.i124.us.epil.init = phi i64 [ 2, %.lr.ph.i123.preheader.us ], [ %indvars.iv.next.i127.us.1, %.lr.ph129.preheader.i129.us.unr-lcssa ]
  %i.aju = phi ptr [ %i.air, %.lr.ph.i123.preheader.us ], [ %.0115.i125.us, %.lr.ph129.preheader.i129.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod189)
  %.0115.i125.us.epil = getelementptr inbounds i8, ptr %i.aju, i64 %.0115.i125.us.epil.idx
  %i.ajv = getelementptr inbounds [4 x i8], ptr %.0115.i125.us.epil, i64 %i.ahp
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !91
  %i.ajx = fpext float %i.ajw to double
  %i.ajy = getelementptr [8 x i8], ptr %i.age, i64 %indvars.iv.i124.us.epil.init ; 2 uses
  %i.ajz = fmul double %i.ahd, %store_forwarded180.epil.init
  %i.aka = fsub double %i.ajx, %i.ajz
  %i.akb = getelementptr i8, ptr %i.ajy, i64 -16
  %i.akc = load double, ptr %i.akb, align 8, !tbaa !89
  %i.akd = call double @llvm.fmuladd.f64(double %i.ahs, double %i.akc, double %i.aka)
  store double %i.akd, ptr %i.ajy, align 8, !tbaa !89
  br label %.lr.ph129.preheader.i129.us

.lr.ph129.preheader.i129.us:                      ; preds = %.lr.ph129.preheader.i129.us.unr-lcssa, %.lr.ph.i123.us.epil.preheader
  %gep155.i130.us = getelementptr [4 x i8], ptr %invariant.gep.i107, i64 %indvars.iv147.i111.us ; 2 uses
  %i.ake = load float, ptr %gep155.i130.us, align 4, !tbaa !91
  %i.akf = fpext float %i.ake to double           ; 3 uses
  store double %i.akf, ptr %i.ahw, align 8, !tbaa !89
  %i.akg = fmul double %i.ahd, %i.akf
  %i.akh = fadd double %i.akg, %i.akf
  store double %i.akh, ptr %i.aia, align 8, !tbaa !89
  %36 = getelementptr inbounds i8, ptr %gep155.i130.us, i64 %.idx.i104 ; 3 uses
  %load_initial182 = load double, ptr %scevgep181, align 8 ; 2 uses
  br i1 %lcmp.mod191.not.not, label %.lr.ph129.i131.us.prol, label %.lr.ph129.i131.us.prol.loopexit

.lr.ph129.i131.us.prol:                           ; preds = %.lr.ph129.preheader.i129.us
  %.pn122.i134.us.prol = getelementptr inbounds [4 x i8], ptr %36, i64 %i.ahn
  %i.aki = load float, ptr %.pn122.i134.us.prol, align 4, !tbaa !91
  %i.akj = fpext float %i.aki to double
  %i.akk = fmul double %i.ahd, %load_initial182
  %i.akl = fsub double %i.akj, %i.akk
  %i.akm = load double, ptr %i.aip, align 8, !tbaa !89
  %i.akn = call double @llvm.fmuladd.f64(double %i.ahs, double %i.akm, double %i.akl) ; 2 uses
  store double %i.akn, ptr %i.aio, align 8, !tbaa !89
  %37 = getelementptr inbounds [4 x i8], ptr %36, i64 %i.ahx
  br label %.lr.ph129.i131.us.prol.loopexit

.lr.ph129.i131.us.prol.loopexit:                  ; preds = %.lr.ph129.i131.us.prol, %.lr.ph129.preheader.i129.us
  %store_forwarded183.unr = phi double [ %load_initial182, %.lr.ph129.preheader.i129.us ], [ %i.akn, %.lr.ph129.i131.us.prol ]
  %indvars.iv139.i132.us.unr = phi i64 [ %i.aid, %.lr.ph129.preheader.i129.us ], [ %indvars.iv.next140.i135.us.prol, %.lr.ph129.i131.us.prol ]
  %.pn123126.i133.us.unr = phi ptr [ %36, %.lr.ph129.preheader.i129.us ], [ %37, %.lr.ph129.i131.us.prol ]
  br i1 %i.aiq, label %.lr.ph132.i118.us.preheader.new, label %.lr.ph129.i131.us

.lr.ph129.i131.us:                                ; preds = %.lr.ph129.i131.us.prol.loopexit, %.lr.ph129.i131.us
  %store_forwarded183 = phi double [ %i.ald, %.lr.ph129.i131.us ], [ %store_forwarded183.unr, %.lr.ph129.i131.us.prol.loopexit ]
  %indvars.iv139.i132.us = phi i64 [ %indvars.iv.next140.i135.us.1, %.lr.ph129.i131.us ], [ %indvars.iv139.i132.us.unr, %.lr.ph129.i131.us.prol.loopexit ] ; 3 uses
  %.pn123126.i133.us = phi ptr [ %38, %.lr.ph129.i131.us ], [ %.pn123126.i133.us.unr, %.lr.ph129.i131.us.prol.loopexit ] ; 3 uses
  %.pn122.i134.us = getelementptr inbounds [4 x i8], ptr %.pn123126.i133.us, i64 %i.ahn
  %i.ako = load float, ptr %.pn122.i134.us, align 4, !tbaa !91
  %i.akp = fpext float %i.ako to double
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.agg, i64 %indvars.iv139.i132.us ; 2 uses
  %i.akr = fmul double %i.ahd, %store_forwarded183
  %i.aks = fsub double %i.akp, %i.akr
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akq, i64 16
  %i.aku = load double, ptr %i.akt, align 8, !tbaa !89
  %i.akv = call double @llvm.fmuladd.f64(double %i.ahs, double %i.aku, double %i.aks) ; 2 uses
  store double %i.akv, ptr %i.akq, align 8, !tbaa !89
  %indvars.iv.next140.i135.us = add nsw i64 %indvars.iv139.i132.us, -1 ; 2 uses
  %i.akw = load float, ptr %.pn123126.i133.us, align 4, !tbaa !91
  %i.akx = fpext float %i.akw to double
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.agg, i64 %indvars.iv.next140.i135.us ; 2 uses
  %i.akz = fmul double %i.ahd, %i.akv
  %i.ala = fsub double %i.akx, %i.akz
  %i.alb = getelementptr inbounds nuw i8, ptr %i.aky, i64 16
  %i.alc = load double, ptr %i.alb, align 8, !tbaa !89
  %i.ald = call double @llvm.fmuladd.f64(double %i.ahs, double %i.alc, double %i.ala) ; 2 uses
  store double %i.ald, ptr %i.aky, align 8, !tbaa !89
  %indvars.iv.next140.i135.us.1 = add nsw i64 %indvars.iv139.i132.us, -2
  %38 = getelementptr inbounds i8, ptr %.pn123126.i133.us, i64 %.idx
  %.not.i136.us.1 = icmp eq i64 %indvars.iv.next140.i135.us, 0
  br i1 %.not.i136.us.1, label %.lr.ph132.i118.us.preheader.new, label %.lr.ph129.i131.us, !llvm.loop !117

.lr.ph132.i118.us.preheader.new:                  ; preds = %.lr.ph129.i131.us.prol.loopexit, %.lr.ph129.i131.us
  %i.ale = getelementptr inbounds [4 x i8], ptr %i.ahm, i64 %indvars.iv147.i111.us
  br label %.lr.ph132.i118.us

.lr.ph132.i118.us:                                ; preds = %.lr.ph132.i118.us, %.lr.ph132.i118.us.preheader.new
  %indvars.iv142.i119.us = phi i64 [ 0, %.lr.ph132.i118.us.preheader.new ], [ %indvars.iv.next143.i121.us.1, %.lr.ph132.i118.us ] ; 4 uses
  %.0118130.i120.us = phi ptr [ %i.ale, %.lr.ph132.i118.us.preheader.new ], [ %i.alu, %.lr.ph132.i118.us ] ; 2 uses
  %niter196 = phi i64 [ 0, %.lr.ph132.i118.us.preheader.new ], [ %niter196.next.1, %.lr.ph132.i118.us ]
  %i.alf = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv142.i119.us
  %i.alg = load double, ptr %i.alf, align 8, !tbaa !89
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %i.agg, i64 %indvars.iv142.i119.us
  %i.ali = load double, ptr %i.alh, align 8, !tbaa !89
  %i.alj = fsub double %i.alg, %i.ali
  %i.alk = fmul double %i.agz, %i.alj
  %i.all = fptrunc double %i.alk to float
  store float %i.all, ptr %.0118130.i120.us, align 4, !tbaa !91
  %indvars.iv.next143.i121.us = or disjoint i64 %indvars.iv142.i119.us, 1 ; 2 uses
  %i.alm = getelementptr inbounds [4 x i8], ptr %.0118130.i120.us, i64 %i.ahn ; 2 uses
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv.next143.i121.us
  %i.alo = load double, ptr %i.aln, align 8, !tbaa !89
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr %i.agg, i64 %indvars.iv.next143.i121.us
  %i.alq = load double, ptr %i.alp, align 8, !tbaa !89
  %i.alr = fsub double %i.alo, %i.alq
  %i.als = fmul double %i.agz, %i.alr
  %i.alt = fptrunc double %i.als to float
  store float %i.alt, ptr %i.alm, align 4, !tbaa !91
  %indvars.iv.next143.i121.us.1 = add nuw nsw i64 %indvars.iv142.i119.us, 2 ; 3 uses
  %i.alu = getelementptr inbounds [4 x i8], ptr %i.alm, i64 %i.ahn ; 2 uses
  %niter196.next.1 = add nuw nsw i64 %niter196, 2 ; 2 uses
  %niter196.ncmp.1 = icmp eq i64 %niter196.next.1, %unroll_iter195
  br i1 %niter196.ncmp.1, label %._crit_edge133.i114.loopexit.us.unr-lcssa, label %.lr.ph132.i118.us, !llvm.loop !118

._crit_edge133.i114.loopexit.us.unr-lcssa:        ; preds = %.lr.ph132.i118.us
  br i1 %lcmp.mod193.not, label %._crit_edge133.i114.loopexit.us, label %.lr.ph132.i118.us.epil.preheader

.lr.ph132.i118.us.epil.preheader:                 ; preds = %._crit_edge133.i114.loopexit.us.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod194)
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv.next143.i121.us.1
  %i.alw = load double, ptr %i.alv, align 8, !tbaa !89
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr %i.agg, i64 %indvars.iv.next143.i121.us.1
  %i.aly = load double, ptr %i.alx, align 8, !tbaa !89
  %i.alz = fsub double %i.alw, %i.aly
  %i.ama = fmul double %i.agz, %i.alz
  %i.amb = fptrunc double %i.ama to float
  store float %i.amb, ptr %i.alu, align 4, !tbaa !91
  br label %._crit_edge133.i114.loopexit.us

._crit_edge133.i114.loopexit.us:                  ; preds = %._crit_edge133.i114.loopexit.us.unr-lcssa, %.lr.ph132.i118.us.epil.preheader
  %indvars.iv.next148.i115.us = add nsw i64 %indvars.iv147.i111.us, 1 ; 2 uses
  %exitcond151.not.i116.us = icmp eq i64 %indvars.iv.next148.i115.us, %wide.trip.count150.i106
  br i1 %exitcond151.not.i116.us, label %_ZN2cv8ximgprocL17VerticalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %.lr.ph.i123.preheader.us, !llvm.loop !119

bb.y:                                             ; preds = %bb.w
  %i.amc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %common.resume

.preheader.i112:                                  ; preds = %.preheader.i112.preheader, %._crit_edge133.i114
  %indvars.iv147.i111 = phi i64 [ %indvars.iv.next148.i115, %._crit_edge133.i114 ], [ %i.aie, %.preheader.i112.preheader ] ; 4 uses
  %i.amd = getelementptr inbounds [4 x i8], ptr %i.ahk, i64 %indvars.iv147.i111 ; 2 uses
  %i.ame = load float, ptr %i.amd, align 4, !tbaa !91
  %i.amf = fpext float %i.ame to double           ; 2 uses
  store double %i.amf, ptr %i.age, align 8, !tbaa !89
  %i.amg = getelementptr inbounds [4 x i8], ptr %i.amd, i64 %i.ahn
  %i.amh = getelementptr inbounds [4 x i8], ptr %i.amg, i64 %i.ahp
  %i.ami = load float, ptr %i.amh, align 4, !tbaa !91
  %i.amj = fpext float %i.ami to double
  %i.amk = fmul double %i.ahd, %i.amf
  %i.aml = fsub double %i.amj, %i.amk
  store double %i.aml, ptr %i.ahq, align 8, !tbaa !89
  %gep.i113 = getelementptr [4 x i8], ptr %invariant.gep.i107, i64 %indvars.iv147.i111
  %i.amm = load float, ptr %gep.i113, align 4, !tbaa !91
  %i.amn = fpext float %i.amm to double           ; 3 uses
  store double %i.amn, ptr %i.ahw, align 8, !tbaa !89
  %i.amo = fmul double %i.ahd, %i.amn
  %i.amp = fadd double %i.amo, %i.amn
  store double %i.amp, ptr %i.aia, align 8, !tbaa !89
  br i1 %i.aic, label %.lr.ph132.i118, label %._crit_edge133.i114

.lr.ph132.i118:                                   ; preds = %.preheader.i112
  %i.amq = getelementptr inbounds [4 x i8], ptr %i.ahm, i64 %indvars.iv147.i111 ; 2 uses
  %i.amr = load double, ptr %i.age, align 8, !tbaa !89
  %i.ams = load double, ptr %i.agg, align 8, !tbaa !89
  %i.amt = fsub double %i.amr, %i.ams
  %i.amu = fmul double %i.agz, %i.amt
  %i.amv = fptrunc double %i.amu to float
  store float %i.amv, ptr %i.amq, align 4, !tbaa !91
  br i1 %exitcond146.not.i122, label %._crit_edge133.i114, label %.lr.ph132.i118.1

.lr.ph132.i118.1:                                 ; preds = %.lr.ph132.i118
  %i.amw = getelementptr inbounds [4 x i8], ptr %i.amq, i64 %i.ahn
  %i.amx = load double, ptr %i.aig, align 8, !tbaa !89
  %i.amy = load double, ptr %i.aih, align 8, !tbaa !89
  %i.amz = fsub double %i.amx, %i.amy
  %i.ana = fmul double %i.agz, %i.amz
  %i.anb = fptrunc double %i.ana to float
  store float %i.anb, ptr %i.amw, align 4, !tbaa !91
  br label %._crit_edge133.i114

._crit_edge133.i114:                              ; preds = %.lr.ph132.i118, %.lr.ph132.i118.1, %.preheader.i112
  %indvars.iv.next148.i115 = add nsw i64 %indvars.iv147.i111, 1 ; 2 uses
  %exitcond151.not.i116 = icmp eq i64 %indvars.iv.next148.i115, %wide.trip.count150.i106
  br i1 %exitcond151.not.i116, label %_ZN2cv8ximgprocL17VerticalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit, label %.preheader.i112, !llvm.loop !119

_ZN2cv8ximgprocL17VerticalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit: ; preds = %._crit_edge133.i114, %._crit_edge133.i114.loopexit.us, %bb.x
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.z

bb.z:                                             ; preds = %bb.f, %_ZN2cv8ximgprocL17VerticalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL17VerticalIIRFilterIsEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL17VerticalIIRFilterItEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL17VerticalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL17VerticalIIRFilterIhEEvRNS_3MatES3_RKNS_5RangeEdd.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2cv12getThreadNumEv() local_unnamed_addr #2

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
declare double @cos(double noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc28ParallelGradientDericheYRowsD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8ximgproc28ParallelGradientDericheYRowsclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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

end_hunk_0
begin_hunk_1_@_ZNK2cv8ximgproc28ParallelGradientDericheXRowsclERKNS_5RangeE:bb.a
.lr.ph113.i111:                                   ; preds = %.lr.ph113.i111.prol.loopexit, %.lr.ph113.i111
  %store_forwarded234 = phi double [ %i.agp, %.lr.ph113.i111 ], [ %store_forwarded234.unr, %.lr.ph113.i111.prol.loopexit ]
  %indvars.iv122.i112 = phi i64 [ %indvars.iv.next123.i114.1, %.lr.ph113.i111 ], [ %indvars.iv122.i112.unr, %.lr.ph113.i111.prol.loopexit ] ; 3 uses
  %.1104110.i113 = phi ptr [ %i.agq, %.lr.ph113.i111 ], [ %.1104110.i113.unr, %.lr.ph113.i111.prol.loopexit ] ; 3 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %.1104110.i113, i64 4
  %i.aga = load float, ptr %i.afz, align 4, !tbaa !91
  %i.agb = fpext float %i.aga to double
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %indvars.iv122.i112 ; 2 uses
  %i.agd = fmul double %i.abw, %store_forwarded234
  %i.age = fsub double %i.agb, %i.agd
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agc, i64 16
  %i.agg = load double, ptr %i.agf, align 8, !tbaa !89
  %i.agh = call double @llvm.fmuladd.f64(double %i.acm, double %i.agg, double %i.age) ; 2 uses
  store double %i.agh, ptr %i.agc, align 8, !tbaa !89
  %indvars.iv.next123.i114 = add nsw i64 %indvars.iv122.i112, -1 ; 2 uses
  %i.agi = load float, ptr %.1104110.i113, align 4, !tbaa !91
  %i.agj = fpext float %i.agi to double
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %indvars.iv.next123.i114 ; 2 uses
  %i.agl = fmul double %i.abw, %i.agh
  %i.agm = fsub double %i.agj, %i.agl
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agk, i64 16
  %i.ago = load double, ptr %i.agn, align 8, !tbaa !89
  %i.agp = call double @llvm.fmuladd.f64(double %i.acm, double %i.ago, double %i.agm) ; 2 uses
  store double %i.agp, ptr %i.agk, align 8, !tbaa !89
  %indvars.iv.next123.i114.1 = add nsw i64 %indvars.iv122.i112, -2
  %i.agq = getelementptr inbounds i8, ptr %.1104110.i113, i64 -8
  %.not.i115.1 = icmp eq i64 %indvars.iv.next123.i114, 0
  br i1 %.not.i115.1, label %.lr.ph116.preheader.i104, label %.lr.ph113.i111, !llvm.loop !152

.lr.ph116.i105:                                   ; preds = %.lr.ph116.i105.preheader, %.lr.ph116.i105
  %indvars.iv125.i106 = phi i64 [ %indvars.iv.next126.i108, %.lr.ph116.i105 ], [ %indvars.iv125.i106.ph, %.lr.ph116.i105.preheader ] ; 3 uses
  %.0106114.i107 = phi ptr [ %i.agy, %.lr.ph116.i105 ], [ %.0106114.i107.ph, %.lr.ph116.i105.preheader ] ; 2 uses
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %indvars.iv125.i106
  %i.ags = load double, ptr %i.agr, align 8, !tbaa !89
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %indvars.iv125.i106
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !89
  %i.agv = fsub double %i.ags, %i.agu
  %i.agw = fmul double %i.abs, %i.agv
  %i.agx = fptrunc double %i.agw to float
  store float %i.agx, ptr %.0106114.i107, align 4, !tbaa !91
  %indvars.iv.next126.i108 = add nuw nsw i64 %indvars.iv125.i106, 1 ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %.0106114.i107, i64 4
  %exitcond129.not.i109 = icmp eq i64 %indvars.iv.next126.i108, %wide.trip.count.i96
  br i1 %exitcond129.not.i109, label %.loopexit.i102, label %.lr.ph116.i105, !llvm.loop !153

_ZN2cv8ximgprocL19HorizontalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit: ; preds = %.loopexit.i102, %bb.x
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.f, %_ZN2cv8ximgprocL19HorizontalIIRFilterIfEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL19HorizontalIIRFilterIsEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL19HorizontalIIRFilterItEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL19HorizontalIIRFilterIcEEvRNS_3MatES3_RKNS_5RangeEdd.exit, %_ZN2cv8ximgprocL19HorizontalIIRFilterIhEEvRNS_3MatES3_RKNS_5RangeEdd.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc28ParallelGradientDericheXColsD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8ximgproc28ParallelGradientDericheXColsclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !161, !nonnull !65, !align !87 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !51 ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !43 ; 5 uses
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.am, i32 %i.ao) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 1, i32 noundef %i.ap, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1, i32 noundef %i.ap, i32 noundef 6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !88 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !88 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load double, ptr %i.au, align 8, !tbaa !61 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !62 ; 10 uses
  %i.ay = fmul double %i.ax, %i.ax
  %i.az = call double @llvm.fmuladd.f64(double %i.av, double %i.av, double %i.ay) ; 3 uses
  %i.ba = fneg double %i.av                       ; 3 uses
  %i.bb = call double @exp(double noundef %i.ba) #14
  %i.bc = call double @cos(double noundef %i.ax) #14
  %i.bd = fmul double %i.bb, -2.000000e+00
  %i.be = call double @llvm.fmuladd.f64(double %i.bd, double %i.bc, double 1.000000e+00)
  %i.bf = fmul double %i.av, -2.000000e+00        ; 3 uses
  %i.bg = call double @exp(double noundef %i.bf) #14
  %i.bh = fadd double %i.be, %i.bg
  %i.bi = fmul double %i.az, %i.bh
  %i.bj = fmul double %i.av, 2.000000e+00
  %i.bk = call double @exp(double noundef %i.ba) #14
  %i.bl = fmul double %i.bj, %i.bk
  %i.bm = call double @sin(double noundef %i.ax) #14
  %i.bn = call double @llvm.fmuladd.f64(double %i.bl, double %i.bm, double %i.ax)
  %i.bo = call double @exp(double noundef %i.bf) #14
  %i.bp = fneg double %i.ax
  %i.bq = call double @llvm.fmuladd.f64(double %i.bp, double %i.bo, double %i.bn)
  %i.br = fdiv double %i.bi, %i.bq                ; 2 uses
  %i.bs = fmul double %i.av, %i.br
  %i.bt = fdiv double %i.bs, %i.az
  %i.bu = fmul double %i.ax, %i.br
  %i.bv = fdiv double %i.bu, %i.az                ; 4 uses
  %i.bw = fneg double %i.bv                       ; 3 uses
  %i.bx = call double @cos(double noundef %i.ax) #14
  %i.by = call double @sin(double noundef %i.ax) #14
  %i.bz = fmul double %i.by, %i.bt
  %i.ca = call double @llvm.fmuladd.f64(double %i.bw, double %i.bx, double %i.bz)
  %i.cb = call double @exp(double noundef %i.ba) #14 ; 2 uses
  %i.cc = fmul double %i.cb, %i.ca                ; 4 uses
  %i.cd = fmul double %i.cb, -2.000000e+00
  %i.ce = call double @cos(double noundef %i.ax) #14
  %i.cf = fmul double %i.cd, %i.ce                ; 2 uses
  %i.cg = call double @exp(double noundef %i.bf) #14 ; 4 uses
  %i.ch = call double @llvm.fmuladd.f64(double %i.bw, double %i.cf, double %i.cc) ; 2 uses
  %i.ci = fmul double %i.cg, %i.bw                ; 2 uses
  %i.cj = load i32, ptr %1, align 4, !tbaa !45    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !46 ; 2 uses
  %i.cm = icmp slt i32 %i.cj, %i.cl
  br i1 %i.cm, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %bb.g
  %i.cn = load ptr, ptr %i.aj, align 8, !tbaa !161, !nonnull !65, !align !87 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !88 ; 2 uses
  %i.cq = fadd double %i.bv, %i.cc
  %i.cr = sext i32 %i.ao to i64                   ; 4 uses
  %i.cs = sub nsw i32 0, %i.ao
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = fneg double %i.cf                       ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cw = icmp sgt i32 %i.am, 2
  %i.cx = fneg double %i.cg                       ; 2 uses
  %i.cy = add nsw i32 %i.am, -1                   ; 2 uses
  %i.cz = mul nsw i32 %i.cy, %i.ao
  %i.da = fadd double %i.ci, %i.ch                ; 4 uses
  %i.db = sext i32 %i.cy to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.db ; 2 uses
  %i.dd = sub nsw i64 0, %i.cr                    ; 2 uses
  %i.de = sext i32 %i.am to i64
  %i.df = getelementptr [8 x i8], ptr %i.at, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 -16    ; 2 uses
  %.idx = shl nsw i64 %i.dd, 3
  %i.dh = add i32 %i.am, -3
  %i.di = shl nsw i32 %i.ao, 1
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp sgt i32 %i.am, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = zext i32 %i.dh to i64                   ; 2 uses
  %i.dn = sext i32 %i.cj to i64
  %i.do = sext i32 %i.cz to i64
  %wide.trip.count157 = sext i32 %i.cl to i64
  %wide.trip.count = zext i32 %i.am to i64        ; 5 uses
  %invariant.gep162 = getelementptr [4 x i8], ptr %i.cp, i64 %i.do ; 2 uses
  %wide.trip.count152 = zext nneg i32 %i.am to i64
  %scevgep = getelementptr i8, ptr %i.ar, i64 8
  %i.dp = shl nuw nsw i64 %i.dm, 3
  %i.dq = getelementptr i8, ptr %i.at, i64 %i.dp
  %scevgep167 = getelementptr i8, ptr %i.dq, i64 8
  %min.iters.check = icmp ugt i32 %i.am, 3
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dr = add nsw i64 %wide.trip.count, -1
  br label %bb.i

._crit_edge144:                                   ; preds = %._crit_edge140, %bb.g
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

bb.h:                                             ; preds = %bb.f
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %i.ds

bb.i:                                             ; preds = %.lr.ph143, %._crit_edge140
  %indvars.iv154 = phi i64 [ %i.dn, %.lr.ph143 ], [ %indvars.iv.next155, %._crit_edge140 ] ; 5 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %indvars.iv154 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !91
  %i.dv = fpext float %i.du to double
  %i.dw = fmul double %i.cq, %i.dv                ; 2 uses
  store double %i.dw, ptr %i.ar, align 8, !tbaa !89
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.cr ; 3 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !91
  %i.dz = fpext float %i.dy to double
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.ct
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !91
  %i.ec = fpext float %i.eb to double
  %i.ed = fmul double %i.cc, %i.ec
  %i.ee = call double @llvm.fmuladd.f64(double %i.bv, double %i.dz, double %i.ed)
  %i.ef = call double @llvm.fmuladd.f64(double %i.cu, double %i.dw, double %i.ee)
  store double %i.ef, ptr %i.cv, align 8, !tbaa !89
  br i1 %i.cw, label %.lr.ph.preheader, label %.preheader.critedge

.lr.ph.preheader:                                 ; preds = %bb.i
  %load_initial = load double, ptr %scevgep, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi double [ %load_initial, %.lr.ph.preheader ], [ %i.er, %.lr.ph ]
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.pn132 = phi ptr [ %i.dx, %.lr.ph.preheader ], [ %.0128, %.lr.ph ]
  %.0128 = getelementptr inbounds [4 x i8], ptr %.pn132, i64 %i.cr ; 3 uses
  %i.eg = load float, ptr %.0128, align 4, !tbaa !91
  %i.eh = fpext float %i.eg to double
  %i.ei = getelementptr inbounds [4 x i8], ptr %.0128, i64 %i.ct
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !91
  %i.ek = fpext float %i.ej to double
  %i.el = fmul double %i.cc, %i.ek
  %i.em = call double @llvm.fmuladd.f64(double %i.bv, double %i.eh, double %i.el)
  %i.en = getelementptr [8 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.eo = call double @llvm.fmuladd.f64(double %i.cu, double %store_forwarded, double %i.em)
  %i.ep = getelementptr i8, ptr %i.en, i64 -16
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !89
  %i.er = call double @llvm.fmuladd.f64(double %i.cx, double %i.eq, double %i.eo) ; 2 uses
  store double %i.er, ptr %i.en, align 8, !tbaa !89
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !156

._crit_edge:                                      ; preds = %.lr.ph
  %gep163 = getelementptr [4 x i8], ptr %invariant.gep162, i64 %indvars.iv154 ; 2 uses
  %i.es = load float, ptr %gep163, align 4, !tbaa !91
  %i.et = fpext float %i.es to double             ; 2 uses
  %i.eu = fmul double %i.da, %i.et                ; 2 uses
  store double %i.eu, ptr %i.dc, align 8, !tbaa !89
  %i.ev = fneg double %i.eu
  %i.ew = fmul double %i.cg, %i.ev
  %i.ex = call double @llvm.fmuladd.f64(double %i.da, double %i.et, double %i.ew)
  store double %i.ex, ptr %i.dg, align 8, !tbaa !89
  %4 = getelementptr inbounds i8, ptr %gep163, i64 %.idx
  %load_initial168 = load double, ptr %scevgep167, align 8
  br label %.lr.ph137

.preheader.critedge:                              ; preds = %bb.i
  %gep163.c = getelementptr [4 x i8], ptr %invariant.gep162, i64 %indvars.iv154
  %i.ey = load float, ptr %gep163.c, align 4, !tbaa !91
  %i.ez = fpext float %i.ey to double             ; 2 uses
  %i.fa = fmul double %i.da, %i.ez                ; 2 uses
  store double %i.fa, ptr %i.dc, align 8, !tbaa !89
  %i.fb = fneg double %i.fa
  %i.fc = fmul double %i.cg, %i.fb
  %i.fd = call double @llvm.fmuladd.f64(double %i.da, double %i.ez, double %i.fc)
  store double %i.fd, ptr %i.dg, align 8, !tbaa !89
  br i1 %i.dk, label %.lr.ph139, label %._crit_edge140

.lr.ph139:                                        ; preds = %.lr.ph137, %.preheader.critedge
  %i.fe = load ptr, ptr %i.dl, align 8, !tbaa !162, !nonnull !65, !align !87 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !88
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 128
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !55 ; 4 uses
  %i.fj = load i32, ptr %i.cn, align 8, !tbaa !27
  %i.fk = lshr i32 %i.fj, 5
  %i.fl = and i32 %i.fk, 127
  %i.fm = add nuw nsw i32 %i.fl, 1
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = mul nsw i64 %indvars.iv154, %i.fn
  %invariant.gep = getelementptr [4 x i8], ptr %i.fg, i64 %i.fo ; 7 uses
  %ident.check.not = icmp eq i64 %i.fi, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.body, label %scalar.ph.preheader

vector.body:                                      ; preds = %.lr.ph139, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph139 ] ; 7 uses
  %i.fp = getelementptr i8, ptr %invariant.gep, i64 %index
  %i.fq = getelementptr i8, ptr %invariant.gep, i64 %index
  %i.fr = getelementptr i8, ptr %i.fq, i64 1
  %i.fs = getelementptr i8, ptr %invariant.gep, i64 %index
  %i.ft = getelementptr i8, ptr %i.fs, i64 2
  %i.fu = getelementptr i8, ptr %invariant.gep, i64 %index
  %i.fv = getelementptr i8, ptr %i.fu, i64 3
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load = load <2 x double>, ptr %i.fw, align 8, !tbaa !89
  %wide.load164.a = load <2 x double>, ptr %i.fx, align 8, !tbaa !89
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %wide.load165.a = load <2 x double>, ptr %i.fy, align 8, !tbaa !89
  %wide.load166 = load <2 x double>, ptr %i.fz, align 8, !tbaa !89
  %i.ga = fadd <2 x double> %wide.load, %wide.load165.a
  %i.gb = fadd <2 x double> %wide.load164.a, %wide.load166
  %i.gc = fptrunc <2 x double> %i.ga to <2 x float> ; 2 uses
  %i.gd = fptrunc <2 x double> %i.gb to <2 x float> ; 2 uses
  %i.ge = extractelement <2 x float> %i.gc, i64 0
  store float %i.ge, ptr %i.fp, align 4, !tbaa !91
  %i.gf = extractelement <2 x float> %i.gc, i64 1
  store float %i.gf, ptr %i.fr, align 4, !tbaa !91
  %i.gg = extractelement <2 x float> %i.gd, i64 0
  store float %i.gg, ptr %i.ft, align 4, !tbaa !91
  %i.gh = extractelement <2 x float> %i.gd, i64 1
  store float %i.gh, ptr %i.fv, align 4, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge140, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph139, %middle.block
  %indvars.iv149.ph = phi i64 [ 0, %.lr.ph139 ], [ %n.vec, %middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gj = mul i64 %i.fi, %indvars.iv149.ph
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.gj
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv149.ph
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !89
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv149.ph
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !89
  %i.go = fadd double %i.gl, %i.gn
  %i.gp = fptrunc double %i.go to float
  store float %i.gp, ptr %gep.prol, align 4, !tbaa !91
  %indvars.iv.next150.prol = or disjoint i64 %indvars.iv149.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv149.unr = phi i64 [ %indvars.iv149.ph, %scalar.ph.preheader ], [ %indvars.iv.next150.prol, %scalar.ph.prol ]
  %i.gq = icmp eq i64 %indvars.iv149.ph, %i.dr
  br i1 %i.gq, label %._crit_edge140, label %scalar.ph

.lr.ph137:                                        ; preds = %._crit_edge, %.lr.ph137
  %store_forwarded169 = phi double [ %load_initial168, %._crit_edge ], [ %i.hc, %.lr.ph137 ]
  %indvars.iv146 = phi i64 [ %i.dm, %._crit_edge ], [ %indvars.iv.next147, %.lr.ph137 ] ; 3 uses
  %.pn131134 = phi ptr [ %4, %._crit_edge ], [ %5, %.lr.ph137 ] ; 3 uses
  %.1129 = getelementptr inbounds [4 x i8], ptr %.pn131134, i64 %i.cr
  %i.gr = load float, ptr %.1129, align 4, !tbaa !91
  %i.gs = fpext float %i.gr to double
  %i.gt = getelementptr inbounds [4 x i8], ptr %.pn131134, i64 %i.dj
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !91
  %i.gv = fpext float %i.gu to double
  %i.gw = fmul double %i.ci, %i.gv
  %i.gx = call double @llvm.fmuladd.f64(double %i.ch, double %i.gs, double %i.gw)
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv146 ; 2 uses
  %i.gz = call double @llvm.fmuladd.f64(double %i.cu, double %store_forwarded169, double %i.gx)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !89
  %i.hc = call double @llvm.fmuladd.f64(double %i.cx, double %i.hb, double %i.gz) ; 2 uses
  store double %i.hc, ptr %i.gy, align 8, !tbaa !89
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, -1
  %5 = getelementptr inbounds [4 x i8], ptr %.pn131134, i64 %i.dd
  %.not = icmp eq i64 %indvars.iv146, 0
  br i1 %.not, label %.lr.ph139, label %.lr.ph137, !llvm.loop !158

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.1, %scalar.ph ], [ %indvars.iv149.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hd = mul i64 %i.fi, %indvars.iv149
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.hd
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv149
  %i.hf = load double, ptr %i.he, align 8, !tbaa !89
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv149
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !89
  %i.hi = fadd double %i.hf, %i.hh
  %i.hj = fptrunc double %i.hi to float
  store float %i.hj, ptr %gep, align 4, !tbaa !91
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 3 uses
  %i.hk = mul i64 %i.fi, %indvars.iv.next150
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.hk
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next150
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !89
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next150
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !89
  %i.hp = fadd double %i.hm, %i.ho
  %i.hq = fptrunc double %i.hp to float
  store float %i.hq, ptr %gep.1, align 4, !tbaa !91
  %indvars.iv.next150.1 = add nuw nsw i64 %indvars.iv149, 2 ; 2 uses
  %exitcond153.not.1 = icmp eq i64 %indvars.iv.next150.1, %wide.trip.count152
  br i1 %exitcond153.not.1, label %._crit_edge140, label %scalar.ph, !llvm.loop !159

._crit_edge140:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.critedge
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %._crit_edge144, label %bb.i, !llvm.loop !160
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #15
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
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !163

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
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !163

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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !52}
!1 = distinct !{null, null, null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"_ZTSN2cv5Size_IiEE", !7, i64 0, !7, i64 4}
!12 = !{!"_ZTSN2cv11_InputArrayE", !7, i64 0, !10, i64 8, !11, i64 16}
!13 = !{!12, !7, i64 0}
!14 = !{!12, !10, i64 8}
!15 = !{!"p1 _ZTSN2cv3MatE", !10, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 8}
!18 = !{!16, !15, i64 0}
!19 = !{!16, !15, i64 16}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!22 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!23 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!24 = !{!"_ZTSN2cv8MatShapeE", !7, i64 0, !23, i64 4, !7, i64 8, !6, i64 12}
!25 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!26 = !{!"_ZTSN2cv3MatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !21, i64 56, !22, i64 64, !24, i64 72, !25, i64 128}
!27 = !{!26, !7, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!29 = !{!"long", !6, i64 0}
end_hunk_1
