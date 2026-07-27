inline.NumInlined: 1760
inline.NumDeleted: 533
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_116HandleOptionsBagEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE:bb.a
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = add i64 %i.bp, -1
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i64, ptr %i.br acquire, align 8
  %i.bt = add i64 %i.bs, 11
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load atomic volatile i16, ptr %i.bu monotonic, align 2
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bw = tail call ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef nonnull %1, ptr nonnull %i.ad, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i

bb.k:                                             ; preds = %.thread.i, %bb.h
  %.sroa.082.0.i = phi i16 [ %i.bv, %.thread.i ], [ %i.bd, %bb.h ]
  %.sroa.012.1.i.i = phi i64 [ %i.bp, %.thread.i ], [ %i.ax, %bb.h ] ; 2 uses
  %i.bx = and i16 %.sroa.082.0.i, -121
  %i.by = icmp eq i16 %i.bx, 5
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = add i64 %.sroa.012.1.i.i, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.012.2.i.i = phi i64 [ %i.cc, %bb.l ], [ %.sroa.012.1.i.i, %bb.k ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = icmp eq ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.n, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.n:                                             ; preds = %bb.m
  %i.ci = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #14
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi ptr [ %i.ci, %bb.n ], [ %i.ce, %bb.m ] ; 3 uses
  %i.cj = ptrtoint ptr %.0.i.i.i to i64
  %i.ck = add i64 %i.cj, 8
  %i.cl = inttoptr i64 %i.ck to ptr
  store ptr %i.cl, ptr %i.cd, align 8
  store i64 %.sroa.012.2.i.i, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i

_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i: ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.j, %bb.g
  %.sroa.087.1.i = phi ptr [ %i.bw, %bb.j ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.ad, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.cm = load i64, ptr %.sroa.087.1.i, align 8
  %i.cn = add i64 %i.cm, -1
  %i.co = inttoptr i64 %i.cn to ptr               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14, !noalias !146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !149, !noalias !146
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !noalias !152
  %i.cr = load atomic volatile i64, ptr %i.co acquire, align 8, !noalias !155
  %i.cs = add i64 %i.cr, 11
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load atomic volatile i16, ptr %i.ct monotonic, align 2, !noalias !155
  %i.cv = and i16 %i.cu, 15
  switch i16 %i.cv, label %bb.y [
    i16 8, label %bb.o
    i16 0, label %bb.p
    i16 9, label %bb.z
    i16 1, label %bb.z
    i16 10, label %bb.q
    i16 2, label %bb.u
    i16 11, label %bb.z
    i16 3, label %bb.z
    i16 13, label %bb.z
    i16 5, label %bb.z
  ]

bb.o:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.p:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.q:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !158
  %i.da = inttoptr i64 %i.cz to ptr               ; 6 uses
  %i.db = load atomic volatile i64, ptr %i.co monotonic, align 8, !noalias !158
  %i.dc = add i64 %i.db, 11
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load atomic volatile i16, ptr %i.dd monotonic, align 2, !noalias !158
  %i.df = and i16 %i.de, 16
  %.not.i.i = icmp eq i16 %i.df, 0
  br i1 %.not.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = load ptr, ptr %i.da, align 8, !noalias !158
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !158
  %i.dj = tail call noundef zeroext i1 %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.da) #14, !noalias !158, !inline_history !163
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #14, !noalias !158
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !158
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.dm = load ptr, ptr %i.da, align 8, !noalias !158
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 72
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !158
  %i.dp = tail call noundef ptr %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #14, !noalias !158, !inline_history !163
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.u:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !164
  %i.ds = inttoptr i64 %i.dr to ptr               ; 6 uses
  %i.dt = load atomic volatile i64, ptr %i.co monotonic, align 8, !noalias !164
  %i.du = add i64 %i.dt, 11
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load atomic volatile i16, ptr %i.dv monotonic, align 2, !noalias !164
  %i.dx = and i16 %i.dw, 16
  %.not.i47.i = icmp eq i16 %i.dx, 0
  br i1 %.not.i47.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dy = load ptr, ptr %i.ds, align 8, !noalias !164
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !164
  %i.eb = tail call noundef zeroext i1 %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) #14, !noalias !164, !inline_history !167
  br i1 %i.eb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #14, !noalias !164
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !164
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.ee = load ptr, ptr %i.ds, align 8, !noalias !164
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !164
  %i.eh = tail call noundef ptr %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #14, !noalias !164, !inline_history !167
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.y:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.16) #13, !noalias !168
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i: ; preds = %bb.x, %bb.w, %bb.t, %bb.s, %bb.p, %bb.o
  %.sroa.0103.sroa.0.0.ph.i = phi ptr [ %i.ed, %bb.w ], [ %i.dl, %bb.s ], [ %i.eh, %bb.x ], [ %i.dp, %bb.t ], [ %i.cx, %bb.p ], [ %i.cw, %bb.o ]
  %.sroa.0103.sroa.8.0.ph.i = phi i32 [ 2, %bb.w ], [ 1, %bb.s ], [ 2, %bb.x ], [ 1, %bb.t ], [ 2, %bb.p ], [ 1, %bb.o ]
  store ptr %.sroa.0103.sroa.0.0.ph.i, ptr %6, align 8
  %.sroa.0103.sroa.7.0..sroa_idx146.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.cq, ptr %.sroa.0103.sroa.7.0..sroa_idx146.i, align 8
  %.sroa.0103.sroa.8.0..sroa_idx152.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %.sroa.0103.sroa.8.0.ph.i, ptr %.sroa.0103.sroa.8.0..sroa_idx152.i, align 4
  %.sroa.0103.sroa.9.0..sroa_idx158.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %5, ptr %.sroa.0103.sroa.9.0..sroa_idx158.i, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i

