Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gapi_core_perf_tests?download=true
inline.NumInlined: 25455
inline.NumDeleted: 7941
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 104
begin_hunk_0_@_ZN11opencv_test39ParseSSDBLPerfTest_TestPerformance_Test12PerfTestBodyEv:bb.a
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.av
  %.pn53.pn.pn = phi { ptr, i32 } [ %.pn53.pn, %bb.ep ], [ %.pn.pn, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @_ZNSt11_Tuple_implILm0EJN2cv6GArrayINS0_5Rect_IiEEEENS1_IiEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #32
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.aq
  %.pn53.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn, %bb.eq ], [ %i.dj, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN2cv7GOpaqueINS_5Size_IiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #32
  br label %.body

.body:                                            ; preds = %bb.ap, %bb.f, %bb.er
  %.pn53.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn, %bb.er ], [ %i.di, %bb.ap ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @_ZN2cv4GMatD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #32
  br label %bb.es

bb.es:                                            ; preds = %.body, %bb.ao
  %.pn53.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn, %.body ], [ %i.dh, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.an
  %.pn53.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn, %bb.es ], [ %i.dg, %bb.an ]
  %i.ny = load ptr, ptr %7, align 8, !tbaa !632   ; 3 uses
  %.not.i.i.i136 = icmp eq ptr %i.ny, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorIiSaIiEED2Ev.exit137, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.nz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !633
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %i.ny to i64
  %i.od = sub i64 %i.ob, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %i.ny, i64 noundef %i.od) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit137

_ZNSt6vectorIiSaIiEED2Ev.exit137:                 ; preds = %bb.et, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.oe = load ptr, ptr %6, align 8, !tbaa !632   ; 3 uses
  %.not.i.i.i138 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIiSaIiEED2Ev.exit139, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit137
  %i.of = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !633
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = ptrtoint ptr %i.oe to i64
  %i.oj = sub i64 %i.oh, %i.oi
  call void @_ZdlPvm(ptr noundef nonnull %i.oe, i64 noundef %i.oj) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit139

_ZNSt6vectorIiSaIiEED2Ev.exit139:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit137, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.ok = load ptr, ptr %5, align 8, !tbaa !706   ; 3 uses
  %.not.i.i.i140 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit141, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit139
  %i.ol = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !712
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = ptrtoint ptr %i.ok to i64
  %i.op = sub i64 %i.on, %i.oo
  call void @_ZdlPvm(ptr noundef nonnull %i.ok, i64 noundef %i.op) #34
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit141

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit141:  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit139, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.oq = load ptr, ptr %4, align 8, !tbaa !706   ; 3 uses
  %.not.i.i.i142 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit143, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit141
  %i.or = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !712
  %i.ot = ptrtoint ptr %i.os to i64
  %i.ou = ptrtoint ptr %i.oq to i64
  %i.ov = sub i64 %i.ot, %i.ou
  call void @_ZdlPvm(ptr noundef nonnull %i.oq, i64 noundef %i.ov) #34
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit143

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit143:  ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit141, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #32
  br label %bb.ey

