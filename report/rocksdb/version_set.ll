Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_113LevelIterator7PrepareEPKNS_13MultiScanArgsE:bb.a
  %i.ko = icmp eq i64 %i.jz, %i.kr
  br i1 %i.ko, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !113

.lr.ph.i.i.i.i:                                   ; preds = %bb.az, %bb.ba
  %.020.i.i.i.i = phi ptr [ %i.kp, %bb.ba ], [ %i.kk, %bb.az ]
  %i.kp = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !273 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.kp, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !533 ; 2 uses
  %i.ks = urem i64 %i.kr, %i.kf
  %.not19.i.i.i.i = icmp eq i64 %i.ks, %i.kg
  br i1 %.not19.i.i.i.i, label %bb.ba, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !113

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.bb
  br label %.loopexit.i.i, !llvm.loop !113

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.ay
  %i.kt = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44
          to label %.noexc unwind label %bb.bc    ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.kt, align 8, !tbaa !273
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store i64 %i.jz, ptr %i.ku, align 8, !tbaa !3154
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store ptr null, ptr %i.kv, align 8, !tbaa !1650
  %i.kw = invoke ptr @_ZNSt10_HashtableImSt4pairIKmPN7rocksdb20InternalIteratorBaseINS2_5SliceEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.jw, i64 noundef %i.kg, i64 noundef %i.jz, ptr noundef nonnull %i.kt, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableImSt4pairIKmPN7rocksdb20InternalIteratorBaseINS2_5SliceEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableImSt4pairIKmPN7rocksdb20InternalIteratorBaseINS2_5SliceEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 24) #42
  br label %.body

