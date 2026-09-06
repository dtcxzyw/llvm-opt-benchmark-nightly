Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/exec?download=true
inline.NumInlined: 3475
inline.NumDeleted: 1689
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK5arrow7compute9ExecBatch5SliceEll:bb.a
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN5arrow5DatumaSEOS0_.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZN5arrow5DatumaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !95   ; 8 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.u, align 8, !tbaa !106
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !107
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !89
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #27, !inline_history !7
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !89
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #27, !inline_history !7
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i20 = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.x, %bb.i ], [ %i.ah, %bb.j ]
  %i.ai = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ai, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #27
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.y

bb.l:                                             ; preds = %_ZNK5arrow5Datum5arrayEv.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.z

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.aj = load ptr, ptr %.sroa.030.042, align 8, !tbaa !140
  invoke void @_ZNK5arrow12ChunkedArray5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %11, ptr noundef nonnull align 8 dereferenceable(88) %i.aj, i64 noundef %2, i64 noundef %3)
          to label %bb.m unwind label %.loopexit37

bb.m:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  invoke void @_ZN5arrow5DatumC1ESt10shared_ptrINS_12ChunkedArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull %11)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %.sroa.030.042, ptr %5, align 8, !tbaa !104
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSM_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZN5arrow5DatumaSEOS0_.exit23 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #30
  unreachable

_ZN5arrow5DatumaSEOS0_.exit23:                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZN5arrow5DatumD2Ev.exit24 unwind label %bb.p

bb.p:                                             ; preds = %_ZN5arrow5DatumaSEOS0_.exit23
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit24:                       ; preds = %_ZN5arrow5DatumaSEOS0_.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !95  ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ap, align 8, !tbaa !106
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !107
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #27, !inline_history !6
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !89
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #27, !inline_history !6
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i26 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i26, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.u:                                             ; preds = %bb.s
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i28 = phi i32 [ %i.as, %bb.t ], [ %i.bc, %bb.u ]
  %i.bd = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.bd, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit24, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.y

.loopexit37:                                      ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %lpad.loopexit39 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #27
  br label %bb.x

bb.x:                                             ; preds = %.loopexit37, %bb.w
  %.pn = phi { ptr, i32 } [ %i.be, %bb.w ], [ %lpad.loopexit39, %.loopexit37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.z

bb.y:                                             ; preds = %bb.b, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 24 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.c
  br i1 %i.bg, label %._crit_edge, label %bb.b

bb.z:                                             ; preds = %bb.x, %bb.l
  %.pn18 = phi { ptr, i32 } [ %lpad.loopexit, %bb.l ], [ %.pn, %bb.x ]
  call void @_ZN5arrow7compute9ExecBatchD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #27
  resume { ptr, i32 } %.pn18
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9ExecBatchC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !68     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i, !prof !94

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5arrow5DatumEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !69
  %i.m = load ptr, ptr %1, align 8, !tbaa !99
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5arrow5DatumESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit.i

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95   ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !96
  store <2 x ptr> %i.z, ptr %i.v, align 8, !tbaa !96
  %.not.i.i.i5 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i5, label %_ZNSt10shared_ptrIN5arrow7compute15SelectionVectorEEC2ERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i6 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !44
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !44
  br label %_ZNSt10shared_ptrIN5arrow7compute15SelectionVectorEEC2ERKS3_.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow7compute15SelectionVectorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow7compute15SelectionVectorEEC2ERKS3_.exit: ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_.exit, %bb.g, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !95 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !96
  store <2 x ptr> %i.aj, ptr %i.af, align 8, !tbaa !96
  %.not.i.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i7, label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow7compute15SelectionVectorEEC2ERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !44
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !44
  br label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit

bb.k:                                             ; preds = %bb.i
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit

_ZN5arrow7compute10ExpressionC2ERKS1_.exit:       ; preds = %_ZNSt10shared_ptrIN5arrow7compute15SelectionVectorEEC2ERKS3_.exit, %bb.j, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  ret void
}

