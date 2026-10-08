Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NSIndexPath?download=true
inline.NumInlined: 354
inline.NumDeleted: 268
begin_hunk_0_@_ZN28NSIndexPathSyntheticFrontEnd6UpdateEv:bb.a
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !18
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.o
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !41 ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not6.i.i.i.i, label %_ZN12lldb_private12CompilerTypeaSERKS0_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12 ; 3 uses
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i7.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i7.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !18 ; 2 uses
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bf = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.t ], [ %i.bf, %bb.u ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.v, label %_ZN12lldb_private12CompilerTypeaSERKS0_.exit

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #14, !inline_history !86
  br label %_ZN12lldb_private12CompilerTypeaSERKS0_.exit

_ZN12lldb_private12CompilerTypeaSERKS0_.exit:     ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v
  store ptr %i.au, ptr %i.as, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !53
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !41 ; 4 uses
  %.not.i.i.i33 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i33, label %_ZN12lldb_private12CompilerTypeD2Ev.exit37, label %bb.w

bb.w:                                             ; preds = %_ZN12lldb_private12CompilerTypeaSERKS0_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 3 uses
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i34 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i34, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !18 ; 2 uses
  %i.br = add nsw i32 %i.bq, -1
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35

bb.y:                                             ; preds = %bb.w
  %i.bs = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i36 = phi i32 [ %i.bq, %bb.x ], [ %i.bs, %bb.y ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i36, 1
  br i1 %i.bt, label %bb.z, label %_ZN12lldb_private12CompilerTypeD2Ev.exit37

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #14, !inline_history !0
  br label %_ZN12lldb_private12CompilerTypeD2Ev.exit37

_ZN12lldb_private12CompilerTypeD2Ev.exit37:       ; preds = %_ZN12lldb_private12CompilerTypeaSERKS0_.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.bx = load atomic i8, ptr @_ZGVZN28NSIndexPathSyntheticFrontEnd6UpdateEvE10g__indexes acquire, align 8
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.aa, label %bb.ac, !prof !99

bb.aa:                                            ; preds = %_ZN12lldb_private12CompilerTypeD2Ev.exit37
  %i.bz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN28NSIndexPathSyntheticFrontEnd6UpdateEvE10g__indexes) #14
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN12lldb_private11ConstStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN28NSIndexPathSyntheticFrontEnd6UpdateEvE10g__indexes, ptr noundef nonnull @.str.2) #14
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN28NSIndexPathSyntheticFrontEnd6UpdateEvE10g__indexes) #14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %_ZN12lldb_private12CompilerTypeD2Ev.exit37
  %i.ca = load atomic i8, ptr @_ZGVZN28NSIndexPathSyntheticFrontEnd6UpdateEvE9g__length acquire, align 8
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.ad, label %bb.af, !prof !99

bb.ad:                                            ; preds = %bb.ac
  %i.cc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN28NSIndexPathSyntheticFrontEnd6UpdateEvE9g__length) #14
  %.not27 = icmp eq i32 %i.cc, 0
  br i1 %.not27, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN12lldb_private11ConstStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN28NSIndexPathSyntheticFrontEnd6UpdateEvE9g__length, ptr noundef nonnull @.str.3) #14
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN28NSIndexPathSyntheticFrontEnd6UpdateEvE9g__length) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  call void @_ZNK12lldb_private19ExecutionContextRef12GetProcessSPEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.136") align 8 %6, ptr noundef nonnull align 8 dereferenceable(168) %i.ce) #14
  %i.cf = load ptr, ptr %6, align 8, !tbaa !101   ; 2 uses
  %.not96 = icmp eq ptr %i.cf, null
  br i1 %.not96, label %bb.ch, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cg = call noundef ptr @_ZN12lldb_private7Process18GetLanguageRuntimeEN4lldb12LanguageTypeE(ptr noundef nonnull align 8 dereferenceable(3224) %i.cf, i32 noundef 16) #14 ; 3 uses
  %.not28 = icmp eq ptr %i.cg, null
  br i1 %.not28, label %bb.ch, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 272
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %7, ptr noundef nonnull align 8 dereferenceable(352) %i.cg, ptr noundef nonnull align 8 dereferenceable(1034) %i.ch) #14
  %i.cl = load ptr, ptr %7, align 8, !tbaa !102   ; 3 uses
  %.not29 = icmp eq ptr %i.cl, null
  br i1 %.not29, label %bb.ca, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %i.cl) #14
  br i1 %i.cp, label %bb.aj, label %bb.ca

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 0, ptr %i.c, align 8, !tbaa !54
  %i.cq = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #14
  br i1 %i.cu, label %bb.ak, label %.preheader

