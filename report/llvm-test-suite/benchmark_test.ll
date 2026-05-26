inline.NumInlined: 926
inline.NumDeleted: 399
begin_hunk_0_@_ZL13BM_SequentialISt6vectorIiSaIiEEiEvRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.x = mul nsw i64 %i.w, %.0.i                  ; 2 uses
  %i.y = sitofp i64 %i.x to double
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.z, ptr %2, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 16, ptr %i.b, align 8, !tbaa !58
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %_ZNK9benchmark5State5rangeEm.exit
  store ptr %i.aa, ptr %2, align 8, !tbaa !51
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !58  ; 3 uses
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aa, ptr noundef nonnull align 1 dereferenceable(16) @.str.54, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !44
  %i.ad = load ptr, ptr %2, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ag = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN9benchmark5State17SetItemsProcessedEl.exit unwind label %bb.e ; 3 uses

bb.d:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %.noexc
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.z
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.al = load i64, ptr %i.z, align 8, !tbaa !45
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %lpad.phi, %bb.q ], [ %lpad.phi, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.ah, %bb.d ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ai, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

_ZN9benchmark5State17SetItemsProcessedEl.exit:    ; preds = %.noexc
  store double %i.y, ptr %i.ag, align 8, !tbaa !69
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !84
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 1000, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !86
  %i.an = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.z
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZN9benchmark5State17SetItemsProcessedEl.exit
  %i.ap = load i64, ptr %i.z, align 8, !tbaa !45
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZN9benchmark5State17SetItemsProcessedEl.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.ar = shl nsw i64 %i.x, 2
  %i.as = sitofp i64 %i.ar to double
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.at, ptr %1, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 16, ptr %i.a, align 8, !tbaa !58
  %i.au = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc25 unwind label %bb.f   ; 2 uses

.noexc25:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  store ptr %i.au, ptr %1, align 8, !tbaa !51
  %i.av = load i64, ptr %i.a, align 8, !tbaa !58  ; 3 uses
  store i64 %i.av, ptr %i.at, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.au, ptr noundef nonnull align 1 dereferenceable(16) @.str.55, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !44
  %i.ax = load ptr, ptr %1, align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN9benchmark5State17SetBytesProcessedEl.exit unwind label %bb.g ; 3 uses

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.g:                                             ; preds = %.noexc25
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.at
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.g
  %i.be = load i64, ptr %i.at, align 8, !tbaa !45
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.f
  %.pn.i19 = phi { ptr, i32 } [ %i.ba, %bb.f ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bb, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %common.resume

_ZN9benchmark5State17SetBytesProcessedEl.exit:    ; preds = %.noexc25
  store double %i.as, ptr %i.az, align 8, !tbaa !69
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 1, ptr %.sroa.555.0..sroa_idx, align 8, !tbaa !84
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 1024, ptr %.sroa.656.0..sroa_idx, align 4, !tbaa !86
  %i.bg = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.at
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZN9benchmark5State17SetBytesProcessedEl.exit
  %i.bi = load i64, ptr %i.at, align 8, !tbaa !45
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZN9benchmark5State17SetBytesProcessedEl.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.h:                                             ; preds = %.lr.ph74, %bb.a
  %.sroa.044.073 = phi i64 [ %i.f, %.lr.ph74 ], [ %i.i, %bb.a ] ; 2 uses
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.bl = load ptr, ptr %i.g, align 32, !tbaa !57 ; 2 uses
  %.not59 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not59, label %bb.i, label %_ZNK9benchmark5State5rangeEm.exit18

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #23
  unreachable

_ZNK9benchmark5State5rangeEm.exit18:              ; preds = %bb.h
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !58
  %i.bn = add nsw i64 %i.bm, -1                   ; 2 uses
  %.not67 = icmp eq i64 %i.bn, 0
  br i1 %.not67, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bo = ptrtoint ptr %.sroa.11.1 to i64
  %i.bp = ptrtoint ptr %.sroa.0.1 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.bq) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNK9benchmark5State5rangeEm.exit18, %._crit_edge, %bb.j
  %i.br = icmp sgt i64 %.sroa.044.073, 0
  br i1 %i.br, label %bb.a, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable

.lr.ph:                                           ; preds = %_ZNK9benchmark5State5rangeEm.exit18, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bs = phi i64 [ %i.cf, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.bn, %_ZNK9benchmark5State5rangeEm.exit18 ]
  %.sroa.11.070 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZNK9benchmark5State5rangeEm.exit18 ] ; 3 uses
  %.sroa.8.069 = phi ptr [ %.sroa.8.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZNK9benchmark5State5rangeEm.exit18 ] ; 3 uses
  %.sroa.0.068 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZNK9benchmark5State5rangeEm.exit18 ] ; 7 uses
  %.not.i33 = icmp eq ptr %.sroa.8.069, %.sroa.11.070
  br i1 %.not.i33, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  store i32 42, ptr %.sroa.8.069, align 4, !tbaa !4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bt = ptrtoint ptr %.sroa.11.070 to i64
  %i.bu = ptrtoint ptr %.sroa.0.068 to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 7 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775804
  br i1 %i.bw, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #27
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bx = ashr exact i64 %i.bv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i, %i.bx ; 2 uses
  %3 = icmp ult i64 %i.by, %i.bx
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.by, i64 2305843009213693951)
  %4 = select i1 %3, i64 2305843009213693951, i64 %i.bz ; 3 uses
  %.not.i.i.i34 = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i.i.i34)
  %i.ca = shl nuw nsw i64 %4, 2
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #26
          to label %.noexc36 unwind label %.loopexit ; 4 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.bv ; 2 uses
  store i32 42, ptr %i.cc, align 4, !tbaa !4
  %i.cd = icmp sgt i64 %i.bv, 0
  br i1 %i.cd, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %.noexc36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cb, ptr align 4 %.sroa.0.068, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %.noexc36
  %.not.i17.i.i = icmp eq ptr %.sroa.0.068, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.068, i64 noundef %i.bv) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.sroa.0.1 = phi ptr [ %i.cb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0.068, %bb.l ] ; 4 uses
  %.pn = phi ptr [ %i.cc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.8.069, %bb.l ]
  %.sroa.11.1 = phi ptr [ %i.ce, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.11.070, %bb.l ] ; 2 uses
  %.sroa.8.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.cf = add nsw i64 %i.bs, -1                   ; 2 uses
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %.sroa.0.068, null
  br i1 %.not.i.i.i37, label %common.resume, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.068, i64 noundef %i.bv) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13BM_SequentialINSt7__cxx114listIiSaIiEEEiEvRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::list", align 8 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8
  %.not51 = icmp ne i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not5559 = icmp eq i64 %i.f, 0
  %.not.i.not55 = select i1 %.not51, i1 true, i1 %.not.i.not5559
  br i1 %.not.i.not55, label %._crit_edge58, label %.lr.ph57, !prof !35

