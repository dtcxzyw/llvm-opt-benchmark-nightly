inline.NumInlined: 2074
inline.NumDeleted: 916
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5arrow7compute11CheckScalarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_5DatumESaIS8_EES8_PKNS0_15FunctionOptionsE:bb.a
  %i.mi = extractvalue { ptr, i32 } %i.mh, 0
  call void @__clang_call_terminate(ptr %i.mi) #22
  unreachable

_ZN5arrow5DatumD2Ev.exit323:                      ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.mj = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !28 ; 8 uses
  %.not.i.i324 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i324, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit328, label %bb.ey

bb.ey:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit323
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 4 uses
  %i.mm = load atomic i64, ptr %i.ml acquire, align 8 ; 2 uses
  %i.mn = icmp eq i64 %i.mm, 4294967297
  %i.mo = trunc i64 %i.mm to i32                  ; 2 uses
  br i1 %i.mn, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store i32 0, ptr %i.ml, align 8, !tbaa !211
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 12
  store i32 0, ptr %i.mp, align 4, !tbaa !213
  %i.mq = load ptr, ptr %i.mk, align 8, !tbaa !32
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8
  call void %i.ms(ptr noundef nonnull align 8 dereferenceable(16) %i.mk) #19, !inline_history !224
  %i.mt = load ptr, ptr %i.mk, align 8, !tbaa !32
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(16) %i.mk) #19, !inline_history !224
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit328

bb.fa:                                            ; preds = %bb.ey
  %i.mw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i325 = icmp eq i8 %i.mw, 0
  br i1 %.not.i.i.i325, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.mx = add nsw i32 %i.mo, -1
  store i32 %i.mx, ptr %i.ml, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i326

bb.fc:                                            ; preds = %bb.fa
  %i.my = atomicrmw volatile add ptr %i.ml, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i326

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i326: ; preds = %bb.fc, %bb.fb
  %.0.i.i.i.i327 = phi i32 [ %i.mo, %bb.fb ], [ %i.my, %bb.fc ]
  %i.mz = icmp eq i32 %.0.i.i.i.i327, 1
  br i1 %i.mz, label %bb.fd, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit328, !prof !215

bb.fd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i326
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mk) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit328

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit328: ; preds = %_ZN5arrow5DatumD2Ev.exit323, %bb.ez, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i326, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  %i.na = load ptr, ptr %45, align 8, !tbaa !113  ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !109 ; 2 uses
  %.not4.i.i.i329 = icmp eq ptr %i.na, %i.nc
  br i1 %.not4.i.i.i329, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i336, label %.lr.ph.i.i.i330

.lr.ph.i.i.i330:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit328, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i332
  %.05.i.i.i331 = phi ptr [ %i.nf, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i332 ], [ %i.na, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit328 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i331)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i332 unwind label %bb.fe

bb.fe:                                            ; preds = %.lr.ph.i.i.i330
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  %i.ne = extractvalue { ptr, i32 } %i.nd, 0
  call void @__clang_call_terminate(ptr %i.ne) #22
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i332:  ; preds = %.lr.ph.i.i.i330
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.nf = getelementptr inbounds nuw i8, ptr %.05.i.i.i331, i64 24 ; 2 uses
  %.not.i.i.i333 = icmp eq ptr %i.nf, %i.nc
  br i1 %.not.i.i.i333, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i334, label %.lr.ph.i.i.i330, !llvm.loop !114

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i334: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i332
  %.pr.i335 = load ptr, ptr %45, align 8, !tbaa !113
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i336

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i336: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i334, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit328
  %i.ng = phi ptr [ %.pr.i335, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i334 ], [ %i.na, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit328 ] ; 3 uses
  %.not.i.i1.i337 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i1.i337, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit338, label %bb.ff

bb.ff:                                            ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i336
  %i.nh = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !112
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = ptrtoint ptr %i.ng to i64
  %i.nl = sub i64 %i.nj, %i.nk
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef %i.nl) #21
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit338

_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit338:  ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i336, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  br i1 %i.me, label %bb.fg, label %bb.mh

bb.fg:                                            ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit338
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  %i.nm = load ptr, ptr %i.aq, align 8, !tbaa !109
  %i.nn = load ptr, ptr %1, align 8, !tbaa !113
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = sub i64 %i.no, %i.np
  %i.nr = sdiv exact i64 %i.nq, 24
  invoke void @_ZNSt6vectorIN5arrow5DatumESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %48, i64 noundef %i.nr)
          to label %bb.fh unwind label %bb.fp

bb.fh:                                            ; preds = %bb.fg
  %i.ns = load ptr, ptr %1, align 8, !tbaa !174   ; 2 uses
  %i.nt = load ptr, ptr %i.aq, align 8, !tbaa !174 ; 2 uses
  %.not515563 = icmp eq ptr %i.ns, %i.nt
  br i1 %.not515563, label %._crit_edge567, label %.lr.ph566

