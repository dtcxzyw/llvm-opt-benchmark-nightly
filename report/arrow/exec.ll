Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/exec?download=true
inline.NumInlined: 3476
inline.NumDeleted: 1689
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5arrow7compute9ExecBatchC2ERKNS_11RecordBatchE:bb.a
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #28
  unreachable

_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EEC2EmRKS2_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %bb.b

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.d = mul nuw nsw i64 %i.b, 24                 ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #29 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.d, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.e, i64 %i.d
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EEC2EmRKS2_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink.i, ptr %i.h, align 8, !tbaa !68
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.g, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  invoke void @_ZN5arrow5DatumC1Eb(ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext true)
          to label %.noexc15 unwind label %bb.v

.noexc15:                                         ; preds = %bb.b
  invoke void @_ZN5arrow7compute7literalENS_5DatumE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::Expression") align 8 %i.j, ptr noundef nonnull %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.noexc15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !426
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #30
  unreachable

bb.e:                                             ; preds = %.noexc15
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  br label %.body

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !429
  store i64 %i.p, ptr %i.n, align 8, !tbaa !85
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.q, align 8, !tbaa !86
  %i.r = load ptr, ptr %1, align 8, !tbaa !88
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.w       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !91   ; 3 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !92   ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i16, label %.noexc19, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp ugt i64 %i.aa, 9223372036854775792
  br i1 %i.ab, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i, !prof !93

.noexc.i.i:                                       ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc18 unwind label %bb.w

.noexc18:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #29
          to label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i..noexc19_crit_edge unwind label %bb.w

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i..noexc19_crit_edge: ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !430
  %.pre23 = load ptr, ptr %i.v, align 8, !tbaa !430
  br label %.noexc19

.noexc19:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i..noexc19_crit_edge, %bb.g
  %i.ad = phi ptr [ %i.w, %bb.g ], [ %.pre23, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i..noexc19_crit_edge ] ; 2 uses
  %i.ae = phi ptr [ %i.x, %bb.g ], [ %.pre, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i..noexc19_crit_edge ] ; 2 uses
  %i.af = phi ptr [ null, %bb.g ], [ %i.ac, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i..noexc19_crit_edge ] ; 8 uses
  %i.ag = icmp eq ptr %i.ae, %i.ad
  br i1 %i.ag, label %.loopexit21, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc19, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.aq, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.af, %.noexc19 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ap, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ae, %.noexc19 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !94 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !95
  store <2 x ptr> %i.aj, ptr %.08.i.i.i.i.i, align 8, !tbaa !95
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !96
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !44
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !44
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.ad
  br i1 %i.ar, label %.loopexit21, label %.lr.ph.i.i.i.i.i, !llvm.loop !424

.loopexit21:                                      ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc19
  %.0.lcssa.i.i.i.i.i17 = phi ptr [ %i.af, %.noexc19 ], [ %i.aq, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 3 uses
  %i.as = ptrtoint ptr %.0.lcssa.i.i.i.i.i17 to i64
  %i.at = ptrtoint ptr %i.af to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 4                 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i20, label %.loopexit

.lr.ph.i.i.i.i.i20:                               ; preds = %.loopexit21
  %i.ax = load ptr, ptr %0, align 8, !tbaa !98
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i20
  %.015.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i20 ], [ %i.bg, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i ] ; 2 uses
  %.0814.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i20 ], [ %i.bf, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i ] ; 2 uses
  %.0913.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i20 ], [ %i.be, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.az = load <2 x ptr>, ptr %.0913.i.i.i.i.i, align 8, !tbaa !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i.i.i, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.az, ptr %4, align 16, !tbaa !95
  store i8 2, ptr %i.ay, align 16, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %.0814.i.i.i.i.i, ptr %3, align 8, !tbaa !103
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSM_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN5arrow5DatumaSEOS0_.exit.i.i.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #30
  unreachable

_ZN5arrow5DatumaSEOS0_.exit.i.i.i.i.i:            ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %_ZN5arrow5DatumaSEOS0_.exit.i.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #30
  unreachable

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i: ; preds = %_ZN5arrow5DatumaSEOS0_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.be = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i.i, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.0814.i.i.i.i.i, i64 24
  %i.bg = add nsw i64 %.015.i.i.i.i.i, -1
  %7 = icmp sgt i64 %.015.i.i.i.i.i, 1
  br i1 %7, label %bb.l, label %.loopexit, !llvm.loop !425

.loopexit:                                        ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, %.loopexit21
  %.not4.i.i.i = icmp eq ptr %i.af, %.0.lcssa.i.i.i.i.i17
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.by, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.af, %.loopexit ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !94 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bj, align 8, !tbaa !105
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !106
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !88
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #27, !inline_history !0
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !88
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #27, !inline_history !0
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !96
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bm, %bb.r ], [ %i.bw, %bb.s ]
  %i.bx = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bx, label %bb.t, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !93

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.p, %.lr.ph.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.by, %.0.lcssa.i.i.i.i.i17
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, %.loopexit
  %.not.i.i1.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aa) #31
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.u
  ret void