.lr.ph57:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.h

bb.a:                                             ; preds = %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit
  %i.k = add nsw i64 %.sroa.039.056, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.k, 0
  br i1 %.not.i.not, label %._crit_edge58, label %bb.h, !prof !61

._crit_edge58:                                    ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !77, !range !78, !noundef !79
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %_ZNK9benchmark5State10iterationsEv.exit, !prof !80

bb.b:                                             ; preds = %._crit_edge58
  %i.o = load i64, ptr %i.e, align 16, !tbaa !81
  %i.p = load i64, ptr %0, align 64, !tbaa !82
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !83
  %i.t = add nsw i64 %i.q, %i.s
  br label %_ZNK9benchmark5State10iterationsEv.exit

_ZNK9benchmark5State10iterationsEv.exit:          ; preds = %._crit_edge58, %bb.b
  %.0.i = phi i64 [ %i.t, %bb.b ], [ 0, %._crit_edge58 ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.x = load ptr, ptr %i.u, align 32, !tbaa !57  ; 2 uses
  %.not52 = icmp eq ptr %i.w, %i.x
  br i1 %.not52, label %bb.c, label %_ZNK9benchmark5State5rangeEm.exit

bb.c:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit
  call void @__assert_fail(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #23
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %_ZNK9benchmark5State10iterationsEv.exit
  %i.y = load i64, ptr %i.x, align 8, !tbaa !58
  %i.z = mul nsw i64 %i.y, %.0.i                  ; 2 uses
  %i.aa = sitofp i64 %i.z to double
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 16, ptr %i.b, align 8, !tbaa !58
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %_ZNK9benchmark5State5rangeEm.exit
  store ptr %i.ac, ptr %2, align 8, !tbaa !51
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !58  ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ac, ptr noundef nonnull align 1 dereferenceable(16) @.str.54, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !44
  %i.af = load ptr, ptr %2, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ai = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN9benchmark5State17SetItemsProcessedEl.exit unwind label %bb.e ; 3 uses

bb.d:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ab
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.an = load i64, ptr %i.ab, align 8, !tbaa !45
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.by, %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit38 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.aj, %bb.d ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ak, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

_ZN9benchmark5State17SetItemsProcessedEl.exit:    ; preds = %.noexc
  store double %i.aa, ptr %i.ai, align 8, !tbaa !69
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !84
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 1000, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !86
  %i.ap = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ab
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZN9benchmark5State17SetItemsProcessedEl.exit
  %i.ar = load i64, ptr %i.ab, align 8, !tbaa !45
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZN9benchmark5State17SetItemsProcessedEl.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.at = shl nsw i64 %i.z, 2
  %i.au = sitofp i64 %i.at to double
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 16, ptr %i.a, align 8, !tbaa !58
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc25 unwind label %bb.f   ; 2 uses

.noexc25:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  store ptr %i.aw, ptr %1, align 8, !tbaa !51
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !58  ; 3 uses
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aw, ptr noundef nonnull align 1 dereferenceable(16) @.str.55, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !44
  %i.az = load ptr, ptr %1, align 8, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN9benchmark5State17SetBytesProcessedEl.exit unwind label %bb.g ; 3 uses

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.g:                                             ; preds = %.noexc25
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.av
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.g
  %i.bg = load i64, ptr %i.av, align 8, !tbaa !45
end_hunk_0
begin_hunk_1_@_ZL16BM_StringCompareRN9benchmark5StateE:bb.a
  %i.l = load i64, ptr %i.k, align 16             ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.d

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit22
  %.not41 = icmp ne i32 %i.j, 0
  %.not.i.not4254 = icmp eq i64 %i.l, 0
  %.not.i.not42 = select i1 %.not41, i1 true, i1 %.not.i.not4254
  br i1 %.not.i.not42, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

_ZN9benchmark5State3endEv.exit:                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit
  %i.o = add nsw i64 %.sroa.033.043, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.o, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %bb.e, !prof !61

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.d

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.p = load ptr, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.h
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  %i.r = load i64, ptr %i.h, align 8, !tbaa !45
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.t = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.g
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.g, align 8, !tbaa !45
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.c:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.d:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit22
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.h
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

bb.e:                                             ; preds = %.lr.ph, %_ZN9benchmark5State3endEv.exit
  %.sroa.033.043 = phi i64 [ %i.l, %.lr.ph ], [ %i.o, %_ZN9benchmark5State3endEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !44  ; 2 uses
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !44  ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ab) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.e
  %i.ae = load ptr, ptr %2, align 8, !tbaa !51
  %i.af = load ptr, ptr %1, align 8, !tbaa !51
  %i.ag = call i32 @memcmp(ptr noundef %i.af, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i) #22 ; 2 uses
  %.not.i26 = icmp eq i32 %i.ag, 0
  br i1 %.not.i26, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.e
  %i.ah = sub i64 %i.ab, %i.ac
  %spec.select7.i.i = call i64 @llvm.smax.i64(i64 %i.ah, i64 -2147483648)
  %.08.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i, i64 2147483647)
  %.0.i6.i = trunc nsw i64 %.08.i.i to i32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %.0.i = phi i32 [ %i.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %.0.i6.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i ] ; 2 uses
  store i32 %.0.i, ptr %i.a, align 4, !tbaa !4
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a, i32 %.0.i) #22, !srcloc !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ai = icmp sgt i64 %.sroa.033.043, 0
  br i1 %i.ai, label %_ZN9benchmark5State3endEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit
  call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.d
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !45
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ak) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.c ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.y, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.al = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.g
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.an = load i64, ptr %i.g, align 8, !tbaa !45
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL16BM_SetupTeardownRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 16, !tbaa !106
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr %i.d, ptr @_ZN12_GLOBAL__N_111test_vectorE, align 8, !tbaa !107
  br label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  %.not = icmp ne i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not2842 = icmp eq i64 %i.h, 0
  %.not.i.not28 = select i1 %.not, i1 true, i1 %.not.i.not2842
  br i1 %.not.i.not28, label %._crit_edge, label %.lr.ph, !prof !35

