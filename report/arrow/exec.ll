inline.NumInlined: 3475
inline.NumDeleted: 1689
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5arrow7compute9ExecBatch4MakeESt6vectorINS_5DatumESaIS3_EEl:bb.a
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  br label %_ZN5arrow6StatusD2Ev.exit14

_ZN5arrow6StatusD2Ev.exit14:                      ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.s

bb.n:                                             ; preds = %_ZN5arrow7compute12_GLOBAL__N_113DoInferLengthERKSt6vectorINS_5DatumESaIS3_EE.exit.thread, %bb.j, %_ZN5arrow7compute12_GLOBAL__N_113DoInferLengthERKSt6vectorINS_5DatumESaIS3_EE.exit.thread17
  %.0 = phi i64 [ %2, %_ZN5arrow7compute12_GLOBAL__N_113DoInferLengthERKSt6vectorINS_5DatumESaIS3_EE.exit.thread17 ], [ %2, %bb.j ], [ %.4.i16, %_ZN5arrow7compute12_GLOBAL__N_113DoInferLengthERKSt6vectorINS_5DatumESaIS3_EE.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.x = load <2 x ptr>, ptr %1, align 8, !tbaa !75
  store <2 x ptr> %i.x, ptr %8, align 16, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38
  store ptr %i.aa, ptr %i.y, align 16, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow7compute9ExecBatchC2ESt6vectorINS_5DatumESaIS3_EEl(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull %8, i64 noundef %.0)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %0, align 8, !tbaa !121
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load <2 x ptr>, ptr %7, align 16, !tbaa !75
  store <2 x ptr> %i.ad, ptr %i.ac, align 8, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !38
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %7, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !71
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !71
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !71
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !71
  store <4 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !71
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  call void @_ZN5arrow7compute9ExecBatchD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %7) #27
  %i.ap = load ptr, ptr %8, align 16, !tbaa !34   ; 3 uses
  %i.aq = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i ], [ %i.ap, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #30
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i:     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.aq
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !89

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 16, !tbaa !34
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.o
  %i.au = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ap, %bb.o ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i
  %i.av = load ptr, ptr %i.y, align 16, !tbaa !38
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #31
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %i.az

bb.s:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit14, %_ZN5arrow6StatusD2Ev.exit12, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow7compute9ExecBatch13ToRecordBatchESt10shared_ptrINS_6SchemaEEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.97") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.std::vector.65", align 8    ; 13 uses
  %i.a = alloca i64, align 8                      ; 11 uses
  %7 = alloca %"class.std::shared_ptr.60", align 16 ; 7 uses
  %8 = alloca %"class.arrow::Result.109", align 8 ; 10 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::shared_ptr.47", align 16 ; 7 uses
  %12 = alloca %"class.std::shared_ptr.13", align 16 ; 4 uses
  %13 = alloca %"class.std::vector.65", align 8   ; 7 uses
  %14 = alloca %"class.std::shared_ptr.113", align 8 ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !182
  %i.c = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.g = load ptr, ptr %1, align 8, !tbaa !34
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.19)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  %i.m = load ptr, ptr %5, align 8, !tbaa !121    ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !124

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !126, !range !132, !noundef !133
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bz

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.q = load ptr, ptr %2, align 8, !tbaa !182
  %i.r = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q) ; 3 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = icmp slt i32 %i.r, 0
  br i1 %i.t, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #28
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i, label %.thread129, label %.lr.ph

.thread129:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.w = shl nuw nsw i64 %i.s, 4                  ; 3 uses
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #29 ; 5 uses
  store ptr %i.x, ptr %6, align 8, !tbaa !183
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.s
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.w, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !186
  store ptr %scevgep.i.i.i.i.i, ptr %i.z, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 0, ptr %i.a, align 8, !tbaa !181
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.au
  %i.af = phi ptr [ %i.x, %.lr.ph ], [ %i.eu, %bb.au ] ; 2 uses
  %storemerge92 = phi i64 [ 0, %.lr.ph ], [ %i.es, %bb.au ]
  %i.ag = load ptr, ptr %1, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %storemerge92 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !76
  switch i8 %i.aj, label %bb.am [
    i8 2, label %bb.g
    i8 1, label %15
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.60") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !181
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load <2 x ptr>, ptr %7, align 16, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !70 ; 8 uses
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !71
  %.not.i.i.i.i32 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i32, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ap, align 8, !tbaa !82
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !84
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #27, !inline_history !188
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #27, !inline_history !188
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit

bb.k:                                             ; preds = %bb.i
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.as, %bb.l ], [ %i.bc, %bb.m ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.n, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, !prof !69

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #27
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit:    ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !70 ; 8 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %.thread84, label %bb.o

bb.o:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bf, align 8, !tbaa !82
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !84
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !63
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #27, !inline_history !134
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !63
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #27, !inline_history !134
  br label %.thread84

bb.q:                                             ; preds = %bb.o
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.bi, %bb.r ], [ %i.bs, %bb.s ]
  %i.bt = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bt, label %bb.t, label %.thread84, !prof !69

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #27
  br label %.thread84

.thread84:                                        ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p, %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.au

bb.u:                                             ; preds = %bb.g
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.av

15:                                               ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %16 = load i8, ptr %i.ai, align 8, !tbaa !76
  %.not.i.i.i33 = icmp eq i8 %16, 1
  br i1 %.not.i.i.i33, label %_ZNK5arrow5Datum6scalarEv.exit, label %17

17:                                               ; preds = %15
  %18 = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %18, align 8, !tbaa !63
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @.str.29, ptr %19, align 8, !tbaa !100
  invoke void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %.noexc34 unwind label %.loopexit.a

.noexc34:                                         ; preds = %17
  unreachable

_ZNK5arrow5Datum6scalarEv.exit:                   ; preds = %15
  %i.bv = load ptr, ptr %i.ah, align 8, !tbaa !103
  %i.bw = load i64, ptr %i.ab, align 8, !tbaa !50
  invoke void @_ZN5arrow19MakeArrayFromScalarERKNS_6ScalarElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.109") align 8 %8, ptr noundef nonnull align 8 dereferenceable(41) %i.bv, i64 noundef %i.bw, ptr noundef %3)
          to label %bb.v unwind label %.loopexit

bb.v:                                             ; preds = %_ZNK5arrow5Datum6scalarEv.exit
  %i.bx = load ptr, ptr %8, align 8, !tbaa !121
  %i.by = icmp eq ptr %i.bx, null                 ; 2 uses
  br i1 %i.by, label %bb.x, label %bb.w, !prof !124

bb.w:                                             ; preds = %bb.v
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #27
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit44

.loopexit:                                        ; preds = %_ZNK5arrow5Datum6scalarEv.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.a:                                      ; preds = %17
  %lpad.loopexit.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.x:                                             ; preds = %bb.v
  %i.bz = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !71, !noalias !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !181
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !70 ; 8 uses
  store <2 x ptr> %i.bz, ptr %i.cb, align 8, !tbaa !71
  %.not.i.i.i.i35 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i35, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit44, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.ce, align 8, !tbaa !82
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !84
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27, !inline_history !188
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !63
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27, !inline_history !188
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit44

bb.aa:                                            ; preds = %bb.y
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i36 = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i36, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37

bb.ac:                                            ; preds = %bb.aa
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i38 = phi i32 [ %i.ch, %bb.ab ], [ %i.cr, %bb.ac ]
  %i.cs = icmp eq i32 %.0.i.i.i.i.i.i38, 1
  br i1 %i.cs, label %bb.ad, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit44, !prof !69

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit44

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit44: ; preds = %bb.x, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i37, %bb.ad, %bb.w
  %i.ct = load ptr, ptr %8, align 8, !tbaa !121   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ae, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !124

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit44
  %i.cv = load ptr, ptr %i.ad, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i45 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i45, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 4294967297
  %i.cz = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.cy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.cw, align 8, !tbaa !82
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 0, ptr %i.da, align 4, !tbaa !84
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !63
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #27, !inline_history !194
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !63
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #27, !inline_history !194
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.di = add nsw i32 %i.cz, -1
  store i32 %i.di, ptr %i.cw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dj = atomicrmw volatile add ptr %i.cw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cz, %bb.ai ], [ %i.dj, %bb.aj ]
  %i.dk = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dk, label %bb.ak, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !69

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ag
  %.pr.i.pr = load ptr, ptr %8, align 8, !tbaa !121 ; 2 uses
  %.not.i.i46 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i46, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.thread, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit44
  %i.dl = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.ct, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit44 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !126, !range !132, !noundef !133
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.thread, label %bb.al

bb.al:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.thread

