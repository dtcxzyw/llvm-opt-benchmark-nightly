inline.NumInlined: 14197
inline.NumDeleted: 4685
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK2v86String9WriteUtf8EPNS_7IsolateEPciPii:bb.a
_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit: ; preds = %bb.a, %bb.d, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.056.1 = phi ptr [ %i.ab, %bb.d ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  %i.ar = load i64, ptr %.sroa.056.1, align 8
  %i.as = add i64 %i.ar, -1
  %i.at = inttoptr i64 %i.as to ptr               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44, !noalias !183
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !186, !noalias !183
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load i32, ptr %i.au, align 4, !noalias !189
  %i.aw = load atomic volatile i64, ptr %i.at acquire, align 8, !noalias !192
  %i.ax = add i64 %i.aw, 11
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load atomic volatile i16, ptr %i.ay monotonic, align 2, !noalias !192
  %i.ba = and i16 %i.az, 15
  switch i16 %i.ba, label %bb.s [
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
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.j:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.k:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !noalias !195
  %i.bf = inttoptr i64 %i.be to ptr               ; 5 uses
  %i.bg = load atomic volatile i64, ptr %i.at monotonic, align 8, !noalias !195
  %i.bh = add i64 %i.bg, 11
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i16, ptr %i.bi monotonic, align 2, !noalias !195
  %i.bk = and i16 %i.bj, 16
  %.not.i = icmp eq i16 %i.bk, 0
  br i1 %.not.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.bf, align 8, !noalias !195
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !195
  %i.bo = tail call noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #44, !noalias !195, !inline_history !152
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !195
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.br = load ptr, ptr %i.bf, align 8, !noalias !195
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !195
  %i.bu = tail call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #44, !noalias !195, !inline_history !152
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.o:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !200
  %i.bx = inttoptr i64 %i.bw to ptr               ; 5 uses
  %i.by = load atomic volatile i64, ptr %i.at monotonic, align 8, !noalias !200
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2, !noalias !200
  %i.cc = and i16 %i.cb, 16
  %.not.i17 = icmp eq i16 %i.cc, 0
  br i1 %.not.i17, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.bx, align 8, !noalias !200
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !200
  %i.cg = tail call noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.bx) #44, !noalias !200, !inline_history !156
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !200
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.cj = load ptr, ptr %i.bx, align 8, !noalias !200
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !200
  %i.cm = tail call noundef ptr %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #44, !noalias !200, !inline_history !156
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.s:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68) #45, !noalias !203
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit: ; preds = %bb.q, %bb.m, %bb.r, %bb.n, %bb.j, %bb.i
  %.sroa.060.sroa.0.0.ph = phi ptr [ %i.ci, %bb.q ], [ %i.bq, %bb.m ], [ %i.cm, %bb.r ], [ %i.bu, %bb.n ], [ %i.bc, %bb.j ], [ %i.bb, %bb.i ]
  %.sroa.060.sroa.8.0.ph = phi i32 [ 2, %bb.q ], [ 1, %bb.m ], [ 2, %bb.r ], [ 1, %bb.n ], [ 2, %bb.j ], [ 1, %bb.i ]
  store ptr %.sroa.060.sroa.0.0.ph, ptr %8, align 8
  %.sroa.060.sroa.7.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.av, ptr %.sroa.060.sroa.7.0..sroa_idx100, align 8
  %.sroa.060.sroa.8.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %.sroa.060.sroa.8.0.ph, ptr %.sroa.060.sroa.8.0..sroa_idx106, align 4
  %.sroa.060.sroa.9.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %7, ptr %.sroa.060.sroa.9.0..sroa_idx112, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.t:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %8, ptr noundef nonnull align 4 dereferenceable(16) %i.at, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(16) %6) #44
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit, %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 8, !range !5, !noundef !6
  %i.cp = trunc nuw i8 %i.co to i1
  store i8 0, ptr %i.cn, align 8
  br i1 %i.cp, label %bb.u, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.u:                                             ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.cq = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq) #44
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44, !noalias !183
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = icmp eq i32 %i.cs, 1
  %i.cu = load ptr, ptr %8, align 8               ; 16 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cw = load i32, ptr %i.cv, align 8            ; 18 uses
  %i.cx = zext i32 %i.cw to i64                   ; 10 uses
  %i.cy = and i32 %5, 2
  %.not.i19 = icmp eq i32 %i.cy, 0                ; 9 uses
  br i1 %i.ct, label %bb.w, label %bb.al

bb.w:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.cz = icmp sgt i32 %i.cw, -1
  br i1 %i.cz, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.x, !prof !14

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.422) #45
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.w
  %.not191.i = icmp eq i32 %i.cw, 0
  br i1 %.not191.i, label %.thread144.i, label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %.not125.i = icmp eq i32 %3, -1
  %i.da = ptrtoint ptr %2 to i64
  br i1 %.not125.i, label %.lr.ph.us.i.preheader, label %.lr.ph176.split.i

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph176.i
  %min.iters.check274 = icmp ult i32 %i.cw, 8
  br i1 %min.iters.check274, label %.lr.ph.us.i.preheader293, label %vector.ph275

vector.ph275:                                     ; preds = %.lr.ph.us.i.preheader
  %n.vec277 = and i64 %i.cx, 2147483640           ; 3 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph275
  %index279 = phi i64 [ 0, %vector.ph275 ], [ %index.next284, %vector.body278 ] ; 2 uses
  %vec.phi280 = phi <4 x i32> [ zeroinitializer, %vector.ph275 ], [ %i.df, %vector.body278 ]
  %vec.phi281 = phi <4 x i32> [ zeroinitializer, %vector.ph275 ], [ %i.dg, %vector.body278 ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 %index279 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %wide.load282 = load <4 x i8>, ptr %i.db, align 1
  %wide.load283 = load <4 x i8>, ptr %i.dc, align 1
  %i.dd = zext <4 x i8> %wide.load282 to <4 x i32>
  %i.de = zext <4 x i8> %wide.load283 to <4 x i32>
  %i.df = or <4 x i32> %vec.phi280, %i.dd         ; 2 uses
  %i.dg = or <4 x i32> %vec.phi281, %i.de         ; 2 uses
  %index.next284 = add nuw i64 %index279, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.dh, label %middle.block285, label %vector.body278, !llvm.loop !204

middle.block285:                                  ; preds = %vector.body278
  %bin.rdx286 = or <4 x i32> %i.dg, %i.df
  %i.di = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx286) ; 2 uses
  %cmp.n287 = icmp eq i64 %n.vec277, %i.cx
  br i1 %cmp.n287, label %._crit_edge.us.i, label %.lr.ph.us.i.preheader293

.lr.ph.us.i.preheader293:                         ; preds = %.lr.ph.us.i.preheader, %middle.block285
  %indvars.iv208.i.ph = phi i64 [ 0, %.lr.ph.us.i.preheader ], [ %n.vec277, %middle.block285 ]
  %.0101167.us.i.ph = phi i32 [ 0, %.lr.ph.us.i.preheader ], [ %i.di, %middle.block285 ]
  br label %.lr.ph.us.i

._crit_edge.us.i:                                 ; preds = %.lr.ph.us.i, %middle.block285
  %.lcssa263 = phi i32 [ %i.di, %middle.block285 ], [ %12, %.lr.ph.us.i ]
  %i.dj = and i32 %.lcssa263, 128
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %._crit_edge.us.thread.i, label %.lr.ph171.us.i.preheader