.loopexit:                                        ; preds = %bb.ba, %.noexc, %bb.az
  %.pn.i.i = phi ptr [ %i.kw, %.noexc ], [ %i.kk, %bb.az ], [ %i.kp, %bb.ba ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store ptr %i.ka, ptr %.1.i.i, align 8, !tbaa !1479
  br label %bb.bd

bb.bc:                                            ; preds = %.loopexit.i.i, %bb.ax, %bb.av
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmPN7rocksdb20InternalIteratorBaseINS2_5SliceEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.bc
  %eh.lpad-body = phi { ptr, i32 } [ %i.ky, %bb.bc ], [ %i.kx, %_ZNSt10_HashtableImSt4pairIKmPN7rocksdb20InternalIteratorBaseINS2_5SliceEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZN7rocksdb9StopWatchD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %common.resume

bb.bd:                                            ; preds = %.loopexit, %bb.aw
  %.sroa.028.0 = load ptr, ptr %.sroa.028.043, align 8, !tbaa !273 ; 2 uses
  %i.kz = icmp eq ptr %.sroa.028.0, null
  br i1 %i.kz, label %._crit_edge46, label %bb.av

bb.be:                                            ; preds = %._crit_edge46, %bb.at, %._crit_edge
  %i.la = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !1666 ; 4 uses
  %.not.i26 = icmp eq ptr %i.lb, null
  br i1 %.not.i26, label %.thread12.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lc = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ld = load i8, ptr %i.lc, align 8, !tbaa !1667, !range !560, !noundef !561
  %i.le = trunc nuw i8 %i.ld to i1
  %i.lf = load ptr, ptr %9, align 8, !tbaa !1662  ; 3 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !153
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 152
  %i.li = load ptr, ptr %i.lh, align 8            ; 2 uses
  br i1 %i.le, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.lj = invoke noundef i64 %i.li(ptr noundef nonnull align 8 dereferenceable(32) %i.lf)
          to label %bb.bh unwind label %bb.bs

bb.bh:                                            ; preds = %bb.bg
  %i.lk = load i64, ptr %i.hu, align 8, !tbaa !1670
  %i.ll = sub i64 %i.lj, %i.lk
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bf
  %i.lm = invoke noundef i64 %i.li(ptr noundef nonnull align 8 dereferenceable(32) %i.lf)
          to label %bb.bj unwind label %bb.bs

bb.bj:                                            ; preds = %bb.bi
  %i.ln = load i64, ptr %i.hu, align 8, !tbaa !1670
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = load i64, ptr %i.lb, align 8, !tbaa !533
  %i.lq = add i64 %i.lp, %i.lo
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %i.lr = phi i64 [ %i.lq, %bb.bj ], [ %i.ll, %bb.bh ] ; 3 uses
  store i64 %i.lr, ptr %i.lb, align 8, !tbaa !533
  %i.ls = getelementptr inbounds nuw i8, ptr %9, i64 34
  %i.lt = load i8, ptr %i.ls, align 2, !tbaa !1669, !range !560, !noundef !561
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.lv = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !1684
  %i.lx = sub i64 %i.lr, %i.lw                    ; 2 uses
  store i64 %i.lx, ptr %i.lb, align 8, !tbaa !533
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ly = phi i64 [ %i.lx, %bb.bl ], [ %i.lr, %bb.bk ]
  %i.lz = getelementptr inbounds nuw i8, ptr %9, i64 33
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !1668, !range !560, !noundef !561
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %bb.bo, label %_ZN7rocksdb9StopWatchD2Ev.exit

.thread12.i:                                      ; preds = %bb.be
  %i.mc = getelementptr inbounds nuw i8, ptr %9, i64 33
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !1668, !range !560, !noundef !561
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %.thread15.i, label %_ZN7rocksdb9StopWatchD2Ev.exit

.thread15.i:                                      ; preds = %.thread12.i
  %i.mf = load ptr, ptr %9, align 8, !tbaa !1662  ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !153
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 152
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = invoke noundef i64 %i.mi(ptr noundef nonnull align 8 dereferenceable(32) %i.mf)
          to label %bb.bn unwind label %bb.bs

bb.bn:                                            ; preds = %.thread15.i
  %i.mk = load i64, ptr %i.hu, align 8, !tbaa !1670
  %i.ml = sub i64 %i.mj, %i.mk
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.mm = phi i64 [ %i.ml, %bb.bn ], [ %i.ly, %bb.bm ] ; 2 uses
  %i.mn = load i32, ptr %i.gq, align 8, !tbaa !1664 ; 2 uses
  %.not7.i = icmp eq i32 %i.mn, 80
  br i1 %.not7.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mo = load ptr, ptr %i.gp, align 8, !tbaa !1663 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !153
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 200
  %i.mr = load ptr, ptr %i.mq, align 8
  invoke void %i.mr(ptr noundef nonnull align 8 dereferenceable(33) %i.mo, i32 noundef %i.mn, i64 noundef %i.mm)
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ms = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !1665 ; 2 uses
  %.not8.i = icmp eq i32 %i.mt, 80
  br i1 %.not8.i, label %_ZN7rocksdb9StopWatchD2Ev.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mu = load ptr, ptr %i.gp, align 8, !tbaa !1663 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !153
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 200
  %i.mx = load ptr, ptr %i.mw, align 8
  invoke void %i.mx(ptr noundef nonnull align 8 dereferenceable(33) %i.mu, i32 noundef %i.mt, i64 noundef %i.mm)
          to label %_ZN7rocksdb9StopWatchD2Ev.exit unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp, %.thread15.i, %bb.bi, %bb.bg
  %i.my = landingpad { ptr, i32 }
          catch ptr null
  %i.mz = extractvalue { ptr, i32 } %i.my, 0
  call void @__clang_call_terminate(ptr %i.mz) #45
  unreachable

_ZN7rocksdb9StopWatchD2Ev.exit:                   ; preds = %bb.bm, %.thread12.i, %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.bt

bb.bt:                                            ; preds = %bb.a, %_ZN7rocksdb9StopWatchD2Ev.exit
  ret void
}

declare void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb13MultiScanArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1685 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1686 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !1688, !range !560, !noundef !561
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.e, align 8, !tbaa !1688
  br i1 %i.g, label %bb.b, label %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.h) #41
  br label %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !114

_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !1685
  br label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1689
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #42
  br label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !265  ; 8 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 8, !tbaa !267
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !268
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !3155
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !153
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41, !inline_history !3155
  br label %_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !157
  %.not.i.i.i1 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !270

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #41
  br label %_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !569  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !273 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !156  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !157
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !156  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !157
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #42
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 80) #42
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !11

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !570
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !571
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !570    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.w = load i64, ptr %i.q, align 8, !tbaa !571
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #42
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7rocksdb12_GLOBAL__N_113LevelIterator16InitFileIteratorEm(ptr noundef nonnull align 8 dereferenceable(392) %0, i64 noundef %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !780
  %i.c = load i64, ptr %i.b, align 8, !tbaa !528
  %.not = icmp ult i64 %1, %i.c
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %1, ptr %i.d, align 8, !tbaa !786
  tail call fastcc void @_ZN7rocksdb12_GLOBAL__N_113LevelIterator15SetFileIteratorEPNS_20InternalIteratorBaseINS_5SliceEEE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef null)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val17 = load ptr, ptr %i.e, align 8, !tbaa !794 ; 3 uses
  %.not.i = icmp eq ptr %.val17, null
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator23ClearRangeTombstoneIterEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.val17, align 8, !tbaa !750 ; 4 uses
  store ptr null, ptr %.val17, align 8, !tbaa !750
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator23ClearRangeTombstoneIterEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !640  ; 2 uses
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.i = load ptr, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !640 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i.i, i64 noundef 48) #42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !21

