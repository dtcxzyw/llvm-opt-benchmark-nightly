Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/allgather?download=true
inline.NumInlined: 1185
inline.NumDeleted: 570
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7xgboost10collective6detail14RingAllgatherVERKNS0_4CommENS_6common4SpanIKlLm18446744073709551615EEES8_NS6_IaLm18446744073709551615EEE:bb.a
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn.pn, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.bf

bb.aq:                                            ; preds = %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.as

.critedge30:                                      ; preds = %bb.ao, %bb.l, %.preheader
  %i.hq = load ptr, ptr %1, align 8, !tbaa !57
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8
  invoke void %i.hs(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %.critedge30
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.as:                                            ; preds = %bb.aq, %.critedge30
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !67 ; 8 uses
  %.not.i.i71 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i71, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 4 uses
  %i.hx = load atomic i64, ptr %i.hw acquire, align 8 ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 4294967297
  %i.hz = trunc i64 %i.hx to i32                  ; 2 uses
  br i1 %i.hy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.hw, align 8, !tbaa !69
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  store i32 0, ptr %i.ia, align 4, !tbaa !70
  %i.ib = load ptr, ptr %i.hv, align 8, !tbaa !57
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #13, !inline_history !204
  %i.ie = load ptr, ptr %i.hv, align 8, !tbaa !57
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #13, !inline_history !204
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.av:                                            ; preds = %bb.at
  %i.ih = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i72 = icmp eq i8 %i.ih, 0
  br i1 %.not.i.i.i72, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ii = add nsw i32 %i.hz, -1
  store i32 %i.ii, ptr %i.hw, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.ij = atomicrmw volatile add ptr %i.hw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i = phi i32 [ %i.hz, %bb.aw ], [ %i.ij, %bb.ax ]
  %i.ik = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ik, label %bb.ay, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #13
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.as, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.il = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !67 ; 8 uses
  %.not.i.i73 = icmp eq ptr %i.im, null
  br i1 %.not.i.i73, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77, label %bb.az

bb.az:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 4 uses
  %i.io = load atomic i64, ptr %i.in acquire, align 8 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 4294967297
  %i.iq = trunc i64 %i.io to i32                  ; 2 uses
  br i1 %i.ip, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.in, align 8, !tbaa !69
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  store i32 0, ptr %i.ir, align 4, !tbaa !70
  %i.is = load ptr, ptr %i.im, align 8, !tbaa !57
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #13, !inline_history !204
  %i.iv = load ptr, ptr %i.im, align 8, !tbaa !57
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #13, !inline_history !204
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77

bb.bb:                                            ; preds = %bb.az
  %i.iy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i74 = icmp eq i8 %i.iy, 0
  br i1 %.not.i.i.i74, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iz = add nsw i32 %i.iq, -1
  store i32 %i.iz, ptr %i.in, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75

bb.bd:                                            ; preds = %bb.bb
  %i.ja = atomicrmw volatile add ptr %i.in, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i76 = phi i32 [ %i.iq, %bb.bc ], [ %i.ja, %bb.bd ]
  %i.jb = icmp eq i32 %.0.i.i.i.i76, 1
  br i1 %i.jb, label %bb.be, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77, !prof !50

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #13
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.bh

bb.bf:                                            ; preds = %bb.ar, %bb.ap
  %.pn26 = phi { ptr, i32 } [ %i.ht, %bb.ar ], [ %.pn23.pn, %bb.ap ]
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #13
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.m
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.bf ], [ %i.bw, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn26.pn

bb.bh:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !3
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !3
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost10collective16VectorAllgatherVEPKNS_7ContextERKNS0_9CommGroupERKSt6vectorIS7_IcSaIcEESaIS9_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.22") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.27", align 8    ; 10 uses
  %5 = alloca %"class.xgboost::HostDeviceVector", align 8 ; 10 uses
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 10 uses
  %7 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 8 uses
  %8 = alloca %"class.std::vector.45", align 8    ; 12 uses
  %9 = alloca %"struct.xgboost::collective::Result", align 8 ; 8 uses
  %10 = alloca %"class.xgboost::linalg::TensorView.49", align 8 ; 8 uses
  %11 = alloca %"class.std::vector.45", align 8   ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !74     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #30
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %.noexc71

.noexc71:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 3
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #28 ; 5 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !52
  %i.l = getelementptr i8, ptr %i.j, i64 8        ; 3 uses
  %i.m = add nsw i64 %i.g, -1                     ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc71
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc71, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi ptr [ %i.k, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc71 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0162.0 = phi ptr [ %i.j, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc71 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 10 uses
  %.0.i.i.i.i.i = phi ptr [ %i.o, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc71 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !229    ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !229  ; 2 uses
  %.not7.i = icmp eq ptr %i.p, %i.q
  br i1 %.not7.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIcSaIcEES2_IS4_SaIS4_EEEENS1_IPlS2_IlSaIlEEEEZN7xgboost10collective16VectorAllgatherVEPKNSE_7ContextERKNSF_9CommGroupERKS8_E3$_0ET0_T_SQ_SP_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %.lr.ph.i
  %.sroa.0.09.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.sroa.0162.0, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ] ; 2 uses
  %.sroa.04.08.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.p, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ] ; 3 uses
  %.val.i = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !76
  %i.r = getelementptr i8, ptr %.sroa.04.08.i, i64 8
  %.val1.i = load ptr, ptr %i.r, align 8, !tbaa !77
  %i.s = ptrtoint ptr %.val1.i to i64
  %i.t = ptrtoint ptr %.val.i to i64
  %i.u = sub i64 %i.s, %i.t
  store i64 %i.u, ptr %.sroa.0.09.i, align 8, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 8
  %.not.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIcSaIcEES2_IS4_SaIS4_EEEENS1_IPlS2_IlSaIlEEEEZN7xgboost10collective16VectorAllgatherVEPKNSE_7ContextERKNSF_9CommGroupERKS8_E3$_0ET0_T_SQ_SP_T1_.exit", label %.lr.ph.i, !llvm.loop !219

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIcSaIcEES2_IS4_SaIS4_EEEENS1_IPlS2_IlSaIlEEEEZN7xgboost10collective16VectorAllgatherVEPKNSE_7ContextERKNSF_9CommGroupERKS8_E3$_0ET0_T_SQ_SP_T1_.exit": ; preds = %.lr.ph.i, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.x = load ptr, ptr %2, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, -1
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = select i1 %.not.i.i, i32 2, i32 %i.aa   ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIcSaIcEES2_IS4_SaIS4_EEEENS1_IPlS2_IlSaIlEEEEZN7xgboost10collective16VectorAllgatherVEPKNSE_7ContextERKNSF_9CommGroupERKS8_E3$_0ET0_T_SQ_SP_T1_.exit"
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #30
          to label %.noexc75 unwind label %bb.m

.noexc75:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIcSaIcEES2_IS4_SaIS4_EEEENS1_IPlS2_IlSaIlEEEEZN7xgboost10collective16VectorAllgatherVEPKNSE_7ContextERKNSF_9CommGroupERKS8_E3$_0ET0_T_SQ_SP_T1_.exit"
  %i.ae = shl nuw nsw i64 %i.ac, 3                ; 3 uses
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #28
          to label %.noexc76 unwind label %bb.m   ; 4 uses

.noexc76:                                         ; preds = %bb.c
  store ptr %i.af, ptr %4, align 8, !tbaa !83
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ac
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !84
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.af, i8 0, i64 %i.ae, i1 false), !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ai, ptr %12, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  invoke void @_ZN7xgboost16HostDeviceVectorIaEC1EmaNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0, i8 noundef signext 0, i32 -65536)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %.noexc76
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.aj = ptrtoint ptr %.sroa.0162.0 to i64       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.ak = icmp ne ptr %.sroa.0162.0, null
  %i.al = icmp eq ptr %.0.i.i.i.i.i, null
  %i.am = or i1 %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %bb.e, !prof !51

