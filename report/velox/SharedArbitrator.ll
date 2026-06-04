inline.NumInlined: 7736
inline.NumDeleted: 3262
begin_hunk_0_@_ZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_Rb:bb.a
          to label %_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E8getEntryEv.exit.i unwind label %bb.bi

_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E8getEntryEv.exit.i: ; preds = %bb.be, %bb.bd
  %i.go = phi ptr [ %i.gm, %bb.bd ], [ %i.gn, %bb.be ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 72
  %i.gq = load atomic i32, ptr %i.gp acquire, align 4, !noalias !741
  %.not.i.i188 = icmp eq i32 %i.gq, 2
  br i1 %.not.i.i188, label %_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv.exit.i, label %bb.bf, !prof !184

bb.bf:                                            ; preds = %_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E8getEntryEv.exit.i
  %i.gr = load ptr, ptr %i.go, align 8, !tbaa !38, !noalias !741
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !741
  invoke void %i.gt(ptr noundef nonnull align 8 dereferenceable(2304) %i.go)
          to label %_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv.exit.i unwind label %bb.bi, !inline_history !742

_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv.exit.i: ; preds = %bb.bf, %_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E8getEntryEv.exit.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 1160
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false), !alias.scope !746
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !288, !noalias !746
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 1168
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !292, !noalias !746
  invoke void @_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE5resetEPNS_6detail23ReadMostlySharedPtrCoreIS4_EEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef %i.gv, ptr noundef %i.gx)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv.exit.i
  %i.gy = load ptr, ptr %25, align 8, !tbaa !293  ; 3 uses
  %.not379 = icmp eq ptr %i.gy, null
  br i1 %.not379, label %bb.bk, label %bb.bh, !prof !16

bb.bh:                                            ; preds = %bb.bg
  %i.gz = load ptr, ptr %i.ab, align 8, !tbaa !462
  %i.ha = load ptr, ptr %20, align 8, !tbaa !461
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = sdiv exact i64 %i.hd, 56
  %i.hf = load ptr, ptr %i.gy, align 8, !tbaa !38
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 120
  %i.hh = load ptr, ptr %i.hg, align 8
  invoke void %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr nonnull @.str.226, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.226, i64 55), i64 noundef %i.he)
          to label %bb.bk unwind label %bb.bj

bb.bi:                                            ; preds = %_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv.exit.i, %bb.bf, %bb.be
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bj:                                            ; preds = %bb.bh
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #28
  br label %bb.bt

bb.bk:                                            ; preds = %bb.bh, %bb.bg
  %i.hk = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !295 ; 5 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hn = call noundef i64 @_ZN5folly10TLRefCountmmEv(ptr noundef nonnull align 8 dereferenceable(240) %i.hl) #28
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %bb.bm, label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit

bb.bm:                                            ; preds = %bb.bl
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 224
  store ptr null, ptr %i.hp, align 8, !tbaa !118
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 232 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !139 ; 8 uses
  store ptr null, ptr %i.hq, align 8, !tbaa !139
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 4 uses
  %i.ht = load atomic i64, ptr %i.hs acquire, align 8 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 4294967297
  %i.hv = trunc i64 %i.ht to i32                  ; 2 uses
  br i1 %i.hu, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.hs, align 8, !tbaa !136
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  store i32 0, ptr %i.hw, align 4, !tbaa !138
  %i.hx = load ptr, ptr %i.hr, align 8, !tbaa !38
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #28, !inline_history !296
  %i.ia = load ptr, ptr %i.hr, align 8, !tbaa !38
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #28, !inline_history !296
  br label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.id = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.id, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ie = add nsw i32 %i.hv, -1
  store i32 %i.ie, ptr %i.hs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bp
  %i.if = atomicrmw volatile add ptr %i.hs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.hv, %bb.bq ], [ %i.if, %bb.br ]
  %i.ig = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ig, label %bb.bs, label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i, !prof !16

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #28
  br label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i

_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i: ; preds = %bb.bs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bo, %bb.bm
  call void @_ZN5folly6detail23ReadMostlySharedPtrCoreINS_10TLRefCountEE10decrefWeakEv(ptr noundef nonnull align 8 dereferenceable(240) %i.hl)
  br label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit

_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit: ; preds = %bb.bk, %bb.bl, %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  %.pre1009 = load ptr, ptr %20, align 8, !tbaa !473
  %.pre1010 = load ptr, ptr %i.ab, align 8, !tbaa !473
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bj, %bb.bi
  %.pn = phi { ptr, i32 } [ %i.hj, %bb.bj ], [ %i.hi, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %.body300

bb.bu:                                            ; preds = %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit, %bb.bc
  %i.ih = phi ptr [ %.pre1010, %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit ], [ %i.ac, %bb.bc ] ; 2 uses
  %i.ii = phi ptr [ %.pre1009, %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit ], [ %i.aa, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  %i.ij = icmp eq ptr %i.ii, %i.ih
  br i1 %i.ij, label %._crit_edge781.thread, label %.lr.ph780

._crit_edge781.thread:                            ; preds = %bb.bu
  %i.ik = getelementptr inbounds nuw i8, ptr %26, i64 8
  br label %._crit_edge787

.lr.ph780:                                        ; preds = %bb.bu
  %i.il = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.in = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.ip = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.it = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.iv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 12 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 5 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 10 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ji = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.jk = getelementptr inbounds nuw i8, ptr %14, i64 96 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %14, i64 80
  %i.jm = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.jp = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.jq = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 3 uses
  br label %bb.bv

._crit_edge781:                                   ; preds = %"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_1D2Ev.exit"
  store ptr %i.qt, ptr %26, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.js = icmp eq ptr %i.qt, %.val118
  br i1 %i.js, label %._crit_edge787, label %.lr.ph786

.lr.ph786:                                        ; preds = %._crit_edge781
  %i.jt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.em

bb.bv:                                            ; preds = %.lr.ph780, %"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_1D2Ev.exit"
  %i.jy = phi ptr [ null, %.lr.ph780 ], [ %i.qs, %"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_1D2Ev.exit" ] ; 5 uses
  %i.jz = phi ptr [ null, %.lr.ph780 ], [ %.val118, %"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_1D2Ev.exit" ] ; 4 uses
  %.sroa.0318.0778 = phi ptr [ %i.ii, %.lr.ph780 ], [ %i.rz, %"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_1D2Ev.exit" ] ; 6 uses
  %i.ka = phi ptr [ null, %.lr.ph780 ], [ %i.qt, %"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_1D2Ev.exit" ] ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  store ptr %0, ptr %28, align 8, !tbaa !747
  %i.kb = load ptr, ptr %.sroa.0318.0778, align 8, !tbaa !225 ; 2 uses
  store ptr %i.kb, ptr %i.il, align 8, !tbaa !225
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0318.0778, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !139 ; 4 uses
  store ptr %i.kd, ptr %i.im, align 8, !tbaa !139
  %.not.i.i.i.i.i192 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i.i.i192, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 3 uses
  %i.kf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i193 = icmp eq i8 %i.kf, 0
  br i1 %.not.i.i.i.i.i.i193, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !3
  %i.kh = add nsw i32 %i.kg, 1
  store i32 %i.kh, ptr %i.ke, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i

bb.by:                                            ; preds = %bb.bw
  %i.ki = atomicrmw volatile add ptr %i.ke, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i: ; preds = %bb.by, %bb.bx, %bb.bv
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0318.0778, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !368 ; 2 uses
  store ptr %i.kk, ptr %i.in, align 8, !tbaa !368
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0318.0778, i64 24
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !139 ; 4 uses
  store ptr %i.km, ptr %i.io, align 8, !tbaa !139
  %.not.i.i.i3.i.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateC2ERKS2_.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8 ; 3 uses
  %i.ko = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i4.i.i = icmp eq i8 %i.ko, 0
  br i1 %.not.i.i.i.i4.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kp = load i32, ptr %i.kn, align 4, !tbaa !3
  %i.kq = add nsw i32 %i.kp, 1
  store i32 %i.kq, ptr %i.kn, align 4, !tbaa !3
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateC2ERKS2_.exit

bb.cb:                                            ; preds = %bb.bz
  %i.kr = atomicrmw volatile add ptr %i.kn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateC2ERKS2_.exit

_ZN8facebook5velox6memory20ArbitrationCandidateC2ERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i, %bb.ca, %bb.cb
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0318.0778, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ip, ptr noundef nonnull align 8 dereferenceable(24) %i.ks, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %27, i8 0, i64 32, i1 false)
  %i.kt = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #42
          to label %bb.cc unwind label %bb.ef     ; 7 uses

bb.cc:                                            ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateC2ERKS2_.exit
  store ptr %0, ptr %i.kt, align 8, !tbaa !747
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store ptr %i.kb, ptr %i.ku, align 8, !tbaa !225
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store ptr %i.kd, ptr %i.kv, align 8, !tbaa !139
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  store ptr %i.kk, ptr %i.kw, align 8, !tbaa !368
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  store ptr %i.km, ptr %i.kx, align 8, !tbaa !139
  store <4 x ptr> splat (ptr null), ptr %i.il, align 8, !tbaa !118
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ky, ptr noundef nonnull align 8 dereferenceable(24) %i.ip, i64 24, i1 false)
  store ptr %i.kt, ptr %27, align 8, !tbaa !118
  store ptr @"_ZNSt17_Function_handlerIFSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultSt14default_deleteISE_EEvEZNS4_24reclaimUsedMemoryBySpillEmSC_SC_SD_E3$_0E9_M_invokeERKSt9_Any_data", ptr %i.ir, align 8, !tbaa !749
  store ptr @"_ZNSt17_Function_handlerIFSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultSt14default_deleteISE_EEvEZNS4_24reclaimUsedMemoryBySpillEmSC_SC_SD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr %i.iq, align 8, !tbaa !117
  %i.kz = invoke noundef ptr @_ZN8facebook5velox6memory24memoryArbitrationContextEv()
          to label %.noexc195 unwind label %bb.eg ; 2 uses

.noexc195:                                        ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28, !noalias !751
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 24, i1 false), !noalias !751
  %i.la = load ptr, ptr %i.ir, align 8, !tbaa !749, !noalias !751 ; 2 uses
  store ptr %i.la, ptr %i.is, align 8, !tbaa !749, !noalias !751
  %.val.i.i = load ptr, ptr %i.iq, align 8, !tbaa !117, !noalias !751 ; 4 uses
  %.not.i.i.not.i.i = icmp eq ptr %.val.i.i, null ; 2 uses
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultSt14default_deleteISE_EEvEEC2EOSJ_.exit.i, label %bb.cd