.preheader:                                       ; preds = %bb.aj
  %i.cv = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !20
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef i64 %i.cy(ptr noundef nonnull align 8 dereferenceable(32) %i.cv) #14
  %.not116 = icmp eq i64 %i.cz, 0
  br i1 %.not116, label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit65, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  br label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.db = load i64, ptr %i.c, align 8, !tbaa !54
  %i.dc = load ptr, ptr %6, align 8, !tbaa !101   ; 2 uses
  store i64 %i.db, ptr %i.d, align 8, !tbaa !55
  %i.dd = call noundef i32 @_ZNK12lldb_private7Process18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(3224) %i.dc) #14 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !56
  %i.df = icmp eq i32 %i.dd, 8
  %i.dg = load i64, ptr %i.d, align 8, !tbaa !55
  %i.dh = lshr i64 %i.dg, 3
  %..i.i = select i1 %i.df, i64 7, i64 3
  %i.di = and i64 %i.dh, %..i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !103
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.dc, ptr %i.dk, align 8, !tbaa !52
  store i32 0, ptr %i.e, align 8, !tbaa !57
  br label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit65

bb.al:                                            ; preds = %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit
  %i.dl = add nuw i64 %.020104, 1                 ; 2 uses
  %i.dm = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef i64 %i.dp(ptr noundef nonnull align 8 dereferenceable(32) %i.dm) #14
  %i.dr = icmp ult i64 %i.dl, %i.dq
  br i1 %i.dr, label %bb.am, label %._crit_edge, !llvm.loop !87

bb.am:                                            ; preds = %.lr.ph, %bb.al
  %.020104 = phi i64 [ 0, %.lr.ph ], [ %i.dl, %bb.al ] ; 2 uses
  %.021103 = phi i8 [ 0, %.lr.ph ], [ %.122, %bb.al ] ; 2 uses
  %.024102 = phi i8 [ 0, %.lr.ph ], [ %.125, %bb.al ] ; 2 uses
  %.sroa.10.0101 = phi i32 [ undef, %.lr.ph ], [ %.sroa.10.1, %bb.al ] ; 2 uses
  %.sroa.587.0100 = phi ptr [ null, %.lr.ph ], [ %.sroa.587.1, %bb.al ] ; 6 uses
  %.sroa.5.099 = phi ptr [ null, %.lr.ph ], [ %.sroa.5.1, %bb.al ] ; 6 uses
  %.sroa.1091.098 = phi i32 [ undef, %.lr.ph ], [ %.sroa.1091.1, %bb.al ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.ds = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !20
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 128
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr dead_on_unwind nonnull writable sret(%"struct.lldb_private::ObjCLanguageRuntime::ClassDescriptor::iVarDescriptor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %.020104) #14
  %.sroa.04.0.copyload = load ptr, ptr @_ZZN28NSIndexPathSyntheticFrontEnd6UpdateEvE10g__indexes, align 8, !tbaa !59
  %i.dw = load ptr, ptr %8, align 8, !tbaa !106   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %.sroa.04.0.copyload
  br i1 %i.dx, label %bb.an, label %bb.av

bb.an:                                            ; preds = %bb.am
  %i.dy = load ptr, ptr %i.da, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i38, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 12 ; 3 uses
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !18
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ed = atomicrmw volatile add ptr %i.dz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.an
  %.not6.i.i.i.i.i = icmp eq ptr %.sroa.587.0100, null
  br i1 %.not6.i.i.i.i.i, label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.587.0100, i64 12 ; 3 uses
  %i.ef = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i7.i.i.i.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not.i7.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !18 ; 2 uses
  %i.eh = add nsw i32 %i.eg, -1
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.ei = atomicrmw volatile add ptr %i.ee, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.eg, %bb.as ], [ %i.ei, %bb.at ]
  %i.ej = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ej, label %bb.au, label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.ek = load ptr, ptr %.sroa.587.0100, align 8, !tbaa !20
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.587.0100) #14, !inline_history !88
  br label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit

_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.au
  %.sroa.1091.32.copyload = load i32, ptr %.sroa.10.32..sroa_idx, align 8
  br label %bb.be

bb.av:                                            ; preds = %bb.am
  %.sroa.0.0.copyload = load ptr, ptr @_ZZN28NSIndexPathSyntheticFrontEnd6UpdateEvE9g__length, align 8, !tbaa !59
  %i.en = icmp eq ptr %i.dw, %.sroa.0.0.copyload
  br i1 %i.en, label %bb.aw, label %bb.be

bb.aw:                                            ; preds = %bb.av
  %i.eo = load ptr, ptr %i.da, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i39, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i41, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12 ; 3 uses
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i40 = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i.i.i.i40, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !18
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr %i.ep, align 4, !tbaa !18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i41

bb.az:                                            ; preds = %bb.ax
  %i.et = atomicrmw volatile add ptr %i.ep, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i41

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i41: ; preds = %bb.az, %bb.ay, %bb.aw
  %.not6.i.i.i.i.i42 = icmp eq ptr %.sroa.5.099, null
  br i1 %.not6.i.i.i.i.i42, label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit46, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i41
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.5.099, i64 12 ; 3 uses
  %i.ev = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i7.i.i.i.i.i43 = icmp eq i8 %i.ev, 0
  br i1 %.not.i7.i.i.i.i.i43, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !18 ; 2 uses
  %i.ex = add nsw i32 %i.ew, -1
  store i32 %i.ex, ptr %i.eu, align 4, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i44

bb.bc:                                            ; preds = %bb.ba
  %i.ey = atomicrmw volatile add ptr %i.eu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i44

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i44: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i.i.i45 = phi i32 [ %i.ew, %bb.bb ], [ %i.ey, %bb.bc ]
  %i.ez = icmp eq i32 %.0.i.i.i.i.i.i.i45, 1
  br i1 %i.ez, label %bb.bd, label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit46

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i44
  %i.fa = load ptr, ptr %.sroa.5.099, align 8, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.099) #14, !inline_history !88
  br label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit46

_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit46: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i41, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i44, %bb.bd
  %.sroa.10.32.copyload = load i32, ptr %.sroa.10.32..sroa_idx, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.av, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit46, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit
  %.sroa.1091.1 = phi i32 [ %.sroa.1091.32.copyload, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit ], [ %.sroa.1091.098, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit46 ], [ %.sroa.1091.098, %bb.av ] ; 2 uses
  %.sroa.5.1 = phi ptr [ %.sroa.5.099, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit ], [ %i.eo, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit46 ], [ %.sroa.5.099, %bb.av ] ; 5 uses
  %.sroa.587.1 = phi ptr [ %i.dy, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit ], [ %.sroa.587.0100, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit46 ], [ %.sroa.587.0100, %bb.av ] ; 5 uses
  %.sroa.10.1 = phi i32 [ %.sroa.10.0101, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit ], [ %.sroa.10.32.copyload, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit46 ], [ %.sroa.10.0101, %bb.av ] ; 2 uses
  %.125 = phi i8 [ 1, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit ], [ %.024102, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit46 ], [ %.024102, %bb.av ] ; 3 uses
  %.122 = phi i8 [ %.021103, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit ], [ 1, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptoraSERKS2_.exit46 ], [ %.021103, %bb.av ] ; 3 uses
  %i.fd = trunc nuw i8 %.122 to i1
  %i.fe = trunc nuw i8 %.125 to i1
  %or.cond = select i1 %i.fd, i1 %i.fe, i1 false
  %i.ff = load ptr, ptr %i.da, align 8, !tbaa !41 ; 4 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i47, label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12 ; 3 uses
  %i.fh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i48 = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i.i.i.i48, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !18 ; 2 uses
  %i.fj = add nsw i32 %i.fi, -1
  store i32 %i.fj, ptr %i.fg, align 4, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49