bb.v:                                             ; preds = %bb.b
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i, %bb.f
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j) #27
  br label %.body

.body:                                            ; preds = %bb.v, %bb.e, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.w ], [ %i.bz, %bb.v ], [ %i.m, %bb.e ]
  call void @_ZNSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  resume { ptr, i32 } %.pn.pn
}

declare noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !106
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !431
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !431
  br label %_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !96
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !93

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt7variantIJN5arrow5DatumENS1_7compute10Expression9ParameterENS4_4CallEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !106
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !2
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !2
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !96
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute6detail16ExecSpanIterator4NextEPNS0_8ExecSpanE:bb.a
  br i1 %.not60, label %._crit_edge59, label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit.lr.ph

_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit.lr.ph: ; preds = %bb.u
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = sdiv exact i64 %i.es, 24
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit

._crit_edge59:                                    ; preds = %bb.aa, %bb.u
  %i.ex = load i64, ptr %i.ed, align 8, !tbaa !216
  %i.ey = add nsw i64 %i.ex, %.049
  store i64 %i.ey, ptr %i.ed, align 8, !tbaa !216
  br label %bb.ab

_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit:   ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit.lr.ph, %bb.aa
  %.04858 = phi i64 [ 0, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit.lr.ph ], [ %i.fy, %bb.aa ] ; 5 uses
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.ep, i64 %.04858
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load i8, ptr %i.fa, align 8, !tbaa !100
  %i.fc = icmp eq i8 %i.fb, 1
  br i1 %i.fc, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit
  %i.fd = load ptr, ptr %i.eu, align 8, !tbaa !222
  %i.fe = getelementptr inbounds nuw [136 x i8], ptr %i.fd, i64 %.04858 ; 6 uses
  %i.ff = load ptr, ptr %i.ev, align 8, !tbaa !218
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.04858 ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !164
  %i.fi = load ptr, ptr %i.ew, align 8, !tbaa !218
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.04858
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !164
  %i.fl = add nsw i64 %i.fk, %i.fh
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !242
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i64 %.049, ptr %i.fn, align 8, !tbaa !243
  %i.fo = load ptr, ptr %i.fe, align 8, !tbaa !244
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !260
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store i64 %.049, ptr %i.fs, align 8, !tbaa !261
  br label %_ZN5arrow9ArraySpan8SetSliceEll.exit

bb.x:                                             ; preds = %bb.v
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !263
  %.not.i54 = icmp eq ptr %i.fu, null
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  br i1 %.not.i54, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 -1, ptr %i.fv, align 8, !tbaa !261
  br label %_ZN5arrow9ArraySpan8SetSliceEll.exit

bb.z:                                             ; preds = %bb.x
  store i64 0, ptr %i.fv, align 8, !tbaa !261
  br label %_ZN5arrow9ArraySpan8SetSliceEll.exit

