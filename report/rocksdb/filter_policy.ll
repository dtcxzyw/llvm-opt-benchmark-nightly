Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/filter_policy?download=true
inline.NumInlined: 3027
inline.NumDeleted: 1523
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS4_EEPNS_6StatusE:bb.a
_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i92: ; preds = %_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EED2Ev.exit90
  call void @_ZdaPv(ptr noundef nonnull %i.wd) #39
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit93

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit93: ; preds = %_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EED2Ev.exit90, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.bi

bb.bh:                                            ; preds = %bb.an, %bb.am, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %.sroa.0123.0 = phi ptr [ %i.me, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ @.str.27, %bb.am ], [ @.str.27, %bb.an ]
  %.sroa.8124.0 = phi i64 [ %i.lv, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ 6, %bb.am ], [ 6, %bb.an ]
  %i.we = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !245 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.wf, null
  br i1 %.not.i.i94, label %_ZN7rocksdb6StatusD2Ev.exit96, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i95

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i95: ; preds = %bb.bh
  call void @_ZdaPv(ptr noundef nonnull %i.wf) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit96

_ZN7rocksdb6StatusD2Ev.exit96:                    ; preds = %bb.bh, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bj

bb.bi:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit93, %bb.ap
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ln, %bb.ap ], [ %.pn45.pn.pn, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit93 ] ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !245 ; 2 uses
  %.not.i.i97 = icmp eq ptr %i.wh, null
  br i1 %.not.i.i97, label %_ZN7rocksdb6StatusD2Ev.exit99, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i98

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i98: ; preds = %bb.bi
  call void @_ZdaPv(ptr noundef nonnull %i.wh) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit99

_ZN7rocksdb6StatusD2Ev.exit99:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i98, %bb.bi, %bb.ao
  %.pn45.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lm, %bb.ao ], [ %.pn45.pn.pn.pn.pn, %bb.bi ], [ %.pn45.pn.pn.pn.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %.loopexit140

bb.bj:                                            ; preds = %bb.aj, %_ZN7rocksdb6StatusD2Ev.exit96, %bb.o
  %.sroa.12120.0129 = phi ptr [ %i.bn, %bb.o ], [ %.sroa.12120.0130, %_ZN7rocksdb6StatusD2Ev.exit96 ], [ %.sroa.12120.0130, %bb.aj ] ; 2 uses
  %.sroa.0123.1 = phi ptr [ %i.ca, %bb.o ], [ %.sroa.0123.0, %_ZN7rocksdb6StatusD2Ev.exit96 ], [ %i.la, %bb.aj ]
  %.sroa.8124.1 = phi i64 [ %i.cb, %bb.o ], [ %.sroa.8124.0, %_ZN7rocksdb6StatusD2Ev.exit96 ], [ %i.lb, %bb.aj ]
  %i.wi = load ptr, ptr %4, align 8, !tbaa !282   ; 3 uses
  %.not.i100 = icmp eq ptr %i.wi, null
  br i1 %.not.i100, label %_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EED2Ev.exit102, label %_ZNKSt14default_deleteIN7rocksdb23CacheReservationManager22CacheReservationHandleEEclEPS2_.exit.i101

_ZNKSt14default_deleteIN7rocksdb23CacheReservationManager22CacheReservationHandleEEclEPS2_.exit.i101: ; preds = %bb.bj
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !42
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8
  call void %i.wl(ptr noundef nonnull align 8 dereferenceable(8) %i.wi) #37, !inline_history !10
  br label %_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EED2Ev.exit102

_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EED2Ev.exit102: ; preds = %bb.bj, %_ZNKSt14default_deleteIN7rocksdb23CacheReservationManager22CacheReservationHandleEEclEPS2_.exit.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %.not.i.i103 = icmp eq ptr %.sroa.12120.0129, null
  br i1 %.not.i.i103, label %_ZN7rocksdb6StatusD2Ev.exit105, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i104

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i104: ; preds = %_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EED2Ev.exit102
  call void @_ZdaPv(ptr noundef nonnull %.sroa.12120.0129) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit105

_ZN7rocksdb6StatusD2Ev.exit105:                   ; preds = %_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EED2Ev.exit102, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i104
  %i.wm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !298 ; 2 uses
  %.not.i.i106 = icmp eq ptr %i.wn, null
  br i1 %.not.i.i106, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit105
  call void @_ZdaPv(ptr noundef nonnull %i.wn) #39
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %_ZN7rocksdb6StatusD2Ev.exit105
  %i.wo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !298 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.wp, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit3.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.wp) #39
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit3.i

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit3.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i
  %i.wq = load ptr, ptr %i.bb, align 8, !tbaa !301 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.wq, null
  br i1 %.not.i4.i, label %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEED2Ev.exit, label %_ZNKSt14default_deleteIA_N7rocksdb11Unsigned128EEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i

