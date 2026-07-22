inline.NumInlined: 3034
inline.NumDeleted: 1650
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5arrow7compute8internal12_GLOBAL__N_118IndicesNonZeroExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.g = load ptr, ptr %6, align 8, !tbaa !198    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !201
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #26
  br label %.body

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EEC2ESt16initializer_listIS1_ERKS2_.exit: ; preds = %_ZN5arrow9ArraySpanC2ERKS0_.exit
  %i.m = load i64, ptr %2, align 8, !tbaa !202
  invoke fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_19DoNonZeroERKSt6vectorINS_9ArraySpanESaIS4_EElPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.m, ptr noundef %4)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.g

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EEC2ESt16initializer_listIS1_ERKS2_.exit
  %i.n = load ptr, ptr %5, align 8, !tbaa !74     ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !74
  store ptr null, ptr %5, align 8, !tbaa !74
  %i.o = load ptr, ptr %6, align 8, !tbaa !198    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !207  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.o, %_ZN5arrow6StatusD2Ev.exit ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i), !inline_history !208
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !209

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, %_ZN5arrow6StatusD2Ev.exit
  %i.s = phi ptr [ %.pre.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i ], [ %i.o, %_ZN5arrow6StatusD2Ev.exit ] ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !201
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #26, !inline_history !210
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !198  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !207 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.z, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !211
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i.i17, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !209

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.y, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit
  %i.ad = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.z, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !201
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #26, !inline_history !212
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.aj = icmp eq ptr %i.n, null
  br i1 %i.aj, label %_ZN5arrow6StatusD2Ev.exit21, label %.critedge

bb.f:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.g:                                             ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EEC2ESt16initializer_listIS1_ERKS2_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #24
  br label %.body

.body:                                            ; preds = %bb.c, %bb.b, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.g ], [ %i.f, %bb.b ], [ %i.f, %bb.c ]
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.f ], [ %.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn.pn.pn

_ZN5arrow6StatusD2Ev.exit21:                      ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.am = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #24 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !213
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow9ArraySpanD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit21
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !86 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ap, align 8, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !89
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !90
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #24, !inline_history !216
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #24, !inline_history !216
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i23 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.as, %bb.k ], [ %i.bc, %bb.l ]
  %i.bd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bd, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_125IndicesNonZeroExecChunkedEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.89", align 8    ; 13 uses
  %5 = alloca %"struct.arrow::ArraySpan", align 8 ; 13 uses
  %6 = alloca %"class.std::shared_ptr.86", align 8 ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !217    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !220
  %.not.i.i.i = icmp eq i8 %i.c, 3
  br i1 %.not.i.i.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.36, ptr %i.e, align 8, !tbaa !222
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #23
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !225  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !228
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !231
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN5arrow9ArraySpanD2Ev.exit, %_ZNK5arrow5Datum13chunked_arrayEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !232
  invoke fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_19DoNonZeroERKSt6vectorINS_9ArraySpanESaIS4_EElPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.x, ptr noundef %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.h

bb.c:                                             ; preds = %.lr.ph, %_ZN5arrow9ArraySpanD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5arrow9ArraySpanD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %8 = load ptr, ptr %i.f, align 8, !tbaa !231
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !245
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.p, align 8, !tbaa !251
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.q, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(120) %i.ab)
          to label %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.t) #24
  br label %.body

_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit:      ; preds = %bb.c
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !207 ; 6 uses
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !201
  %.not.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i, label %bb.e, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.thread

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.thread: ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %5, i64 104, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.ag = load <2 x ptr>, ptr %i.t, align 8, !tbaa !256
  store <2 x ptr> %i.ag, ptr %i.af, align 8, !tbaa !256
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !201
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !201
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store ptr %i.aj, ptr %i.r, align 8, !tbaa !207
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit
  invoke void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE9push_backEOS1_.exit unwind label %bb.g

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.e
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !198 ; 3 uses
  %.pre32 = load ptr, ptr %i.u, align 8, !tbaa !207 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %.pre, %.pre32
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE9push_backEOS1_.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.pre, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !211
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ak, %.pre32
  br i1 %.not.i.i.i21, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !209

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.t, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE9push_backEOS1_.exit
  %i.al = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %.pre, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !201
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #26, !inline_history !212
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.thread, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !228
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !231
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %sext = shl i64 %i.au, 28
  %i.av = ashr i64 %sext, 32
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %bb.c, label %._crit_edge, !llvm.loop !257

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #24
  br label %.body

