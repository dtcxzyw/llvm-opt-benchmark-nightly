Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ArrayConcatRegistration?download=true
inline.NumInlined: 51821
inline.NumDeleted: 13824
loop-unroll.NumCompletelyUnrolled: 235
loop-unroll.NumRuntimeUnrolled: 113
loop-unroll.NumUnrolled: 348
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayConcatFunctionINS1_10VectorExecENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEES7_NS0_5ArrayISB_EENS0_15ConstantCheckerIJSE_SE_NS0_8VariadicISE_EEEEEJSE_SE_SH_EEEE6unpackILi2ELb1EJNS1_12VectorReaderISE_EESN_EEEvRNSK_12ApplyContextERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaIST_EERKSQ_ISt10shared_ptrINS0_10BaseVectorEESaISZ_EEDpRT1_:bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !2254
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %1, ptr %6, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %9, ptr %i.m, align 8
  store ptr %1, ptr %7, align 8
  store ptr %6, ptr %8, align 8, !tbaa !340
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.n, align 8, !tbaa !340
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.k, ptr %i.o, align 8, !tbaa !2257
  invoke void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19ArrayConcatFunctionINS3_10VectorExecENS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEESB_NS0_5ArrayISF_EENS0_15ConstantCheckerIJSI_SI_NS0_8VariadicISI_EEEEEJSI_SI_SL_EEEE8applyUdfIZNKSO_7iterateIJNS3_12VectorReaderISI_EESS_NSR_ISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSV_SZ_EUlSZ_E_ZNKSP_IS14_EEvSV_SZ_EUlSZ_E0_EEvRKS1_SZ_S11_EUlSZ_E_EEvSZ_(ptr noundef nonnull align 8 dereferenceable(38) %i.l, ptr noundef nonnull byval(%class.anon.2240) align 8 %8)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !625  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !691
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !350
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(94) %i.q, i32 noundef %i.s, i1 noundef zeroext true)
          to label %.noexc16 unwind label %bb.l, !inline_history !10175

.noexc16:                                         ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %i.w, align 8, !tbaa !606
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !374
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.b

bb.b:                                             ; preds = %.noexc16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !695 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !350
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(12) %i.aa)
          to label %bb.k unwind label %bb.l, !inline_history !10175

bb.c:                                             ; preds = %.lr.ph, %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit ] ; 3 uses
  %i.ae = phi ptr [ %i.c, %.lr.ph ], [ %i.bl, %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !2255, !nonnull !353, !align !437
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !605
  %i.ai = load ptr, ptr %1, align 8, !tbaa !2254
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !580
  store ptr %i.aj, ptr %10, align 8, !tbaa !639
  store ptr null, ptr %i.i, align 8, !tbaa !640
  %i.ak = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, ptr noundef nonnull align 8 dereferenceable(94) %i.ah, ptr noundef nonnull align 8 dereferenceable(38) %i.ai, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit unwind label %bb.e

common.resume:                                    ; preds = %bb.l, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.e ], [ %i.br, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #34
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit: ; preds = %bb.d
  %i.am = load ptr, ptr %2, align 8, !tbaa !531
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !534, !range !352, !noundef !353
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = load ptr, ptr %10, align 8, !tbaa !639
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !639
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  br i1 %i.aq, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !641
  store ptr null, ptr %i.i, align 8, !tbaa !641
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !641 ; 6 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !641
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !643 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !644
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #41
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i:    ; preds = %bb.h, %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !646 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !647
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #41
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 120) #41
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

bb.j:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.bj = load i64, ptr %i.i, align 8, !tbaa !641
  store i64 %i.bj, ptr %i.as, align 8, !tbaa !641
  store ptr null, ptr %i.i, align 8, !tbaa !641
  store i8 1, ptr %i.ao, align 8, !tbaa !534
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i, %bb.j
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !527
  %i.bl = load ptr, ptr %3, align 8, !tbaa !528   ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 4
  %i.bq = icmp ugt i64 %i.bp, %indvars.iv.next
  br i1 %i.bq, label %bb.c, label %._crit_edge, !llvm.loop !10176