.lr.ph171.us.i.preheader:                         ; preds = %._crit_edge.us.i
  %xtraiter306 = and i64 %i.cx, 1
  %i.dl = icmp eq i32 %i.cw, 1
  br i1 %i.dl, label %.lr.ph171.us.i.epil.preheader, label %.lr.ph171.us.i.preheader.new

.lr.ph171.us.i.preheader.new:                     ; preds = %.lr.ph171.us.i.preheader
  %unroll_iter = and i64 %i.cx, 2147483646
  br label %.lr.ph171.us.i

.lr.ph171.us.i:                                   ; preds = %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.1, %.lr.ph171.us.i.preheader.new
  %indvars.iv213.i = phi i64 [ 0, %.lr.ph171.us.i.preheader.new ], [ %indvars.iv.next214.i.1, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.1 ] ; 3 uses
  %.195170.us.i = phi ptr [ %2, %.lr.ph171.us.i.preheader.new ], [ %i.ec, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph171.us.i.preheader.new ], [ %niter.next.1, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.1 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv213.i
  %i.dn = load i8, ptr %i.dm, align 1             ; 4 uses
  %i.do = icmp sgt i8 %i.dn, -1
  br i1 %i.do, label %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph171.us.i
  %i.dp = lshr i8 %i.dn, 6
  %i.dq = or disjoint i8 %i.dp, -64
  %i.dr = and i8 %i.dn, -65
  %i.ds = getelementptr inbounds nuw i8, ptr %.195170.us.i, i64 1
  store i8 %i.dr, ptr %i.ds, align 1
  br label %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i

_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i:    ; preds = %bb.y, %.lr.ph171.us.i
  %.sink.i.us.i = phi i8 [ %i.dq, %bb.y ], [ %i.dn, %.lr.ph171.us.i ]
  %.0.i.us.i = phi i64 [ 2, %bb.y ], [ 1, %.lr.ph171.us.i ]
  store i8 %.sink.i.us.i, ptr %.195170.us.i, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.195170.us.i, i64 %.0.i.us.i ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv213.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dw = load i8, ptr %i.dv, align 1             ; 4 uses
  %i.dx = icmp sgt i8 %i.dw, -1
  br i1 %i.dx, label %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.1, label %bb.z

bb.z:                                             ; preds = %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i
  %i.dy = lshr i8 %i.dw, 6
  %i.dz = or disjoint i8 %i.dy, -64
  %i.ea = and i8 %i.dw, -65
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store i8 %i.ea, ptr %i.eb, align 1
  br label %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.1

_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.1:  ; preds = %bb.z, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i
  %.sink.i.us.i.1 = phi i8 [ %i.dz, %bb.z ], [ %i.dw, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i ]
  %.0.i.us.i.1 = phi i64 [ 2, %bb.z ], [ 1, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i ]
  store i8 %.sink.i.us.i.1, ptr %i.dt, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.0.i.us.i.1 ; 3 uses
  %indvars.iv.next214.i.1 = add nuw nsw i64 %indvars.iv213.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph171.us.i, !llvm.loop !205

._crit_edge.us.thread.i:                          ; preds = %._crit_edge.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull readonly align 1 %i.cu, i64 %i.cx, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx
  br label %.loopexit.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader293, %.lr.ph.us.i
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i, %.lr.ph.us.i ], [ %indvars.iv208.i.ph, %.lr.ph.us.i.preheader293 ] ; 2 uses
  %.0101167.us.i = phi i32 [ %12, %.lr.ph.us.i ], [ %.0101167.us.i.ph, %.lr.ph.us.i.preheader293 ]
  %9 = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv208.i
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %.0101167.us.i, %11                ; 2 uses
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 2 uses
  %exitcond212.not.i = icmp eq i64 %indvars.iv.next209.i, %i.cx
  br i1 %exitcond212.not.i, label %._crit_edge.us.i, label %.lr.ph.us.i, !llvm.loop !206

.lr.ph176.split.i:                                ; preds = %.lr.ph176.i, %.loopexit164.i
  %.094175.i = phi ptr [ %.397.i, %.loopexit164.i ], [ %2, %.lr.ph176.i ] ; 8 uses
  %.0106174.i = phi i32 [ %.sroa.speculated.i, %.loopexit164.i ], [ 0, %.lr.ph176.i ] ; 5 uses
  %i.ee = ptrtoint ptr %.094175.i to i64
  %.neg.i = sub i64 %i.da, %i.ee
  %.neg126.i = trunc i64 %.neg.i to i32
  %i.ef = add i32 %3, %.neg126.i                  ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 3
  br i1 %i.eg, label %.thread.i, label %.thread144.i

.thread.i:                                        ; preds = %.lr.ph176.split.i
  %i.eh = add nsw i32 %i.ef, -2
  %i.ei = lshr i32 %i.eh, 1
  %i.ej = add nsw i32 %i.ei, %.0106174.i          ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.ej, i32 %i.cw) ; 5 uses
  %i.ek = icmp slt i32 %.0106174.i, %.sroa.speculated.i
  %i.el = sext i32 %.0106174.i to i64             ; 9 uses
  br i1 %i.ek, label %.lr.ph.preheader.i, label %._crit_edge.thread.i

.lr.ph.preheader.i:                               ; preds = %.thread.i
  %wide.trip.count.i = sext i32 %.sroa.speculated.i to i64 ; 4 uses
  %i.em = sub nsw i64 %wide.trip.count.i, %i.el   ; 4 uses
  %min.iters.check = icmp ult i64 %i.em, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.em, -8                      ; 3 uses
  %i.en = add nsw i64 %n.vec, %i.el
  %invariant.gep = getelementptr i8, ptr %i.cu, i64 %i.el
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.er, %vector.body ]
  %vec.phi271 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.es, %vector.body ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load = load <4 x i8>, ptr %gep, align 1
  %wide.load272 = load <4 x i8>, ptr %i.eo, align 1
  %i.ep = zext <4 x i8> %wide.load to <4 x i32>
  %i.eq = zext <4 x i8> %wide.load272 to <4 x i32>
  %i.er = or <4 x i32> %vec.phi, %i.ep            ; 2 uses
  %i.es = or <4 x i32> %vec.phi271, %i.eq         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.es, %i.er
  %i.eu = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.em, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.el, %.lr.ph.preheader.i ], [ %i.en, %middle.block ]
  %.0101167.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.eu, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %.lcssa264 = phi i32 [ %i.eu, %middle.block ], [ %i.fk, %.lr.ph.i ]
  %i.ev = and i32 %.lcssa264, 128
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %._crit_edge.thread.i, label %.lr.ph171.i.preheader

.lr.ph171.i.preheader:                            ; preds = %._crit_edge.i
  %xtraiter = and i64 %i.em, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph171.i.prol.loopexit, label %.lr.ph171.i.prol

.lr.ph171.i.prol:                                 ; preds = %.lr.ph171.i.preheader
  %i.ex = getelementptr inbounds i8, ptr %i.cu, i64 %i.el
  %i.ey = load i8, ptr %i.ex, align 1             ; 4 uses
  %i.ez = icmp sgt i8 %i.ey, -1
  br i1 %i.ez, label %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.prol, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph171.i.prol
  %i.fa = lshr i8 %i.ey, 6
  %i.fb = or disjoint i8 %i.fa, -64
  %i.fc = and i8 %i.ey, -65
  %i.fd = getelementptr inbounds nuw i8, ptr %.094175.i, i64 1
  store i8 %i.fc, ptr %i.fd, align 1
  br label %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.prol

