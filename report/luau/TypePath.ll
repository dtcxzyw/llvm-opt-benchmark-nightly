Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypePath?download=true
inline.NumInlined: 1540
inline.NumDeleted: 626
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4Luau24traverseForFlattenedPackEPKNS_4TypeERKNS_8TypePath4PathENS_7NotNullINS_12BuiltinTypesEEENS7_INS_9TypeArenaEEE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ao = invoke { ptr, i8 } @_ZN4Luau15traverseForPackEPKNS_4TypeERKNS_8TypePath4PathENS_7NotNullINS_12BuiltinTypesEEENS7_INS_9TypeArenaEEE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %3, ptr %4)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ap = extractvalue { ptr, i8 } %i.ao, 0
  %i.aq = extractvalue { ptr, i8 } %i.ao, 1
  %.not4.i.i.i.i = icmp eq ptr %i.ak, %i.ab
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i ], [ %i.ak, %bb.f ] ; 3 uses
  %i.ar = load i32, ptr %.05.i.i.i.i, align 8, !tbaa !21
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE9tableDtorE, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  invoke void %i.au(ptr noundef nonnull %i.av)
          to label %_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #27
  unreachable

_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.ab
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i, %bb.f
  %.not.i.i1.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i
  %i.az = ptrtoint ptr %i.an to i64
  %i.ba = ptrtoint ptr %i.ak to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bb) #28
  br label %_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EED2Ev.exit

_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bc = trunc nuw i8 %i.aq to i1
  br i1 %i.bc, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.bd, align 8, !tbaa !190
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.u

bb.j:                                             ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau8TypePath4PathD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  call void @_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  br label %.body