_ZN5arrow9ArraySpan8SetSliceEll.exit:             ; preds = %bb.w, %bb.y, %bb.z
  %i.fw = load i64, ptr %i.fg, align 8, !tbaa !164
  %i.fx = add nsw i64 %i.fw, %.049
  store i64 %i.fx, ptr %i.fg, align 8, !tbaa !164
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN5arrow9ArraySpan8SetSliceEll.exit, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit
  %i.fy = add nuw i64 %.04858, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fy, %i.et
  br i1 %exitcond.not, label %._crit_edge59, label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit, !llvm.loop !500

bb.ab:                                            ; preds = %bb.r, %._crit_edge59
  %.0 = phi i1 [ true, %._crit_edge59 ], [ false, %bb.r ]
  ret i1 %.0
}

declare void @_ZN5arrow8internal19FillZeroLengthArrayEPKNS_8DataTypeEPNS_9ArraySpanE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute6detail14PropagateNullsEPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::shared_ptr.136", align 16 ; 9 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.arrow::compute::detail::(anonymous namespace)::NullPropagator", align 8 ; 24 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !241
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !260
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !126, !alias.scope !533
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !231
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !267
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5arrow6Status8FromArgsIJRA86_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(86) @.str.25)
  br label %bb.ca

bb.f:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr %1, ptr %8, align 8, !tbaa !277
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !534
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.m, i8 0, i64 25, i1 false)
  store ptr %3, ptr %i.o, align 8, !tbaa !278
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
  store i8 0, ptr %i.p, align 8, !tbaa !279
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !280  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !280  ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %bb.g

