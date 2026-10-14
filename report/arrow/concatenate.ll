Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/concatenate?download=true
inline.NumInlined: 2834
inline.NumDeleted: 1091
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a

bb.er:                                            ; preds = %bb.eq
  store i32 0, ptr %i.of, align 8, !tbaa !60
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oe, i64 12
  store i32 0, ptr %i.oj, align 4, !tbaa !61
  %i.ok = load ptr, ptr %i.oe, align 8, !tbaa !63
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load ptr, ptr %i.ol, align 8
  call void %i.om(ptr noundef nonnull align 8 dereferenceable(16) %i.oe) #20, !inline_history !302
  %i.on = load ptr, ptr %i.oe, align 8, !tbaa !63
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.op = load ptr, ptr %i.oo, align 8
  call void %i.op(ptr noundef nonnull align 8 dereferenceable(16) %i.oe) #20, !inline_history !302
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i

bb.es:                                            ; preds = %bb.eq
  %i.oq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64, !noalias !574
  %.not.i.i.i.i.i.i.i.i.i104.i = icmp eq i8 %i.oq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i104.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.or = add nsw i32 %i.oi, -1
  store i32 %i.or, ptr %i.of, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i105.i

bb.eu:                                            ; preds = %bb.es
  %i.os = atomicrmw volatile add ptr %i.of, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i105.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i105.i: ; preds = %bb.eu, %bb.et
  %.0.i.i.i.i.i.i.i.i.i.i106.i = phi i32 [ %i.oi, %bb.et ], [ %i.os, %bb.eu ]
  %i.ot = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i106.i, 1
  br i1 %i.ot, label %bb.ev, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i, !prof !65

bb.ev:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i105.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oe) #20, !inline_history !300
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i105.i, %bb.er, %.lr.ph.i.i.i.i101.i
  %i.ou = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i102.i, i64 16 ; 2 uses
  %.not.i.i.i.i107.i = icmp eq ptr %i.ou, %i.nt
  br i1 %.not.i.i.i.i107.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i101.i, !llvm.loop !7

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i
  store ptr %i.oc, ptr %i.ns, align 8, !tbaa !90
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.ep, %bb.eo, %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #20, !noalias !574
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %88, i8 0, i64 24, i1 false), !noalias !574
  %i.ov = load ptr, ptr %1, align 8, !tbaa !109, !noalias !574, !nonnull !85, !align !110 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !90 ; 3 uses
  %i.oy = load ptr, ptr %i.ov, align 8, !tbaa !88 ; 3 uses
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = sub i64 %i.oz, %i.pa                    ; 3 uses
  %i.pc = icmp ugt i64 %i.pb, 9223372036854775792
  br i1 %i.pc, label %.noexc.i101, label %bb.ew

.noexc.i101:                                      ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21, !inline_history !300
  unreachable

bb.ew:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i
  %i.pd = getelementptr inbounds nuw i8, ptr %88, i64 16 ; 9 uses
  %.not370.i = icmp eq ptr %i.ox, %i.oy
  br i1 %.not370.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.ew
  %i.pe = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.pf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pb) #22, !inline_history !300 ; 4 uses
  store ptr %i.pf, ptr %88, align 8, !tbaa !166, !noalias !574
  store ptr %i.pf, ptr %i.pe, align 8, !tbaa !167, !noalias !574
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pb ; 2 uses
  store ptr %i.pg, ptr %i.pd, align 8, !tbaa !168, !noalias !574
  %.pre.i56 = load ptr, ptr %1, align 8, !tbaa !109, !noalias !574 ; 2 uses
  %.pre278.i = load ptr, ptr %.pre.i56, align 8, !tbaa !111
  %.phi.trans.insert.i57 = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 8
  %.pre279.i = load ptr, ptr %.phi.trans.insert.i57, align 8, !tbaa !111
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i

_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i, %bb.ew
  %.promoted244.i = phi ptr [ %i.pf, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i ], [ null, %bb.ew ] ; 3 uses
  %.promoted.i = phi ptr [ %i.pg, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i ], [ null, %bb.ew ] ; 2 uses
  %i.ph = phi ptr [ %.pre279.i, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i ], [ %i.ox, %bb.ew ] ; 2 uses
  %i.pi = phi ptr [ %.pre278.i, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i ], [ %i.oy, %bb.ew ] ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.ph
  br i1 %i.pj, label %.critedge.i, label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i
  %i.pk = getelementptr inbounds nuw i8, ptr %89, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %89, i64 24
  %i.pm = getelementptr inbounds nuw i8, ptr %90, i64 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %88, i64 8 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %89, i64 104 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %89, i64 112
  %i.pq = getelementptr inbounds nuw i8, ptr %89, i64 120
  br label %bb.ey