_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.prol:  ; preds = %bb.aa, %.lr.ph171.i.prol
  %.sink.i.i.prol = phi i8 [ %i.fb, %bb.aa ], [ %i.ey, %.lr.ph171.i.prol ]
  %.0.i.i20.prol = phi i64 [ 2, %bb.aa ], [ 1, %.lr.ph171.i.prol ]
  store i8 %.sink.i.i.prol, ptr %.094175.i, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %.094175.i, i64 %.0.i.i20.prol ; 2 uses
  %indvars.iv.next204.i.prol = add nsw i64 %i.el, 1
  br label %.lr.ph171.i.prol.loopexit

.lr.ph171.i.prol.loopexit:                        ; preds = %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.prol, %.lr.ph171.i.preheader
  %.lcssa300.unr = phi ptr [ poison, %.lr.ph171.i.preheader ], [ %i.fe, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.prol ]
  %indvars.iv203.i.unr = phi i64 [ %i.el, %.lr.ph171.i.preheader ], [ %indvars.iv.next204.i.prol, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.prol ]
  %.195170.i.unr = phi ptr [ %.094175.i, %.lr.ph171.i.preheader ], [ %i.fe, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.prol ]
  %i.ff = add nsw i64 %wide.trip.count.i, -1
  %i.fg = icmp eq i64 %i.ff, %i.el
  br i1 %i.fg, label %.loopexit164.i, label %.lr.ph171.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0101167.i = phi i32 [ %i.fk, %.lr.ph.i ], [ %.0101167.i.ph, %.lr.ph.i.preheader ]
  %i.fh = getelementptr inbounds i8, ptr %i.cu, i64 %indvars.iv.i
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = zext i8 %i.fi to i32
  %i.fk = or i32 %.0101167.i, %i.fj               ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !208

._crit_edge.thread.i:                             ; preds = %.thread.i, %._crit_edge.i
  %i.fl = sub nsw i32 %.sroa.speculated.i, %.0106174.i
  %i.fm = getelementptr inbounds i8, ptr %i.cu, i64 %i.el
  %i.fn = sext i32 %i.fl to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.094175.i, ptr readonly align 1 %i.fm, i64 %i.fn, i1 false)
  %i.fo = getelementptr inbounds i8, ptr %.094175.i, i64 %i.fn
  br label %.loopexit164.i

.lr.ph171.i:                                      ; preds = %.lr.ph171.i.prol.loopexit, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.1
  %indvars.iv203.i = phi i64 [ %indvars.iv.next204.i.1, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.1 ], [ %indvars.iv203.i.unr, %.lr.ph171.i.prol.loopexit ] ; 3 uses
  %.195170.i = phi ptr [ %i.gf, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.1 ], [ %.195170.i.unr, %.lr.ph171.i.prol.loopexit ] ; 3 uses
  %i.fp = getelementptr inbounds i8, ptr %i.cu, i64 %indvars.iv203.i
  %i.fq = load i8, ptr %i.fp, align 1             ; 4 uses
  %i.fr = icmp sgt i8 %i.fq, -1
  br i1 %i.fr, label %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph171.i
  %i.fs = lshr i8 %i.fq, 6
  %i.ft = or disjoint i8 %i.fs, -64
  %i.fu = and i8 %i.fq, -65
  %i.fv = getelementptr inbounds nuw i8, ptr %.195170.i, i64 1
  store i8 %i.fu, ptr %i.fv, align 1
  br label %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i

_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i:       ; preds = %bb.ab, %.lr.ph171.i
  %.sink.i.i = phi i8 [ %i.ft, %bb.ab ], [ %i.fq, %.lr.ph171.i ]
  %.0.i.i20 = phi i64 [ 2, %bb.ab ], [ 1, %.lr.ph171.i ]
  store i8 %.sink.i.i, ptr %.195170.i, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %.195170.i, i64 %.0.i.i20 ; 3 uses
  %i.fx = getelementptr i8, ptr %i.cu, i64 %indvars.iv203.i
  %i.fy = getelementptr i8, ptr %i.fx, i64 1
  %i.fz = load i8, ptr %i.fy, align 1             ; 4 uses
  %i.ga = icmp sgt i8 %i.fz, -1
  br i1 %i.ga, label %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.1, label %bb.ac

bb.ac:                                            ; preds = %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i
  %i.gb = lshr i8 %i.fz, 6
  %i.gc = or disjoint i8 %i.gb, -64
  %i.gd = and i8 %i.fz, -65
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  store i8 %i.gd, ptr %i.ge, align 1
  br label %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.1

_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.1:     ; preds = %bb.ac, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i
  %.sink.i.i.1 = phi i8 [ %i.gc, %bb.ac ], [ %i.fz, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i ]
  %.0.i.i20.1 = phi i64 [ 2, %bb.ac ], [ 1, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i ]
  store i8 %.sink.i.i.1, ptr %i.fw, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.0.i.i20.1 ; 2 uses
  %indvars.iv.next204.i.1 = add nsw i64 %indvars.iv203.i, 2 ; 2 uses
  %exitcond207.not.i.1 = icmp eq i64 %indvars.iv.next204.i.1, %wide.trip.count.i
  br i1 %exitcond207.not.i.1, label %.loopexit164.i, label %.lr.ph171.i, !llvm.loop !205

.loopexit164.i:                                   ; preds = %.lr.ph171.i.prol.loopexit, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.1, %._crit_edge.thread.i
  %.397.i = phi ptr [ %i.fo, %._crit_edge.thread.i ], [ %.lcssa300.unr, %.lr.ph171.i.prol.loopexit ], [ %i.gf, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.i.1 ] ; 2 uses
  %i.gg = icmp slt i32 %i.ej, %i.cw
  br i1 %i.gg, label %.lr.ph176.split.i, label %.thread144.i

.thread144.i:                                     ; preds = %.loopexit164.i, %.lr.ph176.split.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %.0106.lcssa.i = phi i32 [ 0, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i ], [ %.sroa.speculated.i, %.loopexit164.i ], [ %.0106174.i, %.lr.ph176.split.i ] ; 4 uses
  %.094.lcssa.i = phi ptr [ %2, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i ], [ %.397.i, %.loopexit164.i ], [ %.094175.i, %.lr.ph176.split.i ] ; 4 uses
  %i.gh = icmp slt i32 %.0106.lcssa.i, %i.cw
  br i1 %i.gh, label %bb.ad, label %.loopexit.i

bb.ad:                                            ; preds = %.thread144.i
  %i.gi = ptrtoint ptr %.094.lcssa.i to i64
  %i.gj = ptrtoint ptr %2 to i64
  %.neg127.i = sub i64 %i.gj, %i.gi
  %.neg128.i = trunc i64 %.neg127.i to i32
  %i.gk = add i32 %3, %.neg128.i                  ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph188.i, label %.loopexit.i

.lr.ph188.i:                                      ; preds = %bb.ad
  %i.gm = sext i32 %.0106.lcssa.i to i64
  br label %_ZN7unibrow4Utf86EncodeEPcjib.exit133.i

