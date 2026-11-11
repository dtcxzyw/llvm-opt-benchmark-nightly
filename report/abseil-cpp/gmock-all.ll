Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/gmock-all?download=true
inline.NumInlined: 2053
inline.NumDeleted: 922
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7testing8internal24FindMaxBipartiteMatchingERKNS0_11MatchMatrixE:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %i.k to i64
  %i.x = sub i64 %i.j, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.x) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.i ], [ %i.v, %bb.e ], [ %i.v, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN7testing8internal22MaxBipartiteMatchStateC2ERKNS0_11MatchMatrixE.exit: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i6.i, %.noexc14.i
  %.0.i.i.i.i.i.i.i11.i = phi ptr [ %i.u, %.noexc14.i ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i6.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %.0.i.i.i.i.i.i.i11.i, ptr %i.y, align 8, !tbaa !83
  invoke void @_ZN7testing8internal22MaxBipartiteMatchState7ComputeEv(ptr dead_on_unwind writable sret(%"class.std::vector.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN7testing8internal22MaxBipartiteMatchStateC2ERKNS0_11MatchMatrixE.exit
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i2, label %_ZNSt6vectorImSaImEED2Ev.exit.i3, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !82
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i3

_ZNSt6vectorImSaImEED2Ev.exit.i3:                 ; preds = %bb.g, %bb.f
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !81  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i1.i, label %_ZN7testing8internal22MaxBipartiteMatchStateD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i3
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !82
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #35
  br label %_ZN7testing8internal22MaxBipartiteMatchStateD2Ev.exit

_ZN7testing8internal22MaxBipartiteMatchStateD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i3, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

bb.i:                                             ; preds = %_ZN7testing8internal22MaxBipartiteMatchStateC2ERKNS0_11MatchMatrixE.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal22MaxBipartiteMatchStateD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal22MaxBipartiteMatchState7ComputeEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.18", align 8    ; 15 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !74
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.s, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %.not57 = icmp eq ptr %i.h, %i.i
  br i1 %.not57, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.u

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %.01249 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %bb.s ] ; 5 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.01249
  %i.n = load i64, ptr %i.m, align 8, !tbaa !66
  %i.o = icmp eq i64 %i.n, -1
  %i.p = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.o)
          to label %bb.c unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.97, i32 noundef 150)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.98, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.99, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %.01249)
          to label %_ZNSolsEm.exit unwind label %bb.g ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.100, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZNSolsEm.exit
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.01249
  %i.w = load i64, ptr %i.v, align 8, !tbaa !66
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef %i.w)
          to label %_ZNSolsEm.exit19 unwind label %bb.g ; 0 uses

_ZNSolsEm.exit19:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.y, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.c, %_ZNSolsEm.exit19
  %i.aa = load ptr, ptr %1, align 8, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !84 ; 10 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !299
  %i.ae = load ptr, ptr %2, align 8, !tbaa !85    ; 6 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ugt i64 %i.ac, %i.ah
  br i1 %i.ai, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp slt i64 %i.ac, 0
  br i1 %i.aj, label %bb.k, label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #37
          to label %.noexc26 unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.k
  unreachable

_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit.i:          ; preds = %bb.j
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #36
          to label %.noexc27 unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc27:                                         ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 0, i64 %i.ac, i1 false)
  %i.am = load ptr, ptr %2, align 8, !tbaa !85    ; 3 uses
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !299
  store ptr %i.ak, ptr %2, align 8, !tbaa !85
  store ptr %i.al, ptr %i.e, align 8, !tbaa !300
  store ptr %i.al, ptr %i.d, align 8, !tbaa !299
  %.not.i.i.i.i25 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i25, label %_ZNSt6vectorIcSaIcEE6assignEmRKc.exit, label %bb.l

bb.l:                                             ; preds = %.noexc27
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #35
  br label %_ZNSt6vectorIcSaIcEE6assignEmRKc.exit

bb.m:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !300 ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = sub i64 %i.as, %i.ag                    ; 2 uses
  %i.au = icmp ugt i64 %i.ac, %i.at
  br i1 %i.au, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i11.i = icmp eq ptr %i.ar, %i.ae
  br i1 %.not.i.i.i.i11.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 0, i64 %i.at, i1 false)
  %.pre14.i = load ptr, ptr %i.e, align 8, !tbaa !300 ; 2 uses
  %.pre15.i = load ptr, ptr %2, align 8, !tbaa !85
  %.pre16.i = ptrtoint ptr %.pre14.i to i64
  %.pre17.i = ptrtoint ptr %.pre15.i to i64
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit.i

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit.i: ; preds = %bb.o, %bb.n
  %.pre-phi18.i = phi i64 [ %i.ag, %bb.n ], [ %.pre17.i, %bb.o ]
  %.pre-phi.i = phi i64 [ %i.as, %bb.n ], [ %.pre16.i, %bb.o ]
  %4 = phi ptr [ %i.ar, %bb.n ], [ %.pre14.i, %bb.o ] ; 3 uses
  %.neg.i = sub i64 %.pre-phi18.i, %.pre-phi.i
  %i.av = add i64 %.neg.i, %i.ac                  ; 3 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.av
  call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %i.av, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E.exit.i