._crit_edge:                                      ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.i = load i32, ptr %i.a, align 16, !tbaa !106
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.m, label %bb.p

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %_ZN9benchmark5State13StateIteratorppEv.exit
  %.030 = phi i32 [ %i.al, %_ZN9benchmark5State13StateIteratorppEv.exit ], [ 0, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ] ; 4 uses
  %.sroa.016.029 = phi i64 [ %i.am, %_ZN9benchmark5State13StateIteratorppEv.exit ], [ %i.h, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ] ; 2 uses
  %i.k = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN12_GLOBAL__N_114test_vector_muE) #22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.k) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %.lr.ph
  %i.l = and i32 %.030, 1
  %i.m = icmp eq i32 %i.l, 0
  %i.n = load ptr, ptr @_ZN12_GLOBAL__N_111test_vectorE, align 8, !tbaa !107 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !109  ; 5 uses
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112
  %.not.i11 = icmp eq ptr %i.p, %i.r
  br i1 %.not.i11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.030, ptr %i.p, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.s, ptr %i.o, align 8, !tbaa !109
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !113  ; 4 uses
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 6 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775804
  br i1 %i.x, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #27
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.y = ashr exact i64 %i.w, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i, %i.y ; 2 uses
  %1 = icmp ult i64 %i.z, %i.y
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.z, i64 2305843009213693951)
  %2 = select i1 %1, i64 2305843009213693951, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %2, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = shl nuw nsw i64 %2, 2
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #26
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.w ; 2 uses
  store i32 %.030, ptr %i.ad, align 4, !tbaa !4
  %i.ae = icmp sgt i64 %i.w, 0
  br i1 %i.ae, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 4 %i.t, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.not.i17.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.w) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !113
  store ptr %i.af, ptr %i.o, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %2
  store ptr %i.ag, ptr %i.q, align 8, !tbaa !112
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ah = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN12_GLOBAL__N_114test_vector_muE) #22 ; 0 uses
  resume { ptr, i32 } %lpad.phi

