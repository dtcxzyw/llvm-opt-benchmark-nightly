Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DynamicLoaderDarwinKernel?download=true
inline.NumInlined: 2477
inline.NumDeleted: 1125
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN25DynamicLoaderDarwinKernel29SearchForKernelAtSameLoadAddrEPN12lldb_private7ProcessE:bb.a
  br i1 %i.bp, label %bb.t, label %_ZL9is_kernelPN12lldb_private6ModuleE.exit

bb.t:                                             ; preds = %bb.s
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 312
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(200) %i.be) #23, !inline_history !4 ; 2 uses
  store i32 %i.bt, ptr %i.bn, align 4, !tbaa !104
  br label %_ZL9is_kernelPN12lldb_private6ModuleE.exit

_ZL9is_kernelPN12lldb_private6ModuleE.exit:       ; preds = %bb.s, %bb.t
  %i.bu = phi i32 [ %i.bt, %bb.t ], [ %i.bo, %bb.s ]
  %.not10.i = icmp eq i32 %i.bu, 3
  br i1 %.not10.i, label %bb.u, label %_ZL9is_kernelPN12lldb_private6ModuleE.exit.thread

bb.u:                                             ; preds = %_ZL9is_kernelPN12lldb_private6ModuleE.exit
  %i.bv = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = tail call noundef ptr %i.bx(ptr noundef nonnull align 8 dereferenceable(952) %i.aa) #23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !45
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 232
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Address") align 8 %1, ptr noundef nonnull align 8 dereferenceable(200) %i.by) #23
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !135
  %.not = icmp eq i64 %i.cd, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !35 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %_ZN12lldb_private7AddressD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12 ; 3 uses
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i17 = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i17, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !47 ; 2 uses
  %i.cj = add nsw i32 %i.ci, -1
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18

bb.x:                                             ; preds = %bb.v
  %i.ck = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i19 = phi i32 [ %i.ci, %bb.w ], [ %i.ck, %bb.x ]
  %i.cl = icmp eq i32 %.0.i.i.i.i.i19, 1
  br i1 %i.cl, label %bb.y, label %_ZN12lldb_private7AddressD2Ev.exit

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !45
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #23, !inline_history !11
  br label %_ZN12lldb_private7AddressD2Ev.exit

_ZN12lldb_private7AddressD2Ev.exit:               ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.not, label %_ZL9is_kernelPN12lldb_private6ModuleE.exit.thread, label %bb.z

bb.z:                                             ; preds = %_ZN12lldb_private7AddressD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.cp = load ptr, ptr %i.by, align 8, !tbaa !45
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 232
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Address") align 8 %3, ptr noundef nonnull align 8 dereferenceable(200) %i.by) #23
  %i.cs = call noundef i64 @_ZNK12lldb_private7Address14GetFileAddressEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @_ZN25DynamicLoaderDarwinKernel28CheckForKernelImageAtAddressEmPN12lldb_private7ProcessEPb(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::UUID") align 8 %2, i64 noundef %i.cs, ptr noundef nonnull %0, ptr noundef null)
  %i.ct = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private6Module7GetUUIDEv(ptr noundef nonnull align 8 dereferenceable(952) %i.aa) #23 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !115 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !115
  %.not.i.i = icmp eq i64 %i.cv, %i.cx
  br i1 %.not.i.i, label %bb.aa, label %._ZN12lldb_privateeqERKNS_4UUIDES2_.exit_crit_edge

._ZN12lldb_privateeqERKNS_4UUIDES2_.exit_crit_edge: ; preds = %bb.z
  %.pre = load ptr, ptr %2, align 8, !tbaa !116
  br label %_ZN12lldb_privateeqERKNS_4UUIDES2_.exit

bb.aa:                                            ; preds = %bb.z
  %.not.not.i.i.i.i.i.i = icmp samesign eq i64 %i.cv, 0
  %.pre31 = load ptr, ptr %2, align 8, !tbaa !116 ; 3 uses
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN12lldb_privateeqERKNS_4UUIDES2_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !116
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %.pre31, ptr %i.cy, i64 %i.cv)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br label %_ZN12lldb_privateeqERKNS_4UUIDES2_.exit

