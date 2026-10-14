Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/GeneralFunctionsRegistration?download=true
inline.NumInlined: 39044
inline.NumDeleted: 11422
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7details20ExtremeValueFunctionINS1_10VectorExecENS0_10CustomTypeINS0_22TimestampWithTimezoneTELb1EEELb0EEES8_SB_NS0_15ConstantCheckerIJSB_NS0_8VariadicISB_EEEEEJSB_SF_EEEE6unpackILi1ELb1EJNS1_12VectorReaderISB_EEEEEvRNSI_12ApplyContextERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISR_EERKSO_ISt10shared_ptrINS0_10BaseVectorEESaISX_EEDpRT1_:bb.a
bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.aa, ptr noundef nonnull align 8 dereferenceable(94) %i.x, ptr noundef nonnull align 8 dereferenceable(38) %i.y, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit unwind label %bb.d

common.resume:                                    ; preds = %bb.k, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bh, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #31
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit: ; preds = %bb.c
  %i.ac = load ptr, ptr %2, align 8, !tbaa !368
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !371, !range !144, !noundef !145
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = load ptr, ptr %9, align 8, !tbaa !400
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !400
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  br i1 %i.ag, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !402
  store ptr null, ptr %i.k, align 8, !tbaa !402
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !402 ; 6 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !402
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !404 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !405
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i:    ; preds = %bb.g, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !408 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !409
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #35
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 120) #35
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

bb.i:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.az = load i64, ptr %i.k, align 8, !tbaa !402
  store i64 %i.az, ptr %i.ai, align 8, !tbaa !402
  store ptr null, ptr %i.k, align 8, !tbaa !402
  store i8 1, ptr %i.ae, align 8, !tbaa !371
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i, %bb.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !364
  %i.bb = load ptr, ptr %3, align 8, !tbaa !365   ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 4
  %i.bg = icmp ugt i64 %i.bf, %indvars.iv.next
  br i1 %i.bg, label %bb.b, label %._crit_edge, !llvm.loop !6746

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  ret void

bb.k:                                             ; preds = %._crit_edge
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_22TimestampWithTimezoneTELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !141
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !74
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !74
  br label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !112
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_8VariadicINS0_10CustomTypeINS0_22TimestampWithTimezoneTELb1EEEEEE19prepareChildReadersERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISC_EEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.3673") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.3673", align 8  ; 15 uses
  %5 = alloca %"class.std::unique_ptr.3678", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !369
  %i.c = load ptr, ptr %2, align 8, !tbaa !368
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 2 uses
  %i.h = sext i32 %3 to i64                       ; 4 uses
  %i.i = sub nsw i64 %i.g, %i.h                   ; 3 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.103) #38
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %.not = icmp eq i64 %i.g, %i.h
  br i1 %.not, label %._crit_edge, label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = shl nuw nsw i64 %i.i, 3
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #36
          to label %.noexc15 unwind label %bb.e   ; 13 uses