bb.e:                                             ; preds = %bb.d
  call void @_ZSt9terminatev() #27, !noalias !230
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.an = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.ao = sub i64 %i.an, %i.aj
  %i.ap = ashr exact i64 %i.ao, 3                 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !52, !alias.scope !230
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.sroa.0162.0, ptr %.sroa.27.0..sroa_idx.i.i.i, align 8, !tbaa !86, !alias.scope !230
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %.sroa.0162.0, ptr %i.as, align 8, !tbaa !235, !alias.scope !230
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 -65536, ptr %i.au, align 8, !alias.scope !230
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !52, !alias.scope !230
  store i64 1, ptr %7, align 8, !tbaa !52, !alias.scope !230
  store i64 %i.ap, ptr %i.at, align 8, !tbaa !236, !alias.scope !230
  invoke void @_ZN7xgboost10collective10AllgatherVIlEENS0_6ResultEPKNS_7ContextERKNS0_9CommGroupENS_6linalg10TensorViewIT_Li1EEEPSt6vectorIlSaIlEEPNS_16HostDeviceVectorIaEE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %7, ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7xgboost10collective8SafeCollERKNS0_6ResultEPKci(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str, i32 noundef 125)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.av = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIaE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.i unwind label %bb.q       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !89
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !90 ; 5 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %.fr = freeze i64 %i.bb                         ; 3 uses
  %i.bc = lshr i64 %.fr, 3                        ; 3 uses
  %i.bd = icmp ne ptr %i.ay, null
  %i.be = icmp eq i64 %i.bc, 0                    ; 2 uses
  %i.bf = or i1 %i.bd, %i.be
  br i1 %i.bf, label %bb.k, label %bb.j, !prof !51