bb.am:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %20 = load i8, ptr %i.ai, align 8, !tbaa !76
  %switch.tableidx.i = add i8 %20, -1             ; 2 uses
  %i.dp = icmp ult i8 %switch.tableidx.i, 5
  %switch.idx.cast.i = zext i8 %switch.tableidx.i to i32
  %switch.offset.i = add nuw nsw i32 %switch.idx.cast.i, 1
  %.0.i = select i1 %i.dp, i32 %switch.offset.i, i32 0
  invoke void @_ZN5arrow8ToStringB5cxx11ENS_5Datum4KindE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i32 noundef %.0.i)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !196
  invoke void @_ZN5arrow8internal12JoinToStringIJRA32_KcRmRA19_S2_RA12_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(32) @.str.20, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.21, ptr noundef nonnull align 1 dereferenceable(12) @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc47 unwind label %bb.at

.noexc47:                                         ; preds = %bb.an
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %9, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.noexc47
  %i.dq = load ptr, ptr %4, align 8, !tbaa !95, !noalias !196 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ao
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !72, !noalias !196
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.ap:                                            ; preds = %.noexc47
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %4, align 8, !tbaa !95, !noalias !196 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %bb.ap
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !72, !noalias !196
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !196
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !196
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #27
  %i.eb = load ptr, ptr %9, align 8, !tbaa !121   ; 2 uses
  %.not.i48 = icmp eq ptr %i.eb, null
  br i1 %.not.i48, label %_ZN5arrow6StatusD2Ev.exit49, label %bb.aq, !prof !124

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !126, !range !132, !noundef !133
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZN5arrow6StatusD2Ev.exit49, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #27
  br label %_ZN5arrow6StatusD2Ev.exit49

_ZN5arrow6StatusD2Ev.exit49:                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.aq, %bb.ar
  %i.ef = load ptr, ptr %10, align 8, !tbaa !95   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit49
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !72
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #31
  br label %.thread

.thread:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %.loopexit86

bb.as:                                            ; preds = %bb.am
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.at:                                            ; preds = %bb.an
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, %bb.at
  %eh.lpad-body = phi { ptr, i32 } [ %i.el, %bb.at ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i ] ; 2 uses
  %i.em = load ptr, ptr %10, align 8, !tbaa !95   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %.body
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !72
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.as
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.as ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.av

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.thread: ; preds = %bb.ae, %bb.al, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br i1 %i.by, label %bb.au, label %.loopexit86

bb.au:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.thread, %.thread84
  %i.er = load i64, ptr %i.a, align 8, !tbaa !181
  %i.es = add i64 %i.er, 1                        ; 3 uses
  store i64 %i.es, ptr %i.a, align 8, !tbaa !181
  %i.et = load ptr, ptr %i.z, align 8, !tbaa !187 ; 2 uses
  %i.eu = load ptr, ptr %6, align 8, !tbaa !183   ; 3 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = ashr exact i64 %i.ex, 4
  %.not = icmp ult i64 %i.es, %i.ey
  br i1 %.not, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !201

bb.av:                                            ; preds = %.loopexit, %.loopexit.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.u
  %.pn26 = phi { ptr, i32 } [ %i.bu, %bb.u ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.a, %.loopexit.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.by

.loopexit86:                                      ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.thread, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.bq

._crit_edge.loopexit:                             ; preds = %bb.au
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !186
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread129, %._crit_edge.loopexit
  %i.ez = phi ptr [ %i.aa, %._crit_edge.loopexit ], [ %i.v, %.thread129 ]
  %i.fa = phi ptr [ %i.z, %._crit_edge.loopexit ], [ %i.u, %.thread129 ]
  %i.fb = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %.thread129 ]
  %i.fc = phi ptr [ %i.et, %._crit_edge.loopexit ], [ null, %.thread129 ]
  %i.fd = phi ptr [ %i.eu, %._crit_edge.loopexit ], [ null, %.thread129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fg = load <2 x ptr>, ptr %2, align 8, !tbaa !71
  store ptr null, ptr %i.ff, align 8, !tbaa !70
  store <2 x ptr> %i.fg, ptr %12, align 16, !tbaa !71
  store ptr null, ptr %2, align 8, !tbaa !182
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !50
  store ptr %i.fd, ptr %13, align 8, !tbaa !183
  %i.fj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %i.fc, ptr %i.fj, align 8, !tbaa !187
  %i.fk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.fb, ptr %i.fk, align 8, !tbaa !186
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow11RecordBatch4MakeESt10shared_ptrINS_6SchemaEElSt6vectorIS1_INS_5ArrayEESaIS6_EES1_INS_6Device9SyncEventEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.47") align 8 %11, ptr noundef nonnull %12, i64 noundef %i.fi, ptr noundef nonnull %13, ptr noundef nonnull %14)
          to label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.bp

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !121
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fn = load <2 x ptr>, ptr %11, align 16, !tbaa !71
  store ptr null, ptr %i.fm, align 8, !tbaa !70
  store <2 x ptr> %i.fn, ptr %i.fl, align 8, !tbaa !71
  store ptr null, ptr %11, align 16, !tbaa !202
  %i.fo = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !70 ; 8 uses
  %.not.i.i57 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i57, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.fq, align 8, !tbaa !82
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fu, align 4, !tbaa !84
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !63
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #27, !inline_history !205
  %i.fy = load ptr, ptr %i.fp, align 8, !tbaa !63
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #27, !inline_history !205
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ay:                                            ; preds = %bb.aw
  %i.gb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i58 = icmp eq i8 %i.gb, 0
  br i1 %.not.i.i.i58, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gc = add nsw i32 %i.ft, -1
  store i32 %i.gc, ptr %i.fq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

bb.ba:                                            ; preds = %bb.ay
  %i.gd = atomicrmw volatile add ptr %i.fq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i60 = phi i32 [ %i.ft, %bb.az ], [ %i.gd, %bb.ba ]
  %i.ge = icmp eq i32 %.0.i.i.i.i60, 1
  br i1 %i.ge, label %bb.bb, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #27
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59, %bb.bb
  %i.gf = load ptr, ptr %13, align 8, !tbaa !183  ; 3 uses
  %i.gg = load ptr, ptr %i.fj, align 8, !tbaa !187 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gf, %i.gg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gy, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.gf, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 4 uses
  %i.gk = load atomic i64, ptr %i.gj acquire, align 8 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 4294967297
  %i.gm = trunc i64 %i.gk to i32                  ; 2 uses
  br i1 %i.gl, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.gj, align 8, !tbaa !82
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i32 0, ptr %i.gn, align 4, !tbaa !84
  %i.go = load ptr, ptr %i.gi, align 8, !tbaa !63
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #27, !inline_history !206
  %i.gr = load ptr, ptr %i.gi, align 8, !tbaa !63
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #27, !inline_history !206
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.gu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.gu, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gv = add nsw i32 %i.gm, -1
  store i32 %i.gv, ptr %i.gj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.gw = atomicrmw volatile add ptr %i.gj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gm, %bb.bf ], [ %i.gw, %bb.bg ]
  %i.gx = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gx, label %bb.bh, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !69

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bd, %.lr.ph.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.gy, %i.gg
  br i1 %.not.i.i.i61, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !207

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i62 = load ptr, ptr %13, align 8, !tbaa !183
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gz = phi ptr [ %.pr.i62, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.gf, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ha = load ptr, ptr %i.fk, align 8, !tbaa !186
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gz to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.hd) #31
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bi
  %i.he = load ptr, ptr %i.fe, align 8, !tbaa !70 ; 8 uses
  %.not.i.i63 = icmp eq ptr %i.he, null
  br i1 %.not.i.i63, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 4 uses
  %i.hg = load atomic i64, ptr %i.hf acquire, align 8 ; 2 uses
  %i.hh = icmp eq i64 %i.hg, 4294967297
  %i.hi = trunc i64 %i.hg to i32                  ; 2 uses
  br i1 %i.hh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.hf, align 8, !tbaa !82
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  store i32 0, ptr %i.hj, align 4, !tbaa !84
  %i.hk = load ptr, ptr %i.he, align 8, !tbaa !63
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #27, !inline_history !208
  %i.hn = load ptr, ptr %i.he, align 8, !tbaa !63
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #27, !inline_history !208
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bl:                                            ; preds = %bb.bj
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute6detail16ExecSpanIterator4NextEPNS0_8ExecSpanE:bb.a

bb.l:                                             ; preds = %bb.k, %bb.j
  store i8 1, ptr %i.aq, align 1, !tbaa !249
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5arrow5Datum5arrayEv.exit, %bb.l, %_ZNK5arrow5Datum6scalarEv.exit
  %i.cn = add nuw i64 %.04856, 1                  ; 2 uses
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !243 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !39
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !34 ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 24
  %i.cw = icmp ult i64 %i.cn, %i.cv
  br i1 %i.cw, label %bb.h, label %._crit_edge, !llvm.loop !290