bb.k:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ai = getelementptr inbounds i8, ptr %i.p, i64 -4
  store ptr %i.ai, ptr %i.o, align 8, !tbaa !109
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.e, %bb.k
  %i.aj = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN12_GLOBAL__N_114test_vector_muE) #22 ; 0 uses
  %i.ak = icmp sgt i64 %.sroa.016.029, 0
  br i1 %i.ak, label %_ZN9benchmark5State13StateIteratorppEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable

_ZN9benchmark5State13StateIteratorppEv.exit:      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.al = add nuw nsw i32 %.030, 1
  %i.am = add nsw i64 %.sroa.016.029, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.am, 0
  br i1 %.not.i.not, label %._crit_edge, label %.lr.ph, !prof !61

bb.m:                                             ; preds = %._crit_edge
  %i.an = load ptr, ptr @_ZN12_GLOBAL__N_111test_vectorE, align 8, !tbaa !107 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !113 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !112
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.n, %bb.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 24) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %_ZNSt6vectorIiSaIiEED2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL11BM_LongTestRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = alloca double, align 8                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %.not = icmp ne i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1922 = icmp eq i64 %i.e, 0
  %.not.i.not19 = select i1 %.not, i1 true, i1 %.not.i.not1922
  br i1 %.not.i.not19, label %._crit_edge21, label %.preheader.lr.ph, !prof !35

.preheader.lr.ph:                                 ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !56
  %.pre25 = load ptr, ptr %i.f, align 32, !tbaa !57
  br label %.preheader