._crit_edge.i.loopexit:                           ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i
  %i.x = trunc nuw i8 %i.bc to i1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.f
  %i.y = phi ptr [ %i.bf, %._crit_edge.i.loopexit ], [ null, %bb.f ] ; 4 uses
  %i.z = phi i1 [ %i.x, %._crit_edge.i.loopexit ], [ false, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !264
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !267 ; 4 uses
  %.not.i.i.not = icmp eq ptr %i.ac, null         ; 2 uses
  br i1 %.not.i.i.not, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit, label %bb.q

bb.g:                                             ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i, %.lr.ph.i
  %i.ad = phi i8 [ 0, %.lr.ph.i ], [ %i.bc, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 2 uses
  %i.ae = phi ptr [ null, %.lr.ph.i ], [ %i.bd, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 9 uses
  %i.af = phi ptr [ null, %.lr.ph.i ], [ %i.be, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 5 uses
  %i.ag = phi ptr [ null, %.lr.ph.i ], [ %i.bf, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 5 uses
  %.sroa.017.020.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.bg, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 5 uses
  %i.ah = tail call fastcc noundef i32 @_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS0_9ExecValueE(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.017.020.i)
  switch i32 %i.ah, label %bb.i [
    i32 2, label %bb.h
    i32 1, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i
  ]

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.n, align 8, !tbaa !535
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = phi i8 [ 1, %bb.h ], [ %i.ad, %bb.g ]   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !230
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.j, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %.sroa.017.020.i, ptr %i.ag, align 8, !tbaa !281
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.v, align 8, !tbaa !536
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.an = ptrtoint ptr %i.af to i64
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 7 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.m, label %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a

.noexc.i:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.l
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #29
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a ; 5 uses

.noexc15.i:                                       ; preds = %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store ptr %.sroa.017.020.i, ptr %i.ay, align 8, !tbaa !281
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.n, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.n:                                             ; preds = %.noexc15.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.ae, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.n, %.noexc15.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ap) #31
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.o, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !537
  store ptr %i.ba, ptr %i.v, align 8, !tbaa !536
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.bb, ptr %i.w, align 8, !tbaa !538
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a: ; preds = %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.m
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.p

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i: ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.k, %bb.i, %bb.g
  %i.bc = phi i8 [ %i.ai, %bb.k ], [ %i.ai, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.ad, %bb.g ], [ %i.ai, %bb.i ] ; 2 uses
  %i.bd = phi ptr [ %i.ae, %bb.k ], [ %i.ax, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.ae, %bb.g ], [ %i.ae, %bb.i ]
  %i.be = phi ptr [ %i.af, %bb.k ], [ %i.bb, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.af, %bb.g ], [ %i.af, %bb.i ]
  %i.bf = phi ptr [ %i.am, %bb.k ], [ %i.ba, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.ag, %bb.g ], [ %i.ag, %bb.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i, i64 136 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.t
  br i1 %i.bh, label %._crit_edge.i.loopexit, label %bb.g

bb.p:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ap) #31
  br label %common.resume

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a, %bb.p, %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body67, %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27 ], [ %lpad.loopexit.split-lp85, %bb.p ], [ %lpad.loopexit.split-lp85, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %._crit_edge.i
  store i8 1, ptr %i.p, align 8, !tbaa !279
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ac, i64 9
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !288, !range !135, !noundef !136
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bm = load i8, ptr %i.bl, align 8, !range !135
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = select i1 %i.bk, i1 %i.bn, i1 false, !prof !127
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = select i1 %i.bo, ptr %i.bq, ptr null, !prof !127
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !289
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit

_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit: ; preds = %._crit_edge.i, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  br i1 %i.z, label %bb.r, label %bb.ag

bb.r:                                             ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !278, !noalias !541 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !192, !noalias !541 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store atomic i64 %i.bv, ptr %i.bw seq_cst, align 8, !noalias !541
  %i.bx = load i8, ptr %i.p, align 8, !tbaa !279, !range !135, !noalias !541, !noundef !136
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !289, !noalias !541
  br label %.invoke

.invoke:                                          ; preds = %bb.af, %bb.s
  %i.cb = phi ptr [ %i.ca, %bb.s ], [ %i.du, %bb.af ]
  %.pn = phi ptr [ %i.bt, %bb.s ], [ %i.dv, %bb.af ]
  %i.cc = phi i64 [ %i.bv, %bb.s ], [ %i.dx, %bb.af ]
  %.in76 = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %i.cd = load i64, ptr %.in76, align 8, !tbaa !231, !noalias !541
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %i.cb, i64 noundef %i.cd, i64 noundef %i.cc, i1 noundef zeroext false)
          to label %.sink.split.i.i unwind label %.body

bb.t:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %i.m, align 8, !tbaa !542, !noalias !541 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.y
  br i1 %i.cf, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %bb.ae
  %.sroa.022.026.i.i = phi ptr [ %i.dp, %bb.ae ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cg = load ptr, ptr %.sroa.022.026.i.i, align 8, !tbaa !281, !noalias !541 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !261, !noalias !541
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !243, !noalias !541
  %i.cl = icmp eq i64 %i.ci, %i.ck
  br i1 %i.cl, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !543, !noalias !541 ; 3 uses
  %.not.i.i11 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i11, label %bb.ae, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !94, !noalias !544 ; 2 uses
  %i.cq = load <2 x ptr>, ptr %i.cn, align 8, !tbaa !95, !noalias !544
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.critedge.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !96, !noalias !544
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !44, !noalias !544
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !44, !noalias !544
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.cv = atomicrmw volatile add ptr %i.cr, i32 1 acq_rel, align 4, !noalias !544 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i

_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i:        ; preds = %bb.x, %bb.w, %.critedge.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !264, !noalias !541 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !94, !noalias !541 ; 8 uses
  store <2 x ptr> %i.cq, ptr %i.cx, align 8, !tbaa !95, !noalias !541
  %.not.i.i.i.i13.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i13.i.i, label %.sink.split.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.db = load atomic i64, ptr %i.da acquire, align 8, !noalias !541 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 4294967297
  %i.dd = trunc i64 %i.db to i32                  ; 2 uses
  br i1 %i.dc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.da, align 8, !tbaa !105, !noalias !541
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 0, ptr %i.de, align 4, !tbaa !106, !noalias !541
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !88, !noalias !541
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !541
  tail call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #27, !noalias !541, !inline_history !509
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !88, !noalias !541
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !541
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #27, !noalias !541, !inline_history !509
  br label %.sink.split.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !96, !noalias !541
  %.not.i.i.i.i.i14.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i.i14.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dm = add nsw i32 %i.dd, -1
  store i32 %i.dm, ptr %i.da, align 8, !tbaa !44, !noalias !541
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dn = atomicrmw volatile add ptr %i.da, i32 -1 acq_rel, align 4, !noalias !541
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dd, %bb.ab ], [ %i.dn, %bb.ac ]
  %i.do = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.do, label %bb.ad, label %.sink.split.i.i, !prof !93

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #27, !noalias !541
  br label %.sink.split.i.i

bb.ae:                                            ; preds = %bb.u, %.lr.ph.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.022.026.i.i, i64 8 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.y
  br i1 %i.dq, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %.lr.ph.i.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.ae, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !541
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15EnsureAllocatedEv(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(65) %8)
          to label %.noexc12 unwind label %.body

.noexc12:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.dr = load ptr, ptr %7, align 8, !tbaa !126, !noalias !541 ; 2 uses
  store ptr %i.dr, ptr %0, align 8, !tbaa !126, !alias.scope !541
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !541
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.af, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

bb.af:                                            ; preds = %.noexc12
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !289, !noalias !541
  %i.dv = load ptr, ptr %i.o, align 8, !tbaa !278, !noalias !541 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !192, !noalias !541
  br label %.invoke

.sink.split.i.i:                                  ; preds = %.invoke, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.z, %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i
  store ptr null, ptr %0, align 8, !tbaa !126, !alias.scope !541
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

bb.ag:                                            ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit
  %i.dy = load ptr, ptr %i.o, align 8, !tbaa !278, !noalias !539 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 3 uses
  store atomic i64 -1, ptr %i.dz seq_cst, align 8, !noalias !539
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !542, !noalias !539 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ec = icmp eq ptr %i.ea, %i.y
  br i1 %i.ec, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  store atomic i64 0, ptr %i.dz seq_cst, align 8, !noalias !539
  %i.ed = load i8, ptr %i.p, align 8, !tbaa !279, !range !135, !noalias !539, !noundef !136
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.ai, label %.noexc14

bb.ai:                                            ; preds = %bb.ah
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !289, !noalias !539
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !231, !noalias !539
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !192, !noalias !539
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %i.eg, i64 noundef %i.ei, i64 noundef %i.ek, i1 noundef zeroext true)
          to label %.noexc14 unwind label %.body

.noexc14:                                         ; preds = %bb.ai, %bb.ah
  store ptr null, ptr %0, align 8, !tbaa !126, !alias.scope !545
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !638
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.d, !noalias !636

bb.d:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #30, !noalias !636
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !638
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !8

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.ad, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not11.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i26, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32
  %.013.i.i.i28 = phi ptr [ %i.ao, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %i.ae, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0912.i.i.i29 = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %1, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !100, !alias.scope !640 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30:          ; preds = %.lr.ph.i.i.i27
  %i.aj = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 8
  %i.ak = load <2 x ptr>, ptr %.0912.i.i.i29, align 8, !tbaa !95, !alias.scope !640
  store ptr null, ptr %i.aj, align 8, !tbaa !94, !alias.scope !640
  store <2 x ptr> %i.ak, ptr %.013.i.i.i28, align 8, !tbaa !95, !alias.scope !639
  store ptr null, ptr %.0912.i.i.i29, align 8, !tbaa !95, !alias.scope !640
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30, %.lr.ph.i.i.i27
  store i8 %i.ah, ptr %i.af, align 8, !tbaa !100, !alias.scope !639
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !641
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i29)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 unwind label %bb.e, !noalias !639

bb.e:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #30, !noalias !639
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !641
  %i.an = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27, !llvm.loop !8

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ae, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ao, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !68
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.as) #31
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !67
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !68
  ret void

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %i.q) #27
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  %i.ax = call ptr @__cxa_begin_catch(ptr %i.aw) #27 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #31
  invoke void @__cxa_rethrow() #28
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.au