.lr.ph566:                                        ; preds = %bb.fh
  %i.nu = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 6 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.of = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %52, i64 24
  %i.oj = getelementptr inbounds nuw i8, ptr %52, i64 24
  %i.ok = getelementptr inbounds nuw i8, ptr %52, i64 8
  br label %bb.fq

._crit_edge567:                                   ; preds = %bb.in, %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #19
  %i.ol = load ptr, ptr %24, align 8, !tbaa !74
  invoke void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %58, ptr noundef nonnull align 8 dereferenceable(32) %i.ol, i64 noundef 0, i64 noundef %i.mf)
          to label %bb.io unwind label %.thread513

.thread513:                                       ; preds = %._crit_edge567
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.fi:                                            ; preds = %bb.es
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fj:                                            ; preds = %bb.et
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fk:                                            ; preds = %bb.eu
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fl:                                            ; preds = %bb.ev
  %i.oq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %46) #19
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.pn155 = phi { ptr, i32 } [ %i.oq, %bb.fl ], [ %i.op, %bb.fk ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %47) #19
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fj
  %.pn155.pn = phi { ptr, i32 } [ %.pn155, %bb.fm ], [ %i.oo, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %45) #19
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fi
  %.pn155.pn.pn = phi { ptr, i32 } [ %.pn155.pn, %bb.fn ], [ %i.on, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280

bb.fp:                                            ; preds = %bb.fg
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %bb.mg

bb.fq:                                            ; preds = %.lr.ph566, %bb.in
  %.sroa.0499.0564 = phi ptr [ %i.ns, %.lr.ph566 ], [ %i.vv, %bb.in ] ; 5 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0499.0564, i64 16 ; 2 uses
  %i.ot = load i8, ptr %i.os, align 8, !tbaa !39
  %i.ou = icmp eq i8 %i.ot, 2
  br i1 %i.ou, label %bb.fr, label %bb.ic

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  invoke void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %49, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0499.0564)
          to label %bb.fs unwind label %bb.hu

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #19
  %i.ov = load ptr, ptr %49, align 8, !tbaa !74
  invoke void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %52, ptr noundef nonnull align 8 dereferenceable(32) %i.ov, i64 noundef 0, i64 noundef %i.mf)
          to label %bb.ft unwind label %.thread

.thread:                                          ; preds = %bb.fs
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit517

bb.ft:                                            ; preds = %bb.fs
  %i.ox = load ptr, ptr %49, align 8, !tbaa !74
  invoke void @_ZNK5arrow5Array5SliceEl(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %i.nz, ptr noundef nonnull align 8 dereferenceable(32) %i.ox, i64 noundef %i.mf)
          to label %bb.fu unwind label %.loopexit517.loopexit569

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %i.oy = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20
          to label %.noexc340 unwind label %bb.hv ; 5 uses

.noexc340:                                        ; preds = %bb.fu
  store ptr %i.oy, ptr %51, align 8, !tbaa !225
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  store ptr %i.oz, ptr %i.oa, align 8, !tbaa !227
  %i.pa = load ptr, ptr %i.oh, align 8, !tbaa !28 ; 2 uses
  %i.pb = load <2 x ptr>, ptr %52, align 16, !tbaa !29
  store <2 x ptr> %i.pb, ptr %i.oy, align 8, !tbaa !29
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.fv

bb.fv:                                            ; preds = %.noexc340
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 8 ; 3 uses
  %i.pd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.pd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.pe = load i32, ptr %i.pc, align 4, !tbaa !3
  %i.pf = add nsw i32 %i.pe, 1
  store i32 %i.pf, ptr %i.pc, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.fx:                                            ; preds = %bb.fv
  %i.pg = atomicrmw volatile add ptr %i.pc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.fx, %bb.fw, %.noexc340
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pi = load ptr, ptr %i.oi, align 8, !tbaa !28 ; 2 uses
  %i.pj = load <2 x ptr>, ptr %i.nz, align 16, !tbaa !29
  store <2 x ptr> %i.pj, ptr %i.ph, align 8, !tbaa !29
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, label %bb.fy

bb.fy:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 3 uses
  %i.pl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i8 %i.pl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.pm = load i32, ptr %i.pk, align 4, !tbaa !3
  %i.pn = add nsw i32 %i.pm, 1
  store i32 %i.pn, ptr %i.pk, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

bb.ga:                                            ; preds = %bb.fy
  %i.po = atomicrmw volatile add ptr %i.pk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.ga, %bb.fz, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  store ptr %i.pp, ptr %i.ob, align 8, !tbaa !228
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.pq = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #20
          to label %.noexc341 unwind label %bb.hw ; 6 uses

