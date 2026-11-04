Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ThreadList?download=true
inline.NumInlined: 1802
inline.NumDeleted: 734
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12lldb_private10ThreadList10ShouldStopEPNS_5EventE:bb.a
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  %i.bs = phi ptr [ %i.bq, %bb.w ], [ %i.u, %._crit_edge ] ; 3 uses
  %i.bt = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #20 ; 0 uses
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !72 ; 6 uses
  %.not = icmp eq ptr %.0.i.i, null               ; 5 uses
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN12lldb_private3Log10PutCStringEPKc(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr noundef nonnull @.str) #20
  %i.bv = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 4
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !55
  %i.cc = load ptr, ptr %3, align 8, !tbaa !56
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 4
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.1, i64 67, ptr nonnull @__func__._ZN12lldb_private10ThreadList10ShouldStopEPNS_5EventE, i64 10, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._ZN12lldb_private10ThreadList10ShouldStopEPNS_5EventE, i64 noundef %i.ca, i64 noundef %i.cg) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ch = call noundef zeroext i1 @_ZN12lldb_private7Process16ProcessEventData23GetInterruptedFromEventEPKNS_5EventE(ptr noundef %1) #20 ; 2 uses
  %.not45 = xor i1 %i.ch, true
  %brmerge = or i1 %.not, %.not45
  %.mux = zext i1 %i.ch to i8
  br i1 %brmerge, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.1, i64 67, ptr nonnull @__func__._ZN12lldb_private10ThreadList10ShouldStopEPNS_5EventE, i64 10, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._ZN12lldb_private10ThreadList10ShouldStopEPNS_5EventE) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.036 = phi i8 [ %.mux, %bb.z ], [ 1, %bb.aa ]  ; 2 uses
  %i.ci = load ptr, ptr %3, align 8, !tbaa !72    ; 3 uses
  %.not140145 = icmp eq ptr %i.ci, %i.bu
  br i1 %.not140145, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph148, %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64
  %.sroa.0119.0146 = phi ptr [ %i.ci, %.lr.ph148 ], [ %i.dx, %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64 ] ; 3 uses
  %i.ck = load ptr, ptr %.sroa.0119.0146, align 8, !tbaa !71
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0119.0146, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !61 ; 9 uses
  %.not.i.i.i53 = icmp eq ptr %i.cm, null         ; 2 uses
  br i1 %.not.i.i.i53, label %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit55, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i.i54 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i54, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !64
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.cn, align 4, !tbaa !64
  br label %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit55

bb.af:                                            ; preds = %bb.ad
  %i.cr = atomicrmw volatile add ptr %i.cn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit55

_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit55: ; preds = %bb.ac, %bb.ae, %bb.af
  call void @_ZN12lldb_private6Thread11GetStopInfoEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.191") align 8 %5, ptr noundef nonnull align 8 dereferenceable(576) %i.ck) #20
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !61 ; 8 uses
  %.not.i.i56 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i56, label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit55
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.ct, align 8, !tbaa !67
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !68
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #20, !inline_history !228
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !28
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #20, !inline_history !228
  br label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i57 = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i57, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !64
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58

bb.ak:                                            ; preds = %bb.ai
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i59 = phi i32 [ %i.cw, %bb.aj ], [ %i.dg, %bb.ak ]
  %i.dh = icmp eq i32 %.0.i.i.i.i59, 1
  br i1 %i.dh, label %bb.al, label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #20
  br label %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit55, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58, %bb.al
  br i1 %.not.i.i.i53, label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, label %bb.am

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.di, align 8, !tbaa !67
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !68
  %i.dn = load ptr, ptr %i.cm, align 8, !tbaa !28
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #20, !inline_history !5
  %i.dq = load ptr, ptr %i.cm, align 8, !tbaa !28
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #20, !inline_history !5
  br label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64

bb.ao:                                            ; preds = %bb.am
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i61 = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i61, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 8, !tbaa !64
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62