bb.i:                                             ; preds = %bb.g
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #30
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !316
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !44     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !127

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !147
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !44
  store i32 %i.s, ptr %i.d, align 4, !tbaa !44
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !147
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !127

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !44
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !44
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !44
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !642

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !643

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !44
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !644

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !645

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !147
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !127

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !147
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !44
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !44
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !147
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !44
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !44
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !646

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !44
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !647

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !148   ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #28
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4, !tbaa !44    ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !44
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !44
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !648

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !44
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !649

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !127

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !44
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !44
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !127

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !44
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !44
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !316
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #31
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !148
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !147
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !316
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIlSaIlEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !319
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !219  ; 13 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !164    ; 11 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = sub i64 %i.f, %i.j                       ; 5 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !127

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !219
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !164
  store i64 %i.s, ptr %i.d, align 8, !tbaa !164
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !219
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !127

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !164
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !164
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %bb.k, %.lr.ph.i.i.i.prol
  %.06.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.prol ], [ %1, %bb.k ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %bb.k ]
  store i64 %i.i, ptr %.06.i.i.i.prol, align 8, !tbaa !164
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !650

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %bb.k
  %.06.i.i.i.unr = phi ptr [ %1, %bb.k ], [ %i.ah, %.lr.ph.i.i.i.prol ]
  %i.ai = icmp ult i64 %i.ae, 56
  br i1 %i.ai, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !164
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  store i64 %i.i, ptr %i.aj, align 8, !tbaa !164
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  store i64 %i.i, ptr %i.ak, align 8, !tbaa !164
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  store i64 %i.i, ptr %i.al, align 8, !tbaa !164
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIlSaIlEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 32
  store i64 %i.bs, ptr %i.cb, align 8, !tbaa !164
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 40
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !164
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 48
  store i64 %i.bs, ptr %i.cd, align 8, !tbaa !164
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 56
  store i64 %i.bs, ptr %i.ce, align 8, !tbaa !164
  %i.cf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i78.7 = icmp eq ptr %i.cf, %i.br
  br i1 %.not.i.i.i.i.i.i.i78.7, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !651