bb.cd:                                            ; preds = %.noexc195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %27, i64 16, i1 false), !tbaa.struct !754, !noalias !751
  store ptr %.val.i.i, ptr %i.it, align 8, !tbaa !117, !noalias !751
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iq, i8 0, i64 16, i1 false), !noalias !751
  br label %_ZNSt8functionIFSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultSt14default_deleteISE_EEvEEC2EOSJ_.exit.i

_ZNSt8functionIFSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultSt14default_deleteISE_EEvEEC2EOSJ_.exit.i: ; preds = %bb.cd, %.noexc195
  store ptr %i.kz, ptr %i.iu, align 8, !tbaa !755, !noalias !751
  %i.lb = invoke noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #42
          to label %.noexc.i unwind label %bb.dp, !noalias !751 ; 18 uses

.noexc.i:                                         ; preds = %_ZNSt8functionIFSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultSt14default_deleteISE_EEvEEC2EOSJ_.exit.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store i32 1, ptr %i.lc, align 8, !tbaa !136, !noalias !758
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  store i32 1, ptr %i.ld, align 4, !tbaa !138, !noalias !758
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox11AsyncSourceIZNS1_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.lb, align 8, !tbaa !38, !noalias !758
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !758
  store i64 0, ptr %i.iv, align 8, !noalias !758
  %i.lf = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #42
          to label %.noexc.i.i.i.i.i unwind label %bb.dl, !noalias !758 ; 6 uses

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lf, i8 0, i64 24, i1 false), !noalias !758
  store ptr %i.la, ptr %i.lg, align 8, !tbaa !749, !noalias !758
  br i1 %.not.i.i.not.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.noexc.i.i.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lf, ptr noundef nonnull align 8 dereferenceable(40) %17, i64 16, i1 false), !tbaa.struct !754, !noalias !758
  store ptr %.val.i.i, ptr %i.lh, align 8, !tbaa !117, !noalias !758
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.it, i8 0, i64 16, i1 false), !noalias !758
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.noexc.i.i.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  store ptr %i.kz, ptr %i.li, align 8, !tbaa !755, !noalias !758
  store ptr %i.lf, ptr %16, align 8, !tbaa !118, !noalias !758
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lb, i64 112
  store i8 0, ptr %i.lj, align 8, !tbaa !761, !noalias !758
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 120
  store i8 0, ptr %i.lk, align 8, !tbaa !763, !noalias !758
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lb, i64 128
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lb, i64 224 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lb, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ll, i8 0, i64 96, i1 false), !noalias !758
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lb, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lm, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 16, i1 false), !tbaa.struct !754, !noalias !758
  store ptr @_ZNSt17_Function_handlerIFSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultSt14default_deleteISE_EEvEZNS3_28createAsyncMemoryReclaimTaskISE_EESt10shared_ptrINS2_11AsyncSourceIT_EEESt8functionIFS0_ISM_SF_ISM_EEvEEEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation, ptr %i.lo, align 8, !tbaa !117, !noalias !758
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iw, i8 0, i64 16, i1 false), !noalias !758
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultSt14default_deleteISE_EEvEZNS3_28createAsyncMemoryReclaimTaskISE_EESt10shared_ptrINS2_11AsyncSourceIT_EEESt8functionIFS0_ISM_SF_ISM_EEvEEEUlvE_E9_M_invokeERKSt9_Any_data, ptr null>, ptr %i.ln, align 8, !tbaa !118, !noalias !758
  %i.lp = invoke noundef ptr @_ZN8facebook5velox7process18GetThreadDebugInfoEv()
          to label %bb.cg unwind label %bb.da, !noalias !758

bb.cg:                                            ; preds = %bb.cf
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox11AsyncSourceIZNS0_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultEC2ESt8functionIFSt10unique_ptrISD_St14default_deleteISD_EEvEE.exit.i.i.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lq = invoke noundef ptr @_ZN8facebook5velox7process18GetThreadDebugInfoEv()
          to label %bb.ci unwind label %bb.db, !noalias !758 ; 4 uses

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !758
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28, !noalias !758
  store ptr %i.ix, ptr %15, align 8, !tbaa !7, !noalias !758
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !15, !noalias !758 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !11, !noalias !758 ; 8 uses
  %i.lu = icmp ugt i64 %i.lt, 15
  br i1 %i.lu, label %bb.cj, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.lv = icmp slt i64 %i.lt, 0
  br i1 %i.lv, label %.noexc.i.i.i.i.i.i.i.i.i, label %bb.ck

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cj
  store ptr %i.ka, ptr %26, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.156) #41
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp391, !noalias !758

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  unreachable

bb.ck:                                            ; preds = %bb.cj
  %i.lw = add nuw i64 %i.lt, 1                    ; 2 uses
  %i.lx = icmp slt i64 %i.lw, 0
  br i1 %i.lx, label %.noexc6.i.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i, !prof !16

.noexc6.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.ck
  store ptr %i.ka, ptr %26, align 8
  invoke void @_ZSt17__throw_bad_allocv() #41
          to label %.noexc12.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp391, !noalias !758

.noexc12.i.i.i.i.i.i.i.i:                         ; preds = %.noexc6.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ck
  %i.ly = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lw) #42
          to label %.noexc13.i.i.i.i.i.i.i.i unwind label %.loopexit390, !noalias !758 ; 2 uses