bb.j:                                             ; preds = %bb.i
  call void @_ZSt9terminatev() #27
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bg = add nuw nsw i64 %i.bc, 1                ; 3 uses
  %i.bh = icmp ugt i64 %.fr, 9223372036854775799
  br i1 %i.bh, label %bb.l, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i78

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #30
          to label %.noexc84 unwind label %bb.r

.noexc84:                                         ; preds = %bb.l
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i78: ; preds = %bb.k
  %i.bi = shl nuw nsw i64 %i.bg, 3                ; 3 uses
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #28
          to label %.noexc85 unwind label %bb.r   ; 10 uses

.noexc85:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i78
  store i64 0, ptr %i.bj, align 8, !tbaa !52
  %i.bk = getelementptr i8, ptr %i.bj, i64 8      ; 3 uses
  br i1 %i.be, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit86, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i80

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i80: ; preds = %.noexc85
  %.idx.i.i.i.i.i.i.i81 = and i64 %.fr, 9223372036854775800 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.bk, i8 0, i64 %.idx.i.i.i.i.i.i.i81, i1 false), !tbaa !52
  %i.bl = getelementptr i8, ptr %i.bk, i64 %.idx.i.i.i.i.i.i.i81
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit86

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit86:             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i80, %.noexc85
  %.0.i.i.i.i.i82 = phi ptr [ %i.bl, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i80 ], [ %i.bk, %.noexc85 ]
  store i64 0, ptr %i.bj, align 8, !tbaa !52
  %i.bm = ptrtoint ptr %.0.i.i.i.i.i82 to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr i64 %i.bo, 3                       ; 4 uses
  %i.bq = icmp ugt i64 %i.bp, 1                   ; 2 uses
  br i1 %i.bq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit86
  %i.br = add nsw i64 %i.bp, -1                   ; 3 uses
  %xtraiter = and i64 %i.br, 1
  %i.bs = icmp eq i64 %i.bp, 2
  br i1 %i.bs, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.br, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cr, %._crit_edge.loopexit.unr-lcssa ]
  %.054175.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ct, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod222 = trunc i64 %i.br to i1
  call void @llvm.assume(i1 %lcmp.mod222)
  %exitcond.not.epil = icmp eq i64 %.054175.epil.init, %i.bg
  br i1 %exitcond.not.epil, label %.loopexit223, label %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.epil, !prof !50

_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.epil: ; preds = %.lr.ph.epil.preheader
  %i.bt = getelementptr [8 x i8], ptr %i.ay, i64 %.054175.epil.init
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !52
  %i.bw = add nsw i64 %i.bv, %.epil.init
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.054175.epil.init
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.epil, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit86
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.by = load ptr, ptr %3, align 8, !tbaa !229   ; 2 uses
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !229 ; 2 uses
  %.not176 = icmp eq ptr %i.by, %i.bz
  br i1 %.not176, label %._crit_edge180.thread, label %.lr.ph179

._crit_edge180.thread:                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  br label %bb.w

.lr.ph179:                                        ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.s

bb.m:                                             ; preds = %bb.c, %bb.b
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit134