bb.n:                                             ; preds = %._crit_edge
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !252, !range !132, !noundef !133
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.o, label %_ZN5arrow7compute6detail12_GLOBAL__N_122PromoteExecSpanScalarsEPNS0_8ExecSpanE.exit

bb.o:                                             ; preds = %bb.n
  %i.da = load ptr, ptr %i.m, align 8, !tbaa !280 ; 2 uses
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !261 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = sdiv exact i64 %i.de, 136
  %i.dg = trunc i64 %i.df to i32
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i, label %_ZN5arrow7compute6detail12_GLOBAL__N_122PromoteExecSpanScalarsEPNS0_8ExecSpanE.exit

.lr.ph.i:                                         ; preds = %bb.o, %bb.q
  %i.di = phi ptr [ %i.dn, %bb.q ], [ %i.db, %bb.o ] ; 2 uses
  %i.dj = phi ptr [ %i.do, %bb.q ], [ %i.da, %bb.o ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 0, %bb.o ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [136 x i8], ptr %i.di, i64 %indvars.iv.i ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 128 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !264 ; 2 uses
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  tail call void @_ZN5arrow9ArraySpan14FillFromScalarERKNS_6ScalarE(ptr noundef nonnull align 8 dereferenceable(128) %i.dk, ptr noundef nonnull align 8 dereferenceable(41) %i.dm)
  store ptr null, ptr %i.dl, align 8, !tbaa !264
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !280
  %.pre10.i = load ptr, ptr %i.c, align 8, !tbaa !261
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %i.dn = phi ptr [ %.pre10.i, %bb.p ], [ %i.di, %.lr.ph.i ] ; 2 uses
  %i.do = phi ptr [ %.pre.i, %bb.p ], [ %i.dj, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = sdiv exact i64 %i.dr, 136
  %sext.i = shl i64 %i.ds, 32
  %i.dt = ashr exact i64 %sext.i, 32
  %i.du = icmp slt i64 %indvars.iv.next.i, %i.dt
  br i1 %i.du, label %.lr.ph.i, label %_ZN5arrow7compute6detail12_GLOBAL__N_122PromoteExecSpanScalarsEPNS0_8ExecSpanE.exit, !llvm.loop !291

_ZN5arrow7compute6detail12_GLOBAL__N_122PromoteExecSpanScalarsEPNS0_8ExecSpanE.exit: ; preds = %bb.q, %bb.o, %bb.n, %._crit_edge
  store i8 1, ptr %0, align 8, !tbaa !250
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !254
  %.phi.trans.insert61 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre62 = load i64, ptr %.phi.trans.insert61, align 8, !tbaa !253
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !253 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !254 ; 2 uses
  %i.dz = icmp eq i64 %i.dw, %i.dy
  br i1 %i.dz, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5arrow7compute6detail12_GLOBAL__N_122PromoteExecSpanScalarsEPNS0_8ExecSpanE.exit
  %i.ea = phi i64 [ %i.dw, %bb.r ], [ %.pre62, %_ZN5arrow7compute6detail12_GLOBAL__N_122PromoteExecSpanScalarsEPNS0_8ExecSpanE.exit ]
  %i.eb = phi i64 [ %i.dy, %bb.r ], [ %.pre, %_ZN5arrow7compute6detail12_GLOBAL__N_122PromoteExecSpanScalarsEPNS0_8ExecSpanE.exit ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ed = sub nsw i64 %i.eb, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !181
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ef, i64 %i.ed) ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !249, !range !132, !noundef !133
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ej = tail call noundef i64 @_ZN5arrow7compute6detail16ExecSpanIterator16GetNextChunkSpanElPNS0_8ExecSpanE(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %.sroa.speculated, ptr noundef %1)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.050 = phi i64 [ %i.ej, %bb.t ], [ %.sroa.speculated, %bb.s ] ; 5 uses
  store i64 %.050, ptr %1, align 8, !tbaa !275
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !243 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !39 ; 2 uses
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !34 ; 3 uses
  %.not60 = icmp eq ptr %i.en, %i.eo
  br i1 %.not60, label %._crit_edge59, label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit.lr.ph

_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit.lr.ph: ; preds = %bb.u
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = sdiv exact i64 %i.er, 24
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit

._crit_edge59:                                    ; preds = %bb.aa, %bb.u
  %i.ew = load i64, ptr %i.ec, align 8, !tbaa !253
  %i.ex = add nsw i64 %i.ew, %.050
  store i64 %i.ex, ptr %i.ec, align 8, !tbaa !253
  br label %bb.ab

_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit:   ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit.lr.ph, %bb.aa
  %.04958 = phi i64 [ 0, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit.lr.ph ], [ %i.fx, %bb.aa ] ; 5 uses
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.eo, i64 %.04958
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !76
  %i.fb = icmp eq i8 %i.fa, 1
  br i1 %i.fb, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit
  %i.fc = load ptr, ptr %i.et, align 8, !tbaa !261
  %i.fd = getelementptr inbounds nuw [136 x i8], ptr %i.fc, i64 %.04958 ; 6 uses
  %i.fe = load ptr, ptr %i.eu, align 8, !tbaa !255
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.04958 ; 3 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !181
  %i.fh = load ptr, ptr %i.ev, align 8, !tbaa !255
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.04958
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !181
  %i.fk = add nsw i64 %i.fj, %i.fg
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !292
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i64 %.050, ptr %i.fm, align 8, !tbaa !293
  %i.fn = load ptr, ptr %i.fd, align 8, !tbaa !294
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !295
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store i64 %.050, ptr %i.fr, align 8, !tbaa !311
  br label %_ZN5arrow9ArraySpan8SetSliceEll.exit

bb.x:                                             ; preds = %bb.v
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !312
  %.not.i54 = icmp eq ptr %i.ft, null
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  br i1 %.not.i54, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 -1, ptr %i.fu, align 8, !tbaa !311
  br label %_ZN5arrow9ArraySpan8SetSliceEll.exit

bb.z:                                             ; preds = %bb.x
  store i64 0, ptr %i.fu, align 8, !tbaa !311
  br label %_ZN5arrow9ArraySpan8SetSliceEll.exit

_ZN5arrow9ArraySpan8SetSliceEll.exit:             ; preds = %bb.w, %bb.y, %bb.z
  %i.fv = load i64, ptr %i.ff, align 8, !tbaa !181
  %i.fw = add nsw i64 %i.fv, %.050
  store i64 %i.fw, ptr %i.ff, align 8, !tbaa !181
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN5arrow9ArraySpan8SetSliceEll.exit, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit
  %i.fx = add nuw i64 %.04958, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fx, %i.es
  br i1 %exitcond.not, label %._crit_edge59, label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE2atEm.exit, !llvm.loop !314

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
  %i.c = load ptr, ptr %3, align 8, !tbaa !289
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !295
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !315
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !272
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !318
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !319
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5arrow6Status8FromArgsIJRA86_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(86) @.str.25)
  br label %bb.ca

bb.f:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr %1, ptr %8, align 8, !tbaa !322
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !332
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.m, i8 0, i64 25, i1 false)
  store ptr %3, ptr %i.o, align 8, !tbaa !333
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
  store i8 0, ptr %i.p, align 8, !tbaa !334
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !335  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !335  ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %bb.g