bb.z:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %6, ptr noundef nonnull align 4 dereferenceable(16) %i.co, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i: ; preds = %bb.z, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 8, !range !7, !noundef !8
  %i.ek = trunc nuw i8 %i.ej to i1
  store i8 0, ptr %i.ei, align 8
  br i1 %i.ek, label %bb.aa, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i

bb.aa:                                            ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i
  %i.el = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.el) #14
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i: ; preds = %bb.ab, %bb.aa, %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14, !noalias !146
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = icmp eq i32 %i.en, 1
  %i.ep = load ptr, ptr %6, align 8               ; 7 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.er = load i32, ptr %i.eq, align 8
  %.fr133 = freeze i32 %i.er                      ; 2 uses
  %i.es = zext i32 %.fr133 to i64                 ; 10 uses
  br i1 %i.eo, label %.lr.ph267.i.preheader, label %.lr.ph.preheader.i

.lr.ph267.i.preheader:                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i
  %i.et = load i64, ptr %.sroa.4.0..sroa_idx.i41, align 8
  %i.eu = icmp eq i64 %i.et, %i.es
  br i1 %i.eu, label %bb.ac, label %.lr.ph267.i.1

bb.ac:                                            ; preds = %.lr.ph267.i.preheader
  %i.ev = load ptr, ptr %.sroa.5.0..sroa_idx.i42, align 8
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.ep, ptr %i.ev, i64 %i.es)
  %i.ew = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ew, label %_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread, label %.lr.ph267.i.1

.lr.ph267.i.1:                                    ; preds = %bb.ac, %.lr.ph267.i.preheader
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = icmp eq i64 %i.ey, %i.es
  br i1 %i.ez, label %bb.ad, label %.lr.ph267.i.2

bb.ad:                                            ; preds = %.lr.ph267.i.1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8
  %bcmp.i.i.i.1 = call i32 @bcmp(ptr %i.ep, ptr %i.fb, i64 %i.es)
  %i.fc = icmp eq i32 %bcmp.i.i.i.1, 0
  br i1 %i.fc, label %_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread, label %.lr.ph267.i.2