.noexc15:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_M_allocateEm.exit.i
  %i.o = load ptr, ptr %4, align 8, !tbaa !1593   ; 14 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !1594 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, label %iter.check

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
  %min.iters.check67 = icmp ult i64 %i.r, 120
  br i1 %min.iters.check67, label %vec.epilog.ph, label %vector.ph

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
  %next.gep68 = getelementptr i8, ptr %i.o, i64 %i.ae ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6772)
  %i.af = getelementptr i8, ptr %next.gep68, i64 32
  %i.ag = getelementptr i8, ptr %next.gep68, i64 64
  %i.ah = getelementptr i8, ptr %next.gep68, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep68, align 8, !tbaa !1596, !alias.scope !6773, !noalias !6771
  %wide.load69 = load <4 x i64>, ptr %i.af, align 8, !tbaa !1596, !alias.scope !6773, !noalias !6771
  %wide.load70 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !1596, !alias.scope !6773, !noalias !6771
  %wide.load71 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !1596, !alias.scope !6773, !noalias !6771
  %i.ai = getelementptr i8, ptr %next.gep, i64 32
  %i.aj = getelementptr i8, ptr %next.gep, i64 64
  %i.ak = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1596, !alias.scope !6774, !noalias !6773
  store <4 x i64> %wide.load69, ptr %i.ai, align 8, !tbaa !1596, !alias.scope !6774, !noalias !6773
  store <4 x i64> %wide.load70, ptr %i.aj, align 8, !tbaa !1596, !alias.scope !6774, !noalias !6773
  store <4 x i64> %wide.load71, ptr %i.ak, align 8, !tbaa !1596, !alias.scope !6774, !noalias !6773
  %i.al = getelementptr i8, ptr %next.gep68, i64 32
  %i.am = getelementptr i8, ptr %next.gep68, i64 64
  %i.an = getelementptr i8, ptr %next.gep68, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep68, align 8, !tbaa !1596, !alias.scope !6773, !noalias !6771
  store <4 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1596, !alias.scope !6773, !noalias !6771
  store <4 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !1596, !alias.scope !6773, !noalias !6771
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !1596, !alias.scope !6773, !noalias !6771
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !6754

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !496

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i64 %i.t, 4611686018427387900    ; 3 uses
  %i.ap = shl i64 %n.vec73, 3                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.n, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.o, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index74, 3                     ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.n, i64 %i.as
  %next.gep76 = getelementptr i8, ptr %i.o, i64 %i.as ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6772)
  %wide.load77 = load <4 x i64>, ptr %next.gep76, align 8, !tbaa !1596, !alias.scope !6773, !noalias !6771
  store <4 x i64> %wide.load77, ptr %next.gep75, align 8, !tbaa !1596, !alias.scope !6774, !noalias !6773
  store <4 x ptr> splat (ptr null), ptr %next.gep76, align 8, !tbaa !1596, !alias.scope !6773, !noalias !6771
  %index.next78 = add nuw i64 %index74, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6755

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n79 = icmp eq i64 %i.t, %n.vec73
  br i1 %cmp.n79, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.n, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.o, %iter.check ], [ %i.o, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6772)
  %i.au = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !1596, !alias.scope !6772, !noalias !6771
  store i64 %i.au, ptr %.012.i.i.i.i, align 8, !tbaa !1596, !alias.scope !6771, !noalias !6772
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !1596, !alias.scope !6772, !noalias !6771
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.p
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !6756

_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc15
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !1597
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.o to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ba) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, %bb.d
  store ptr %i.n, ptr %4, align 8, !tbaa !1593
  store ptr %i.n, ptr %i.l, align 8, !tbaa !1594
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i ; 2 uses
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !1597
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !369
  %.pre40 = load ptr, ptr %2, align 8, !tbaa !368 ; 2 uses
  %.pre42 = ptrtoint ptr %.pre to i64
  %.pre43 = ptrtoint ptr %.pre40 to i64
  %.pre45 = sub i64 %.pre42, %.pre43
  %.pre47 = sdiv exact i64 %.pre45, 24
  %i.bc = icmp ugt i64 %.pre47, %i.h
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_10CustomTypeINS1_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS7_EED2Ev.exit
  %.pre41 = load ptr, ptr %4, align 8, !tbaa !1593
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit
  %i.be = phi ptr [ %i.eg, %._crit_edge.loopexit ], [ %i.bb, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit ], [ null, %bb.c ]
  %i.bf = phi ptr [ %i.eh, %._crit_edge.loopexit ], [ %i.n, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit ], [ null, %bb.c ]
  %i.bg = phi ptr [ %.pre41, %._crit_edge.loopexit ], [ %i.n, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit ], [ null, %bb.c ]
  store ptr %i.bg, ptr %0, align 8, !tbaa !1593
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !1594
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !1597
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_M_allocateEm.exit.i, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_10CustomTypeINS1_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS7_EED2Ev.exit
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_10CustomTypeINS1_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS7_EED2Ev.exit ] ; 2 uses
  %i.bk = phi ptr [ %.pre40, %.lr.ph ], [ %i.ej, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_10CustomTypeINS1_22TimestampWithTimezoneTELb1EEEEESt14default_deleteIS7_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %indvars.iv ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !371, !range !144, !noundef !145
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt27__throw_bad_optional_accessv() #38
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %bb.g
  unreachable

_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit: ; preds = %bb.f
  %i.bp = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %bb.h unwind label %.loopexit  ; 2 uses

bb.h:                                             ; preds = %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6775)
  %i.bq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc18 unwind label %.loopexit ; 5 uses