._crit_edge.i.loopexit:                           ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i
  store i8 %i.bj, ptr %i.n, align 8
  store ptr %i.bi, ptr %i.v, align 8
  store ptr %i.bh, ptr %i.m, align 8
  store ptr %i.bg, ptr %i.w, align 8
  %i.x = trunc nuw i8 %i.bj to i1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.f
  %i.y = phi ptr [ %i.bi, %._crit_edge.i.loopexit ], [ null, %bb.f ] ; 4 uses
  %i.z = phi ptr [ %i.bh, %._crit_edge.i.loopexit ], [ null, %bb.f ] ; 8 uses
  %i.aa = phi i1 [ %i.x, %._crit_edge.i.loopexit ], [ false, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !318
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !319 ; 4 uses
  %.not.i.i.not = icmp eq ptr %i.ad, null         ; 2 uses
  br i1 %.not.i.i.not, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit, label %bb.r

bb.g:                                             ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i, %.lr.ph.i
  %i.ae = phi ptr [ null, %.lr.ph.i ], [ %i.bg, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 4 uses
  %.pre.i = phi ptr [ null, %.lr.ph.i ], [ %i.bh, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 4 uses
  %i.af = phi ptr [ null, %.lr.ph.i ], [ %i.bi, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 2 uses
  %i.ag = phi i8 [ 0, %.lr.ph.i ], [ %i.bj, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 2 uses
  %i.ah = phi ptr [ null, %.lr.ph.i ], [ %i.bk, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 8 uses
  %i.ai = phi ptr [ null, %.lr.ph.i ], [ %i.bl, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 5 uses
  %i.aj = phi ptr [ null, %.lr.ph.i ], [ %i.bm, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 5 uses
  %.sroa.017.020.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.bn, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i ] ; 5 uses
  %i.ak = tail call fastcc noundef i32 @_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS0_9ExecValueE(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.017.020.i)
  switch i32 %i.ak, label %bb.i [
    i32 2, label %bb.h
    i32 1, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = phi i8 [ 1, %bb.h ], [ %i.ag, %bb.g ]   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !264
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.j, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %.sroa.017.020.i, ptr %i.aj, align 8, !tbaa !336
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.aq = ptrtoint ptr %i.ai to i64
  %i.ar = ptrtoint ptr %i.ah to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.m, label %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.l
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #29
          to label %.noexc15.i unwind label %.loopexit.i ; 5 uses

.noexc15.i:                                       ; preds = %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store ptr %.sroa.017.020.i, ptr %i.bb, align 8, !tbaa !336
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.n, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.n:                                             ; preds = %.noexc15.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ah, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.n, %.noexc15.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.as) #31
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.o, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i:                             ; preds = %bb.m
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %i.bf = phi ptr [ %i.ah, %.loopexit.i ], [ %.pre.i, %.loopexit.split-lp.i ] ; 3 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.q

_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit.i: ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.k, %bb.i, %bb.g
  %i.bg = phi ptr [ %i.ae, %bb.k ], [ %i.be, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.ae, %bb.g ], [ %i.ae, %bb.i ] ; 2 uses
  %i.bh = phi ptr [ %.pre.i, %bb.k ], [ %i.ba, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %.pre.i, %bb.g ], [ %.pre.i, %bb.i ] ; 3 uses
  %i.bi = phi ptr [ %i.ap, %bb.k ], [ %i.bd, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.af, %bb.g ], [ %i.af, %bb.i ] ; 3 uses
  %i.bj = phi i8 [ %i.al, %bb.k ], [ %i.al, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.ag, %bb.g ], [ %i.al, %bb.i ] ; 3 uses
  %i.bk = phi ptr [ %i.ah, %bb.k ], [ %i.ba, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.ah, %bb.g ], [ %i.ah, %bb.i ]
  %i.bl = phi ptr [ %i.ai, %bb.k ], [ %i.be, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.ai, %bb.g ], [ %i.ai, %bb.i ]
  %i.bm = phi ptr [ %i.ap, %bb.k ], [ %i.bd, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.aj, %bb.g ], [ %i.aj, %bb.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i, i64 136 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.t
  br i1 %i.bo, label %._crit_edge.i.loopexit, label %bb.g

bb.q:                                             ; preds = %bb.p
  %i.bp = ptrtoint ptr %i.ae to i64
  %i.bq = ptrtoint ptr %i.bf to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.br) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.p, %bb.q, %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body98, %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27 ], [ %lpad.phi.i, %bb.q ], [ %lpad.phi.i, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %._crit_edge.i
  store i8 1, ptr %i.p, align 8, !tbaa !334
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !337, !range !132, !noundef !133
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bw = load i8, ptr %i.bv, align 8, !range !132
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = select i1 %i.bu, i1 %i.bx, i1 false, !prof !124
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = select i1 %i.by, ptr %i.ca, ptr null, !prof !124
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !344
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit

_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit: ; preds = %._crit_edge.i, %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  br i1 %i.aa, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !333, !noalias !351 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !211, !noalias !351 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store atomic i64 %i.cf, ptr %i.cg seq_cst, align 8, !noalias !351
  %i.ch = load i8, ptr %i.p, align 8, !tbaa !334, !range !132, !noalias !351, !noundef !133
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %9, label %bb.t

9:                                                ; preds = %bb.s
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 56
  %11 = load ptr, ptr %10, align 8, !tbaa !344, !noalias !351
  br label %.invoke

bb.t:                                             ; preds = %bb.s
  %i.cj = icmp eq ptr %i.z, %i.y
  br i1 %i.cj, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %bb.ae
  %.sroa.023.027.i.i = phi ptr [ %i.dt, %bb.ae ], [ %i.z, %bb.t ] ; 2 uses
  %i.ck = load ptr, ptr %.sroa.023.027.i.i, align 8, !tbaa !336, !noalias !351 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !311, !noalias !351
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !293, !noalias !351
  %i.cp = icmp eq i64 %i.cm, %i.co
  br i1 %i.cp, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !352, !noalias !351 ; 3 uses
  %.not.i.i11 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i11, label %bb.ae, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !70, !noalias !353 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.cr, align 8, !tbaa !71, !noalias !353
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.critedge.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !353
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !3, !noalias !353
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !3, !noalias !353
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4, !noalias !353 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i

_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i:        ; preds = %bb.x, %bb.w, %.critedge.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !318, !noalias !351 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !70, !noalias !351 ; 8 uses
  store <2 x ptr> %i.cu, ptr %i.db, align 8, !tbaa !71, !noalias !351
  %.not.i.i.i.i14.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i14.i.i, label %.sink.split.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8, !noalias !351 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.de, align 8, !tbaa !82, !noalias !351
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !84, !noalias !351
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !63, !noalias !351
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !351
  tail call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #27, !noalias !351, !inline_history !356
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !63, !noalias !351
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !351
  tail call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #27, !noalias !351, !inline_history !356
  br label %.sink.split.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !351
  %.not.i.i.i.i.i15.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i.i15.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !3, !noalias !351
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4, !noalias !351
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dh, %bb.ab ], [ %i.dr, %bb.ac ]
  %i.ds = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ds, label %bb.ad, label %.sink.split.i.i, !prof !69

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #27, !noalias !351
  br label %.sink.split.i.i

bb.ae:                                            ; preds = %bb.u, %.lr.ph.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.023.027.i.i, i64 8 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.y
  br i1 %i.du, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %.lr.ph.i.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.ae, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !351
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15EnsureAllocatedEv(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(65) %8)
          to label %.noexc12 unwind label %.body

.noexc12:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.dv = load ptr, ptr %7, align 8, !tbaa !121, !noalias !351 ; 2 uses
  store ptr %i.dv, ptr %0, align 8, !tbaa !121, !alias.scope !351
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !351
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.af, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

bb.af:                                            ; preds = %.noexc12
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !344, !noalias !351
  %i.dz = load ptr, ptr %i.o, align 8, !tbaa !333, !noalias !351 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !211, !noalias !351
  br label %.invoke

.invoke:                                          ; preds = %9, %bb.af
  %i.ec = phi ptr [ %i.dy, %bb.af ], [ %11, %9 ]
  %.pn = phi ptr [ %i.dz, %bb.af ], [ %i.cd, %9 ]
  %i.ed = phi i64 [ %i.eb, %bb.af ], [ %i.cf, %9 ]
  %.in111 = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %i.ee = load i64, ptr %.in111, align 8, !tbaa !272, !noalias !351
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %i.ec, i64 noundef %i.ee, i64 noundef %i.ed, i1 noundef zeroext false)
          to label %.sink.split.i.i unwind label %.body

.sink.split.i.i:                                  ; preds = %.invoke, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.z, %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i.i
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !351
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

bb.ag:                                            ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorC2EPNS0_13KernelContextERKNS0_8ExecSpanEPNS_9ArrayDataE.exit
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !333, !noalias !345 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 3 uses
  store atomic i64 -1, ptr %i.eg seq_cst, align 8, !noalias !345
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ei = icmp eq ptr %i.z, %i.y
  br i1 %i.ei, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  store atomic i64 0, ptr %i.eg seq_cst, align 8, !noalias !345
  %i.ej = load i8, ptr %i.p, align 8, !tbaa !334, !range !132, !noalias !345, !noundef !133
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ai, label %.noexc14

bb.ai:                                            ; preds = %bb.ah
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !344, !noalias !345
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.em = load i64, ptr %i.el, align 8, !tbaa !272, !noalias !345
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !211, !noalias !345
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %13, i64 noundef %i.em, i64 noundef %i.eo, i1 noundef zeroext true)
          to label %.noexc14 unwind label %.body

.noexc14:                                         ; preds = %bb.ai, %bb.ah
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !357
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

bb.aj:                                            ; preds = %bb.ag
  %i.ep = ptrtoint ptr %i.y to i64
  %i.eq = ptrtoint ptr %i.z to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = icmp eq i64 %i.er, 8
  br i1 %i.es, label %bb.ak, label %bb.bx

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !345
  %i.et = load ptr, ptr %i.z, align 8, !tbaa !336, !noalias !363 ; 9 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !312, !noalias !363
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !311, !noalias !363
  store atomic i64 %i.ex, ptr %i.eg seq_cst, align 8, !noalias !363
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !292, !noalias !363 ; 3 uses
  br i1 %.not.i.i.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !344, !noalias !363
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !272, !noalias !363
  br label %_ZN5arrow6StatusD2Ev.exit51.i.i.invoke

bb.am:                                            ; preds = %bb.ak
  %i.fc = icmp eq i64 %i.ez, 0
  br i1 %i.fc, label %bb.an, label %bb.ba

bb.an:                                            ; preds = %bb.am
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !352, !noalias !364 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i10, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !319, !noalias !364 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !70, !noalias !364 ; 4 uses
  %.not.i.i.i.i.i3.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i3.i, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 3 uses
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !364
  %.not.i.i.i.i.i.i4.i = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i.i.i.i4.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !3, !noalias !364
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fi, align 4, !tbaa !3, !noalias !364
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i

bb.ar:                                            ; preds = %bb.ap
  %i.fm = atomicrmw volatile add ptr %i.fi, i32 1 acq_rel, align 4, !noalias !364 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i

bb.as:                                            ; preds = %bb.an
  %i.fn = load ptr, ptr %i.eu, align 8, !tbaa !312, !noalias !364 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not6.i.i.i, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fo = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc16 unwind label %.body  ; 6 uses

.noexc16:                                         ; preds = %bb.at
  %i.fp = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i32 1, ptr %i.fq, align 8, !tbaa !82, !noalias !367
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store i32 1, ptr %i.fr, align 4, !tbaa !84, !noalias !367
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.fo, align 8, !tbaa !63, !noalias !367
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %i.ft = load i64, ptr %i.fp, align 8, !tbaa !181, !noalias !367
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.fs, ptr noundef nonnull %i.fn, i64 noundef %i.ft)
          to label %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !367

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc16
  %i.fu = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef 96) #31, !noalias !367
  br label %.body.thread

_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i:       ; preds = %.noexc16, %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.sroa.053.0.i.i = phi ptr [ %i.fs, %.noexc16 ], [ %i.ff, %bb.aq ], [ %i.ff, %bb.ao ], [ %i.ff, %bb.ar ], [ null, %bb.as ]
  %.sroa.8.0.i.i = phi ptr [ %i.fo, %.noexc16 ], [ %i.fh, %bb.aq ], [ null, %bb.ao ], [ %i.fh, %bb.ar ], [ null, %bb.as ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !318, !noalias !363 ; 2 uses
  store ptr %.sroa.053.0.i.i, ptr %i.fw, align 8, !tbaa !370, !noalias !363
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !70, !noalias !363 ; 8 uses
  store ptr %.sroa.8.0.i.i, ptr %i.fx, align 8, !tbaa !70, !noalias !363
  %.not.i.i.i.i23.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i23.i.i, label %.critedge.sink.split.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.ga = load atomic i64, ptr %i.fz acquire, align 8, !noalias !363 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 4294967297
  %i.gc = trunc i64 %i.ga to i32                  ; 2 uses
  br i1 %i.gb, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.fz, align 8, !tbaa !82, !noalias !363
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !84, !noalias !363
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !63, !noalias !363
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !363
  tail call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #27, !noalias !363, !inline_history !371
  %i.gh = load ptr, ptr %i.fy, align 8, !tbaa !63, !noalias !363
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !363
  tail call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #27, !noalias !363, !inline_history !371
  br label %.critedge.sink.split.i.i

bb.aw:                                            ; preds = %bb.au
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !363
  %.not.i.i.i.i.i24.i.i = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i.i.i24.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gl = add nsw i32 %i.gc, -1
  store i32 %i.gl, ptr %i.fz, align 8, !tbaa !3, !noalias !363
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i

bb.ay:                                            ; preds = %bb.aw
  %i.gm = atomicrmw volatile add ptr %i.fz, i32 -1 acq_rel, align 4, !noalias !363
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i7.i = phi i32 [ %i.gc, %bb.ax ], [ %i.gm, %bb.ay ]
  %i.gn = icmp eq i32 %.0.i.i.i.i.i.i.i7.i, 1
  br i1 %i.gn, label %bb.az, label %.critedge.sink.split.i.i, !prof !69

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #27, !noalias !363
  br label %.critedge.sink.split.i.i

bb.ba:                                            ; preds = %bb.am
  %i.go = and i64 %i.ez, 7
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.bb, label %_ZN5arrow6StatusD2Ev.exit.i1.i

bb.bb:                                            ; preds = %bb.ba
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !352, !noalias !375 ; 3 uses
  %.not.i25.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i25.i.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !70, !noalias !375 ; 2 uses
  %i.gu = load <2 x ptr>, ptr %i.gr, align 8, !tbaa !71, !noalias !375
  store <2 x ptr> %i.gu, ptr %5, align 16, !tbaa !71, !alias.scope !372, !noalias !363
  %.not.i.i.i.i26.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i26.i.i, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 3 uses
  %i.gw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !375
  %.not.i.i.i.i.i27.i.i = icmp eq i8 %i.gw, 0
  br i1 %.not.i.i.i.i.i27.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gx = load i32, ptr %i.gv, align 4, !tbaa !3, !noalias !375
  %i.gy = add nsw i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gv, align 4, !tbaa !3, !noalias !375
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.gz = atomicrmw volatile add ptr %i.gv, i32 1 acq_rel, align 4, !noalias !375 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i

bb.bg:                                            ; preds = %bb.bb
  %i.ha = load ptr, ptr %i.eu, align 8, !tbaa !312, !noalias !375 ; 2 uses
  %.not6.i28.i.i = icmp eq ptr %i.ha, null
  br i1 %.not6.i28.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.hb = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc17 unwind label %.body  ; 6 uses

.noexc17:                                         ; preds = %bb.bh
  %i.hc = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i32 1, ptr %i.hd, align 8, !tbaa !82, !noalias !379
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 1, ptr %i.he, align 4, !tbaa !84, !noalias !379
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.hb, align 8, !tbaa !63, !noalias !379
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.hg = load i64, ptr %i.hc, align 8, !tbaa !181, !noalias !379
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.hf, ptr noundef nonnull %i.ha, i64 noundef %i.hg)
          to label %_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_.exit.i30.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i29.i.i, !noalias !379

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i29.i.i: ; preds = %.noexc17
  %i.hh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef 96) #31, !noalias !379
  br label %.body.thread

_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_.exit.i30.i.i: ; preds = %.noexc17
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.hb, ptr %i.hi, align 8, !tbaa !70, !alias.scope !380, !noalias !363
  store ptr %i.hf, ptr %5, align 16, !tbaa !370, !alias.scope !380, !noalias !363
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !372, !noalias !363
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i

_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i:      ; preds = %bb.bi, %_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_.exit.i30.i.i, %bb.bf, %bb.be, %bb.bc
  %i.hj = load i64, ptr %i.ey, align 8, !tbaa !292, !noalias !363
  %i.hk = sdiv i64 %i.hj, 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !293, !noalias !363 ; 2 uses
  %i.hn = ashr i64 %i.hm, 3
  %i.ho = and i64 %i.hm, 7
  %i.hp = icmp ne i64 %i.ho, 0
  %i.hq = zext i1 %i.hp to i64
  %i.hr = add nsw i64 %i.hn, %i.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !363
  store i64 %i.hk, ptr %i.a, align 8, !tbaa !181, !noalias !381
  store i64 %i.hr, ptr %i.b, align 8, !tbaa !181, !noalias !381
  %i.hs = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc.i.i unwind label %bb.bw, !noalias !363 ; 4 uses

.noexc.i.i:                                       ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bj unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i, !noalias !384

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i: ; preds = %.noexc.i.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef 96) #31, !noalias !384
  br label %.body.i.i