bb.aq:                                            ; preds = %bb.ao
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i63 = phi i32 [ %i.dl, %bb.ap ], [ %i.dv, %bb.aq ]
  %i.dw = icmp eq i32 %.0.i.i.i.i63, 1
  br i1 %i.dw, label %bb.ar, label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, !prof !58

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #20
  br label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64

_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64: ; preds = %_ZNSt12__shared_ptrIN12lldb_private8StopInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62, %bb.ar
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0119.0146, i64 16 ; 2 uses
  %.not140 = icmp eq ptr %i.dx, %i.bu
  br i1 %.not140, label %._crit_edge149.loopexit, label %bb.ac, !llvm.loop !229

._crit_edge149.loopexit:                          ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64
  %.pre168 = load ptr, ptr %3, align 8, !tbaa !72
  br label %._crit_edge149

._crit_edge149:                                   ; preds = %._crit_edge149.loopexit, %bb.ab
  %i.dy = phi ptr [ %.pre168, %._crit_edge149.loopexit ], [ %i.ci, %bb.ab ] ; 2 uses
  %.not141150 = icmp eq ptr %i.dy, %i.bu
  br i1 %.not141150, label %._crit_edge157.thread, label %.lr.ph156

.lr.ph156:                                        ; preds = %._crit_edge149
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph156, %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78
  %.0154 = phi i8 [ 0, %.lr.ph156 ], [ %.1, %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78 ] ; 2 uses
  %.137153 = phi i8 [ %.036, %.lr.ph156 ], [ %.2, %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78 ] ; 2 uses
  %.038152 = phi i1 [ false, %.lr.ph156 ], [ %.139, %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78 ]
  %.sroa.0119.1151 = phi ptr [ %i.dy, %.lr.ph156 ], [ %i.gp, %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78 ] ; 3 uses
  %i.eg = load ptr, ptr %.sroa.0119.1151, align 8, !tbaa !71 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0119.1151, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !61 ; 9 uses
  %.not.i.i.i65 = icmp eq ptr %i.ei, null         ; 2 uses
  br i1 %.not.i.i.i65, label %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit67, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 3 uses
  %i.ek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i.i66 = icmp eq i8 %i.ek, 0
  br i1 %.not.i.i.i.i66, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !64
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !64
  br label %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit67

bb.av:                                            ; preds = %bb.at
  %i.en = atomicrmw volatile add ptr %i.ej, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit67