.noexc341:                                        ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  store i32 1, ptr %i.pr, align 8, !tbaa !211, !noalias !229
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  store i32 1, ptr %i.ps, align 4, !tbaa !213, !noalias !229
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.pq, align 8, !tbaa !32, !noalias !229
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EEEEvPT_DpOT0_(ptr noundef nonnull %i.pt, ptr noundef nonnull align 8 dereferenceable(24) %51)
          to label %bb.gb unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !229

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc341
  %i.pu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.pq, i64 noundef 104) #21, !noalias !229
  br label %.body

bb.gb:                                            ; preds = %.noexc341
  store ptr %i.pq, ptr %i.oc, align 8, !tbaa !28, !alias.scope !229
  store ptr %i.pt, ptr %50, align 16, !tbaa !232, !alias.scope !229
  %i.pv = load ptr, ptr %51, align 8, !tbaa !225  ; 3 uses
  %i.pw = load ptr, ptr %i.ob, align 8, !tbaa !228 ; 2 uses
  %.not4.i.i.i342 = icmp eq ptr %i.pv, %i.pw
  br i1 %.not4.i.i.i342, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i343

.lr.ph.i.i.i343:                                  ; preds = %bb.gb, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i344 = phi ptr [ %i.qo, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.pv, %bb.gb ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.05.i.i.i344, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !28 ; 8 uses
  %.not.i.i.i.i.i.i345 = icmp eq ptr %i.py, null
  br i1 %.not.i.i.i.i.i.i345, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph.i.i.i343
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 4 uses
  %i.qa = load atomic i64, ptr %i.pz acquire, align 8 ; 2 uses
  %i.qb = icmp eq i64 %i.qa, 4294967297
  %i.qc = trunc i64 %i.qa to i32                  ; 2 uses
  br i1 %i.qb, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  store i32 0, ptr %i.pz, align 8, !tbaa !211
  %i.qd = getelementptr inbounds nuw i8, ptr %i.py, i64 12
  store i32 0, ptr %i.qd, align 4, !tbaa !213
  %i.qe = load ptr, ptr %i.py, align 8, !tbaa !32
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8
  call void %i.qg(ptr noundef nonnull align 8 dereferenceable(16) %i.py) #19, !inline_history !233
  %i.qh = load ptr, ptr %i.py, align 8, !tbaa !32
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  %i.qj = load ptr, ptr %i.qi, align 8
  call void %i.qj(ptr noundef nonnull align 8 dereferenceable(16) %i.py) #19, !inline_history !233
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.ge:                                            ; preds = %bb.gc
  %i.qk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i.i.i346 = icmp eq i8 %i.qk, 0
  br i1 %.not.i.i.i.i.i.i.i346, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ql = add nsw i32 %i.qc, -1
  store i32 %i.ql, ptr %i.pz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i347

bb.gg:                                            ; preds = %bb.ge
  %i.qm = atomicrmw volatile add ptr %i.pz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i347

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i347: ; preds = %bb.gg, %bb.gf
  %.0.i.i.i.i.i.i.i.i348 = phi i32 [ %i.qc, %bb.gf ], [ %i.qm, %bb.gg ]
  %i.qn = icmp eq i32 %.0.i.i.i.i.i.i.i.i348, 1
  br i1 %i.qn, label %bb.gh, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !215

bb.gh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i347
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.py) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.gh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i347, %bb.gd, %.lr.ph.i.i.i343
  %i.qo = getelementptr inbounds nuw i8, ptr %.05.i.i.i344, i64 16 ; 2 uses
  %.not.i.i.i349 = icmp eq ptr %i.qo, %i.pw
  br i1 %.not.i.i.i349, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i343, !llvm.loop !234

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i350 = load ptr, ptr %51, align 8, !tbaa !225
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.gb
  %i.qp = phi ptr [ %.pr.i350, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.pv, %bb.gb ] ; 3 uses
  %.not.i.i1.i351 = icmp eq ptr %i.qp, null
  br i1 %.not.i.i1.i351, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.gi

bb.gi:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.qq = load ptr, ptr %i.oa, align 8, !tbaa !227
  %i.qr = ptrtoint ptr %i.qq to i64
  %i.qs = ptrtoint ptr %i.qp to i64
  %i.qt = sub i64 %i.qr, %i.qs
  call void @_ZdlPvm(ptr noundef nonnull %i.qp, i64 noundef %i.qt) #21
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.gi
  %i.qu = load ptr, ptr %i.oj, align 8, !tbaa !28 ; 8 uses
  %.not.i.i352 = icmp eq ptr %i.qu, null
  br i1 %.not.i.i352, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit356, label %bb.gj