_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit
  %i.cg = icmp sgt i64 %i.bm, 8
  br i1 %i.cg, label %bb.u, label %bb.v, !prof !127

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bp, ptr align 8 %i.bb, i64 %i.bm, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.ch = icmp eq i64 %i.bm, 8
  br i1 %i.ch, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ci = load i64, ptr %i.bb, align 8, !tbaa !164
  store i64 %i.ci, ptr %i.bp, align 8, !tbaa !164
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %2 ; 3 uses
  %i.ck = sub i64 %i.f, %i.bl                     ; 4 uses
  %i.cl = icmp sgt i64 %i.ck, 8
  br i1 %i.cl, label %bb.x, label %bb.y, !prof !127

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr align 8 %1, i64 %i.ck, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.cm = icmp eq i64 %i.ck, 8
  br i1 %i.cm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cn = load i64, ptr %1, align 8, !tbaa !164
  store i64 %i.cn, ptr %i.cj, align 8, !tbaa !164
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  %.not.i82 = icmp eq ptr %i.bb, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !319
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.cr) #31
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.bp, ptr %0, align 8, !tbaa !218
  store ptr %i.co, ptr %i.c, align 8, !tbaa !219
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bk
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !319
  br label %_ZSt4fillIPllEvT_S1_RKT0_.exit

_ZSt4fillIPllEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, %bb.a
  ret void
}