_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit67: ; preds = %bb.as, %bb.au, %bb.av
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 128
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 136
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !159, !noalias !240 ; 8 uses
  %.not.i.i.i.i.i68 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i.i68, label %_ZNK12lldb_private6Thread10GetProcessEv.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit67
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 7 uses
  %i.es = load atomic i32, ptr %i.er monotonic, align 8, !noalias !240
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %.06.i.i.i.i.i.i = phi i32 [ %i.es, %bb.aw ], [ %i.ew, %bb.ay ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNK12lldb_private6Thread10GetProcessEv.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.et = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.eu = cmpxchg weak ptr %i.er, i32 %.06.i.i.i.i.i.i, i32 %i.et acq_rel monotonic, align 8, !noalias !240 ; 2 uses
  %i.ev = extractvalue { i32, i1 } %i.eu, 1
  %i.ew = extractvalue { i32, i1 } %i.eu, 0
  br i1 %i.ev, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.ax, !llvm.loop !7

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.ay
  %i.ex = load atomic i32, ptr %i.er monotonic, align 8, !noalias !240 ; 0 uses
  %i.ey = load ptr, ptr %i.eo, align 8, !tbaa !160, !noalias !240
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 344
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !165
  %i.fb = icmp ugt i32 %i.fa, 1                   ; 3 uses
  %i.fc = load atomic i64, ptr %i.er acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %.split135, label %bb.az

_ZNK12lldb_private6Thread10GetProcessEv.exit.thread: ; preds = %bb.ax, %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit67
  %i.ff = load i32, ptr inttoptr (i64 344 to ptr), align 8, !tbaa !165
  %i.fg = icmp ugt i32 %i.ff, 1
  br i1 %i.fg, label %bb.bd, label %bb.bc

.split135:                                        ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  store i32 0, ptr %i.er, align 8, !tbaa !67
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  store i32 0, ptr %i.fh, align 4, !tbaa !68
  %i.fi = load ptr, ptr %i.eq, align 8, !tbaa !28
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #20, !inline_history !8
  %i.fl = load ptr, ptr %i.eq, align 8, !tbaa !28
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #20, !inline_history !8
  br i1 %i.fb, label %bb.bd, label %bb.bc

bb.az:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i71 = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i71, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fp = add nsw i32 %i.fe, -1
  store i32 %i.fp, ptr %i.er, align 8, !tbaa !64
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72

bb.bb:                                            ; preds = %bb.az
  %i.fq = atomicrmw volatile add ptr %i.er, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i73 = phi i32 [ %i.fe, %bb.ba ], [ %i.fq, %bb.bb ]
  %i.fr = icmp eq i32 %.0.i.i.i.i73, 1
  br i1 %i.fr, label %.split, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

.split:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #20
  br i1 %i.fb, label %bb.bd, label %bb.bc

_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72
  br i1 %i.fb, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.split135, %.split, %_ZNK12lldb_private6Thread10GetProcessEv.exit.thread, %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fs = call noundef zeroext i1 @_ZN12lldb_private6Thread23ThreadStoppedForAReasonEv(ptr noundef nonnull align 8 dereferenceable(576) %i.eg) #20
  %6 = or i1 %.038152, %i.fs
  br label %bb.bd

bb.bd:                                            ; preds = %.split135, %.split, %_ZNK12lldb_private6Thread10GetProcessEv.exit.thread, %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bc
  %.139 = phi i1 [ %6, %bb.bc ], [ true, %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ true, %_ZNK12lldb_private6Thread10GetProcessEv.exit.thread ], [ true, %.split ], [ true, %.split135 ] ; 2 uses
  %i.ft = call noundef zeroext i1 @_ZN12lldb_private6Thread10ShouldStopEPNS_5EventE(ptr noundef nonnull align 8 dereferenceable(576) %i.eg, ptr noundef %1) #20
  br i1 %i.ft, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eg, i64 168
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !157, !range !158, !noundef !52 ; 2 uses
  %i.fw = trunc nuw i8 %i.fv to i1
  %i.fx = or i8 %i.fv, %.0154                     ; 2 uses
  %.not46 = xor i1 %i.fw, true
  %brmerge47 = or i1 %.not, %.not46
  br i1 %brmerge47, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.4, ptr %2, align 8, !tbaa !166, !alias.scope !241
  store i64 71, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !83, !alias.scope !241
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !168, !alias.scope !241
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !83, !alias.scope !241
  store i8 1, ptr %i.eb, align 8, !tbaa !172, !alias.scope !241
  store i64 %i.fz, ptr %i.ec, align 8, !tbaa !83, !alias.scope !241
  store i64 ptrtoint (ptr @__func__._ZN12lldb_private10ThreadList10ShouldStopEPNS_5EventE to i64), ptr %i.ed, align 8, !tbaa !166, !alias.scope !241
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRA11_KcEEEEvlS2_S3_, ptr %i.dz, align 8, !alias.scope !241
  store i64 %i.ee, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !241
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i.i, align 8, !alias.scope !241
  store i64 %i.ef, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !63, !alias.scope !241
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.1, i64 67, ptr nonnull @__func__._ZN12lldb_private10ThreadList10ShouldStopEPNS_5EventE, i64 10, ptr noundef nonnull align 8 dereferenceable(33) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %.2 = phi i8 [ 1, %bb.bd ], [ %.137153, %bb.be ], [ %.137153, %bb.bf ] ; 2 uses
  %.1 = phi i8 [ %.0154, %bb.bd ], [ %i.fx, %bb.be ], [ %i.fx, %bb.bf ] ; 2 uses
  br i1 %.not.i.i.i65, label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.ga, align 8, !tbaa !67
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !68
  %i.gf = load ptr, ptr %i.ei, align 8, !tbaa !28
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #20, !inline_history !5
  %i.gi = load ptr, ptr %i.ei, align 8, !tbaa !28
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #20, !inline_history !5
  br label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78

bb.bj:                                            ; preds = %bb.bh
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i75 = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i75, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !64
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76

bb.bl:                                            ; preds = %bb.bj
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i77 = phi i32 [ %i.gd, %bb.bk ], [ %i.gn, %bb.bl ]
  %i.go = icmp eq i32 %.0.i.i.i.i77, 1
  br i1 %i.go, label %bb.bm, label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78, !prof !58

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #20
  br label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78

_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78: ; preds = %bb.bg, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76, %bb.bm
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0119.1151, i64 16 ; 2 uses
  %.not141 = icmp eq ptr %i.gp, %i.bu
  br i1 %.not141, label %._crit_edge157, label %bb.as, !llvm.loop !238

._crit_edge157:                                   ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78
  %i.gq = trunc nuw i8 %.1 to i1
  br i1 %i.gq, label %bb.bn, label %._crit_edge157.thread

._crit_edge157.thread:                            ; preds = %._crit_edge149, %._crit_edge157
  %.137.lcssa206 = phi i8 [ %.2, %._crit_edge157 ], [ %.036, %._crit_edge149 ] ; 2 uses
  %.038.lcssa205 = phi i1 [ %.139, %._crit_edge157 ], [ false, %._crit_edge149 ]
  %i.gr = trunc nuw i8 %.137.lcssa206 to i1
  %or.cond = select i1 %i.gr, i1 true, i1 %.038.lcssa205 ; 2 uses
  %brmerge48 = or i1 %.not, %or.cond
  %.137.mux = select i1 %or.cond, i8 %.137.lcssa206, i8 1
  br i1 %brmerge48, label %bb.bn, label %.thread

.thread:                                          ; preds = %._crit_edge157.thread
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.1, i64 67, ptr nonnull @__func__._ZN12lldb_private10ThreadList10ShouldStopEPNS_5EventE, i64 10, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__._ZN12lldb_private10ThreadList10ShouldStopEPNS_5EventE) #20
  br label %bb.bo