bb.gj:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8 ; 4 uses
  %i.qw = load atomic i64, ptr %i.qv acquire, align 8 ; 2 uses
  %i.qx = icmp eq i64 %i.qw, 4294967297
  %i.qy = trunc i64 %i.qw to i32                  ; 2 uses
  br i1 %i.qx, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  store i32 0, ptr %i.qv, align 8, !tbaa !211
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qu, i64 12
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute11CheckScalarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_5DatumESaIS8_EES8_PKNS0_15FunctionOptionsE:bb.a
  call void %i.te(ptr noundef nonnull align 8 dereferenceable(16) %i.st) #19, !inline_history !235
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.he:                                            ; preds = %bb.hc
  %i.tf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i362 = icmp eq i8 %i.tf, 0
  br i1 %.not.i.i.i362, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.tg = add nsw i32 %i.sx, -1
  store i32 %i.tg, ptr %i.su, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i363

bb.hg:                                            ; preds = %bb.he
  %i.th = atomicrmw volatile add ptr %i.su, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i363

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i363: ; preds = %bb.hg, %bb.hf
  %.0.i.i.i.i364 = phi i32 [ %i.sx, %bb.hf ], [ %i.th, %bb.hg ]
  %i.ti = icmp eq i32 %.0.i.i.i.i364, 1
  br i1 %i.ti, label %bb.hh, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !215

bb.hh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i363
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.st) #19
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit360, %bb.hd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i363, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  %i.tj = load ptr, ptr %i.oc, align 8, !tbaa !28 ; 8 uses
  %.not.i.i365 = icmp eq ptr %i.tj, null
  br i1 %.not.i.i365, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit369, label %bb.hi

bb.hi:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8 ; 4 uses
  %i.tl = load atomic i64, ptr %i.tk acquire, align 8 ; 2 uses
  %i.tm = icmp eq i64 %i.tl, 4294967297
  %i.tn = trunc i64 %i.tl to i32                  ; 2 uses
  br i1 %i.tm, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  store i32 0, ptr %i.tk, align 8, !tbaa !211
  %i.to = getelementptr inbounds nuw i8, ptr %i.tj, i64 12
  store i32 0, ptr %i.to, align 4, !tbaa !213
  %i.tp = load ptr, ptr %i.tj, align 8, !tbaa !32
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8
  call void %i.tr(ptr noundef nonnull align 8 dereferenceable(16) %i.tj) #19, !inline_history !235
  %i.ts = load ptr, ptr %i.tj, align 8, !tbaa !32
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 24
  %i.tu = load ptr, ptr %i.tt, align 8
  call void %i.tu(ptr noundef nonnull align 8 dereferenceable(16) %i.tj) #19, !inline_history !235
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit369

bb.hk:                                            ; preds = %bb.hi
  %i.tv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i366 = icmp eq i8 %i.tv, 0
  br i1 %.not.i.i.i366, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.tw = add nsw i32 %i.tn, -1
  store i32 %i.tw, ptr %i.tk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i367

bb.hm:                                            ; preds = %bb.hk
  %i.tx = atomicrmw volatile add ptr %i.tk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i367

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i367: ; preds = %bb.hm, %bb.hl
  %.0.i.i.i.i368 = phi i32 [ %i.tn, %bb.hl ], [ %i.tx, %bb.hm ]
  %i.ty = icmp eq i32 %.0.i.i.i.i368, 1
  br i1 %i.ty, label %bb.hn, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit369, !prof !215

bb.hn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i367
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tj) #19
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit369

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit369: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.hj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i367, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  %i.tz = load ptr, ptr %i.og, align 8, !tbaa !28 ; 8 uses
  %.not.i.i370 = icmp eq ptr %i.tz, null
  br i1 %.not.i.i370, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit374, label %bb.ho

bb.ho:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit369
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8 ; 4 uses
  %i.ub = load atomic i64, ptr %i.ua acquire, align 8 ; 2 uses
  %i.uc = icmp eq i64 %i.ub, 4294967297
  %i.ud = trunc i64 %i.ub to i32                  ; 2 uses
  br i1 %i.uc, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  store i32 0, ptr %i.ua, align 8, !tbaa !211
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tz, i64 12
  store i32 0, ptr %i.ue, align 4, !tbaa !213
  %i.uf = load ptr, ptr %i.tz, align 8, !tbaa !32
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8
  call void %i.uh(ptr noundef nonnull align 8 dereferenceable(16) %i.tz) #19, !inline_history !224
  %i.ui = load ptr, ptr %i.tz, align 8, !tbaa !32
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 24
  %i.uk = load ptr, ptr %i.uj, align 8
  call void %i.uk(ptr noundef nonnull align 8 dereferenceable(16) %i.tz) #19, !inline_history !224
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit374

bb.hq:                                            ; preds = %bb.ho
  %i.ul = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i371 = icmp eq i8 %i.ul, 0
  br i1 %.not.i.i.i371, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.um = add nsw i32 %i.ud, -1
  store i32 %i.um, ptr %i.ua, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i372

