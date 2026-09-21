Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/compiler?download=true
inline.NumInlined: 1474
inline.NumDeleted: 207
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3gmx16compileSelectionEPNS_19SelectionCollectionE:bb.a
  %i.aox = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i.i340 = icmp eq i8 %i.aox, 0
  br i1 %.not.i.i.i.i340, label %bb.ow, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.aoy = load i32, ptr %i.aow, align 4, !tbaa !60
  %i.aoz = add nsw i32 %i.aoy, 1
  store i32 %i.aoz, ptr %i.aow, align 4, !tbaa !60
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i341

bb.ow:                                            ; preds = %bb.ou
  %i.apa = atomicrmw volatile add ptr %i.aow, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i347 = load ptr, ptr %i.nt, align 8, !tbaa !57
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i341

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i341: ; preds = %bb.ow, %bb.ov, %bb.ot
  %i.apb = phi ptr [ %i.aov, %bb.ot ], [ %i.aov, %bb.ov ], [ %.pr.pre.i.i.i347, %bb.ow ] ; 8 uses
  %.not8.i.i.i342 = icmp eq ptr %i.apb, null
  br i1 %.not8.i.i.i342, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i346, label %bb.ox

bb.ox:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i341
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 8 ; 4 uses
  %i.apd = load atomic i64, ptr %i.apc acquire, align 8 ; 2 uses
  %i.ape = icmp eq i64 %i.apd, 4294967297
  %i.apf = trunc i64 %i.apd to i32                ; 2 uses
  br i1 %i.ape, label %bb.oy, label %bb.oz

bb.oy:                                            ; preds = %bb.ox
  store i32 0, ptr %i.apc, align 8, !tbaa !62
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apb, i64 12
  store i32 0, ptr %i.apg, align 4, !tbaa !63
  %i.aph = load ptr, ptr %i.apb, align 8, !tbaa !65
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 16
  %i.apj = load ptr, ptr %i.api, align 8
  call void %i.apj(ptr noundef nonnull align 8 dereferenceable(16) %i.apb) #22, !inline_history !2
  %i.apk = load ptr, ptr %i.apb, align 8, !tbaa !65
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 24
  %i.apm = load ptr, ptr %i.apl, align 8
  call void %i.apm(ptr noundef nonnull align 8 dereferenceable(16) %i.apb) #22, !inline_history !2
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i346

bb.oz:                                            ; preds = %bb.ox
  %i.apn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i9.i.i.i343 = icmp eq i8 %i.apn, 0
  br i1 %.not.i9.i.i.i343, label %bb.pb, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.apo = add nsw i32 %i.apf, -1
  store i32 %i.apo, ptr %i.apc, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i344

bb.pb:                                            ; preds = %bb.oz
  %i.app = atomicrmw volatile add ptr %i.apc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i344

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i344: ; preds = %bb.pb, %bb.pa
  %.0.i.i.i.i.i345 = phi i32 [ %i.apf, %bb.pa ], [ %i.app, %bb.pb ]
  %i.apq = icmp eq i32 %.0.i.i.i.i.i345, 1
  br i1 %i.apq, label %bb.pc, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i346, !prof !66

bb.pc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i344
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.apb) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i346

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i346: ; preds = %bb.pc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i344, %bb.oy, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i341
  store ptr %i.aou, ptr %i.nt, align 8, !tbaa !57
  %.pre534 = load ptr, ptr %7, align 8, !tbaa !67
  br label %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEaSERKS2_.exit348

_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEaSERKS2_.exit348: ; preds = %bb.os, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i346
  %i.apr = phi ptr [ %i.aos, %bb.os ], [ %.pre534, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i346 ]
  %.not434 = icmp eq ptr %i.apr, null
  br i1 %.not434, label %._crit_edge497, label %.lr.ph496, !llvm.loop !114

._crit_edge497:                                   ; preds = %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEaSERKS2_.exit348, %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEaSERKS2_.exit337
  switch i32 %i.f, label %bb.pe [
    i32 4, label %bb.pd
    i32 2, label %bb.pd
  ]