.noexc13.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ly, ptr %15, align 8, !tbaa !15, !noalias !758
  store i64 %i.lt, ptr %i.ix, align 8, !tbaa !14, !noalias !758
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc13.i.i.i.i.i.i.i.i, %bb.ci
  %i.lz = phi ptr [ %i.ly, %.noexc13.i.i.i.i.i.i.i.i ], [ %i.ix, %bb.ci ] ; 3 uses
  switch i64 %i.lt, label %bb.cm [
    i64 1, label %bb.cl
    i64 0, label %bb.cn
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_Rb:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

.loopexit395:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i15.i.i.i.i.i.i.i.i
  %lpad.loopexit397 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ka, ptr %26, align 8
  br label %bb.dc

.loopexit.split-lp396:                            ; preds = %.noexc.i17.i.i.i.i.i.i.i.i, %.noexc6.i16.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp398 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.dc:                                            ; preds = %.loopexit.split-lp396, %.loopexit395
  %lpad.phi399 = phi { ptr, i32 } [ %lpad.loopexit397, %.loopexit395 ], [ %lpad.loopexit.split-lp398, %.loopexit.split-lp396 ] ; 2 uses
  %i.oe = load ptr, ptr %15, align 8, !tbaa !15, !noalias !758 ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.ix
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dc
  %i.og = load i64, ptr %i.ix, align 8, !tbaa !14, !noalias !758
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %i.oe, i64 noundef %i.oh) #40, !noalias !758
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dc, %.loopexit390, %.loopexit.split-lp391, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi399, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp393, %.loopexit.split-lp391 ], [ %lpad.loopexit392, %.loopexit390 ], [ %lpad.phi399, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28, !noalias !758
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28, !noalias !758
  br label %bb.dd

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, %bb.db, %bb.da
  %.pn9.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.od, %bb.db ], [ %i.oc, %bb.da ], [ %.pn.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.lb, i64 256 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lb, i64 240
  %i.ok = getelementptr inbounds nuw i8, ptr %i.lb, i64 216
  %i.ol = load ptr, ptr %i.oi, align 8, !tbaa !415, !noalias !758
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.oi) #28, !noalias !758
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.de, %bb.dd
  %i.om = load ptr, ptr %i.oj, align 8, !tbaa !117, !noalias !758 ; 2 uses
  %.not.i22.i.i.i.i.i.i.i.i = icmp eq ptr %i.om, null
  br i1 %.not.i22.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i
  %i.on = invoke noundef zeroext i1 %i.om(ptr noundef nonnull align 8 dereferenceable(32) %i.lm, ptr noundef nonnull align 8 dereferenceable(32) %i.lm, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.dg, !noalias !758 ; 0 uses

bb.dg:                                            ; preds = %bb.df
  %i.oo = landingpad { ptr, i32 }
          catch ptr null
  %i.op = extractvalue { ptr, i32 } %i.oo, 0
  call void @__clang_call_terminate(ptr %i.op) #43, !noalias !758
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i:   ; preds = %bb.df, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i
  %i.oq = load ptr, ptr %i.ok, align 8, !tbaa !769, !noalias !758 ; 2 uses
  %.not.i23.i.i.i.i.i.i.i.i = icmp eq ptr %i.oq, null
  br i1 %.not.i23.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultSt14default_deleteISD_EED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultEclEPSD_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultEclEPSD_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.oq, i64 noundef 16) #40, !noalias !758
  br label %_ZNSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultSt14default_deleteISD_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultSt14default_deleteISD_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultEclEPSD_.exit.i.i.i.i.i.i.i.i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.lb, i64 192
  call void @_ZNSt6vectorIN8facebook5velox12VeloxPromiseIN5folly4UnitEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.or) #28, !noalias !758
  call void @_ZNSt14_Optional_baseIN8facebook5velox7process15ThreadDebugInfoELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(248) %i.le) #28, !noalias !758
  %i.os = load ptr, ptr %i.iw, align 8, !tbaa !117, !noalias !758 ; 2 uses
  %.not.i4.i.i.i.i.i.i.i = icmp eq ptr %i.os, null
  br i1 %.not.i4.i.i.i.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, label %bb.dj

_ZN8facebook5velox11AsyncSourceIZNS0_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultEC2ESt8functionIFSt10unique_ptrISD_St14default_deleteISD_EEvEE.exit.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox7process15ThreadDebugInfoD2Ev.exit.i.i.i.i.i.i.i.i, %bb.cg
  %i.ot = load ptr, ptr %i.iw, align 8, !tbaa !117, !noalias !758 ; 2 uses
  %.not.i3.i.i.i.i.i.i.i = icmp eq ptr %i.ot, null
  br i1 %.not.i3.i.i.i.i.i.i.i, label %bb.dm, label %bb.dh

bb.dh:                                            ; preds = %_ZN8facebook5velox11AsyncSourceIZNS0_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultEC2ESt8functionIFSt10unique_ptrISD_St14default_deleteISD_EEvEE.exit.i.i.i.i.i.i.i
  %i.ou = invoke noundef zeroext i1 %i.ot(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 3)
          to label %bb.dm unwind label %bb.di, !noalias !758 ; 0 uses

bb.di:                                            ; preds = %bb.dh
  %i.ov = landingpad { ptr, i32 }
          catch ptr null
  %i.ow = extractvalue { ptr, i32 } %i.ov, 0
  call void @__clang_call_terminate(ptr %i.ow) #43, !noalias !758
  unreachable