bb.bj:                                            ; preds = %.noexc.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !363
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !318, !noalias !363 ; 2 uses
  store ptr %i.hu, ptr %i.hw, align 8, !tbaa !370, !noalias !363
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !70, !noalias !363 ; 8 uses
  store ptr %i.hs, ptr %i.hx, align 8, !tbaa !70, !noalias !363
  %.not.i.i.i.i32.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i.i32.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 4 uses
  %i.ia = load atomic i64, ptr %i.hz acquire, align 8, !noalias !363 ; 2 uses
  %i.ib = icmp eq i64 %i.ia, 4294967297
  %i.ic = trunc i64 %i.ia to i32                  ; 2 uses
  br i1 %i.ib, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.hz, align 8, !tbaa !82, !noalias !363
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  store i32 0, ptr %i.id, align 4, !tbaa !84, !noalias !363
  %i.ie = load ptr, ptr %i.hy, align 8, !tbaa !63, !noalias !363
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !noalias !363
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(16) %i.hy) #27, !noalias !363, !inline_history !371
  %i.ih = load ptr, ptr %i.hy, align 8, !tbaa !63, !noalias !363
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !363
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(16) %i.hy) #27, !noalias !363, !inline_history !371
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.ik = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !363
  %.not.i.i.i.i.i33.i.i = icmp eq i8 %i.ik, 0
  br i1 %.not.i.i.i.i.i33.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.il = add nsw i32 %i.ic, -1
  store i32 %i.il, ptr %i.hz, align 8, !tbaa !3, !noalias !363
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.im = atomicrmw volatile add ptr %i.hz, i32 -1 acq_rel, align 4, !noalias !363
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34.i.i: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i.i.i35.i.i = phi i32 [ %i.ic, %bb.bn ], [ %i.im, %bb.bo ]
  %i.in = icmp eq i32 %.0.i.i.i.i.i.i35.i.i, 1
  br i1 %i.in, label %bb.bp, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i, !prof !69

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hy) #27, !noalias !363
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i: ; preds = %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i34.i.i, %bb.bl, %bb.bj
  %i.io = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !70, !noalias !363 ; 8 uses
  %.not.i.i42.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i42.i.i, label %.critedge.sink.split.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 4 uses
  %i.ir = load atomic i64, ptr %i.iq acquire, align 8, !noalias !363 ; 2 uses
  %i.is = icmp eq i64 %i.ir, 4294967297
  %i.it = trunc i64 %i.ir to i32                  ; 2 uses
  br i1 %i.is, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.iq, align 8, !tbaa !82, !noalias !363
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 12
  store i32 0, ptr %i.iu, align 4, !tbaa !84, !noalias !363
  %i.iv = load ptr, ptr %i.ip, align 8, !tbaa !63, !noalias !363
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !noalias !363
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(16) %i.ip) #27, !noalias !363, !inline_history !387
  %i.iy = load ptr, ptr %i.ip, align 8, !tbaa !63, !noalias !363
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !noalias !363
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(16) %i.ip) #27, !noalias !363, !inline_history !387
  br label %.critedge.sink.split.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.jb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !363
  %.not.i.i.i43.i.i = icmp eq i8 %i.jb, 0
  br i1 %.not.i.i.i43.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jc = add nsw i32 %i.it, -1
  store i32 %i.jc, ptr %i.iq, align 8, !tbaa !3, !noalias !363
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.jd = atomicrmw volatile add ptr %i.iq, i32 -1 acq_rel, align 4, !noalias !363
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i45.i.i = phi i32 [ %i.it, %bb.bt ], [ %i.jd, %bb.bu ]
  %i.je = icmp eq i32 %.0.i.i.i.i45.i.i, 1
  br i1 %i.je, label %bb.bv, label %.critedge.sink.split.i.i, !prof !69

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ip) #27, !noalias !363
  br label %.critedge.sink.split.i.i