.noexc18:                                         ; preds = %bb.h
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !402, !noalias !6775
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1584, !noalias !6775 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6776)
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !166, !noalias !6777 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc18
  %i.bx = tail call ptr @__dynamic_cast(ptr nonnull %i.bv, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox30CanProvideCustomComparisonTypeILNS0_8TypeKindE4EEE, i64 0) #31, !noalias !6777 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i, label %bb.j

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7details20ExtremeValueFunctionINS1_10VectorExecENS0_10CustomTypeINS0_10IPAddressTELb1EEELb0EEES8_SB_NS0_15ConstantCheckerIJSB_NS0_8VariadicISB_EEEEEJSB_SF_EEEE6unpackILi1ELb1EJNS1_12VectorReaderISB_EEEEEvRNSI_12ApplyContextERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISR_EERKSO_ISt10shared_ptrINS0_10BaseVectorEESaISX_EEDpRT1_:bb.a
bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.aa, ptr noundef nonnull align 8 dereferenceable(94) %i.x, ptr noundef nonnull align 8 dereferenceable(38) %i.y, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit unwind label %bb.d

common.resume:                                    ; preds = %bb.k, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bh, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #31
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit: ; preds = %bb.c
  %i.ac = load ptr, ptr %2, align 8, !tbaa !368
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !371, !range !144, !noundef !145
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = load ptr, ptr %9, align 8, !tbaa !400
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !400
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  br i1 %i.ag, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !402
  store ptr null, ptr %i.k, align 8, !tbaa !402
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !402 ; 6 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !402
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !404 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !405
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i:    ; preds = %bb.g, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !408 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !409
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #35
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 120) #35
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

bb.i:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.az = load i64, ptr %i.k, align 8, !tbaa !402
  store i64 %i.az, ptr %i.ai, align 8, !tbaa !402
  store ptr null, ptr %i.k, align 8, !tbaa !402
  store i8 1, ptr %i.ae, align 8, !tbaa !371
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i, %bb.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !364
  %i.bb = load ptr, ptr %3, align 8, !tbaa !365   ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 4
  %i.bg = icmp ugt i64 %i.bf, %indvars.iv.next
  br i1 %i.bg, label %bb.b, label %._crit_edge, !llvm.loop !7202

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  ret void

bb.k:                                             ; preds = %._crit_edge
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !141
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !81
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !81
  br label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !112
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_8VariadicINS0_10CustomTypeINS0_10IPAddressTELb1EEEEEE19prepareChildReadersERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISC_EEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.3861") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.3861", align 8  ; 15 uses
  %5 = alloca %"class.std::unique_ptr.3866", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !369
  %i.c = load ptr, ptr %2, align 8, !tbaa !368
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 2 uses
  %i.h = sext i32 %3 to i64                       ; 4 uses
  %i.i = sub nsw i64 %i.g, %i.h                   ; 3 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.103) #38
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %.not = icmp eq i64 %i.g, %i.h
  br i1 %.not, label %._crit_edge, label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = shl nuw nsw i64 %i.i, 3
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #36
          to label %.noexc15 unwind label %bb.e   ; 13 uses

.noexc15:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_M_allocateEm.exit.i
  %i.o = load ptr, ptr %4, align 8, !tbaa !1654   ; 14 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !1655 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, label %iter.check

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
  %min.iters.check67 = icmp ult i64 %i.r, 120
  br i1 %min.iters.check67, label %vec.epilog.ph, label %vector.ph

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
  %next.gep68 = getelementptr i8, ptr %i.o, i64 %i.ae ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7228)
  %i.af = getelementptr i8, ptr %next.gep68, i64 32
  %i.ag = getelementptr i8, ptr %next.gep68, i64 64
  %i.ah = getelementptr i8, ptr %next.gep68, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep68, align 8, !tbaa !1657, !alias.scope !7229, !noalias !7227
  %wide.load69 = load <4 x i64>, ptr %i.af, align 8, !tbaa !1657, !alias.scope !7229, !noalias !7227
  %wide.load70 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !1657, !alias.scope !7229, !noalias !7227
  %wide.load71 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !1657, !alias.scope !7229, !noalias !7227
  %i.ai = getelementptr i8, ptr %next.gep, i64 32
  %i.aj = getelementptr i8, ptr %next.gep, i64 64
  %i.ak = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1657, !alias.scope !7230, !noalias !7229
  store <4 x i64> %wide.load69, ptr %i.ai, align 8, !tbaa !1657, !alias.scope !7230, !noalias !7229
  store <4 x i64> %wide.load70, ptr %i.aj, align 8, !tbaa !1657, !alias.scope !7230, !noalias !7229
  store <4 x i64> %wide.load71, ptr %i.ak, align 8, !tbaa !1657, !alias.scope !7230, !noalias !7229
  %i.al = getelementptr i8, ptr %next.gep68, i64 32
  %i.am = getelementptr i8, ptr %next.gep68, i64 64
  %i.an = getelementptr i8, ptr %next.gep68, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep68, align 8, !tbaa !1657, !alias.scope !7229, !noalias !7227
  store <4 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1657, !alias.scope !7229, !noalias !7227
  store <4 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !1657, !alias.scope !7229, !noalias !7227
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !1657, !alias.scope !7229, !noalias !7227
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !7210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !496

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i64 %i.t, 4611686018427387900    ; 3 uses
  %i.ap = shl i64 %n.vec73, 3                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.n, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.o, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index74, 3                     ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.n, i64 %i.as
  %next.gep76 = getelementptr i8, ptr %i.o, i64 %i.as ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7228)
  %wide.load77 = load <4 x i64>, ptr %next.gep76, align 8, !tbaa !1657, !alias.scope !7229, !noalias !7227
  store <4 x i64> %wide.load77, ptr %next.gep75, align 8, !tbaa !1657, !alias.scope !7230, !noalias !7229
  store <4 x ptr> splat (ptr null), ptr %next.gep76, align 8, !tbaa !1657, !alias.scope !7229, !noalias !7227
  %index.next78 = add nuw i64 %index74, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7211

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n79 = icmp eq i64 %i.t, %n.vec73
  br i1 %cmp.n79, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.n, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.o, %iter.check ], [ %i.o, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7228)
  %i.au = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !1657, !alias.scope !7228, !noalias !7227
  store i64 %i.au, ptr %.012.i.i.i.i, align 8, !tbaa !1657, !alias.scope !7227, !noalias !7228
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !1657, !alias.scope !7228, !noalias !7227
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.p
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !7212