bb.dj:                                            ; preds = %_ZNSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultSt14default_deleteISD_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ox = invoke noundef zeroext i1 %i.os(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 3)
          to label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i unwind label %bb.dk, !noalias !758 ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  %i.oy = landingpad { ptr, i32 }
          catch ptr null
  %i.oz = extractvalue { ptr, i32 } %i.oy, 0
  call void @__clang_call_terminate(ptr %i.oz) #43, !noalias !758
  unreachable

bb.dl:                                            ; preds = %.noexc.i
  %i.pa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ka, ptr %26, align 8
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %bb.dl, %bb.dj, %_ZNSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultSt14default_deleteISD_EED2Ev.exit.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.pa, %bb.dl ], [ %.pn9.i.i.i.i.i.i.i.i, %bb.dj ], [ %.pn9.i.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultSt14default_deleteISD_EED2Ev.exit.i.i.i.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.lb, i64 noundef 264) #40, !noalias !758
  %.pre.i = load ptr, ptr %i.it, align 8, !tbaa !117, !noalias !751
  br label %.body.i

bb.dm:                                            ; preds = %bb.dh, %_ZN8facebook5velox11AsyncSourceIZNS0_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultEC2ESt8functionIFSt10unique_ptrISD_St14default_deleteISD_EEvEE.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !758
  %i.pb = load ptr, ptr %i.it, align 8, !tbaa !117, !noalias !751 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.pb, null
  br i1 %.not.i.i.i, label %bb.ds, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.pc = invoke noundef zeroext i1 %i.pb(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef 3)
          to label %bb.ds unwind label %bb.do, !noalias !751 ; 0 uses

bb.do:                                            ; preds = %bb.dn
  %i.pd = landingpad { ptr, i32 }
          catch ptr null
  %i.pe = extractvalue { ptr, i32 } %i.pd, 0
  call void @__clang_call_terminate(ptr %i.pe) #43, !noalias !751
  unreachable

bb.dp:                                            ; preds = %_ZNSt8functionIFSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultSt14default_deleteISE_EEvEEC2EOSJ_.exit.i
  %i.pf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ka, ptr %26, align 8
  br label %.body.i

.body.i:                                          ; preds = %bb.dp, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i
  %i.pg = phi ptr [ %.val.i.i, %bb.dp ], [ %.pre.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ] ; 2 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.pf, %bb.dp ], [ %eh.lpad-body.i.i.i.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ]
  %.not.i.i2.i = icmp eq ptr %i.pg, null
  br i1 %.not.i.i2.i, label %_ZZN8facebook5velox6memory28createAsyncMemoryReclaimTaskIZNS1_16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultEESt10shared_ptrINS0_11AsyncSourceIT_EEESt8functionIFSt10unique_ptrISG_St14default_deleteISG_EEvEEENUlvE_D2Ev.exit3.i, label %bb.dq

bb.dq:                                            ; preds = %.body.i
  %i.ph = invoke noundef zeroext i1 %i.pg(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef 3)
          to label %_ZZN8facebook5velox6memory28createAsyncMemoryReclaimTaskIZNS1_16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultEESt10shared_ptrINS0_11AsyncSourceIT_EEESt8functionIFSt10unique_ptrISG_St14default_deleteISG_EEvEEENUlvE_D2Ev.exit3.i unwind label %bb.dr, !noalias !751 ; 0 uses

bb.dr:                                            ; preds = %bb.dq
  %i.pi = landingpad { ptr, i32 }
          catch ptr null
  %i.pj = extractvalue { ptr, i32 } %i.pi, 0
  call void @__clang_call_terminate(ptr %i.pj) #43, !noalias !751
  unreachable

_ZZN8facebook5velox6memory28createAsyncMemoryReclaimTaskIZNS1_16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultEESt10shared_ptrINS0_11AsyncSourceIT_EEESt8functionIFSt10unique_ptrISG_St14default_deleteISG_EEvEEENUlvE_D2Ev.exit3.i: ; preds = %bb.dq, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28, !noalias !751
  br label %.body

bb.ds:                                            ; preds = %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28, !noalias !751
  %.not.i.i196 = icmp eq ptr %i.jz, %i.jy
  br i1 %.not.i.i196, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store ptr %i.le, ptr %i.jz, align 8, !tbaa !771
  %i.pk = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store ptr %i.lb, ptr %i.pk, align 8, !tbaa !139
  %i.pl = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  store ptr %i.pl, ptr %i.jm, align 8, !tbaa !774
  br label %_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIZNS1_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.du:                                            ; preds = %bb.ds
  %i.pm = ptrtoint ptr %i.jy to i64               ; 3 uses
  %i.pn = ptrtoint ptr %i.ka to i64               ; 3 uses
  %i.po = sub i64 %i.pm, %i.pn                    ; 4 uses
  %i.pp = icmp eq i64 %i.po, 9223372036854775792
  br i1 %i.pp, label %bb.dv, label %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE12_M_check_lenEmPKc.exit.i.i.i

bb.dv:                                            ; preds = %bb.du
  store ptr %i.ka, ptr %26, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.182) #41
          to label %.noexc199 unwind label %.loopexit.split-lp401

.noexc199:                                        ; preds = %bb.dv
  unreachable

_ZNKSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.du
  %i.pq = ashr exact i64 %i.po, 4                 ; 3 uses
  %i.pr = icmp eq ptr %i.jy, %i.ka                ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.pr, i64 1, i64 %i.pq
  %i.ps = add nsw i64 %.sroa.speculated.i.i.i.i, %i.pq ; 2 uses
  %i.pt = icmp ult i64 %i.ps, %i.pq
  %i.pu = call i64 @llvm.umin.i64(i64 %i.ps, i64 576460752303423487)
  %i.pv = select i1 %i.pt, i64 576460752303423487, i64 %i.pu ; 3 uses
  %.not.i.i.i.i197 = icmp ne i64 %i.pv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i197)
  %i.pw = shl nuw nsw i64 %i.pv, 4
  %i.px = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pw) #42
          to label %.noexc200 unwind label %.loopexit400 ; 13 uses

.noexc200:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.po ; 2 uses
  store ptr %i.le, ptr %i.py, align 8, !tbaa !771
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  store ptr %i.lb, ptr %i.pz, align 8, !tbaa !139
  br i1 %i.pr, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc200
  %i.qa = add i64 %i.pm, -16
  %i.qb = sub i64 %i.qa, %i.pn                    ; 2 uses
  %i.qc = lshr i64 %i.qb, 4
  %i.qd = add nuw nsw i64 %i.qc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.qb, 112
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader1751, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.px, i64 8
  %i.qe = add i64 %i.pm, -16
  %i.qf = sub i64 %i.qe, %i.pn
  %i.qg = and i64 %i.qf, -16                      ; 4 uses
  %scevgep1634 = getelementptr i8, ptr %scevgep, i64 %i.qg
  %scevgep1635 = getelementptr i8, ptr %i.ka, i64 8 ; 2 uses
  %scevgep1636 = getelementptr i8, ptr %scevgep1635, i64 %i.qg
  %scevgep1637 = getelementptr i8, ptr %i.ka, i64 16
  %scevgep1638 = getelementptr i8, ptr %scevgep1637, i64 %i.qg
  %scevgep1639 = getelementptr i8, ptr %i.px, i64 8
  %scevgep1640 = getelementptr i8, ptr %i.px, i64 16
  %scevgep1641 = getelementptr i8, ptr %scevgep1640, i64 %i.qg
  %bound0 = icmp ult ptr %i.px, %scevgep1636
  %bound1 = icmp ult ptr %i.ka, %scevgep1634
  %found.conflict = and i1 %bound0, %bound1
  %bound01642 = icmp ult ptr %scevgep1635, %scevgep1641
  %bound11643 = icmp ult ptr %scevgep1639, %scevgep1638
  %found.conflict1644 = and i1 %bound01642, %bound11643
  %conflict.rdx = or i1 %found.conflict, %found.conflict1644
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader1751, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qd, 2305843009213693944     ; 3 uses
  %i.qh = shl i64 %n.vec, 4                       ; 2 uses
  %i.qi = getelementptr i8, ptr %i.px, i64 %i.qh  ; 2 uses
  %i.qj = getelementptr i8, ptr %i.ka, i64 %i.qh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qk = shl i64 %index, 4                       ; 3 uses
  %33 = or disjoint i64 %i.qk, 64                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.px, i64 %i.qk
  %next.gep1645 = getelementptr i8, ptr %i.px, i64 %33
  %next.gep1646 = getelementptr i8, ptr %i.ka, i64 %i.qk ; 2 uses
  %next.gep1647 = getelementptr i8, ptr %i.ka, i64 %33 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %wide.vec = load <8 x ptr>, ptr %next.gep1646, align 8, !tbaa !118, !alias.scope !780, !noalias !777
  %wide.vec1649 = load <8 x ptr>, ptr %next.gep1647, align 8, !tbaa !118, !alias.scope !780, !noalias !777
  store <8 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !118, !alias.scope !777, !noalias !780
  store <8 x ptr> %wide.vec1649, ptr %next.gep1645, align 8, !tbaa !118, !alias.scope !777, !noalias !780
  store <8 x ptr> splat (ptr null), ptr %next.gep1646, align 8, !tbaa !118, !alias.scope !780, !noalias !777
  store <8 x ptr> splat (ptr null), ptr %next.gep1647, align 8, !tbaa !118, !alias.scope !780, !noalias !777
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ql = icmp eq i64 %index.next, %n.vec
  br i1 %i.ql, label %middle.block, label %vector.body, !llvm.loop !782

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader1751

.lr.ph.i.i.i.i.i.i.preheader1751:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.i.ph = phi ptr [ %i.px, %vector.memcheck ], [ %i.px, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.qi, %middle.block ]
  %.092.i.i.i.i.i.i.ph = phi ptr [ %i.ka, %vector.memcheck ], [ %i.ka, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.qj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader1751, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.qp, %.lr.ph.i.i.i.i.i.i ], [ %.03.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1751 ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.qo, %.lr.ph.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1751 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %i.qm = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8
  %i.qn = load <2 x ptr>, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !118, !alias.scope !780, !noalias !777
  store ptr null, ptr %i.qm, align 8, !tbaa !139, !alias.scope !780, !noalias !777
  store <2 x ptr> %i.qn, ptr %.03.i.i.i.i.i.i, align 8, !tbaa !118, !alias.scope !777, !noalias !780
  store ptr null, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !771, !alias.scope !780, !noalias !777
  %i.qo = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i198 = icmp eq ptr %i.qo, %i.jy
  br i1 %.not.i.i.i.i.i.i198, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !783

_ZNSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc200
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.px, %.noexc200 ], [ %i.qi, %middle.block ], [ %i.qp, %.lr.ph.i.i.i.i.i.i ]
  %i.qq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i27.i.i.i = icmp eq ptr %i.ka, null
  br i1 %.not.i27.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE17_M_realloc_insertIJSH_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_.exit.i.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit26.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef %i.po) #40
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE17_M_realloc_insertIJSH_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_.exit.i.i

_ZNSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE17_M_realloc_insertIJSH_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_.exit.i.i: ; preds = %bb.dw, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE11_S_relocateEPSH_SK_SK_RSI_.exit26.i.i.i
  store ptr %i.qq, ptr %i.jm, align 8, !tbaa !774
  %i.qr = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %i.pv ; 2 uses
  store ptr %i.qr, ptr %i.jn, align 8, !tbaa !784
  br label %_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIZNS1_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIZNS1_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.dt, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE17_M_realloc_insertIJSH_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_.exit.i.i
  %.val118 = phi ptr [ %i.pl, %bb.dt ], [ %i.qq, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE17_M_realloc_insertIJSH_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_.exit.i.i ] ; 6 uses
  %i.qs = phi ptr [ %i.jy, %bb.dt ], [ %i.qr, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE17_M_realloc_insertIJSH_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_.exit.i.i ]
  %i.qt = phi ptr [ %i.ka, %bb.dt ], [ %i.px, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE17_M_realloc_insertIJSH_EEEvN9__gnu_cxx17__normal_iteratorIPSH_SJ_EEDpOT_.exit.i.i ] ; 6 uses
  %i.qu = load ptr, ptr %i.iq, align 8, !tbaa !117 ; 2 uses
  %.not.i = icmp eq ptr %i.qu, null
  br i1 %.not.i, label %"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_0D2Ev.exit", label %bb.dx

bb.dx:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIZNS1_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.qv = invoke noundef zeroext i1 %i.qu(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 3)
          to label %"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_0D2Ev.exit" unwind label %bb.dy ; 0 uses

bb.dy:                                            ; preds = %bb.dx
  %i.qw = landingpad { ptr, i32 }
          catch ptr null
  %i.qx = extractvalue { ptr, i32 } %i.qw, 0
  call void @__clang_call_terminate(ptr %i.qx) #43
  unreachable

"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_0D2Ev.exit": ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIZNS1_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  %i.qy = ptrtoint ptr %.val118 to i64
  %i.qz = ptrtoint ptr %i.qt to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = icmp ugt i64 %i.ra, 16
  br i1 %i.rb, label %bb.dz, label %"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_1D2Ev.exit"

bb.dz:                                            ; preds = %"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_0D2Ev.exit"
  %i.rc = load ptr, ptr %i.jo, align 8, !tbaa !175 ; 2 uses
  %i.rd = getelementptr inbounds i8, ptr %.val118, i64 -16
  %i.re = getelementptr i8, ptr %.val118, i64 -8
  %.val124 = load ptr, ptr %i.re, align 8, !tbaa !139 ; 2 uses
  %i.rf = load <2 x ptr>, ptr %i.rd, align 8, !tbaa !118
  %.not.i.i.i205 = icmp eq ptr %.val124, null
  br i1 %.not.i.i.i205, label %_ZNSt10shared_ptrIN8facebook5velox11AsyncSourceIZNS1_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultEEEC2ERKSG_.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.rg = getelementptr inbounds nuw i8, ptr %.val124, i64 8 ; 3 uses
  %i.rh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i206 = icmp eq i8 %i.rh, 0
  br i1 %.not.i.i.i.i206, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ri = load i32, ptr %i.rg, align 4, !tbaa !3
  %i.rj = add nsw i32 %i.ri, 1
  store i32 %i.rj, ptr %i.rg, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox11AsyncSourceIZNS1_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultEEEC2ERKSG_.exit

bb.ec:                                            ; preds = %bb.ea
  %i.rk = atomicrmw volatile add ptr %i.rg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox11AsyncSourceIZNS1_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultEEEC2ERKSG_.exit

_ZNSt10shared_ptrIN8facebook5velox11AsyncSourceIZNS1_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultEEEC2ERKSG_.exit: ; preds = %bb.dz, %bb.eb, %bb.ec
  store <2 x ptr> %i.rf, ptr %29, align 16, !tbaa !118
  store ptr @"_ZN5folly6detail8function5call_IZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESE_RbE3$_1Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE", ptr %i.jp, align 16, !tbaa !785
  store ptr @"_ZN5folly6detail8function13DispatchSmall4execIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESF_RbE3$_1EEmNS1_2OpEPNS1_4DataESK_", ptr %i.jq, align 8, !tbaa !787
  %i.rl = load ptr, ptr %i.rc, align 64, !tbaa !38
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  %i.rn = load ptr, ptr %i.rm, align 8
  invoke void %i.rn(ptr noundef nonnull align 64 dereferenceable(2580) %i.rc, ptr noundef nonnull %29)
          to label %bb.ed unwind label %bb.ek

bb.ed:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox11AsyncSourceIZNS1_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultEEEC2ERKSG_.exit
  %i.ro = load ptr, ptr %i.jq, align 8, !tbaa !787 ; 2 uses
  %.not.i.i207 = icmp eq ptr %i.ro, null
  br i1 %.not.i.i207, label %"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_1D2Ev.exit", label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.rp = call noundef i64 %i.ro(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %29, ptr noundef null) #28, !inline_history !788 ; 0 uses
  br label %"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_1D2Ev.exit"