bb.a:                                             ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit
  %i.h = add nsw i64 %.sroa.011.020, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %._crit_edge21, label %.preheader, !prof !61

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.a
  %i.i = phi ptr [ %.pre25, %.preheader.lr.ph ], [ %.lcssa37, %bb.a ] ; 3 uses
  %i.j = phi ptr [ %.pre, %.preheader.lr.ph ], [ %.lcssa, %bb.a ] ; 2 uses
  %.sroa.011.020 = phi i64 [ %i.e, %.preheader.lr.ph ], [ %i.h, %bb.a ] ; 2 uses
  %.not1617 = icmp eq ptr %i.j, %i.i
  br i1 %.not1617, label %.preheader._crit_edge, label %_ZNK9benchmark5State5rangeEm.exit.preheader

_ZNK9benchmark5State5rangeEm.exit.preheader:      ; preds = %.preheader
  %i.k = load i64, ptr %i.i, align 8, !tbaa !58
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %_ZN9benchmark5State13StateIteratorppEv.exit

._crit_edge21:                                    ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

.preheader._crit_edge:                            ; preds = %.preheader, %.lr.ph
  call void @__assert_fail(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #23
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.m = load i64, ptr %i.u, align 8, !tbaa !58
  %i.n = icmp sgt i64 %i.m, %indvars.iv.next
  br i1 %i.n, label %.lr.ph, label %_ZN9benchmark5State13StateIteratorppEv.exit, !llvm.loop !114

_ZN9benchmark5State13StateIteratorppEv.exit:      ; preds = %_ZNK9benchmark5State5rangeEm.exit, %_ZNK9benchmark5State5rangeEm.exit.preheader
  %.lcssa37 = phi ptr [ %i.i, %_ZNK9benchmark5State5rangeEm.exit.preheader ], [ %i.u, %_ZNK9benchmark5State5rangeEm.exit ]
  %.lcssa = phi ptr [ %i.j, %_ZNK9benchmark5State5rangeEm.exit.preheader ], [ %i.t, %_ZNK9benchmark5State5rangeEm.exit ]
  %i.o = icmp sgt i64 %.sroa.011.020, 0
  br i1 %i.o, label %bb.a, label %bb.b

bb.b:                                             ; preds = %_ZN9benchmark5State13StateIteratorppEv.exit
  call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable

.lr.ph:                                           ; preds = %_ZNK9benchmark5State5rangeEm.exit.preheader, %_ZNK9benchmark5State5rangeEm.exit
  %indvars.iv39 = phi i64 [ %indvars.iv.next, %_ZNK9benchmark5State5rangeEm.exit ], [ 0, %_ZNK9benchmark5State5rangeEm.exit.preheader ] ; 2 uses
  %i.p = trunc nuw nsw i64 %indvars.iv39 to i32
  %i.q = uitofp nneg i32 %i.p to double
  %i.r = load double, ptr %i.a, align 8, !tbaa !69
  %i.s = fadd double %i.r, %i.q                   ; 2 uses
  store double %i.s, ptr %i.a, align 8, !tbaa !69
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.a, double %i.s) #22, !srcloc !71
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !56   ; 2 uses
  %i.u = load ptr, ptr %i.f, align 32, !tbaa !57  ; 3 uses
  %.not16 = icmp eq ptr %i.t, %i.u
  br i1 %.not16, label %.preheader._crit_edge, label %_ZNK9benchmark5State5rangeEm.exit, !llvm.loop !114
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17BM_ParallelMemsetRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = load ptr, ptr %i.a, align 32, !tbaa !57  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.b, label %_ZNK9benchmark5State5rangeEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #23
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = sdiv i64 %i.e, 4                         ; 5 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.i = load i32, ptr %i.h, align 4, !tbaa !115
  %i.j = sdiv i32 %i.g, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.l = load i32, ptr %i.k, align 16, !tbaa !106 ; 2 uses
  %i.m = mul i32 %i.l, %i.j                       ; 2 uses
  %i.n = add nsw i32 %i.m, %i.j
  %i.o = icmp eq i32 %i.l, 0
  br i1 %i.o, label %bb.c, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit

bb.c:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit
  %i.p = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 6 uses
  %i.q = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #27
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %.off = add i64 %i.e, 3
  %.not.i.i.i.i = icmp ult i64 %.off, 7
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.r = shl nuw nsw i64 %i.f, 2
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #26
          to label %.noexc26 unwind label %bb.f   ; 4 uses

.noexc26:                                         ; preds = %bb.e
  store ptr %i.s, ptr %i.p, align 8, !tbaa !113
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !112
end_hunk_1