bb.hs:                                            ; preds = %bb.hq
  %i.un = atomicrmw volatile add ptr %i.ua, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i372

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i372: ; preds = %bb.hs, %bb.hr
  %.0.i.i.i.i373 = phi i32 [ %i.ud, %bb.hr ], [ %i.un, %bb.hs ]
  %i.uo = icmp eq i32 %.0.i.i.i.i373, 1
  br i1 %i.uo, label %bb.ht, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit374, !prof !215

bb.ht:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i372
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tz) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit374

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit374: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit369, %bb.hp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i372, %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  br label %bb.in

bb.hu:                                            ; preds = %bb.fr
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

.loopexit517.loopexit569:                         ; preds = %bb.ft
  %i.uq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %52) #19
  br label %.loopexit517

bb.hv:                                            ; preds = %bb.fu
  %i.ur = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit517.loopexit

bb.hw:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.hw
  %eh.lpad-body = phi { ptr, i32 } [ %i.us, %bb.hw ], [ %i.pu, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %51) #19
  br label %.loopexit517.loopexit

.loopexit517.loopexit:                            ; preds = %.body, %bb.hv
  %.pn181 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ur, %bb.hv ]
  %i.ut = getelementptr inbounds nuw i8, ptr %52, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ut) #19
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %52) #19
  br label %.loopexit517

.loopexit517:                                     ; preds = %.loopexit517.loopexit569, %.loopexit517.loopexit, %.thread
  %.pn181.pn = phi { ptr, i32 } [ %.pn181, %.loopexit517.loopexit ], [ %i.ow, %.thread ], [ %i.uq, %.loopexit517.loopexit569 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #19
  br label %bb.ia

bb.hx:                                            ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEC2ERKS2_.exit
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %bb.hz

bb.hy:                                            ; preds = %bb.ha
  %i.uv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %53) #19
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %.pn184 = phi { ptr, i32 } [ %i.uv, %bb.hy ], [ %i.uu, %bb.hx ]
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %54) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %50) #19
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %.loopexit517
  %.pn184.pn = phi { ptr, i32 } [ %.pn184, %bb.hz ], [ %.pn181.pn, %.loopexit517 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %49) #19
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hu
  %.pn184.pn.pn = phi { ptr, i32 } [ %.pn184.pn, %bb.ia ], [ %i.up, %bb.hu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  br label %bb.mg

bb.ic:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19
  %70 = load i8, ptr %i.os, align 8, !tbaa !39
  %.not.i.i.i375 = icmp eq i8 %70, 1
  br i1 %.not.i.i.i375, label %_ZNK5arrow5Datum6scalarEv.exit, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.uw = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.uw, align 8, !tbaa !32
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  store ptr @.str.47, ptr %i.ux, align 8, !tbaa !53
  invoke void @__cxa_throw(ptr nonnull %i.uw, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #23
          to label %.noexc376 unwind label %bb.ik

.noexc376:                                        ; preds = %bb.id
  unreachable

_ZNK5arrow5Datum6scalarEv.exit:                   ; preds = %bb.ic
  %i.uy = load ptr, ptr %.sroa.0499.0564, align 8, !tbaa !97 ; 3 uses
  store ptr %i.uy, ptr %56, align 8, !tbaa !97
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.0499.0564, i64 8
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !28 ; 4 uses
  store ptr %i.va, ptr %i.nu, align 8, !tbaa !28
  %.not.i.i.i377 = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i377, label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit, label %bb.ie

bb.ie:                                            ; preds = %_ZNK5arrow5Datum6scalarEv.exit
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8 ; 3 uses
  %i.vc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i378 = icmp eq i8 %i.vc, 0
  br i1 %.not.i.i.i.i378, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.vd = load i32, ptr %i.vb, align 4, !tbaa !3
  %i.ve = add nsw i32 %i.vd, 1
  store i32 %i.ve, ptr %i.vb, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit

bb.ig:                                            ; preds = %bb.ie
  %i.vf = atomicrmw volatile add ptr %i.vb, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %56, align 8, !tbaa !97
  %.pre583 = load ptr, ptr %i.nu, align 8, !tbaa !28
  br label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit:  ; preds = %_ZNK5arrow5Datum6scalarEv.exit, %bb.if, %bb.ig
  %i.vg = phi ptr [ null, %_ZNK5arrow5Datum6scalarEv.exit ], [ %i.va, %bb.if ], [ %.pre583, %bb.ig ]
  %i.vh = phi ptr [ %i.uy, %_ZNK5arrow5Datum6scalarEv.exit ], [ %i.uy, %bb.if ], [ %.pre, %bb.ig ] ; 2 uses
  store ptr %i.vh, ptr %55, align 8, !tbaa !97
  store ptr null, ptr %i.nu, align 8, !tbaa !28
  store ptr %i.vg, ptr %i.nv, align 8, !tbaa !28
  store ptr null, ptr %56, align 8, !tbaa !97
  store i8 1, ptr %i.nw, align 8, !tbaa !39
  %i.vi = load ptr, ptr %i.nx, align 8, !tbaa !109 ; 6 uses
  %i.vj = load ptr, ptr %i.ny, align 8, !tbaa !112
  %.not.i.i379 = icmp eq ptr %i.vi, %i.vj
  br i1 %.not.i.i379, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 16 ; 2 uses
  store i8 -1, ptr %i.vk, align 8, !tbaa !39
  %i.vl = load i8, ptr %i.nw, align 8, !tbaa !39  ; 2 uses
  %i.vm = icmp eq i8 %i.vl, 0
  br i1 %i.vm, label %_ZN5arrow5DatumC2EOS0_.exit.i.i382, label %.sink.split.i.i.i.i.i.i.i.i.i.i380

.sink.split.i.i.i.i.i.i.i.i.i.i380:               ; preds = %bb.ih
  store ptr %i.vh, ptr %i.vi, align 8, !tbaa !29
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vi, i64 8 ; 2 uses
  store ptr null, ptr %i.vn, align 8, !tbaa !28
  %i.vo = load ptr, ptr %i.nv, align 8, !tbaa !28
  store ptr null, ptr %i.nv, align 8, !tbaa !28
  store ptr %i.vo, ptr %i.vn, align 8, !tbaa !28
  store ptr null, ptr %55, align 8, !tbaa !29
  %.pre.i.i381 = load ptr, ptr %i.nx, align 8, !tbaa !109
  br label %_ZN5arrow5DatumC2EOS0_.exit.i.i382

_ZN5arrow5DatumC2EOS0_.exit.i.i382:               ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i380, %bb.ih
  %i.vp = phi ptr [ %i.vi, %bb.ih ], [ %.pre.i.i381, %.sink.split.i.i.i.i.i.i.i.i.i.i380 ]
  store i8 %i.vl, ptr %i.vk, align 8, !tbaa !39
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  store ptr %i.vq, ptr %i.nx, align 8, !tbaa !109
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE9push_backEOS1_.exit384

bb.ii:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit
  invoke void @_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr %i.vi, ptr noundef nonnull align 8 dereferenceable(24) %55)
          to label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE9push_backEOS1_.exit384 unwind label %bb.il

_ZNSt6vectorIN5arrow5DatumESaIS1_EE9push_backEOS1_.exit384: ; preds = %_ZN5arrow5DatumC2EOS0_.exit.i.i382, %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(24) %55)
          to label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit390 unwind label %bb.ij

