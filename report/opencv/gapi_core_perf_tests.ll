Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gapi_core_perf_tests?download=true
inline.NumInlined: 25455
inline.NumDeleted: 7941
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN11opencv_test37ParseSSDPerfTest_TestPerformance_Test12PerfTestBodyEv:bb.a

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit120:  ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit118, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #32
  br label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit120, %bb.am
  %.pn44.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit120 ], [ %i.di, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.al, %bb.ak
  %.pn44.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn.pn.pn.pn.pn, %bb.ek ], [ %i.dh, %bb.al ], [ %i.dg, %bb.ak ]
  call void @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %.pn44.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv5Size_IiEEfbbSt6vectorINS2_11GCompileArgESaIS6_EEEEE8GetParamEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = load ptr, ptr @_ZN7testing8internal12g_parameter_E, align 8, !tbaa !1594
  %i.b = icmp ne ptr %i.a, null
  %i.c = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.b)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.160, i32 noundef 21704)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.315, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.316, i64 noundef 64)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.317, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2
  %i.h = load ptr, ptr @_ZN7testing8internal12g_parameter_E, align 8, !tbaa !1594
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11opencv_test13ParserSSDTest11parseSSDrefERKN2cv3MatERKNS1_5Size_IiEEfbbRSt6vectorINS1_5Rect_IiEESaISB_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, float noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = load ptr, ptr %6, align 8, !tbaa !1523   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1521 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !1521
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.d = phi ptr [ %i.c, %bb.a ], [ %i.a, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !221
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %_ZNK2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN11opencv_test13ParserSSDTest11parseSSDrefERKN2cv3MatERKNS1_5Size_IiEEfbbRSt6vectorINS1_5Rect_IiEESaISB_EE, ptr noundef nonnull @.str.298, i32 noundef 51) #36
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %7, align 8, !tbaa !15     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !17
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.ac

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.p = load i32, ptr %i.o, align 4, !tbaa !89   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load i32, ptr %i.q, align 8, !tbaa !89
  %i.s = icmp eq i32 %i.r, 7
  br i1 %i.s, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.300, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN11opencv_test13ParserSSDTest11parseSSDrefERKN2cv3MatERKNS1_5Size_IiEEfbbRSt6vectorINS1_5Rect_IiEESaISB_EE, ptr noundef nonnull @.str.298, i32 noundef 55) #36
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.k:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %9, align 8, !tbaa !15     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.k
  %i.y = load i64, ptr %i.w, align 8, !tbaa !17
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.j
  %.pn27 = phi { ptr, i32 } [ %i.t, %bb.j ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.u, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.ac

bb.l:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !341
  %i.ac = load i32, ptr %2, align 4, !tbaa !63    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !65 ; 3 uses
  %i.af = icmp sgt i32 %i.p, 0
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.ag = icmp slt i32 %i.ac, 1
  %i.ah = icmp slt i32 %i.ae, 1
  %i.ai = select i1 %i.ag, i1 true, i1 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit
  %i.ak = phi ptr [ %i.d, %.lr.ph ], [ %i.dx, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 28
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx ; 4 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !185, !noalias !1596
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.ap = load <2 x float>, ptr %i.an, align 4, !tbaa !185, !noalias !1596
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !185, !noalias !1596
  %i.ar = load <2 x i32>, ptr %2, align 4, !tbaa !89, !noalias !1596
  %i.as = sitofp <2 x i32> %i.ar to <2 x float>   ; 2 uses
  %i.at = fmul <2 x float> %i.ap, %i.as
  %i.au = fptosi <2 x float> %i.at to <2 x i32>   ; 3 uses
  %i.av = fmul <2 x float> %i.aq, %i.as
  %i.aw = fptosi <2 x float> %i.av to <2 x i32>
  %i.ax = sub nsw <2 x i32> %i.aw, %i.au          ; 2 uses
  %i.ay = fcmp olt float %i.am, 0.000000e+00
  br i1 %i.ay, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !185, !noalias !1596
  %i.bb = fcmp olt float %i.ba, %3
  br i1 %i.bb, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = extractelement <2 x i32> %i.au, i64 0   ; 2 uses
  %i.bd = extractelement <2 x i32> %i.au, i64 1   ; 2 uses
  br i1 %4, label %bb.p, label %_ZN11opencv_test13ParserSSDTest17adjustBoundingBoxERN2cv5Rect_IiEE.exit

bb.p:                                             ; preds = %bb.o
  %11 = shufflevector <2 x i32> %i.ax, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.be = sitofp <2 x i32> %11 to <2 x double>    ; 3 uses
  %i.bf = extractelement <2 x double> %i.be, i64 1
  %i.bg = fmul nnan double %i.bf, 6.700000e-02
  %i.bh = fptosi double %i.bg to i32
  %i.bi = sub nsw i32 %i.bc, %i.bh                ; 2 uses
  %i.bj = extractelement <2 x double> %i.be, i64 0
  %i.bk = fmul nnan double %i.bj, 2.800000e-02
  %i.bl = fptosi double %i.bk to i32
  %i.bm = sub nsw i32 %i.bd, %i.bl                ; 2 uses
  %i.bn = fmul nnan <2 x double> %i.be, <double 1.300000e-01, double 1.500000e-01>
  %i.bo = fptosi <2 x double> %i.bn to <2 x i32>
  %i.bp = add nsw <2 x i32> %11, %i.bo            ; 4 uses
  %i.bq = extractelement <2 x i32> %i.bp, i64 0   ; 3 uses
  %i.br = extractelement <2 x i32> %i.bp, i64 1   ; 3 uses
  %i.bs = icmp slt i32 %i.br, %i.bq
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bt = sub nsw i32 %i.bq, %i.br
  %i.bu = lshr i32 %i.bt, 1
  %i.bv = sub nsw i32 %i.bi, %i.bu
  %12 = shufflevector <2 x i32> %i.bp, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %_ZN11opencv_test13ParserSSDTest17adjustBoundingBoxERN2cv5Rect_IiEE.exit

bb.r:                                             ; preds = %bb.p
  %i.bw = sub nsw i32 %i.br, %i.bq
  %i.bx = lshr i32 %i.bw, 1
  %i.by = sub nsw i32 %i.bm, %i.bx
  %13 = shufflevector <2 x i32> %i.bp, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  br label %_ZN11opencv_test13ParserSSDTest17adjustBoundingBoxERN2cv5Rect_IiEE.exit

_ZN11opencv_test13ParserSSDTest17adjustBoundingBoxERN2cv5Rect_IiEE.exit: ; preds = %bb.r, %bb.q, %bb.o
  %.sroa.0.0 = phi i32 [ %i.bc, %bb.o ], [ %i.bv, %bb.q ], [ %i.bi, %bb.r ] ; 3 uses
  %.sroa.8.0 = phi i32 [ %i.bd, %bb.o ], [ %i.bm, %bb.q ], [ %i.by, %bb.r ] ; 3 uses
  %i.bz = phi <2 x i32> [ %i.ax, %bb.o ], [ %12, %bb.q ], [ %13, %bb.r ] ; 5 uses
  %i.ca = icmp slt <2 x i32> %i.bz, splat (i32 1) ; 2 uses
  %i.cb = extractelement <2 x i1> %i.ca, i64 0
  %i.cc = extractelement <2 x i1> %i.ca, i64 1
  %i.cd = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %i.cd, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN11opencv_test13ParserSSDTest17adjustBoundingBoxERN2cv5Rect_IiEE.exit
  br i1 %i.ai, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = icmp slt i32 %.sroa.0.0, 0              ; 3 uses
  %i.cf = tail call i32 @llvm.smin.i32(i32 %.sroa.0.0, i32 0) ; 2 uses
  %i.cg = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0, i32 0) ; 3 uses
  %i.ch = extractelement <2 x i32> %i.bz, i64 0   ; 3 uses
  %i.ci = add nsw i32 %i.ch, %i.cf
  %i.cj = icmp slt i32 %i.ci, %i.cg
  %or.cond = select i1 %i.ce, i1 %i.cj, i1 false
  br i1 %or.cond, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = icmp slt i32 %.sroa.8.0, 0
  %i.cl = extractelement <2 x i32> %i.bz, i64 1   ; 2 uses
  br i1 %i.ck, label %.cont52.i, label %.cont35.i

.cont52.i:                                        ; preds = %bb.u
  %i.cm = add nsw i32 %i.cl, %.sroa.8.0           ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit, label %.cont35.i

.cont35.i:                                        ; preds = %bb.u, %.cont52.i
  %i.co = phi i32 [ %i.ae, %.cont52.i ], [ %i.cl, %bb.u ]
  %.neg49.pre-phi.i.i = phi i32 [ %i.cm, %.cont52.i ], [ %i.ae, %bb.u ]
  %i.cp = phi i32 [ 0, %.cont52.i ], [ %.sroa.8.0, %bb.u ] ; 2 uses
  %.v.v.i = select i1 %i.ce, i32 %i.ch, i32 %i.ac
  %.v.i = sub i32 %i.cf, %i.cg
  %i.cq = add i32 %.v.i, %.v.v.i
  %i.cr = select i1 %i.ce, i32 %i.ac, i32 %i.ch
  %.sroa.speculated53.i.i = tail call i32 @llvm.smin.i32(i32 %i.cr, i32 %i.cq) ; 2 uses
  %i.cs = sub nsw i32 %.neg49.pre-phi.i.i, %i.cp
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.co, i32 %i.cs) ; 2 uses
  %i.ct = icmp slt i32 %.sroa.speculated53.i.i, 1
  %i.cu = icmp slt i32 %.sroa.speculated.i.i, 1
  %i.cv = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %i.cv, label %bb.v, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit

bb.v:                                             ; preds = %.cont35.i
  br label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit

_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit:          ; preds = %bb.t, %_ZN11opencv_test13ParserSSDTest17adjustBoundingBoxERN2cv5Rect_IiEE.exit, %bb.s, %.cont52.i, %.cont35.i, %bb.v
  %.sroa.0.sroa.0.0.i = phi i32 [ %i.cg, %.cont35.i ], [ 0, %_ZN11opencv_test13ParserSSDTest17adjustBoundingBoxERN2cv5Rect_IiEE.exit ], [ 0, %bb.v ], [ 0, %bb.s ], [ 0, %.cont52.i ], [ 0, %bb.t ]
  %.sroa.0.sroa.9.0.i = phi i32 [ %i.cp, %.cont35.i ], [ 0, %_ZN11opencv_test13ParserSSDTest17adjustBoundingBoxERN2cv5Rect_IiEE.exit ], [ 0, %bb.v ], [ 0, %bb.s ], [ 0, %.cont52.i ], [ 0, %bb.t ]
  %.sroa.14.sroa.0.0.i = phi i32 [ %.sroa.speculated53.i.i, %.cont35.i ], [ 0, %_ZN11opencv_test13ParserSSDTest17adjustBoundingBoxERN2cv5Rect_IiEE.exit ], [ 0, %bb.v ], [ 0, %bb.s ], [ 0, %.cont52.i ], [ 0, %bb.t ] ; 2 uses
  %.sroa.14.sroa.12.0.i = phi i32 [ %.sroa.speculated.i.i, %.cont35.i ], [ 0, %_ZN11opencv_test13ParserSSDTest17adjustBoundingBoxERN2cv5Rect_IiEE.exit ], [ 0, %bb.v ], [ 0, %bb.s ], [ 0, %.cont52.i ], [ 0, %bb.t ] ; 2 uses
  %.sroa.0.sroa.9.0.insert.ext.i = zext nneg i32 %.sroa.0.sroa.9.0.i to i64
  %.sroa.0.sroa.9.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.9.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext nneg i32 %.sroa.0.sroa.0.0.i to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.9.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i ; 2 uses
  %.sroa.14.sroa.12.0.insert.ext.i = zext nneg i32 %.sroa.14.sroa.12.0.i to i64
  %.sroa.14.sroa.12.0.insert.shift.i = shl nuw nsw i64 %.sroa.14.sroa.12.0.insert.ext.i, 32
  %.sroa.14.sroa.0.0.insert.ext.i = zext nneg i32 %.sroa.14.sroa.0.0.i to i64
  %.sroa.14.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.14.sroa.12.0.insert.shift.i, %.sroa.14.sroa.0.0.insert.ext.i ; 2 uses
  br i1 %5, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit
  %i.cw = mul nsw i32 %.sroa.14.sroa.12.0.i, %.sroa.14.sroa.0.0.i
  %i.cx = extractelement <2 x i32> %i.bz, i64 0
  %i.cy = extractelement <2 x i32> %i.bz, i64 1
  %i.cz = mul nsw i32 %i.cy, %i.cx
  %.not = icmp eq i32 %i.cw, %i.cz
  br i1 %.not, label %bb.x, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit

bb.x:                                             ; preds = %bb.w, %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit
  %i.da = load ptr, ptr %i.aj, align 8, !tbaa !1532
  %.not.i = icmp eq ptr %i.ak, %i.da
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.ak, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %.sroa.14.sroa.0.0.insert.insert.i, ptr %.sroa.5.0..sroa_idx, align 4
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !1521
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  store ptr %i.dc, ptr %i.b, align 8, !tbaa !1521
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit

bb.z:                                             ; preds = %bb.x
  %i.dd = load ptr, ptr %6, align 8, !tbaa !1523  ; 5 uses
  %i.de = ptrtoint ptr %i.ak to i64
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775792
  br i1 %i.dh, label %bb.aa, label %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.180) #36
  unreachable

_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.di = ashr exact i64 %i.dg, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = tail call i64 @llvm.umin.i64(i64 %i.dj, i64 576460752303423487)
  %i.dm = select i1 %i.dk, i64 576460752303423487, i64 %i.dl ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.dn = shl nuw nsw i64 %i.dm, 4
  %i.do = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #33 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.dp, align 4
  %.sroa.5.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i64 %.sroa.14.sroa.0.0.insert.insert.i, ptr %.sroa.5.0..sroa_idx41, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.dd, %i.ak
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i ], [ %i.do, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i ], [ %i.dd, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1542, !alias.scope !1599
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dq, %i.ak
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1547

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.do, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dr, %.lr.ph.i.i.i.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.dt = load ptr, ptr %i.aj, align 8, !tbaa !1532
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.df
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dv) #34
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.do, ptr %6, align 8, !tbaa !1523
  store ptr %i.ds, ptr %i.b, align 8, !tbaa !1521
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.dw, ptr %i.aj, align 8, !tbaa !1532
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit: ; preds = %bb.w, %bb.y, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.n
  %i.dx = phi ptr [ %i.ak, %bb.w ], [ %i.dc, %bb.y ], [ %i.ds, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ak, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !1603

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit, %bb.m, %bb.l
  ret void

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn27.pn
}

declare void @_ZN2cv4gapi8parseSSDERKNS_4GMatERKNS_7GOpaqueINS_5Size_IiEEEEfbb(ptr dead_on_unwind writable sret(%"class.cv::GArray.376") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), float noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4GOutIJRNS_6GArrayINS_5Rect_IiEEEEEEENS_12GIOProtoArgsINS_7Out_TagEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"struct.cv::GIOProtoArgs.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.32", align 16   ; 7 uses
  %3 = alloca %"class.cv::GArray.376", align 16   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !88
  store <2 x ptr> %i.d, ptr %3, align 16, !tbaa !88
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN2cv7GOriginEEC2ERKS2_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !89
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !89
  br label %_ZNSt10shared_ptrIN2cv7GOriginEEC2ERKS2_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN2cv7GOriginEEC2ERKS2_.exit.i.i

_ZNSt10shared_ptrIN2cv7GOriginEEC2ERKS2_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !85   ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.k, align 8, !tbaa !88
  store <2 x ptr> %i.o, ptr %i.j, align 16, !tbaa !88
  %.not.i.i.i3.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i3.i.i, label %_ZN2cv6GArrayINS_5Rect_IiEEEC2ERKS3_.exit, label %bb.e
end_hunk_0
