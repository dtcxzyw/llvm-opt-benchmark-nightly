Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_demosaic?download=true
inline.NumInlined: 17707
inline.NumDeleted: 3921
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 218
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo6mosaicINS1_16BayerDemosaicingIffLi3EEEffEEvRNS0_8ImageBufERKS5_iiRA4_Kfi:bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @_ZN11OpenImageIO4v3_19ImageSpecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull align 8 dereferenceable(160) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8roi_fullEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %7, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !79
  store i32 %5, ptr %9, align 8, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i16 0, ptr %i.d, align 4, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 6
  store i16 1, ptr %i.e, align 2, !tbaa !122
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1024, ptr %i.f, align 8, !tbaa !123
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !124
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.h, align 8, !tbaa !125
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.j = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.d unwind label %bb.c       ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %1, ptr %i.j, align 16, !tbaa !127
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !127
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.a, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !268
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !268
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !131
  store ptr %i.j, ptr %10, align 8, !tbaa !115
  store ptr @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo6mosaicINS4_16BayerDemosaicingIffLi3EEEffEEvRNS1_8ImageBufERKS8_iiRA4_KfiEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_, ptr %i.l, align 8, !tbaa !134
  store ptr @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo6mosaicINS4_16BayerDemosaicingIffLi3EEEffEEvRNS1_8ImageBufERKS8_iiRA4_KfiEUlS2_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.i, align 8, !tbaa !135
  invoke void @_ZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EE(ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %9, ptr noundef nonnull %10)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !135  ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !154  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !155  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.r, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i) #29
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.q, align 8, !tbaa !154
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %_ZNSt14_Function_baseD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !157
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.h, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !158 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !159 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.ak, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ac, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !85 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !78
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.ak, %i.ae
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.ab, align 8, !tbaa !158
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.al = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ac, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !160
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !161
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #30
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void

bb.k:                                             ; preds = %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !135 ; 2 uses
  %.not.i11 = icmp eq ptr %i.ba, null
  br i1 %.not.i11, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #33
  unreachable