declare void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.35") align 8, ptr noundef nonnull align 8 dereferenceable(120), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.241, align 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #30
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !107
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !2
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !2
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
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
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZNK5arrow12ChunkedArray5SliceEll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.41") align 8, ptr noundef nonnull align 8 dereferenceable(88), i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN5arrow5DatumC1ESt10shared_ptrINS_12ChunkedArrayEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute9ExecBatchD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.241, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow7compute10ExpressionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor7ExecuteERKNS0_9ExecBatchEPNS1_12ExecListenerE:_ZN5arrow6StatusD2Ev.exit
  %i.zb = phi ptr [ %.pr.i.i.i73, %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i72 ], [ %i.yk, %_ZN5arrow7compute10ExecResultD2Ev.exit.i58 ] ; 3 uses
  %.not.i.i1.i.i.i75 = icmp eq ptr %i.zb, null
  br i1 %.not.i.i1.i.i.i75, label %_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor15ExecuteNonSpansEPNS1_12ExecListenerE.exit, label %bb.ij

bb.ij:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i.i74
  %i.zc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !310, !noalias !771
  %i.ze = ptrtoint ptr %i.zd to i64
  %i.zf = ptrtoint ptr %i.zb to i64
  %i.zg = sub i64 %i.ze, %i.zf
  call void @_ZdlPvm(ptr noundef nonnull %i.zb, i64 noundef %i.zg) #31
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor15ExecuteNonSpansEPNS1_12ExecListenerE.exit

bb.ik:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, %bb.fo, %bb.fn
  %.pn44.pn.pn.i = phi { ptr, i32 } [ %i.ri, %bb.fn ], [ %.pn44.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit ], [ %i.rj, %bb.fo ]
  %i.zh = load i8, ptr %i.ra, align 16, !tbaa !387
  switch i8 %i.zh, label %bb.im [
    i8 -1, label %_ZN5arrow7compute10ExecResultD2Ev.exit
    i8 0, label %bb.il
  ], !prof !388

bb.il:                                            ; preds = %bb.ik
  invoke void @_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_(ptr noundef nonnull align 8 dereferenceable(136) %5)
          to label %_ZN5arrow7compute10ExecResultD2Ev.exit unwind label %bb.it

bb.im:                                            ; preds = %bb.ik
  %i.zi = load ptr, ptr %i.rc, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.zi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow7compute10ExecResultD2Ev.exit, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 8 ; 4 uses
  %i.zk = load atomic i64, ptr %i.zj acquire, align 8 ; 2 uses
  %i.zl = icmp eq i64 %i.zk, 4294967297
  %i.zm = trunc i64 %i.zk to i32                  ; 2 uses
  br i1 %i.zl, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  store i32 0, ptr %i.zj, align 8, !tbaa !106
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zi, i64 12
  store i32 0, ptr %i.zn, align 4, !tbaa !107
  %i.zo = load ptr, ptr %i.zi, align 8, !tbaa !89
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zq = load ptr, ptr %i.zp, align 8
  call void %i.zq(ptr noundef nonnull align 8 dereferenceable(16) %i.zi) #27, !inline_history !33
  %i.zr = load ptr, ptr %i.zi, align 8, !tbaa !89
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 24
  %i.zt = load ptr, ptr %i.zs, align 8
  call void %i.zt(ptr noundef nonnull align 8 dereferenceable(16) %i.zi) #27, !inline_history !33
  br label %_ZN5arrow7compute10ExecResultD2Ev.exit

bb.ip:                                            ; preds = %bb.in
  %i.zu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i99 = icmp eq i8 %i.zu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i99, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.zv = add nsw i32 %i.zm, -1
  store i32 %i.zv, ptr %i.zj, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ir:                                            ; preds = %bb.ip
  %i.zw = atomicrmw volatile add ptr %i.zj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ir, %bb.iq
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.zm, %bb.iq ], [ %i.zw, %bb.ir ]
  %i.zx = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.zx, label %bb.is, label %_ZN5arrow7compute10ExecResultD2Ev.exit, !prof !94

bb.is:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zi) #27
  br label %_ZN5arrow7compute10ExecResultD2Ev.exit

bb.it:                                            ; preds = %bb.il
  %i.zy = landingpad { ptr, i32 }
          catch ptr null
  %i.zz = extractvalue { ptr, i32 } %i.zy, 0
  call void @__clang_call_terminate(ptr %i.zz) #30
  unreachable

_ZN5arrow7compute10ExecResultD2Ev.exit:           ; preds = %bb.ik, %bb.il, %bb.im, %bb.io, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !771
  %i.aaa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !211 ; 3 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !226 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aab, %i.aad
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i96