.body:                                            ; preds = %bb.d, %bb.g
  %.pn18 = phi { ptr, i32 } [ %i.ax, %bb.g ], [ %i.ac, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.p

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %._crit_edge
  %i.ay = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN5arrow6StatusD2Ev.exit25, label %.critedge

bb.h:                                             ; preds = %._crit_edge
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.p

_ZN5arrow6StatusD2Ev.exit25:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bb = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEEaSIS7_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS2_S5_S7_S9_SB_SD_EE4typeEE18is_constructible_vISL_SI_E15is_assignable_vIRSL_SI_EERSE_E4typeESJ_(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(16) %6) #24 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !258
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit25
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !86 ; 8 uses
  %.not.i.i26 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i26, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.be, align 8, !tbaa !87
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !89
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !90
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #24, !inline_history !216
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !90
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #24, !inline_history !216
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i27 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.l ], [ %i.br, %bb.m ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.bt = load ptr, ptr %4, align 8, !tbaa !198   ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !207 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i1.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.bw, %.lr.ph.i ], [ %i.bt, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i), !inline_history !208
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 128 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.bw, %i.bv
  br i1 %.not.i.i28, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !209

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bx = phi ptr [ %.pre.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i ], [ %i.bt, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !201
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #26, !inline_history !210
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.p:                                             ; preds = %bb.h, %.body
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %.body ], [ %i.ba, %bb.h ]
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn18.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN5arrow7compute8internal12_GLOBAL__N_126MakeIndicesNonZeroFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11FunctionDocEENK3$_0clERKSt6vectorISt10shared_ptrINS_8DataTypeEESaISE_EE"(ptr %.0.val, ptr nofree readonly captures(none) %.8.val, ptr nofree readonly captures(address) %.0.val1, ptr nofree readnone captures(address) %.8.val3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %1 = alloca %"class.std::vector.58", align 8    ; 8 uses
  %2 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 11 uses
  %3 = alloca %"class.std::shared_ptr.54", align 8 ; 5 uses
  %4 = alloca %"class.arrow::compute::OutputType", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.54", align 8 ; 5 uses
  %6 = alloca %"class.std::shared_ptr.66", align 8 ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 3 uses
  %8 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 6 uses
  %i.a = icmp eq ptr %.0.val1, %.8.val3
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN5arrow7compute12VectorKernelD2Ev.exit
  %.sroa.06.016 = phi ptr [ %.0.val1, %.lr.ph ], [ %i.ih, %_ZN5arrow7compute12VectorKernelD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.t = load ptr, ptr %.sroa.06.016, align 8, !tbaa !139 ; 3 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !139
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.016, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !86   ; 4 uses
  store ptr %i.v, ptr %i.b, align 8, !tbaa !86
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !139
end_hunk_0
begin_hunk_1_@_ZNK5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i25

bb.ey:                                            ; preds = %bb.ew
  %i.nn = atomicrmw volatile add ptr %i.na, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i25

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i25: ; preds = %bb.ey, %bb.ex
  %.0.i.i.i.i.i.i.i.i.i.i26 = phi i32 [ %i.nd, %bb.ex ], [ %i.nn, %bb.ey ]
  %i.no = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i26, 1
  br i1 %i.no, label %bb.ez, label %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i.i.i, !prof !37

bb.ez:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i25
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mz) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i.i.i: ; preds = %bb.ez, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i25, %bb.ev, %.lr.ph.i.i.i.i21
  %i.np = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i22, i64 16 ; 2 uses
  %.not.i.i.i58.i = icmp eq ptr %i.np, %i.mx
  br i1 %.not.i.i.i58.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i21, !llvm.loop !875