_ZNKSt14default_deleteIA_N7rocksdb11Unsigned128EEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit3.i
  call void @_ZdaPv(ptr noundef nonnull %i.wq) #39
  br label %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEED2Ev.exit

_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit3.i, %_ZNKSt14default_deleteIA_N7rocksdb11Unsigned128EEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.bk

.loopexit140:                                     ; preds = %.loopexit.split-lp, %.loopexit140.split.split, %.loopexit140.split.split.us, %.loopexit140.split.us, %_ZN7rocksdb6StatusD2Ev.exit99, %bb.p, %bb.l
  %.sroa.12120.1 = phi ptr [ %i.bn, %bb.p ], [ %.sroa.12120.0130, %_ZN7rocksdb6StatusD2Ev.exit99 ], [ null, %bb.l ], [ %.sroa.12120.0130, %.loopexit140.split.us ], [ %.sroa.12120.0130, %.loopexit140.split.split.us ], [ %.sroa.12120.0130, %.loopexit140.split.split ], [ %.sroa.12120.0130, %.loopexit.split-lp ] ; 2 uses
  %.pn53 = phi { ptr, i32 } [ %i.cc, %bb.p ], [ %.pn45.pn.pn.pn.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit99 ], [ %i.br, %bb.l ], [ %lpad.loopexit.us, %.loopexit140.split.us ], [ %lpad.loopexit.us197, %.loopexit140.split.split.us ], [ %lpad.loopexit, %.loopexit140.split.split ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.wr = load ptr, ptr %4, align 8, !tbaa !282   ; 3 uses
  %.not.i107 = icmp eq ptr %i.wr, null
  br i1 %.not.i107, label %_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EED2Ev.exit109, label %_ZNKSt14default_deleteIN7rocksdb23CacheReservationManager22CacheReservationHandleEEclEPS2_.exit.i108

_ZNKSt14default_deleteIN7rocksdb23CacheReservationManager22CacheReservationHandleEEclEPS2_.exit.i108: ; preds = %.loopexit140
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !42
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wu = load ptr, ptr %i.wt, align 8
  call void %i.wu(ptr noundef nonnull align 8 dereferenceable(8) %i.wr) #37, !inline_history !10
  br label %_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EED2Ev.exit109

_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EED2Ev.exit109: ; preds = %.loopexit140, %_ZNKSt14default_deleteIN7rocksdb23CacheReservationManager22CacheReservationHandleEEclEPS2_.exit.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %.not.i.i110 = icmp eq ptr %.sroa.12120.1, null
  br i1 %.not.i.i110, label %_ZN7rocksdb6StatusD2Ev.exit112, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i111

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i111: ; preds = %_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EED2Ev.exit109
  call void @_ZdaPv(ptr noundef nonnull %.sroa.12120.1) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit112

_ZN7rocksdb6StatusD2Ev.exit112:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i111, %_ZNSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EED2Ev.exit109
  call fastcc void @_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  resume { ptr, i32 } %.pn53

bb.bk:                                            ; preds = %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEED2Ev.exit, %bb.g
  %.sroa.0123.2 = phi ptr [ %i.at, %bb.g ], [ %.sroa.0123.1, %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEED2Ev.exit ]
  %.sroa.8124.2 = phi i64 [ %i.au, %bb.g ], [ %.sroa.8124.1, %_ZN7rocksdb6ribbon15StandardBandingINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.e, %_ZN7rocksdb6StatusaSEOS0_.exit, %bb.d, %bb.bk, %bb.b
  %.sroa.0123.3 = phi ptr [ %i.ak, %bb.b ], [ %.sroa.0123.2, %bb.bk ], [ null, %bb.d ], [ null, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ null, %bb.e ]
  %.sroa.8124.3 = phi i64 [ %i.al, %bb.b ], [ %.sroa.8124.2, %bb.bk ], [ 0, %bb.d ], [ 0, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0123.3, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.8124.3, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder15MaybePostVerifyERKNS_5SliceE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(address) initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(648) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %.not = icmp eq i64 %i.b, 0
  %.sink.idx = select i1 %.not, i64 0, i64 328
  %.sink = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.idx
  tail call void @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder15MaybePostVerifyERKNS_5SliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %.sink, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder21ApproximateNumEntriesEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %.sroa.speculated40 = tail call i64 @llvm.umax.i64(i64 %1, i64 5)
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %.sroa.speculated40)
  %i.e = add i64 %i.d, -5                         ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !176 ; 4 uses
  %i.h = fcmp ogt double %i.g, 1.000000e+00
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = fcmp ult double %i.g, f0x41F0000000000000
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = fptoui double %i.g to i32
  %i.k = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.j, i1 true) ; 2 uses
  %i.l = sub nuw nsw i32 32, %i.k
  %i.m = or disjoint i32 %i.k, -32
  %ldexp = tail call double @ldexp(double 1.000000e+00, i32 %i.m) ; 2 uses
  %i.n = fdiv double 1.000000e+00, %i.g
  %i.o = fsub double %i.n, %ldexp
  %i.p = fdiv double %i.o, %ldexp
  %i.q = uitofp nneg i32 %i.l to double
  %i.r = fsub double %i.q, %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.029 = phi double [ %i.r, %bb.c ], [ 3.200000e+01, %bb.b ]
  %i.s = uitofp i64 %i.e to double
  %i.t = fmul nnan double %i.s, 8.000000e+00
  %i.u = fdiv double %i.t, %.029                  ; 2 uses
  %i.v = tail call noundef i32 @_ZN7rocksdb6ribbon6detail34BandingConfigHelper1MaybeSupportedILNS0_25ConstructionFailureChanceE1ELm128ELb0ELb0ELb1EE11GetNumSlotsEj(i32 noundef 950000000)
  %i.w = uitofp i32 %i.v to double
  %i.x = fcmp olt double %i.u, %i.w
  br i1 %i.x, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.y = fptoui double %i.u to i32
  %i.z = add i32 %i.y, 127
  %i.aa = and i32 %i.z, -128                      ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 128
  %spec.select = select i1 %i.ab, i32 256, i32 %i.aa ; 10 uses
  %.not54 = icmp eq i32 %spec.select, 0
  br i1 %.not54, label %.thread49, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ac = load double, ptr %i.f, align 8, !tbaa !176 ; 4 uses
  %i.ad = fdiv double 1.000000e+00, %i.ac         ; 2 uses
  %i.ae = fcmp ogt double %i.ac, 1.000000e+00
  %i.af = fcmp olt double %i.ad, 1.000000e+00
  %or.cond.i.i = and i1 %i.ae, %i.af
  %i.ag = fptoui double %i.ac to i32
  %i.ah = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ag, i1 true) ; 3 uses
  %.neg28.i.i = add nsw i32 %i.ah, -31
  %i.ai = or disjoint i32 %i.ah, -32
  %i.aj = sub nuw nsw i32 32, %i.ah
  br i1 %or.cond.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ak = fcmp ugt double %i.ac, f0x41EFFFFFFFE00000
  br i1 %i.ak, label %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us.us, label %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us

