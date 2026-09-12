Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Host?download=true
inline.NumInlined: 664
inline.NumDeleted: 237
begin_hunk_0_@_ZL27computeHostNumPhysicalCoresv:bb.a
  %i.de = load i32, ptr %i.cu, align 1
  %i.df = xor i32 %i.de, 1701998435
  %i.dg = getelementptr i8, ptr %i.cu, i64 3
  %i.dh = load i32, ptr %i.dg, align 1
  %i.di = xor i32 %i.dh, 1684611173
  %i.dj = or i32 %i.df, %i.di
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_ZNK4llvh9StringRef10startswithES0_.exit22.thread92, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit22.thread92: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit, %_ZNK4llvh9StringRef10startswithES0_.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !14, !noalias !94
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.dn = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %.020110, ptr nonnull %i.c, i64 1, i64 noundef 0) #20, !noalias !96 ; 3 uses
  %i.do = icmp eq i64 %i.dn, -1
  br i1 %i.do, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit22.thread92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false), !alias.scope !96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(16) %.020110, i64 16, i1 false), !tbaa.struct !26
  br label %_ZNK4llvh9StringRef5splitEc.exit

bb.m:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit22.thread92
  %i.dp = load i64, ptr %i.ck, align 8, !tbaa !16, !noalias !96 ; 3 uses
  %i.dq = call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.dn)
  %i.dr = load ptr, ptr %.020110, align 8, !tbaa !24, !noalias !96 ; 2 uses
  %i.ds = add nuw i64 %i.dn, 1
  %i.dt = call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.ds) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dt
  %i.dv = sub i64 %i.dp, %i.dt
  store ptr %i.dr, ptr %9, align 8, !tbaa !25, !alias.scope !96
  store i64 %i.dq, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !tbaa !16, !alias.scope !96
  store ptr %i.du, ptr %i.by, align 8, !tbaa !25, !alias.scope !96
  store i64 %i.dv, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !16, !alias.scope !96
  br label %_ZNK4llvh9StringRef5splitEc.exit