bb.ex:                                            ; preds = %_ZN5arrow9ArraySpanD2Ev.exit.i
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.0224.0251.i, i64 16 ; 2 uses
  %i.ps = icmp eq ptr %i.pr, %i.ph
  br i1 %i.ps, label %.critedge.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %.lr.ph.i58
  %i.pt = phi ptr [ %.promoted244.i, %.lr.ph.i58 ], [ %i.qt, %bb.ex ] ; 8 uses
  %.sroa.0224.0251.i = phi ptr [ %i.pi, %.lr.ph.i58 ], [ %i.pr, %bb.ex ] ; 2 uses
  %i.pu = phi ptr [ %.promoted.i, %.lr.ph.i58 ], [ %i.qv, %bb.ex ] ; 7 uses
  %i.pv = phi ptr [ %.promoted244.i, %.lr.ph.i58 ], [ %i.qu, %bb.ex ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #20, !noalias !574
  %i.pw = load ptr, ptr %.sroa.0224.0251.i, align 8, !tbaa !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %89, i8 0, i64 16, i1 false), !noalias !574
  store i64 -1, ptr %i.pk, align 8, !tbaa !579, !noalias !574
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.pl, i8 0, i64 104, i1 false), !noalias !574
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %89, ptr noundef nonnull align 8 dereferenceable(120) %i.pw)
          to label %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i unwind label %bb.ez, !inline_history !300

bb.ez:                                            ; preds = %bb.ey
  %i.px = landingpad { ptr, i32 }
          cleanup
  store ptr %i.pu, ptr %i.pd, align 8, !noalias !574
  store ptr %i.pv, ptr %88, align 8, !noalias !574
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.po) #20, !inline_history !300
  br label %.body.i

_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i:    ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #20, !noalias !574
  invoke void @_ZN5arrow9list_util8internal17RangeOfValuesUsedERKNS_9ArraySpanE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.165") align 8 %90, ptr noundef nonnull align 8 dereferenceable(128) %89)
          to label %bb.fa unwind label %bb.fc, !inline_history !300

bb.fa:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i
  %i.py = load ptr, ptr %90, align 8, !tbaa !72, !noalias !574
  %i.pz = icmp eq ptr %i.py, null                 ; 2 uses
  br i1 %i.pz, label %bb.fe, label %bb.fb, !prof !73

bb.fb:                                            ; preds = %bb.fa
  store ptr null, ptr %117, align 8, !tbaa !72, !alias.scope !574
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %90)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i60 unwind label %.loopexit.i59, !inline_history !300

bb.fc:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i
  %i.qa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.pu, ptr %i.pd, align 8, !noalias !574
  store ptr %i.pv, ptr %88, align 8, !noalias !574
  br label %bb.fo

.loopexit.i59:                                    ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.fb
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.pu, ptr %i.pd, align 8, !noalias !574
  store ptr %i.pv, ptr %88, align 8, !noalias !574
  br label %bb.fd

.loopexit.split-lp.i:                             ; preds = %bb.fh
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fd:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i59
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i59 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.qb = load ptr, ptr %90, align 8, !tbaa !72, !noalias !574 ; 2 uses
  %.not.i.i117.i = icmp eq ptr %i.qb, null
  br i1 %.not.i.i117.i, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit118.i, label %bb.fm, !prof !73

bb.fe:                                            ; preds = %bb.fa
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.pm, align 8, !noalias !574 ; 2 uses
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !574 ; 2 uses
  %.not.i.i97 = icmp eq ptr %i.pt, %i.pu
  br i1 %.not.i.i97, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.pt, align 8, !tbaa !161
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !161
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pt, i64 16 ; 2 uses
  store ptr %i.qc, ptr %i.pn, align 8, !tbaa !167, !noalias !574
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i60

bb.fg:                                            ; preds = %bb.fe
  %i.qd = ptrtoint ptr %i.pt to i64
  %i.qe = ptrtoint ptr %i.pv to i64
  %i.qf = sub i64 %i.qd, %i.qe                    ; 4 uses
  %i.qg = icmp eq i64 %i.qf, 9223372036854775792
  br i1 %i.qg, label %bb.fh, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.fh:                                            ; preds = %bb.fg
  store ptr %i.pu, ptr %i.pd, align 8, !noalias !574
  store ptr %i.pv, ptr %88, align 8, !noalias !574
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #21
          to label %.noexc112.i unwind label %.loopexit.split-lp.i, !inline_history !300

.noexc112.i:                                      ; preds = %bb.fh
  unreachable

_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.fg
  %i.qh = ashr exact i64 %i.qf, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.qh, i64 1)
  %i.qi = add i64 %.sroa.speculated.i.i.i.i, %i.qh ; 2 uses
  %i.qj = icmp ult i64 %i.qi, %i.qh
  %i.qk = call i64 @llvm.umin.i64(i64 %i.qi, i64 576460752303423487)
  %i.ql = select i1 %i.qj, i64 576460752303423487, i64 %i.qk ; 3 uses
  %.not.i.i.i.i98 = icmp ne i64 %i.ql, 0
  call void @llvm.assume(i1 %.not.i.i.i.i98)
  %i.qm = shl nuw nsw i64 %i.ql, 4
  %i.qn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qm) #22
          to label %.noexc113.i unwind label %.loopexit.i59, !inline_history !300 ; 5 uses

.noexc113.i:                                      ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qf ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.qo, align 8, !tbaa !161
  %.sroa.7.0..sroa_idx228.i = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.7.0..sroa_idx228.i, align 8, !tbaa !161
  %.not1.i.i.i.i.i.i = icmp eq ptr %i.pv, %i.pt
  br i1 %.not1.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i99