_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us.us: ; preds = %.lr.ph.split.us
  %i.al = zext i32 %spec.select to i64
  %i.am = shl nuw nsw i64 %i.al, 2
  %.not34.us.us.not = icmp ugt i64 %i.am, %i.e
  br i1 %.not34.us.us.not, label %select.unfold.us.us, label %.split.us

select.unfold.us.us:                              ; preds = %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us.us
  %.not.us.us = icmp ult i32 %spec.select, 257
  br i1 %.not.us.us, label %.thread49, label %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us.us.1

_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us.us.1: ; preds = %select.unfold.us.us
  %i.an = add i32 %spec.select, -128              ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %.not34.us.us.1.not = icmp ugt i64 %i.ap, %i.e
  br i1 %.not34.us.us.1.not, label %select.unfold.us.us.1, label %.split.us

select.unfold.us.us.1:                            ; preds = %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us.us.1
  %i.aq = add i32 %spec.select, -129              ; 2 uses
  %.not.us.us.1 = icmp ult i32 %i.aq, 256
  br i1 %.not.us.us.1, label %.thread49, label %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us.us.2

_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us.us.2: ; preds = %select.unfold.us.us.1
  %i.ar = and i32 %i.aq, -128
  br label %.split.us

_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us: ; preds = %.lr.ph.split.us, %select.unfold.us
  %.056.us = phi i32 [ %i.bi, %select.unfold.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.02455.us = phi i32 [ %i.bh, %select.unfold.us ], [ %spec.select, %.lr.ph.split.us ] ; 4 uses
  %ldexp.i.i.us = tail call double @ldexp(double 1.000000e+00, i32 %.neg28.i.i)
  %ldexp27.i.i.us = tail call double @ldexp(double 1.000000e+00, i32 %i.ai) ; 2 uses
  %i.as = fsub double %i.ad, %ldexp27.i.i.us
  %i.at = fsub double %ldexp.i.i.us, %ldexp27.i.i.us
  %i.au = fdiv double %i.as, %i.at
  %i.av = add i32 %.02455.us, -127
  %i.aw = uitofp i32 %i.av to double
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.au, double %i.aw, double f0x3DE0000000000000)
  %i.ay = fmul double %i.ax, 7.812500e-03
  %i.az = fptoui double %i.ay to i32
  %i.ba = lshr i32 %.02455.us, 7
  %i.bb = mul nuw nsw i32 %i.aj, %i.ba
  %i.bc = sub i32 %i.bb, %i.az
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 4
  %.not34.us = icmp ule i64 %i.be, %i.e
  %i.bf = icmp samesign ugt i32 %.056.us, 1
  %or.cond.us = select i1 %.not34.us, i1 true, i1 %i.bf
  br i1 %or.cond.us, label %.split.us, label %select.unfold.us