bb.pd:                                            ; preds = %._crit_edge497, %._crit_edge497
  %i.aps = load ptr, ptr @stderr, align 8, !tbaa !176
  %fwrite66 = call i64 @fwrite(ptr nonnull @.str.26, i64 34, i64 1, ptr %i.aps) #24 ; 0 uses
  %i.apt = load ptr, ptr @stderr, align 8, !tbaa !176
  invoke void @_ZNK3gmx19SelectionCollection9printTreeEP8_IO_FILEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.apt, i1 noundef zeroext false)
          to label %bb.pe unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.pe:                                            ; preds = %._crit_edge497, %bb.pd
  store i32 4, ptr %i.c, align 4, !tbaa !60
  %i.apu = load ptr, ptr %0, align 8, !tbaa !122
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 120
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !55
  invoke void @_ZN3gmx29PositionCalculationCollection12typeFromEnumEPKcP11e_poscalc_tPi(ptr noundef %i.apw, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
          to label %bb.pf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.pf:                                            ; preds = %bb.pe
  %i.apx = load ptr, ptr %i.aj, align 8, !tbaa !67 ; 2 uses
  store ptr %i.apx, ptr %7, align 8, !tbaa !67
  %i.apy = load ptr, ptr %i.al, align 8, !tbaa !57 ; 4 uses
  %i.apz = load ptr, ptr %i.nt, align 8, !tbaa !57 ; 3 uses
  %.not.i.i.i349 = icmp eq ptr %i.apy, %i.apz
  br i1 %.not.i.i.i349, label %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEaSERKS2_.exit359, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %.not7.i.i.i350 = icmp eq ptr %i.apy, null
  br i1 %.not7.i.i.i350, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i352, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apy, i64 8 ; 3 uses
  %i.aqb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i.i351 = icmp eq i8 %i.aqb, 0
  br i1 %.not.i.i.i.i351, label %bb.pj, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.aqc = load i32, ptr %i.aqa, align 4, !tbaa !60
  %i.aqd = add nsw i32 %i.aqc, 1
  store i32 %i.aqd, ptr %i.aqa, align 4, !tbaa !60
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i352

bb.pj:                                            ; preds = %bb.ph
  %i.aqe = atomicrmw volatile add ptr %i.aqa, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i358 = load ptr, ptr %i.nt, align 8, !tbaa !57
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i352

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i352: ; preds = %bb.pj, %bb.pi, %bb.pg
  %i.aqf = phi ptr [ %i.apz, %bb.pg ], [ %i.apz, %bb.pi ], [ %.pr.pre.i.i.i358, %bb.pj ] ; 8 uses
  %.not8.i.i.i353 = icmp eq ptr %i.aqf, null
  br i1 %.not8.i.i.i353, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i357, label %bb.pk

bb.pk:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i352
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8 ; 4 uses
  %i.aqh = load atomic i64, ptr %i.aqg acquire, align 8 ; 2 uses
  %i.aqi = icmp eq i64 %i.aqh, 4294967297
  %i.aqj = trunc i64 %i.aqh to i32                ; 2 uses
  br i1 %i.aqi, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  store i32 0, ptr %i.aqg, align 8, !tbaa !62
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqf, i64 12
  store i32 0, ptr %i.aqk, align 4, !tbaa !63
  %i.aql = load ptr, ptr %i.aqf, align 8, !tbaa !65
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 16
  %i.aqn = load ptr, ptr %i.aqm, align 8
  call void %i.aqn(ptr noundef nonnull align 8 dereferenceable(16) %i.aqf) #22, !inline_history !2
  %i.aqo = load ptr, ptr %i.aqf, align 8, !tbaa !65
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 24
  %i.aqq = load ptr, ptr %i.aqp, align 8
  call void %i.aqq(ptr noundef nonnull align 8 dereferenceable(16) %i.aqf) #22, !inline_history !2
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i357

bb.pm:                                            ; preds = %bb.pk
  %i.aqr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i9.i.i.i354 = icmp eq i8 %i.aqr, 0
  br i1 %.not.i9.i.i.i354, label %bb.po, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.aqs = add nsw i32 %i.aqj, -1
  store i32 %i.aqs, ptr %i.aqg, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i355

bb.po:                                            ; preds = %bb.pm
  %i.aqt = atomicrmw volatile add ptr %i.aqg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i355

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i355: ; preds = %bb.po, %bb.pn
  %.0.i.i.i.i.i356 = phi i32 [ %i.aqj, %bb.pn ], [ %i.aqt, %bb.po ]
  %i.aqu = icmp eq i32 %.0.i.i.i.i.i356, 1
  br i1 %i.aqu, label %bb.pp, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i357, !prof !66

bb.pp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i355
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aqf) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i357

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i357: ; preds = %bb.pp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i355, %bb.pl, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i352
  store ptr %i.apy, ptr %i.nt, align 8, !tbaa !57
  %.pre535 = load ptr, ptr %7, align 8, !tbaa !67
  br label %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEaSERKS2_.exit359