_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i.i.i
  %.pr.i59.i = load ptr, ptr %8, align 8, !tbaa !873, !noalias !831
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %.loopexit67.i
  %i.nq = phi ptr [ %.pr.i59.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.mw, %.loopexit67.i ] ; 3 uses
  %.not.i.i1.i.i27 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i1.i.i27, label %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit.i, label %bb.fa

bb.fa:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.nr = load ptr, ptr %i.hy, align 8, !tbaa !867, !noalias !831
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = ptrtoint ptr %i.nq to i64
  %i.nu = sub i64 %i.ns, %i.nt
  call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef %i.nu) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit.i: ; preds = %bb.fa, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !831
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_113DropNullTableERKSt10shared_ptrINS_5TableEEPNS0_11ExecContextE.exit

bb.fb:                                            ; preds = %bb.et, %bb.dz, %bb.cn
  %.pn36.i = phi { ptr, i32 } [ %i.mv, %bb.et ], [ %.pn.pn.i31, %bb.dz ], [ %i.ic, %bb.cn ]
  call void @_ZN5arrow16TableBatchReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %9) #24
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.cm
  %.pn36.pn.i = phi { ptr, i32 } [ %.pn36.i, %bb.fb ], [ %i.ib, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !831
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !831
  br label %common.resume

_ZN5arrow7compute8internal12_GLOBAL__N_113DropNullTableERKSt10shared_ptrINS_5TableEEPNS0_11ExecContextE.exit: ; preds = %bb.cg, %._crit_edge74.thread.i, %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.fj

bb.fd:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @_ZNK5arrow5Datum8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !876
  invoke void @_ZN5arrow8internal12JoinToStringIJRA51_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(51) @.str.40, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %.noexc unwind label %bb.fi

.noexc:                                           ; preds = %bb.fd
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %26, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.fe unwind label %bb.ff

bb.fe:                                            ; preds = %.noexc
  %i.nv = load ptr, ptr %5, align 8, !tbaa !38, !noalias !876 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.nx = icmp eq ptr %i.nv, %i.nw
  br i1 %i.nx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.fe
  %i.ny = load i64, ptr %i.nw, align 8, !tbaa !40, !noalias !876
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.nz) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.ff:                                            ; preds = %.noexc
  %i.oa = landingpad { ptr, i32 }
          cleanup
  %i.ob = load ptr, ptr %5, align 8, !tbaa !38, !noalias !876 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.od = icmp eq ptr %i.ob, %i.oc
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.ff
  %i.oe = load i64, ptr %i.oc, align 8, !tbaa !40, !noalias !876
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.of) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !876
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !876
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %26) #24
  %i.og = load ptr, ptr %26, align 8, !tbaa !74   ; 2 uses
  %.not.i = icmp eq ptr %i.og, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.fg, !prof !77

bb.fg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !78, !range !84, !noundef !85
  %i.oj = trunc nuw i8 %i.oi to i1
  br i1 %i.oj, label %_ZN5arrow6StatusD2Ev.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.fg, %bb.fh
  %i.ok = load ptr, ptr %27, align 8, !tbaa !38   ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.om = icmp eq ptr %i.ok, %i.ol
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.on = load i64, ptr %i.ol, align 8, !tbaa !40
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.oo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fd
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.fi
  %eh.lpad-body = phi { ptr, i32 } [ %i.op, %bb.fi ], [ %i.oa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.oq = load ptr, ptr %27, align 8, !tbaa !38   ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.os = icmp eq ptr %i.oq, %i.or
  br i1 %i.os, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %.body
  %i.ot = load i64, ptr %i.or, align 8, !tbaa !40
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ou) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %common.resume