.lr.ph.i.i.i.i96:                                 ; preds = %_ZN5arrow7compute10ExecResultD2Ev.exit, %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aar, %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i ], [ %i.aab, %_ZN5arrow7compute10ExecResultD2Ev.exit ] ; 4 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104 ; 2 uses
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !227 ; 3 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 112
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !228 ; 2 uses
  %.not.i.i12.i.i.i.i.i.i.i.i = icmp eq ptr %i.aaf, %i.aah
  br i1 %.not.i.i12.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i96, %.noexc.i.i.i.i.i.i.i.i
  %.0.i.i3.i.i.i.i.i.i.i.i = phi ptr [ %i.aai, %.noexc.i.i.i.i.i.i.i.i ], [ %i.aaf, %.lr.ph.i.i.i.i96 ] ; 2 uses
  invoke void @_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i.i3.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.iu, !inline_history !12

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.aai = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.aai, %i.aah
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !13

bb.iu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.aaj = landingpad { ptr, i32 }
          catch ptr null
  %i.aak = extractvalue { ptr, i32 } %i.aaj, 0
  call void @__clang_call_terminate(ptr %i.aak) #30, !inline_history !14
  unreachable

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.aae, align 8, !tbaa !227
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i96
  %i.aal = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.aaf, %.lr.ph.i.i.i.i96 ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aal, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i, label %bb.iv

bb.iv:                                            ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.aam = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 120
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !229
  %i.aao = ptrtoint ptr %i.aan to i64
  %i.aap = ptrtoint ptr %i.aal to i64
  %i.aaq = sub i64 %i.aao, %i.aap
  call void @_ZdlPvm(ptr noundef nonnull %i.aal, i64 noundef %i.aaq) #31, !inline_history !15
  br label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i: ; preds = %bb.iv, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.aar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.aar, %i.aad
  br i1 %.not.i.i.i.i97, label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i96, !llvm.loop !16

