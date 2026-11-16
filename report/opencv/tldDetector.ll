Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tldDetector?download=true
inline.NumInlined: 712
inline.NumDeleted: 337
begin_hunk_0_@_ZN2cv8tracking4impl3tld11TLDDetector13patchVarianceERNS_4Mat_IdEES6_PdNS_6Point_IiEENS_5Size_IiEE:bb.a
  %i.aq = getelementptr inbounds [8 x i8], ptr %.sink.i, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !71
  %i.as = sext i32 %i.q to i64                    ; 2 uses
  %i.at = mul i64 %i.ak, %i.as
  %.sink.idx.i84 = select i1 %i.ag, i64 0, i64 %i.at
  %.sink.i85 = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sink.idx.i84 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sink.i85, i64 %i.am
  %i.av = load double, ptr %i.au, align 8, !tbaa !71
  %i.aw = getelementptr inbounds [8 x i8], ptr %.sink.i85, i64 %i.ap
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !71
  %i.ay = mul nsw i32 %.sroa.2.0.extract.trunc, %.sroa.0.0.extract.trunc
  %i.az = sitofp i32 %i.ay to double
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !91
  %i.bc = icmp slt i32 %i.bb, 2                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !61 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = mul i64 %i.bg, %.sroa.264.0.extract.shift
  %.sink.idx.i88 = select i1 %i.bc, i64 0, i64 %i.bh
  %.sink.i89 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sink.idx.i88 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.sink.i89, i64 %i.am
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !71
  %i.bk = getelementptr inbounds [8 x i8], ptr %.sink.i89, i64 %i.ap
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !71
  %i.bm = mul i64 %i.bg, %i.as
  %.sink.idx.i92 = select i1 %i.bc, i64 0, i64 %i.bm
  %.sink.i93 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sink.idx.i92 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sink.i93, i64 %i.am
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !71
  %i.bp = getelementptr inbounds [8 x i8], ptr %.sink.i93, i64 %i.ap
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !71
  %i.br = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bj, i64 1
  %i.bt = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bq, i64 1
  %i.bv = fadd <2 x double> %i.bs, %i.bu
  %i.bw = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bl, i64 1
  %i.by = fsub <2 x double> %i.bv, %i.bx
  %i.bz = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bo, i64 1
  %i.cb = fsub <2 x double> %i.by, %i.ca
  %i.cc = insertelement <2 x double> poison, double %i.az, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fdiv <2 x double> %i.cb, %i.cd          ; 2 uses
  %i.cf = extractelement <2 x double> %i.ce, i64 0 ; 2 uses
  %i.cg = fneg double %i.cf
  %i.ch = extractelement <2 x double> %i.ce, i64 1
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cf, double %i.ch)
  %i.cj = load double, ptr %2, align 8, !tbaa !71
  %i.ck = fmul double %i.cj, 5.000000e-01
  %i.cl = fcmp ogt double %i.ci, %i.ck
  ret i1 %i.cl

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn71.pn = phi { ptr, i32 } [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn71.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

declare void @_ZN2cv8integralERKNS_11_InputArrayERKNS_12_OutputArrayES5_ii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8tracking4impl3tld24CalcScSrParallelLoopBodyD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8tracking4impl3tld24CalcScSrParallelLoopBodyclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.cv::Rect_", align 16        ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !95     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !96
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = sext i32 %i.a to i64
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !100
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.i = phi ptr [ %.pre, %.lr.ph ], [ %i.ai, %bb.b ] ; 4 uses
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52
  %i.o = sext i32 %i.n to i64
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load <2 x i32>, ptr %i.t, align 4, !tbaa !52
  %i.v = sitofp <2 x i32> %i.u to <2 x double>
  store <2 x double> %i.v, ptr %2, align 16, !tbaa !71
  %i.w = load <2 x i32>, ptr %i.f, align 8, !tbaa !52
  %i.x = sitofp <2 x i32> %i.w to <2 x double>
  store <2 x double> %i.x, ptr %i.g, align 16, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.z, i64 %indvars.iv
  call void @_ZN2cv8tracking4impl3tld8resampleERKNS_3MatERKNS_5Rect_IdEERNS_4Mat_IhEE(ptr noundef nonnull align 8 dereferenceable(208) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !100 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !93
  %i.ae = getelementptr inbounds nuw [208 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = call { double, double } @_ZNK2cv8tracking4impl3tld11TLDDetector7SrAndScERKNS_4Mat_IhEE(ptr noundef nonnull align 8 dereferenceable(312) %i.ab, ptr noundef nonnull align 8 dereferenceable(208) %i.ae) ; 2 uses
  %i.ag = extractvalue { double, double } %i.af, 0
  %i.ah = extractvalue { double, double } %i.af, 1
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !100 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !90
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  store double %i.ah, ptr %i.al, align 8, !tbaa !71
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !90
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  store double %i.ag, ptr %i.ao, align 8, !tbaa !71
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !96
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !171
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN2cv8tracking4impl3tld8resampleERKNS_3MatERKNS_5Rect_IdEERNS_4Mat_IhEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv17tracking_internal23getMedianAndDoPartitionIiEET_RSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = and i64 %i.f, 4
  %i.i = icmp eq i64 %i.h, 0
  %1 = icmp eq ptr %i.c, %i.b                     ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %2 = lshr exact i64 %i.g, 1                     ; 3 uses
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %2
  %4 = getelementptr inbounds i8, ptr %3, i64 -4  ; 2 uses
  %i.j = icmp eq ptr %4, %i.b
  %or.cond.i = select i1 %1, i1 true, i1 %i.j
  br i1 %or.cond.i, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.l = shl nuw nsw i64 %i.k, 1
  %i.m = xor i64 %i.l, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %i.c, ptr nonnull %4, ptr %i.b, i64 noundef %i.m)
  %.pre38 = load ptr, ptr %0, align 8, !tbaa !65
  %.pre39 = load ptr, ptr %i.a, align 8, !tbaa !67
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit: ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.b, %bb.b ], [ %.pre39, %bb.c ] ; 4 uses
  %i.o = phi ptr [ %i.c, %bb.b ], [ %.pre38, %bb.c ] ; 5 uses
  %i.p = getelementptr [4 x i8], ptr %i.o, i64 %2 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !52
  %i.s = icmp eq ptr %i.o, %i.n
  %i.t = icmp eq ptr %i.p, %i.n
  %or.cond.i31 = or i1 %i.s, %i.t
  br i1 %or.cond.i31, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit32, label %bb.d

bb.d:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit
  %i.u = ptrtoint ptr %i.n to i64
  %i.v = ptrtoint ptr %i.o to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = xor i64 %i.z, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr nonnull %i.o, ptr nonnull %i.p, ptr %i.n, i64 noundef %i.aa)
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !65
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit32

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit32: ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit, %bb.d
  %i.ab = phi ptr [ %i.o, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit ], [ %.pre40, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %2
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !52
  %i.ae = add nsw i32 %i.ad, %i.r
  %i.af = sdiv i32 %i.ae, 2
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %5 = add nsw i64 %i.g, -1
  %6 = lshr exact i64 %5, 1                       ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %6 ; 2 uses
  %i.ag = icmp eq ptr %7, %i.b
  %or.cond.i33 = select i1 %1, i1 true, i1 %i.ag
  br i1 %or.cond.i33, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit34, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = xor i64 %i.ai, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %i.c, ptr %7, ptr %i.b, i64 noundef %i.aj)
  %.pre = load ptr, ptr %0, align 8, !tbaa !65
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit34

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit34: ; preds = %bb.e, %bb.f
  %i.ak = phi ptr [ %i.c, %bb.e ], [ %.pre, %bb.f ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %6
  %i.am = load i32, ptr %i.al, align 4, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit34, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit32
  %.0 = phi i32 [ %i.af, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit32 ], [ %i.am, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_S7_.exit34 ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 3
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph58

.lr.ph:                                           ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.g = icmp eq i64 %i.l, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph58, !llvm.loop !172

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.012.023.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %.sroa.012.0..sroa.010.1.i.i, %.lr.ph ]
  %.sroa.015.022.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.010.1.i.i..sroa.015.0, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(ptr %.sroa.015.022.lcssa, ptr nonnull %i.h, ptr %.sroa.012.023.lcssa)
  %i.i = load i32, ptr %.sroa.015.022.lcssa, align 4, !tbaa !52
  %i.j = load i32, ptr %1, align 4, !tbaa !52
  store i32 %i.j, ptr %.sroa.015.022.lcssa, align 4, !tbaa !52
  store i32 %i.i, ptr %1, align 4, !tbaa !52
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit

.lr.ph58:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.015.02257 = phi ptr [ %.sroa.010.1.i.i..sroa.015.0, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %.sroa.012.02356 = phi ptr [ %.sroa.012.0..sroa.010.1.i.i, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.02455 = phi i64 [ %i.l, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %i.k = phi i64 [ %i.am, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.l = add nsw i64 %.02455, -1                  ; 2 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.015.02257, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.015.02257, i64 4 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.012.02356, i64 -4 ; 3 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !52   ; 5 uses
  %i.r = load i32, ptr %i.n, align 4, !tbaa !52   ; 5 uses
  %i.s = icmp slt i32 %i.q, %i.r
  %i.t = load i32, ptr %i.p, align 4, !tbaa !52   ; 6 uses
  br i1 %i.s, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph58
  %i.u = icmp slt i32 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %.sroa.015.02257, align 4, !tbaa !52
  store i32 %i.r, ptr %.sroa.015.02257, align 4, !tbaa !52
  store i32 %i.v, ptr %i.n, align 4, !tbaa !52
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.w = icmp slt i32 %i.q, %i.t
  %i.x = load i32, ptr %.sroa.015.02257, align 4, !tbaa !52 ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.t, ptr %.sroa.015.02257, align 4, !tbaa !52
  store i32 %i.x, ptr %i.p, align 4, !tbaa !52
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i32 %i.q, ptr %.sroa.015.02257, align 4, !tbaa !52
  store i32 %i.x, ptr %i.o, align 4, !tbaa !52
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph58
  %i.y = icmp slt i32 %i.q, %i.t
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %.sroa.015.02257, align 4, !tbaa !52
  store i32 %i.q, ptr %.sroa.015.02257, align 4, !tbaa !52
  store i32 %i.z, ptr %i.o, align 4, !tbaa !52
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %i.r, %i.t
  %i.ab = load i32, ptr %.sroa.015.02257, align 4, !tbaa !52 ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.t, ptr %.sroa.015.02257, align 4, !tbaa !52
  store i32 %i.ab, ptr %i.p, align 4, !tbaa !52
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i32 %i.r, ptr %.sroa.015.02257, align 4, !tbaa !52
  store i32 %i.ab, ptr %i.n, align 4, !tbaa !52
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.n
  %.sroa.010.0.i.i = phi ptr [ %i.af, %bb.n ], [ %i.o, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.n ], [ %.sroa.012.02356, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.ac = load i32, ptr %.sroa.015.02257, align 4, !tbaa !52 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.af, %bb.l ] ; 7 uses
  %i.ad = load i32, ptr %.sroa.010.1.i.i, align 4, !tbaa !52 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 4 ; 2 uses
  br i1 %i.ae, label %bb.l, label %.preheader.i.i, !llvm.loop !173

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.l ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
  %i.ag = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !52 ; 2 uses
  %i.ah = icmp slt i32 %i.ac, %i.ag
  br i1 %i.ah, label %.preheader.i.i, label %bb.m, !llvm.loop !174

bb.m:                                             ; preds = %.preheader.i.i
  %i.ai = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ai, label %bb.n, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.n:                                             ; preds = %bb.m
  store i32 %i.ag, ptr %.sroa.010.1.i.i, align 4, !tbaa !52
  store i32 %i.ad, ptr %.sroa.0.1.i.i, align 4, !tbaa !52
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !175

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.sroa.010.1.i.i, %1       ; 2 uses
  %.sroa.010.1.i.i..sroa.015.0 = select i1 %.not, ptr %.sroa.015.02257, ptr %.sroa.010.1.i.i ; 4 uses
  %.sroa.012.0..sroa.010.1.i.i = select i1 %.not, ptr %.sroa.010.1.i.i, ptr %.sroa.012.02356 ; 4 uses
  %i.aj = ptrtoint ptr %.sroa.012.0..sroa.010.1.i.i to i64
  %i.ak = ptrtoint ptr %.sroa.010.1.i.i..sroa.015.0 to i64 ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 3
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !172

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %bb.a
  %.sroa.015.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.010.1.i.i..sroa.015.0, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit ] ; 7 uses
  %.sroa.012.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.012.0..sroa.010.1.i.i, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit ] ; 3 uses
  %.lcssa18 = phi i64 [ %i.b, %bb.a ], [ %i.ak, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit ]
  %i.ao = icmp eq ptr %.sroa.015.0.lcssa, %.sroa.012.0.lcssa
  br i1 %i.ao, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %.sroa.015.0.lcssa, i64 4 ; 2 uses
  %.not16.i = icmp eq ptr %.sroa.0.015.i, %.sroa.012.0.lcssa
  br i1 %.not16.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre20.i = load i32, ptr %.sroa.015.0.lcssa, align 4, !tbaa !52
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %i.ap = phi i32 [ %.pre20.i, %.lr.ph.i ], [ %i.bg, %bb.u ] ; 2 uses
  %.sroa.0.018.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.u ] ; 6 uses
  %.pn17.i = phi ptr [ %.sroa.015.0.lcssa, %.lr.ph.i ], [ %.sroa.0.018.i, %bb.u ] ; 4 uses
  %i.aq = load i32, ptr %.sroa.0.018.i, align 4, !tbaa !52 ; 6 uses
  %i.ar = icmp slt i32 %i.aq, %i.ap
  br i1 %i.ar, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.as = ptrtoint ptr %.sroa.0.018.i to i64
  %i.at = sub i64 %i.as, %.lcssa18                ; 3 uses
  %i.au = ashr exact i64 %i.at, 2                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %bb.q, label %bb.r, !prof !69

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 8
  %i.ax = sub nsw i64 0, %i.au
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ay, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.015.0.lcssa, i64 %i.at, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.az = icmp eq i64 %i.at, 4
  br i1 %i.az, label %bb.s, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 4
  store i32 %i.ap, ptr %i.ba, align 4, !tbaa !52
end_hunk_0
