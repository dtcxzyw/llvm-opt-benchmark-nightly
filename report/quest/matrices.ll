Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/matrices?download=true
inline.NumInlined: 337
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z17setInlineCompMatr8CompMatriSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE:bb.a
  %i.an = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #18
  %.pre25 = load ptr, ptr %2, align 8, !tbaa !18
  %.pre26 = load ptr, ptr %i.b, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.ao = phi ptr [ %i.ag, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre26, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7 ]
  %i.ap = phi ptr [ %i.ah, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre25, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7 ]
  %i.aq = phi ptr [ null, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %i.an, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7 ] ; 5 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ak
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !19
  %i.au = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ap, ptr %i.ao, ptr noundef %i.aq)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit11 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i8, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ak) #19
  br label %common.resume

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit11: ; preds = %bb.j
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !15
  invoke void @_Z24setAndSyncDenseMatrElemsISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEv8CompMatrT_(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit11
  %i.aw = load ptr, ptr %4, align 8, !tbaa !16    ; 3 uses
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !15 ; 2 uses
  %.not4.i.i.i12 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not4.i.i.i12, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %bb.m, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16
  %.05.i.i.i14 = phi ptr [ %i.be, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16 ], [ %i.aw, %bb.m ] ; 3 uses
  %i.ay = load ptr, ptr %.05.i.i.i14, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i15 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i15, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i13
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #19
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16: ; preds = %bb.n, %.lr.ph.i.i.i13
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 24 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.be, %i.ax
  br i1 %.not.i.i.i17, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i18, label %.lr.ph.i.i.i13, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i18: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16
  %.pr.i19 = load ptr, ptr %4, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i18, %bb.m
  %i.bf = phi ptr [ %.pr.i19, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i18 ], [ %i.aw, %bb.m ] ; 3 uses
  %.not.i.i1.i21 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i21, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit23, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !19
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #19
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit23

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit23: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20, %bb.o
  ret void

bb.p:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #15
  br label %common.resume

bb.q:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit11
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #15
  br label %common.resume
}

declare void @_Z36validate_matrixNumQubitsMatchesParamiiPKc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z17setInlineDiagMatr8DiagMatriSt6vectorISt7complexIdESaIS2_EE(ptr nofree noundef readonly byval(%struct.DiagMatr) align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.3", align 8     ; 6 uses
  tail call void @_Z21validate_matrixFields8DiagMatrPKc(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef nonnull @__func__._Z17setInlineDiagMatr8DiagMatriSt6vectorISt7complexIdESaIS2_EE)
  %i.a = load i32, ptr %0, align 8, !tbaa !50     ; 2 uses
  tail call void @_Z36validate_matrixNumQubitsMatchesParamiiPKc(i32 noundef %i.a, i32 noundef %1, ptr noundef nonnull @__func__._Z17setInlineDiagMatr8DiagMatriSt6vectorISt7complexIdESaIS2_EE)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !22     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #18
  %.pre = load ptr, ptr %2, align 8, !tbaa !25
  %.pre4 = load ptr, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre4, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ %i.d, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !23
  %.not7.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !31
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit:  ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !29
  invoke void @_Z26validate_matrixNumNewElemsiSt6vectorISt7complexIdESaIS1_EEPKc(i32 noundef %i.a, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @__func__._Z17setInlineDiagMatr8DiagMatriSt6vectorISt7complexIdESaIS2_EE)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  %i.r = load ptr, ptr %3, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %bb.d, %bb.e
  %i.w = load ptr, ptr %2, align 8, !tbaa !22
  call void @setDiagMatr(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef %i.w)
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %3, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit3, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit3

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit3:     ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define void @_Z26setInlineFullStateDiagMatr17FullStateDiagMatrxxSt6vectorISt7complexIdESaIS2_EE(ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_Z21validate_matrixFields17FullStateDiagMatrPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull @__func__._Z26setInlineFullStateDiagMatr17FullStateDiagMatrxxSt6vectorISt7complexIdESaIS2_EE)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = load ptr, ptr %3, align 8, !tbaa !22
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4
  tail call void @_Z44validate_declaredNumElemsMatchesVectorLengthxxPKc(i64 noundef %2, i64 noundef %i.g, ptr noundef nonnull @__func__._Z26setInlineFullStateDiagMatr17FullStateDiagMatrxxSt6vectorISt7complexIdESaIS2_EE)
  tail call void @_Z34validate_fullStateDiagMatrNewElems17FullStateDiagMatrxxPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull @__func__._Z26setInlineFullStateDiagMatr17FullStateDiagMatrxxSt6vectorISt7complexIdESaIS2_EE)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !22     ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.l, 9223372036854775792
  br i1 %i.m, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #18
  %.pre = load ptr, ptr %3, align 8, !tbaa !25
  %.pre20 = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %5 = phi ptr [ %i.h, %bb.a ], [ %.pre20, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %6 = phi ptr [ %i.i, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %7 = phi ptr [ null, %bb.a ], [ %4, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i ] ; 9 uses
  %.not7.i.i.i.i.i = icmp eq ptr %6, %5
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %7, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %6, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !31
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %5
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit:  ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %7, %bb.c ], [ %i.o, %.lr.ph.i.i.i.i.i ]
  %.sroa.3.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.3.0.copyload27 = load ptr, ptr %.sroa.3.0..sroa_idx26, align 8
  %.sroa.4.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.4.0.copyload29 = load ptr, ptr %.sroa.4.0..sroa_idx28, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0.copyload31 = load ptr, ptr %.sroa.6.0..sroa_idx30, align 8
  %.sroa.7.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.7.0.copyload33 = load ptr, ptr %.sroa.7.0..sroa_idx32, align 8
  %i.p = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.q = ptrtoint ptr %7 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 4                   ; 2 uses
  invoke void @_Z21validate_matrixFields17FullStateDiagMatrPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull @__func__.setFullStateDiagMatr)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  invoke void @_Z34validate_fullStateDiagMatrNewElems17FullStateDiagMatrxxPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, i64 noundef %1, i64 noundef %i.s, ptr noundef nonnull @__func__.setFullStateDiagMatr)
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %.noexc
  invoke void @_Z33validate_matrixNewElemsPtrNotNullPSt7complexIdEPKc(ptr noundef %7, ptr noundef nonnull @__func__.setFullStateDiagMatr)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %.noexc5
  invoke void @_Z36localiser_fullstatediagmatr_setElems17FullStateDiagMatrxPSt7complexIdEx(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, i64 noundef %1, ptr noundef %7, i64 noundef %i.s)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %.noexc6
  store i32 1, ptr %.sroa.7.0.copyload33, align 4, !tbaa !47
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.3.0.copyload27)
          to label %.noexc8 unwind label %bb.f