bb.bw:                                            ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit31.i.i
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.jf, %bb.bw ], [ %i.ht, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #27, !noalias !363
  br label %.body.thread

_ZN5arrow6StatusD2Ev.exit.i1.i:                   ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !363
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15EnsureAllocatedEv(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(65) %8)
          to label %.noexc18 unwind label %.body

.noexc18:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i1.i
  %i.jg = load ptr, ptr %6, align 8, !tbaa !121, !noalias !363 ; 2 uses
  store ptr %i.jg, ptr %0, align 8, !tbaa !121, !alias.scope !363
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !363
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %_ZN5arrow6StatusD2Ev.exit51.i.i, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15PropagateSingleEv.exit.i

_ZN5arrow6StatusD2Ev.exit51.i.i:                  ; preds = %.noexc18
  %i.ji = load i64, ptr %i.ey, align 8, !tbaa !292, !noalias !363
  %i.jj = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !344, !noalias !363
  br label %_ZN5arrow6StatusD2Ev.exit51.i.i.invoke

_ZN5arrow6StatusD2Ev.exit51.i.i.invoke:           ; preds = %bb.al, %_ZN5arrow6StatusD2Ev.exit51.i.i
  %i.jl = phi i64 [ %i.ji, %_ZN5arrow6StatusD2Ev.exit51.i.i ], [ %i.ez, %bb.al ]
  %i.jm = phi ptr [ %i.jk, %_ZN5arrow6StatusD2Ev.exit51.i.i ], [ %15, %bb.al ]
  %i.jn = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit51.i.i ], [ %i.fb, %bb.al ]
  %.in = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.jo = load i64, ptr %.in, align 8, !tbaa !293, !noalias !363
  invoke void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef %i.ev, i64 noundef %i.jl, i64 noundef %i.jo, ptr noundef %i.jm, i64 noundef %i.jn)
          to label %.critedge.sink.split.i.i unwind label %.body

.critedge.sink.split.i.i:                         ; preds = %_ZN5arrow6StatusD2Ev.exit51.i.i.invoke, %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i, %bb.br, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i, %bb.av, %_ZNK5arrow9ArraySpan9GetBufferEi.exit.i5.i
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !363
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15PropagateSingleEv.exit.i

_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15PropagateSingleEv.exit.i: ; preds = %.critedge.sink.split.i.i, %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !345
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

bb.bx:                                            ; preds = %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !391
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15EnsureAllocatedEv(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(65) %8)
          to label %.noexc20 unwind label %.body

.noexc20:                                         ; preds = %bb.bx
  %i.jp = load ptr, ptr %4, align 8, !tbaa !121, !noalias !391 ; 2 uses
  store ptr %i.jp, ptr %0, align 8, !tbaa !121, !alias.scope !391
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !391
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.by, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

bb.by:                                            ; preds = %.noexc20
  %i.jr = load ptr, ptr %i.m, align 8, !tbaa !392, !noalias !391 ; 5 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !336, !noalias !391 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !312, !noalias !391
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !292, !noalias !391
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !336, !noalias !391 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !312, !noalias !391
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !292, !noalias !391
  %.val10.val.i.i = load ptr, ptr %i.o, align 8, !tbaa !333, !noalias !391 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %8, i64 56
  %.val10.val11.i.i = load ptr, ptr %i.kd, align 8, !tbaa !344, !noalias !391 ; 3 uses
  %i.ke = getelementptr i8, ptr %.val10.val.i.i, i64 16 ; 2 uses
  %.val10.val.val.i.i = load i64, ptr %i.ke, align 8, !tbaa !211, !noalias !391
  %i.kf = getelementptr i8, ptr %.val10.val.i.i, i64 32 ; 2 uses
  %.val10.val.val14.i.i = load i64, ptr %i.kf, align 8, !tbaa !272, !noalias !391
  invoke void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr noundef %i.ju, i64 noundef %i.jw, ptr noundef %i.ka, i64 noundef %i.kc, i64 noundef %.val10.val.val.i.i, i64 noundef %.val10.val.val14.i.i, ptr noundef %.val10.val11.i.i)
          to label %.noexc21 unwind label %.body

.noexc21:                                         ; preds = %bb.by
  %i.kg = load ptr, ptr %i.eh, align 8, !tbaa !393, !noalias !391
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.jr to i64
  %i.kj = sub i64 %i.kh, %i.ki                    ; 2 uses
  %i.kk = icmp ugt i64 %i.kj, 16
  br i1 %i.kk, label %.lr.ph.i9.i.preheader, label %._crit_edge.i.i

.lr.ph.i9.i.preheader:                            ; preds = %.noexc21
  %i.kl = ashr exact i64 %i.kj, 3
  %umax = call i64 @llvm.umax.i64(i64 %i.kl, i64 3)
  br label %.lr.ph.i9.i

._crit_edge.i.i:                                  ; preds = %.noexc22, %.noexc21
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !394
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %.noexc22
  %.019.i.i = phi i64 [ %i.kt, %.noexc22 ], [ 2, %.lr.ph.i9.i.preheader ] ; 2 uses
  %i.km = load i64, ptr %i.kf, align 8, !tbaa !272, !noalias !391 ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.019.i.i
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !336, !noalias !391 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !312, !noalias !391
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !292, !noalias !391
  %.val.val.val.i.i = load i64, ptr %i.ke, align 8, !tbaa !211, !noalias !391
  invoke void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr noundef %.val10.val11.i.i, i64 noundef %i.km, ptr noundef %i.kq, i64 noundef %i.ks, i64 noundef %.val.val.val.i.i, i64 noundef %i.km, ptr noundef %.val10.val11.i.i)
          to label %.noexc22 unwind label %.loopexit

.noexc22:                                         ; preds = %.lr.ph.i9.i
  %i.kt = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.kt, %umax
  br i1 %exitcond.not, label %._crit_edge.i.i, label %.lr.ph.i9.i, !llvm.loop !397