bb.bn:                                            ; preds = %._crit_edge157.thread, %._crit_edge157
  %.3 = phi i8 [ 0, %._crit_edge157 ], [ %.137.mux, %._crit_edge157.thread ] ; 2 uses
  br i1 %.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.thread, %bb.bn
  %.3137 = phi i8 [ 1, %.thread ], [ %.3, %bb.bn ] ; 2 uses
  %i.gs = zext nneg i8 %.3137 to i32
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.1, i64 67, ptr nonnull @__func__._ZN12lldb_private10ThreadList10ShouldStopEPNS_5EventE, i64 10, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__._ZN12lldb_private10ThreadList10ShouldStopEPNS_5EventE, i32 noundef %i.gs) #20
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.3138 = phi i8 [ %.3137, %bb.bo ], [ %.3, %bb.bn ]
  %i.gt = trunc nuw i8 %.3138 to i1               ; 2 uses
  %i.gu = load ptr, ptr %3, align 8               ; 3 uses
  %.not142160 = icmp ne ptr %i.gu, %i.bu
  %or.cond165.not = select i1 %i.gt, i1 %.not142160, i1 false
  br i1 %or.cond165.not, label %.lr.ph163, label %.loopexit

.lr.ph163:                                        ; preds = %bb.bp, %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86
  %.sroa.0119.2161 = phi ptr [ %i.hr, %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86 ], [ %i.gu, %bb.bp ] ; 3 uses
  %i.gv = load ptr, ptr %.sroa.0119.2161, align 8, !tbaa !71 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0119.2161, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !61 ; 8 uses
  %.not.i.i.i79 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i79, label %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit81, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph163
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 7 uses
  %i.gz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i.i80 = icmp eq i8 %i.gz, 0
  br i1 %.not.i.i.i.i80, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ha = load i32, ptr %i.gy, align 4, !tbaa !64
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gy, align 4, !tbaa !64
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.hc = atomicrmw volatile add ptr %i.gy, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bt

_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit81: ; preds = %.lr.ph163
  call void @_ZN12lldb_private6Thread8WillStopEv(ptr noundef nonnull align 8 dereferenceable(576) %i.gv) #20
  br label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86