_ZN12lldb_privateeqERKNS_4UUIDES2_.exit:          ; preds = %._ZN12lldb_privateeqERKNS_4UUIDES2_.exit_crit_edge, %bb.aa, %bb.ab
  %i.cz = phi ptr [ %.pre, %._ZN12lldb_privateeqERKNS_4UUIDES2_.exit_crit_edge ], [ %.pre31, %bb.ab ], [ %.pre31, %bb.aa ] ; 2 uses
  %.0.i.i = phi i1 [ false, %._ZN12lldb_privateeqERKNS_4UUIDES2_.exit_crit_edge ], [ %.not9.i.i.i.i.i.i, %bb.ab ], [ true, %bb.aa ]
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZN12lldb_private4UUIDD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN12lldb_privateeqERKNS_4UUIDES2_.exit
  call void @free(ptr noundef %i.cz) #23
  br label %_ZN12lldb_private4UUIDD2Ev.exit

_ZN12lldb_private4UUIDD2Ev.exit:                  ; preds = %_ZN12lldb_privateeqERKNS_4UUIDES2_.exit, %bb.ac
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !35 ; 4 uses
  %.not.i.i.i20 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i20, label %_ZN12lldb_private7AddressD2Ev.exit24, label %bb.ad

bb.ad:                                            ; preds = %_ZN12lldb_private4UUIDD2Ev.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 12 ; 3 uses
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i21 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i21, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !47 ; 2 uses
  %i.dh = add nsw i32 %i.dg, -1
  store i32 %i.dh, ptr %i.de, align 4, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22