_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEaSERKS2_.exit359: ; preds = %bb.pf, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i357
  %i.aqv = phi ptr [ %i.apx, %bb.pf ], [ %.pre535, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i357 ] ; 2 uses
  %.not435498 = icmp eq ptr %i.aqv, null
  br i1 %.not435498, label %._crit_edge500, label %.lr.ph499

.lr.ph499:                                        ; preds = %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEaSERKS2_.exit359
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.aqx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  br label %bb.pq

bb.pq:                                            ; preds = %.lr.ph499, %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEaSERKS2_.exit393
  %i.aqy = phi ptr [ %i.aqv, %.lr.ph499 ], [ %i.ayr, %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEaSERKS2_.exit393 ] ; 8 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 96 ; 3 uses
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !67 ; 5 uses
  %i.arb = load i32, ptr %i.ara, align 8, !tbaa !68
  %i.arc = icmp eq i32 %i.arb, 5
  br i1 %i.arc, label %bb.pr, label %bb.pu

bb.pr:                                            ; preds = %bb.pq
  %i.ard = getelementptr inbounds nuw i8, ptr %i.ara, i64 88
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !31
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 12
  %i.arg = load i32, ptr %i.arf, align 4, !tbaa !34 ; 2 uses
  %16 = and i32 %i.arg, 4
  %.not.i377 = icmp eq i32 %16, 0
  %17 = and i32 %i.arg, 33
  %or.cond.i = icmp eq i32 %17, 32
  %or.cond66.i = or i1 %.not.i377, %or.cond.i
  br i1 %or.cond66.i, label %bb.ps, label %bb.pu

bb.ps:                                            ; preds = %bb.pr
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqy, i64 32
  store ptr null, ptr %i.arh, align 8, !tbaa !43
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqy, i64 88
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !31 ; 2 uses
  %.not33.i = icmp eq ptr %i.arj, null
  br i1 %.not33.i, label %bb.pu, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  store ptr null, ptr %i.arj, align 8, !tbaa !36
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pt, %bb.ps, %bb.pr, %bb.pq
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aqy, i64 32
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !43
  %.not34.i = icmp eq ptr %i.arl, null
  br i1 %.not34.i, label %bb.sb, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ara, i64 40
  %i.arn = load i32, ptr %i.arm, align 8, !tbaa !69 ; 2 uses
  %i.aro = and i32 %i.arn, 8
  %.not35.i = icmp eq i32 %i.aro, 0
  br i1 %.not35.i, label %bb.pw, label %bb.py

bb.pw:                                            ; preds = %bb.pv
  %i.arp = and i32 %i.arn, 2
  %.not36.i = icmp eq i32 %i.arp, 0
  br i1 %.not36.i, label %bb.pz, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.arq = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  %i.arr = load i32, ptr %i.arq, align 8, !tbaa !42
  %.not37.i = icmp eq i32 %i.arr, 5
  br i1 %.not37.i, label %bb.pz, label %bb.py

bb.py:                                            ; preds = %bb.px, %bb.pv
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aqy, i64 48
  br label %.invoke