bb.fj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_113DropNullTableERKSt10shared_ptrINS_5TableEEPNS0_11ExecContextE.exit, %_ZNK5arrow5Datum12record_batchEv.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_120DropNullChunkedArrayERKSt10shared_ptrINS_12ChunkedArrayEEPNS0_11ExecContextE.exit, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_113DropNullArrayERKSt10shared_ptrINS_5ArrayEEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.390, align 1            ; 3 uses
  %4 = alloca %class.anon.390, align 1            ; 3 uses
  %5 = alloca %"class.std::shared_ptr.376", align 16 ; 7 uses
  %6 = alloca %"class.std::allocator.78", align 1 ; 3 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.arrow::Result.443", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.54", align 16 ; 4 uses
  %9 = alloca %"class.std::shared_ptr.447", align 8 ; 5 uses
  %10 = alloca %"struct.arrow::Datum", align 8    ; 7 uses
  %11 = alloca %"class.std::shared_ptr.450", align 16 ; 6 uses
  %12 = alloca %"struct.arrow::Datum", align 8    ; 7 uses
  %13 = alloca %"class.arrow::compute::FilterOptions", align 8 ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !245
  %i.f = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5arrow6ResultINS_5DatumEEC2IRKSt10shared_ptrINS_5ArrayEEvEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #27
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !245
  %i.l = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  %i.m = load ptr, ptr %1, align 8, !tbaa !245
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !248  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !881
  %i.r = icmp eq i64 %i.l, %i.q
  br i1 %i.r, label %bb.e, label %bb.y

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86   ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.o, align 8, !tbaa !72
  store <2 x ptr> %i.v, ptr %8, align 16, !tbaa !72
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.ab = load ptr, ptr %2, align 8, !tbaa !808
  invoke void @_ZN5arrow14MakeEmptyArrayESt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.443") align 8 %7, ptr noundef nonnull %8, ptr noundef %i.ab)
          to label %bb.i unwind label %bb.x

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  call void @_ZN5arrow6ResultINS_5DatumEEC2ISt10shared_ptrINS_5ArrayEEvEEONS0_IT_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %7) #24
  %i.ac = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !77

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !86 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ag, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !89
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #24, !inline_history !897
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !90
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #24, !inline_history !897
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aj, %bb.n ], [ %i.at, %bb.o ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.au, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !37

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !74   ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !634

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.i
  %i.av = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.ac, %bb.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !78, !range !84, !noundef !85
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.q
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !86  ; 8 uses
  %.not.i.i20 = icmp eq ptr %i.az, null
  br i1 %.not.i.i20, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ba, align 8, !tbaa !87
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !89
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !90
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #24, !inline_history !266
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !90
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #24, !inline_history !266
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i21 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i21, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.bd, %bb.u ], [ %i.bn, %bb.v ]
  %i.bo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bo, label %bb.w, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #24
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZN5arrow6ResultINS_5DatumEEC2IRKSt10shared_ptrINS_5ArrayEEvEEOT_.exit

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.y:                                             ; preds = %bb.d
  %i.bq = load ptr, ptr %i.o, align 8, !tbaa !139
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !322
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.bu = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25, !noalias !901 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 1, ptr %i.bv, align 8, !tbaa !87, !noalias !898
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 1, ptr %i.bw, align 4, !tbaa !89, !noalias !898
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bu, align 8, !tbaa !90, !noalias !898
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  invoke void @_ZN5arrow9NullArrayC1El(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef 0)
          to label %_ZSt11make_sharedIN5arrow9NullArrayEJiEESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !898

common.resume:                                    ; preds = %bb.x, %bb.be, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.by, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ], [ %i.bp, %bb.x ], [ %.pn.pn.pn, %bb.be ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %bb.z
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 48) #26, !noalias !898
  br label %common.resume

_ZSt11make_sharedIN5arrow9NullArrayEJiEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %i.bu, ptr %i.bz, align 8, !tbaa !86, !alias.scope !898
  store ptr %i.bx, ptr %9, align 8, !tbaa !904, !alias.scope !898
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5arrow8internal14AlignedStorageINS_5DatumEE9constructIJSt10shared_ptrINS_9NullArrayEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %9) #24
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !86 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt11make_sharedIN5arrow9NullArrayEJiEESt10shared_ptrIT_EDpOT0_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cc, align 8, !tbaa !87
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !89
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !90
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #24, !inline_history !906
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !90
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #24, !inline_history !906
  br label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i23 = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i23, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

bb.ae:                                            ; preds = %bb.ac
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i25 = phi i32 [ %i.cf, %bb.ad ], [ %i.cp, %bb.ae ]
  %i.cq = icmp eq i32 %.0.i.i.i.i25, 1
  br i1 %i.cq, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #24
  br label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt11make_sharedIN5arrow9NullArrayEJiEESt10shared_ptrIT_EDpOT0_.exit, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZN5arrow6ResultINS_5DatumEEC2IRKSt10shared_ptrINS_5ArrayEEvEEOT_.exit

