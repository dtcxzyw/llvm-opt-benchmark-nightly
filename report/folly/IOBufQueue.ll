Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/IOBufQueue?download=true
inline.NumInlined: 478
inline.NumDeleted: 169
begin_hunk_0_@_ZN5folly10IOBufQueue6appendEPKvm:bb.a
  store i64 %i.bw, ptr %i.w, align 8, !tbaa !33
  %i.bx = sub i64 %.0.293236, %.sroa.speculated   ; 2 uses
  %.not = icmp eq i64 %i.bx, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !147

._crit_edge:                                      ; preds = %bb.o
  %.pre49 = load i8, ptr %3, align 8, !tbaa !52, !range !43
  %i.by = trunc nuw i8 %.pre49 to i1
  br i1 %i.by, label %_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %.pr60 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !73 ; 2 uses
  %i.bz = load ptr, ptr %i.s, align 8, !tbaa !72  ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr60, null
  br i1 %.not.i.i.i, label %.noexc.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5folly10IOBufQueue14maybeReuseTailERNS_5IOBufE(ptr noundef nonnull align 8 dereferenceable(72) %i.bz, ptr noundef nonnull align 8 dereferenceable(56) %.pr60)
          to label %.noexc.i.i unwind label %bb.u

.noexc.i.i:                                       ; preds = %.thread, %bb.q, %bb.p
  %i.ca = phi ptr [ %i.t, %.thread ], [ %i.bz, %bb.q ], [ %i.bz, %bb.p ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i25, label %.thread.i.i.i.i, label %bb.r, !prof !56

bb.r:                                             ; preds = %.noexc.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !40 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !57 ; 3 uses
  %.not.i4.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i4.i.i.i.i, label %.thread.i.i.i.i, label %bb.s, !prof !56

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !64, !range !43, !noundef !44
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.thread.i.i.i.i, label %_ZNK5folly5IOBuf11isSharedOneEv.exit.i.i.i.i, !prof !56

_ZNK5folly5IOBuf11isSharedOneEv.exit.i.i.i.i:     ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cl = load atomic i32, ptr %i.ck acquire, align 4
  %i.cm = icmp ugt i32 %i.cl, 1
  br i1 %i.cm, label %.thread.i.i.i.i, label %bb.t, !prof !65

bb.t:                                             ; preds = %_ZNK5folly5IOBuf11isSharedOneEv.exit.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !50
  %i.cp = load i64, ptr %i.ce, align 8, !tbaa !41
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !36
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !49
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !66
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cv
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cq to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !32 ; 2 uses
  store ptr %i.cq, ptr %i.dc, align 8, !tbaa !67
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.da, ptr %i.dd, align 8, !tbaa !68
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev.exit

.thread.i.i.i.i:                                  ; preds = %_ZNK5folly5IOBuf11isSharedOneEv.exit.i.i.i.i, %bb.s, %bb.r, %.noexc.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store ptr null, ptr %i.de, align 8, !tbaa !36
  %i.df = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev.exit

bb.u:                                             ; preds = %bb.q
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  %i.dj = call ptr @__cxa_begin_catch(ptr %i.di) #17 ; 0 uses
  call void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() #17, !inline_history !0
  unreachable

_ZN5folly6detail14ScopeGuardImplIZNS_10IOBufQueue11updateGuardEbEUlvE_Lb1EED2Ev.exit: ; preds = %._crit_edge, %bb.t, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

declare void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10IOBufQueue10wrapBufferEPKvmm(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %.not13 = icmp eq i64 %2, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  %.015 = phi ptr [ %i.b, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit ], [ %1, %bb.a ] ; 2 uses
  %storemerge14 = phi i64 [ %i.c, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit ], [ %2, %bb.a ] ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %3, i64 %storemerge14) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN5folly5IOBuf10wrapBufferEPKvm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef %.015, i64 noundef %.sroa.speculated)
  invoke void @_ZN5folly10IOBufQueue6appendEOSt10unique_ptrINS_5IOBufESt14default_deleteIS2_EEbb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.a = load ptr, ptr %4, align 8, !tbaa !35     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %bb.b
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #17
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.a) #17
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.b = getelementptr inbounds nuw i8, ptr %.015, i64 %.sroa.speculated
  %i.c = sub nuw i64 %storemerge14, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !152