_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !626  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !153
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(200) %i.j) #41, !inline_history !112
  br label %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i.i.i, %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 72) #42
  br label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator23ClearRangeTombstoneIterEv.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !788  ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN7rocksdb12_GLOBAL__N_113LevelIterator15NewFileIteratorEv:bb.a
  %.not.i4.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  br i1 %.not.i4.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i.i

_ZTWN7rocksdb12perf_contextE.exit.i.i:            ; preds = %bb.h, %bb.g
  %i.ap = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !148
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !148
  br label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.i

_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.i: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i, %_ZTWN7rocksdb10perf_levelE.exit.i.i
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !151 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !153
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 232
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef i32 %i.av(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i1 noundef zeroext false), !inline_history !106
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 286
  %.lobit.i = lshr i32 %i.aw, 31
  %i.ay = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.ay, ptr %i.ax, align 2, !tbaa !1657
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator25CheckMayBeOutOfLowerBoundEv.exit

_ZN7rocksdb12_GLOBAL__N_113LevelIterator25CheckMayBeOutOfLowerBoundEv.exit: ; preds = %bb.c, %bb.d, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %.val = load ptr, ptr %i.az, align 8, !tbaa !794 ; 4 uses
  %.not.i5 = icmp eq ptr %.val, null
  br i1 %.not.i5, label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator23ClearRangeTombstoneIterEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_113LevelIterator25CheckMayBeOutOfLowerBoundEv.exit
  %i.ba = load ptr, ptr %.val, align 8, !tbaa !750 ; 4 uses
  store ptr null, ptr %.val, align 8, !tbaa !750
  %.not.i.i.i6 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i6, label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator23ClearRangeTombstoneIterEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !640 ; 2 uses
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.bb
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bc, %bb.j ] ; 2 uses
  %i.bd = load ptr, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !640 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i.i, i64 noundef 48) #42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.bb
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !21

_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !626 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i.i.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !153
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(200) %i.be) #41, !inline_history !112
  br label %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i.i.i, %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 72) #42
  %.pre = load ptr, ptr %i.az, align 8, !tbaa !794
  br label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator23ClearRangeTombstoneIterEv.exit