bb.af:                                            ; preds = %bb.ad
  %i.di = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i23 = phi i32 [ %i.dg, %bb.ae ], [ %i.di, %bb.af ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i23, 1
  br i1 %i.dj, label %bb.ag, label %_ZN12lldb_private7AddressD2Ev.exit24

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !45
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #23, !inline_history !11
  br label %_ZN12lldb_private7AddressD2Ev.exit24

_ZN12lldb_private7AddressD2Ev.exit24:             ; preds = %_ZN12lldb_private4UUIDD2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.ah, label %_ZL9is_kernelPN12lldb_private6ModuleE.exit.thread

bb.ah:                                            ; preds = %_ZN12lldb_private7AddressD2Ev.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.dn = load ptr, ptr %i.by, align 8, !tbaa !45
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 232
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Address") align 8 %4, ptr noundef nonnull align 8 dereferenceable(200) %i.by) #23
  %i.dq = call noundef i64 @_ZNK12lldb_private7Address14GetFileAddressEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !35 ; 4 uses
  %.not.i.i.i25 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i25, label %_ZN12lldb_private7AddressD2Ev.exit29, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 12 ; 3 uses
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i26 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i.i26, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !47 ; 2 uses
  %i.dw = add nsw i32 %i.dv, -1
  store i32 %i.dw, ptr %i.dt, align 4, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27

bb.ak:                                            ; preds = %bb.ai
  %i.dx = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i28 = phi i32 [ %i.dv, %bb.aj ], [ %i.dx, %bb.ak ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i28, 1
  br i1 %i.dy, label %bb.al, label %_ZN12lldb_private7AddressD2Ev.exit29

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27
  %i.dz = load ptr, ptr %i.ds, align 8, !tbaa !45
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #23, !inline_history !11
  br label %_ZN12lldb_private7AddressD2Ev.exit29

_ZN12lldb_private7AddressD2Ev.exit29:             ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZL9is_kernelPN12lldb_private6ModuleE.exit.thread

_ZL9is_kernelPN12lldb_private6ModuleE.exit.thread: ; preds = %_ZN12lldb_private10ObjectFile7GetTypeEv.exit.i, %bb.p, %_ZN12lldb_private7Process9GetTargetEv.exit16, %_ZN12lldb_private7AddressD2Ev.exit29, %_ZN12lldb_private7AddressD2Ev.exit, %_ZN12lldb_private7AddressD2Ev.exit24, %_ZL9is_kernelPN12lldb_private6ModuleE.exit
  %.1 = phi i64 [ -1, %_ZL9is_kernelPN12lldb_private6ModuleE.exit ], [ -1, %_ZN12lldb_private7AddressD2Ev.exit ], [ %i.dq, %_ZN12lldb_private7AddressD2Ev.exit29 ], [ -1, %_ZN12lldb_private7AddressD2Ev.exit24 ], [ -1, %_ZN12lldb_private7Process9GetTargetEv.exit16 ], [ -1, %bb.p ], [ -1, %_ZN12lldb_private10ObjectFile7GetTypeEv.exit.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN25DynamicLoaderDarwinKernel29SearchForKernelWithDebugHintsEPN12lldb_private7ProcessE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.lldb_private::Status", align 8 ; 7 uses
  %i.a = alloca [6 x i64], align 16               ; 8 uses
  %i.b = alloca [8 x i8], align 1                 ; 8 uses
  %2 = alloca %"class.lldb_private::DataExtractor", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.lldb_private::UUID", align 8 ; 6 uses
  %4 = alloca %"class.lldb_private::DataExtractor", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %5 = alloca %"class.lldb_private::UUID", align 8 ; 10 uses
  %i.e = load atomic i8, ptr @_ZGVZL19GetGlobalPropertiesvE10g_settings acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZL19GetGlobalPropertiesv.exit, !prof !136

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL19GetGlobalPropertiesvE10g_settings) #23
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZL19GetGlobalPropertiesv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN35DynamicLoaderDarwinKernelPropertiesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZL19GetGlobalPropertiesvE10g_settings)
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN12lldb_private10PropertiesD2Ev, ptr nonnull @_ZZL19GetGlobalPropertiesvE10g_settings, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL19GetGlobalPropertiesvE10g_settings) #23
  br label %_ZL19GetGlobalPropertiesv.exit

_ZL19GetGlobalPropertiesv.exit:                   ; preds = %bb.a, %bb.b, %bb.c
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL19GetGlobalPropertiesvE10g_settings, i64 8), align 8, !tbaa !139 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(232) %i.i, i64 noundef 1, ptr noundef null) #23, !inline_history !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZL19GetGlobalPropertiesv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !142  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i, label %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit.thread, label %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit

_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit: ; preds = %bb.d
  %i.p = tail call { i64, i8 } @_ZNK12lldb_private11OptionValue19GetEnumerationValueEv(ptr noundef nonnull align 8 dereferenceable(104) %i.o) #23 ; 2 uses
  %i.q = extractvalue { i64, i8 } %i.p, 0
  %i.r = extractvalue { i64, i8 } %i.p, 1
  %i.s = trunc i8 %i.r to i1
  %i.t = and i64 %i.q, 4294967295
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %bb.o, label %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit.thread