_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i
  %.pr.i.i98 = load ptr, ptr %i.aaa, align 8, !tbaa !211
  br label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZN5arrow7compute10ExecResultD2Ev.exit
  %i.aas = phi ptr [ %.pr.i.i98, %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.aab, %_ZN5arrow7compute10ExecResultD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aas, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8ExecSpanD2Ev.exit, label %bb.iw

bb.iw:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.aat = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !310
  %i.aav = ptrtoint ptr %i.aau to i64
  %i.aaw = ptrtoint ptr %i.aas to i64
  %i.aax = sub i64 %i.aav, %i.aaw
  call void @_ZdlPvm(ptr noundef nonnull %i.aas, i64 noundef %i.aax) #31
  br label %_ZN5arrow7compute8ExecSpanD2Ev.exit

_ZN5arrow7compute8ExecSpanD2Ev.exit:              ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !771
  br label %common.resume

_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor15ExecuteNonSpansEPNS1_12ExecListenerE.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i.i74, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !771
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.ix

bb.ix:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor15ExecuteNonSpansEPNS1_12ExecListenerE.exit, %_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor12ExecuteSpansEPNS1_12ExecListenerE.exit, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor11WrapResultsERKSt6vectorINS_5DatumESaIS5_EES9_(ptr dead_on_unwind noalias writable sret(%"struct.arrow::Datum") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.228, align 8            ; 5 uses
  %5 = alloca %"class.std::shared_ptr.41", align 8 ; 4 uses
  %.val = load ptr, ptr %2, align 8, !tbaa !99    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val6 = load ptr, ptr %i.a, align 8, !tbaa !99 ; 2 uses
  %.not.i = icmp eq ptr %.val, %.val6
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 24 ; 2 uses
  %.not9.i = icmp eq ptr %i.b, %.val6
  br i1 %.not9.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.01.06.i = phi ptr [ %i.b, %bb.b ], [ %.val, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !101
  %.not5.i = icmp eq i8 %i.d, 3
  br i1 %.not5.i, label %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = load ptr, ptr %3, align 8, !tbaa !68     ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.j, 24
  br i1 %i.k, label %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit, label %bb.k

_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit: ; preds = %.lr.ph.i, %.loopexit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  call fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114ToChunkedArrayERKSt6vectorINS_5DatumESaIS4_EERKNS_10TypeHolderE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  invoke void @_ZN5arrow5DatumC1ESt10shared_ptrINS_12ChunkedArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !95   ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.o, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !107
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !89
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #27, !inline_history !6
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !89
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #27, !inline_history !6
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.g ], [ %i.ab, %bb.h ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

common.resume:                                    ; preds = %bb.l, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.af, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  br label %common.resume

bb.k:                                             ; preds = %.loopexit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 -1, ptr %i.ae, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %0, ptr %4, align 8, !tbaa !152
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_ZN5arrow5DatumC2ERKS0_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %0) #27
  br label %common.resume

_ZN5arrow5DatumC2ERKS0_.exit:                     ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !101
  store i8 %i.ah, ptr %i.ae, align 8, !tbaa !101
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e, %bb.c, %_ZN5arrow5DatumC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEE15CheckResultTypeERKNS_5DatumEPKc(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !279
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !230  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !362
  %i.f = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i1 noundef zeroext false)
  br i1 %i.f, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !362  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !230  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !783
  invoke void @_ZN5arrow8internal12JoinToStringIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEESE_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(43) @.str.46, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(16) @.str.47, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(13) @.str.48, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %4, align 8, !tbaa !111, !noalias !783 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !97, !noalias !783
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %4, align 8, !tbaa !111, !noalias !783 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !97, !noalias !783
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !783
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !783
  %i.z = load ptr, ptr %6, align 8, !tbaa !111    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !97
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ae = load ptr, ptr %5, align 8, !tbaa !111   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !97
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EED2Ev:bb.a
  unreachable

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !227
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.k = phi ptr [ %.pre.i.i.i.i.i.i, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !229
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31, !inline_history !15
  br label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i

_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !16

_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !211
  br label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.r = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.r, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow7compute9ExecValueESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !310
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #31
  br label %_ZNSt12_Vector_baseIN5arrow7compute9ExecValueESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow7compute9ExecValueESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !387
  switch i8 %i.b, label %bb.i [
    i8 1, label %_ZSt3getILm1EJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit
    i8 -1, label %_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit
    i8 0, label %bb.h
  ], !prof !850

_ZSt3getILm1EJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !95   ; 8 uses
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !96
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt3getILm1EJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !106
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !107
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !36
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !36
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, !prof !94

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.h:                                             ; preds = %bb.a
  invoke void @_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_(ptr noundef nonnull align 8 dereferenceable(129) %0)
          to label %_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit unwind label %bb.p

bb.i:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95   ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.w, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !107
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27, !inline_history !849
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27, !inline_history !849
  br label %_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit, !prof !94

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27
  br label %_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit

_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !95
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load <2 x ptr>, ptr %1, align 8, !tbaa !96
  store ptr null, ptr %i.am, align 8, !tbaa !95
  store <2 x ptr> %i.an, ptr %0, align 8, !tbaa !96
  store ptr null, ptr %1, align 8, !tbaa !145
  store i8 1, ptr %i.a, align 8, !tbaa !387
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %_ZSt3getILm1EJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit, %_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit
  ret ptr %0

bb.p:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114ToChunkedArrayERKSt6vectorINS_5DatumESaIS4_EERKNS_10TypeHolderE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.65", align 8    ; 15 uses
  %4 = alloca %"class.std::shared_ptr.60", align 16 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.57", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !68     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 2 uses
  %6 = icmp slt i64 %i.f, 0
  br i1 %6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = shl nuw nsw i64 %i.g, 4
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #29
          to label %.noexc17 unwind label %bb.j   ; 4 uses

.noexc17:                                         ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_M_allocateEm.exit.i
  %i.l = load ptr, ptr %3, align 8, !tbaa !156    ; 5 uses
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !158  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc17, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.k, %.noexc17 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %i.l, %.noexc17 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.o = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !96, !alias.scope !863, !noalias !862
  store ptr null, ptr %i.n, align 8, !tbaa !95, !alias.scope !863, !noalias !862
  store <2 x ptr> %i.o, ptr %.012.i.i.i.i, align 8, !tbaa !96, !alias.scope !862, !noalias !863
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !124, !alias.scope !863, !noalias !862
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.m
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc17
  %.not.i8.i = icmp eq ptr %i.l, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !157
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.u) #31
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.k, ptr %3, align 8, !tbaa !156
  store ptr %i.k, ptr %i.i, align 8, !tbaa !158
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.g
  store ptr %i.v, ptr %i.h, align 8, !tbaa !157
  %.pre = load ptr, ptr %1, align 8, !tbaa !99
  %.pre31 = load ptr, ptr %i.a, align 8, !tbaa !99
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.c
  %i.w = phi ptr [ %.pre31, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.w
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.k

._crit_edge:                                      ; preds = %bb.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.ab = load ptr, ptr %2, align 8, !tbaa !359, !noalias !864 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !360, !noalias !867 ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !95, !alias.scope !867
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 8, !noalias !867
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.f ], [ %i.al, %bb.h ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.aj = cmpxchg weak ptr %i.ag, i32 %.06.i.i.i.i.i.i.i, i32 %i.ai acq_rel monotonic, align 8, !noalias !867 ; 2 uses
  %i.ak = extractvalue { i32, i1 } %i.aj, 1
  %i.al = extractvalue { i32, i1 } %i.aj, 0
  br i1 %i.ak, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, label %bb.g, !llvm.loop !31

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.e
  %i.am = call ptr @__cxa_allocate_exception(i64 8) #27, !noalias !867 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.am, align 8, !tbaa !89, !noalias !867
  invoke void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #28
          to label %.noexc18 unwind label %bb.ap

.noexc18:                                         ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit.i:       ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !361, !noalias !867
  store ptr %i.ao, ptr %5, align 8, !tbaa !230, !alias.scope !867
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !864
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

bb.j:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.k:                                             ; preds = %.lr.ph, %bb.x
  %.sroa.027.030 = phi ptr [ %i.x, %.lr.ph ], [ %i.bo, %bb.x ] ; 3 uses
  %i.aq = invoke noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027.030)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.x, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.60") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027.030)
          to label %bb.o unwind label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !158 ; 5 uses
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !157
  %.not.i19 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i19, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.av, align 8, !tbaa !95
  %i.aw = load <2 x ptr>, ptr %4, align 16, !tbaa !96
  store ptr null, ptr %i.aa, align 8, !tbaa !95
  store <2 x ptr> %i.aw, ptr %i.at, align 8, !tbaa !96
  store ptr null, ptr %4, align 16, !tbaa !124
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.ax, ptr %i.z, align 8, !tbaa !158
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.q:                                             ; preds = %bb.o
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.at, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.z

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.q, %bb.p
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.az, align 8, !tbaa !106
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !107
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !89
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #27, !inline_history !5
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !89
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #27, !inline_history !5
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i = icmp eq i8 %i.bk, 0
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor7ExecuteERKNS0_9ExecBatchEPNS1_12ExecListenerE:bb.a
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !99 ; 2 uses
  %i.rq = icmp eq ptr %i.rn, %i.rp
  br i1 %i.rq, label %.critedge84, label %.lr.ph208

.lr.ph208:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit161
  %i.rr = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  br label %bb.cb

bb.ca:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0187.0207, i64 24 ; 2 uses
  %i.rt = icmp eq ptr %i.rs, %i.rp
  br i1 %i.rt, label %.critedge84, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph208, %bb.ca
  %.sroa.0187.0207 = phi ptr [ %i.rn, %.lr.ph208 ], [ %i.rs, %bb.ca ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  store i8 -1, ptr %i.rr, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %27, ptr %5, align 8, !tbaa !152
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0187.0207)
          to label %_ZN5arrow5DatumC2ERKS0_.exit unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ru = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %27) #27
  br label %common.resume

_ZN5arrow5DatumC2ERKS0_.exit:                     ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.0187.0207, i64 16
  %i.rw = load i8, ptr %i.rv, align 8, !tbaa !101
  store i8 %i.rw, ptr %i.rr, align 8, !tbaa !101
  %i.rx = load ptr, ptr %3, align 8, !tbaa !89
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8
  invoke void %i.rz(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %27)
          to label %_ZN5arrow6StatusD2Ev.exit163 unwind label %bb.ce

_ZN5arrow6StatusD2Ev.exit163:                     ; preds = %_ZN5arrow5DatumC2ERKS0_.exit
  %i.sa = load ptr, ptr %26, align 8, !tbaa !127  ; 3 uses
  store ptr null, ptr %26, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %27)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.cd