_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E.exit.i: ; preds = %bb.p, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit.i
  %.0.i.i.i.i.i.i = phi ptr [ %4, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit.i ], [ %i.ax, %bb.p ]
  store ptr %.0.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !300
  br label %_ZNSt6vectorIcSaIcEE6assignEmRKc.exit

bb.q:                                             ; preds = %bb.m
  %i.ay = icmp eq i64 %i.ac, 0
  br i1 %i.ay, label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 0, i64 %i.ac, i1 false)
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !300
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i

_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i:            ; preds = %bb.r, %bb.q
  %i.ba = phi ptr [ %i.ar, %bb.q ], [ %.pre.i, %bb.r ]
  %.0.i.i.i = phi ptr [ %i.ae, %bb.q ], [ %i.az, %bb.r ] ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.ba, %.0.i.i.i
  br i1 %.not.i.i24, label %_ZNSt6vectorIcSaIcEE6assignEmRKc.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i
  store ptr %.0.i.i.i, ptr %i.e, align 8, !tbaa !300
  br label %_ZNSt6vectorIcSaIcEE6assignEmRKc.exit

_ZNSt6vectorIcSaIcEE6assignEmRKc.exit:            ; preds = %.noexc27, %bb.l, %_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E.exit.i, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.bb = invoke noundef zeroext i1 @_ZN7testing8internal22MaxBipartiteMatchState10TryAugmentEmPSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %.01249, ptr noundef nonnull %2)
          to label %bb.s unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.s:                                             ; preds = %_ZNSt6vectorIcSaIcEE6assignEmRKc.exit
  %i.bc = add nuw i64 %.01249, 1                  ; 2 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !74
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.bf = icmp ult i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.b, label %._crit_edge, !llvm.loop !293

.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %_ZNSt6vectorIcSaIcEE6assignEmRKc.exit, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit.i, %bb.k
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

._crit_edge56:                                    ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit, %._crit_edge
  %.lcssa50 = phi ptr [ null, %._crit_edge ], [ %i.cl, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ]
  store ptr %.lcssa50, ptr %0, align 8
  %i.bg = load ptr, ptr %2, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge56
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !299
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #35
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge56, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

bb.u:                                             ; preds = %.lr.ph55, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit
  %i.bm = phi ptr [ null, %.lr.ph55 ], [ %i.ck, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 8 uses
  %i.bn = phi ptr [ %i.i, %.lr.ph55 ], [ %i.co, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ]
  %storemerge53 = phi i64 [ 0, %.lr.ph55 ], [ %i.cm, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %i.bo = phi ptr [ null, %.lr.ph55 ], [ %i.cl, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 11 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %storemerge53
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !66 ; 3 uses
  %i.br = icmp eq i64 %i.bq, -1
  br i1 %i.br, label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr %i.k, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.bm, %i.bs
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 %storemerge53, ptr %i.bm, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  store ptr %i.bt, ptr %i.j, align 8, !tbaa !89
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit

bb.x:                                             ; preds = %bb.v
  %i.bu = ptrtoint ptr %i.bm to i64
  %i.bv = ptrtoint ptr %i.bo to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 5 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775792
  br i1 %i.bx, label %bb.y, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  store ptr %i.bo, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #37
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.y
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.x
  %i.by = ashr exact i64 %i.bw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 576460752303423487)
  %i.cc = select i1 %i.ca, i64 576460752303423487, i64 %i.cb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cd = shl nuw nsw i64 %i.cc, 4
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #36
          to label %.noexc20 unwind label %.loopexit ; 5 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw ; 2 uses
  store i64 %storemerge53, ptr %i.cf, align 8
  %.sroa.6.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx29, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.bm
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc20, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i ], [ %i.ce, %.noexc20 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i ], [ %i.bo, %.noexc20 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !301
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cg, %i.bm
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !297

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc20
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ce, %.noexc20 ], [ %i.ch, %.lr.ph.i.i.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bw) #35
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.z, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.ci, ptr %i.j, align 8, !tbaa !89
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.cj, ptr %i.k, align 8, !tbaa !88
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.w, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.u
  %i.ck = phi ptr [ %i.bt, %bb.w ], [ %i.ci, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.bm, %bb.u ]
  %i.cl = phi ptr [ %i.bo, %bb.w ], [ %i.ce, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.bo, %bb.u ] ; 2 uses
  %i.cm = add nuw i64 %storemerge53, 1            ; 2 uses
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !81  ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 3
  %i.ct = icmp ult i64 %i.cm, %i.cs
  br i1 %i.ct, label %bb.u, label %._crit_edge56, !llvm.loop !298

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bo, ptr %0, align 8
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bw) #35
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab, %bb.aa, %bb.h
  %.pn14.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %lpad.phi, %bb.ab ], [ %lpad.phi, %bb.aa ], [ %lpad.loopexit.split-lp107, %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cu = load ptr, ptr %2, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIcSaIcEED2Ev.exit23, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !299
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #35
end_hunk_0