bb.ag:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %.val = load ptr, ptr %i.n, align 8, !tbaa !248 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.cr = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !622, !noalias !907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !907
  %14 = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %15 = load i64, ptr %14, align 8, !tbaa !881, !noalias !907
  store i64 %15, ptr %i.a, align 8, !tbaa !357, !noalias !907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !907
  store ptr null, ptr %i.b, align 8, !tbaa !910, !noalias !907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !907
  store i32 0, ptr %i.c, align 4, !tbaa !3, !noalias !907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !907
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !912, !noalias !907
  store i64 %i.cu, ptr %i.d, align 8, !tbaa !357, !noalias !907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !916
  store ptr null, ptr %11, align 16, !tbaa !917, !alias.scope !916
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJlRKSt10shared_ptrINS4_6BufferEEDnilEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !907
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.cw = load <2 x ptr>, ptr %11, align 16, !tbaa !72
  store ptr null, ptr %i.cv, align 8, !tbaa !86
  store <2 x ptr> %i.cw, ptr %5, align 16, !tbaa !72
  store ptr null, ptr %11, align 16, !tbaa !917
  invoke void @_ZN5arrow5DatumC2ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.ah unwind label %.body

bb.ah:                                            ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !86 ; 8 uses
  %.not.i.i.i26 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i26, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.cz, align 8, !tbaa !87
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !89
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !90
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #24, !inline_history !920
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !90
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #24, !inline_history !920
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i27 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i27, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i = phi i32 [ %i.dc, %bb.al ], [ %i.dm, %bb.am ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dn, label %bb.an, label %bb.ao, !prof !37

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #24
  br label %bb.ao

.body:                                            ; preds = %bb.ag
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #24
  br label %bb.be

bb.ao:                                            ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aj, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.dp = load ptr, ptr %i.cv, align 8, !tbaa !86 ; 8 uses
  %.not.i.i28 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i28, label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 4 uses
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 4294967297
  %i.dt = trunc i64 %i.dr to i32                  ; 2 uses
  br i1 %i.ds, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.dq, align 8, !tbaa !87
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 0, ptr %i.du, align 4, !tbaa !89
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !90
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #24, !inline_history !921
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !90
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #24, !inline_history !921
  br label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ar:                                            ; preds = %bb.ap
  %i.eb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i29 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i29, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ec = add nsw i32 %i.dt, -1
  store i32 %i.ec, ptr %i.dq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30

bb.at:                                            ; preds = %bb.ar
  %i.ed = atomicrmw volatile add ptr %i.dq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i31 = phi i32 [ %i.dt, %bb.as ], [ %i.ed, %bb.at ]
  %i.ee = icmp eq i32 %.0.i.i.i.i31, 1
  br i1 %i.ee, label %bb.au, label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #24
  br label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ao, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZN5arrow7compute13FilterOptionsC1ENS1_21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(20) %13, i32 noundef 0)
          to label %_ZN5arrow7compute13FilterOptions8DefaultsEv.exit unwind label %bb.ba

_ZN5arrow7compute13FilterOptions8DefaultsEv.exit: ; preds = %bb.av
  invoke void @_ZN5arrow7compute6FilterERKNS_5DatumES3_RKNS0_13FilterOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.82") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(20) %13, ptr noundef %2)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %_ZN5arrow7compute13FilterOptions8DefaultsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZN5arrow5DatumD2Ev.exit32 unwind label %bb.ay

bb.ay:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit32:                       ; preds = %_ZN5arrow5DatumD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZN5arrow6ResultINS_5DatumEEC2IRKSt10shared_ptrINS_5ArrayEEvEEOT_.exit

bb.az:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ba:                                            ; preds = %bb.av
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %_ZN5arrow7compute13FilterOptions8DefaultsEv.exit
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.el, %bb.bb ], [ %i.ek, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #24
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.az
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bc ], [ %i.ej, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #24
  br label %bb.be
end_hunk_1