bb.n:                                             ; preds = %.noexc76
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.o:                                             ; preds = %bb.f
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.p:                                             ; preds = %bb.g
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.q:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i78, %bb.l
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.lr.ph:                                           ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.1, %.lr.ph.preheader.new
  %i.ch = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cr, %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.1 ]
  %.054175 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.ct, %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.1 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.1 ]
  %exitcond.not = icmp eq i64 %.054175, %i.bg
  br i1 %exitcond.not, label %.loopexit223, label %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit, !prof !50

.loopexit223:                                     ; preds = %.lr.ph, %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit, %.lr.ph.epil.preheader
  call void @_ZSt9terminatev() #27
  unreachable

_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit: ; preds = %.lr.ph
  %i.ci = getelementptr [8 x i8], ptr %i.ay, i64 %.054175
  %i.cj = getelementptr i8, ptr %i.ci, i64 -8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !52
  %i.cl = add nsw i64 %i.ck, %i.ch                ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.054175
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !52
  %exitcond.not.1 = icmp eq i64 %.054175, %i.bc
  br i1 %exitcond.not.1, label %.loopexit223, label %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.1, !prof !50

_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.1: ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit
  %i.cn = add nuw nsw i64 %.054175, 1             ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.ay, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 -8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !52
  %i.cr = add nsw i64 %i.cq, %i.cl                ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cn
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !52
  %i.ct = add nuw nsw i64 %.054175, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !222

bb.s:                                             ; preds = %.lr.ph179, %bb.t
  %.sroa.0143.0177 = phi ptr [ %i.by, %.lr.ph179 ], [ %i.dd, %bb.t ] ; 3 uses
  %i.cu = load ptr, ptr %i.ca, align 8, !tbaa !91
  %i.cv = load ptr, ptr %.sroa.0143.0177, align 8, !tbaa !91
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0143.0177, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !91
  %i.cy = load ptr, ptr %8, align 8, !tbaa !91    ; 2 uses
  %i.cz = ptrtoint ptr %i.cu to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %i.db
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEvNS4_IPcS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.dc, ptr %i.cv, ptr %i.cx)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0143.0177, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.dd, %i.bz
  br i1 %.not, label %._crit_edge180, label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

._crit_edge180:                                   ; preds = %bb.t
  %.pre = load ptr, ptr %8, align 8, !tbaa !76    ; 2 uses
  %.pre186 = load ptr, ptr %i.ca, align 8, !tbaa !77 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.df = icmp ne ptr %.pre, null
  %i.dg = icmp eq ptr %.pre186, null
  %i.dh = or i1 %i.df, %i.dg
  br i1 %i.dh, label %bb.w, label %bb.v, !prof !238

bb.v:                                             ; preds = %._crit_edge180
  call void @_ZSt9terminatev() #27, !noalias !237
  unreachable

bb.w:                                             ; preds = %._crit_edge180.thread, %._crit_edge180
  %i.di = phi ptr [ null, %._crit_edge180.thread ], [ %.pre, %._crit_edge180 ] ; 3 uses
  %i.dj = phi ptr [ null, %._crit_edge180.thread ], [ %.pre186, %._crit_edge180 ]
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dl, %i.dk                    ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.dm, ptr %i.do, align 8, !tbaa !52, !alias.scope !237
  %.sroa.27.0..sroa_idx.i.i.i88 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.di, ptr %.sroa.27.0..sroa_idx.i.i.i88, align 8, !tbaa !91, !alias.scope !237
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.di, ptr %i.dp, align 8, !tbaa !240, !alias.scope !237
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 -65536, ptr %i.dr, align 8, !alias.scope !237
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !52, !alias.scope !237
  store i64 1, ptr %10, align 8, !tbaa !52, !alias.scope !237
  store i64 %i.dm, ptr %i.dq, align 8, !tbaa !241, !alias.scope !237
  invoke void @_ZN7xgboost10collective10AllgatherVIcEENS0_6ResultEPKNS_7ContextERKNS0_9CommGroupENS_6linalg10TensorViewIT_Li1EEEPSt6vectorIlSaIlEEPNS_16HostDeviceVectorIaEE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %9, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.49") align 8 %10, ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ds = load ptr, ptr %9, align 8, !tbaa !58
  store ptr null, ptr %9, align 8, !tbaa !58
  %i.dt = load ptr, ptr %6, align 8, !tbaa !58    ; 3 uses
  store ptr %i.ds, ptr %6, align 8, !tbaa !58
  %.not.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost10collective6ResultD2Ev.exit, label %_ZN7xgboost10collective6ResultaSEOS1_.exit