bb.c:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %i.d

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, %bb.a
  ret void
}

declare void @_ZN5folly5IOBuf10wrapBufferEPKvm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define { ptr, i64 } @_ZN5folly10IOBufQueue15preallocateSlowEmmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i, label %_ZNK5folly10IOBufQueue10flushCacheEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !41
  %i.n = add i64 %i.m, %i.l
  store i64 %i.n, ptr %i.i, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33
  %i.q = add i64 %i.p, %i.l
  store i64 %i.q, ptr %i.o, align 8, !tbaa !33
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 %i.l
  store ptr %i.r, ptr %i.a, align 8, !tbaa !36
  br label %_ZNK5folly10IOBufQueue10flushCacheEv.exit

_ZNK5folly10IOBufQueue10flushCacheEv.exit:        ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %.sroa.speculated11 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75, !noalias !158 ; 3 uses
  %.not.i2 = icmp eq ptr %i.t, null
  br i1 %.not.i2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5folly10IOBufQueue10flushCacheEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !77, !noalias !159
  call void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, i64 noundef %.sroa.speculated11, ptr noundef nonnull align 16 dereferenceable(48) %i.t), !inline_history !157
  br label %_ZNK5folly10IOBufQueue9createBufEm.exit

bb.d:                                             ; preds = %_ZNK5folly10IOBufQueue10flushCacheEv.exit
  call void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, i64 noundef %.sroa.speculated11)
  br label %_ZNK5folly10IOBufQueue9createBufEm.exit

_ZNK5folly10IOBufQueue9createBufEm.exit:          ; preds = %bb.c, %bb.d
  %i.w = load ptr, ptr %4, align 8, !tbaa !35     ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = load i64, ptr %i.w, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z ; 5 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  store ptr %i.aa, ptr %i.ak, align 8, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !68
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit.thread, label %bb.e

_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit.thread: ; preds = %_ZNK5folly10IOBufQueue9createBufEm.exit
  store ptr %i.w, ptr %i.am, align 8, !tbaa !35
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %_ZNK5folly10IOBufQueue9createBufEm.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !69
  invoke void @_ZN5folly5IOBuf13appendToChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit unwind label %bb.f

_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit: ; preds = %bb.e
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %.pre16 = load ptr, ptr %.pre, align 8, !tbaa !37 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre17 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !160 ; 2 uses
  %.pre18 = load ptr, ptr %4, align 8, !tbaa !35  ; 3 uses
  %.not.i5 = icmp eq ptr %.pre18, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.pre18) #17
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %.pre18) #17
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit.thread, %_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i
  %i.as = phi ptr [ %i.aa, %_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit.thread ], [ %.pre16, %_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit ], [ %.pre16, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i ] ; 2 uses
  %5 = phi ptr [ %i.aj, %_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit.thread ], [ %.pre17, %_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit ], [ %.pre17, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.as, 0
  %6 = ptrtoint ptr %5 to i64
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %6, %i.at
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.au, i64 %3)
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.speculated, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret { ptr, i64 } %.fca.1.insert.i

bb.f:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %i.av
}