_ZN7rocksdb12_GLOBAL__N_113LevelIterator23ClearRangeTombstoneIterEv.exit: ; preds = %_ZN7rocksdb12_GLOBAL__N_113LevelIterator25CheckMayBeOutOfLowerBoundEv.exit, %bb.i, %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i.i.i
  %i.bi = phi ptr [ null, %_ZN7rocksdb12_GLOBAL__N_113LevelIterator25CheckMayBeOutOfLowerBoundEv.exit ], [ %.val, %bb.i ], [ %.pre, %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !778
  %i.bl = load ptr, ptr %i.v, align 8, !tbaa !1655, !nonnull !561, !align !1326
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !3178, !nonnull !561, !align !1326
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1658, !nonnull !561, !align !1326
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !535
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !787
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !3179, !nonnull !561, !align !1326
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !784
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !785
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !798, !range !560, !noundef !561
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !797
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 285
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !799, !range !560, !noundef !561
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !3180, !range !560, !noundef !561
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = xor i1 %i.ck, true
  %i.cm = call noundef ptr @_ZN7rocksdb10TableCache11NewIteratorERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorERKNS_12FileMetaDataEPNS_18RangeDelAggregatorERKNS_16MutableCFOptionsEPPNS_11TableReaderEPNS_13HistogramImplENS_17TableReaderCallerEPNS_5ArenaEbimPKNS_11InternalKeyESS_bPKmPSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteISW_EEbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_21TableCacheOpenOptionsE(ptr noundef nonnull align 8 dereferenceable(152) %i.bk, ptr noundef nonnull align 8 dereferenceable(192) %i.bl, ptr noundef nonnull align 8 dereferenceable(216) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(417) %i.bq, ptr noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(736) %i.bu, ptr noundef null, ptr noundef %i.bw, i8 noundef signext %i.by, ptr noundef null, i1 noundef zeroext %i.cb, i32 noundef %i.cd, i64 noundef 0, ptr noundef %.03, ptr noundef %.0, i1 noundef zeroext %i.cg, ptr noundef nonnull %i.ch, ptr noundef %i.bi, i1 noundef zeroext %i.cl, ptr noundef null, ptr noundef nonnull align 1 dereferenceable(3) %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret ptr %i.cm
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(72) ptr @_ZN7rocksdb12_GLOBAL__N_113LevelIterator22GetMultiScanArgForFileEm(ptr %.72.val, ptr %.328.val, i64 noundef %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %1 = alloca %"class.rocksdb::MultiScanArgs", align 8 ; 15 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !533
  %i.b = getelementptr inbounds nuw i8, ptr %.328.val, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1691
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.328.val, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !273 ; 4 uses
  %i.e = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.e, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !533
  %i.h = icmp eq i64 %0, %i.g
  br i1 %i.h, label %_ZNSt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %bb.c, !llvm.loop !115

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.328.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1648 ; 2 uses
  %i.k = urem i64 %0, %i.j                        ; 2 uses
  %i.l = load ptr, ptr %.328.val, align 8, !tbaa !1647
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !633  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !273  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !533
  %i.r = icmp eq i64 %0, %i.q
  br i1 %i.r, label %_ZNSt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.s = icmp eq i64 %0, %i.v
  br i1 %i.s, label %_ZNSt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !116

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.t, %bb.g ], [ %i.o, %bb.f ]
  %i.t = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !273 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !533  ; 2 uses
  %i.w = urem i64 %i.v, %i.j
  %.not19.i.i.i.i = icmp eq i64 %i.w, %i.k
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !116

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !116

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store i64 16384, ptr %1, align 8, !tbaa !3182
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !3183
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.y, align 8, !tbaa !1679
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.z, align 1, !tbaa !1680
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %.72.val, ptr %i.ab, align 8, !tbaa !3184
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ad = invoke { ptr, i8 } @_ZNSt10_HashtableImSt4pairIKmN7rocksdb13MultiScanArgsEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRmS3_EEES0_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %.328.val, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %_ZNSt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE7emplaceIJRmS1_EEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.q

_ZNSt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE7emplaceIJRmS1_EEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb0EEEbEDpOT_.exit: ; preds = %.loopexit
  %.fca.0.extract = extractvalue { ptr, i8 } %i.ad, 0
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !1685 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1686 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i3

.lr.ph.i.i.i.i3:                                  ; preds = %_ZNSt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE7emplaceIJRmS1_EEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb0EEEbEDpOT_.exit, %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.al, %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i.i ], [ %i.ae, %_ZNSt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE7emplaceIJRmS1_EEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb0EEEbEDpOT_.exit ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !1688, !range !560, !noundef !561
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !1688
  br i1 %i.aj, label %bb.i, label %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i3
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.ak) #41
  br label %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i3
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.al, %i.ag
  br i1 %.not.i.i.i.i4, label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i3, !llvm.loop !114

_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ac, align 8, !tbaa !1685
  br label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE7emplaceIJRmS1_EEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb0EEEbEDpOT_.exit
  %i.am = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ae, %_ZNSt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE7emplaceIJRmS1_EEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb0EEEbEDpOT_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1689
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #42
  br label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit.i: ; preds = %bb.j, %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !265 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb13MultiScanArgsD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.au, align 8, !tbaa !267
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !268
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !153
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #41, !inline_history !3181
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !153
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #41, !inline_history !3181
  br label %_ZN7rocksdb13MultiScanArgsD2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !157
  %.not.i.i.i1.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i1.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.ax, %bb.n ], [ %i.bh, %bb.o ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.p, label %_ZN7rocksdb13MultiScanArgsD2Ev.exit, !prof !270

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #41
  br label %_ZN7rocksdb13MultiScanArgsD2Ev.exit

_ZN7rocksdb13MultiScanArgsD2Ev.exit:              ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit.i, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %_ZNSt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit

bb.q:                                             ; preds = %.loopexit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb13MultiScanArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  resume { ptr, i32 } %i.bj

_ZNSt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit: ; preds = %bb.g, %bb.d, %bb.f, %_ZN7rocksdb13MultiScanArgsD2Ev.exit
  %.sroa.01.0 = phi ptr [ %.fca.0.extract, %_ZN7rocksdb13MultiScanArgsD2Ev.exit ], [ %.sroa.06.0.i.i, %bb.d ], [ %i.o, %bb.f ], [ %i.t, %bb.g ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  ret ptr %i.bk
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb22PinnedIteratorsManager23ReleaseInternalIteratorEPv(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !153
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(40) %0) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableImSt4pairIKmN7rocksdb13MultiScanArgsEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRmS3_EEES0_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, rocksdb::MultiScanArgs>, std::allocator<std::pair<const unsigned long, rocksdb::MultiScanArgs>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store ptr %0, ptr %3, align 8, !tbaa !3186
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #44 ; 10 uses
  store ptr null, ptr %i.b, align 8, !tbaa !273
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %1, align 8, !tbaa !533    ; 7 uses
  store i64 %i.d, ptr %i.c, align 8, !tbaa !1683
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load <2 x i64>, ptr %2, align 8, !tbaa !533
  store <2 x i64> %i.f, ptr %i.e, align 8, !tbaa !533
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !1679, !range !560, !noundef !561
  store i8 %i.i, ptr %i.g, align 8, !tbaa !1679
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.l = load i8, ptr %i.k, align 1, !tbaa !1680, !range !560, !noundef !561
  store i8 %i.l, ptr %i.j, align 1, !tbaa !1680
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load <4 x ptr>, ptr %i.n, align 8, !tbaa !511
  store ptr null, ptr %i.o, align 8, !tbaa !265
  store ptr null, ptr %i.n, align 8, !tbaa !1681
  store <4 x ptr> %i.q, ptr %i.m, align 8, !tbaa !511
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !811
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !811
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !1699
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1691
  %.not.not = icmp eq i64 %i.v, 0
  br i1 %.not.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1648 ; 2 uses
  %i.y = urem i64 %i.d, %i.x                      ; 5 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !1647
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !633 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %.critedge28, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.033.0.in = phi ptr [ %i.ac, %bb.b ], [ %.sroa.033.0, %bb.d ]
  %.sroa.033.0 = load ptr, ptr %.sroa.033.0.in, align 8, !tbaa !273 ; 4 uses
  %i.ad = icmp eq ptr %.sroa.033.0, null
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !533
  %i.ag = icmp eq i64 %i.d, %i.af
  br i1 %i.ag, label %_ZNKSt10_HashtableImSt4pairIKmN7rocksdb13MultiScanArgsEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %bb.c, !llvm.loop !3185

bb.e:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1648
  %i.aj = urem i64 %i.d, %i.ai
  br label %.critedge28

bb.f:                                             ; preds = %.thread
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !273 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !533
  %i.an = icmp eq i64 %i.d, %i.am
  br i1 %i.an, label %_ZNKSt10_HashtableImSt4pairIKmN7rocksdb13MultiScanArgsEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.ao = icmp eq i64 %i.d, %i.ar
  br i1 %i.ao, label %_ZNKSt10_HashtableImSt4pairIKmN7rocksdb13MultiScanArgsEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i, !llvm.loop !116

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.ap, %bb.g ], [ %i.ak, %bb.f ]
  %i.ap = load ptr, ptr %.020.i.i, align 8, !tbaa !273 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.ap, null
  br i1 %.not18.i.i, label %.critedge28, label %bb.h
end_hunk_1
begin_hunk_2_@_ZN7rocksdb12_GLOBAL__N_120MultiScanInternalKeyERKNS_5SliceEPKNS_10ComparatorE:bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !518
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !519
  store i8 0, ptr %i.c, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !539
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 72057594037927935, ptr %i.e, align 8, !tbaa !541
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.b, ptr %i.f, align 8, !tbaa !542
  invoke void @_ZN7rocksdb17AppendInternalKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_17ParsedInternalKeyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(25) %3)
          to label %_ZN7rocksdb11InternalKeyC2ERKNS_5SliceEmNS_9ValueTypeE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.h = load ptr, ptr %0, align 8, !tbaa !156    ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.c, align 8, !tbaa !157
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #42
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZN7rocksdb11InternalKeyC2ERKNS_5SliceEmNS_9ValueTypeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !518
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !519
  store i8 0, ptr %i.l, align 8, !tbaa !157
  invoke void @_ZN7rocksdb25AppendKeyWithMaxTimestampEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceEm(ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.40.val)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %4, align 8, !tbaa !156
  %i.o = load i64, ptr %i.m, align 8, !tbaa !519
  %i.p = load i8, ptr @_ZN7rocksdb17kValueTypeForSeekE, align 1, !tbaa !538
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !518
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !519
  store i8 0, ptr %i.q, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store ptr %i.n, ptr %2, align 8, !tbaa !536
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !533
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 72057594037927935, ptr %i.s, align 8, !tbaa !541
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 %i.p, ptr %i.t, align 8, !tbaa !542
  invoke void @_ZN7rocksdb17AppendInternalKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_17ParsedInternalKeyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(25) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.v = load ptr, ptr %0, align 8, !tbaa !156    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.q
  br i1 %i.w, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.f
  %i.x = load i64, ptr %i.q, align 8, !tbaa !157
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #42
  br label %.body

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.z = load ptr, ptr %4, align 8, !tbaa !156    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.l
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !157
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9 ], [ %i.u, %bb.f ]
  %i.ae = load ptr, ptr %4, align 8, !tbaa !156   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.l
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %.body
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !157
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %common.resume

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN7rocksdb11InternalKeyC2ERKNS_5SliceEmNS_9ValueTypeE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb13MultiScanArgs6insertERKNS_5SliceES3_RKSt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_St4hashISB_ESt8equal_toISB_ESaISt4pairIKSB_SB_EEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %.sroa.0.i.i.i = alloca %"class.rocksdb::Slice", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1686 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1689
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !539
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !539
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i8 0, ptr %i.f, align 8, !tbaa !1688
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1686
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !1686
  br label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12emplace_backIJRKNS0_5SliceES7_EEERS1_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE17_M_realloc_insertIJRKNS0_5SliceES7_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !811
  br label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12emplace_backIJRKNS0_5SliceES7_EEERS1_DpOT_.exit