.lr.ph.i.i.i.i.i.i99:                             ; preds = %.noexc113.i, %.lr.ph.i.i.i.i.i.i99
  %.03.i.i.i.i.i.i = phi ptr [ %i.qq, %.lr.ph.i.i.i.i.i.i99 ], [ %i.qn, %.noexc113.i ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.qp, %.lr.ph.i.i.i.i.i.i99 ], [ %i.pv, %.noexc113.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !171, !alias.scope !580
  %i.qp = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i100 = icmp eq ptr %i.qp, %i.pt
  br i1 %.not.i.i.i.i.i.i100, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i99, !llvm.loop !12

_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i99, %.noexc113.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.qn, %.noexc113.i ], [ %i.qq, %.lr.ph.i.i.i.i.i.i99 ]
  %i.qr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i27.i.i.i = icmp eq ptr %i.pv, null
  br i1 %.not.i27.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef %i.qf) #23, !inline_history !300
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.fi, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  store ptr %i.qr, ptr %i.pn, align 8, !tbaa !167, !noalias !574
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %i.ql
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i60

_ZN5arrow6StatusC2ERKS0_.exit.i60:                ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.ff, %bb.fb
  %i.qt = phi ptr [ %i.qr, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.qc, %bb.ff ], [ %i.pt, %bb.fb ]
  %i.qu = phi ptr [ %i.qn, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.pv, %bb.ff ], [ %i.pv, %bb.fb ] ; 4 uses
  %i.qv = phi ptr [ %i.qs, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.pu, %bb.ff ], [ %i.pu, %bb.fb ] ; 3 uses
  %i.qw = load ptr, ptr %90, align 8, !tbaa !72, !noalias !574 ; 2 uses
  %.not.i.i114.i = icmp eq ptr %i.qw, null
  br i1 %.not.i.i114.i, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i, label %bb.fj, !prof !73

bb.fj:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i60
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 1
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !83, !range !84, !noundef !85
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %90) #20, !inline_history !300
  br label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i

_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i:         ; preds = %bb.fk, %bb.fj, %_ZN5arrow6StatusC2ERKS0_.exit.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #20, !noalias !574
  %i.ra = load ptr, ptr %i.po, align 8, !tbaa !172, !noalias !574 ; 3 uses
  %i.rb = load ptr, ptr %i.pp, align 8, !tbaa !173, !noalias !574 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.ra, %i.rb
  br i1 %.not.i1.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i, %.lr.ph.i.i.i
  %.0.i2.i.i.i = phi ptr [ %i.rc, %.lr.ph.i.i.i ], [ %i.ra, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i), !inline_history !306
  %i.rc = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i115.i = icmp eq ptr %i.rc, %i.rb
  br i1 %.not.i.i.i115.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.po, align 8, !tbaa !172, !noalias !574
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i
  %i.rd = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.ra, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i ] ; 3 uses
  %.not.i.i.i.i116.i = icmp eq ptr %i.rd, null
  br i1 %.not.i.i.i.i116.i, label %_ZN5arrow9ArraySpanD2Ev.exit.i, label %bb.fl

bb.fl:                                            ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.re = load ptr, ptr %i.pq, align 8, !tbaa !174, !noalias !574
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = ptrtoint ptr %i.rd to i64
  %i.rh = sub i64 %i.rf, %i.rg
  call void @_ZdlPvm(ptr noundef nonnull %i.rd, i64 noundef %i.rh) #23, !inline_history !307
  br label %_ZN5arrow9ArraySpanD2Ev.exit.i

_ZN5arrow9ArraySpanD2Ev.exit.i:                   ; preds = %bb.fl, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #20, !noalias !574
  br i1 %i.pz, label %bb.ex, label %.loopexit234.i

bb.fm:                                            ; preds = %bb.fd
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qb, i64 1
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !83, !range !84, !noundef !85
  %i.rk = trunc nuw i8 %i.rj to i1
  br i1 %i.rk, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit118.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %90) #20, !inline_history !300
  br label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit118.i

_ZN5arrow6ResultISt4pairIllEED2Ev.exit118.i:      ; preds = %bb.fn, %bb.fm, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #20, !noalias !574
  br label %bb.fo

bb.fo:                                            ; preds = %_ZN5arrow6ResultISt4pairIllEED2Ev.exit118.i, %bb.fc
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit118.i ], [ %i.qa, %bb.fc ]
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %89) #20, !inline_history !300
  br label %.body.i

.body.i:                                          ; preds = %bb.fo, %bb.ez
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.fo ], [ %i.px, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #20, !noalias !574
  br label %bb.np

.critedge.i:                                      ; preds = %bb.ex, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i
  %.lcssa245.i = phi ptr [ %.promoted244.i, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i ], [ %i.qu, %bb.ex ] ; 3 uses
  %.lcssa238.i = phi ptr [ %.promoted.i, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i ], [ %i.qv, %bb.ex ]
  store ptr %.lcssa238.i, ptr %i.pd, align 8, !noalias !574
  store ptr %.lcssa245.i, ptr %88, align 8, !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #20, !noalias !574
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %91, i8 0, i64 16, i1 false), !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #20, !noalias !574
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115ConcatenateImpl9ChildDataEmRKSt6vectorINS0_5RangeESaIS3_EE(ptr dead_on_unwind noalias writable align 8 %92, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %88)
          to label %bb.fp unwind label %bb.fr