_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit.thread: ; preds = %_ZL19GetGlobalPropertiesv.exit, %bb.d, %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 -2199023239152, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 -68719460336, ptr %i.x, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 -549755797488, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 -549755805680, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 -1, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ab = call noundef i32 @_ZNK12lldb_private7Process18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(3224) %0) #23
  %i.ac = icmp eq i32 %i.ab, 8
  br i1 %i.ac, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.af = phi i64 [ -68719468528, %.lr.ph ], [ %i.aq, %bb.h ]
  %.02849 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.h ]
  %i.ag = call noundef i64 @_ZN12lldb_private7Process22ReadMemoryFromInferiorEmPvmRNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(3224) %0, i64 noundef %i.af, ptr noundef nonnull %i.b, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(40) %1) #23
  %i.ah = icmp eq i64 %i.ag, 8
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ai = call noundef i32 @_ZNK12lldb_private7Process12GetByteOrderEv(ptr noundef nonnull align 8 dereferenceable(3224) %0) #23
  %i.aj = call noundef i32 @_ZNK12lldb_private7Process18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(3224) %0) #23
  call void @_ZN12lldb_private13DataExtractorC1EPKvmN4lldb9ByteOrderEj(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %i.b, i64 noundef 8, i32 noundef %i.ai, i32 noundef %i.aj) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 0, ptr %i.c, align 8, !tbaa !143
  %i.ak = call noundef i64 @_ZNK12lldb_private13DataExtractor6GetU64EPm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %i.c) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN25DynamicLoaderDarwinKernel28CheckForKernelImageAtAddressEmPN12lldb_private7ProcessEPb(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::UUID") align 8 %3, i64 noundef %i.ak, ptr noundef nonnull %0, ptr noundef null)
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !115
  %.not.i.i36.not = icmp eq i64 %i.al, 0
  %i.am = load ptr, ptr %3, align 8, !tbaa !116   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ae
  br i1 %i.an, label %_ZN12lldb_private4UUIDD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.am) #23
  br label %_ZN12lldb_private4UUIDD2Ev.exit

_ZN12lldb_private4UUIDD2Ev.exit:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @_ZN12lldb_private13DataExtractorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.not.i.i36.not, label %bb.h, label %.thread44

bb.h:                                             ; preds = %bb.e, %_ZN12lldb_private4UUIDD2Ev.exit
  %i.ao = add nuw nsw i64 %.02849, 1              ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !143 ; 2 uses
  %.not = icmp eq i64 %i.aq, -1
  br i1 %.not, label %.thread, label %bb.e, !llvm.loop !454

.thread:                                          ; preds = %bb.h, %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit.thread
  %i.ar = call noundef i32 @_ZNK12lldb_private7Process18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(3224) %0) #23
  %i.as = icmp eq i32 %i.ar, 4
  br i1 %i.as, label %.preheader, label %.thread44

.preheader:                                       ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.av = call noundef i64 @_ZN12lldb_private7Process22ReadMemoryFromInferiorEmPvmRNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(3224) %0, i64 noundef 4294902032, ptr noundef nonnull %i.b, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(40) %1) #23
  %i.aw = icmp eq i64 %i.av, 4
  br i1 %i.aw, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ax = call noundef i32 @_ZNK12lldb_private7Process12GetByteOrderEv(ptr noundef nonnull align 8 dereferenceable(3224) %0) #23
  %i.ay = call noundef i32 @_ZNK12lldb_private7Process18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(3224) %0) #23
  call void @_ZN12lldb_private13DataExtractorC1EPKvmN4lldb9ByteOrderEj(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.b, i64 noundef 4, i32 noundef %i.ax, i32 noundef %i.ay) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 0, ptr %i.d, align 8, !tbaa !143
  %i.az = call noundef i32 @_ZNK12lldb_private13DataExtractor6GetU32EPm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  call void @_ZN25DynamicLoaderDarwinKernel28CheckForKernelImageAtAddressEmPN12lldb_private7ProcessEPb(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::UUID") align 8 %5, i64 noundef %i.ba, ptr noundef nonnull %0, ptr noundef null)
  %i.bb = load i64, ptr %i.at, align 8, !tbaa !115
  %.not.i.i37.not = icmp eq i64 %i.bb, 0
  %i.bc = load ptr, ptr %5, align 8, !tbaa !116   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.au
  br i1 %i.bd, label %_ZN12lldb_private4UUIDD2Ev.exit38, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.bc) #23
  br label %_ZN12lldb_private4UUIDD2Ev.exit38

_ZN12lldb_private4UUIDD2Ev.exit38:                ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @_ZN12lldb_private13DataExtractorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.not.i.i37.not, label %bb.k, label %.thread44