_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit: ; preds = %._crit_edge.i.i, %.noexc20, %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator15PropagateSingleEv.exit.i, %.noexc14, %.sink.split.i.i, %.noexc12
  %.val8 = load ptr, ptr %i.m, align 8, !tbaa !392 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %.val8, null
  br i1 %.not.i.i.i.i23, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit
  %i.ku = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.val9 = load ptr, ptr %i.ku, align 8
  %i.kv = ptrtoint ptr %.val9 to i64
  %i.kw = ptrtoint ptr %.val8 to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %.val8, i64 noundef %i.kx) #31
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit

_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit: ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagator7ExecuteEv.exit, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.ca

.loopexit:                                        ; preds = %.lr.ph.i9.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %.invoke, %_ZN5arrow6StatusD2Ev.exit51.i.i.invoke, %bb.by, %bb.bx, %_ZN5arrow6StatusD2Ev.exit.i1.i, %bb.bh, %bb.at, %bb.ai, %_ZN5arrow6StatusD2Ev.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre = load ptr, ptr %i.m, align 8, !tbaa !392 ; 2 uses
  %.not.i.i.i.i25 = icmp eq ptr %.val.pre, null
  br i1 %.not.i.i.i.i25, label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27, label %.body.thread

.body.thread:                                     ; preds = %.loopexit, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i29.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, %.body.i.i, %.body
  %eh.lpad-body97 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.body ], [ %lpad.loopexit, %.loopexit ], [ %i.hh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i29.i.i ], [ %i.fu, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %.val96 = phi ptr [ %.val.pre, %.body ], [ %i.jr, %.loopexit ], [ %i.z, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i29.i.i ], [ %i.z, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i ], [ %i.z, %.body.i.i ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.val7 = load ptr, ptr %i.ky, align 8
  %i.kz = ptrtoint ptr %.val7 to i64
  %i.la = ptrtoint ptr %.val96 to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %.val96, i64 noundef %i.lb) #31
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27

_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit27: ; preds = %.body, %.body.thread
  %eh.lpad-body98 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.body ], [ %eh.lpad-body97, %.body.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %common.resume

bb.ca:                                            ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_114NullPropagatorD2Ev.exit, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute6detail19PropagateNullsSpansERKNS0_8ExecSpanEPNS_9ArraySpanE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !294
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !295
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !335  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !335  ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %.thread140, label %.lr.ph

.thread140:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !312
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 -1, ptr %i.l, align 8, !tbaa !311
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !312  ; 5 uses
  br i1 %spec.select, label %bb.j, label %bb.l

.lr.ph:                                           ; preds = %bb.b, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit
  %.017107 = phi i1 [ %spec.select, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ false, %bb.b ]
  %.sroa.056.0106 = phi ptr [ %.sroa.056.1, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.b ] ; 9 uses
  %.sroa.15.0105 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.b ] ; 8 uses
  %.sroa.21.0104 = phi ptr [ %.sroa.21.1, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.b ] ; 4 uses
  %.sroa.053.0103 = phi ptr [ %i.aj, %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit ], [ %i.f, %bb.b ] ; 5 uses
  %i.o = tail call fastcc noundef i32 @_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS0_9ExecValueE(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.053.0103) ; 2 uses
  %i.p = icmp eq i32 %i.o, 2
  %spec.select = select i1 %i.p, i1 true, i1 %.017107 ; 2 uses
  %.not28 = icmp eq i32 %i.o, 1
  br i1 %.not28, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.053.0103, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !264
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.sroa.15.0105, %.sroa.21.0104
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.sroa.053.0103, ptr %.sroa.15.0105, align 8, !tbaa !336
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.15.0105, i64 8
  br label %_ZNSt6vectorIPKN5arrow9ArraySpanESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %.sroa.15.0105 to i64
  %i.v = ptrtoint ptr %.sroa.056.0106 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 6 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.g, label %_ZNKSt6vectorIPKN5arrow9ArraySpanESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEE13PrepareOutputEl:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !682, !range !132, !noundef !133
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.ac

bb.h:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !616
  invoke void @_ZN5arrow7compute13KernelContext14AllocateBitmapEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.274") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %2)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %5, align 8, !tbaa !121
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  br i1 %i.aj, label %bb.n, label %bb.j, !prof !124

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.bg