bb.fp:                                            ; preds = %.critedge.i
  %i.rl = load ptr, ptr %92, align 8, !tbaa !72, !noalias !574
  %i.rm = icmp eq ptr %i.rl, null
  br i1 %i.rm, label %bb.ft, label %bb.fq, !prof !73

bb.fq:                                            ; preds = %bb.fp
  store ptr null, ptr %117, align 8, !tbaa !72, !alias.scope !574
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %92)
          to label %_ZN5arrow6StatusC2ERKS0_.exit120.i unwind label %bb.fs, !inline_history !300

bb.fr:                                            ; preds = %.critedge.i
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.nm

bb.fs:                                            ; preds = %bb.fq
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

bb.ft:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #20, !noalias !574
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.rp = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.rr = load <2 x ptr>, ptr %i.rp, align 8, !tbaa !111, !noalias !583
  store <2 x ptr> %i.rr, ptr %93, align 16, !tbaa !111, !alias.scope !584, !noalias !574
  %i.rs = getelementptr inbounds nuw i8, ptr %93, i64 16 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %92, i64 24
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !89, !noalias !583
  store ptr %i.ru, ptr %i.rs, align 16, !tbaa !89, !alias.scope !584, !noalias !574
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rp, i8 0, i64 24, i1 false), !noalias !583
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #20, !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #20, !noalias !574
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !107, !noalias !574
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115ConcatenateImplC2ERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS5_EEPNS_10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(48) %95, ptr noundef nonnull align 8 dereferenceable(24) %93, ptr noundef %i.rw)
          to label %bb.fu unwind label %bb.gx, !inline_history !300

bb.fu:                                            ; preds = %bb.ft
  %i.rx = load ptr, ptr %i.c, align 8, !tbaa !96, !noalias !574
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 64
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !88
  invoke fastcc void @_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE(ptr dead_on_unwind noalias writable align 8 %94, ptr noundef nonnull align 8 dereferenceable(48) %95, ptr noundef %i.rz, ptr noundef nonnull %91)
          to label %bb.fv unwind label %bb.gy, !inline_history !300

bb.fv:                                            ; preds = %bb.fu
  %i.sa = getelementptr inbounds nuw i8, ptr %95, i64 40
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !58, !noalias !574 ; 8 uses
  %.not.i.i.i121.i = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i121.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i64, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8 ; 4 uses
  %i.sd = load atomic i64, ptr %i.sc acquire, align 8 ; 2 uses
  %i.se = icmp eq i64 %i.sd, 4294967297
  %i.sf = trunc i64 %i.sd to i32                  ; 2 uses
  br i1 %i.se, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  store i32 0, ptr %i.sc, align 8, !tbaa !60
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sb, i64 12
  store i32 0, ptr %i.sg, align 4, !tbaa !61
  %i.sh = load ptr, ptr %i.sb, align 8, !tbaa !63
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  %i.sj = load ptr, ptr %i.si, align 8
  call void %i.sj(ptr noundef nonnull align 8 dereferenceable(16) %i.sb) #20, !inline_history !312
  %i.sk = load ptr, ptr %i.sb, align 8, !tbaa !63
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  %i.sm = load ptr, ptr %i.sl, align 8
end_hunk_0
begin_hunk_1_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a

bb.of:                                            ; preds = %bb.oe
  store i32 0, ptr %i.atv, align 8, !tbaa !60
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atu, i64 12
  store i32 0, ptr %i.atz, align 4, !tbaa !61
  %i.aua = load ptr, ptr %i.atu, align 8, !tbaa !63
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 16
  %i.auc = load ptr, ptr %i.aub, align 8
  call void %i.auc(ptr noundef nonnull align 8 dereferenceable(16) %i.atu) #20, !inline_history !364
  %i.aud = load ptr, ptr %i.atu, align 8, !tbaa !63
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 24
  %i.auf = load ptr, ptr %i.aue, align 8
  call void %i.auf(ptr noundef nonnull align 8 dereferenceable(16) %i.atu) #20, !inline_history !364
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i289

bb.og:                                            ; preds = %bb.oe
  %i.aug = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64, !noalias !614
  %.not.i.i.i.i.i.i.i.i.i97.i = icmp eq i8 %i.aug, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i97.i, label %bb.oi, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.auh = add nsw i32 %i.aty, -1
  store i32 %i.auh, ptr %i.atv, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i98.i

bb.oi:                                            ; preds = %bb.og
  %i.aui = atomicrmw volatile add ptr %i.atv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i98.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i98.i: ; preds = %bb.oi, %bb.oh
  %.0.i.i.i.i.i.i.i.i.i.i99.i = phi i32 [ %i.aty, %bb.oh ], [ %i.aui, %bb.oi ]
  %i.auj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i99.i, 1
  br i1 %i.auj, label %bb.oj, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i289, !prof !65