_ZN7xgboost10collective6ResultaSEOS1_.exit:       ; preds = %bb.x
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.dt) #13, !inline_history !225
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef 56) #26, !inline_history !225
  %.pr = load ptr, ptr %9, align 8, !tbaa !58     ; 3 uses
  %.not.i.i89 = icmp eq ptr %.pr, null
  br i1 %.not.i.i89, label %_ZN7xgboost10collective6ResultD2Ev.exit, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %_ZN7xgboost10collective6ResultaSEOS1_.exit
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.pr) #13, !inline_history !0
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 56) #26, !inline_history !0
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

_ZN7xgboost10collective6ResultD2Ev.exit:          ; preds = %bb.x, %_ZN7xgboost10collective6ResultaSEOS1_.exit, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  invoke void @_ZN7xgboost10collective8SafeCollERKNS0_6ResultEPKci(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str, i32 noundef 140)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit
  %i.du = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIaE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.z unwind label %bb.ad      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !89 ; 2 uses
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !90 ; 4 uses
  %i.dy = icmp ne ptr %i.dx, null
  %i.dz = icmp eq ptr %i.dw, null
  %i.ea = or i1 %i.dz, %i.dy
  br i1 %i.ea, label %_ZN7xgboost6common11RestoreTypeIKcKaEENS0_4SpanIT_Lm18446744073709551615EEENS4_IT0_Lm18446744073709551615EEE.exit, label %bb.aa, !prof !51

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt9terminatev() #27
  unreachable

_ZN7xgboost6common11RestoreTypeIKcKaEENS0_4SpanIT_Lm18446744073709551615EEENS4_IT0_Lm18446744073709551615EEE.exit: ; preds = %bb.z
  %i.eb = ptrtoint ptr %i.dx to i64               ; 2 uses
  %i.ec = ptrtoint ptr %i.dw to i64
  %i.ed = sub i64 %i.ec, %i.eb                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %i.bq, label %.lr.ph182, label %._crit_edge183

.lr.ph182:                                        ; preds = %_ZN7xgboost6common11RestoreTypeIKcKaEENS0_4SpanIT_Lm18446744073709551615EEENS4_IT0_Lm18446744073709551615EEE.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ae

bb.ab:                                            ; preds = %bb.w
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.ar