_ZN7unibrow4Utf86EncodeEPcjib.exit133.i:          ; preds = %bb.af, %.lr.ph188.i
  %.sroa.5.0 = phi i8 [ undef, %.lr.ph188.i ], [ %.sroa.5.1, %bb.af ]
  %indvars.iv223.i = phi i64 [ %i.gm, %.lr.ph188.i ], [ %indvars.iv.next224.i, %bb.af ] ; 3 uses
  %.092186.i = phi i32 [ %i.gk, %.lr.ph188.i ], [ %i.gx, %bb.af ] ; 2 uses
  %.599185.i = phi ptr [ %.094.lcssa.i, %.lr.ph188.i ], [ %i.gw, %bb.af ] ; 4 uses
  %i.gn = getelementptr inbounds i8, ptr %i.cu, i64 %indvars.iv223.i
  %i.go = load i8, ptr %i.gn, align 1             ; 4 uses
  %i.gp = icmp sgt i8 %i.go, -1                   ; 4 uses
  %i.gq = lshr i8 %i.go, 6
  %i.gr = or disjoint i8 %i.gq, -64
  %i.gs = and i8 %i.go, -65
  %.sroa.5.1 = select i1 %i.gp, i8 %.sroa.5.0, i8 %i.gs ; 2 uses
  %.sink.i = select i1 %i.gp, i8 %i.go, i8 %i.gr
  %.0.i132.i = select i1 %i.gp, i32 1, i32 2      ; 3 uses
  %i.gt = icmp samesign ugt i32 %.0.i132.i, %.092186.i
  br i1 %i.gt, label %bb.ae, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_ZN7unibrow4Utf86EncodeEPcjib.exit133.i
  %wide.trip.count221.i = zext nneg i32 %.0.i132.i to i64
  store i8 %.sink.i, ptr %.599185.i, align 1
  br i1 %i.gp, label %bb.af, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.preheader.preheader.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.599185.i, i64 1
  store i8 %.sroa.5.1, ptr %i.gu, align 1
  br label %bb.af

bb.ae:                                            ; preds = %_ZN7unibrow4Utf86EncodeEPcjib.exit133.i
  %i.gv = trunc nsw i64 %indvars.iv223.i to i32
  br label %.loopexit.i

bb.af:                                            ; preds = %.preheader.i.1, %.preheader.preheader.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.599185.i, i64 %wide.trip.count221.i ; 2 uses
  %i.gx = sub nsw i32 %.092186.i, %.0.i132.i      ; 2 uses
  %indvars.iv.next224.i = add nsw i64 %indvars.iv223.i, 1 ; 3 uses
  %i.gy = icmp slt i64 %indvars.iv.next224.i, %i.cx
  %i.gz = icmp sgt i32 %i.gx, 0
  %i.ha = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %i.ha, label %_ZN7unibrow4Utf86EncodeEPcjib.exit133.i, label %.loopexit.loopexit.i, !llvm.loop !209

.loopexit.loopexit.i:                             ; preds = %bb.af
  %i.hb = trunc nsw i64 %indvars.iv.next224.i to i32
  br label %.loopexit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.1
  %lcmp.mod307.not = icmp eq i64 %xtraiter306, 0
  br i1 %lcmp.mod307.not, label %.loopexit.i, label %.lr.ph171.us.i.epil.preheader