.body:                                            ; preds = %bb.d, %bb.c, %bb.j
  %.pn = phi { ptr, i32 } [ %i.be, %bb.j ], [ %i.ac, %bb.c ], [ %i.ac, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.t

bb.k:                                             ; preds = %_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !50  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.v                     ; 3 uses
  %i.bi = sdiv exact i64 %i.bh, 48
  %i.bj = icmp ugt i64 %i.bi, 192153584101141162
  br i1 %i.bj, label %bb.l, label %_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i.i48

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #29
          to label %.noexc.i54 unwind label %bb.m

.noexc.i54:                                       ; preds = %bb.l
  unreachable

_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i.i48: ; preds = %bb.k
  %.not.i.i.i49 = icmp eq ptr %i.bf, %i.u
  br i1 %.not.i.i.i49, label %_ZNSt12_Vector_baseIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EE11_M_allocateEm.exit.i.i53, label %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i50

_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i50: ; preds = %_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i.i48
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #30
          to label %_ZNSt12_Vector_baseIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EE11_M_allocateEm.exit.i.i53 unwind label %bb.m

_ZNSt12_Vector_baseIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EE11_M_allocateEm.exit.i.i53: ; preds = %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i50, %_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i.i48
  %i.bl = phi ptr [ null, %_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i.i48 ], [ %i.bk, %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i50 ] ; 3 uses
  store ptr %i.bl, ptr %8, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !24
  %i.bo = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7VariantIJNS2_8TypePath8PropertyENS4_5IndexENS4_9TypeFieldENS4_9PackFieldENS4_9PackSliceENS4_9ReductionENS4_18GenericPackMappingEEEESt6vectorISC_SaISC_EEEEPSC_ET0_T_SL_SK_(ptr %i.u, ptr %i.bf, ptr noundef %i.bl)
          to label %bb.o unwind label %bb.m       ; 4 uses

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EE11_M_allocateEm.exit.i.i53, %_ZNSt15__new_allocatorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEE8allocateEmPKv.exit.i.i.i50, %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %8, align 8, !tbaa !18    ; 3 uses
  %.not.i.i7.i51 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i7.i51, label %.body55, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !24
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #28
  br label %.body55

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EE11_M_allocateEm.exit.i.i53
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bo, ptr %i.bw, align 8, !tbaa !19
  %i.bx = load ptr, ptr %8, align 8, !tbaa !18    ; 6 uses
  store ptr %i.bx, ptr %7, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bo, ptr %i.by, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ca = load ptr, ptr %i.bn, align 8, !tbaa !24 ; 2 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN4Luau19flattenPackWithPathEPKNS_11TypePackVarERKNS_8TypePath4PathE(ptr dead_on_unwind writable sret(%"struct.Luau::TypePack") align 8 %0, ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  %.not4.i.i.i.i58 = icmp eq ptr %i.bx, %i.bo
  br i1 %.not4.i.i.i.i58, label %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i65, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %bb.p, %_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i61
  %.05.i.i.i.i60 = phi ptr [ %i.ci, %_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i61 ], [ %i.bx, %bb.p ] ; 3 uses
  %i.cb = load i32, ptr %.05.i.i.i.i60, align 8, !tbaa !21
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE9tableDtorE, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i60, i64 8
  invoke void %i.ce(ptr noundef nonnull %i.cf)
          to label %_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i61 unwind label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i59
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  tail call void @__clang_call_terminate(ptr %i.ch) #27
  unreachable

_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i61: ; preds = %.lr.ph.i.i.i.i59
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i60, i64 48 ; 2 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.ci, %i.bo
  br i1 %.not.i.i.i.i62, label %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i65, label %.lr.ph.i.i.i.i59, !llvm.loop !0

_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i65: ; preds = %_ZSt8_DestroyIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEEvPT_.exit.i.i.i.i61, %bb.p
  %.not.i.i1.i.i66 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i.i66, label %_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EED2Ev.exit78, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i65
  %i.cj = ptrtoint ptr %i.ca to i64
  %i.ck = ptrtoint ptr %i.bx to i64
  %i.cl = sub i64 %i.cj, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cl) #28
  br label %_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EED2Ev.exit78

_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EED2Ev.exit78: ; preds = %_ZSt8_DestroyIPN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESA_EvT_SC_RSaIT0_E.exit.i.i65, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.u

bb.s:                                             ; preds = %bb.o
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau8TypePath4PathD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #26
  br label %.body55

.body55:                                          ; preds = %bb.n, %bb.m, %bb.s
  %.pn42 = phi { ptr, i32 } [ %i.cm, %bb.s ], [ %i.bp, %bb.m ], [ %i.bp, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.t

bb.t:                                             ; preds = %.body55, %.body
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %.body55 ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn42.pn

bb.u:                                             ; preds = %bb.i, %_ZNSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EED2Ev.exit78, %.critedge.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Luau13matchesPrefixERKNS_8TypePath4PathES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %.not1216 = icmp eq ptr %i.a, %i.d              ; 3 uses
  %i.g = icmp eq ptr %i.b, %i.f
  %or.cond17 = select i1 %.not1216, i1 true, i1 %i.g
  br i1 %or.cond17, label %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %.not1222 = phi i1 [ %.not12, %.backedge ], [ %.not1216, %bb.a ] ; 10 uses
  %.sroa.08.019 = phi ptr [ %i.i, %.backedge ], [ %i.b, %bb.a ] ; 5 uses
  %.sroa.010.018 = phi ptr [ %i.h, %.backedge ], [ %i.a, %bb.a ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.019, i64 48 ; 2 uses
  %i.j = load i32, ptr %.sroa.010.018, align 8, !tbaa !21 ; 2 uses
  %i.k = load i32, ptr %.sroa.08.019, align 8, !tbaa !21
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %bb.b, label %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.019, i64 8 ; 7 uses
  switch i32 %i.j, label %default.switch.case.unreachable.i.i [
    i32 0, label %call.0.i.i
    i32 1, label %call.1.i.i
    i32 2, label %call.2.i.i
    i32 3, label %call.3.i.i
    i32 4, label %call.4.i.i
    i32 5, label %call.5.i.i
    i32 6, label %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit
  ], !prof !51

default.switch.case.unreachable.i.i:              ; preds = %bb.b
  unreachable

call.0.i.i:                                       ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.019, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit.thread

bb.c:                                             ; preds = %call.0.i.i
  %i.t = icmp eq i64 %i.p, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i: ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !30
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.v, ptr %i.u, i64 %i.p)
  %i.w = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i, label %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 40
  %i.y = load i8, ptr %i.x, align 8, !tbaa !35, !range !36, !noundef !37
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.019, i64 40
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !35, !range !36, !noundef !37
  %i.ab = icmp eq i8 %i.y, %i.aa
  br i1 %i.ab, label %.backedge, label %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit.thread

call.1.i.i:                                       ; preds = %bb.b
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !40
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !40
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %.backedge, label %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit.thread

call.2.i.i:                                       ; preds = %bb.b
  %i.af = load i32, ptr %i.m, align 8, !tbaa !56
  %i.ag = load i32, ptr %i.n, align 8, !tbaa !56
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %.backedge, label %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit.thread

call.3.i.i:                                       ; preds = %bb.b
  %i.ai = load i32, ptr %i.m, align 8, !tbaa !58
  %i.aj = load i32, ptr %i.n, align 8, !tbaa !58
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %.backedge, label %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit.thread

call.4.i.i:                                       ; preds = %bb.b
  %i.al = load i64, ptr %i.m, align 8, !tbaa !42
  %i.am = load i64, ptr %i.n, align 8, !tbaa !42
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %.backedge, label %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit.thread

call.5.i.i:                                       ; preds = %bb.b
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %.backedge, label %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit.thread

_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit: ; preds = %bb.b
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %.backedge, label %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit.thread

.backedge:                                        ; preds = %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i, %call.5.i.i, %call.4.i.i, %call.3.i.i, %call.2.i.i, %call.1.i.i
  %.not12 = icmp eq ptr %i.h, %i.d                ; 3 uses
  %i.au = icmp eq ptr %i.i, %i.f
  %or.cond = select i1 %.not12, i1 true, i1 %i.au
  br i1 %or.cond, label %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit.thread, label %.lr.ph, !llvm.loop !191

_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit.thread: ; preds = %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit, %.backedge, %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i, %call.0.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i, %call.5.i.i, %call.4.i.i, %call.3.i.i, %call.2.i.i, %call.1.i.i, %bb.a
  %.not12.lcssa = phi i1 [ %.not1216, %bb.a ], [ %.not1222, %_ZNK4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEneERKS9_.exit ], [ %.not12, %.backedge ], [ %.not1222, %.lr.ph ], [ %.not1222, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i ], [ %.not1222, %call.0.i.i ], [ %.not1222, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i ], [ %.not1222, %call.5.i.i ], [ %.not1222, %call.4.i.i ], [ %.not1222, %call.3.i.i ], [ %.not1222, %call.2.i.i ], [ %.not1222, %call.1.i.i ]
  ret i1 %.not12.lcssa
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #13

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4LuauL8fnVisitVIRZNS_8toStringB5cxx11ERKNS_8TypePath4PathEbE3$_0KNS1_8PropertyEEEvRT_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !37, !align !109
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 91, ptr %i.d, align 1, !tbaa !32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !82
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef signext 91) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i8, ptr %i.o, align 8, !tbaa !35, !range !36, !noundef !37
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !37, !align !109
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.65, i64 noundef 5) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.66, i64 noundef 6) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !37, !align !109
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 34, ptr %i.c, align 1, !tbaa !32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !73
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !82
  %.not.i3.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.c, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit5.i