_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12emplace_backIJRKNS0_5SliceES7_EEERS1_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.h, %bb.b ], [ %.pre, %bb.c ] ; 7 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -64 ; 6 uses
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !1688, !range !560, !noundef !561
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load i8, ptr %i.o, align 8, !range !560
  %i.q = trunc nuw i8 %i.p to i1                  ; 2 uses
  %or.cond.i.i.i.i.i = select i1 %i.n, i1 %i.q, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12emplace_backIJRKNS0_5SliceES7_EEERS1_DpOT_.exit
  %i.r = icmp eq ptr %3, %i.k
  br i1 %i.r, label %_ZNSt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEEaSERKSG_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSL_EEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZNSt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEEaSERKSG_.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12emplace_backIJRKNS0_5SliceES7_EEERS1_DpOT_.exit
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.k, align 8, !tbaa !570
  %i.s = getelementptr inbounds i8, ptr %i.j, i64 -56
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !571
  store i64 %i.u, ptr %i.s, align 8, !tbaa !571
  %i.v = getelementptr inbounds i8, ptr %i.j, i64 -48
  store ptr null, ptr %i.v, align 8, !tbaa !273
  %i.w = getelementptr inbounds i8, ptr %i.j, i64 -40
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !574
  store i64 %i.y, ptr %i.w, align 8, !tbaa !574
  %i.z = getelementptr inbounds i8, ptr %i.j, i64 -32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !576
  %i.ab = getelementptr inbounds i8, ptr %i.j, i64 -16
  store ptr null, ptr %i.ab, align 8, !tbaa !577
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store ptr %i.k, ptr %4, align 8, !tbaa !579
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSL_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  store i8 1, ptr %i.l, align 8, !tbaa !1688
  br label %_ZNSt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEEaSERKSG_.exit

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %i.l, align 8, !tbaa !1688
  br i1 %i.n, label %bb.i, label %_ZNSt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEEaSERKSG_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.k) #41
  br label %_ZNSt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEEaSERKSG_.exit