declare void @_ZN5folly5IOBuf14maybeSplitTailEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10IOBufQueue5splitEmbb(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 7 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36, !noalias !172 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32, !noalias !172
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !noalias !172 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i, label %_ZN5folly10IOBufQueue11updateGuardEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35, !noalias !172
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40, !noalias !172 ; 2 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !41, !noalias !172
  %i.n = add i64 %i.m, %i.l
  store i64 %i.n, ptr %i.i, align 8, !tbaa !41, !noalias !172
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33, !noalias !172
  %i.q = add i64 %i.p, %i.l
  store i64 %i.q, ptr %i.o, align 8, !tbaa !33, !noalias !172
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 %i.l
  store ptr %i.r, ptr %i.a, align 8, !tbaa !36, !noalias !172
  br label %_ZN5folly10IOBufQueue11updateGuardEb.exit

_ZN5folly10IOBufQueue11updateGuardEb.exit:        ; preds = %bb.a, %bb.b
  store i8 0, ptr %5, align 8, !tbaa !52, !alias.scope !173
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.s, align 8, !tbaa !54, !alias.scope !172
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !35, !alias.scope !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr null, ptr %6, align 8, !tbaa !74
  %.not42 = icmp eq i64 %2, 0
  br i1 %.not42, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5folly10IOBufQueue11updateGuardEb.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  %.01243 = phi i64 [ %2, %.lr.ph ], [ %i.ak, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit ] ; 6 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !35   ; 8 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.d, label %bb.i, !prof !56

bb.d:                                             ; preds = %bb.c
  br i1 %3, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt15underflow_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull @.str.18)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt15underflow_error, ptr nonnull @_ZNSt15underflow_errorD1Ev) #18
          to label %bb.y unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.w) #17
  br label %bb.x

bb.h:                                             ; preds = %bb.t, %bb.s, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.v, align 8, !tbaa !41   ; 3 uses
  %.not13 = icmp ugt i64 %i.z, %.01243
  br i1 %.not13, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !33
  %i.ab = sub i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69, !noalias !174 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40, !noalias !174 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !40, !noalias !174
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !69, !noalias !174
  store ptr %i.v, ptr %i.ae, align 8, !tbaa !40, !noalias !174
  store ptr %i.v, ptr %i.ac, align 8, !tbaa !69, !noalias !174
  %i.ai = icmp eq ptr %i.ad, %i.v
  %i.aj = select i1 %i.ai, ptr null, ptr %i.ad    ; 2 uses
  store ptr %i.aj, ptr %7, align 8, !tbaa !35, !alias.scope !174
  invoke fastcc void @_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i1 noundef zeroext %4)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = sub nuw i64 %.01243, %i.z               ; 2 uses
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !35  ; 3 uses
  store ptr %i.aj, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.k
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.al) #17
  tail call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.al) #17
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EEaSEOS4_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !167

bb.l:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.x

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNK5folly5IOBuf12cloneOneImplEPNSt3pmr15memory_resourceE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef null)
          to label %_ZNK5folly5IOBuf8cloneOneEv.exit unwind label %bb.p

_ZNK5folly5IOBuf8cloneOneEv.exit:                 ; preds = %bb.m
  %i.an = load ptr, ptr %8, align 8, !tbaa !35    ; 2 uses
  store i64 %.01243, ptr %i.an, align 8, !tbaa !41
  %i.ao = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i18, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK5folly5IOBuf8cloneOneEv.exit
  store ptr null, ptr %8, align 8, !tbaa !35
  store ptr %i.an, ptr %6, align 8, !tbaa !35
  br label %_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit

bb.o:                                             ; preds = %_ZNK5folly5IOBuf8cloneOneEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !69
  invoke void @_ZN5folly5IOBuf13appendToChainEOSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %._ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit_crit_edge unwind label %bb.q

._ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit_crit_edge: ; preds = %bb.o
  %.pre = load ptr, ptr %8, align 8, !tbaa !35
  br label %_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit

_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit: ; preds = %._ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit_crit_edge, %bb.n
  %i.at = phi ptr [ %.pre, %._ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit_crit_edge ], [ null, %bb.n ] ; 3 uses
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !35  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.01243
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !50
  %i.ay = load i64, ptr %i.au, align 8, !tbaa !41
  %i.az = sub i64 %i.ay, %.01243
  store i64 %i.az, ptr %i.au, align 8, !tbaa !41
  %i.ba = load i64, ptr %i.u, align 8, !tbaa !33
  %i.bb = sub i64 %i.ba, %.01243
  store i64 %i.bb, ptr %i.u, align 8, !tbaa !33
  %.not.i20 = icmp eq ptr %i.at, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i21: ; preds = %_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.at) #17
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.at) #17
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZN12_GLOBAL__N_113appendToChainERSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEOS5_b.exit, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i21
end_hunk_0