bb.ij:                                            ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE9push_backEOS1_.exit384
  %i.vr = landingpad { ptr, i32 }
          catch ptr null
  %i.vs = extractvalue { ptr, i32 } %i.vr, 0
  call void @__clang_call_terminate(ptr %i.vs) #22
  unreachable

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit390: ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE9push_backEOS1_.exit384
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  br label %bb.in

bb.ik:                                            ; preds = %bb.id
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %bb.im

bb.il:                                            ; preds = %bb.ii
  %i.vu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %55) #19
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %56) #19
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %.pn179 = phi { ptr, i32 } [ %i.vu, %bb.il ], [ %i.vt, %bb.ik ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  br label %bb.mg

bb.in:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit390, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit374
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.0499.0564, i64 24 ; 2 uses
  %.not515 = icmp eq ptr %i.vv, %i.nt
  br i1 %.not515, label %._crit_edge567, label %bb.fq

bb.io:                                            ; preds = %._crit_edge567
  %i.vw = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.vx = load ptr, ptr %24, align 8, !tbaa !74
  invoke void @_ZNK5arrow5Array5SliceEl(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %i.vw, ptr noundef nonnull align 8 dereferenceable(32) %i.vx, i64 noundef %i.mf)
          to label %bb.ip unwind label %.loopexit.loopexit568

bb.ip:                                            ; preds = %bb.io
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %i.vy = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20
          to label %.noexc398 unwind label %.loopexit.loopexit ; 6 uses

.noexc398:                                        ; preds = %bb.ip
  store ptr %i.vy, ptr %57, align 8, !tbaa !225
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 32
  %i.wa = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  store ptr %i.vz, ptr %i.wa, align 8, !tbaa !227
  %i.wb = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !28 ; 2 uses
  %i.wd = load <2 x ptr>, ptr %58, align 16, !tbaa !29
  store <2 x ptr> %i.wd, ptr %i.vy, align 8, !tbaa !29
  %.not.i.i.i.i.i.i.i.i.i.i394 = icmp eq ptr %i.wc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i394, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396, label %bb.iq

bb.iq:                                            ; preds = %.noexc398
  %i.we = getelementptr inbounds nuw i8, ptr %i.wc, i64 8 ; 3 uses
  %i.wf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i.i.i.i.i.i.i395 = icmp eq i8 %i.wf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i395, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.wg = load i32, ptr %i.we, align 4, !tbaa !3
  %i.wh = add nsw i32 %i.wg, 1
  store i32 %i.wh, ptr %i.we, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396

bb.is:                                            ; preds = %bb.iq
  %i.wi = atomicrmw volatile add ptr %i.we, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396: ; preds = %bb.is, %bb.ir, %.noexc398
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %i.wk = getelementptr inbounds nuw i8, ptr %58, i64 24
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !28 ; 3 uses
  %i.wm = load <2 x ptr>, ptr %i.vw, align 16, !tbaa !29
  store <2 x ptr> %i.wm, ptr %i.wj, align 8, !tbaa !29
  %.not.i.i.i.i.i.i.i.i.i.i394.1 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i394.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396.1.thread, label %bb.it

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396.1.thread: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vy, i64 32
  %i.wo = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  store ptr %i.wn, ptr %i.wo, align 8, !tbaa !228
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit404

bb.it:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wl, i64 8 ; 3 uses
  %i.wq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i.i.i.i.i.i.i395.1 = icmp eq i8 %i.wq, 0
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vy, i64 32 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i395.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396.1.thread719

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396.1.thread719: ; preds = %bb.it
  %i.wt = load i32, ptr %i.wp, align 4, !tbaa !3
  %i.wu = add nsw i32 %i.wt, 1
  store i32 %i.wu, ptr %i.wp, align 4, !tbaa !3
  store ptr %i.wr, ptr %i.ws, align 8, !tbaa !228
  br label %bb.iu

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396.1: ; preds = %bb.it
  %i.wv = atomicrmw volatile add ptr %i.wp, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %58, i64 24
  %.pre584 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !28 ; 2 uses
  store ptr %i.wr, ptr %i.ws, align 8, !tbaa !228
  %.not.i.i400 = icmp eq ptr %.pre584, null
  br i1 %.not.i.i400, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit404, label %bb.iu

bb.iu:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396.1.thread719, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396.1
  %i.ww = phi ptr [ %i.wl, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396.1.thread719 ], [ %.pre584, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i396.1 ] ; 7 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute18CheckDispatchFailsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS_10TypeHolderESaIS8_EE:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !3
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 56) #21
  br label %.body