_ZNK4llvh9StringRef5splitEc.exit:                 ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.dw = call noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull @.str.233, i64 6, i64 noundef 0) #20
  %i.dx = load i64, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !tbaa !16 ; 2 uses
  %.sroa.speculated.i.i37 = call i64 @llvm.umin.i64(i64 %i.dw, i64 %i.dx) ; 2 uses
  %i.dy = load ptr, ptr %9, align 8, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sroa.speculated.i.i37
  %i.ea = sub i64 %i.dx, %.sroa.speculated.i.i37  ; 2 uses
  store ptr %i.dz, ptr %1, align 8
  store i64 %i.ea, ptr %i.bz, align 8
  %i.eb = call noundef i64 @_ZNK4llvh9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull @.str.233, i64 6, i64 noundef -1) #20
  %i.ec = add i64 %i.eb, 1
  %i.ed = load i64, ptr %i.bz, align 8, !tbaa !16 ; 3 uses
  %.sroa.speculated.i7.i38 = call i64 @llvm.umin.i64(i64 %i.ec, i64 %i.ed)
  %.neg.i.i39 = sub i64 %i.ed, %i.ea
  %i.ee = add i64 %.neg.i.i39, %.sroa.speculated.i7.i38
  %i.ef = load ptr, ptr %1, align 8, !tbaa !24    ; 4 uses
  %.sroa.speculated9.i.i40 = call i64 @llvm.umin.i64(i64 %i.ed, i64 %i.ee)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.eg = call noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr nonnull @.str.233, i64 6, i64 noundef 0) #20
  %i.eh = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !16 ; 2 uses
  %.sroa.speculated.i.i43 = call i64 @llvm.umin.i64(i64 %i.eg, i64 %i.eh) ; 2 uses
  %i.ei = load ptr, ptr %i.by, align 8, !tbaa !24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sroa.speculated.i.i43
  %i.ek = sub i64 %i.eh, %.sroa.speculated.i.i43  ; 2 uses
  store ptr %i.ej, ptr %0, align 8
  store i64 %i.ek, ptr %i.ca, align 8
  %i.el = call noundef i64 @_ZNK4llvh9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.233, i64 6, i64 noundef -1) #20
  %i.em = add i64 %i.el, 1
  %i.en = load i64, ptr %i.ca, align 8, !tbaa !16 ; 3 uses
  %.sroa.speculated.i7.i44 = call i64 @llvm.umin.i64(i64 %i.em, i64 %i.en)
  %.neg.i.i45 = sub i64 %i.en, %i.ek
  %i.eo = add i64 %.neg.i.i45, %.sroa.speculated.i7.i44
  %i.ep = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  %.sroa.speculated9.i.i46 = call i64 @llvm.umin.i64(i64 %i.en, i64 %i.eo) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  switch i64 %.sroa.speculated9.i.i40, label %_ZNK4llvh9StringRef6equalsES0_.exit27.thread [
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit27
  ]

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %_ZNK4llvh9StringRef5splitEc.exit
  %i.eq = load i64, ptr %i.ef, align 1
  %i.er = xor i64 %i.eq, 7809632533397203056
  %i.es = getelementptr i8, ptr %i.ef, i64 3
  %i.et = load i64, ptr %i.es, align 1
  %i.eu = xor i64 %i.et, 7235349926209874291
  %i.ev = or i64 %i.er, %i.eu
  %i.ew = icmp ne i64 %i.ev, 0
  %i.ex = zext i1 %i.ew to i32
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread96, label %_ZNK4llvh9StringRef6equalsES0_.exit27.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread96:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ez = call noundef zeroext i1 @_ZN4llvh18getAsSignedIntegerENS_9StringRefEjRx(ptr %i.ep, i64 %.sroa.speculated9.i.i46, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  %i.fa = load i64, ptr %i.b, align 8             ; 2 uses
  %i.fb = add i64 %i.fa, -2147483648
  %.not.i50 = icmp ult i64 %i.fb, -4294967296
  %i.fc = trunc nsw i64 %i.fa to i32
  %i.fd = select i1 %i.ez, i1 true, i1 %.not.i50
  %.4 = select i1 %i.fd, i32 %.0109, i32 %i.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZNK4llvh9StringRef6equalsES0_.exit27.thread

_ZNK4llvh9StringRef6equalsES0_.exit27:            ; preds = %_ZNK4llvh9StringRef5splitEc.exit
  %i.fe = load i32, ptr %i.ef, align 1
  %i.ff = xor i32 %i.fe, 1701998435
  %i.fg = getelementptr i8, ptr %i.ef, i64 3
  %i.fh = load i32, ptr %i.fg, align 1
  %i.fi = xor i32 %i.fh, 1684611173
  %i.fj = or i32 %i.ff, %i.fi
  %i.fk = icmp ne i32 %i.fj, 0
  %i.fl = zext i1 %i.fk to i32
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %_ZNK4llvh9StringRef6equalsES0_.exit27.thread98, label %_ZNK4llvh9StringRef6equalsES0_.exit27.thread

_ZNK4llvh9StringRef6equalsES0_.exit27.thread98:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.fn = call noundef zeroext i1 @_ZN4llvh18getAsSignedIntegerENS_9StringRefEjRx(ptr %i.ep, i64 %.sroa.speculated9.i.i46, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.fo = load i64, ptr %i.a, align 8             ; 2 uses
  %i.fp = add i64 %i.fo, -2147483648
  %.not.i55 = icmp ult i64 %i.fp, -4294967296
  %i.fq = trunc nsw i64 %i.fo to i32
  %i.fr = select i1 %i.fn, i1 true, i1 %.not.i55
  %.487 = select i1 %i.fr, i32 %.083108, i32 %i.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNK4llvh9StringRef6equalsES0_.exit27.thread

_ZNK4llvh9StringRef6equalsES0_.exit27.thread:     ; preds = %_ZNK4llvh9StringRef5splitEc.exit, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit.thread96, %_ZNK4llvh9StringRef6equalsES0_.exit27.thread98, %_ZNK4llvh9StringRef6equalsES0_.exit27
  %.182125 = phi i32 [ %.0109, %_ZNK4llvh9StringRef6equalsES0_.exit27.thread98 ], [ %.0109, %_ZNK4llvh9StringRef6equalsES0_.exit27 ], [ %.0109, %_ZNK4llvh9StringRef5splitEc.exit ], [ %.0109, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %.4, %_ZNK4llvh9StringRef6equalsES0_.exit.thread96 ] ; 3 uses
  %.184 = phi i32 [ %.487, %_ZNK4llvh9StringRef6equalsES0_.exit27.thread98 ], [ %.083108, %_ZNK4llvh9StringRef6equalsES0_.exit27 ], [ %.083108, %_ZNK4llvh9StringRef5splitEc.exit ], [ %.083108, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %.083108, %_ZNK4llvh9StringRef6equalsES0_.exit.thread96 ] ; 3 uses
  %i.fs = icmp ne i32 %.182125, -1
  %i.ft = icmp ne i32 %.184, -1
  %or.cond = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit27.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %.sroa.2.0.insert.ext.i = zext i32 %.184 to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.182125 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %10, align 8
  %i.fu = call i64 @_ZN4llvh8SmallSetISt4pairIiiELj32ESt4lessIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(320) %8, ptr noundef nonnull align 4 dereferenceable(8) %10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK4llvh9StringRef6equalsES0_.exit27.thread
  %.285 = phi i32 [ -1, %bb.n ], [ %.184, %_ZNK4llvh9StringRef6equalsES0_.exit27.thread ]
  %.2 = phi i32 [ -1, %bb.n ], [ %.182125, %_ZNK4llvh9StringRef6equalsES0_.exit27.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit22.thread, %_ZNK4llvh9StringRef10startswithES0_.exit, %bb.o
  %.386 = phi i32 [ %.285, %bb.o ], [ %.083108, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ %.083108, %_ZNK4llvh9StringRef10startswithES0_.exit22.thread ]
  %.3 = phi i32 [ %.2, %bb.o ], [ %.0109, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ %.0109, %_ZNK4llvh9StringRef10startswithES0_.exit22.thread ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.020110, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.fv, %i.bw
  br i1 %.not, label %._crit_edge, label %bb.k

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4llvh11SmallVectorINS_9StringRefELj8EED2Ev.exit
  %.1 = phi i32 [ %i.ce, %_ZN4llvh11SmallVectorINS_9StringRefELj8EED2Ev.exit ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.fw = load i8, ptr %i.f, align 8
  %i.fx = trunc i8 %i.fw to i1
  br i1 %i.fx, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fy = load ptr, ptr %3, align 8, !tbaa !87    ; 3 uses
  %.not.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.q
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !84
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fy) #20, !inline_history !76
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.p, %bb.q, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys18getHostCPUFeaturesERNS_9StringMapIbNS_15MallocAllocatorEEE(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #23, !srcloc !27
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 0 ; 4 uses
  %i.c = icmp ne i32 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 1) #23, !srcloc !27 ; 3 uses
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 0
  %i.f = extractvalue { i32, i32, i32, i32 } %i.d, 2 ; 14 uses
  %i.g = extractvalue { i32, i32, i32, i32 } %i.d, 3 ; 4 uses
  %i.h = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.155, i64 4)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.h, 0
  %i.i = load ptr, ptr %.fca.0.extract.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = lshr i32 %i.g, 15
  %i.l = trunc i32 %i.k to i8
  %i.m = and i8 %i.l, 1
  store i8 %i.m, ptr %i.j, align 1, !tbaa !97
  %i.n = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.156, i64 3)
  %.fca.0.extract.i214 = extractvalue { ptr, i8 } %i.n, 0
  %i.o = load ptr, ptr %.fca.0.extract.i214, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = lshr i32 %i.g, 23
  %i.r = trunc i32 %i.q to i8
  %i.s = and i8 %i.r, 1
  store i8 %i.s, ptr %i.p, align 1, !tbaa !97
  %i.t = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.157, i64 3)
  %.fca.0.extract.i215 = extractvalue { ptr, i8 } %i.t, 0
  %i.u = load ptr, ptr %.fca.0.extract.i215, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = lshr i32 %i.g, 25
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = and i8 %i.x, 1
  store i8 %i.y, ptr %i.v, align 1, !tbaa !97
  %i.z = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.158, i64 4)
  %.fca.0.extract.i216 = extractvalue { ptr, i8 } %i.z, 0
  %i.aa = load ptr, ptr %.fca.0.extract.i216, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = lshr i32 %i.g, 26
  %i.ad = trunc nuw nsw i32 %i.ac to i8
  %i.ae = and i8 %i.ad, 1
  store i8 %i.ae, ptr %i.ab, align 1, !tbaa !97
  %i.af = trunc i32 %i.f to i8
  %i.ag = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.159, i64 4)
  %.fca.0.extract.i217 = extractvalue { ptr, i8 } %i.ag, 0
  %i.ah = load ptr, ptr %.fca.0.extract.i217, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = and i8 %i.af, 1
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !97
  %i.ak = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.160, i64 6)
  %.fca.0.extract.i218 = extractvalue { ptr, i8 } %i.ak, 0
  %i.al = load ptr, ptr %.fca.0.extract.i218, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %1 = lshr i32 %i.f, 1
  %2 = trunc i32 %1 to i8
  %i.an = and i8 %2, 1
  store i8 %i.an, ptr %i.am, align 1, !tbaa !97
  %i.ao = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.161, i64 5)
  %.fca.0.extract.i219 = extractvalue { ptr, i8 } %i.ao, 0
  %i.ap = load ptr, ptr %.fca.0.extract.i219, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = lshr i32 %i.f, 9
  %i.as = trunc i32 %i.ar to i8
  %i.at = and i8 %i.as, 1
  store i8 %i.at, ptr %i.aq, align 1, !tbaa !97
  %i.au = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.162, i64 4)
  %.fca.0.extract.i220 = extractvalue { ptr, i8 } %i.au, 0
  %i.av = load ptr, ptr %.fca.0.extract.i220, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = lshr i32 %i.f, 13
  %i.ay = trunc i32 %i.ax to i8
  %i.az = and i8 %i.ay, 1
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !97
  %i.ba = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.163, i64 6)
  %.fca.0.extract.i221 = extractvalue { ptr, i8 } %i.ba, 0
  %i.bb = load ptr, ptr %.fca.0.extract.i221, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = lshr i32 %i.f, 19
  %i.be = trunc i32 %i.bd to i8
  %i.bf = and i8 %i.be, 1
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !97
  %i.bg = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.164, i64 6)
  %.fca.0.extract.i222 = extractvalue { ptr, i8 } %i.bg, 0
  %i.bh = load ptr, ptr %.fca.0.extract.i222, align 8, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = lshr i32 %i.f, 20
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = and i8 %i.bk, 1
  store i8 %i.bl, ptr %i.bi, align 1, !tbaa !97
  %i.bm = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.165, i64 5)
  %.fca.0.extract.i223 = extractvalue { ptr, i8 } %i.bm, 0
  %i.bn = load ptr, ptr %.fca.0.extract.i223, align 8, !tbaa !41
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = lshr i32 %i.f, 22
  %i.bq = trunc i32 %i.bp to i8
  %i.br = and i8 %i.bq, 1
  store i8 %i.br, ptr %i.bo, align 1, !tbaa !97
  %i.bs = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.166, i64 6)
  %.fca.0.extract.i224 = extractvalue { ptr, i8 } %i.bs, 0
  %i.bt = load ptr, ptr %.fca.0.extract.i224, align 8, !tbaa !41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = lshr i32 %i.f, 23
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = and i8 %i.bw, 1
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !97
  %i.by = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.167, i64 3)
  %.fca.0.extract.i225 = extractvalue { ptr, i8 } %i.by, 0
  %i.bz = load ptr, ptr %.fca.0.extract.i225, align 8, !tbaa !41
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = lshr i32 %i.f, 25
  %i.cc = trunc nuw nsw i32 %i.cb to i8
  %i.cd = and i8 %i.cc, 1
  store i8 %i.cd, ptr %i.ca, align 1, !tbaa !97
  %i.ce = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.168, i64 5)
  %.fca.0.extract.i226 = extractvalue { ptr, i8 } %i.ce, 0
  %i.cf = load ptr, ptr %.fca.0.extract.i226, align 8, !tbaa !41
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = lshr i32 %i.f, 30
  %i.ci = trunc nuw nsw i32 %i.ch to i8
  %i.cj = and i8 %i.ci, 1
  store i8 %i.cj, ptr %i.cg, align 1, !tbaa !97
  %i.ck = and i32 %i.f, 402653184
  %or.cond.not = icmp eq i32 %i.ck, 402653184
  br i1 %or.cond.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cl = tail call { i32, i32 } asm ".byte 0x0f, 0x01, 0xd0", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #23, !srcloc !28
  %i.cm = extractvalue { i32, i32 } %i.cl, 0      ; 2 uses
  %i.cn = and i32 %i.cm, 6
  %i.co = icmp eq i32 %i.cn, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.cm, %bb.c ] ; 2 uses
  %i.cp = phi i1 [ false, %bb.b ], [ %i.co, %bb.c ] ; 5 uses
  %i.cq = zext i1 %i.cp to i8                     ; 9 uses
  %i.cr = and i32 %.0, 224
  %i.cs = icmp eq i32 %i.cr, 224
  %i.ct = select i1 %i.cp, i1 %i.cs, i1 false     ; 9 uses
  %i.cu = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.169, i64 3)
  %.fca.0.extract.i227 = extractvalue { ptr, i8 } %i.cu, 0
  %i.cv = load ptr, ptr %.fca.0.extract.i227, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i8 %i.cq, ptr %i.cw, align 1, !tbaa !97
  %i.cx = and i32 %i.f, 4096
  %i.cy = icmp ne i32 %i.cx, 0
  %i.cz = select i1 %i.cy, i1 %i.cp, i1 false
  %i.da = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.170, i64 3)
  %.fca.0.extract.i228 = extractvalue { ptr, i8 } %i.da, 0
  %i.db = load ptr, ptr %.fca.0.extract.i228, align 8, !tbaa !41
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = zext i1 %i.cz to i8
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !97
  %i.de = and i32 %i.f, 67108864
  %i.df = icmp ne i32 %i.de, 0
  %i.dg = select i1 %i.df, i1 %i.cp, i1 false
  %i.dh = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.171, i64 5)
  %.fca.0.extract.i229 = extractvalue { ptr, i8 } %i.dh, 0
  %i.di = load ptr, ptr %.fca.0.extract.i229, align 8, !tbaa !41
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = zext i1 %i.dg to i8
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !97
  %i.dl = and i32 %i.f, 536870912
  %i.dm = icmp ne i32 %i.dl, 0
  %i.dn = select i1 %i.dm, i1 %i.cp, i1 false
  %i.do = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.172, i64 4)
  %.fca.0.extract.i230 = extractvalue { ptr, i8 } %i.do, 0
  %i.dp = load ptr, ptr %.fca.0.extract.i230, align 8, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = zext i1 %i.dn to i8
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !97
  %i.ds = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 -2147483648) #23, !srcloc !27 ; 2 uses
  %i.dt = extractvalue { i32, i32, i32, i32 } %i.ds, 0 ; 2 uses
  %i.du = icmp ugt i32 %i.dt, -2147483648         ; 11 uses
  br i1 %i.du, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dv = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 -2147483647) #23, !srcloc !27 ; 2 uses
  %i.dw = extractvalue { i32, i32, i32, i32 } %i.dv, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { i32, i32, i32, i32 } [ %i.dv, %bb.e ], [ %i.ds, %bb.d ] ; 3 uses
  %.1 = phi i32 [ %i.dw, %bb.e ], [ %.0, %bb.d ]
  %.0519 = extractvalue { i32, i32, i32, i32 } %.pn, 2 ; 3 uses
  %.0522 = extractvalue { i32, i32, i32, i32 } %.pn, 3 ; 2 uses
  %i.dx = trunc i32 %.0519 to i8
  %i.dy = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.173, i64 4)
  %.fca.0.extract.i231 = extractvalue { ptr, i8 } %i.dy, 0
  %i.dz = load ptr, ptr %.fca.0.extract.i231, align 8, !tbaa !41
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = and i8 %i.dx, 1
  %i.ec = select i1 %i.du, i8 %i.eb, i8 0
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !97
  %i.ed = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.174, i64 5)
  %.fca.0.extract.i232 = extractvalue { ptr, i8 } %i.ed, 0
  %i.ee = load ptr, ptr %.fca.0.extract.i232, align 8, !tbaa !41
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = insertelement <8 x i32> poison, i32 %.0519, i64 0
  %i.eh = shufflevector <8 x i32> %i.eg, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ei = and <8 x i32> %i.eh, <i32 536870912, i32 2097152, i32 65536, i32 32768, i32 2048, i32 256, i32 64, i32 32>
  %i.ej = icmp ne <8 x i32> %i.ei, zeroinitializer ; 8 uses
  %i.ek = extractelement <8 x i1> %i.ej, i64 7
  %i.el = select i1 %i.du, i1 %i.ek, i1 false
  %i.em = zext i1 %i.el to i8
  store i8 %i.em, ptr %i.ef, align 1, !tbaa !97
  %i.en = extractelement <8 x i1> %i.ej, i64 6
  %i.eo = select i1 %i.du, i1 %i.en, i1 false
  %i.ep = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.175, i64 5)
  %.fca.0.extract.i233 = extractvalue { ptr, i8 } %i.ep, 0
  %i.eq = load ptr, ptr %.fca.0.extract.i233, align 8, !tbaa !41
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = zext i1 %i.eo to i8
  store i8 %i.es, ptr %i.er, align 1, !tbaa !97
  %i.et = extractelement <8 x i1> %i.ej, i64 5
  %i.eu = select i1 %i.du, i1 %i.et, i1 false
  %i.ev = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.176, i64 6)
  %.fca.0.extract.i234 = extractvalue { ptr, i8 } %i.ev, 0
  %i.ew = load ptr, ptr %.fca.0.extract.i234, align 8, !tbaa !41
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = zext i1 %i.eu to i8
  store i8 %i.ey, ptr %i.ex, align 1, !tbaa !97
  %i.ez = extractelement <8 x i1> %i.ej, i64 4
  %i.fa = select i1 %i.du, i1 %i.ez, i1 false
  %i.fb = select i1 %i.fa, i8 %i.cq, i8 0
  %i.fc = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.177, i64 3)
  %.fca.0.extract.i235 = extractvalue { ptr, i8 } %i.fc, 0
  %i.fd = load ptr, ptr %.fca.0.extract.i235, align 8, !tbaa !41
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i8 %i.fb, ptr %i.fe, align 1, !tbaa !97
  %i.ff = extractelement <8 x i1> %i.ej, i64 3
  %i.fg = select i1 %i.du, i1 %i.ff, i1 false
  %i.fh = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.178, i64 3)
  %.fca.0.extract.i236 = extractvalue { ptr, i8 } %i.fh, 0
  %i.fi = load ptr, ptr %.fca.0.extract.i236, align 8, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = zext i1 %i.fg to i8
  store i8 %i.fk, ptr %i.fj, align 1, !tbaa !97
  %i.fl = extractelement <8 x i1> %i.ej, i64 2
  %i.fm = select i1 %i.du, i1 %i.fl, i1 false
  %i.fn = select i1 %i.fm, i8 %i.cq, i8 0
  %i.fo = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.179, i64 4)
  %.fca.0.extract.i237 = extractvalue { ptr, i8 } %i.fo, 0
  %i.fp = load ptr, ptr %.fca.0.extract.i237, align 8, !tbaa !41
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i8 %i.fn, ptr %i.fq, align 1, !tbaa !97
  %i.fr = extractelement <8 x i1> %i.ej, i64 1
  %i.fs = select i1 %i.du, i1 %i.fr, i1 false
  %i.ft = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.180, i64 3)
  %.fca.0.extract.i238 = extractvalue { ptr, i8 } %i.ft, 0
  %i.fu = load ptr, ptr %.fca.0.extract.i238, align 8, !tbaa !41
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = zext i1 %i.fs to i8
  store i8 %i.fw, ptr %i.fv, align 1, !tbaa !97
  %i.fx = extractelement <8 x i1> %i.ej, i64 0
  %i.fy = select i1 %i.du, i1 %i.fx, i1 false
end_hunk_0