bb.oj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i98.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.atu) #20, !inline_history !362
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i289

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i289: ; preds = %bb.oj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i98.i, %bb.of, %.lr.ph.i.i.i.i94.i
  %i.auk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i95.i, i64 16 ; 2 uses
  %.not.i.i.i.i100.i = icmp eq ptr %i.auk, %i.atj
  br i1 %.not.i.i.i.i100.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i290, label %.lr.ph.i.i.i.i94.i, !llvm.loop !7

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i290: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i289
  store ptr %i.ats, ptr %i.ati, align 8, !tbaa !90
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i114

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i114: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i290, %bb.od, %bb.oc, %bb.ob
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #20, !noalias !614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, i8 0, i64 24, i1 false), !noalias !614
  %i.aul = load ptr, ptr %1, align 8, !tbaa !109, !noalias !614, !nonnull !85, !align !110 ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aul, i64 8
  %i.aun = load ptr, ptr %i.aum, align 8, !tbaa !90 ; 3 uses
  %i.auo = load ptr, ptr %i.aul, align 8, !tbaa !88 ; 3 uses
  %i.aup = ptrtoint ptr %i.aun to i64
  %i.auq = ptrtoint ptr %i.auo to i64
  %i.aur = sub i64 %i.aup, %i.auq                 ; 3 uses
  %i.aus = icmp ugt i64 %i.aur, 9223372036854775792
  br i1 %i.aus, label %.noexc.i288, label %bb.ok

.noexc.i288:                                      ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i114
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21, !inline_history !362
  unreachable

bb.ok:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i114
  %i.aut = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 9 uses
  %.not343.i = icmp eq ptr %i.aun, %i.auo
  br i1 %.not343.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i118, label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i115

_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i115: ; preds = %bb.ok
  %i.auu = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.auv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aur) #22, !inline_history !362 ; 4 uses
  store ptr %i.auv, ptr %64, align 8, !tbaa !166, !noalias !614
  store ptr %i.auv, ptr %i.auu, align 8, !tbaa !167, !noalias !614
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 %i.aur ; 2 uses
  store ptr %i.auw, ptr %i.aut, align 8, !tbaa !168, !noalias !614
  %.pre.i116 = load ptr, ptr %1, align 8, !tbaa !109, !noalias !614 ; 2 uses
  %.pre254.i = load ptr, ptr %.pre.i116, align 8, !tbaa !111
  %.phi.trans.insert.i117 = getelementptr inbounds nuw i8, ptr %.pre.i116, i64 8
  %.pre255.i = load ptr, ptr %.phi.trans.insert.i117, align 8, !tbaa !111
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i118

_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i118: ; preds = %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i115, %bb.ok
  %.promoted222.i = phi ptr [ %i.auv, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i115 ], [ null, %bb.ok ] ; 3 uses
  %.promoted.i119 = phi ptr [ %i.auw, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i115 ], [ null, %bb.ok ] ; 2 uses
  %i.aux = phi ptr [ %.pre255.i, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i115 ], [ %i.aun, %bb.ok ] ; 2 uses
  %i.auy = phi ptr [ %.pre254.i, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i115 ], [ %i.auo, %bb.ok ] ; 2 uses
  %i.auz = icmp eq ptr %i.auy, %i.aux
  br i1 %i.auz, label %.critedge.i138, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i118
  %i.ava = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.avb = getelementptr inbounds nuw i8, ptr %65, i64 24
  %i.avc = getelementptr inbounds nuw i8, ptr %66, i64 8
  %.sroa.2.0..sroa_idx.i.i.i121 = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.avd = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %65, i64 104 ; 3 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %65, i64 112
  %i.avg = getelementptr inbounds nuw i8, ptr %65, i64 120
  br label %bb.om

bb.ol:                                            ; preds = %_ZN5arrow9ArraySpanD2Ev.exit.i137
  %i.avh = getelementptr inbounds nuw i8, ptr %.sroa.0202.0229.i, i64 16 ; 2 uses
  %i.avi = icmp eq ptr %i.avh, %i.aux
  br i1 %i.avi, label %.critedge.i138, label %bb.om

bb.om:                                            ; preds = %bb.ol, %.lr.ph.i120
  %i.avj = phi ptr [ %.promoted222.i, %.lr.ph.i120 ], [ %i.awj, %bb.ol ] ; 8 uses
  %.sroa.0202.0229.i = phi ptr [ %i.auy, %.lr.ph.i120 ], [ %i.avh, %bb.ol ] ; 2 uses
  %i.avk = phi ptr [ %.promoted.i119, %.lr.ph.i120 ], [ %i.awl, %bb.ol ] ; 7 uses
  %i.avl = phi ptr [ %.promoted222.i, %.lr.ph.i120 ], [ %i.awk, %bb.ol ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #20, !noalias !614
  %i.avm = load ptr, ptr %.sroa.0202.0229.i, align 8, !tbaa !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %65, i8 0, i64 16, i1 false), !noalias !614
  store i64 -1, ptr %i.ava, align 8, !tbaa !579, !noalias !614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.avb, i8 0, i64 104, i1 false), !noalias !614
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %65, ptr noundef nonnull align 8 dereferenceable(120) %i.avm)
          to label %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i124 unwind label %bb.on, !inline_history !362

bb.on:                                            ; preds = %bb.om
  %i.avn = landingpad { ptr, i32 }
          cleanup
  store ptr %i.avk, ptr %i.aut, align 8, !noalias !614
  store ptr %i.avl, ptr %64, align 8, !noalias !614
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ave) #20, !inline_history !362
  br label %.body.i122

_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i124: ; preds = %bb.om
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #20, !noalias !614
  invoke void @_ZN5arrow9list_util8internal17RangeOfValuesUsedERKNS_9ArraySpanE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.165") align 8 %66, ptr noundef nonnull align 8 dereferenceable(128) %65)
          to label %bb.oo unwind label %bb.oq, !inline_history !362