.body:                                            ; preds = %bb.c, %bb.l, %bb.m, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %i.k, %bb.c ], [ %i.az, %bb.m ], [ %i.az, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi3EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE18layout_from_offsetEiiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 align 2 {
.split23:
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 36, i8 noundef signext 0)
  %i.a = add i32 %0, 5
  %i.b = srem i32 %i.a, 6
  %i.c = sext i32 %i.b to i64                     ; 6 uses
  %i.d = add i32 %0, 4
  %i.e = srem i32 %i.d, 6
  %i.f = sext i32 %i.e to i64                     ; 6 uses
  %3 = add i32 %0, 3
  %4 = srem i32 %3, 6
  %5 = sext i32 %4 to i64                         ; 6 uses
  %6 = add i32 %0, 2
  %7 = srem i32 %6, 6
  %i.g = sext i32 %7 to i64                       ; 6 uses
  %8 = add i32 %0, 1
  %9 = srem i32 %8, 6
  %i.h = sext i32 %9 to i64                       ; 6 uses
  %10 = srem i32 %0, 6
  %i.i = sext i32 %10 to i64                      ; 6 uses
  %i.j = srem i32 %1, 6
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.k ; 6 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !200
  %sext = shl i64 %i.n, 32
  %i.o = ashr exact i64 %sext, 32
  %i.p = getelementptr inbounds i8, ptr @.str.82, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !78
  %i.r = load ptr, ptr %2, align 8, !tbaa !85
  store i8 %i.q, ptr %i.r, align 1, !tbaa !78
  %i.s = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.h
  %i.t = load i64, ptr %i.s, align 8, !tbaa !200
  %sext.1 = shl i64 %i.t, 32
  %i.u = ashr exact i64 %sext.1, 32
  %i.v = getelementptr inbounds i8, ptr @.str.82, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !78
  %i.x = load ptr, ptr %2, align 8, !tbaa !85
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.w, ptr %i.y, align 1, !tbaa !78
  %i.z = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.g
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !200
  %sext.2 = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext.2, 32
  %i.ac = getelementptr inbounds i8, ptr @.str.82, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !78
  %i.ae = load ptr, ptr %2, align 8, !tbaa !85
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !78
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.l, i64 %5
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !200
  %sext.3 = shl i64 %i.ah, 32
  %i.ai = ashr exact i64 %sext.3, 32
  %i.aj = getelementptr inbounds i8, ptr @.str.82, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !78
  %i.al = load ptr, ptr %2, align 8, !tbaa !85
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !78
  %i.an = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.f
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !200
  %sext.4 = shl i64 %i.ao, 32
  %i.ap = ashr exact i64 %sext.4, 32
  %i.aq = getelementptr inbounds i8, ptr @.str.82, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !78
  %i.as = load ptr, ptr %2, align 8, !tbaa !85
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !78
  %i.au = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.c
  %i.av = load i64, ptr %i.au, align 8, !tbaa !200
  %sext.5 = shl i64 %i.av, 32
  %i.aw = ashr exact i64 %sext.5, 32
  %i.ax = getelementptr inbounds i8, ptr @.str.82, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !78
  %i.az = load ptr, ptr %2, align 8, !tbaa !85
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 5
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !78
  %i.bb = add i32 %1, 1
  %i.bc = srem i32 %i.bb, 6
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.bd ; 6 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !200
  %sext.11 = shl i64 %i.bg, 32
  %i.bh = ashr exact i64 %sext.11, 32
  %i.bi = getelementptr inbounds i8, ptr @.str.82, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !78
  %i.bk = load ptr, ptr %2, align 8, !tbaa !85
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 6
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !78
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.h
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !200
  %sext.1.1 = shl i64 %i.bn, 32
  %i.bo = ashr exact i64 %sext.1.1, 32
  %i.bp = getelementptr inbounds i8, ptr @.str.82, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !78
  %i.br = load ptr, ptr %2, align 8, !tbaa !85
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 7
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !78
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.g
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !200
  %sext.2.1 = shl i64 %i.bu, 32
  %i.bv = ashr exact i64 %sext.2.1, 32
  %i.bw = getelementptr inbounds i8, ptr @.str.82, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !78
  %i.by = load ptr, ptr %2, align 8, !tbaa !85
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i8 %i.bx, ptr %i.bz, align 1, !tbaa !78
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.be, i64 %5
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !200
  %sext.3.1 = shl i64 %i.cb, 32
  %i.cc = ashr exact i64 %sext.3.1, 32
  %i.cd = getelementptr inbounds i8, ptr @.str.82, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !78
  %i.cf = load ptr, ptr %2, align 8, !tbaa !85
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 9
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !78
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.f
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !200
  %sext.4.1 = shl i64 %i.ci, 32
  %i.cj = ashr exact i64 %sext.4.1, 32
  %i.ck = getelementptr inbounds i8, ptr @.str.82, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !78
  %i.cm = load ptr, ptr %2, align 8, !tbaa !85
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 10
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !78
  %i.co = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.c
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !200
  %sext.5.1 = shl i64 %i.cp, 32
  %i.cq = ashr exact i64 %sext.5.1, 32
  %i.cr = getelementptr inbounds i8, ptr @.str.82, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !78
  %i.ct = load ptr, ptr %2, align 8, !tbaa !85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 11
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !78
  %i.cv = add i32 %1, 2
  %i.cw = srem i32 %i.cv, 6
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cx ; 6 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !200
  %sext.22 = shl i64 %i.da, 32
  %i.db = ashr exact i64 %sext.22, 32
  %i.dc = getelementptr inbounds i8, ptr @.str.82, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !78
  %i.de = load ptr, ptr %2, align 8, !tbaa !85
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i8 %i.dd, ptr %i.df, align 1, !tbaa !78
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.h
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !200
  %sext.1.2 = shl i64 %i.dh, 32
  %i.di = ashr exact i64 %sext.1.2, 32
  %i.dj = getelementptr inbounds i8, ptr @.str.82, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !78
  %i.dl = load ptr, ptr %2, align 8, !tbaa !85
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 13
  store i8 %i.dk, ptr %i.dm, align 1, !tbaa !78
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.g
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !200
  %sext.2.2 = shl i64 %i.do, 32
  %i.dp = ashr exact i64 %sext.2.2, 32
  %i.dq = getelementptr inbounds i8, ptr @.str.82, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !78
  %i.ds = load ptr, ptr %2, align 8, !tbaa !85
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 14
  store i8 %i.dr, ptr %i.dt, align 1, !tbaa !78
  %i.du = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %5
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !200
  %sext.3.2 = shl i64 %i.dv, 32
  %i.dw = ashr exact i64 %sext.3.2, 32
  %i.dx = getelementptr inbounds i8, ptr @.str.82, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !78
  %i.dz = load ptr, ptr %2, align 8, !tbaa !85
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 15
  store i8 %i.dy, ptr %i.ea, align 1, !tbaa !78
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.f
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !200
  %sext.4.2 = shl i64 %i.ec, 32
  %i.ed = ashr exact i64 %sext.4.2, 32
  %i.ee = getelementptr inbounds i8, ptr @.str.82, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !78
  %i.eg = load ptr, ptr %2, align 8, !tbaa !85
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i8 %i.ef, ptr %i.eh, align 1, !tbaa !78
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.c
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !200
  %sext.5.2 = shl i64 %i.ej, 32
  %i.ek = ashr exact i64 %sext.5.2, 32
  %i.el = getelementptr inbounds i8, ptr @.str.82, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !78
  %i.en = load ptr, ptr %2, align 8, !tbaa !85
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 17
  store i8 %i.em, ptr %i.eo, align 1, !tbaa !78
  %i.ep = add i32 %1, 3
  %i.eq = srem i32 %i.ep, 6
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.er ; 6 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.i
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !200
  %sext.33 = shl i64 %i.eu, 32
  %i.ev = ashr exact i64 %sext.33, 32
  %i.ew = getelementptr inbounds i8, ptr @.str.82, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !78
  %i.ey = load ptr, ptr %2, align 8, !tbaa !85
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 18
  store i8 %i.ex, ptr %i.ez, align 1, !tbaa !78
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.h
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !200
  %sext.1.3 = shl i64 %i.fb, 32
  %i.fc = ashr exact i64 %sext.1.3, 32
  %i.fd = getelementptr inbounds i8, ptr @.str.82, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !78
  %i.ff = load ptr, ptr %2, align 8, !tbaa !85
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 19
  store i8 %i.fe, ptr %i.fg, align 1, !tbaa !78
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.g
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !200
  %sext.2.3 = shl i64 %i.fi, 32
  %i.fj = ashr exact i64 %sext.2.3, 32
  %i.fk = getelementptr inbounds i8, ptr @.str.82, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !78
  %i.fm = load ptr, ptr %2, align 8, !tbaa !85
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  store i8 %i.fl, ptr %i.fn, align 1, !tbaa !78
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.es, i64 %5
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !200
  %sext.3.3 = shl i64 %i.fp, 32
  %i.fq = ashr exact i64 %sext.3.3, 32
  %i.fr = getelementptr inbounds i8, ptr @.str.82, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !78
  %i.ft = load ptr, ptr %2, align 8, !tbaa !85
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 21
  store i8 %i.fs, ptr %i.fu, align 1, !tbaa !78
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.f
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !200
  %sext.4.3 = shl i64 %i.fw, 32
  %i.fx = ashr exact i64 %sext.4.3, 32
  %i.fy = getelementptr inbounds i8, ptr @.str.82, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !78
  %i.ga = load ptr, ptr %2, align 8, !tbaa !85
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 22
  store i8 %i.fz, ptr %i.gb, align 1, !tbaa !78
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.c
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !200
  %sext.5.3 = shl i64 %i.gd, 32
  %i.ge = ashr exact i64 %sext.5.3, 32
  %i.gf = getelementptr inbounds i8, ptr @.str.82, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !78
  %i.gh = load ptr, ptr %2, align 8, !tbaa !85
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 23
  store i8 %i.gg, ptr %i.gi, align 1, !tbaa !78
  %i.gj = add i32 %1, 4
  %i.gk = srem i32 %i.gj, 6
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.gl ; 6 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.i
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !200
  %sext.44 = shl i64 %i.go, 32
  %i.gp = ashr exact i64 %sext.44, 32
  %i.gq = getelementptr inbounds i8, ptr @.str.82, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !78
  %i.gs = load ptr, ptr %2, align 8, !tbaa !85
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  store i8 %i.gr, ptr %i.gt, align 1, !tbaa !78
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.h
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !200
  %sext.1.4 = shl i64 %i.gv, 32
  %i.gw = ashr exact i64 %sext.1.4, 32
  %i.gx = getelementptr inbounds i8, ptr @.str.82, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !78
  %i.gz = load ptr, ptr %2, align 8, !tbaa !85
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 25
  store i8 %i.gy, ptr %i.ha, align 1, !tbaa !78
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.g
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !200
  %sext.2.4 = shl i64 %i.hc, 32
  %i.hd = ashr exact i64 %sext.2.4, 32
  %i.he = getelementptr inbounds i8, ptr @.str.82, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !78
  %i.hg = load ptr, ptr %2, align 8, !tbaa !85
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 26
  store i8 %i.hf, ptr %i.hh, align 1, !tbaa !78
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %5
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !200
  %sext.3.4 = shl i64 %i.hj, 32
  %i.hk = ashr exact i64 %sext.3.4, 32
  %i.hl = getelementptr inbounds i8, ptr @.str.82, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !78
  %i.hn = load ptr, ptr %2, align 8, !tbaa !85
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 27
  store i8 %i.hm, ptr %i.ho, align 1, !tbaa !78
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.f
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !200
  %sext.4.4 = shl i64 %i.hq, 32
  %i.hr = ashr exact i64 %sext.4.4, 32
  %i.hs = getelementptr inbounds i8, ptr @.str.82, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !78
  %i.hu = load ptr, ptr %2, align 8, !tbaa !85
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 28
  store i8 %i.ht, ptr %i.hv, align 1, !tbaa !78
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.c
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !200
  %sext.5.4 = shl i64 %i.hx, 32
  %i.hy = ashr exact i64 %sext.5.4, 32
  %i.hz = getelementptr inbounds i8, ptr @.str.82, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !78
  %i.ib = load ptr, ptr %2, align 8, !tbaa !85
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 29
  store i8 %i.ia, ptr %i.ic, align 1, !tbaa !78
  %i.id = add i32 %1, 5
  %i.ie = srem i32 %i.id, 6
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.if ; 6 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.i
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !200
  %sext.55 = shl i64 %i.ii, 32
  %i.ij = ashr exact i64 %sext.55, 32
  %i.ik = getelementptr inbounds i8, ptr @.str.82, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !78
  %i.im = load ptr, ptr %2, align 8, !tbaa !85
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 30
  store i8 %i.il, ptr %i.in, align 1, !tbaa !78
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.h
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !200
  %sext.1.5 = shl i64 %i.ip, 32
  %i.iq = ashr exact i64 %sext.1.5, 32
  %i.ir = getelementptr inbounds i8, ptr @.str.82, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !78
  %i.it = load ptr, ptr %2, align 8, !tbaa !85
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 31
  store i8 %i.is, ptr %i.iu, align 1, !tbaa !78
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.g
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !200
  %sext.2.5 = shl i64 %i.iw, 32
  %i.ix = ashr exact i64 %sext.2.5, 32
  %i.iy = getelementptr inbounds i8, ptr @.str.82, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !78
  %i.ja = load ptr, ptr %2, align 8, !tbaa !85
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  store i8 %i.iz, ptr %i.jb, align 1, !tbaa !78
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %5
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !200
  %sext.3.5 = shl i64 %i.jd, 32
  %i.je = ashr exact i64 %sext.3.5, 32
  %i.jf = getelementptr inbounds i8, ptr @.str.82, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !78
  %i.jh = load ptr, ptr %2, align 8, !tbaa !85
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 33
  store i8 %i.jg, ptr %i.ji, align 1, !tbaa !78
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.f
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !200
  %sext.4.5 = shl i64 %i.jk, 32
  %i.jl = ashr exact i64 %sext.4.5, 32
  %i.jm = getelementptr inbounds i8, ptr @.str.82, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !78
  %i.jo = load ptr, ptr %2, align 8, !tbaa !85
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 34
  store i8 %i.jn, ptr %i.jp, align 1, !tbaa !78
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.c
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !200
  %sext.5.5 = shl i64 %i.jr, 32
  %i.js = ashr exact i64 %sext.5.5, 32
  %i.jt = getelementptr inbounds i8, ptr @.str.82, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !78
  %i.jv = load ptr, ptr %2, align 8, !tbaa !85
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 35
  store i8 %i.ju, ptr %i.jw, align 1, !tbaa !78
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112ImageBufAlgo6mosaicINS1_17XTransDemosaicingIffLi3EEEffEEvRNS0_8ImageBufERKS5_iiRA4_Kfi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %6 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 13 uses
  %7 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  %8 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 2 uses
  %9 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 7 uses
  %10 = alloca %"class.std::function", align 8    ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !67
  store i32 %3, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.c = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @_ZN11OpenImageIO4v3_19ImageSpecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull align 8 dereferenceable(160) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8roi_fullEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %7, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !79
  store i32 %5, ptr %9, align 8, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i16 0, ptr %i.d, align 4, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 6
  store i16 1, ptr %i.e, align 2, !tbaa !122
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1024, ptr %i.f, align 8, !tbaa !123
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !124
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.h, align 8, !tbaa !125
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.j = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.d unwind label %bb.c       ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %1, ptr %i.j, align 16, !tbaa !127
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !127
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.a, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !268
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !268
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !131
  store ptr %i.j, ptr %10, align 8, !tbaa !115
  store ptr @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo6mosaicINS4_17XTransDemosaicingIffLi3EEEffEEvRNS1_8ImageBufERKS8_iiRA4_KfiEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_, ptr %i.l, align 8, !tbaa !134
  store ptr @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo6mosaicINS4_17XTransDemosaicingIffLi3EEEffEEvRNS1_8ImageBufERKS8_iiRA4_KfiEUlS2_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.i, align 8, !tbaa !135
  invoke void @_ZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EE(ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %9, ptr noundef nonnull %10)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !135  ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !154  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !155  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.r, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i) #29
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.q, align 8, !tbaa !154
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %_ZNSt14_Function_baseD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !157
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.h, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !158 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !159 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.ak, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ac, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !85 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !78
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.ak, %i.ae
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.ab, align 8, !tbaa !158
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.al = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ac, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !160
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !161
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #30
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void
end_hunk_0