_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc15
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !1658
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.o to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ba) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, %bb.d
  store ptr %i.n, ptr %4, align 8, !tbaa !1654
  store ptr %i.n, ptr %i.l, align 8, !tbaa !1655
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i ; 2 uses
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !1658
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !369
  %.pre40 = load ptr, ptr %2, align 8, !tbaa !368 ; 2 uses
  %.pre42 = ptrtoint ptr %.pre to i64
  %.pre43 = ptrtoint ptr %.pre40 to i64
  %.pre45 = sub i64 %.pre42, %.pre43
  %.pre47 = sdiv exact i64 %.pre45, 24
  %i.bc = icmp ugt i64 %.pre47, %i.h
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_10CustomTypeINS1_10IPAddressTELb1EEEEESt14default_deleteIS7_EED2Ev.exit
  %.pre41 = load ptr, ptr %4, align 8, !tbaa !1654
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit
  %i.be = phi ptr [ %i.eg, %._crit_edge.loopexit ], [ %i.bb, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit ], [ null, %bb.c ]
  %i.bf = phi ptr [ %i.eh, %._crit_edge.loopexit ], [ %i.n, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit ], [ null, %bb.c ]
  %i.bg = phi ptr [ %.pre41, %._crit_edge.loopexit ], [ %i.n, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit ], [ null, %bb.c ]
  store ptr %i.bg, ptr %0, align 8, !tbaa !1654
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !1655
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !1658
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_10IPAddressTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_M_allocateEm.exit.i, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_10CustomTypeINS1_10IPAddressTELb1EEEEESt14default_deleteIS7_EED2Ev.exit
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_10CustomTypeINS1_10IPAddressTELb1EEEEESt14default_deleteIS7_EED2Ev.exit ] ; 2 uses
  %i.bk = phi ptr [ %.pre40, %.lr.ph ], [ %i.ej, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_10CustomTypeINS1_10IPAddressTELb1EEEEESt14default_deleteIS7_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %indvars.iv ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !371, !range !144, !noundef !145
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt27__throw_bad_optional_accessv() #38
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %bb.g
  unreachable

_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit: ; preds = %bb.f
  %i.bp = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %bb.h unwind label %.loopexit  ; 2 uses

bb.h:                                             ; preds = %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7231)
  %i.bq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc18 unwind label %.loopexit ; 5 uses

.noexc18:                                         ; preds = %bb.h
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !402, !noalias !7231
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1584, !noalias !7231 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7232)
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !166, !noalias !7233 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc18
  %i.bx = tail call ptr @__dynamic_cast(ptr nonnull %i.bv, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox30CanProvideCustomComparisonTypeILNS0_8TypeKindE10EEE, i64 0) #31, !noalias !7233 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i, label %bb.j