bb.l:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.m:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.n:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !71, !noalias !801
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !318 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70 ; 8 uses
  store <2 x ptr> %i.ao, ptr %i.ap, align 8, !tbaa !71
  %.not.i.i.i.i41 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i41, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.as, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !84
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27, !inline_history !551
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27, !inline_history !551
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.r ], [ %i.bf, %bb.s ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t, %bb.j
  %i.bh = load ptr, ptr %5, align 8, !tbaa !121   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.u, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !124

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i46, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bl, align 8, !tbaa !82
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !84
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !inline_history !555
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !inline_history !555
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bo, %bb.y ], [ %i.by, %bb.z ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.aa, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, !prof !69

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.w, %bb.u
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !121  ; 2 uses
  %.not.i.i47 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i47, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ca = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i ], [ %i.bh, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !126, !range !132, !noundef !133
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %i.aj, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !631
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 84
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !683
  %i.ci = icmp eq i32 %i.ch, 3
  br i1 %i.ci, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cj = load ptr, ptr %3, align 16, !tbaa !153
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store atomic i64 0, ptr %i.ck seq_cst, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.val73 = load ptr, ptr %i.cl, align 8, !tbaa !697 ; 2 uses
  %.val3874 = load ptr, ptr %i.cm, align 8, !tbaa !698 ; 2 uses
  %.not75.not = icmp eq ptr %.val3874, %.val73
  br i1 %.not75.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %.critedge
  %.val3881 = phi ptr [ %.val3874, %.lr.ph ], [ %.val38, %.critedge ]
  %.val79 = phi ptr [ %.val73, %.lr.ph ], [ %.val, %.critedge ] ; 2 uses
  %.02676 = phi i64 [ 0, %.lr.ph ], [ %i.eu, %.critedge ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val79, i64 %.02676 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !769
  %i.cs = icmp sgt i32 %i.cr, -1
  br i1 %i.cs, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !616
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !771
  %i.cw = sext i32 %i.cv to i64
  %i.cx = add nsw i64 %2, %i.cw
  %7 = load i32, ptr %i.cq, align 4, !tbaa !769
  invoke fastcc void @_ZN5arrow7compute12_GLOBAL__N_118AllocateDataBufferEPNS0_13KernelContextEli(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %i.ct, i64 noundef %i.cx, i32 noundef %7)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cy = load ptr, ptr %6, align 8, !tbaa !121
  %i.cz = icmp eq ptr %i.cy, null                 ; 2 uses
  br i1 %i.cz, label %bb.ak, label %bb.ai, !prof !124

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aj:                                            ; preds = %bb.ag
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ak:                                            ; preds = %bb.ah
  %i.db = load <2 x ptr>, ptr %i.co, align 8, !tbaa !71, !noalias !806
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  %i.dc = load ptr, ptr %3, align 16, !tbaa !153
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !318
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %.02676 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 8 uses
  store <2 x ptr> %i.db, ptr %i.dg, align 8, !tbaa !71
  %.not.i.i.i.i48 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i48, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dj, align 8, !tbaa !82
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !84
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !63
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #27, !inline_history !579
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !63
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #27, !inline_history !579
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i49 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i.i.i49, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dv = add nsw i32 %i.dm, -1
  store i32 %i.dv, ptr %i.dj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50

bb.ap:                                            ; preds = %bb.an
  %i.dw = atomicrmw volatile add ptr %i.dj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i51 = phi i32 [ %i.dm, %bb.ao ], [ %i.dw, %bb.ap ]
  %i.dx = icmp eq i32 %.0.i.i.i.i.i.i51, 1
  br i1 %i.dx, label %bb.aq, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #27
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ak, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50, %bb.aq, %bb.ai
  %i.dy = load ptr, ptr %6, align 8, !tbaa !121   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.ar, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !124

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ea = load ptr, ptr %i.cp, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i56 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i56, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.eb, align 8, !tbaa !82
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !84
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !63
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #27, !inline_history !811
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !63
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #27, !inline_history !811
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.au:                                            ; preds = %bb.as
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i57 = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i.i.i57, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58

bb.aw:                                            ; preds = %bb.au
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i.i59 = phi i32 [ %i.ee, %bb.av ], [ %i.eo, %bb.aw ]
  %i.ep = icmp eq i32 %.0.i.i.i.i.i.i.i59, 1
  br i1 %i.ep, label %bb.ax, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !69

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58, %bb.at
  %.pr.i60.pr = load ptr, ptr %6, align 8, !tbaa !121 ; 2 uses
  %.not.i.i61 = icmp eq ptr %.pr.i60.pr, null
  br i1 %.not.i.i61, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.eq = phi ptr [ %.pr.i60.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.dy, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !126, !range !132, !noundef !133
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %bb.ar, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %i.cz, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge, label %.loopexit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %.val.pre = load ptr, ptr %i.cl, align 8, !tbaa !697
  %.val38.pre = load ptr, ptr %i.cm, align 8, !tbaa !698
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge, %bb.af
  %.val38 = phi ptr [ %.val38.pre, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge ], [ %.val3881, %bb.af ] ; 2 uses
  %.val = phi ptr [ %.val.pre, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge ], [ %.val79, %bb.af ] ; 2 uses
  %i.eu = add nuw i64 %.02676, 1                  ; 2 uses
  %i.ev = ptrtoint ptr %.val38 to i64
  %i.ew = ptrtoint ptr %.val to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = ashr exact i64 %i.ex, 3
  %.not = icmp ult i64 %i.eu, %i.ey
  br i1 %.not, label %bb.af, label %.thread, !llvm.loop !812

.thread:                                          ; preds = %.critedge, %bb.ae
  store ptr null, ptr %0, align 8, !tbaa !121
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fa = load <2 x ptr>, ptr %3, align 16, !tbaa !71
  store <2 x ptr> %i.fa, ptr %i.ez, align 8, !tbaa !71
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.loopexit:                                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit
  %.pr = load ptr, ptr %i.q, align 8, !tbaa !70   ; 8 uses
  %.not.i.i62 = icmp eq ptr %.pr, null
  br i1 %.not.i.i62, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %.loopexit
  %i.fb = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.fb, align 8, !tbaa !82
  %i.ff = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !84
  %i.fg = load ptr, ptr %.pr, align 8, !tbaa !63
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !156
  %i.fj = load ptr, ptr %.pr, align 8, !tbaa !63
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !156
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bb:                                            ; preds = %bb.az
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i63 = icmp eq i8 %i.fm, 0
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEE13PrepareOutputEl:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !894, !range !132, !noundef !133
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.ac

bb.h:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !874
  invoke void @_ZN5arrow7compute13KernelContext14AllocateBitmapEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.274") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %2)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %5, align 8, !tbaa !121
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  br i1 %i.aj, label %bb.n, label %bb.j, !prof !124

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.bg

bb.l:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.m:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.n:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !71, !noalias !969
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !318 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70 ; 8 uses
  store <2 x ptr> %i.ao, ptr %i.ap, align 8, !tbaa !71
  %.not.i.i.i.i41 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i41, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.as, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !84
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27, !inline_history !551
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27, !inline_history !551
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.r ], [ %i.bf, %bb.s ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #27
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t, %bb.j
  %i.bh = load ptr, ptr %5, align 8, !tbaa !121   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.u, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !124

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i46, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bl, align 8, !tbaa !82
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !84
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !inline_history !555
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !inline_history !555
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bo, %bb.y ], [ %i.by, %bb.z ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.aa, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, !prof !69

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.w, %bb.u
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !121  ; 2 uses
  %.not.i.i47 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i47, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ca = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i ], [ %i.bh, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !126, !range !132, !noundef !133
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE7DestroyEv.exit.thread.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %i.aj, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !877
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !891
  %i.ci = icmp eq i32 %i.ch, 3
  br i1 %i.ci, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cj = load ptr, ptr %3, align 16, !tbaa !153
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store atomic i64 0, ptr %i.ck seq_cst, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.val73 = load ptr, ptr %i.cl, align 8, !tbaa !697 ; 2 uses
  %.val3874 = load ptr, ptr %i.cm, align 8, !tbaa !698 ; 2 uses
  %.not75.not = icmp eq ptr %.val3874, %.val73
  br i1 %.not75.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %.critedge
  %.val3881 = phi ptr [ %.val3874, %.lr.ph ], [ %.val38, %.critedge ]
  %.val79 = phi ptr [ %.val73, %.lr.ph ], [ %.val, %.critedge ] ; 2 uses
  %.02676 = phi i64 [ 0, %.lr.ph ], [ %i.eu, %.critedge ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val79, i64 %.02676 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !769
  %i.cs = icmp sgt i32 %i.cr, -1
  br i1 %i.cs, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !874
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !771
  %i.cw = sext i32 %i.cv to i64
  %i.cx = add nsw i64 %2, %i.cw
  %7 = load i32, ptr %i.cq, align 4, !tbaa !769
  invoke fastcc void @_ZN5arrow7compute12_GLOBAL__N_118AllocateDataBufferEPNS0_13KernelContextEli(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %i.ct, i64 noundef %i.cx, i32 noundef %7)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cy = load ptr, ptr %6, align 8, !tbaa !121
  %i.cz = icmp eq ptr %i.cy, null                 ; 2 uses
  br i1 %i.cz, label %bb.ak, label %bb.ai, !prof !124

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aj:                                            ; preds = %bb.ag
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ak:                                            ; preds = %bb.ah
  %i.db = load <2 x ptr>, ptr %i.co, align 8, !tbaa !71, !noalias !974
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  %i.dc = load ptr, ptr %3, align 16, !tbaa !153
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !318
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %.02676 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 8 uses
  store <2 x ptr> %i.db, ptr %i.dg, align 8, !tbaa !71
  %.not.i.i.i.i48 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i48, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dj, align 8, !tbaa !82
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !84
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !63
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #27, !inline_history !579
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !63
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #27, !inline_history !579
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i49 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i.i.i49, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dv = add nsw i32 %i.dm, -1
  store i32 %i.dv, ptr %i.dj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50

bb.ap:                                            ; preds = %bb.an
  %i.dw = atomicrmw volatile add ptr %i.dj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i51 = phi i32 [ %i.dm, %bb.ao ], [ %i.dw, %bb.ap ]
  %i.dx = icmp eq i32 %.0.i.i.i.i.i.i51, 1
  br i1 %i.dx, label %bb.aq, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #27
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ak, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i50, %bb.aq, %bb.ai
  %i.dy = load ptr, ptr %6, align 8, !tbaa !121   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.ar, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !124

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ea = load ptr, ptr %i.cp, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i56 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i56, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.eb, align 8, !tbaa !82
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !84
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !63
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #27, !inline_history !811
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !63
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #27, !inline_history !811
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.au:                                            ; preds = %bb.as
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i57 = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i.i.i57, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58

bb.aw:                                            ; preds = %bb.au
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i.i59 = phi i32 [ %i.ee, %bb.av ], [ %i.eo, %bb.aw ]
  %i.ep = icmp eq i32 %.0.i.i.i.i.i.i.i59, 1
  br i1 %i.ep, label %bb.ax, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !69

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58, %bb.at
  %.pr.i60.pr = load ptr, ptr %6, align 8, !tbaa !121 ; 2 uses
  %.not.i.i61 = icmp eq ptr %.pr.i60.pr, null
  br i1 %.not.i.i61, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.eq = phi ptr [ %.pr.i60.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.dy, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !126, !range !132, !noundef !133
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %bb.ar, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %i.cz, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge, label %.loopexit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %.val.pre = load ptr, ptr %i.cl, align 8, !tbaa !697
  %.val38.pre = load ptr, ptr %i.cm, align 8, !tbaa !698
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge, %bb.af
  %.val38 = phi ptr [ %.val38.pre, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge ], [ %.val3881, %bb.af ] ; 2 uses
  %.val = phi ptr [ %.val.pre, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit..critedge_crit_edge ], [ %.val79, %bb.af ] ; 2 uses
  %i.eu = add nuw i64 %.02676, 1                  ; 2 uses
  %i.ev = ptrtoint ptr %.val38 to i64
  %i.ew = ptrtoint ptr %.val to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = ashr exact i64 %i.ex, 3
  %.not = icmp ult i64 %i.eu, %i.ey
  br i1 %.not, label %bb.af, label %.thread, !llvm.loop !979

.thread:                                          ; preds = %.critedge, %bb.ae
  store ptr null, ptr %0, align 8, !tbaa !121
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fa = load <2 x ptr>, ptr %3, align 16, !tbaa !71
  store <2 x ptr> %i.fa, ptr %i.ez, align 8, !tbaa !71
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.loopexit:                                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit
  %.pr = load ptr, ptr %i.q, align 8, !tbaa !70   ; 8 uses
  %.not.i.i62 = icmp eq ptr %.pr, null
  br i1 %.not.i.i62, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %.loopexit
  %i.fb = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.fb, align 8, !tbaa !82
  %i.ff = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !84
  %i.fg = load ptr, ptr %.pr, align 8, !tbaa !63
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !156
  %i.fj = load ptr, ptr %.pr, align 8, !tbaa !63
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !156
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bb:                                            ; preds = %bb.az
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i63 = icmp eq i8 %i.fm, 0
end_hunk_3