select.unfold.us:                                 ; preds = %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us
  %i.bg = add i32 %.02455.us, -1                  ; 2 uses
  %i.bh = and i32 %i.bg, -128
  %i.bi = add nuw nsw i32 %.056.us, 1
  %.not.us = icmp ult i32 %i.bg, 256
  br i1 %.not.us, label %.thread49, label %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not34 = icmp ugt i64 %i.e, 15
  br i1 %.not34, label %.split.us, label %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.preheader

_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.preheader: ; preds = %.lr.ph.split
  %i.bj = add i32 %spec.select, -256
  %2 = and i32 %spec.select, -256
  %or.cond = icmp eq i32 %2, 256
  br i1 %or.cond, label %.thread49, label %.split.us

.thread49:                                        ; preds = %select.unfold.us, %select.unfold.us.us, %select.unfold.us.us.1, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.preheader, %bb.e
  %i.bk = tail call noundef i32 @_ZN7rocksdb6ribbon6detail34BandingConfigHelper1MaybeSupportedILNS0_25ConstructionFailureChanceE1ELm128ELb0ELb0ELb1EE11GetNumToAddEj(i32 noundef 0)
  br label %bb.f

.split.us:                                        ; preds = %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us.us, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us.us.1, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us.us.2, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.preheader, %.lr.ph.split
  %.us-phi = phi i32 [ %i.ar, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us.us.2 ], [ %i.bj, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.preheader ], [ %spec.select, %.lr.ph.split ], [ %spec.select, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us.us ], [ %i.an, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us.us.1 ], [ %.02455.us, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE22GetBytesForOneInFpRateEjdj.exit.us ] ; 2 uses
  %i.bl = tail call noundef i32 @_ZN7rocksdb6ribbon6detail34BandingConfigHelper1MaybeSupportedILNS0_25ConstructionFailureChanceE1ELm128ELb0ELb0ELb1EE11GetNumToAddEj(i32 noundef %.us-phi) ; 2 uses
  %i.bm = icmp ult i32 %.us-phi, 1024
  br i1 %i.bm, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.thread49, %.split.us
  %i.bn = phi i32 [ %i.bk, %.thread49 ], [ %i.bl, %.split.us ]
  %i.bo = icmp ugt i64 %1, 4
  br i1 %i.bo, label %bb.g, label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder21ApproximateNumEntriesEm.exit

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !42
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef i64 %i.bs(ptr noundef nonnull align 8 dereferenceable(316) %i.bp, i64 noundef %1), !inline_history !606
  %i.bu = mul i64 %i.bt, 8000
  %i.bv = add i64 %i.bu, -40000
  br label %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder21ApproximateNumEntriesEm.exit