end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7details20ExtremeValueFunctionINS1_10VectorExecENS0_10CustomTypeINS0_17TimeWithTimezoneTELb1EEELb0EEES8_SB_NS0_15ConstantCheckerIJSB_NS0_8VariadicISB_EEEEEJSB_SF_EEEE6unpackILi1ELb1EJNS1_12VectorReaderISB_EEEEEvRNSI_12ApplyContextERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISR_EERKSO_ISt10shared_ptrINS0_10BaseVectorEESaISX_EEDpRT1_:bb.a
bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.aa, ptr noundef nonnull align 8 dereferenceable(94) %i.x, ptr noundef nonnull align 8 dereferenceable(38) %i.y, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit unwind label %bb.d

common.resume:                                    ; preds = %bb.k, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bh, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #31
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit: ; preds = %bb.c
  %i.ac = load ptr, ptr %2, align 8, !tbaa !368
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !371, !range !144, !noundef !145
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = load ptr, ptr %9, align 8, !tbaa !400
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !400
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  br i1 %i.ag, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !402
  store ptr null, ptr %i.k, align 8, !tbaa !402
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !402 ; 6 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !402
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !404 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !405
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i:    ; preds = %bb.g, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !408 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !409
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #35
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 120) #35
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

bb.i:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.az = load i64, ptr %i.k, align 8, !tbaa !402
  store i64 %i.az, ptr %i.ai, align 8, !tbaa !402
  store ptr null, ptr %i.k, align 8, !tbaa !402
  store i8 1, ptr %i.ae, align 8, !tbaa !371
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i, %bb.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !364
  %i.bb = load ptr, ptr %3, align 8, !tbaa !365   ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 4
  %i.bg = icmp ugt i64 %i.bf, %indvars.iv.next
  br i1 %i.bg, label %bb.b, label %._crit_edge, !llvm.loop !7965

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  ret void

bb.k:                                             ; preds = %._crit_edge
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_17TimeWithTimezoneTELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !141
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !74
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !74
  br label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !112
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_8VariadicINS0_10CustomTypeINS0_17TimeWithTimezoneTELb1EEEEEE19prepareChildReadersERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISC_EEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.4284") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.4284", align 8  ; 15 uses
  %5 = alloca %"class.std::unique_ptr.4289", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !369
  %i.c = load ptr, ptr %2, align 8, !tbaa !368
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 2 uses
  %i.h = sext i32 %3 to i64                       ; 4 uses
  %i.i = sub nsw i64 %i.g, %i.h                   ; 3 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.103) #38
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %.not = icmp eq i64 %i.g, %i.h
  br i1 %.not, label %._crit_edge, label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = shl nuw nsw i64 %i.i, 3
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #36
          to label %.noexc15 unwind label %bb.e   ; 13 uses

.noexc15:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_M_allocateEm.exit.i
  %i.o = load ptr, ptr %4, align 8, !tbaa !1782   ; 14 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !1783 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, label %iter.check

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
  %min.iters.check67 = icmp ult i64 %i.r, 120
  br i1 %min.iters.check67, label %vec.epilog.ph, label %vector.ph

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
  %next.gep68 = getelementptr i8, ptr %i.o, i64 %i.ae ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7991)
  %i.af = getelementptr i8, ptr %next.gep68, i64 32
  %i.ag = getelementptr i8, ptr %next.gep68, i64 64
  %i.ah = getelementptr i8, ptr %next.gep68, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep68, align 8, !tbaa !1785, !alias.scope !7992, !noalias !7990
  %wide.load69 = load <4 x i64>, ptr %i.af, align 8, !tbaa !1785, !alias.scope !7992, !noalias !7990
  %wide.load70 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !1785, !alias.scope !7992, !noalias !7990
  %wide.load71 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !1785, !alias.scope !7992, !noalias !7990
  %i.ai = getelementptr i8, ptr %next.gep, i64 32
  %i.aj = getelementptr i8, ptr %next.gep, i64 64
  %i.ak = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1785, !alias.scope !7993, !noalias !7992
  store <4 x i64> %wide.load69, ptr %i.ai, align 8, !tbaa !1785, !alias.scope !7993, !noalias !7992
  store <4 x i64> %wide.load70, ptr %i.aj, align 8, !tbaa !1785, !alias.scope !7993, !noalias !7992
  store <4 x i64> %wide.load71, ptr %i.ak, align 8, !tbaa !1785, !alias.scope !7993, !noalias !7992
  %i.al = getelementptr i8, ptr %next.gep68, i64 32
  %i.am = getelementptr i8, ptr %next.gep68, i64 64
  %i.an = getelementptr i8, ptr %next.gep68, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep68, align 8, !tbaa !1785, !alias.scope !7992, !noalias !7990
  store <4 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1785, !alias.scope !7992, !noalias !7990
  store <4 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !1785, !alias.scope !7992, !noalias !7990
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !1785, !alias.scope !7992, !noalias !7990
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !7973

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !496

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i64 %i.t, 4611686018427387900    ; 3 uses
  %i.ap = shl i64 %n.vec73, 3                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.n, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.o, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index74, 3                     ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.n, i64 %i.as
  %next.gep76 = getelementptr i8, ptr %i.o, i64 %i.as ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7991)
  %wide.load77 = load <4 x i64>, ptr %next.gep76, align 8, !tbaa !1785, !alias.scope !7992, !noalias !7990
  store <4 x i64> %wide.load77, ptr %next.gep75, align 8, !tbaa !1785, !alias.scope !7993, !noalias !7992
  store <4 x ptr> splat (ptr null), ptr %next.gep76, align 8, !tbaa !1785, !alias.scope !7992, !noalias !7990
  %index.next78 = add nuw i64 %index74, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7974

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n79 = icmp eq i64 %i.t, %n.vec73
  br i1 %cmp.n79, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.n, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.o, %iter.check ], [ %i.o, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7991)
  %i.au = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !1785, !alias.scope !7991, !noalias !7990
  store i64 %i.au, ptr %.012.i.i.i.i, align 8, !tbaa !1785, !alias.scope !7990, !noalias !7991
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !1785, !alias.scope !7991, !noalias !7990
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.p
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !7975