bb.ac:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ad:                                            ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ae:                                            ; preds = %.lr.ph182, %_ZNSt6vectorIcSaIcEED2Ev.exit
  %.055181 = phi i64 [ 1, %.lr.ph182 ], [ %i.ge, %_ZNSt6vectorIcSaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.el = getelementptr [8 x i8], ptr %i.bj, i64 %.055181 ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 -8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !52 ; 10 uses
  %.not.i.i98 = icmp ugt i64 %i.en, %i.ed
  br i1 %.not.i.i98, label %bb.af, label %bb.ag, !prof !50

bb.af:                                            ; preds = %bb.ae
end_hunk_0
begin_hunk_1_@_ZN7xgboost10collective16VectorAllgatherVEPKNS_7ContextERKNS0_9CommGroupERKSt6vectorIS7_IcSaIcEESaIS9_EE:bb.a
.noexc.i:                                         ; preds = %bb.ai
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKcLm18446744073709551615EEELb1EEmiES6_.exit.i.i
  %.not.i.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #28
          to label %.noexc7.i unwind label %.loopexit171 ; 8 uses

.noexc7.i:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  store ptr %i.er, ptr %11, align 8, !tbaa !76
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep ; 2 uses
  store ptr %i.es, ptr %i.ee, align 8, !tbaa !93
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.ed, i64 %i.en) ; 2 uses
  %i.et = xor i64 %i.en, -1
  %i.eu = add i64 %i.eo, %i.et
  %i.ev = sub i64 %umax.i.i, %i.en
  %i.ew = call i64 @llvm.umin.i64(i64 %i.eu, i64 %i.ev)
  %i.ex = add i64 %i.ew, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ex, 33
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc7.i
  %i.ey = ptrtoaddr ptr %i.er to i64
  %i.ez = add i64 %i.en, %i.eb
  %i.fa = sub i64 %i.ez, %i.ey
  %diff.check = icmp ugt i64 %i.fa, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fb = and i64 %i.ex, 31                       ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  %i.fd = select i1 %i.fc, i64 32, i64 %i.fb
  %n.vec = sub i64 %i.ex, %i.fd                   ; 4 uses
  %i.fe = getelementptr i8, ptr %i.er, i64 %n.vec
  %i.ff = sub i64 %i.ep, %n.vec
  %i.fg = add i64 %i.en, %n.vec
  %i.fh = getelementptr i8, ptr %i.dx, i64 %i.en
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.er, i64 %index ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 %index ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %wide.load = load <16 x i8>, ptr %i.fi, align 1, !tbaa !46
  %wide.load219 = load <16 x i8>, ptr %i.fj, align 1, !tbaa !46
  %i.fk = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !46
  store <16 x i8> %wide.load219, ptr %i.fk, align 1, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %scalar.ph.preheader, label %vector.body, !llvm.loop !226

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.noexc7.i
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.er, %vector.memcheck ], [ %i.er, %.noexc7.i ], [ %i.fe, %vector.body ]
  %.0411.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ep, %vector.memcheck ], [ %i.ep, %.noexc7.i ], [ %i.ff, %vector.body ]
  %.sroa.3.010.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.en, %vector.memcheck ], [ %i.en, %.noexc7.i ], [ %i.fg, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKcLm18446744073709551615EEELb1EEdeEv.exit.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fp, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKcLm18446744073709551615EEELb1EEdeEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0411.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fq, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKcLm18446744073709551615EEELb1EEdeEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %.0411.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.3.010.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fo, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKcLm18446744073709551615EEELb1EEdeEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.3.010.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.3.010.i.i.i.i.i.i.i.i.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %bb.aj, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKcLm18446744073709551615EEELb1EEdeEv.exit.i.i.i.i.i.i.i.i.i.i, !prof !50

bb.aj:                                            ; preds = %scalar.ph
  call void @_ZSt9terminatev() #27
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKcLm18446744073709551615EEELb1EEdeEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %scalar.ph
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.sroa.3.010.i.i.i.i.i.i.i.i.i.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !46
  store i8 %i.fn, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !46
  %i.fo = add i64 %.sroa.3.010.i.i.i.i.i.i.i.i.i.i, 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.fq = add nsw i64 %.0411.i.i.i.i.i.i.i.i.i.i, -1
  %i.fr = icmp sgt i64 %.0411.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.fr, label %scalar.ph, label %.loopexit, !llvm.loop !227

.loopexit171:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit171
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit171 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fs = load ptr, ptr %11, align 8, !tbaa !76   ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i8.i, label %.body, label %.body.sink.split

.loopexit:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKcLm18446744073709551615EEELb1EEdeEv.exit.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ft = phi ptr [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.es, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKcLm18446744073709551615EEELb1EEdeEv.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.fu = phi ptr [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.er, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKcLm18446744073709551615EEELb1EEdeEv.exit.i.i.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fp, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKcLm18446744073709551615EEELb1EEdeEv.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.ef, align 8, !tbaa !77
  %i.fv = load ptr, ptr %i.eg, align 8, !tbaa !73 ; 6 uses
  %i.fw = load ptr, ptr %i.eh, align 8, !tbaa !96
  %.not.i110 = icmp eq ptr %i.fv, %i.fw
  br i1 %.not.i110, label %bb.al, label %_ZNSt6vectorIS_IcSaIcEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread

_ZNSt6vectorIS_IcSaIcEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread: ; preds = %.loopexit
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !76
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.fx, align 8, !tbaa !77
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store ptr %i.ft, ptr %i.fy, align 8, !tbaa !93
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  store ptr %i.fz, ptr %i.eg, align 8, !tbaa !73
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

bb.al:                                            ; preds = %.loopexit
  invoke void @_ZNSt6vectorIS_IcSaIcEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZNSt6vectorIS_IcSaIcEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit unwind label %bb.an

_ZNSt6vectorIS_IcSaIcEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.al
  %.pr169 = load ptr, ptr %11, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i112 = icmp eq ptr %.pr169, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIS_IcSaIcEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %i.ga = load ptr, ptr %i.ee, align 8, !tbaa !93
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %.pr169 to i64
  %i.gd = sub i64 %i.gb, %i.gc
  call void @_ZdlPvm(ptr noundef nonnull %.pr169, i64 noundef %i.gd) #26
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IcSaIcEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread, %_ZNSt6vectorIS_IcSaIcEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.ge = add nuw i64 %.055181, 1                 ; 2 uses
  %exitcond185.not = icmp eq i64 %i.ge, %i.bp
  br i1 %exitcond185.not, label %._crit_edge183, label %bb.ae, !llvm.loop !228

bb.an:                                            ; preds = %bb.al
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %11, align 8, !tbaa !76   ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i114, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.an, %bb.ak
  %.sink217 = phi ptr [ %i.fs, %bb.ak ], [ %i.gg, %bb.an ] ; 2 uses
  %.pn58.ph = phi { ptr, i32 } [ %lpad.phi, %bb.ak ], [ %i.gf, %bb.an ]
  %i.gh = load ptr, ptr %i.ee, align 8, !tbaa !93
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %.sink217 to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %.sink217, i64 noundef %i.gk) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.an, %bb.ak
  %.pn58 = phi { ptr, i32 } [ %lpad.phi, %bb.ak ], [ %i.gf, %bb.an ], [ %.pn58.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #13
  br label %bb.ar

._crit_edge183:                                   ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %_ZN7xgboost6common11RestoreTypeIKcKaEENS0_4SpanIT_Lm18446744073709551615EEENS4_IT0_Lm18446744073709551615EEE.exit
  %i.gl = load ptr, ptr %8, align 8, !tbaa !76    ; 3 uses
  %.not.i.i.i117 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge183
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !93
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gq) #26
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge183, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bi) #26
  %i.gr = load ptr, ptr %6, align 8, !tbaa !58    ; 3 uses
  %.not.i.i121 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i121, label %_ZN7xgboost10collective6ResultD2Ev.exit123, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i122

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i122: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.gr) #13, !inline_history !0
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef 56) #26, !inline_history !0
  br label %_ZN7xgboost10collective6ResultD2Ev.exit123