_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder21ApproximateNumEntriesEm.exit: ; preds = %bb.f, %bb.g
  %i.bw = phi i64 [ %i.bv, %bb.g ], [ 0, %bb.f ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !174
  %i.bz = sext i32 %i.by to i64
  %i.ca = udiv i64 %i.bw, %i.bz
  %i.cb = zext i32 %i.bn to i64
  %. = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 %i.cb)
  br label %bb.i

bb.h:                                             ; preds = %.split.us
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 950000000)
  %i.cc = zext nneg i32 %.sroa.speculated to i64
  br label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder21ApproximateNumEntriesEm.exit, %bb.h, %bb.d, %bb.a
  %.3 = phi i64 [ 950000000, %bb.a ], [ 950000000, %bb.d ], [ %., %_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder21ApproximateNumEntriesEm.exit ], [ %i.cc, %bb.h ]
  ret i64 %.3
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder14CalculateSpaceEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %0, i64 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call fastcc void @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder22CalculateSpaceAndSlotsEmPmPj(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %1, ptr noundef %i.a, ptr noundef %i.b)
  %i.d = load i64, ptr %i.a, align 8, !tbaa !272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef double @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder15EstimatedFpRateEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 6
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  %i.b = select i1 %.not, double 0.000000e+00, double 1.000000e+00
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 950000000
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = tail call noundef double @_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder15EstimatedFpRateEmm(ptr noundef nonnull align 8 dereferenceable(316) %i.d, i64 noundef %1, i64 noundef %2)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = trunc nuw nsw i64 %1 to i32
  %i.g = tail call noundef i32 @_ZN7rocksdb6ribbon6detail34BandingConfigHelper1MaybeSupportedILNS0_25ConstructionFailureChanceE1ELm128ELb0ELb0ELb1EE11GetNumSlotsEj(i32 noundef range(i32 0, 950000001) %i.f)
  %i.h = add i32 %i.g, 127
  %i.i = and i32 %i.h, -128                       ; 2 uses
  %i.j = icmp eq i32 %i.i, 128
  %spec.select.i.i = select i1 %i.j, i32 256, i32 %i.i ; 3 uses
  %i.k = icmp eq i32 %spec.select.i.i, 0
  br i1 %i.k, label %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE20ConfigureForNumSlotsEj.exit, label %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.i.i