bb.ey:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit143, %bb.am
  %.pn53.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit143 ], [ %i.df, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.al, %bb.ak
  %.pn53.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn.pn.pn, %bb.ey ], [ %i.de, %bb.al ], [ %i.dd, %bb.ak ]
  call void @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %.pn53.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv5Size_IiEEfiSt6vectorINS2_11GCompileArgESaIS6_EEEEE8GetParamEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = load ptr, ptr @_ZN7testing8internal12g_parameter_E, align 8, !tbaa !714
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
  %i.h = load ptr, ptr @_ZN7testing8internal12g_parameter_E, align 8, !tbaa !714
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11opencv_test13ParserSSDTest17generateSSDoutputERKN2cv5Size_IiEE(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.341", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !632
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !633
  store <4 x i32> <i32 1, i32 1, i32 200, i32 7>, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !634
  invoke void @_ZN2cv3MatC1ERKSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !403
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  %i.i = uitofp nneg i32 %i.h to float
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv()
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.k = load i64, ptr %i.j, align 8, !tbaa !410, !noalias !2605 ; 2 uses
  %i.l = and i64 %i.k, 4294967295
  %i.m = mul nuw i64 %i.l, 4164903690
  %i.n = lshr i64 %i.k, 32
  %i.o = add nuw i64 %i.m, %i.n                   ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !410, !noalias !2605
  %i.p = trunc i64 %i.o to i32
  %i.q = urem i32 %i.p, 9
  %i.r = uitofp nneg i32 %i.q to float
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv()
          to label %.noexc21 unwind label %bb.f   ; 2 uses

.noexc21:                                         ; preds = %.noexc
  %i.t = load i64, ptr %i.s, align 8, !tbaa !410, !noalias !2605 ; 2 uses
  %i.u = and i64 %i.t, 4294967295
  %i.v = mul nuw i64 %i.u, 4164903690
  %i.w = lshr i64 %i.t, 32
  %i.x = add nuw i64 %i.v, %i.w                   ; 2 uses
  store i64 %i.x, ptr %i.s, align 8, !tbaa !410, !noalias !2605
  %i.y = invoke { i64, i64 } @_ZN11opencv_test13ParserSSDTest11generateBoxERKN2cv5Size_IiEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %.noexc21
  %4 = extractvalue { i64, i64 } %i.y, 0          ; 3 uses
  %i.z = extractvalue { i64, i64 } %i.y, 1        ; 2 uses
  %.sroa.7.8.extract.trunc.i = trunc i64 %i.z to i32
  %i.aa = load <2 x i32>, ptr %2, align 4, !tbaa !284, !noalias !2605
  %i.ab = sitofp <2 x i32> %i.aa to <2 x float>   ; 2 uses
  %.sroa.7.12.extract.shift.i = lshr i64 %i.z, 32
  %.sroa.7.12.extract.trunc.i = trunc nuw i64 %.sroa.7.12.extract.shift.i to i32
  %.idx = mul nuw nsw i64 %indvars.iv, 28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx ; 4 uses
  store float %i.i, ptr %i.ac, align 4, !tbaa !362
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store float %i.r, ptr %i.ad, align 4, !tbaa !362
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0.0.extract.trunc.i = trunc i64 %4 to i32
  %i.af = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %i.ag = insertelement <2 x i64> %i.af, i64 %4, i64 1
  %i.ah = trunc <2 x i64> %i.ag to <2 x i32>
  %i.ai = add nsw i32 %.sroa.0.0.extract.trunc.i, %.sroa.7.8.extract.trunc.i
  %.sroa.0.4.extract.shift.i = lshr i64 %4, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32 ; 2 uses
  %i.aj = shufflevector <2 x i32> %i.ah, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ak = insertelement <4 x i32> %i.aj, i32 %.sroa.0.4.extract.trunc.i, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ai, i64 3 ; 2 uses
  %i.am = uitofp <4 x i32> %i.al to <4 x float>
  %i.an = sitofp <4 x i32> %i.al to <4 x float>
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.an, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.ap = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aq = shufflevector <4 x float> <float f0x2F800000, float poison, float poison, float poison>, <4 x float> %i.ap, <4 x i32> <i32 0, i32 4, i32 5, i32 4> ; 2 uses
  %i.ar = fmul nnan <4 x float> %i.ao, %i.aq
  %i.as = fdiv <4 x float> %i.ao, %i.aq
  %i.at = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.au = add nsw i32 %.sroa.0.4.extract.trunc.i, %.sroa.7.12.extract.trunc.i
  %i.av = sitofp i32 %i.au to float
  %i.aw = extractelement <2 x float> %i.ab, i64 1
  %i.ax = fdiv float %i.av, %i.aw
  store <4 x float> %i.at, ptr %i.ae, align 4, !tbaa !362
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store float %i.ax, ptr %i.ay, align 4, !tbaa !362
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 200
  br i1 %exitcond.not, label %bb.g, label %bb.d, !llvm.loop !2604

bb.f:                                             ; preds = %.noexc21, %.noexc, %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #32
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %3, align 8, !tbaa !632   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !633
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.be) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.i:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.az, %bb.f ], [ %i.g, %bb.c ]
  %i.bf = load ptr, ptr %3, align 8, !tbaa !632   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i24, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !633
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #34
  br label %.body

.body:                                            ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11opencv_test13ParserSSDTest13parseSSDBLrefERKN2cv3MatERKNS1_5Size_IiEEfiRSt6vectorINS1_5Rect_IiEESaISB_EERS9_IiSaIiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, float noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = load ptr, ptr %5, align 8, !tbaa !706    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !705
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !705
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.d = load ptr, ptr %6, align 8, !tbaa !632    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !634  ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i34, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit
  store ptr %i.d, ptr %i.e, align 8, !tbaa !634
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.g = phi ptr [ %i.f, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit ], [ %i.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !371
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %_ZNK2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN11opencv_test13ParserSSDTest13parseSSDBLrefERKN2cv3MatERKNS1_5Size_IiEEfiRSt6vectorINS1_5Rect_IiEESaISB_EERS9_IiSaIiEE, ptr noundef nonnull @.str.298, i32 noundef 102) #36
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %7, align 8, !tbaa !224    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !225
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.ac

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !284  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.u = load i32, ptr %i.t, align 8, !tbaa !284
  %i.v = icmp eq i32 %i.u, 7
  br i1 %i.v, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.300, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN11opencv_test13ParserSSDTest13parseSSDBLrefERKN2cv3MatERKNS1_5Size_IiEEfiRSt6vectorINS1_5Rect_IiEESaISB_EERS9_IiSaIiEE, ptr noundef nonnull @.str.298, i32 noundef 106) #36
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.k:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %9, align 8, !tbaa !224    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.k
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !225
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.j
  %.pn30 = phi { ptr, i32 } [ %i.w, %bb.j ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.x, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.ac

bb.l:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.ad = load i32, ptr %2, align 4, !tbaa !272   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !273 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !403
  %i.ai = icmp sgt i32 %i.s, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
end_hunk_0