bb.h:                                             ; preds = %bb.f
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext 34) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit5.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit5.i: ; preds = %bb.h, %bb.g
  %.0.i4.i = phi ptr [ %i.ad, %bb.g ], [ %i.w, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.af = load ptr, ptr %1, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !31
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i4.i, ptr noundef %i.af, i64 noundef %i.ah) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 34, ptr %i.b, align 1, !tbaa !32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !82
  %.not.i6.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i6.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit5.i
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit8.i

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit5.i
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i8 noundef signext 34) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit8.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit8.i: ; preds = %bb.j, %bb.i
  %.0.i7.i = phi ptr [ %i.ap, %bb.i ], [ %i.ai, %bb.j ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 93, ptr %i.a, align 1, !tbaa !32
  %i.ar = load ptr, ptr %.0.i7.i, align 8, !tbaa !73
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %.0.i7.i, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !82
  %.not.i9.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit8.i
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i7.i, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %"_ZZN4Luau8toStringB5cxx11ERKNS_8TypePath4PathEbENK3$_0clIRKNS0_8PropertyEEEDaOT_.exit"

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit8.i
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i7.i, i8 noundef signext 93) ; 0 uses
  br label %"_ZZN4Luau8toStringB5cxx11ERKNS_8TypePath4PathEbENK3$_0clIRKNS0_8PropertyEEEDaOT_.exit"

"_ZZN4Luau8toStringB5cxx11ERKNS_8TypePath4PathEbENK3$_0clIRKNS0_8PropertyEEEDaOT_.exit": ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !110, !nonnull !37
  store i8 0, ptr %i.ba, align 1, !tbaa !62
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4LuauL8fnVisitVIRZNS_8toStringB5cxx11ERKNS_8TypePath4PathEbE3$_0KNS1_5IndexEEEvRT_PNSt11conditionalIXsr3stdE10is_const_vIT0_EEKvvE4typeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !37, !align !109
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 91, ptr %i.b, align 1, !tbaa !32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !82
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext 91) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.m = load i64, ptr %1, align 8, !tbaa !40     ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.n = icmp ult i64 %i.m, 10
  br i1 %i.n, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i, %bb.i
  %.029.i.i.i = phi i32 [ %i.v, %bb.i ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ] ; 4 uses
  %.02328.i.i.i = phi i64 [ %i.u, %bb.i ], [ %i.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ] ; 5 uses
  %i.o = icmp ult i64 %.02328.i.i.i, 100
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.p = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.q = icmp ult i64 %.02328.i.i.i, 1000
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = icmp ult i64 %.02328.i.i.i, 10000
end_hunk_0