bb.cd:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit163
  %i.sb = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.sa, ptr %0, align 8
  %i.sc = extractvalue { ptr, i32 } %i.sb, 0
  call void @__clang_call_terminate(ptr %i.sc) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZN5arrow6StatusD2Ev.exit163
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.sd = icmp eq ptr %i.sa, null
  br i1 %i.sd, label %bb.ca, label %.critedge.loopexit

bb.ce:                                            ; preds = %_ZN5arrow5DatumC2ERKS0_.exit
  %i.se = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %common.resume

.critedge84:                                      ; preds = %bb.ca, %_ZN5arrow6StatusD2Ev.exit161, %_ZN5arrow6StatusD2Ev.exit105
  store ptr null, ptr %0, align 8, !tbaa !127, !alias.scope !931
  br label %.critedge

.critedge79:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit111
  br i1 %.not4.i.i.i.i116, label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i184, label %.lr.ph.i.i.i.i169

.lr.ph.i.i.i.i169:                                ; preds = %.critedge79, %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i180
  %.05.i.i.i.i170 = phi ptr [ %i.ss, %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i180 ], [ %i.pg, %.critedge79 ] ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i170, i64 104 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !227 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i170, i64 112
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !228 ; 2 uses
  %.not.i.i12.i.i.i.i.i.i.i.i171 = icmp eq ptr %i.sg, %i.si
  br i1 %.not.i.i12.i.i.i.i.i.i.i.i171, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i178, label %.lr.ph.i.i.i.i.i.i.i.i172