bb.k:                                             ; preds = %.noexc16, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  ret void

bb.l:                                             ; preds = %bb.b, %.noexc, %._crit_edge
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_8VariadicINS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEE19prepareChildReadersERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISF_EEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.2207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.2207", align 8  ; 15 uses
  %5 = alloca %"class.std::unique_ptr.2212", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !532
  %i.c = load ptr, ptr %2, align 8, !tbaa !531
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 2 uses
  %i.h = sext i32 %3 to i64                       ; 4 uses
  %i.i = sub nsw i64 %i.g, %i.h                   ; 3 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.232) #42
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %.not = icmp eq i64 %i.g, %i.h
  br i1 %.not, label %._crit_edge, label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = shl nuw nsw i64 %i.i, 3
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #40
          to label %.noexc15 unwind label %bb.e   ; 13 uses

.noexc15:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE11_M_allocateEm.exit.i
  %i.o = load ptr, ptr %4, align 8, !tbaa !2260   ; 14 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !2261 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit.i, label %iter.check

iter.check:                                       ; preds = %.noexc15
  %6 = ptrtoaddr ptr %i.p to i64
  %7 = ptrtoaddr ptr %i.o to i64
  %i.q = add i64 %6, -8
  %i.r = sub i64 %i.q, %7                         ; 3 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.r, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %8 = ptrtoaddr ptr %i.p to i64
  %9 = ptrtoaddr ptr %i.o to i64
  %i.u = add i64 %8, -8
  %i.v = sub i64 %i.u, %9
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %i.y = getelementptr i8, ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.o, i64 %i.x
  %bound0 = icmp ult ptr %i.n, %i.z
  %bound1 = icmp ult ptr %i.o, %i.y
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check79 = icmp ult i64 %i.r, 120
  br i1 %min.iters.check79, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.t, 12
  %n.vec = and i64 %i.t, 4611686018427387888      ; 4 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.n, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.o, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ae ; 4 uses
  %next.gep80 = getelementptr i8, ptr %i.o, i64 %i.ae ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10199)
  %i.af = getelementptr i8, ptr %next.gep80, i64 32
  %i.ag = getelementptr i8, ptr %next.gep80, i64 64
  %i.ah = getelementptr i8, ptr %next.gep80, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep80, align 8, !tbaa !2262, !alias.scope !10200, !noalias !10198
  %wide.load81 = load <4 x i64>, ptr %i.af, align 8, !tbaa !2262, !alias.scope !10200, !noalias !10198
  %wide.load82 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !2262, !alias.scope !10200, !noalias !10198
  %wide.load83 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !2262, !alias.scope !10200, !noalias !10198
  %i.ai = getelementptr i8, ptr %next.gep, i64 32
  %i.aj = getelementptr i8, ptr %next.gep, i64 64
  %i.ak = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !2262, !alias.scope !10201, !noalias !10200
  store <4 x i64> %wide.load81, ptr %i.ai, align 8, !tbaa !2262, !alias.scope !10201, !noalias !10200
  store <4 x i64> %wide.load82, ptr %i.aj, align 8, !tbaa !2262, !alias.scope !10201, !noalias !10200
  store <4 x i64> %wide.load83, ptr %i.ak, align 8, !tbaa !2262, !alias.scope !10201, !noalias !10200
  %i.al = getelementptr i8, ptr %next.gep80, i64 32
  %i.am = getelementptr i8, ptr %next.gep80, i64 64
  %i.an = getelementptr i8, ptr %next.gep80, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep80, align 8, !tbaa !2262, !alias.scope !10200, !noalias !10198
  store <4 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !2262, !alias.scope !10200, !noalias !10198
  store <4 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !2262, !alias.scope !10200, !noalias !10198
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !2262, !alias.scope !10200, !noalias !10198
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !10183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !797

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec85 = and i64 %i.t, 4611686018427387900    ; 3 uses
  %i.ap = shl i64 %n.vec85, 3                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.n, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.o, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index86 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index86, 3                     ; 2 uses
  %next.gep87 = getelementptr i8, ptr %i.n, i64 %i.as
  %next.gep88 = getelementptr i8, ptr %i.o, i64 %i.as ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10199)
  %wide.load89 = load <4 x i64>, ptr %next.gep88, align 8, !tbaa !2262, !alias.scope !10200, !noalias !10198
  store <4 x i64> %wide.load89, ptr %next.gep87, align 8, !tbaa !2262, !alias.scope !10201, !noalias !10200
  store <4 x ptr> splat (ptr null), ptr %next.gep88, align 8, !tbaa !2262, !alias.scope !10200, !noalias !10198
  %index.next90 = add nuw i64 %index86, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10184

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.t, %n.vec85
  br i1 %cmp.n91, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.n, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.o, %iter.check ], [ %i.o, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10199)
  %i.au = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !2262, !alias.scope !10199, !noalias !10198
  store i64 %i.au, ptr %.012.i.i.i.i, align 8, !tbaa !2262, !alias.scope !10198, !noalias !10199
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !2262, !alias.scope !10199, !noalias !10198
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.p
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !10185