bb.k:                                             ; preds = %.preheader, %_ZN12lldb_private4UUIDD2Ev.exit38
  %i.be = call noundef i64 @_ZN12lldb_private7Process22ReadMemoryFromInferiorEmPvmRNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(3224) %0, i64 noundef 4294905872, ptr noundef nonnull %i.b, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(40) %1) #23
  %i.bf = icmp eq i64 %i.be, 4
  br i1 %i.bf, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bg = call noundef i32 @_ZNK12lldb_private7Process12GetByteOrderEv(ptr noundef nonnull align 8 dereferenceable(3224) %0) #23
  %i.bh = call noundef i32 @_ZNK12lldb_private7Process18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(3224) %0) #23
  call void @_ZN12lldb_private13DataExtractorC1EPKvmN4lldb9ByteOrderEj(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.b, i64 noundef 4, i32 noundef %i.bg, i32 noundef %i.bh) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 0, ptr %i.d, align 8, !tbaa !143
  %i.bi = call noundef i32 @_ZNK12lldb_private13DataExtractor6GetU32EPm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  call void @_ZN25DynamicLoaderDarwinKernel28CheckForKernelImageAtAddressEmPN12lldb_private7ProcessEPb(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::UUID") align 8 %5, i64 noundef %i.bj, ptr noundef nonnull %0, ptr noundef null)
  %i.bk = load i64, ptr %i.at, align 8, !tbaa !115
  %.not.i.i37.not.1 = icmp eq i64 %i.bk, 0
  %i.bl = load ptr, ptr %5, align 8, !tbaa !116   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.au
  br i1 %i.bm, label %_ZN12lldb_private4UUIDD2Ev.exit38.1, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.bl) #23
  br label %_ZN12lldb_private4UUIDD2Ev.exit38.1

_ZN12lldb_private4UUIDD2Ev.exit38.1:              ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @_ZN12lldb_private13DataExtractorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.not.i.i37.not.1, label %bb.n, label %.thread44

bb.n:                                             ; preds = %_ZN12lldb_private4UUIDD2Ev.exit38.1, %bb.k
  br label %.thread44

.thread44:                                        ; preds = %_ZN12lldb_private4UUIDD2Ev.exit, %_ZN12lldb_private4UUIDD2Ev.exit38, %_ZN12lldb_private4UUIDD2Ev.exit38.1, %bb.n, %.thread
  %.9 = phi i64 [ -1, %.thread ], [ %i.bj, %_ZN12lldb_private4UUIDD2Ev.exit38.1 ], [ -1, %bb.n ], [ %i.ba, %_ZN12lldb_private4UUIDD2Ev.exit38 ], [ %i.ak, %_ZN12lldb_private4UUIDD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.o

bb.o:                                             ; preds = %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit, %.thread44
  %.10 = phi i64 [ %.9, %.thread44 ], [ -1, %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit ]
  ret i64 %.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN25DynamicLoaderDarwinKernel21SearchForKernelNearPCEPN12lldb_private7ProcessE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.459", align 8 ; 5 uses
  %2 = alloca %"class.std::shared_ptr.462", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.lldb_private::UUID", align 8 ; 6 uses
  %i.b = load atomic i8, ptr @_ZGVZL19GetGlobalPropertiesvE10g_settings acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZL19GetGlobalPropertiesv.exit, !prof !136

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL19GetGlobalPropertiesvE10g_settings) #23
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZL19GetGlobalPropertiesv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN35DynamicLoaderDarwinKernelPropertiesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZL19GetGlobalPropertiesvE10g_settings)
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN12lldb_private10PropertiesD2Ev, ptr nonnull @_ZZL19GetGlobalPropertiesvE10g_settings, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL19GetGlobalPropertiesvE10g_settings) #23
  br label %_ZL19GetGlobalPropertiesv.exit