bb.ef:                                            ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateC2ERKS2_.exit
  %i.rq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ka, ptr %26, align 8
  br label %_ZNSt14_Function_baseD2Ev.exit211

bb.eg:                                            ; preds = %bb.cc
  %i.rr = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ka, ptr %26, align 8
  br label %.body

.loopexit400:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox11AsyncSourceIZNS2_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_RbE13ReclaimResultEEESaISH_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit402 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ka, ptr %26, align 8
  br label %bb.eh

.loopexit.split-lp401:                            ; preds = %bb.dv
  %lpad.loopexit.split-lp403 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eh:                                            ; preds = %.loopexit.split-lp401, %.loopexit400
  %lpad.phi404 = phi { ptr, i32 } [ %lpad.loopexit402, %.loopexit400 ], [ %lpad.loopexit.split-lp403, %.loopexit.split-lp401 ]
  call fastcc void @_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIZNS1_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.lb) #28
  br label %.body

.body:                                            ; preds = %bb.eg, %_ZZN8facebook5velox6memory28createAsyncMemoryReclaimTaskIZNS1_16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultEESt10shared_ptrINS0_11AsyncSourceIT_EEESt8functionIFSt10unique_ptrISG_St14default_deleteISG_EEvEEENUlvE_D2Ev.exit3.i, %bb.eh
  %.pn91 = phi { ptr, i32 } [ %lpad.phi404, %bb.eh ], [ %i.rr, %bb.eg ], [ %eh.lpad-body.i, %_ZZN8facebook5velox6memory28createAsyncMemoryReclaimTaskIZNS1_16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultEESt10shared_ptrINS0_11AsyncSourceIT_EEESt8functionIFSt10unique_ptrISG_St14default_deleteISG_EEvEEENUlvE_D2Ev.exit3.i ] ; 2 uses
  %i.rs = load ptr, ptr %i.iq, align 8, !tbaa !117 ; 2 uses
  %.not.i210 = icmp eq ptr %i.rs, null
  br i1 %.not.i210, label %_ZNSt14_Function_baseD2Ev.exit211, label %bb.ei

bb.ei:                                            ; preds = %.body
  %i.rt = invoke noundef zeroext i1 %i.rs(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit211 unwind label %bb.ej ; 0 uses

bb.ej:                                            ; preds = %bb.ei
  %i.ru = landingpad { ptr, i32 }
          catch ptr null
  %i.rv = extractvalue { ptr, i32 } %i.ru, 0
  call void @__clang_call_terminate(ptr %i.rv) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit211:                ; preds = %bb.ei, %.body, %bb.ef
  %.pn91.pn = phi { ptr, i32 } [ %i.rq, %bb.ef ], [ %.pn91, %.body ], [ %.pn91, %bb.ei ]
  call fastcc void @"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %.body221

bb.ek:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox11AsyncSourceIZNS1_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESC_RbE13ReclaimResultEEEC2ERKSG_.exit
  %i.rw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.qt, ptr %26, align 8
  %i.rx = load ptr, ptr %i.jq, align 8, !tbaa !787 ; 2 uses
  %.not.i.i212 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i212, label %_ZN5folly8FunctionIFvvEED2Ev.exit213, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ry = call noundef i64 %i.rx(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %29, ptr noundef null) #28, !inline_history !788 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit213

_ZN5folly8FunctionIFvvEED2Ev.exit213:             ; preds = %bb.ek, %bb.el
  call fastcc void @"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_1D2Ev"(ptr null) #28
  br label %.body221

"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_1D2Ev.exit": ; preds = %bb.ed, %bb.ee, %"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbEN3$_0D2Ev.exit"
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.0318.0778, i64 56 ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.ih
  br i1 %i.sa, label %._crit_edge781, label %bb.bv

._crit_edge787:                                   ; preds = %_ZNSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultSt14default_deleteISD_EED2Ev.exit, %._crit_edge781.thread, %._crit_edge781
  %i.sb = phi ptr [ %i.jr, %._crit_edge781 ], [ %i.ik, %._crit_edge781.thread ], [ %i.jr, %_ZNSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultSt14default_deleteISD_EED2Ev.exit ]
  %.074.lcssa = phi i64 [ 0, %._crit_edge781 ], [ 0, %._crit_edge781.thread ], [ %i.zr, %_ZNSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultSt14default_deleteISD_EED2Ev.exit ]
  %i.sc = load atomic i64, ptr %i.a seq_cst, align 8
  %.not = icmp ugt i64 %i.b, %i.sc
  br i1 %.not, label %bb.is, label %bb.ix, !prof !16

bb.em:                                            ; preds = %.lr.ph786, %_ZNSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultSt14default_deleteISD_EED2Ev.exit
  %.074784 = phi i64 [ 0, %.lr.ph786 ], [ %i.zr, %_ZNSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultSt14default_deleteISD_EED2Ev.exit ]
  %.sroa.0312.0783 = phi ptr [ %i.qt, %.lr.ph786 ], [ %i.zs, %_ZNSt10unique_ptrIZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultSt14default_deleteISD_EED2Ev.exit ] ; 2 uses
  %.val127 = load ptr, ptr %.sroa.0312.0783, align 8, !tbaa !771 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !789
end_hunk_1