_ZNSt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEEaSERKSG_.exit: ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE17_M_realloc_insertIJRKNS0_5SliceES7_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1686 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1685   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #43
  unreachable

_ZNKSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 96076792050570581)
  %i.l = select i1 %i.j, i64 96076792050570581, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 96
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #44 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store i8 0, ptr %i.s, align 8, !tbaa !1688
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12_M_check_lenEmPKc.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3205)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i, i64 32, i1 false), !tbaa.struct !3206, !alias.scope !3207
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !1688, !alias.scope !3204
  %i.x = load i8, ptr %i.v, align 8, !tbaa !1688, !range !560, !alias.scope !3205, !noundef !561
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !570, !alias.scope !3205 ; 3 uses
  store ptr %i.z, ptr %i.t, align 8, !tbaa !570, !alias.scope !3204
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !571, !alias.scope !3205 ; 2 uses
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !571, !alias.scope !3204
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !569, !alias.scope !3205 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !273, !alias.scope !3204
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !574, !alias.scope !3205
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !574, !alias.scope !3204
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !576, !alias.scope !3207
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 4 uses
  store ptr null, ptr %i.al, align 8, !tbaa !577, !alias.scope !3204
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 4 uses
  %i.an = icmp eq ptr %i.z, %i.am
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.al, ptr %i.t, align 8, !tbaa !570, !alias.scope !3204
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !577, !alias.scope !3205
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !577, !alias.scope !3204
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ap = phi ptr [ %i.al, %bb.d ], [ %i.z, %bb.c ]
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !635, !noalias !3205
  %i.as = urem i64 %i.ar, %i.ac
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.as
  store ptr %i.ad, ptr %i.at, align 8, !tbaa !633, !noalias !3205
  br label %bb.g

