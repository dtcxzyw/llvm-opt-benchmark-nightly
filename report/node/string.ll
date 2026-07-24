inline.NumInlined: 4553
inline.NumDeleted: 1209
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2v88internal6String12IsIdentifierEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c acquire, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2 ; 3 uses
  %i.h = and i16 %i.g, -127
  %.not = icmp eq i16 %i.h, 1
  br i1 %.not, label %bb.b, label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.i = and i16 %i.g, 7
  %i.j = icmp eq i16 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u acquire, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = tail call ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef %0, ptr nonnull %1, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

bb.e:                                             ; preds = %.thread, %bb.b
  %.sroa.022.0 = phi i16 [ %i.y, %.thread ], [ %i.g, %bb.b ]
  %.sroa.012.1.i = phi i64 [ %i.s, %.thread ], [ %i.a, %bb.b ] ; 2 uses
  %i.aa = and i16 %.sroa.022.0, -121
  %i.ab = icmp eq i16 %i.aa, 5
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = add i64 %.sroa.012.1.i, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.012.2.i = phi i64 [ %i.af, %bb.f ], [ %.sroa.012.1.i, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.h:                                             ; preds = %bb.g
  %i.al = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #25
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.al, %bb.h ], [ %i.ah, %bb.g ] ; 3 uses
  %i.am = ptrtoint ptr %.0.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.ag, align 8
  store i64 %.sroa.012.2.i, ptr %.0.i, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit: ; preds = %bb.a, %bb.d, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.027.1 = phi ptr [ %i.z, %bb.d ], [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ap = load i64, ptr %.sroa.027.1, align 8
  %i.aq = add i64 %i.ap, -1
  %i.ar = inttoptr i64 %i.aq to ptr               ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4, !noalias !303
  %i.au = load atomic volatile i64, ptr %i.ar acquire, align 8, !noalias !306
  %i.av = add i64 %i.au, 11
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i16, ptr %i.aw monotonic, align 2, !noalias !306
  %i.ay = and i16 %i.ax, 15
  switch i16 %i.ay, label %bb.s [
    i16 8, label %bb.i
    i16 0, label %bb.j
    i16 9, label %bb.t
    i16 1, label %bb.t
    i16 10, label %bb.k
    i16 2, label %bb.o
    i16 11, label %bb.t
    i16 3, label %bb.t
    i16 13, label %bb.t
    i16 5, label %bb.t
  ]

bb.i:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.j:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.k:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !309
  %i.bd = inttoptr i64 %i.bc to ptr               ; 6 uses
  %i.be = load atomic volatile i64, ptr %i.ar monotonic, align 8, !noalias !309
  %i.bf = add i64 %i.be, 11
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i16, ptr %i.bg monotonic, align 2, !noalias !309
  %i.bi = and i16 %i.bh, 16
  %.not.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.bd, align 8, !noalias !309
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !309
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) #25, !noalias !309, !inline_history !49
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #25, !noalias !309
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !309
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bp = load ptr, ptr %i.bd, align 8, !noalias !309
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !309
  %i.bs = tail call noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #25, !noalias !309, !inline_history !49
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.o:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !314
  %i.bv = inttoptr i64 %i.bu to ptr               ; 6 uses
  %i.bw = load atomic volatile i64, ptr %i.ar monotonic, align 8, !noalias !314
  %i.bx = add i64 %i.bw, 11
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load atomic volatile i16, ptr %i.by monotonic, align 2, !noalias !314
  %i.ca = and i16 %i.bz, 16
  %.not.i6 = icmp eq i16 %i.ca, 0
  br i1 %.not.i6, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = load ptr, ptr %i.bv, align 8, !noalias !314
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !314
  %i.ce = tail call noundef zeroext i1 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.bv) #25, !noalias !314, !inline_history !53
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #25, !noalias !314
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !314
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ch = load ptr, ptr %i.bv, align 8, !noalias !314
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !314
  %i.ck = tail call noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #25, !noalias !314, !inline_history !53
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.s:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #26, !noalias !317
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit: ; preds = %bb.q, %bb.m, %bb.r, %bb.n, %bb.j, %bb.i
  %.sroa.038.sroa.0.0.ph = phi ptr [ %i.cg, %bb.q ], [ %i.bo, %bb.m ], [ %i.ck, %bb.r ], [ %i.bs, %bb.n ], [ %i.ba, %bb.j ], [ %i.az, %bb.i ]
  %.sroa.038.sroa.8.0.ph = phi i32 [ 2, %bb.q ], [ 1, %bb.m ], [ 2, %bb.r ], [ 1, %bb.n ], [ 2, %bb.j ], [ 1, %bb.i ]
  store ptr %.sroa.038.sroa.0.0.ph, ptr %3, align 8
  %.sroa.038.sroa.7.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.at, ptr %.sroa.038.sroa.7.0..sroa_idx84, align 8
  %.sroa.038.sroa.8.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.038.sroa.8.0.ph, ptr %.sroa.038.sroa.8.0..sroa_idx90, align 4
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.t:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull align 8 poison)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %bb.t, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = icmp eq i32 %i.cm, 1
  %i.co = load ptr, ptr %3, align 8               ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cq = load i32, ptr %i.cp, align 8            ; 4 uses
  %4 = zext i32 %i.cq to i64                      ; 2 uses
  %5 = icmp eq i32 %i.cq, 0                       ; 2 uses
  br i1 %i.cn, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  br i1 %5, label %_ZN2v88internal12_GLOBAL__N_118IsIdentifierVectorIKhEEbNS_4base6VectorIT_EE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = load i8, ptr %i.co, align 1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = trunc i8 %i.cu to i1
  br i1 %i.cv, label %.preheader.i, label %_ZN2v88internal12_GLOBAL__N_118IsIdentifierVectorIKhEEbNS_4base6VectorIT_EE.exit