_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.i.i: ; preds = %bb.e
  %i.l = lshr exact i32 %spec.select.i.i, 7       ; 3 uses
  %i.m = add i32 %spec.select.i.i, -127
  %i.n = lshr i64 %2, 4
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = add i32 %i.o, -1
  %i.q = add i32 %i.p, %i.l
  %i.r = udiv i32 %i.q, %i.l                      ; 3 uses
  %i.s = mul nuw nsw i32 %i.r, %i.l
  %i.t = sub i32 %i.s, %i.o
  %i.u = icmp ugt i32 %i.r, 32
  %.sroa.17.0 = select i1 %i.u, i32 0, i32 %i.t
  %.sroa.12.0 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 32)
  %i.v = uitofp i32 %.sroa.17.0 to double
  %i.w = fmul nnan double %i.v, 1.280000e+02
  %i.x = uitofp i32 %i.m to double
  %i.y = fdiv double %i.w, %i.x
  br label %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE20ConfigureForNumSlotsEj.exit

_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE20ConfigureForNumSlotsEj.exit: ; preds = %bb.e, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.i.i
  %.sroa.12.1 = phi i32 [ %.sroa.12.0, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.z = phi double [ %i.y, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE19PrepareForNumStartsEj.exit.i.i ], [ +qnan, %bb.e ] ; 2 uses
  %i.aa = add nsw i32 %.sroa.12.1, -1
  %i.ab = uitofp i32 %i.aa to double
  %mul.i = fneg double %i.ab
  %exp2.i = tail call double @exp2(double %mul.i)
  %i.ac = fsub double 1.000000e+00, %i.z
  %i.ad = uitofp nneg i32 %.sroa.12.1 to double
  %mul3.i = fneg double %i.ad
  %exp24.i = tail call double @exp2(double %mul3.i)
  %i.ae = fmul double %i.ac, %exp24.i
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.z, double %exp2.i, double %i.ae)
  br label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE20ConfigureForNumSlotsEj.exit, %bb.d, %bb.b
  %.0 = phi double [ %i.b, %bb.b ], [ %i.e, %bb.d ], [ %i.af, %_ZN7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE20ConfigureForNumSlotsEj.exit ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i64 5, -10) i64 @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder20RoundDownUsableSpaceEm(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = add i64 %1, -5
  %i.b = and i64 %i.a, -16
  %i.c = or disjoint i64 %i.b, 5
  ret i64 %i.c
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder15SwapEntriesWithEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(312) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i6.i = alloca { ptr, i64 }, align 8 ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca { ptr, i64 }, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.e = load <4 x ptr>, ptr %i.c, align 8, !tbaa !212
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.f = load <4 x ptr>, ptr %i.d, align 8, !tbaa !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.a, i8 0, i64 80, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !607
  store <4 x ptr> %i.e, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !212
  store <4 x ptr> %i.f, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = load atomic i64, ptr %i.g monotonic, align 8
  %i.j = atomicrmw xchg ptr %i.h, i64 %i.i monotonic, align 8
  store atomic i64 %i.j, ptr %i.g monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i6.i, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sroa.4.0..sroa_idx.i.i.i.i7.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.o = load <4 x ptr>, ptr %i.m, align 8, !tbaa !212
  %.sroa.8.0..sroa_idx.i.i.i.i11.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.p = load <4 x ptr>, ptr %i.n, align 8, !tbaa !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, i8 0, i64 80, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false), !tbaa.struct !608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i6.i, i64 16, i1 false), !tbaa.struct !608
  store <4 x ptr> %i.o, ptr %.sroa.4.0..sroa_idx.i.i.i.i7.i, align 8, !tbaa !212
  store <4 x ptr> %i.p, ptr %.sroa.8.0..sroa_idx.i.i.i.i11.i, align 8, !tbaa !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i6.i)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !272
  %i.t = load i64, ptr %i.r, align 8, !tbaa !272
  store i64 %i.t, ptr %i.q, align 8, !tbaa !272
  store i64 %i.s, ptr %i.r, align 8, !tbaa !272
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !263, !range !112, !noundef !71
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !263, !range !112, !noundef !71
  %i.ab = trunc nuw i8 %i.aa to i1                ; 2 uses
  br i1 %i.y, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !272 ; 2 uses
  br i1 %i.ab, label %bb.c, label %bb.d
end_hunk_0