_ZN7xgboost10collective6ResultD2Ev.exit123:       ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZN7xgboost16HostDeviceVectorIaED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.gs = load ptr, ptr %4, align 8, !tbaa !83    ; 3 uses
  %.not.i.i.i124 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIlSaIlEED2Ev.exit125, label %bb.ap

bb.ap:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit123
  %i.gt = load ptr, ptr %i.ah, align 8, !tbaa !84
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gw) #26
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit125

_ZNSt6vectorIlSaIlEED2Ev.exit125:                 ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit123, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.not.i.i.i126 = icmp eq ptr %.sroa.0162.0, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIlSaIlEED2Ev.exit127, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit125
  %i.gx = ptrtoint ptr %.sroa.13.0 to i64
  %i.gy = sub i64 %i.gx, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0162.0, i64 noundef %i.gy) #26
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit127

_ZNSt6vectorIlSaIlEED2Ev.exit127:                 ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit125, %bb.aq
  ret void

bb.ar:                                            ; preds = %bb.ad, %.body, %bb.ac, %bb.ab, %bb.u
  %.pn61 = phi { ptr, i32 } [ %i.de, %bb.u ], [ %i.ei, %bb.ab ], [ %i.ej, %bb.ac ], [ %.pn58, %.body ], [ %i.ek, %bb.ad ]
  %i.gz = load ptr, ptr %8, align 8, !tbaa !76    ; 3 uses
  %.not.i.i.i128 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i128, label %_ZNSt6vectorIlSaIlEED2Ev.exit132, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !93
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.he) #26
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit132

_ZNSt6vectorIlSaIlEED2Ev.exit132:                 ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bi) #26
  br label %bb.at

bb.at:                                            ; preds = %bb.q, %_ZNSt6vectorIlSaIlEED2Ev.exit132, %bb.r, %bb.p
  %.pn61.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.p ], [ %i.cf, %bb.q ], [ %.pn61, %_ZNSt6vectorIlSaIlEED2Ev.exit132 ], [ %i.cg, %bb.r ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #13
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.o
  %.pn61.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn, %bb.at ], [ %i.cd, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZN7xgboost16HostDeviceVectorIaED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #13
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.n
  %.pn61.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn, %bb.au ], [ %i.cc, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.hf = load ptr, ptr %4, align 8, !tbaa !83    ; 3 uses
  %.not.i.i.i133 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i133, label %_ZNSt6vectorIlSaIlEED2Ev.exit134, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hg = load ptr, ptr %i.ah, align 8, !tbaa !84
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.hf to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hj) #26
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit134