.lr.ph171.us.i.epil.preheader:                    ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph171.us.i.preheader
  %indvars.iv213.i.epil.init = phi i64 [ 0, %.lr.ph171.us.i.preheader ], [ %indvars.iv.next214.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %.195170.us.i.epil.init = phi ptr [ %2, %.lr.ph171.us.i.preheader ], [ %i.ec, %.loopexit.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod309 = trunc i32 %i.cw to i1
  call void @llvm.assume(i1 %lcmp.mod309)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv213.i.epil.init
  %i.hd = load i8, ptr %i.hc, align 1             ; 4 uses
  %i.he = icmp sgt i8 %i.hd, -1
  br i1 %i.he, label %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.epil, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph171.us.i.epil.preheader
  %i.hf = lshr i8 %i.hd, 6
  %i.hg = or disjoint i8 %i.hf, -64
  %i.hh = and i8 %i.hd, -65
  %i.hi = getelementptr inbounds nuw i8, ptr %.195170.us.i.epil.init, i64 1
  store i8 %i.hh, ptr %i.hi, align 1
  br label %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.epil

_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.epil: ; preds = %bb.ag, %.lr.ph171.us.i.epil.preheader
  %.sink.i.us.i.epil = phi i8 [ %i.hg, %bb.ag ], [ %i.hd, %.lr.ph171.us.i.epil.preheader ]
  %.0.i.us.i.epil = phi i64 [ 2, %bb.ag ], [ 1, %.lr.ph171.us.i.epil.preheader ]
  store i8 %.sink.i.us.i.epil, ptr %.195170.us.i.epil.init, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.195170.us.i.epil.init, i64 %.0.i.us.i.epil
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.epil, %.loopexit.i.loopexit.unr-lcssa, %.loopexit.loopexit.i, %bb.ae, %bb.ad, %.thread144.i, %._crit_edge.us.thread.i
  %.6112.i = phi i32 [ %.0106.lcssa.i, %.thread144.i ], [ %i.gv, %bb.ae ], [ %.0106.lcssa.i, %bb.ad ], [ %i.hb, %.loopexit.loopexit.i ], [ %i.cw, %._crit_edge.us.thread.i ], [ %i.cw, %.loopexit.i.loopexit.unr-lcssa ], [ %i.cw, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.epil ]
  %.8.i = phi ptr [ %.094.lcssa.i, %.thread144.i ], [ %.599185.i, %bb.ae ], [ %.094.lcssa.i, %bb.ad ], [ %i.gw, %.loopexit.loopexit.i ], [ %i.ed, %._crit_edge.us.thread.i ], [ %i.ec, %.loopexit.i.loopexit.unr-lcssa ], [ %i.hj, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.epil ] ; 5 uses
  %.5.i = phi i1 [ %.not.i19, %.thread144.i ], [ false, %bb.ae ], [ %.not.i19, %bb.ad ], [ %.not.i19, %.loopexit.loopexit.i ], [ %.not.i19, %._crit_edge.us.thread.i ], [ %.not.i19, %.loopexit.i.loopexit.unr-lcssa ], [ %.not.i19, %_ZN7unibrow4Utf813EncodeOneByteEPch.exit.us.i.epil ]
  %.not129.i = icmp eq ptr %4, null
  br i1 %.not129.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.loopexit.i
  store i32 %.6112.i, ptr %4, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit.i
  br i1 %.5.i, label %bb.aj, label %_ZN2v812_GLOBAL__N_113WriteUtf8ImplIhEEiNS_4base6VectorIKT_EEPciiPi.exit

bb.aj:                                            ; preds = %bb.ai
  %i.hk = icmp eq i32 %3, -1
  br i1 %i.hk, label %_ZN2v812_GLOBAL__N_113WriteUtf8ImplIhEEiNS_4base6VectorIKT_EEPciiPi.exit.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hl = ptrtoint ptr %.8.i to i64
  %i.hm = ptrtoint ptr %2 to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = sext i32 %3 to i64
  %i.hp = icmp slt i64 %i.hn, %i.ho
  br i1 %i.hp, label %_ZN2v812_GLOBAL__N_113WriteUtf8ImplIhEEiNS_4base6VectorIKT_EEPciiPi.exit.sink.split, label %_ZN2v812_GLOBAL__N_113WriteUtf8ImplIhEEiNS_4base6VectorIKT_EEPciiPi.exit

bb.al:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.hq = and i32 %5, 8
  %i.hr = icmp ne i32 %i.hq, 0                    ; 3 uses
  %i.hs = icmp sgt i32 %i.cw, -1
  br i1 %i.hs, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.am, !prof !14

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.422) #45
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.al
  %.not197.i = icmp eq i32 %i.cw, 0
  br i1 %.not197.i, label %.thread139.i, label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %.not115.i = icmp eq i32 %3, -1
  %i.ht = ptrtoint ptr %2 to i64
  br label %bb.an

.loopexit164.i34:                                 ; preds = %_ZN7unibrow4Utf86EncodeEPcjib.exit.i, %bb.ap
  %.1101.lcssa.i = phi i32 [ %.0100172.i, %bb.ap ], [ %i.if, %_ZN7unibrow4Utf86EncodeEPcjib.exit.i ] ; 2 uses
  %.195.lcssa.i = phi i32 [ %.094173.i, %bb.ap ], [ %.1136.i, %_ZN7unibrow4Utf86EncodeEPcjib.exit.i ] ; 3 uses
  %.185.lcssa.i = phi ptr [ %.084174.i, %bb.ap ], [ %i.ka, %_ZN7unibrow4Utf86EncodeEPcjib.exit.i ] ; 2 uses
  %i.hu = icmp slt i32 %.195.lcssa.i, %i.cw
  br i1 %i.hu, label %bb.an, label %.thread139.i

bb.an:                                            ; preds = %.loopexit164.i34, %.lr.ph175.i
  %.084174.i = phi ptr [ %2, %.lr.ph175.i ], [ %.185.lcssa.i, %.loopexit164.i34 ] ; 4 uses
  %.094173.i = phi i32 [ 0, %.lr.ph175.i ], [ %.195.lcssa.i, %.loopexit164.i34 ] ; 5 uses
  %.0100172.i = phi i32 [ -1, %.lr.ph175.i ], [ %.1101.lcssa.i, %.loopexit164.i34 ] ; 3 uses
  br i1 %.not115.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hv = ptrtoint ptr %.084174.i to i64
  %.neg.i24 = sub i64 %i.ht, %i.hv
  %.neg116.i = trunc i64 %.neg.i24 to i32
  %i.hw = add i32 %3, %.neg116.i                  ; 2 uses
  %i.hx = icmp sgt i32 %i.hw, 5
  br i1 %i.hx, label %.thread.i32, label %.thread139.i

.thread.i32:                                      ; preds = %bb.ao
  %i.hy = add nsw i32 %i.hw, -3
  %i.hz = udiv i32 %i.hy, 3
  %i.ia = add nuw nsw i32 %i.hz, %.094173.i
  %.sroa.speculated.i33 = call i32 @llvm.smin.i32(i32 %i.ia, i32 %i.cw)
  br label %bb.ap

bb.ap:                                            ; preds = %.thread.i32, %bb.an
  %.1136.i = phi i32 [ %i.cw, %bb.an ], [ %.sroa.speculated.i33, %.thread.i32 ] ; 3 uses
  %i.ib = icmp slt i32 %.094173.i, %.1136.i
  br i1 %i.ib, label %.lr.ph.preheader.i35, label %.loopexit164.i34

.lr.ph.preheader.i35:                             ; preds = %bb.ap
  %i.ic = zext nneg i32 %.094173.i to i64
  %wide.trip.count.i36 = zext nneg i32 %.1136.i to i64
  br label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %_ZN7unibrow4Utf86EncodeEPcjib.exit.i, %.lr.ph.preheader.i35
  %indvars.iv.i38 = phi i64 [ %i.ic, %.lr.ph.preheader.i35 ], [ %indvars.iv.next.i40, %_ZN7unibrow4Utf86EncodeEPcjib.exit.i ] ; 2 uses
  %.185169.i = phi ptr [ %.084174.i, %.lr.ph.preheader.i35 ], [ %i.ka, %_ZN7unibrow4Utf86EncodeEPcjib.exit.i ] ; 8 uses
  %.1101167.i = phi i32 [ %.0100172.i, %.lr.ph.preheader.i35 ], [ %i.if, %_ZN7unibrow4Utf86EncodeEPcjib.exit.i ] ; 2 uses
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv.i38
  %i.ie = load i16, ptr %i.id, align 2            ; 7 uses
  %i.if = zext i16 %i.ie to i32                   ; 6 uses
  %i.ig = icmp ult i16 %i.ie, 128
  br i1 %i.ig, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i37
  %i.ih = trunc nuw nsw i16 %i.ie to i8
  store i8 %i.ih, ptr %.185169.i, align 1
  br label %_ZN7unibrow4Utf86EncodeEPcjib.exit.i

bb.ar:                                            ; preds = %.lr.ph.i37
  %i.ii = icmp ult i16 %i.ie, 2048
  br i1 %i.ii, label %bb.as, label %bb.at

end_hunk_0
begin_hunk_1_@llvm.vector.reduce.or.v16i64
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{ptr @_ZN2v85Utils16ReportOOMFailureEPNS_8internal7IsolateEPKcRKNS_10OOMDetailsE}
!8 = distinct !{null, null, null}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"branch_weights", i32 1, i32 4001}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = distinct !{!13, !10}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 1073205, i32 2146410443}
!16 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!17 = !{!"branch_weights", !"expected", i32 2143190828, i32 4292820}
!18 = distinct !{!18, !10}
!19 = !{!"branch_weights", !"expected", i32 2145602984, i32 1880664}
!20 = distinct !{!20, !10}
!21 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!22 = distinct !{!22, !10}
!23 = !{ptr @_ZN2v88internal14SerializedDataD2Ev}
!24 = distinct !{null, null}
!25 = distinct !{null, null, null}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = !{!"branch_weights", i32 2146410443, i32 1073205}
!29 = distinct !{null, null, null, null}
!30 = distinct !{!30, !10}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZSt19__relocate_object_aIN2v88internal14LocalUncheckedINS0_6ModuleEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!33 = distinct !{!33, !"_ZSt19__relocate_object_aIN2v88internal14LocalUncheckedINS0_6ModuleEEES4_SaIS4_EEvPT_PT0_RT1_"}
!34 = !{!35}
!35 = distinct !{!35, !33, !"_ZSt19__relocate_object_aIN2v88internal14LocalUncheckedINS0_6ModuleEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!36 = distinct !{!36, !10, !37, !38}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = distinct !{!39, !10, !37}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZSt19__relocate_object_aIN2v88internal14LocalUncheckedINS0_7MessageEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!42 = distinct !{!42, !"_ZSt19__relocate_object_aIN2v88internal14LocalUncheckedINS0_7MessageEEES4_SaIS4_EEvPT_PT0_RT1_"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"_ZSt19__relocate_object_aIN2v88internal14LocalUncheckedINS0_7MessageEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!45 = distinct !{!45, !10, !37, !38}
!46 = distinct !{!46, !10, !37}
!47 = distinct !{!47, !10, !37, !38}
!48 = distinct !{!48, !10, !37}
!49 = distinct !{!49, !10, !37, !38}
!50 = distinct !{!50, !10, !37}
!51 = distinct !{null}
!52 = distinct !{null, null}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZN2v812_GLOBAL__N_116GetScriptDetailsEPNS_8internal7IsolateENS_5LocalINS_5ValueEEEiiS6_NS4_INS_4DataEEENS_19ScriptOriginOptionsE: argument 0"}
!55 = distinct !{!55, !"_ZN2v812_GLOBAL__N_116GetScriptDetailsEPNS_8internal7IsolateENS_5LocalINS_5ValueEEEiiS6_NS4_INS_4DataEEENS_19ScriptOriginOptionsE"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZSt11make_uniqueIN2v88internal17AlignedCachedDataEJRPKhRiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!58 = distinct !{!58, !"_ZSt11make_uniqueIN2v88internal17AlignedCachedDataEJRPKhRiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!59 = distinct !{null}
!60 = !{!"branch_weights", i32 -2146410, i32 2146410}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN2v812_GLOBAL__N_116GetScriptDetailsEPNS_8internal7IsolateENS_5LocalINS_5ValueEEEiiS6_NS4_INS_4DataEEENS_19ScriptOriginOptionsE: argument 0"}
!65 = distinct !{!65, !"_ZN2v812_GLOBAL__N_116GetScriptDetailsEPNS_8internal7IsolateENS_5LocalINS_5ValueEEEiiS6_NS4_INS_4DataEEENS_19ScriptOriginOptionsE"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZSt11make_uniqueIN2v88internal21BackgroundCompileTaskEJRPNS1_19ScriptStreamingDataERPNS1_7IsolateERNS0_10ScriptTypeERNS0_14ScriptCompiler14CompileOptionsEPNSB_18CompilationDetailsERPFbiPvERSG_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!68 = distinct !{!68, !"_ZSt11make_uniqueIN2v88internal21BackgroundCompileTaskEJRPNS1_19ScriptStreamingDataERPNS1_7IsolateERNS0_10ScriptTypeERNS0_14ScriptCompiler14CompileOptionsEPNSB_18CompilationDetailsERPFbiPvERSG_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN2v812_GLOBAL__N_116GetScriptDetailsEPNS_8internal7IsolateENS_5LocalINS_5ValueEEEiiS6_NS4_INS_4DataEEENS_19ScriptOriginOptionsE: argument 0"}
!71 = distinct !{!71, !"_ZN2v812_GLOBAL__N_116GetScriptDetailsEPNS_8internal7IsolateENS_5LocalINS_5ValueEEEiiS6_NS4_INS_4DataEEENS_19ScriptOriginOptionsE"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZSt11make_uniqueIN2v88internal25BackgroundDeserializeTaskEJRPNS1_7IsolateESt10unique_ptrINS0_14ScriptCompiler10CachedDataESt14default_deleteIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!74 = distinct !{!74, !"_ZSt11make_uniqueIN2v88internal25BackgroundDeserializeTaskEJRPNS1_7IsolateESt10unique_ptrINS0_14ScriptCompiler10CachedDataESt14default_deleteIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZSt11make_uniqueIN2v88internal25BackgroundDeserializeTaskEJRPNS1_7IsolateESt10unique_ptrINS0_14ScriptCompiler10CachedDataESt14default_deleteIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!77 = distinct !{!77, !"_ZSt11make_uniqueIN2v88internal25BackgroundDeserializeTaskEJRPNS1_7IsolateESt10unique_ptrINS0_14ScriptCompiler10CachedDataESt14default_deleteIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN2v812_GLOBAL__N_116GetScriptDetailsEPNS_8internal7IsolateENS_5LocalINS_5ValueEEEiiS6_NS4_INS_4DataEEENS_19ScriptOriginOptionsE: argument 0"}
!80 = distinct !{!80, !"_ZN2v812_GLOBAL__N_116GetScriptDetailsEPNS_8internal7IsolateENS_5LocalINS_5ValueEEEiiS6_NS4_INS_4DataEEENS_19ScriptOriginOptionsE"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN2v812_GLOBAL__N_116GetScriptDetailsEPNS_8internal7IsolateENS_5LocalINS_5ValueEEEiiS6_NS4_INS_4DataEEENS_19ScriptOriginOptionsE: argument 0"}
!83 = distinct !{!83, !"_ZN2v812_GLOBAL__N_116GetScriptDetailsEPNS_8internal7IsolateENS_5LocalINS_5ValueEEEiiS6_NS4_INS_4DataEEENS_19ScriptOriginOptionsE"}
!84 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!85 = distinct !{!85, !10}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNK2v87Message15GetScriptOriginEv: argument 0"}
!88 = distinct !{!88, !"_ZNK2v87Message15GetScriptOriginEv"}
!89 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZSt11make_uniqueIN2v88internal27SharedObjectConveyorHandlesEJPNS1_7IsolateEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!92 = distinct !{!92, !"_ZSt11make_uniqueIN2v88internal27SharedObjectConveyorHandlesEJPNS1_7IsolateEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!93 = !{!"branch_weights", !"expected", i32 2144621768, i32 2861880}
!94 = !{!"branch_weights", !"expected", i32 2861880, i32 2144621768}
!95 = !{!"branch_weights", !"expected", i32 2147483380, i32 268}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!98 = distinct !{!98, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!99 = !{!100, !97}
!100 = distinct !{!100, !101, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!101 = distinct !{!101, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!102 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZSt19static_pointer_castIN2v812BackingStoreENS0_8internal16BackingStoreBaseEESt10shared_ptrIT_ERKS4_IT0_E: argument 0:thread"}
!105 = distinct !{!105, !"_ZSt19static_pointer_castIN2v812BackingStoreENS0_8internal16BackingStoreBaseEESt10shared_ptrIT_ERKS4_IT0_E"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"_ZSt19static_pointer_castIN2v812BackingStoreENS0_8internal16BackingStoreBaseEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!108 = distinct !{null, null, null}
!109 = distinct !{ptr @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!112 = distinct !{!112, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!115 = distinct !{!115, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!116 = !{!117, !114}
!117 = distinct !{!117, !118, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!118 = distinct !{!118, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZSt19static_pointer_castIN2v812BackingStoreENS0_8internal16BackingStoreBaseEESt10shared_ptrIT_ERKS4_IT0_E: argument 0:thread"}
!121 = distinct !{!121, !"_ZSt19static_pointer_castIN2v812BackingStoreENS0_8internal16BackingStoreBaseEESt10shared_ptrIT_ERKS4_IT0_E"}
!122 = !{!123}
!123 = distinct !{!123, !121, !"_ZSt19static_pointer_castIN2v812BackingStoreENS0_8internal16BackingStoreBaseEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!124 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!125 = distinct !{!125, !10}
!126 = !{!"branch_weights", !"expected", i32 2146409906, i32 1073742}
!127 = !{!128, !130}
!128 = distinct !{!128, !129, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_: argument 0"}
!129 = distinct !{!129, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_"}
!130 = distinct !{!130, !131, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_: argument 0"}
!131 = distinct !{!131, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!134 = distinct !{!134, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!137 = distinct !{!137, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!140 = distinct !{!140, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!143 = distinct !{!143, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!144 = !{!145, !142}
!145 = distinct !{!145, !146, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!146 = distinct !{!146, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!147 = !{!148, !150, !142}
!148 = distinct !{!148, !149, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!149 = distinct !{!149, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!150 = distinct !{!150, !151, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!151 = distinct !{!151, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!152 = distinct !{null}
!153 = !{!154, !150, !142}
!154 = distinct !{!154, !155, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!155 = distinct !{!155, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!156 = distinct !{null}
!157 = !{!150, !142}
!158 = distinct !{!158, !37, !38}
!159 = distinct !{!159, !38, !37}
!160 = distinct !{!160, !37, !38}
!161 = distinct !{!161, !38, !37}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!164 = distinct !{!164, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!167 = distinct !{!167, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!170 = distinct !{!170, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!171 = !{!172, !169}
!172 = distinct !{!172, !173, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!173 = distinct !{!173, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!174 = !{!175, !177, !169}
!175 = distinct !{!175, !176, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!176 = distinct !{!176, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!177 = distinct !{!177, !178, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!178 = distinct !{!178, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!179 = !{!180, !177, !169}
!180 = distinct !{!180, !181, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!181 = distinct !{!181, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!182 = !{!177, !169}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!185 = distinct !{!185, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!188 = distinct !{!188, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!191 = distinct !{!191, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!192 = !{!193, !190}
!193 = distinct !{!193, !194, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!194 = distinct !{!194, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!195 = !{!196, !198, !190}
!196 = distinct !{!196, !197, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!197 = distinct !{!197, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!198 = distinct !{!198, !199, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!199 = distinct !{!199, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!200 = !{!201, !198, !190}
!201 = distinct !{!201, !202, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!202 = distinct !{!202, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!203 = !{!198, !190}
!204 = distinct !{!204, !10, !37, !38}
!205 = distinct !{!205, !10}
!206 = distinct !{!206, !10, !38, !37}
!207 = distinct !{!207, !10, !37, !38}
!208 = distinct !{!208, !10, !38, !37}
!209 = distinct !{!209, !10}
!210 = distinct !{!210, !10}
!211 = distinct !{!211, !10}
!212 = distinct !{!212, !10}
!213 = !{ptr @_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezerD2Ev}
!214 = distinct !{!214, !10}
!215 = distinct !{!215, !10}
!216 = distinct !{!216, !10}
!217 = !{ptr @_ZN2v86String12MakeExternalEPNS_7IsolateEPNS0_22ExternalStringResourceE}
!218 = !{ptr @_ZN2v86String12MakeExternalEPNS_7IsolateEPNS0_29ExternalOneByteStringResourceE}
!219 = distinct !{!219, !10}
!220 = distinct !{!220, !10}
!221 = !{!"branch_weights", !"expected", i32 1073742, i32 2146409906}
!222 = distinct !{!222, !10}
!223 = distinct !{null}
!224 = distinct !{!224, !10}
!225 = distinct !{!225, !10}
!226 = !{ptr @_ZN2v88internal19CanUseFastIterationEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE}
!227 = distinct !{!227, !10}
!228 = distinct !{!228, !10}
!229 = distinct !{!229, !10}
!230 = !{!231, !233}
!231 = distinct !{!231, !232, !"_ZSt19__relocate_object_aIZN2v88internal16FastIterateArrayENS1_12DirectHandleINS1_7JSArrayEEEPNS1_7IsolateEPFNS0_5Array14CallbackResultEjNS0_5LocalINS0_5ValueEEEPvESC_E5EntrySF_SaISF_EEvPT_PT0_RT1_: argument 0"}
!232 = distinct !{!232, !"_ZSt19__relocate_object_aIZN2v88internal16FastIterateArrayENS1_12DirectHandleINS1_7JSArrayEEEPNS1_7IsolateEPFNS0_5Array14CallbackResultEjNS0_5LocalINS0_5ValueEEEPvESC_E5EntrySF_SaISF_EEvPT_PT0_RT1_"}
!233 = distinct !{!233, !232, !"_ZSt19__relocate_object_aIZN2v88internal16FastIterateArrayENS1_12DirectHandleINS1_7JSArrayEEEPNS1_7IsolateEPFNS0_5Array14CallbackResultEjNS0_5LocalINS0_5ValueEEEPvESC_E5EntrySF_SaISF_EEvPT_PT0_RT1_: argument 1"}
!234 = distinct !{!234, !10}
!235 = !{!236, !238}
!236 = distinct !{!236, !237, !"_ZSt19__relocate_object_aIZN2v88internal16FastIterateArrayENS1_12DirectHandleINS1_7JSArrayEEEPNS1_7IsolateEPFNS0_5Array14CallbackResultEjNS0_5LocalINS0_5ValueEEEPvESC_E5EntrySF_SaISF_EEvPT_PT0_RT1_: argument 0"}
!237 = distinct !{!237, !"_ZSt19__relocate_object_aIZN2v88internal16FastIterateArrayENS1_12DirectHandleINS1_7JSArrayEEEPNS1_7IsolateEPFNS0_5Array14CallbackResultEjNS0_5LocalINS0_5ValueEEEPvESC_E5EntrySF_SaISF_EEvPT_PT0_RT1_"}
!238 = distinct !{!238, !237, !"_ZSt19__relocate_object_aIZN2v88internal16FastIterateArrayENS1_12DirectHandleINS1_7JSArrayEEEPNS1_7IsolateEPFNS0_5Array14CallbackResultEjNS0_5LocalINS0_5ValueEEEPvESC_E5EntrySF_SaISF_EEvPT_PT0_RT1_: argument 1"}
!239 = distinct !{!239, !10}
!240 = distinct !{!240, !10}
!241 = distinct !{!241, !10}
!242 = distinct !{!242, !10}
!243 = distinct !{!243, !10}
!244 = distinct !{!244, !10}
!245 = !{!246, !248}
!246 = distinct !{!246, !247, !"_ZSt20atomic_load_explicitIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_St12memory_order: argument 0"}
!247 = distinct !{!247, !"_ZSt20atomic_load_explicitIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_St12memory_order"}
!248 = distinct !{!248, !249, !"_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_: argument 0"}
!249 = distinct !{!249, !"_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_"}
!250 = distinct !{null, null, null}
!251 = distinct !{null, null, null}
!252 = !{!253, !255, !257, !259, !261}
!253 = distinct !{!253, !254, !"_ZSt25make_unique_for_overwriteIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!254 = distinct !{!254, !"_ZSt25make_unique_for_overwriteIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!255 = distinct !{!255, !256, !"_ZN2v84base11OwnedVectorIhE15NewForOverwriteEm: argument 0"}
!256 = distinct !{!256, !"_ZN2v84base11OwnedVectorIhE15NewForOverwriteEm"}
!257 = distinct !{!257, !258, !"_ZN2v84base11OwnedVectorIhE12NewByCopyingIhEENS1_IT_EEPKS4_m: argument 0"}
!258 = distinct !{!258, !"_ZN2v84base11OwnedVectorIhE12NewByCopyingIhEENS1_IT_EEPKS4_m"}
!259 = distinct !{!259, !260, !"_ZN2v84base11OwnedCopyOfIhEENS0_11OwnedVectorIT_EEPKS3_m: argument 0"}
!260 = distinct !{!260, !"_ZN2v84base11OwnedCopyOfIhEENS0_11OwnedVectorIT_EEPKS3_m"}
!261 = distinct !{!261, !262, !"_ZN2v84base11OwnedCopyOfINS_10MemorySpanIKhEEEEDTcl11OwnedCopyOfclsr3stdE4datafp_Eclsr3stdE4sizefp_EEERKT_: argument 0"}
!262 = distinct !{!262, !"_ZN2v84base11OwnedCopyOfINS_10MemorySpanIKhEEEEDTcl11OwnedCopyOfclsr3stdE4datafp_Eclsr3stdE4sizefp_EEERKT_"}
!263 = !{!257, !259, !261}
!264 = !{!265, !267}
!265 = distinct !{!265, !266, !"_ZSt19static_pointer_castIN2v88internal12BackingStoreENS1_16BackingStoreBaseEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!266 = distinct !{!266, !"_ZSt19static_pointer_castIN2v88internal12BackingStoreENS1_16BackingStoreBaseEESt10shared_ptrIT_ERKS4_IT0_E"}
!267 = distinct !{!267, !268, !"_ZN2v812_GLOBAL__N_110ToInternalESt10shared_ptrINS_8internal16BackingStoreBaseEE: argument 0"}
!268 = distinct !{!268, !"_ZN2v812_GLOBAL__N_110ToInternalESt10shared_ptrINS_8internal16BackingStoreBaseEE"}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!271 = distinct !{!271, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!272 = !{!273, !270}
!273 = distinct !{!273, !274, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!274 = distinct !{!274, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!275 = distinct !{null, ptr @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!278 = distinct !{!278, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!279 = !{!280, !277}
!280 = distinct !{!280, !281, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!281 = distinct !{!281, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!284 = distinct !{!284, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!285 = !{!286, !283}
!286 = distinct !{!286, !287, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!287 = distinct !{!287, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!290 = distinct !{!290, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!291 = !{!292, !289}
!292 = distinct !{!292, !293, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!293 = distinct !{!293, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!294 = !{!295, !297}
!295 = distinct !{!295, !296, !"_ZSt19static_pointer_castIN2v88internal12BackingStoreENS1_16BackingStoreBaseEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!296 = distinct !{!296, !"_ZSt19static_pointer_castIN2v88internal12BackingStoreENS1_16BackingStoreBaseEESt10shared_ptrIT_ERKS4_IT0_E"}
!297 = distinct !{!297, !298, !"_ZN2v812_GLOBAL__N_110ToInternalESt10shared_ptrINS_8internal16BackingStoreBaseEE: argument 0"}
!298 = distinct !{!298, !"_ZN2v812_GLOBAL__N_110ToInternalESt10shared_ptrINS_8internal16BackingStoreBaseEE"}
!299 = !{!300}
!300 = distinct !{!300, !301, !"_ZN2v812IsolateGroup10GetDefaultEv: argument 0"}
!301 = distinct !{!301, !"_ZN2v812IsolateGroup10GetDefaultEv"}
!302 = distinct !{null, null, null}
!303 = distinct !{null, null, null, null, null, null}
!304 = distinct !{null, null, null, null, null, null, null, null}
!305 = distinct !{!305, !10}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_ZN2v88Platform23GetForegroundTaskRunnerEPNS_7IsolateE: argument 0"}
!308 = distinct !{!308, !"_ZN2v88Platform23GetForegroundTaskRunnerEPNS_7IsolateE"}
!309 = distinct !{null}
!310 = distinct !{null, null, null}
!311 = !{!312}
!312 = distinct !{!312, !313, !"_ZN2v812IsolateGroup10GetDefaultEv: argument 0"}
!313 = distinct !{!313, !"_ZN2v812IsolateGroup10GetDefaultEv"}
!314 = distinct !{null, null}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZSt11make_uniqueIN2v820CalleeSavedRegistersEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!317 = distinct !{!317, !"_ZSt11make_uniqueIN2v820CalleeSavedRegistersEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!318 = !{!319}
!319 = distinct !{!319, !320, !"_ZN2v88internal12EmbeddedData8FromBlobEv: argument 0"}
!320 = distinct !{!320, !"_ZN2v88internal12EmbeddedData8FromBlobEv"}
!321 = distinct !{!321, !10}
!322 = distinct !{!322, !10}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!325 = distinct !{!325, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!326 = !{!327}
!327 = distinct !{!327, !328, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!328 = distinct !{!328, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!329 = !{!330}
!330 = distinct !{!330, !331, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!331 = distinct !{!331, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!332 = !{!333, !330}
!333 = distinct !{!333, !334, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!334 = distinct !{!334, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!335 = !{!336, !338, !330}
!336 = distinct !{!336, !337, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!337 = distinct !{!337, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!338 = distinct !{!338, !339, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!339 = distinct !{!339, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!340 = !{!341, !338, !330}
!341 = distinct !{!341, !342, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!342 = distinct !{!342, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!343 = !{!338, !330}
!344 = !{!345}
!345 = distinct !{!345, !346, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!346 = distinct !{!346, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!347 = !{!348}
!348 = distinct !{!348, !349, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!349 = distinct !{!349, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!350 = !{!351}
!351 = distinct !{!351, !352, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!352 = distinct !{!352, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!353 = !{!354, !351}
!354 = distinct !{!354, !355, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!355 = distinct !{!355, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!356 = !{!357, !359, !351}
!357 = distinct !{!357, !358, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!358 = distinct !{!358, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!359 = distinct !{!359, !360, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!360 = distinct !{!360, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!361 = !{!362, !359, !351}
!362 = distinct !{!362, !363, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!363 = distinct !{!363, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!364 = !{!359, !351}
!365 = !{!366}
!366 = distinct !{!366, !367, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!367 = distinct !{!367, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!368 = !{!369}
!369 = distinct !{!369, !370, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!370 = distinct !{!370, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!371 = !{!372}
!372 = distinct !{!372, !373, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!373 = distinct !{!373, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!376 = distinct !{!376, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!377 = distinct !{null, null}
!378 = distinct !{ptr @_ZN2v811CpuProfiler5StartENS_5LocalINS_6StringEEENS_19CpuProfilingOptionsESt10unique_ptrINS_24DiscardedSamplesDelegateESt14default_deleteIS6_EE, null, null}
!379 = distinct !{ptr @_ZN2v811CpuProfiler5StartENS_5LocalINS_6StringEEEb, null, null}
!380 = distinct !{ptr @_ZN2v811CpuProfiler5StartENS_5LocalINS_6StringEEENS_16CpuProfilingModeEbj, null, null}
!381 = !{!382}
!382 = distinct !{!382, !383, !"_ZStplRKSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_El: argument 0"}
!383 = distinct !{!383, !"_ZStplRKSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_El"}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_ZStplRKSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_El: argument 0"}
!386 = distinct !{!386, !"_ZStplRKSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_El"}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZStplRKSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_El: argument 0"}
!389 = distinct !{!389, !"_ZStplRKSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_El"}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_ZStplRKSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_El: argument 0"}
!392 = distinct !{!392, !"_ZStplRKSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_El"}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZSt11make_uniqueIN2v820CalleeSavedRegistersEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!395 = distinct !{!395, !"_ZSt11make_uniqueIN2v820CalleeSavedRegistersEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_ZSt11make_uniqueIN2v820CalleeSavedRegistersEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!398 = distinct !{!398, !"_ZSt11make_uniqueIN2v820CalleeSavedRegistersEJRS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!399 = distinct !{!399, !10}
!400 = distinct !{!400, !10}
!401 = !{!402, !404}
!402 = distinct !{!402, !403, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_: argument 0"}
!403 = distinct !{!403, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_"}
!404 = distinct !{!404, !405, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_: argument 0"}
!405 = distinct !{!405, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_"}
!406 = !{!407, !409}
end_hunk_1