bb.i:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i, %bb.f, %bb.g
  store ptr %i.g, ptr %3, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %4, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.43, i64 noundef 41)
          to label %_ZN7testing7MessagelsIA42_cEERS0_RKT_.exit unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsIA42_cEERS0_RKT_.exit:       ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZN7testing7MessagelsIA42_cEERS0_RKT_.exit
  %i.am = load ptr, ptr %4, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %5, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ao, i64 noundef %i.aq)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.s ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 362, ptr noundef nonnull @.str.2)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.as = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.av = load i64, ptr %i.at, align 8, !tbaa !27
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ax = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #19, !inline_history !34
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bb = load ptr, ptr %3, align 8, !tbaa !7
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.o, !prof !35

bb.o:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ci

bb.p:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit71

bb.q:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.r:                                             ; preds = %_ZN7testing7MessagelsIA42_cEERS0_RKT_.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.s:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.t:                                             ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.u ], [ %i.bg, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.bf, %bb.s ] ; 2 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.w
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !27
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %.pn.pn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.bd, %bb.q ] ; 2 uses
  %i.bn = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %.not.i.i69 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i69, label %_ZN7testing7MessageD2Ev.exit71, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70: ; preds = %bb.x
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(128) %i.bn) #19, !inline_history !34
  br label %_ZN7testing7MessageD2Ev.exit71