.lr.ph267.i.2:                                    ; preds = %bb.ad, %.lr.ph267.i.1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = icmp eq i64 %i.fe, %i.es
  br i1 %i.ff, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %.lr.ph267.i.2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.fh = load ptr, ptr %i.fg, align 8
  %bcmp.i.i.i.2 = call i32 @bcmp(ptr %i.ep, ptr %i.fh, i64 %i.es)
  %i.fi = icmp eq i32 %bcmp.i.i.i.2, 0
  br i1 %i.fi, label %_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i
  %.idx.i.i.i = shl nuw nsw i64 %i.es, 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.idx.i.i.i ; 3 uses
  %i.fk = icmp eq i32 %.fr133, 0
  %i.fl = load i64, ptr %.sroa.4.0..sroa_idx.i41, align 8 ; 2 uses
  br i1 %i.fk, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i
  %10 = icmp eq i64 %i.fl, %i.es
  br i1 %10, label %.lr.ph.i.i.preheader.i, label %.loopexit.i

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.preheader.i
  %11 = icmp eq i64 %i.fl, 0
  br i1 %11, label %_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.us.preheader
  %i.fm = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.loopexit.i.us
  %i.fp = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread, label %.loopexit

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i.preheader
  %i.fs = load ptr, ptr %.sroa.5.0..sroa_idx.i42, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.af, %.lr.ph.i.i.preheader.i
  %.01013.i.i.i = phi ptr [ %i.fw, %bb.af ], [ %i.ep, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.01112.i.i.i = phi ptr [ %i.fx, %bb.af ], [ %i.fs, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.ft = load i16, ptr %.01013.i.i.i, align 2
  %i.fu = load i8, ptr %.01112.i.i.i, align 1
  %i.fv = zext i8 %i.fu to i16
  %.not.i.i.i46 = icmp eq i16 %i.ft, %i.fv
  br i1 %.not.i.i.i46, label %bb.af, label %.loopexit.i

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.01013.i.i.i, i64 2 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.01112.i.i.i, i64 1
  %.not16.i.i.i = icmp ult ptr %i.fw, %i.fj
  br i1 %.not16.i.i.i, label %.lr.ph.i.i.i, label %_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread, !llvm.loop !169

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = icmp eq i64 %i.fz, %i.es
  br i1 %i.ga, label %.lr.ph.i.i.preheader.i.1, label %.loopexit.i.1

.lr.ph.i.i.preheader.i.1:                         ; preds = %.loopexit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.ag, %.lr.ph.i.i.preheader.i.1
  %.01013.i.i.i.1 = phi ptr [ %i.gj, %bb.ag ], [ %i.ep, %.lr.ph.i.i.preheader.i.1 ] ; 2 uses
  %.01112.i.i.i.1 = phi ptr [ %i.gk, %bb.ag ], [ %i.gc, %.lr.ph.i.i.preheader.i.1 ] ; 2 uses
  %i.gd = load i16, ptr %.01013.i.i.i.1, align 2
  %i.ge = load i8, ptr %.01112.i.i.i.1, align 1
  %i.gf = zext i8 %i.ge to i16
  %.not.i.i.i46.1 = icmp eq i16 %i.gd, %i.gf
  br i1 %.not.i.i.i46.1, label %bb.ag, label %.loopexit.i.1

.loopexit.i.1:                                    ; preds = %.lr.ph.i.i.i.1, %.loopexit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = icmp eq i64 %i.gh, %i.es
  br i1 %i.gi, label %.lr.ph.i.i.preheader.i.2, label %.loopexit

bb.ag:                                            ; preds = %.lr.ph.i.i.i.1
  %i.gj = getelementptr inbounds nuw i8, ptr %.01013.i.i.i.1, i64 2 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.01112.i.i.i.1, i64 1
  %.not16.i.i.i.1 = icmp ult ptr %i.gj, %i.fj
  br i1 %.not16.i.i.i.1, label %.lr.ph.i.i.i.1, label %_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread, !llvm.loop !169

.lr.ph.i.i.preheader.i.2:                         ; preds = %.loopexit.i.1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.gm = load ptr, ptr %i.gl, align 8
  br label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.ah, %.lr.ph.i.i.preheader.i.2
  %.01013.i.i.i.2 = phi ptr [ %i.gq, %bb.ah ], [ %i.ep, %.lr.ph.i.i.preheader.i.2 ] ; 2 uses
  %.01112.i.i.i.2 = phi ptr [ %i.gr, %bb.ah ], [ %i.gm, %.lr.ph.i.i.preheader.i.2 ] ; 2 uses
  %i.gn = load i16, ptr %.01013.i.i.i.2, align 2
  %i.go = load i8, ptr %.01112.i.i.i.2, align 1
  %i.gp = zext i8 %i.go to i16
  %.not.i.i.i46.2 = icmp eq i16 %i.gn, %i.gp
  br i1 %.not.i.i.i46.2, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %.lr.ph.i.i.i.2
  %i.gq = getelementptr inbounds nuw i8, ptr %.01013.i.i.i.2, i64 2 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.01112.i.i.i.2, i64 1
  %.not16.i.i.i.2 = icmp ult ptr %i.gq, %i.fj
  br i1 %.not16.i.i.i.2, label %.lr.ph.i.i.i.2, label %_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread, !llvm.loop !169

_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread: ; preds = %bb.af, %bb.ag, %bb.ah, %.lr.ph.i.us.preheader, %.loopexit.i.us, %.loopexit.i.us.1, %bb.ac, %bb.ad, %bb.ae
  %.sroa.4.7.in.i = phi ptr [ %.sroa.9.0..sroa_idx.i, %bb.ae ], [ %.sroa.9.0..sroa_idx.i, %.loopexit.i.us.1 ], [ %i.aw, %bb.ac ], [ %.sroa.6.0..sroa_idx.i43, %bb.ad ], [ %i.aw, %.lr.ph.i.us.preheader ], [ %.sroa.6.0..sroa_idx.i43, %.loopexit.i.us ], [ %.sroa.9.0..sroa_idx.i, %bb.ah ], [ %.sroa.6.0..sroa_idx.i43, %bb.ag ], [ %i.aw, %bb.af ]
  %.sroa.4.7.i = load i64, ptr %.sroa.4.7.in.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 72) #17
  br label %.critedge37

.loopexit:                                        ; preds = %.lr.ph.i.i.i.2, %.loopexit.i.1, %.loopexit.i.us.1, %.lr.ph267.i.2, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %.sroa.087.1.i, ptr %3, align 8
  %i.gs = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 84, ptr nonnull %3, i64 1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.gt, ptr noundef null) #14 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 72) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !170
  br label %bb.ai