.lr.ph.i.i.i.i.i.i.i.i172:                        ; preds = %.lr.ph.i.i.i.i169, %.noexc.i.i.i.i.i.i.i.i174
  %.0.i.i3.i.i.i.i.i.i.i.i173 = phi ptr [ %i.sj, %.noexc.i.i.i.i.i.i.i.i174 ], [ %i.sg, %.lr.ph.i.i.i.i169 ] ; 2 uses
  invoke void @_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i.i3.i.i.i.i.i.i.i.i173)
          to label %.noexc.i.i.i.i.i.i.i.i174 unwind label %bb.cf, !inline_history !12

.noexc.i.i.i.i.i.i.i.i174:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i172
  %i.sj = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i.i.i.i.i.i173, i64 128 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i175 = icmp eq ptr %i.sj, %i.si
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i175, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i176, label %.lr.ph.i.i.i.i.i.i.i.i172, !llvm.loop !13

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i172
  %i.sk = landingpad { ptr, i32 }
          catch ptr null
  %i.sl = extractvalue { ptr, i32 } %i.sk, 0
  call void @__clang_call_terminate(ptr %i.sl) #30, !inline_history !14
  unreachable

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i176: ; preds = %.noexc.i.i.i.i.i.i.i.i174
  %.pre.i.i.i.i.i.i.i.i177 = load ptr, ptr %i.sf, align 8, !tbaa !227
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i178

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i178: ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i176, %.lr.ph.i.i.i.i169
  %i.sm = phi ptr [ %.pre.i.i.i.i.i.i.i.i177, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i176 ], [ %i.sg, %.lr.ph.i.i.i.i169 ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i179 = icmp eq ptr %i.sm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i179, label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i180, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i178
  %i.sn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i170, i64 120
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !229
  %i.sp = ptrtoint ptr %i.so to i64
  %i.sq = ptrtoint ptr %i.sm to i64
  %i.sr = sub i64 %i.sp, %i.sq
  call void @_ZdlPvm(ptr noundef nonnull %i.sm, i64 noundef %i.sr) #31, !inline_history !15
  br label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i180

_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i180: ; preds = %bb.cg, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i178
  %i.ss = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i170, i64 136 ; 2 uses
  %.not.i.i.i.i181 = icmp eq ptr %i.ss, %i.pi
  br i1 %.not.i.i.i.i181, label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i182, label %.lr.ph.i.i.i.i169, !llvm.loop !16

_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i182: ; preds = %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i180
  %.pr.i.i183 = load ptr, ptr %i.pf, align 8, !tbaa !211
  br label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i184

_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i184: ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i182, %.critedge79
  %i.st = phi ptr [ %.pr.i.i183, %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i182 ], [ %i.pg, %.critedge79 ] ; 3 uses
  %.not.i.i1.i.i185 = icmp eq ptr %i.st, null
  br i1 %.not.i.i1.i.i185, label %_ZN5arrow7compute8ExecSpanD2Ev.exit186, label %bb.ch

bb.ch:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i184
  %i.su = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !310
  %i.sw = ptrtoint ptr %i.sv to i64
  %i.sx = ptrtoint ptr %i.st to i64
  %i.sy = sub i64 %i.sw, %i.sx
  call void @_ZdlPvm(ptr noundef nonnull %i.st, i64 noundef %i.sy) #31
  br label %_ZN5arrow7compute8ExecSpanD2Ev.exit186

_ZN5arrow7compute8ExecSpanD2Ev.exit186:           ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i184, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %.critedge

.critedge.loopexit:                               ; preds = %_ZN5arrow5DatumD2Ev.exit
  store ptr %i.sa, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZN5arrow7compute8ExecSpanD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit101.thread, %_ZN5arrow6StatusD2Ev.exit157, %_ZN5arrow6StatusD2Ev.exit101, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow7compute8ExecSpanD2Ev.exit186, %.critedge84
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor11WrapResultsERKSt6vectorINS_5DatumESaIS5_EES9_(ptr dead_on_unwind noalias writable sret(%"struct.arrow::Datum") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.228, align 8            ; 5 uses
  %5 = alloca %"class.std::shared_ptr.41", align 8 ; 4 uses
  %6 = alloca %"struct.arrow::TypeHolder", align 8 ; 8 uses
  %7 = alloca %"class.std::shared_ptr.57", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !400
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 130
  %i.d = load i8, ptr %i.c, align 2, !tbaa !938, !range !136, !noundef !137
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %3, align 8, !tbaa !68
  br label %bb.ae

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !tbaa !99    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val8 = load ptr, ptr %i.f, align 8, !tbaa !99 ; 2 uses
  %.not.i = icmp eq ptr %.val, %.val8
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 24 ; 2 uses
  %.not9.i = icmp eq ptr %i.g, %.val8
  br i1 %.not9.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.01.06.i = phi ptr [ %i.g, %bb.c ], [ %.val, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !101
  %.not5.i = icmp eq i8 %i.i, 3
  br i1 %.not5.i, label %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.l = load ptr, ptr %3, align 8, !tbaa !68     ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ugt i64 %i.o, 24
  br i1 %i.p, label %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit, label %bb.ae

_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit: ; preds = %.lr.ph.i, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !359, !noalias !939 ; 3 uses
  %.not.i9 = icmp eq ptr %i.r, null
  br i1 %.not.i9, label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !360, !noalias !942 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !95, !alias.scope !942
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = load atomic i32, ptr %i.w monotonic, align 8, !noalias !942
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.e ], [ %i.ab, %bb.g ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.z = cmpxchg weak ptr %i.w, i32 %.06.i.i.i.i.i.i.i, i32 %i.y acq_rel monotonic, align 8, !noalias !942 ; 2 uses
  %i.aa = extractvalue { i32, i1 } %i.z, 1
  %i.ab = extractvalue { i32, i1 } %i.z, 0
  br i1 %i.aa, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, label %bb.f, !llvm.loop !31

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #27, !noalias !942 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.ac, align 8, !tbaa !89, !noalias !942
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #28, !noalias !942
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit.i:       ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !361, !noalias !942
  %.pre16 = load ptr, ptr %i.s, align 8, !tbaa !95
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit:      ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i
  %i.af = phi ptr [ %.pre16, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i ], [ null, %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit ]
  %i.ag = phi ptr [ %i.ae, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i ], [ null, %_ZN5arrow7compute6detail12_GLOBAL__N_116HaveChunkedArrayERKSt6vectorINS_5DatumESaIS4_EE.exit ] ; 2 uses
  store ptr %i.ag, ptr %6, align 8, !tbaa !359
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !230
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !95
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !95
  store ptr null, ptr %7, align 8, !tbaa !230
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114ToChunkedArrayERKSt6vectorINS_5DatumESaIS4_EERKNS_10TypeHolderE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.h unwind label %bb.ab

bb.h:                                             ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  invoke void @_ZN5arrow5DatumC1ESt10shared_ptrINS_12ChunkedArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5)
          to label %bb.i unwind label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !95 ; 8 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8, !tbaa !106
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !107
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !89
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #27, !inline_history !6
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #27, !inline_history !6
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ap, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ba, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !94

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  %i.bb = load ptr, ptr %i.ai, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i10 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i10, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bc, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !107
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !89
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #27, !inline_history !34
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !89
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #27, !inline_history !34
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.bf, %bb.s ], [ %i.bp, %bb.t ]
  %i.bq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bq, label %bb.u, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !94

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  %i.br = load ptr, ptr %i.aj, align 8, !tbaa !95 ; 8 uses
  %.not.i.i11 = icmp eq ptr %i.br, null
  br i1 %.not.i.i11, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5arrow10TypeHolderD2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bs, align 8, !tbaa !106
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !107
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !89
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #27, !inline_history !28
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !89
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #27, !inline_history !28
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i12 = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i12, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !44
end_hunk_3