_ZNSt6vectorIlSaIlEED2Ev.exit134:                 ; preds = %bb.aw, %bb.av, %bb.m
  %.pn61.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.m ], [ %.pn61.pn.pn.pn.pn.pn, %bb.av ], [ %.pn61.pn.pn.pn.pn.pn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.not.i.i.i135 = icmp eq ptr %.sroa.0162.0, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIlSaIlEED2Ev.exit136, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit134
  %i.hk = ptrtoint ptr %.sroa.13.0 to i64
  %i.hl = ptrtoint ptr %.sroa.0162.0 to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0162.0, i64 noundef %i.hm) #26
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit136

_ZNSt6vectorIlSaIlEED2Ev.exit136:                 ; preds = %bb.ax, %_ZNSt6vectorIlSaIlEED2Ev.exit134
  resume { ptr, i32 } %.pn61.pn.pn.pn.pn.pn.pn
}

declare void @_ZN7xgboost16HostDeviceVectorIaEC1EmaNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i8 noundef signext, i32) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost10collective10AllgatherVIlEENS0_6ResultEPKNS_7ContextERKNS0_9CommGroupENS_6linalg10TensorViewIT_Li1EEEPSt6vectorIlSaIlEEPNS_16HostDeviceVectorIaEE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.40", align 8 ; 7 uses
  %8 = alloca %"class.std::shared_ptr.40", align 8 ; 7 uses
  %9 = alloca %"class.xgboost::common::Span.18", align 8 ; 3 uses
  %10 = alloca %"class.xgboost::common::Span.43", align 8 ; 3 uses
  %11 = alloca %"class.xgboost::common::Span", align 8 ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39   ; 4 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !49, !alias.scope !246
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #30
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  %i.e = zext nneg i32 %i.c to i64                ; 5 uses
  %.not.i.i.i.i = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 7 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.f, i1 false), !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !97
  %i.k = shl i64 %i.j, 3
  %i.l = load ptr, ptr %2, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  store i64 %i.k, ptr %i.p, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  invoke void @_ZNK7xgboost10collective9CommGroup7BackendENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 -65536)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.q = load ptr, ptr %7, align 8, !tbaa !100    ; 2 uses
  %i.r = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZNK7xgboost10collective9CommGroup3CtxEPKNS_7ContextENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %1, i32 -65536)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(184) %i.r, i64 %i.f, ptr nonnull %i.g)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !67   ; 8 uses
  %.not.i.i52 = icmp eq ptr %i.w, null
  br i1 %.not.i.i52, label %_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.x, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !70
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #13, !inline_history !4
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #13, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.aa, %bb.j ], [ %i.ak, %bb.k ]
  %i.al = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.al, label %bb.l, label %_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #13
  br label %_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.am = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.p, label %.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.an = ptrtoint ptr %i.am to i64
  store i64 %i.an, ptr %0, align 8, !tbaa !58
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.m:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.e, %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.n ], [ %i.ao, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %.thread110

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aq = add nuw nsw i64 %i.e, 1                 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85 ; 4 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !83    ; 5 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.not115 = icmp ugt i64 %i.ax, %i.e
  br i1 %.not115, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = sub nuw nsw i64 %i.aq, %i.ax
  invoke void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.ay)
          to label %._ZNSt6vectorIlSaIlEE6resizeEm.exit_crit_edge unwind label %bb.am

._ZNSt6vectorIlSaIlEE6resizeEm.exit_crit_edge:    ; preds = %bb.q
  %.pre = load ptr, ptr %4, align 8, !tbaa !83
  %.pre117 = load ptr, ptr %i.ar, align 8, !tbaa !85
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.r:                                             ; preds = %bb.p
  %i.az = icmp ult i64 %i.aq, %i.ax
  br i1 %i.az, label %bb.s, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aq ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.as, %i.ba
  br i1 %.not.i.i53, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.s
  store ptr %i.ba, ptr %i.ar, align 8, !tbaa !85
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIlSaIlEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i, %bb.s, %bb.r
  %i.bb = phi ptr [ %.pre117, %._ZNSt6vectorIlSaIlEE6resizeEm.exit_crit_edge ], [ %i.ba, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i ], [ %i.as, %bb.s ], [ %i.as, %bb.r ] ; 2 uses
end_hunk_1