bb.oo:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i124
  %i.avo = load ptr, ptr %66, align 8, !tbaa !72, !noalias !614
  %i.avp = icmp eq ptr %i.avo, null               ; 2 uses
  br i1 %i.avp, label %bb.os, label %bb.op, !prof !73

bb.op:                                            ; preds = %bb.oo
  store ptr null, ptr %117, align 8, !tbaa !72, !alias.scope !614
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %66)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i129 unwind label %.loopexit.i126, !inline_history !362

bb.oq:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i124
  %i.avq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.avk, ptr %i.aut, align 8, !noalias !614
  store ptr %i.avl, ptr %64, align 8, !noalias !614
  br label %bb.pc

.loopexit.i126:                                   ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i274, %bb.op
  %lpad.loopexit.i127 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.avk, ptr %i.aut, align 8, !noalias !614
  store ptr %i.avl, ptr %64, align 8, !noalias !614
  br label %bb.or

.loopexit.split-lp.i286:                          ; preds = %bb.ov
  %lpad.loopexit.split-lp.i287 = landingpad { ptr, i32 }
          cleanup
  br label %bb.or

bb.or:                                            ; preds = %.loopexit.split-lp.i286, %.loopexit.i126
  %lpad.phi.i128 = phi { ptr, i32 } [ %lpad.loopexit.i127, %.loopexit.i126 ], [ %lpad.loopexit.split-lp.i287, %.loopexit.split-lp.i286 ]
  %i.avr = load ptr, ptr %66, align 8, !tbaa !72, !noalias !614 ; 2 uses
  %.not.i.i110.i = icmp eq ptr %i.avr, null
  br i1 %.not.i.i110.i, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit111.i, label %bb.pa, !prof !73

bb.os:                                            ; preds = %bb.oo
  %.sroa.0.0.copyload.i.i.i270 = load i64, ptr %i.avc, align 8, !noalias !614 ; 2 uses
  %.sroa.2.0.copyload.i.i.i271 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i121, align 8, !noalias !614 ; 2 uses
  %.not.i.i272 = icmp eq ptr %i.avj, %i.avk
  br i1 %.not.i.i272, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  store i64 %.sroa.0.0.copyload.i.i.i270, ptr %i.avj, align 8, !tbaa !161
  %.sroa.7.0..sroa_idx.i273 = getelementptr inbounds nuw i8, ptr %i.avj, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i271, ptr %.sroa.7.0..sroa_idx.i273, align 8, !tbaa !161
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avj, i64 16 ; 2 uses
  store ptr %i.avs, ptr %i.avd, align 8, !tbaa !167, !noalias !614
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i129

bb.ou:                                            ; preds = %bb.os
  %i.avt = ptrtoint ptr %i.avj to i64
  %i.avu = ptrtoint ptr %i.avl to i64
  %i.avv = sub i64 %i.avt, %i.avu                 ; 4 uses
  %i.avw = icmp eq i64 %i.avv, 9223372036854775792
  br i1 %i.avw, label %bb.ov, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i274

bb.ov:                                            ; preds = %bb.ou
  store ptr %i.avk, ptr %i.aut, align 8, !noalias !614
  store ptr %i.avl, ptr %64, align 8, !noalias !614
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #21
          to label %.noexc105.i unwind label %.loopexit.split-lp.i286, !inline_history !362

.noexc105.i:                                      ; preds = %bb.ov
  unreachable

_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i274: ; preds = %bb.ou
  %i.avx = ashr exact i64 %i.avv, 4               ; 3 uses
  %.sroa.speculated.i.i.i.i275 = call i64 @llvm.umax.i64(i64 %i.avx, i64 1)
  %i.avy = add i64 %.sroa.speculated.i.i.i.i275, %i.avx ; 2 uses
  %i.avz = icmp ult i64 %i.avy, %i.avx
  %i.awa = call i64 @llvm.umin.i64(i64 %i.avy, i64 576460752303423487)
  %i.awb = select i1 %i.avz, i64 576460752303423487, i64 %i.awa ; 3 uses
  %.not.i.i.i.i276 = icmp ne i64 %i.awb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i276)
  %i.awc = shl nuw nsw i64 %i.awb, 4
  %i.awd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.awc) #22
          to label %.noexc106.i unwind label %.loopexit.i126, !inline_history !362 ; 5 uses

.noexc106.i:                                      ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i274
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 %i.avv ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i270, ptr %i.awe, align 8, !tbaa !161
  %.sroa.7.0..sroa_idx206.i = getelementptr inbounds nuw i8, ptr %i.awe, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i271, ptr %.sroa.7.0..sroa_idx206.i, align 8, !tbaa !161
  %.not1.i.i.i.i.i.i277 = icmp eq ptr %i.avl, %i.avj
  br i1 %.not1.i.i.i.i.i.i277, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i282, label %.lr.ph.i.i.i.i.i.i278