declare void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !222    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 136                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !321
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 136                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 67818912035696881
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 67818912035696880, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.prol, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.p, align 8, !tbaa !261
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.q, i8 0, i64 112, i1 false)
  %i.r = add nsw i64 %.057.i.i.i.prol, -1         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 136 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !653

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 4
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.u, align 8, !tbaa !261
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.v, i8 0, i64 112, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.x, align 8, !tbaa !261
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.y, i8 0, i64 112, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 272
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.aa, align 8, !tbaa !261
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ab, i8 0, i64 112, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 408
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.ad, align 8, !tbaa !261
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ae, i8 0, i64 112, i1 false)
  %i.af = add nsw i64 %.057.i.i.i, -4             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 544 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !654

_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !237
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %i.n, %1
  br i1 %i.ah, label %bb.d, label %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #28
  unreachable

_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ai = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 67818912035696880) ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 136
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #29 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i30.prol ], [ %i.am, %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i31.prol, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.an, align 8, !tbaa !261
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ao, i8 0, i64 112, i1 false)
  %i.ap = add nsw i64 %.057.i.i.i32.prol, -1      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 136 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !655

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.am, %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aq, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN5arrow7compute9ExecValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %.lr.ph.i.i.i30.prol ]
  %2 = icmp ult i64 %1, 4
  br i1 %2, label %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bd, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 13 uses
  %.057.i.i.i32 = phi i64 [ %i.bc, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i31, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.ar, align 8, !tbaa !261
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.as, i8 0, i64 112, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 136
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.au, align 8, !tbaa !261
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.av, i8 0, i64 112, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 272
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.ax, align 8, !tbaa !261
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ay, i8 0, i64 112, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 408
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.ba, align 8, !tbaa !261
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bb, i8 0, i64 112, i1 false)
  %i.bc = add nsw i64 %.057.i.i.i32, -4           ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 544
  %.not.i.i.i33.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !654

_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i37 ], [ %i.al, %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.0911.i.i.i, i64 104, i1 false), !alias.scope !662
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.bg = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !281, !alias.scope !661
  store <2 x ptr> %i.bg, ptr %i.be, align 8, !tbaa !281, !alias.scope !660
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !240, !alias.scope !661
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !240, !alias.scope !660
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false), !alias.scope !661
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !230, !alias.scope !661
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !230, !alias.scope !660
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 136 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 136
  %.not.i.i.i38 = icmp eq ptr %i.bn, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !659

_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN5arrow7compute9ExecValueESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !321
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.br) #31
  br label %_ZNSt12_Vector_baseIN5arrow7compute9ExecValueESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN5arrow7compute9ExecValueESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.al, ptr %0, align 8, !tbaa !222
  %i.bs = getelementptr inbounds nuw [136 x i8], ptr %i.am, i64 %1
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !237
  %i.bt = getelementptr inbounds nuw [136 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bt, ptr %i.h, align 8, !tbaa !321
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow7compute9ExecValueEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5arrow7compute9ExecValueESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute9ExecValueD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !239  ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i12.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc.i
  %.0.i.i3.i = phi ptr [ %i.e, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  invoke void @_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i.i3.i)
          to label %.noexc.i unwind label %bb.b, !inline_history !12

.noexc.i:                                         ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 128 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !13

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #30, !inline_history !14
  unreachable

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i: ; preds = %.noexc.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !238
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i, %bb.a
  %i.h = phi ptr [ %.pre.i, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !240
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #31, !inline_history !15
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_(ptr noundef %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !239  ; 2 uses
  %.not.i.i1.i1 = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i1.i1, label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.noexc.i
  %.0.i.i.i2 = phi ptr [ %i.e, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  invoke void @_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i.i.i2)
          to label %.noexc.i unwind label %bb.b, !inline_history !663

.noexc.i:                                         ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i.i2, i64 128 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i1.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.loopexit, label %.lr.ph, !llvm.loop !13

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.loopexit: ; preds = %.noexc.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !238
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i:  ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.loopexit, %bb.a
  %i.f = phi ptr [ %.pre, %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #30, !inline_history !664
  unreachable

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !240
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.m) #31, !inline_history !665
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i, %bb.c
  ret void
}

declare void @_ZN5arrow9ArraySpan14FillFromScalarERKNS_6ScalarE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_3