.noexc8:                                          ; preds = %.noexc7
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.4.0.copyload29)
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %.noexc8
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.5.0.copyload)
          to label %.noexc10 unwind label %bb.f

.noexc10:                                         ; preds = %.noexc9
  invoke void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.6.0.copyload31)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc10
  %.not.i.i.i = icmp eq ptr %7, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef %i.l) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %.noexc10, %.noexc9, %.noexc8, %.noexc7, %.noexc6, %.noexc5, %.noexc, %_ZNSt6vectorISt7complexIdESaIS1_EEC2ERKS3_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i12 = icmp eq ptr %7, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit13, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef %i.l) #19
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit13

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit13:    ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.t
}

declare void @_Z44validate_declaredNumElemsMatchesVectorLengthxxPKc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z20createInlineCompMatriSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE(ptr dead_on_unwind noalias nofree writable sret(%struct.CompMatr) align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  %4 = alloca %"class.std::vector", align 8       ; 7 uses
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__._Z20createInlineCompMatriSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
  tail call void @_Z26validate_newCompMatrParamsiPKc(i32 noundef %1, ptr noundef nonnull @__func__._Z20createInlineCompMatriSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
  %.pre = load ptr, ptr %2, align 8, !tbaa !18
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre26, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !19
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.k, ptr %i.j, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.f) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.p, %bb.q, %bb.k, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.k ], [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.au, %bb.l ], [ %i.bk, %bb.q ], [ %i.bj, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.m, align 8, !tbaa !15
  invoke void @_Z26validate_matrixNumNewElemsiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEPKc(i32 noundef %1, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @__func__._Z20createInlineCompMatriSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.r = load ptr, ptr %3, align 8, !tbaa !16     ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.r, %bb.f ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #19
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.z, %i.s
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #19
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  call void @createCompMatr(ptr dead_on_unwind writable sret(%struct.CompMatr) align 8 %0, i32 noundef %1)
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !16    ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.ak = sdiv exact i64 %i.aj, 24
  %i.al = icmp ugt i64 %i.ak, 384307168202282325
  br i1 %i.al, label %.noexc.i.i12, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9, !prof !17

.noexc.i.i12:                                     ; preds = %bb.i
  call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9: ; preds = %bb.i
  %i.am = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #18
  %.pre27 = load ptr, ptr %2, align 8, !tbaa !18
  %.pre28 = load ptr, ptr %i.a, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.an = phi ptr [ %i.af, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre28, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9 ]
  %i.ao = phi ptr [ %i.ag, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre27, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9 ]
  %i.ap = phi ptr [ null, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %i.am, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9 ] ; 5 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !19
  %i.at = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ao, ptr %i.an, ptr noundef %i.ap)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit13 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i10, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.aj) #19
  br label %common.resume

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit13: ; preds = %bb.j
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !15
  invoke void @_Z24setAndSyncDenseMatrElemsISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEv8CompMatrT_(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit13
  %i.av = load ptr, ptr %4, align 8, !tbaa !16    ; 3 uses
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !15 ; 2 uses
  %.not4.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not4.i.i.i14, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22, label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %bb.m, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18
  %.05.i.i.i16 = phi ptr [ %i.bd, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18 ], [ %i.av, %bb.m ] ; 3 uses
  %i.ax = load ptr, ptr %.05.i.i.i16, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i17 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i17, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i15
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i16, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #19
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18: ; preds = %bb.n, %.lr.ph.i.i.i15
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i16, i64 24 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.bd, %i.aw
  br i1 %.not.i.i.i19, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20, label %.lr.ph.i.i.i15, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18
  %.pr.i21 = load ptr, ptr %4, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20, %bb.m
  %i.be = phi ptr [ %.pr.i21, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20 ], [ %i.av, %bb.m ] ; 3 uses
  %.not.i.i1.i23 = icmp eq ptr %i.be, null
  br i1 %.not.i.i1.i23, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit25, label %bb.o

end_hunk_0