_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store i8 0, ptr %i.v, align 8, !tbaa !1688, !alias.scope !3205
  br label %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  store i64 0, ptr %i.au, align 8, !tbaa !1077, !alias.scope !3205
  store i64 1, ptr %i.ab, align 8, !tbaa !571, !alias.scope !3205
  store ptr null, ptr %i.am, align 8, !tbaa !577, !alias.scope !3205
  store ptr %i.am, ptr %i.u, align 8, !tbaa !570, !alias.scope !3205
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !alias.scope !3205
  store i8 1, ptr %i.w, align 8, !tbaa !1688, !alias.scope !3204
  store i8 0, ptr %i.v, align 8, !tbaa !1688, !alias.scope !3205
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.u) #41
  br label %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.g, %_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !3200

_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 96 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32
  %.012.i.i.i29 = phi ptr [ %i.cb, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %i.ax, %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 9 uses
  %.0911.i.i.i30 = phi ptr [ %i.ca, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %1, %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3209)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i29, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i30, i64 32, i1 false), !tbaa.struct !3206, !alias.scope !3210
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 32 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 88 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 88 ; 2 uses
  store i8 0, ptr %i.bb, align 8, !tbaa !1688, !alias.scope !3208
  %i.bc = load i8, ptr %i.ba, align 8, !tbaa !1688, !range !560, !alias.scope !3209, !noundef !561
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.h, label %_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31

bb.h:                                             ; preds = %.lr.ph.i.i.i28
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !570, !alias.scope !3209 ; 3 uses
  store ptr %i.be, ptr %i.ay, align 8, !tbaa !570, !alias.scope !3208
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !571, !alias.scope !3209 ; 2 uses
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !571, !alias.scope !3208
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !569, !alias.scope !3209 ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !273, !alias.scope !3208
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 56
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !574, !alias.scope !3209
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !574, !alias.scope !3208
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !576, !alias.scope !3210
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 80 ; 4 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !577, !alias.scope !3208
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 80 ; 4 uses
  %i.bs = icmp eq ptr %i.be, %i.br
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.bq, ptr %i.ay, align 8, !tbaa !570, !alias.scope !3208
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !577, !alias.scope !3209
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !577, !alias.scope !3208
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bu = phi ptr [ %i.bq, %bb.i ], [ %i.be, %bb.h ]
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i35 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !635, !noalias !3209
  %i.bx = urem i64 %i.bw, %i.bh
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bx
  store ptr %i.bi, ptr %i.by, align 8, !tbaa !633, !noalias !3209
  br label %bb.l