bb.bh:                                            ; preds = %bb.bf
  %i.fk = atomicrmw volatile add ptr %i.fg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i50 = phi i32 [ %i.fi, %bb.bg ], [ %i.fk, %bb.bh ]
  %i.fl = icmp eq i32 %.0.i.i.i.i.i.i50, 1
  br i1 %i.fl, label %bb.bi, label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49
  %i.fm = load ptr, ptr %i.ff, align 8, !tbaa !20
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #14, !inline_history !89
  br label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit

_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br i1 %or.cond, label %._crit_edge, label %bb.al

._crit_edge:                                      ; preds = %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit, %bb.al
  %.226.ph = phi i8 [ 1, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit ], [ %.125, %bb.al ]
  %.223.ph = phi i8 [ 1, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit ], [ %.122, %bb.al ]
  %12 = trunc nuw i8 %.223.ph to i1
  %13 = trunc nuw i8 %.226.ph to i1
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %bb.bj, label %bb.br

bb.bj:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.fp = load ptr, ptr %i.h, align 8, !tbaa !44, !nonnull !45, !align !46 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @_ZNK12lldb_private12CompilerType14GetPointerTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::CompilerType") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.aq) #14
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !20
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 240
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1034) %i.fp, i32 noundef %.sroa.1091.1, ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext true, ptr null) #14
  %i.ft = load ptr, ptr %9, align 8, !tbaa !15
  store ptr %i.ft, ptr %i.d, align 8, !tbaa !17
  call void @_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #14
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !41 ; 4 uses
  %.not.i.i.i51 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i51, label %_ZN12lldb_private12CompilerTypeD2Ev.exit55, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12 ; 3 uses
  %i.fx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i52 = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i.i.i52, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !18 ; 2 uses
  %i.fz = add nsw i32 %i.fy, -1
  store i32 %i.fz, ptr %i.fw, align 4, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i53

bb.bm:                                            ; preds = %bb.bk
  %i.ga = atomicrmw volatile add ptr %i.fw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i53: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i.i54 = phi i32 [ %i.fy, %bb.bl ], [ %i.ga, %bb.bm ]
  %i.gb = icmp eq i32 %.0.i.i.i.i.i54, 1
  br i1 %i.gb, label %bb.bn, label %_ZN12lldb_private12CompilerTypeD2Ev.exit55

bb.bn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i53
  %i.gc = load ptr, ptr %i.fv, align 8, !tbaa !20
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #14, !inline_history !0
  br label %_ZN12lldb_private12CompilerTypeD2Ev.exit55

_ZN12lldb_private12CompilerTypeD2Ev.exit55:       ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i53, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.gf = load ptr, ptr %i.h, align 8, !tbaa !44, !nonnull !45, !align !46 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !20
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 240
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1034) %i.gf, i32 noundef %.sroa.10.1, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i1 noundef zeroext true, ptr null) #14
  %i.gj = load ptr, ptr %11, align 8, !tbaa !15   ; 3 uses
  %.not97 = icmp eq ptr %i.gj, null
  br i1 %.not97, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %_ZN12lldb_private12CompilerTypeD2Ev.exit55
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !20
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 144
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = call noundef i64 %i.gm(ptr noundef nonnull align 8 dereferenceable(1034) %i.gj, i64 noundef 0, ptr noundef null) #14
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !17
  %i.gp = load ptr, ptr %i.d, align 8, !tbaa !17
  %.not30 = icmp eq ptr %i.gp, null
  br i1 %.not30, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store i32 1, ptr %i.e, align 8, !tbaa !57
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp, %_ZN12lldb_private12CompilerTypeD2Ev.exit55
  call void @_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge
  %.not.i.i.i.i56 = icmp eq ptr %.sroa.5.1, null
  br i1 %.not.i.i.i.i56, label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit60, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.5.1, i64 12 ; 3 uses
  %i.gr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i57 = icmp eq i8 %i.gr, 0
  br i1 %.not.i.i.i.i.i57, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !18 ; 2 uses
  %i.gt = add nsw i32 %i.gs, -1
  store i32 %i.gt, ptr %i.gq, align 4, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58