.critedge37:                                      ; preds = %_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread, %bb.e
  %.0113 = phi i64 [ %.sroa.4.7.i, %_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread ], [ 0, %bb.e ]
  store i8 1, ptr %0, align 8, !alias.scope !173
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0, ptr %i.gv, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.0113, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread, %.critedge37, %.loopexit, %bb.d, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit39.thread, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit38
  ret void
}

declare ptr @_ZN2v88internal7Factory31NewJSArrayBufferAndBackingStoreEmNS0_15InitializedFlagENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory15NewJSTypedArrayENS0_17ExternalArrayTypeENS0_12DirectHandleINS0_13JSArrayBufferEEEmmb(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef %0, ptr %1, i8 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 3 uses
  %4 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 3 uses
  %6 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %.critedge, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n acquire, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = and i16 %i.r, -121
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %.critedge41, label %.critedge

.critedge41:                                      ; preds = %bb.b
  tail call void @_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(32) %i.c, i64 %i.l, i32 noundef 4)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(32) %i.c, i64 %i.v, i32 noundef 4)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %.critedge41
  %i.ab = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #14
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %.critedge41, %bb.c
  %.0.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.x, %.critedge41 ] ; 3 uses
  %i.ac = ptrtoint ptr %.0.i.i to i64
  %i.ad = add i64 %i.ac, 8
  %i.ae = inttoptr i64 %i.ad to ptr
  store ptr %i.ae, ptr %i.w, align 8
  store i64 %i.l, ptr %.0.i.i, align 8
  br label %bb.ah

.critedge:                                        ; preds = %bb.b, %bb.a
  %.not = icmp eq i8 %2, 5
  br i1 %.not, label %bb.e, label %bb.d, !prof !5

bb.d:                                             ; preds = %.critedge
  %i.af = and i64 %i.a, -262144
  %i.ag = inttoptr i64 %i.af to ptr
  %.sroa.0.0.copyload.i44 = load i64, ptr %i.ag, align 262144
  %i.ah = and i64 %.sroa.0.0.copyload.i44, 24
  %.not127 = icmp eq i64 %i.ah, 0
  %spec.select = select i1 %.not127, i8 1, i8 %2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %.0 = phi i8 [ %spec.select, %bb.d ], [ 5, %.critedge ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aj = load i32, ptr %i.ai, align 4            ; 4 uses
  %i.ak = load i64, ptr %1, align 8
  %i.al = add i64 %i.ak, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.ao = add i64 %i.an, 11
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i16, ptr %i.ap monotonic, align 2
  %i.ar = and i16 %i.aq, 8
  %.not128 = icmp eq i16 %i.ar, 0
  br i1 %.not128, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj, i8 noundef zeroext %.0, i8 0) #14 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.g, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit, !prof !5
end_hunk_0