.preheader.i:                                     ; preds = %bb.v
  %i.cw = icmp eq i32 %i.cq, 1
  br i1 %i.cw, label %_ZN2v88internal12_GLOBAL__N_118IsIdentifierVectorIKhEEbNS_4base6VectorIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.dd, %.lr.ph.i ], [ 1, %.preheader.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 %.048.i
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = and i8 %i.db, 2
  %.not.not.i.not = icmp ne i8 %i.dc, 0           ; 2 uses
  %i.dd = add nuw i64 %.048.i, 1                  ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.dd, %4
  %or.cond.not = select i1 %.not.not.i.not, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_118IsIdentifierVectorIKhEEbNS_4base6VectorIT_EE.exit, !llvm.loop !318

bb.w:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  br i1 %5, label %_ZN2v88internal12_GLOBAL__N_118IsIdentifierVectorIKhEEbNS_4base6VectorIT_EE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = load i16, ptr %i.co, align 2            ; 3 uses
  %i.df = icmp ult i16 %i.de, 256
  br i1 %i.df, label %bb.y, label %_ZN2v88internal17IsIdentifierStartEj.exit.i

bb.y:                                             ; preds = %bb.x
  %i.dg = zext nneg i16 %i.de to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = trunc i8 %i.di to i1
  br i1 %i.dj, label %.preheader.i11, label %_ZN2v88internal12_GLOBAL__N_118IsIdentifierVectorIKhEEbNS_4base6VectorIT_EE.exit

_ZN2v88internal17IsIdentifierStartEj.exit.i:      ; preds = %bb.x
  %i.dk = zext i16 %i.de to i32
  %i.dl = call noundef zeroext i1 @_ZN2v88internal21IsIdentifierStartSlowEj(i32 noundef %i.dk) #25
  br i1 %i.dl, label %.preheader.i11, label %_ZN2v88internal12_GLOBAL__N_118IsIdentifierVectorIKhEEbNS_4base6VectorIT_EE.exit

.preheader.i11:                                   ; preds = %_ZN2v88internal17IsIdentifierStartEj.exit.i, %bb.y
  %i.dm = icmp eq i32 %i.cq, 1
  br i1 %i.dm, label %_ZN2v88internal12_GLOBAL__N_118IsIdentifierVectorIKhEEbNS_4base6VectorIT_EE.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.preheader.i11, %bb.aa
  %.049.i = phi i64 [ %i.dw, %bb.aa ], [ 1, %.preheader.i11 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %.049.i
  %i.do = load i16, ptr %i.dn, align 2            ; 3 uses
  %i.dp = icmp ult i16 %i.do, 256
  br i1 %i.dp, label %bb.z, label %_ZN2v88internal16IsIdentifierPartEj.exit.i

bb.z:                                             ; preds = %.lr.ph.i12
  %i.dq = zext nneg i16 %i.do to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = and i8 %i.ds, 2
  %.not.i14 = icmp eq i8 %i.dt, 0
  br i1 %.not.i14, label %_ZN2v88internal12_GLOBAL__N_118IsIdentifierVectorIKhEEbNS_4base6VectorIT_EE.exit, label %bb.aa

_ZN2v88internal16IsIdentifierPartEj.exit.i:       ; preds = %.lr.ph.i12
  %i.du = zext i16 %i.do to i32
  %i.dv = call noundef zeroext i1 @_ZN2v88internal20IsIdentifierPartSlowEj(i32 noundef %i.du) #25
  br i1 %i.dv, label %bb.aa, label %_ZN2v88internal12_GLOBAL__N_118IsIdentifierVectorIKhEEbNS_4base6VectorIT_EE.exit

bb.aa:                                            ; preds = %_ZN2v88internal16IsIdentifierPartEj.exit.i, %bb.z
  %i.dw = add nuw i64 %.049.i, 1                  ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.dw, %4
  br i1 %exitcond.not.i13, label %_ZN2v88internal12_GLOBAL__N_118IsIdentifierVectorIKhEEbNS_4base6VectorIT_EE.exit, label %.lr.ph.i12, !llvm.loop !319

_ZN2v88internal12_GLOBAL__N_118IsIdentifierVectorIKhEEbNS_4base6VectorIT_EE.exit: ; preds = %bb.aa, %_ZN2v88internal16IsIdentifierPartEj.exit.i, %bb.z, %.lr.ph.i, %.preheader.i11, %_ZN2v88internal17IsIdentifierStartEj.exit.i, %bb.y, %bb.w, %.preheader.i, %bb.v, %bb.u
  %i.dx = phi i1 [ true, %.preheader.i11 ], [ false, %bb.u ], [ false, %bb.v ], [ true, %.preheader.i ], [ %.not.not.i.not, %.lr.ph.i ], [ false, %bb.w ], [ false, %_ZN2v88internal17IsIdentifierStartEj.exit.i ], [ false, %bb.y ], [ false, %bb.z ], [ false, %_ZN2v88internal16IsIdentifierPartEj.exit.i ], [ true, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 %i.dx
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal6String20ComputeAndSetRawHashEv(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !alias.scope !320
  %i.a = call noundef i32 @_ZN2v88internal6String20ComputeAndSetRawHashERKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !9, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8
  br i1 %i.d, label %bb.b, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #25
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal6String20ComputeAndSetRawHashERKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10624
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 8, !range !9, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 55464
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = add i64 %i.j, -55464
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 648
  br label %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit

_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %i.m, %bb.d ], [ %i.f, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1432
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.s = ptrtoint ptr %0 to i64
  %i.t = or disjoint i64 %i.s, 1
  %i.u = load atomic volatile i64, ptr %0 acquire, align 8
  %i.v = add i64 %i.u, 11
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i16, ptr %i.w monotonic, align 2 ; 2 uses
  %i.y = and i16 %i.x, -121
  %i.z = icmp eq i16 %i.y, 3
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = ashr i64 %i.ab, 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = add i64 %i.ae, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i64, ptr %i.ag acquire, align 8
  %i.ai = add i64 %i.ah, 11
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i16, ptr %i.aj monotonic, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit
  %.sroa.040.0 = phi i16 [ %i.ak, %bb.e ], [ %i.x, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit ] ; 3 uses
  %.sroa.044.0 = phi i64 [ %i.ae, %bb.e ], [ %i.t, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit ] ; 3 uses
  %.026 = phi i64 [ %i.ac, %bb.e ], [ 0, %_ZNK2v88internal16HeapObjectLayout21EarlyGetReadOnlyRootsEv.exit ] ; 2 uses
  %i.al = and i16 %.sroa.040.0, -121
  %i.am = icmp eq i16 %i.al, 1
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = add i64 %.sroa.044.0, -1
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = load atomic volatile i64, ptr %i.ao acquire, align 8
  %i.aq = add i64 %i.ap, 11
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i16, ptr %i.ar monotonic, align 2
  %i.at = and i16 %i.as, -121
  %i.au = icmp eq i16 %i.at, 1
  br i1 %i.au, label %_ZNK2v88internal6String6IsFlatEv.exit, label %_ZNK2v88internal6String6IsFlatEv.exit.thread

_ZNK2v88internal6String6IsFlatEv.exit:            ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = add i64 %i.aw, -1
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZNK2v88internal6String6IsFlatEv.exit.thread, label %bb.h

_ZNK2v88internal6String6IsFlatEv.exit.thread:     ; preds = %bb.g, %_ZNK2v88internal6String6IsFlatEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = add i64 %i.bd, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i64, ptr %i.bf acquire, align 8
  %i.bh = add i64 %i.bg, 11
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i16, ptr %i.bi monotonic, align 2
  br label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal6String6IsFlatEv.exit.thread, %_ZNK2v88internal6String6IsFlatEv.exit, %bb.f
  %.sroa.040.1 = phi i16 [ %i.bj, %_ZNK2v88internal6String6IsFlatEv.exit.thread ], [ %.sroa.040.0, %_ZNK2v88internal6String6IsFlatEv.exit ], [ %.sroa.040.0, %bb.f ] ; 2 uses
  %.sroa.044.1 = phi i64 [ %i.bd, %_ZNK2v88internal6String6IsFlatEv.exit.thread ], [ %.sroa.044.0, %_ZNK2v88internal6String6IsFlatEv.exit ], [ %.sroa.044.0, %bb.f ] ; 2 uses
  %i.bk = and i16 %.sroa.040.1, -121
  %i.bl = icmp eq i16 %i.bk, 5
  br i1 %i.bl, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bm = add i64 %.sroa.044.1, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = add i64 %i.bp, -1
  %i.br = inttoptr i64 %i.bq to ptr               ; 4 uses
  %i.bs = load atomic volatile i64, ptr %i.br acquire, align 8
  %i.bt = add i64 %i.bs, 11
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load atomic volatile i16, ptr %i.bu monotonic, align 2
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cc = load atomic i32, ptr %i.cb acquire, align 8 ; 3 uses
  %i.cd = and i32 %i.cc, 3
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.k, label %_ZN2v88internal4Name7RawHashEv.exit, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.cf = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.br, i32 noundef %i.cc)
  br label %_ZN2v88internal4Name7RawHashEv.exit

_ZN2v88internal4Name7RawHashEv.exit:              ; preds = %bb.j, %bb.k
  %.0.i27 = phi i32 [ %i.cf, %bb.k ], [ %i.cc, %bb.j ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store atomic i32 %.0.i27, ptr %i.cg monotonic, align 8
  br label %bb.aa

bb.l:                                             ; preds = %bb.i, %bb.h
  %.sroa.040.2 = phi i16 [ %i.bv, %bb.i ], [ %.sroa.040.1, %bb.h ]
  %.sroa.044.2 = phi i64 [ %i.bp, %bb.i ], [ %.sroa.044.1, %bb.h ] ; 4 uses
  %i.ch = and i16 %.sroa.040.2, 8
  %.not = icmp eq i16 %i.ch, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cj = load i32, ptr %i.ci, align 4            ; 11 uses
  %i.ck = icmp ugt i32 %i.cj, 16383               ; 2 uses
  br i1 %.not, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cl = shl i32 %i.cj, 2
  %i.cm = or disjoint i32 %i.cl, 2
  br label %_ZN2v88internal12_GLOBAL__N_110HashStringIhEEjNS0_6TaggedINS0_6StringEEEmjNS0_8HashSeedERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.o:                                             ; preds = %bb.m
  %i.cn = add i64 %.sroa.044.2, -1
  %i.co = inttoptr i64 %i.cn to ptr               ; 5 uses
  %i.cp = load atomic volatile i64, ptr %i.co monotonic, align 8
  %i.cq = add i64 %i.cp, 11
end_hunk_0