bb.bu:                                            ; preds = %bb.bs
  %i.gu = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i.i59 = phi i32 [ %i.gs, %bb.bt ], [ %i.gu, %bb.bu ]
  %i.gv = icmp eq i32 %.0.i.i.i.i.i.i59, 1
  br i1 %i.gv, label %bb.bv, label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit60

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58
  %i.gw = load ptr, ptr %.sroa.5.1, align 8, !tbaa !20
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.1) #14, !inline_history !89
  br label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit60

_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit60: ; preds = %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58, %bb.bv
  %.not.i.i.i.i61 = icmp eq ptr %.sroa.587.1, null
  br i1 %.not.i.i.i.i61, label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit65, label %bb.bw

bb.bw:                                            ; preds = %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit60
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.587.1, i64 12 ; 3 uses
  %i.ha = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i62 = icmp eq i8 %i.ha, 0
  br i1 %.not.i.i.i.i.i62, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hb = load i32, ptr %i.gz, align 4, !tbaa !18 ; 2 uses
  %i.hc = add nsw i32 %i.hb, -1
  store i32 %i.hc, ptr %i.gz, align 4, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i63

bb.by:                                            ; preds = %bb.bw
  %i.hd = atomicrmw volatile add ptr %i.gz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i63

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i63: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i.i.i64 = phi i32 [ %i.hb, %bb.bx ], [ %i.hd, %bb.by ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i.i64, 1
  br i1 %i.he, label %bb.bz, label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit65

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i63
  %i.hf = load ptr, ptr %.sroa.587.1, align 8, !tbaa !20
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.587.1) #14, !inline_history !89
  br label %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit65

_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit65: ; preds = %.preheader, %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i63, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit60, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ah, %bb.ai, %_ZN12lldb_private19ObjCLanguageRuntime15ClassDescriptor14iVarDescriptorD2Ev.exit65
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !16 ; 8 uses
  %.not.i.i66 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i66, label %_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 4 uses
  %i.hl = load atomic i64, ptr %i.hk acquire, align 8 ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 4294967297
  %i.hn = trunc i64 %i.hl to i32                  ; 2 uses
  br i1 %i.hm, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.hk, align 8, !tbaa !38
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  store i32 0, ptr %i.ho, align 4, !tbaa !39
  %i.hp = load ptr, ptr %i.hj, align 8, !tbaa !20
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #14, !inline_history !1
  %i.hs = load ptr, ptr %i.hj, align 8, !tbaa !20
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #14, !inline_history !1
  br label %_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cd:                                            ; preds = %bb.cb
  %i.hv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i67 = icmp eq i8 %i.hv, 0
  br i1 %.not.i.i.i67, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hw = add nsw i32 %i.hn, -1
  store i32 %i.hw, ptr %i.hk, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i68

bb.cf:                                            ; preds = %bb.cd
  %i.hx = atomicrmw volatile add ptr %i.hk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i68

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i68: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i69 = phi i32 [ %i.hn, %bb.ce ], [ %i.hx, %bb.cf ]
  %i.hy = icmp eq i32 %.0.i.i.i.i69, 1
  br i1 %i.hy, label %bb.cg, label %_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !40

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i68
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #14
  br label %_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ca, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i68, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.ch
end_hunk_0