_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31: ; preds = %.lr.ph.i.i.i28
  store i8 0, ptr %i.ba, align 8, !tbaa !1688, !alias.scope !3209
  br label %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 72
  store i64 0, ptr %i.bz, align 8, !tbaa !1077, !alias.scope !3209
  store i64 1, ptr %i.bg, align 8, !tbaa !571, !alias.scope !3209
  store ptr null, ptr %i.br, align 8, !tbaa !577, !alias.scope !3209
  store ptr %i.br, ptr %i.az, align 8, !tbaa !570, !alias.scope !3209
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false), !alias.scope !3209
  store i8 1, ptr %i.bb, align 8, !tbaa !1688, !alias.scope !3208
  store i8 0, ptr %i.ba, align 8, !tbaa !1688, !alias.scope !3209
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.az) #41
  br label %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32

_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32: ; preds = %bb.l, %_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 96 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 96 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ca, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, label %.lr.ph.i.i.i28, !llvm.loop !3200

_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36: ; preds = %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32, %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ax, %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.cb, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1689
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cf) #42
  br label %_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, %bb.m
  store ptr %i.p, ptr %0, align 8, !tbaa !1685
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !1686
  %i.cg = getelementptr inbounds nuw [96 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cg, ptr %i.cc, align 8, !tbaa !1689
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSL_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_ReuseOrAllocNode", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !571  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1077
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !571  ; 5 uses
  %.not = icmp eq i64 %i.b, %i.g
  %i.h = load ptr, ptr %0, align 8, !tbaa !570    ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 1
  br i1 %i.i, label %bb.c, label %bb.d, !prof !270

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !577
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.k, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !270

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #43
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #44 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.m, i1 false)
  %.pre = load i64, ptr %i.f, align 8, !tbaa !571
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %i.o = phi i64 [ 1, %bb.c ], [ %.pre, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  %.0.i = phi ptr [ %i.j, %bb.c ], [ %i.n, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !570
  store i64 %i.o, ptr %i.a, align 8, !tbaa !571
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.p = shl i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.p, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %.0 = phi ptr [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ], [ null, %bb.h ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !574
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %i.s, align 8, !tbaa !574
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !576
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !569
  store ptr %i.v, ptr %2, align 8, !tbaa !1702
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.w, align 8, !tbaa !579
  store ptr null, ptr %i.u, align 8, !tbaa !569
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSL_NSA_17_ReuseOrAllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %.not18 = icmp eq ptr %.0, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = icmp eq ptr %.0, %i.x
  %or.cond = select i1 %.not18, i1 true, i1 %i.y
  br i1 %or.cond, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSA_15_Hash_node_baseEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = shl i64 %i.b, 3
  call void @_ZdlPvm(ptr noundef nonnull %.0, i64 noundef %i.z) #42
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSA_15_Hash_node_baseEm.exit

bb.l:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.ac = call ptr @__cxa_begin_catch(ptr %i.ab) #41 ; 0 uses
  %.not19 = icmp eq ptr %.0, null
  %.pre21 = load ptr, ptr %0, align 8, !tbaa !570 ; 3 uses
  br i1 %.not19, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.l
  %.pre22 = load i64, ptr %i.a, align 8, !tbaa !571
  br label %bb.p

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSA_15_Hash_node_baseEm.exit: ; preds = %bb.k, %bb.j
  %i.ad = load ptr, ptr %2, align 8, !tbaa !1702  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ad, null
  br i1 %.not5.i.i, label %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSA_15_Hash_node_baseEm.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.ae, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.ad, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSA_15_Hash_node_baseEm.exit ] ; 6 uses
  %i.ae = load ptr, ptr %.06.i.i, align 8, !tbaa !273 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !156 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !157
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !156 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !157
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #42
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 80) #42
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !11

_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEED2Ev.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSA_15_Hash_node_baseEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = icmp eq ptr %.pre21, %i.ar
  br i1 %i.as, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load i64, ptr %i.a, align 8, !tbaa !571
  %i.au = shl i64 %i.at, 3
  call void @_ZdlPvm(ptr noundef %.pre21, i64 noundef %i.au) #42
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.n, %bb.m
  store i64 %i.e, ptr %i.d, align 8, !tbaa !1077
  store ptr %.0, ptr %0, align 8, !tbaa !570
  store i64 %i.b, ptr %i.a, align 8, !tbaa !571
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.p:                                             ; preds = %._crit_edge, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.aw = phi i64 [ %i.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit ], [ %.pre22, %._crit_edge ]
  %i.ax = phi ptr [ %.0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit ], [ %.pre21, %._crit_edge ]
  %i.ay = shl i64 %i.aw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %i.ay, i1 false)
end_hunk_2