.lr.ph.i.i.i.i.i.i278:                            ; preds = %.noexc106.i, %.lr.ph.i.i.i.i.i.i278
  %.03.i.i.i.i.i.i279 = phi ptr [ %i.awg, %.lr.ph.i.i.i.i.i.i278 ], [ %i.awd, %.noexc106.i ] ; 2 uses
  %.092.i.i.i.i.i.i280 = phi ptr [ %i.awf, %.lr.ph.i.i.i.i.i.i278 ], [ %i.avl, %.noexc106.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i.i279, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i.i.i280, i64 16, i1 false), !tbaa.struct !171, !alias.scope !615
  %i.awf = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i280, i64 16 ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i279, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i281 = icmp eq ptr %i.awf, %i.avj
  br i1 %.not.i.i.i.i.i.i281, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i282, label %.lr.ph.i.i.i.i.i.i278, !llvm.loop !12

_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i282: ; preds = %.lr.ph.i.i.i.i.i.i278, %.noexc106.i
  %.0.lcssa.i.i.i.i.i.i283 = phi ptr [ %i.awd, %.noexc106.i ], [ %i.awg, %.lr.ph.i.i.i.i.i.i278 ]
  %i.awh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i283, i64 16 ; 2 uses
  %.not.i27.i.i.i284 = icmp eq ptr %i.avl, null
  br i1 %.not.i27.i.i.i284, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i285, label %bb.ow

bb.ow:                                            ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i282
  call void @_ZdlPvm(ptr noundef nonnull %i.avl, i64 noundef %i.avv) #23, !inline_history !362
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i285

_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i285: ; preds = %bb.ow, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i282
  store ptr %i.awh, ptr %i.avd, align 8, !tbaa !167, !noalias !614
  %i.awi = getelementptr inbounds nuw [16 x i8], ptr %i.awd, i64 %i.awb
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i129

_ZN5arrow6StatusC2ERKS0_.exit.i129:               ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i285, %bb.ot, %bb.op
  %i.awj = phi ptr [ %i.awh, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i285 ], [ %i.avs, %bb.ot ], [ %i.avj, %bb.op ]
  %i.awk = phi ptr [ %i.awd, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i285 ], [ %i.avl, %bb.ot ], [ %i.avl, %bb.op ] ; 4 uses
  %i.awl = phi ptr [ %i.awi, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i285 ], [ %i.avk, %bb.ot ], [ %i.avk, %bb.op ] ; 3 uses
  %i.awm = load ptr, ptr %66, align 8, !tbaa !72, !noalias !614 ; 2 uses
  %.not.i.i107.i = icmp eq ptr %i.awm, null
  br i1 %.not.i.i107.i, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i130, label %bb.ox, !prof !73

bb.ox:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i129
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 1
  %i.awo = load i8, ptr %i.awn, align 1, !tbaa !83, !range !84, !noundef !85
  %i.awp = trunc nuw i8 %i.awo to i1
  br i1 %i.awp, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i130, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %66) #20, !inline_history !362
  br label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i130

_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i130:      ; preds = %bb.oy, %bb.ox, %_ZN5arrow6StatusC2ERKS0_.exit.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #20, !noalias !614
  %i.awq = load ptr, ptr %i.ave, align 8, !tbaa !172, !noalias !614 ; 3 uses
  %i.awr = load ptr, ptr %i.avf, align 8, !tbaa !173, !noalias !614 ; 2 uses
  %.not.i1.i.i.i131 = icmp eq ptr %i.awq, %i.awr
  br i1 %.not.i1.i.i.i131, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i136, label %.lr.ph.i.i.i132

.lr.ph.i.i.i132:                                  ; preds = %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i130, %.lr.ph.i.i.i132
  %.0.i2.i.i.i133 = phi ptr [ %i.aws, %.lr.ph.i.i.i132 ], [ %i.awq, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i130 ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i133), !inline_history !368
  %i.aws = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i133, i64 128 ; 2 uses
  %.not.i.i.i108.i = icmp eq ptr %i.aws, %i.awr
  br i1 %.not.i.i.i108.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i134, label %.lr.ph.i.i.i132, !llvm.loop !13

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i134: ; preds = %.lr.ph.i.i.i132
  %.pre.i.i.i135 = load ptr, ptr %i.ave, align 8, !tbaa !172, !noalias !614
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i136

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i136: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i134, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i130
  %i.awt = phi ptr [ %.pre.i.i.i135, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i134 ], [ %i.awq, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i130 ] ; 3 uses
  %.not.i.i.i.i109.i = icmp eq ptr %i.awt, null
  br i1 %.not.i.i.i.i109.i, label %_ZN5arrow9ArraySpanD2Ev.exit.i137, label %bb.oz

bb.oz:                                            ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i136
  %i.awu = load ptr, ptr %i.avg, align 8, !tbaa !174, !noalias !614
  %i.awv = ptrtoint ptr %i.awu to i64
  %i.aww = ptrtoint ptr %i.awt to i64
  %i.awx = sub i64 %i.awv, %i.aww
  call void @_ZdlPvm(ptr noundef nonnull %i.awt, i64 noundef %i.awx) #23, !inline_history !369
  br label %_ZN5arrow9ArraySpanD2Ev.exit.i137

_ZN5arrow9ArraySpanD2Ev.exit.i137:                ; preds = %bb.oz, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #20, !noalias !614
  br i1 %i.avp, label %bb.ol, label %.loopexit212.i