_ZL19GetGlobalPropertiesv.exit:                   ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL19GetGlobalPropertiesvE10g_settings, i64 8), align 8, !tbaa !139 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(232) %i.f, i64 noundef 1, ptr noundef null) #23, !inline_history !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZL19GetGlobalPropertiesv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !142  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not10.i.i.i, label %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit.thread, label %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit

_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit: ; preds = %bb.d
  %i.m = tail call { i64, i8 } @_ZNK12lldb_private11OptionValue19GetEnumerationValueEv(ptr noundef nonnull align 8 dereferenceable(104) %i.l) #23 ; 2 uses
  %i.n = extractvalue { i64, i8 } %i.m, 0
  %i.o = extractvalue { i64, i8 } %i.m, 1
  %i.p = trunc i8 %i.o to i1
  %i.q = and i64 %i.n, 4294967295
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %bb.ah, label %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit.thread

_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit.thread: ; preds = %_ZL19GetGlobalPropertiesv.exit, %bb.d, %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit
  %i.t = load atomic i8, ptr @_ZGVZL19GetGlobalPropertiesvE10g_settings acquire, align 8
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.e, label %_ZL19GetGlobalPropertiesv.exit25, !prof !136

bb.e:                                             ; preds = %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit.thread
  %i.v = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL19GetGlobalPropertiesvE10g_settings) #23
  %.not.i24 = icmp eq i32 %i.v, 0
  br i1 %.not.i24, label %_ZL19GetGlobalPropertiesv.exit25, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN35DynamicLoaderDarwinKernelPropertiesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZL19GetGlobalPropertiesvE10g_settings)
  %i.w = tail call i32 @__cxa_atexit(ptr nonnull @_ZN12lldb_private10PropertiesD2Ev, ptr nonnull @_ZZL19GetGlobalPropertiesvE10g_settings, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL19GetGlobalPropertiesvE10g_settings) #23
  br label %_ZL19GetGlobalPropertiesv.exit25

_ZL19GetGlobalPropertiesv.exit25:                 ; preds = %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit.thread, %bb.e, %bb.f
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL19GetGlobalPropertiesvE10g_settings, i64 8), align 8, !tbaa !139 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(232) %i.x, i64 noundef 1, ptr noundef null) #23, !inline_history !12 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i26, label %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit33.thread, label %bb.g

bb.g:                                             ; preds = %_ZL19GetGlobalPropertiesv.exit25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !142 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %i.ad, null
  br i1 %.not10.i.i.i27, label %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit33.thread, label %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit33

_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit33: ; preds = %bb.g
  %i.ae = tail call { i64, i8 } @_ZNK12lldb_private11OptionValue19GetEnumerationValueEv(ptr noundef nonnull align 8 dereferenceable(104) %i.ad) #23 ; 2 uses
  %i.af = extractvalue { i64, i8 } %i.ae, 0
  %i.ag = extractvalue { i64, i8 } %i.ae, 1
  %i.ah = and i64 %i.af, 4294967295
  %i.ai = icmp eq i64 %i.ah, 1
  %i.aj = trunc i8 %i.ag to i1
  %i.ak = select i1 %i.aj, i1 %i.ai, i1 false
  br i1 %i.ak, label %bb.ah, label %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit33.thread

_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit33.thread: ; preds = %_ZL19GetGlobalPropertiesv.exit25, %bb.g, %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit33
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @_ZN12lldb_private10ThreadList17GetSelectedThreadEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.459") align 8 %1, ptr noundef nonnull align 8 dereferenceable(144) %i.al) #23
  %i.am = load ptr, ptr %1, align 8, !tbaa !462   ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZNK35DynamicLoaderDarwinKernelProperties11GetScanTypeEv.exit33.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 256
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.462") align 8 %2, ptr noundef nonnull align 8 dereferenceable(576) %i.am) #23
  %i.ar = load ptr, ptr %2, align 8, !tbaa !465
  %i.as = call noundef i64 @_ZN12lldb_private15RegisterContext5GetPCEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i64 noundef -1) #23 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127 ; 8 uses
end_hunk_0