_ZN7testing7MessageD2Ev.exit71:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70, %bb.x, %bb.p
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %.pn.pn.pn.pn, %bb.x ], [ %.pn.pn.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.br = load ptr, ptr %3, align 8, !tbaa !7
  %.not.i72 = icmp eq ptr %i.br, null
  br i1 %.not.i72, label %.body, label %bb.y, !prof !35

bb.y:                                             ; preds = %_ZN7testing7MessageD2Ev.exit71
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %.body

.body:                                            ; preds = %bb.y, %_ZN7testing7MessageD2Ev.exit71, %bb.i, %bb.h
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ai, %bb.i ], [ %.pn.pn.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit71 ], [ %.pn.pn.pn.pn.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.cr

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load <2 x ptr>, ptr %.phi.trans.insert, align 8, !tbaa !29, !noalias !403
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !375, !noalias !403 ; 2 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !28, !noalias !403
  store <2 x ptr> %i.bv, ptr %7, align 16, !tbaa !29, !alias.scope !403
  store ptr null, ptr %i.bs, align 8, !tbaa !375, !noalias !403
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %18 = load ptr, ptr %.pre, align 8, !tbaa !32
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.124") align 8 %9, ptr noundef nonnull align 8 dereferenceable(192) %.pre, ptr noundef %1)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.bw = load ptr, ptr %9, align 8, !tbaa !7     ; 6 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit.thread, label %bb.ab

_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit.thread: ; preds = %bb.aa
  store ptr null, ptr %8, align 8, !tbaa !7, !alias.scope !404
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  %i.by = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20
          to label %.noexc78 unwind label %.body79.thread ; 7 uses

.noexc78:                                         ; preds = %bb.ab
  %i.bz = load i8, ptr %i.bw, align 8, !tbaa !11, !noalias !404
  store i8 %i.bz, ptr %i.by, align 8, !tbaa !11, !noalias !404
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 3 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !23, !noalias !404
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !24, !noalias !404 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !25, !noalias !404 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !404
  store i64 %i.cf, ptr %i.b, align 8, !tbaa !26, !noalias !404
  %i.cg = icmp ugt i64 %i.cf, 15
  br i1 %i.cg, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %.noexc78
  %i.ch = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %.body79, !noalias !404 ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  store ptr %i.ch, ptr %i.ca, align 8, !tbaa !24, !noalias !404
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !26, !noalias !404
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !27, !noalias !404
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i, %.noexc78
  %i.cj = phi ptr [ %i.ch, %.noexc.i.i ], [ %i.cc, %.noexc78 ] ; 2 uses
  switch i64 %i.cf, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.ck = load i8, ptr %i.cd, align 1, !tbaa !27, !noalias !404
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !27, !noalias !404
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.cd, i64 %i.cf, i1 false), !noalias !404
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i: ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i.i.i
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !26, !noalias !404 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !25, !noalias !404
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !24, !noalias !404
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !27, !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !404
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !28, !noalias !404 ; 2 uses
  %i.ct = load <2 x ptr>, ptr %i.cq, align 8, !tbaa !29, !noalias !404
  store <2 x ptr> %i.ct, ptr %i.cp, align 8, !tbaa !29, !noalias !404
  %.not.i.i.i.i.i.i77 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i77, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27, !noalias !404
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !3, !noalias !404
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !3, !noalias !404
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.cy = atomicrmw volatile add ptr %i.cu, i32 1 acq_rel, align 4, !noalias !404 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !7
  store ptr %i.by, ptr %8, align 8, !tbaa !7, !alias.scope !404
  %.not.i.i81 = icmp eq ptr %.pr, null
  br i1 %.not.i.i81, label %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit.thread145, label %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit, !prof !407

_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit.thread145: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ba

_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit: ; preds = %bb.ah
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
  %.pr144 = load ptr, ptr %8, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.cz = icmp eq ptr %.pr144, null
  br i1 %i.cz, label %bb.ak, label %bb.ba

bb.ai:                                            ; preds = %bb.z
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit83

.body79.thread:                                   ; preds = %bb.ab
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.body79:                                          ; preds = %.noexc.i.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 56) #21, !noalias !404
  %.pr146 = load ptr, ptr %9, align 8, !tbaa !7
  %.not.i.i82 = icmp eq ptr %.pr146, null
  br i1 %.not.i.i82, label %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit83, label %bb.aj, !prof !52

bb.aj:                                            ; preds = %.body79.thread, %.body79
  %eh.lpad-body80149 = phi { ptr, i32 } [ %i.db, %.body79.thread ], [ %i.dc, %.body79 ]
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
  br label %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit83

_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit83: ; preds = %bb.aj, %.body79, %bb.ai
  %.pn41 = phi { ptr, i32 } [ %i.da, %bb.ai ], [ %i.dc, %.body79 ], [ %eh.lpad-body80149, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZN5arrow6StatusD2Ev.exit102

bb.ak:                                            ; preds = %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit.thread, %_ZN5arrow6ResultIPKNS_7compute6KernelEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.dd = load ptr, ptr %10, align 8, !tbaa !30
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull @.str.44, i64 noundef 47)
          to label %_ZN7testing7MessagelsIA48_cEERS0_RKT_.exit unwind label %bb.ar ; 0 uses

_ZN7testing7MessagelsIA48_cEERS0_RKT_.exit:       ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.am unwind label %bb.as

bb.am:                                            ; preds = %_ZN7testing7MessagelsIA48_cEERS0_RKT_.exit
  %i.dg = load ptr, ptr %10, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %11, align 8, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !25
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef %i.di, i64 noundef %i.dk)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit86 unwind label %bb.at ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit86: ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 363, ptr noundef nonnull @.str.2)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit86
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ao unwind label %bb.av

bb.ao:                                            ; preds = %bb.an
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.dm = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.ao
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !27
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.dr = load ptr, ptr %10, align 8, !tbaa !30   ; 3 uses
  %.not.i.i90 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i90, label %_ZN7testing7MessageD2Ev.exit92, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(128) %i.dr) #19, !inline_history !34
  br label %_ZN7testing7MessageD2Ev.exit92

_ZN7testing7MessageD2Ev.exit92:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.dv = load ptr, ptr %8, align 8, !tbaa !7
end_hunk_2