bb.pa:                                            ; preds = %bb.or
  %i.awy = getelementptr inbounds nuw i8, ptr %i.avr, i64 1
  %i.awz = load i8, ptr %i.awy, align 1, !tbaa !83, !range !84, !noundef !85
  %i.axa = trunc nuw i8 %i.awz to i1
  br i1 %i.axa, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit111.i, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %66) #20, !inline_history !362
  br label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit111.i

_ZN5arrow6ResultISt4pairIllEED2Ev.exit111.i:      ; preds = %bb.pb, %bb.pa, %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #20, !noalias !614
  br label %bb.pc

bb.pc:                                            ; preds = %_ZN5arrow6ResultISt4pairIllEED2Ev.exit111.i, %bb.oq
  %.pn.pn.i125 = phi { ptr, i32 } [ %lpad.phi.i128, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit111.i ], [ %i.avq, %bb.oq ]
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %65) #20, !inline_history !362
  br label %.body.i122

.body.i122:                                       ; preds = %bb.pc, %bb.on
  %.pn.pn.pn.i123 = phi { ptr, i32 } [ %.pn.pn.i125, %bb.pc ], [ %i.avn, %bb.on ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #20, !noalias !614
  br label %bb.wf

.critedge.i138:                                   ; preds = %bb.ol, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i118
  %.lcssa223.i = phi ptr [ %.promoted222.i, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i118 ], [ %i.awk, %bb.ol ] ; 3 uses
  %.lcssa216.i = phi ptr [ %.promoted.i119, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i118 ], [ %i.awl, %bb.ol ]
  store ptr %.lcssa216.i, ptr %i.aut, align 8, !noalias !614
  store ptr %.lcssa223.i, ptr %64, align 8, !noalias !614
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #20, !noalias !614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, i8 0, i64 16, i1 false), !noalias !614
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #20, !noalias !614
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115ConcatenateImpl9ChildDataEmRKSt6vectorINS0_5RangeESaIS3_EE(ptr dead_on_unwind noalias writable align 8 %68, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %64)
          to label %bb.pd unwind label %bb.pf

bb.pd:                                            ; preds = %.critedge.i138
  %i.axb = load ptr, ptr %68, align 8, !tbaa !72, !noalias !614
  %i.axc = icmp eq ptr %i.axb, null
  br i1 %i.axc, label %bb.ph, label %bb.pe, !prof !73

bb.pe:                                            ; preds = %bb.pd
  store ptr null, ptr %117, align 8, !tbaa !72, !alias.scope !614
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %_ZN5arrow6StatusC2ERKS0_.exit113.i unwind label %bb.pg, !inline_history !362

bb.pf:                                            ; preds = %.critedge.i138
  %i.axd = landingpad { ptr, i32 }
          cleanup
  br label %bb.wc

bb.pg:                                            ; preds = %bb.pe
  %i.axe = landingpad { ptr, i32 }
          cleanup
  br label %bb.wb

bb.ph:                                            ; preds = %bb.pd
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #20, !noalias !614
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.axf = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.axh = load <2 x ptr>, ptr %i.axf, align 8, !tbaa !111, !noalias !618
  store <2 x ptr> %i.axh, ptr %69, align 16, !tbaa !111, !alias.scope !619, !noalias !614
  %i.axi = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %68, i64 24
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !89, !noalias !618
  store ptr %i.axk, ptr %i.axi, align 16, !tbaa !89, !alias.scope !619, !noalias !614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.axf, i8 0, i64 24, i1 false), !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #20, !noalias !614
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #20, !noalias !614
  %i.axl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !107, !noalias !614
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115ConcatenateImplC2ERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS5_EEPNS_10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(48) %71, ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef %i.axm)
          to label %bb.pi unwind label %bb.ql, !inline_history !362

bb.pi:                                            ; preds = %bb.ph
  %i.axn = load ptr, ptr %i.c, align 8, !tbaa !96, !noalias !614
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 64
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !88
  invoke fastcc void @_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE(ptr dead_on_unwind noalias writable align 8 %70, ptr noundef nonnull align 8 dereferenceable(48) %71, ptr noundef %i.axp, ptr noundef nonnull %67)
          to label %bb.pj unwind label %bb.qm, !inline_history !362

bb.pj:                                            ; preds = %bb.pi
  %i.axq = getelementptr inbounds nuw i8, ptr %71, i64 40
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !58, !noalias !614 ; 8 uses
  %.not.i.i.i114.i = icmp eq ptr %i.axr, null
  br i1 %.not.i.i.i114.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i142, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 8 ; 4 uses
  %i.axt = load atomic i64, ptr %i.axs acquire, align 8 ; 2 uses
  %i.axu = icmp eq i64 %i.axt, 4294967297
  %i.axv = trunc i64 %i.axt to i32                ; 2 uses
  br i1 %i.axu, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  store i32 0, ptr %i.axs, align 8, !tbaa !60
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axr, i64 12
  store i32 0, ptr %i.axw, align 4, !tbaa !61
  %i.axx = load ptr, ptr %i.axr, align 8, !tbaa !63
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 16
  %i.axz = load ptr, ptr %i.axy, align 8
  call void %i.axz(ptr noundef nonnull align 8 dereferenceable(16) %i.axr) #20, !inline_history !374
  %i.aya = load ptr, ptr %i.axr, align 8, !tbaa !63
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 24
  %i.ayc = load ptr, ptr %i.ayb, align 8
end_hunk_1