_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc15
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE7reserveEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit.i
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !2263
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.o to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ba) #41
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE7reserveEm.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit.i, %bb.d
  store ptr %i.n, ptr %4, align 8, !tbaa !2260
  store ptr %i.n, ptr %i.l, align 8, !tbaa !2261
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i ; 2 uses
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !2263
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !532
  %.pre46 = load ptr, ptr %2, align 8, !tbaa !531 ; 2 uses
  %.pre48 = ptrtoint ptr %.pre to i64
  %.pre49 = ptrtoint ptr %.pre46 to i64
  %.pre51 = sub i64 %.pre48, %.pre49
  %.pre53 = sdiv exact i64 %.pre51, 24
  %i.bc = icmp ugt i64 %.pre53, %i.h
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_5ArrayINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISA_EED2Ev.exit
  %.pre47 = load ptr, ptr %4, align 8, !tbaa !2260
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE7reserveEm.exit
  %i.be = phi ptr [ %i.en, %._crit_edge.loopexit ], [ %i.bb, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE7reserveEm.exit ], [ null, %bb.c ]
  %i.bf = phi ptr [ %i.eo, %._crit_edge.loopexit ], [ %i.n, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE7reserveEm.exit ], [ null, %bb.c ]
  %i.bg = phi ptr [ %.pre47, %._crit_edge.loopexit ], [ %i.n, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE7reserveEm.exit ], [ null, %bb.c ]
  store ptr %i.bg, ptr %0, align 8, !tbaa !2260
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !2261
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !2263
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_5ArrayINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISB_EESaISE_EE11_M_allocateEm.exit.i, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_5ArrayINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISA_EED2Ev.exit
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_5ArrayINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISA_EED2Ev.exit ] ; 2 uses
  %i.bk = phi ptr [ %.pre46, %.lr.ph ], [ %i.eq, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_5ArrayINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEEEEEESt14default_deleteISA_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %indvars.iv ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !534, !range !352, !noundef !353
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt27__throw_bad_optional_accessv() #42
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %bb.g
  unreachable

_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit: ; preds = %bb.f
  %i.bp = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %bb.h unwind label %.loopexit  ; 2 uses

bb.h:                                             ; preds = %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10202)
  %i.bq = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #40
          to label %.noexc18 unwind label %.loopexit ; 19 uses

.noexc18:                                         ; preds = %bb.h
  store i32 0, ptr %i.bq, align 8, !tbaa !659, !noalias !10202
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i8 0, i64 32, i1 false), !noalias !10202
  store i8 1, ptr %i.bs, align 8, !tbaa !660, !noalias !10202
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bt, i8 0, i64 13, i1 false), !noalias !10202
  store i8 1, ptr %i.bu, align 1, !tbaa !661, !noalias !10202
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  store i32 0, ptr %i.bv, align 8, !tbaa !662, !noalias !10202
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, i8 0, i64 48, i1 false), !noalias !10202
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 120
  store ptr %i.bp, ptr %i.bx, align 8, !tbaa !641, !noalias !10202
end_hunk_0