_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc15
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !1786
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.o to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ba) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.i, %bb.d
  store ptr %i.n, ptr %4, align 8, !tbaa !1782
  store ptr %i.n, ptr %i.l, align 8, !tbaa !1783
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i ; 2 uses
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !1786
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !369
  %.pre40 = load ptr, ptr %2, align 8, !tbaa !368 ; 2 uses
  %.pre42 = ptrtoint ptr %.pre to i64
  %.pre43 = ptrtoint ptr %.pre40 to i64
  %.pre45 = sub i64 %.pre42, %.pre43
  %.pre47 = sdiv exact i64 %.pre45, 24
  %i.bc = icmp ugt i64 %.pre47, %i.h
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_10CustomTypeINS1_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS7_EED2Ev.exit
  %.pre41 = load ptr, ptr %4, align 8, !tbaa !1782
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit
  %i.be = phi ptr [ %i.eg, %._crit_edge.loopexit ], [ %i.bb, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit ], [ null, %bb.c ]
  %i.bf = phi ptr [ %i.eh, %._crit_edge.loopexit ], [ %i.n, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit ], [ null, %bb.c ]
  %i.bg = phi ptr [ %.pre41, %._crit_edge.loopexit ], [ %i.n, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE7reserveEm.exit ], [ null, %bb.c ]
  store ptr %i.bg, ptr %0, align 8, !tbaa !1782
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !1783
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !1786
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox4exec12VectorReaderINS2_10CustomTypeINS2_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS8_EESaISB_EE11_M_allocateEm.exit.i, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_10CustomTypeINS1_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS7_EED2Ev.exit
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_10CustomTypeINS1_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS7_EED2Ev.exit ] ; 2 uses
  %i.bk = phi ptr [ %.pre40, %.lr.ph ], [ %i.ej, %_ZNSt10unique_ptrIN8facebook5velox4exec12VectorReaderINS1_10CustomTypeINS1_17TimeWithTimezoneTELb1EEEEESt14default_deleteIS7_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %indvars.iv ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !371, !range !144, !noundef !145
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt27__throw_bad_optional_accessv() #38
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %bb.g
  unreachable

_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit: ; preds = %bb.f
  %i.bp = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %bb.h unwind label %.loopexit  ; 2 uses

bb.h:                                             ; preds = %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7994)
  %i.bq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc18 unwind label %.loopexit ; 5 uses

.noexc18:                                         ; preds = %bb.h
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !402, !noalias !7994
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1584, !noalias !7994 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7995)
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !166, !noalias !7996 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc18
  %i.bx = tail call ptr @__dynamic_cast(ptr nonnull %i.bv, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox30CanProvideCustomComparisonTypeILNS0_8TypeKindE4EEE, i64 0) #31, !noalias !7996 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i, label %bb.j

end_hunk_2