.invoke:                                          ; preds = %bb.qa, %bb.py
  %i.art = phi ptr [ %i.ars, %bb.py ], [ %i.asd, %bb.qa ]
  %i.aru = phi i32 [ -1, %bb.py ], [ %i.asa, %bb.qa ]
  %i.arv = phi ptr [ null, %bb.py ], [ %i.ase, %bb.qa ]
  invoke void @_Z17gmx_ana_index_setP15gmx_ana_index_tiPii(ptr noundef nonnull %i.art, i32 noundef %i.aru, ptr noundef %i.arv, i32 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.pz:                                            ; preds = %bb.px, %bb.pw
  %i.arw = getelementptr inbounds nuw i8, ptr %i.ara, i64 88
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !31
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 24
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !38 ; 2 uses
  %i.asa = load i32, ptr %i.arz, align 8, !tbaa !41 ; 2 uses
  %i.asb = load i32, ptr %i.i, align 8, !tbaa !41
  %i.asc = icmp eq i32 %i.asa, %i.asb
  %i.asd = getelementptr inbounds nuw i8, ptr %i.aqy, i64 48 ; 2 uses
  br i1 %i.asc, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %bb.pz
  %i.ase = load ptr, ptr %i.aqw, align 8, !tbaa !70
  br label %.invoke

bb.qb:                                            ; preds = %bb.pz
  invoke void @_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b(ptr noundef nonnull %i.asd, ptr noundef nonnull %i.arz, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %.invoke, %bb.qb
  %i.asf = load ptr, ptr %i.aqz, align 8, !tbaa !67 ; 3 uses
  %i.asg = load i32, ptr %i.asf, align 8, !tbaa !68
  %.not38.i = icmp eq i32 %i.asg, 5
  br i1 %.not38.i, label %_ZL14init_root_itemRKSt10shared_ptrIN3gmx20SelectionTreeElementEEP15gmx_ana_index_t.exit, label %bb.qc

bb.qc:                                            ; preds = %.noexc
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asf, i64 16
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !59
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 72
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !177
  %.not39.i = icmp eq ptr %i.ask, null
  br i1 %.not39.i, label %_ZL14init_root_itemRKSt10shared_ptrIN3gmx20SelectionTreeElementEEP15gmx_ana_index_t.exit, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr %i.asf, ptr %1, align 8, !tbaa !67
  %i.asl = getelementptr inbounds nuw i8, ptr %i.aqy, i64 104
  %i.asm = load ptr, ptr %i.asl, align 8, !tbaa !57 ; 3 uses
  store ptr %i.asm, ptr %i.aqx, align 8, !tbaa !57
  %.not.i.i.i.i360 = icmp eq ptr %i.asm, null
  br i1 %.not.i.i.i.i360, label %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEC2ERKS2_.exit.i362.preheader, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 8 ; 3 uses
  %i.aso = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i.i.i361 = icmp eq i8 %i.aso, 0
  br i1 %.not.i.i.i.i.i361, label %bb.qg, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.asp = load i32, ptr %i.asn, align 4, !tbaa !60
  %i.asq = add nsw i32 %i.asp, 1
  store i32 %i.asq, ptr %i.asn, align 4, !tbaa !60
  br label %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEC2ERKS2_.exit.i362.preheader

bb.qg:                                            ; preds = %bb.qe
  %i.asr = atomicrmw volatile add ptr %i.asn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEC2ERKS2_.exit.i362.preheader

_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEC2ERKS2_.exit.i362.preheader: ; preds = %bb.qg, %bb.qf, %bb.qd
  br label %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEC2ERKS2_.exit.i362

_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEC2ERKS2_.exit.i362: ; preds = %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEC2ERKS2_.exit.i362.backedge, %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEC2ERKS2_.exit.i362.preheader
  %i.ass = load ptr, ptr %1, align 8, !tbaa !67   ; 5 uses
  %i.ast = load i32, ptr %i.ass, align 8, !tbaa !68
  switch i32 %i.ast, label %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEaSERKS2_.exit64.i [
    i32 8, label %bb.qh
    i32 6, label %bb.rd
  ]

bb.qh:                                            ; preds = %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEC2ERKS2_.exit.i362
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ass, i64 96
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !67 ; 2 uses
  store ptr %i.asv, ptr %1, align 8, !tbaa !67
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ass, i64 104
  %i.asx = load ptr, ptr %i.asw, align 8, !tbaa !57 ; 5 uses
  %i.asy = load ptr, ptr %i.aqx, align 8, !tbaa !57 ; 4 uses
  %.not.i.i.i41.i = icmp eq ptr %i.asx, %i.asy
  br i1 %.not.i.i.i41.i, label %_ZNSt10shared_ptrIN3gmx20SelectionTreeElementEEaSERKS2_.exit.i375, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %.not7.i.i.i.i367 = icmp eq ptr %i.asx, null
  br i1 %.not7.i.i.i.i367, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i368, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asx, i64 8 ; 3 uses
  %i.ata = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i.i42.i = icmp eq i8 %i.ata, 0
  br i1 %.not.i.i.i.i42.i, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.atb = load i32, ptr %i.asz, align 4, !tbaa !60
  %i.atc = add nsw i32 %i.atb, 1
  store i32 %i.atc, ptr %i.asz, align 4, !tbaa !60
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i368

bb.ql:                                            ; preds = %bb.qj
  %i.atd = atomicrmw volatile add ptr %i.asz, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i376 = load ptr, ptr %i.aqx, align 8, !tbaa !57
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i368

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i368: ; preds = %bb.ql, %bb.qk, %bb.qi
  %i.ate = phi ptr [ %i.asy, %bb.qi ], [ %i.asy, %bb.qk ], [ %.pr.pre.i.i.i.i376, %bb.ql ] ; 8 uses
  %.not8.i.i.i.i369 = icmp eq ptr %i.ate, null
  br i1 %.not8.i.i.i.i369, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i373, label %bb.qm

bb.qm:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i368
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 8 ; 4 uses
  %i.atg = load atomic i64, ptr %i.atf acquire, align 8 ; 2 uses
  %i.ath = icmp eq i64 %i.atg, 4294967297
  %i.ati = trunc i64 %i.atg to i32                ; 2 uses
  br i1 %i.ath, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %bb.qm
  store i32 0, ptr %i.atf, align 8, !tbaa !62
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ate, i64 12
  store i32 0, ptr %i.atj, align 4, !tbaa !63
  %i.atk = load ptr, ptr %i.ate, align 8, !tbaa !65
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 16
  %i.atm = load ptr, ptr %i.atl, align 8
  call void %i.atm(ptr noundef nonnull align 8 dereferenceable(16) %i.ate) #22, !inline_history !115
  %i.atn = load ptr, ptr %i.ate, align 8, !tbaa !65
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atn, i64 24
  %i.atp = load ptr, ptr %i.ato, align 8
  call void %i.atp(ptr noundef nonnull align 8 dereferenceable(16) %i.ate) #22, !inline_history !115
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i373

bb.qo:                                            ; preds = %bb.qm
  %i.atq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i9.i.i.i.i370 = icmp eq i8 %i.atq, 0
  br i1 %.not.i9.i.i.i.i370, label %bb.qq, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.atr = add nsw i32 %i.ati, -1
  store i32 %i.atr, ptr %i.atf, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i371

bb.qq:                                            ; preds = %bb.qo
  %i.ats = atomicrmw volatile add ptr %i.atf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i371

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i371: ; preds = %bb.qq, %bb.qp
  %.0.i.i.i.i.i.i372 = phi i32 [ %i.ati, %bb.qp ], [ %i.ats, %bb.qq ]
  %i.att = icmp eq i32 %.0.i.i.i.i.i.i372, 1
  br i1 %i.att, label %bb.qr, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i373, !prof !66

bb.qr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i371
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ate) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i373

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i373: ; preds = %bb.qr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i371, %bb.qn, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i368
  store ptr %i.asx, ptr %i.aqx, align 8, !tbaa !57
  %.pre.i374 = load ptr, ptr %1, align 8, !tbaa !67
end_hunk_0