bb.bt:                                            ; preds = %bb.br, %bb.bs
  call void @_ZN12lldb_private6Thread8WillStopEv(ptr noundef nonnull align 8 dereferenceable(576) %i.gv) #20
  %i.hd = load atomic i64, ptr %i.gy acquire, align 8 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 4294967297
  %i.hf = trunc i64 %i.hd to i32                  ; 2 uses
  br i1 %i.he, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.gy, align 8, !tbaa !67
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  store i32 0, ptr %i.hg, align 4, !tbaa !68
  %i.hh = load ptr, ptr %i.gx, align 8, !tbaa !28
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20, !inline_history !5
  %i.hk = load ptr, ptr %i.gx, align 8, !tbaa !28
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20, !inline_history !5
  br label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86

bb.bv:                                            ; preds = %bb.bt
  %i.hn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i83 = icmp eq i8 %i.hn, 0
  br i1 %.not.i.i.i83, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ho = add nsw i32 %i.hf, -1
  store i32 %i.ho, ptr %i.gy, align 8, !tbaa !64
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84

bb.bx:                                            ; preds = %bb.bv
  %i.hp = atomicrmw volatile add ptr %i.gy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i85 = phi i32 [ %i.hf, %bb.bw ], [ %i.hp, %bb.bx ]
  %i.hq = icmp eq i32 %.0.i.i.i.i85, 1
  br i1 %i.hq, label %bb.by, label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86, !prof !58

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20
  br label %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86

_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86: ; preds = %_ZNSt10shared_ptrIN12lldb_private6ThreadEEC2ERKS2_.exit81, %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i84, %bb.by
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0119.2161, i64 16 ; 2 uses
  %.not142 = icmp eq ptr %i.hr, %i.bu
  br i1 %.not142, label %.loopexit.loopexit, label %.lr.ph163, !llvm.loop !239

.loopexit.loopexit:                               ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86
  %.pre169 = load ptr, ptr %3, align 8, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bp
  %i.hs = phi ptr [ %.pre169, %.loopexit.loopexit ], [ %i.gu, %bb.bp ] ; 3 uses
  %i.ht = load ptr, ptr %i.bs, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hs, %i.ht
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.il, %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i ], [ %i.hs, %.loopexit ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !61 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 4 uses
  %i.hx = load atomic i64, ptr %i.hw acquire, align 8 ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 4294967297
  %i.hz = trunc i64 %i.hx to i32                  ; 2 uses
  br i1 %i.hy, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.hw, align 8, !tbaa !67
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  store i32 0, ptr %i.ia, align 4, !tbaa !68
  %i.ib = load ptr, ptr %i.hv, align 8, !tbaa !28
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #20, !inline_history !9
  %i.ie = load ptr, ptr %i.hv, align 8, !tbaa !28
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #20, !inline_history !9
  br label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.ih = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ih, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ii = add nsw i32 %i.hz, -1
  store i32 %i.ii, ptr %i.hw, align 8, !tbaa !64
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.ij = atomicrmw volatile add ptr %i.hw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.hz, %bb.cc ], [ %i.ij, %bb.cd ]
  %i.ik = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ik, label %bb.ce, label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i, !prof !58

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i: ; preds = %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ca, %.lr.ph.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %i.il, %i.ht
  br i1 %.not.i.i.i87, label %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN12lldb_private6ThreadEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exitthread-pre-split.i, %.loopexit
  %i.im = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exitthread-pre-split.i ], [ %i.hs, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.im, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private6ThreadEESaIS3_EED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !57
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.ir) #23
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private6ThreadEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN12lldb_private6ThreadEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6ThreadEEEvT_S5_.exit.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %i.gt
}

declare void @_ZN12lldb_private3Log10PutCStringEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #1

declare void @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104), ptr, i64, ptr, i64, ptr noundef, ...) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN12lldb_private7Process16ProcessEventData23GetInterruptedFromEventEPKNS_5EventE(ptr noundef) local_unnamed_addr #1

end_hunk_0
