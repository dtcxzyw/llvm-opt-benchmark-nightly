Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/experimental-interpreter?download=true
inline.NumInlined: 1567
inline.NumDeleted: 747
begin_hunk_0_@_ZN2v88internal29ExperimentalRegExpInterpreter11FindMatchesEPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS6_INS0_6StringEEEiPiiPNS0_4ZoneE:bb.a
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %23, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 8 dereferenceable(16) %21) #8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit, %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8, !range !9, !noundef !10
  %i.az = trunc nuw i8 %i.ay to i1
  store i8 0, ptr %i.ax, align 8
  br i1 %i.az, label %bb.n, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.n:                                             ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.ba = load ptr, ptr %21, align 8              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) #8
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #8, !noalias !44
  %i.bb = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #8
  %i.be = add i64 %2, -1
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 6 uses
  br i1 %i.bd, label %bb.p, label %bb.hk

bb.p:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #8
  store ptr %0, ptr %24, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %1, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 %2, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 3 uses
  %i.bm = load i64, ptr %i.bh, align 8
  %i.bn = lshr i64 %i.bm, 32
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = ashr i32 %i.bo, 3
  %i.bq = sext i32 %i.bp to i64
  store ptr %i.bg, ptr %i.bl, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 4 uses
  store i64 %i.bq, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 21 uses
  store i32 %3, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %24, i64 44 ; 11 uses
  store i32 0, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %24, i64 48
  store i64 %4, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %24, i64 56
  %i.bw = call fastcc { ptr, i64 } @_ZN2v88internal12_GLOBAL__N_117ToCharacterVectorIhEENS_4base6VectorIKT_EENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %i.bj) ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0
  store ptr %i.bx, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %24, i64 64 ; 4 uses
  %i.bz = extractvalue { ptr, i64 } %i.bw, 1
  store i64 %i.bz, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %24, i64 72 ; 6 uses
  store i32 %5, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %24, i64 80
  store i64 0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %24, i64 88 ; 5 uses
  %i.cd = load i64, ptr %i.bh, align 8
  %i.ce = ashr i64 %i.cd, 32                      ; 2 uses
  %i.cf = icmp ult i64 %i.ce, 2305843009213693951
  br i1 %i.cf, label %bb.r, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cg = shl nuw nsw i64 %i.ce, 3                ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = sub i64 %i.ci, %i.ck
  %i.cm = icmp ugt i64 %i.cg, %i.cl
  br i1 %i.cm, label %bb.s, label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE14LastInputIndexEA_S6_EEPT_m.exit.i, !prof !12

bb.s:                                             ; preds = %bb.r
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %8, i64 noundef %i.cg) #8
  %.pre.i.i.i = load i64, ptr %i.cj, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE14LastInputIndexEA_S6_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE14LastInputIndexEA_S6_EEPT_m.exit.i: ; preds = %bb.s, %bb.r
  %i.cn = phi i64 [ %.pre.i.i.i, %bb.s ], [ %i.ck, %bb.r ] ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = add i64 %i.cn, %i.cg
  store i64 %i.cp, ptr %i.cj, align 8
  %i.cq = load i64, ptr %i.bh, align 8
  %i.cr = ashr i64 %i.cq, 32
  store ptr %i.co, ptr %i.cc, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %24, i64 96 ; 5 uses
  store i64 %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %24, i64 104 ; 16 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %24, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i8 0, i64 32, i1 false)
  store ptr %8, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %24, i64 144 ; 24 uses
  store ptr null, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %24, i64 152
  %i.cx = getelementptr inbounds nuw i8, ptr %24, i64 168 ; 2 uses
  store i8 0, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %24, i64 176
  %i.cz = getelementptr inbounds nuw i8, ptr %24, i64 192 ; 2 uses
  store i8 0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %24, i64 200
  %i.db = getelementptr inbounds nuw i8, ptr %24, i64 216 ; 2 uses
  store i8 0, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %24, i64 224
  %i.dd = getelementptr inbounds nuw i8, ptr %24, i64 240 ; 2 uses
  store i8 0, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %24, i64 304 ; 5 uses
  store i8 0, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %24, i64 312 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %24, i64 328 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %24, i64 360 ; 2 uses
  store i8 0, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %24, i64 368 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %24, i64 384 ; 4 uses
  store i8 0, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %24, i64 392 ; 15 uses
  store i8 1, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %24, i64 393 ; 4 uses
  store i8 0, ptr %i.dl, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %24, i64 396 ; 3 uses
  store i32 -1, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %24, i64 400 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %24, i64 404 ; 3 uses
  store i8 0, ptr %i.do, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %24, i64 416 ; 12 uses
  store ptr %8, ptr %i.dp, align 8
  %i.dq = load i64, ptr %i.br, align 8            ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 2147483648
  br i1 %i.dr, label %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i, label %._crit_edge82.i, !prof !13

_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE14LastInputIndexEA_S6_EEPT_m.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %24, i64 324 ; 15 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %24, i64 320 ; 2 uses
  br label %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.i

._crit_edge82.i:                                  ; preds = %bb.ai, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE14LastInputIndexEA_S6_EEPT_m.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.i: ; preds = %bb.ai, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i
  %i.du = phi i8 [ 0, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i ], [ %i.ge, %bb.ai ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i ], [ %indvars.iv.next.i, %bb.ai ] ; 6 uses
  %i.dv = phi i64 [ %i.dq, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i ], [ %i.gl, %bb.ai ]
  %.02981.i = phi i1 [ false, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i ], [ %spec.select.i, %bb.ai ]
  %.03080.i = phi i32 [ undef, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i ], [ %.131121129.i, %bb.ai ]
  %.sroa.7.077.i = phi i32 [ undef, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i ], [ %.sroa.7.2.i, %bb.ai ]
  %.sroa.060.076.i = phi i32 [ undef, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i ], [ %.sroa.060.2.i, %bb.ai ]
  %i.dw = shl nuw nsw i64 %i.dv, 32
  %sext.i = add nsw i64 %i.dw, -4294967296
  %i.dx = ashr exact i64 %sext.i, 32
  %i.dy = icmp slt i64 %indvars.iv.i, %i.dx
  br i1 %i.dy, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.i
  %i.dz = load i8, ptr %i.dk, align 8, !range !9, !noundef !10
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.aj, label %bb.an

bb.u:                                             ; preds = %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.i
  %i.eb = load ptr, ptr %i.bl, align 8
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i ; 7 uses
  %i.ed = load i32, ptr %i.ec, align 4            ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 15
  br i1 %i.ee, label %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i, label %bb.w

_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i: ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.eg = load i32, ptr %i.ef, align 4            ; 2 uses
  %i.eh = lshr i32 %i.eg, 2                       ; 2 uses
  %i.ei = and i32 %i.eg, 2
  %i.ej = icmp eq i32 %i.ei, 0
  %i.ek = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  br i1 %i.ej, label %bb.v, label %.thread123.i

bb.v:                                             ; preds = %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i
  store i8 0, ptr %i.dk, align 8
  %.pre88.i = load i32, ptr %i.ec, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.el = phi i32 [ %.pre88.i, %bb.v ], [ %i.ed, %bb.u ] ; 2 uses
  %.sroa.060.1.i = phi i32 [ %i.ek, %bb.v ], [ %.sroa.060.076.i, %bb.u ] ; 2 uses
  %.sroa.7.1.i = phi i32 [ 0, %bb.v ], [ %.sroa.7.077.i, %bb.u ] ; 2 uses
  %.131.i = phi i32 [ %i.eh, %bb.v ], [ %.03080.i, %bb.u ] ; 5 uses
  %.1.i = phi i1 [ true, %bb.v ], [ %.02981.i, %bb.u ] ; 3 uses
  %i.em = icmp eq i32 %i.el, 7
  %or.cond.i = select i1 %i.em, i1 %.1.i, i1 false
  br i1 %or.cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.dk, align 8
  %.pr.i = load i32, ptr %i.ec, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.en = phi i32 [ %.pr.i, %bb.x ], [ %i.el, %bb.w ] ; 2 uses
  %i.eo = icmp eq i32 %i.en, 17
  br i1 %i.eo, label %bb.z, label %.thread123.i

bb.z:                                             ; preds = %bb.y
  %i.ep = load i32, ptr %i.ds, align 4            ; 2 uses
  %.not75.i = icmp sgt i32 %i.ep, %.131.i
  br i1 %.not75.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEE3AddERKS5_PNS0_4ZoneE.exit.i
  %i.eq = phi i32 [ %i.ft, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEE3AddERKS5_PNS0_4ZoneE.exit.i ], [ %i.ep, %bb.z ] ; 2 uses
  %i.er = load ptr, ptr %i.dp, align 8            ; 3 uses
  %i.es = load i32, ptr %i.dt, align 8            ; 3 uses
  %i.et = icmp slt i32 %i.eq, %i.es
  br i1 %i.et, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i
  %i.eu = load ptr, ptr %i.df, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEE3AddERKS5_PNS0_4ZoneE.exit.i

bb.ab:                                            ; preds = %.lr.ph.i
  %i.ev = shl nsw i32 %i.es, 1
  %i.ew = or disjoint i32 %i.ev, 1                ; 2 uses
  %i.ex = icmp sgt i32 %i.es, -1
  br i1 %i.ex, label %bb.ad, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ey = zext nneg i32 %i.ew to i64
  %i.ez = mul nuw nsw i64 %i.ey, 12
  %i.fa = add nuw nsw i64 %i.ez, 4                ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 8            ; 2 uses
  %i.ff = sub i64 %i.fc, %i.fe
  %i.fg = icmp ugt i64 %i.fa, %i.ff
  br i1 %i.fg, label %bb.ae, label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEA_S6_EEPT_m.exit.i.i.i.i.i, !prof !12

bb.ae:                                            ; preds = %bb.ad
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.er, i64 noundef %i.fa) #8
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.fd, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEA_S6_EEPT_m.exit.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEA_S6_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.fh = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.ae ], [ %i.fe, %bb.ad ] ; 2 uses
  %i.fi = inttoptr i64 %i.fh to ptr               ; 3 uses
  %i.fj = add i64 %i.fh, %i.fa
  store i64 %i.fj, ptr %i.fd, align 8
  %i.fk = load i32, ptr %i.ds, align 4            ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i.i, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i.i: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.fm = load ptr, ptr %i.df, align 8
  %i.fn = zext nneg i32 %i.fk to i64
  %i.fo = mul nuw nsw i64 %i.fn, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fi, ptr align 1 %i.fm, i64 %i.fo, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.ds, align 4
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i: ; preds = %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i.i, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.fp = phi i32 [ %i.fk, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEA_S6_EEPT_m.exit.i.i.i.i.i ], [ %.pre.i.i.i.i, %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i.i ]
  store ptr %i.fi, ptr %i.df, align 8
  store i32 %i.ew, ptr %i.dt, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEE3AddERKS5_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEE3AddERKS5_PNS0_4ZoneE.exit.i: ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i, %bb.aa
  %.sink137.i = phi i32 [ %i.eq, %bb.aa ], [ %i.fp, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i ] ; 2 uses
  %.sink134.i = phi ptr [ %i.eu, %bb.aa ], [ %i.fi, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i ]
  %i.fq = add nsw i32 %.sink137.i, 1
  store i32 %i.fq, ptr %i.ds, align 4
  %i.fr = sext i32 %.sink137.i to i64
  %i.fs = getelementptr inbounds [12 x i8], ptr %.sink134.i, i64 %i.fr ; 3 uses
  store i32 -1, ptr %i.fs, align 4
  %.sroa.5.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 -1, ptr %.sroa.5.0..sroa_idx48.i, align 4
  %.sroa.6.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx50.i, align 4
  %i.ft = load i32, ptr %i.ds, align 4            ; 2 uses
  %.not.i22 = icmp sgt i32 %i.ft, %.131.i
  br i1 %.not.i22, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !31

._crit_edge.i:                                    ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEE3AddERKS5_PNS0_4ZoneE.exit.i, %bb.z
  %.val.i = load ptr, ptr %i.df, align 8
  %i.fu = sext i32 %.131.i to i64
  %i.fv = getelementptr inbounds [12 x i8], ptr %.val.i, i64 %i.fu ; 3 uses
  store i32 %.sroa.060.1.i, ptr %i.fv, align 4
  %.sroa.562.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fw = trunc i64 %indvars.iv.i to i32
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr %.sroa.562.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store i32 %.sroa.7.1.i, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.pre89.i = load i32, ptr %i.ec, align 4
  %.pre90.i = load i8, ptr %i.do, align 4, !range !9
  br label %.thread123.i

.thread123.i:                                     ; preds = %._crit_edge.i, %bb.y, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i
  %.131121129.i = phi i32 [ %.131.i, %._crit_edge.i ], [ %.131.i, %bb.y ], [ %i.eh, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i ]
  %.1122128.i = phi i1 [ %.1.i, %._crit_edge.i ], [ %.1.i, %bb.y ], [ true, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i ]
  %i.fy = phi i8 [ %.pre90.i, %._crit_edge.i ], [ %i.du, %bb.y ], [ %i.du, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i ]
  %i.fz = phi i32 [ %.pre89.i, %._crit_edge.i ], [ %i.en, %bb.y ], [ 15, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i ] ; 4 uses
  %.sroa.060.2.i = phi i32 [ undef, %._crit_edge.i ], [ %.sroa.060.1.i, %bb.y ], [ %i.ek, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i ]
  %.sroa.7.2.i = phi i32 [ undef, %._crit_edge.i ], [ %.sroa.7.1.i, %bb.y ], [ 1, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterIhE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i ]
  %i.ga = icmp ne i32 %i.fz, 16
  %spec.select.i = select i1 %i.ga, i1 %.1122128.i, i1 false
  %i.gb = trunc nuw i8 %i.fy to i1
  br i1 %i.gb, label %_ZN2v88internal17RegExpInstruction8IsFilterERKS1_.exit.i, label %bb.af

bb.af:                                            ; preds = %.thread123.i
  switch i32 %i.fz, label %_ZN2v88internal17RegExpInstruction8IsFilterERKS1_.exit.i [
    i32 10, label %bb.ag
    i32 9, label %bb.ag
    i32 12, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af, %bb.af
  %.sroa.042.0.insert.insert.i = or disjoint i64 %indvars.iv.i, 4294967296 ; 2 uses
  store i64 %.sroa.042.0.insert.insert.i, ptr %i.dn, align 8
  %i.gc = lshr i64 %.sroa.042.0.insert.insert.i, 32
  %i.gd = trunc i64 %i.gc to i8
  %.pr73.pre.i = load i32, ptr %i.ec, align 4
  br label %_ZN2v88internal17RegExpInstruction8IsFilterERKS1_.exit.i

_ZN2v88internal17RegExpInstruction8IsFilterERKS1_.exit.i: ; preds = %bb.ag, %bb.af, %.thread123.i
  %i.ge = phi i8 [ 1, %.thread123.i ], [ %i.gd, %bb.ag ], [ 0, %bb.af ]
  %i.gf = phi i32 [ %i.fz, %.thread123.i ], [ %.pr73.pre.i, %bb.ag ], [ %i.fz, %bb.af ]
  %i.gg = icmp eq i32 %i.gf, 8
  br i1 %i.gg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN2v88internal17RegExpInstruction8IsFilterERKS1_.exit.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.gi = load i32, ptr %i.gh, align 4
  %i.gj = add nsw i32 %i.gi, 1
  %i.gk = load i32, ptr %i.bt, align 4
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.gk, i32 %i.gj)
  store i32 %.sroa.speculated.i, ptr %i.bt, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN2v88internal17RegExpInstruction8IsFilterERKS1_.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.gl = load i64, ptr %i.br, align 8            ; 2 uses
  %i.gm = icmp ult i64 %i.gl, 2147483648
  br i1 %i.gm, label %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.i, label %._crit_edge82.i, !prof !15, !llvm.loop !32

bb.aj:                                            ; preds = %bb.t
  %i.gn = load i32, ptr %i.ds, align 4            ; 3 uses
  store i8 0, ptr %i.dj, align 8
  %i.go = load ptr, ptr %i.dp, align 8            ; 3 uses
  store ptr null, ptr %i.di, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %24, i64 376 ; 2 uses
  store i32 %i.gn, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %24, i64 380 ; 4 uses
  store i32 0, ptr %i.gq, align 4
  %i.gr = icmp sgt i32 %i.gn, 0
  br i1 %i.gr, label %bb.ak, label %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.thread.i

_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.thread.i: ; preds = %bb.aj
  store i8 1, ptr %i.dj, align 8
  br label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i

bb.ak:                                            ; preds = %bb.aj
  %narrow.i.i.i.i.i.i = add nuw i32 %i.gn, 7
  %i.gs = and i32 %narrow.i.i.i.i.i.i, -8
  %i.gt = zext i32 %i.gs to i64                   ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 3 uses
  %i.gx = load i64, ptr %i.gw, align 8            ; 2 uses
  %i.gy = sub i64 %i.gv, %i.gx
  %i.gz = icmp ult i64 %i.gy, %i.gt
  br i1 %i.gz, label %bb.al, label %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i, !prof !12

bb.al:                                            ; preds = %bb.ak
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.go, i64 noundef %i.gt) #8
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.gw, align 8
  br label %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i

_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i: ; preds = %bb.al, %bb.ak
  %i.ha = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.al ], [ %i.gx, %bb.ak ] ; 2 uses
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = add i64 %i.ha, %i.gt
  store i64 %i.hc, ptr %i.gw, align 8
  %.pre.i = load i32, ptr %i.ds, align 4          ; 2 uses
  %.pre87.i = load ptr, ptr %i.dp, align 8
  store ptr %i.hb, ptr %i.di, align 8
  store i8 1, ptr %i.dj, align 8
  %i.hd = icmp sgt i32 %.pre.i, 0
  br i1 %i.hd, label %.lr.ph.i.i, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i

.lr.ph.i.i:                                       ; preds = %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i, %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i
  %.08.i.i = phi i32 [ %i.hn, %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i ], [ 0, %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i ]
  %i.he = load i32, ptr %i.gq, align 4            ; 2 uses
  %i.hf = load i32, ptr %i.gp, align 8            ; 2 uses
  %i.hg = icmp slt i32 %i.he, %i.hf
  br i1 %i.hg, label %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.hh = shl nsw i32 %i.hf, 1
  %i.hi = or disjoint i32 %i.hh, 1
  call void @_ZN2v88internal8ZoneListIbE6ResizeEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i32 noundef %i.hi, ptr noundef %.pre87.i)
  %i.hj = load i32, ptr %i.gq, align 4
  br label %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i

_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i: ; preds = %bb.am, %.lr.ph.i.i
  %.sink10.i.i.i = phi i32 [ %i.hj, %bb.am ], [ %i.he, %.lr.ph.i.i ] ; 2 uses
  %.sink6.i.i.i = load ptr, ptr %i.di, align 8
  %i.hk = add nsw i32 %.sink10.i.i.i, 1
  store i32 %i.hk, ptr %i.gq, align 4
  %i.hl = sext i32 %.sink10.i.i.i to i64
  %i.hm = getelementptr inbounds i8, ptr %.sink6.i.i.i, i64 %i.hl
  store i8 0, ptr %i.hm, align 1
  %i.hn = add nuw nsw i32 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.hn, %.pre.i
  br i1 %exitcond.not.i.i, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i, label %.lr.ph.i.i, !llvm.loop !33

bb.an:                                            ; preds = %bb.t
  %i.ho = load ptr, ptr %i.dp, align 8            ; 3 uses
  store ptr %i.ho, ptr %i.cy, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %24, i64 184
  store ptr null, ptr %i.hp, align 8
  store i8 1, ptr %i.cz, align 8
  store ptr %i.ho, ptr %i.cw, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %24, i64 160
  store ptr null, ptr %i.hq, align 8
  store i8 1, ptr %i.cx, align 8
  store ptr %i.ho, ptr %i.dg, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %24, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.dh, align 8
  %i.hs = load i32, ptr %i.ds, align 4            ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph85.i, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i

.lr.ph85.i:                                       ; preds = %bb.an, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %.0.in83.i = phi i32 [ %.0.i21, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i ], [ %i.hs, %bb.an ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.hu = load i64, ptr %i.by, align 8            ; 2 uses
  %i.hv = icmp ult i64 %i.hu, 2147483648
  br i1 %i.hv, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.ao, !prof !11

bb.ao:                                            ; preds = %.lr.ph85.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %.lr.ph85.i
  %.0.i21 = add nsw i32 %.0.in83.i, -1
  %i.hw = trunc nuw nsw i64 %i.hu to i32
  %i.hx = add nuw nsw i32 %i.hw, 1
  store i32 %i.hx, ptr %i.b, align 4
  %i.hy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorINS1_IbEEE12emplace_backIJiRPNS0_4ZoneEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.dp) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.hz = icmp sgt i32 %.0.in83.i, 1
  br i1 %i.hz, label %.lr.ph85.i, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i, !llvm.loop !34

_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i, %bb.an, %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i, %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.thread.i
  %i.ia = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !9, !noundef !10
  %i.ib = trunc nuw i8 %i.ia to i1
  br i1 %i.ib, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i
  %i.ic = load ptr, ptr %i.dp, align 8            ; 2 uses
  store ptr %i.ic, ptr %i.da, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %24, i64 208
  store ptr null, ptr %i.id, align 8
  store i8 1, ptr %i.db, align 8
  store ptr %i.ic, ptr %i.dc, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %24, i64 232
  store ptr null, ptr %i.ie, align 8
  store i8 1, ptr %i.dd, align 8
  %i.if = load i32, ptr %i.bs, align 8
  %i.ig = sext i32 %i.if to i64
  %i.ih = load i32, ptr %i.bt, align 4
  %i.ii = sext i32 %i.ih to i64
  %i.ij = load i32, ptr %i.ds, align 4
  %i.ik = sext i32 %i.ij to i64
  %i.il = add nsw i64 %i.ik, %i.ig                ; 2 uses
  %i.im = add nsw i64 %i.il, %i.ii
  %i.in = shl nsw i64 %i.im, 3
  %i.io = shl nsw i64 %i.il, 2
  %i.ip = add nsw i64 %i.io, 56
  %i.iq = add nsw i64 %i.ip, %i.in
  %i.ir = getelementptr inbounds nuw i8, ptr %24, i64 408
  store i64 %i.iq, ptr %i.ir, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i
  %.val34.i = load i64, ptr %i.cs, align 8        ; 2 uses
  %.not5.i.i.i.i = icmp eq i64 %.val34.i, 0
  br i1 %.not5.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhEC2EPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS8_INS0_6StringEEEiPNS0_4ZoneE.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.aq
  %.idx.i = shl i64 %.val34.i, 3
  %.val32.i = load ptr, ptr %i.cc, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %.val32.i, i8 -1, i64 %.idx.i, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhEC2EPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS8_INS0_6StringEEEiPNS0_4ZoneE.exit

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhEC2EPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS8_INS0_6StringEEEiPNS0_4ZoneE.exit: ; preds = %bb.aq, %.lr.ph.i.i.i.preheader.i
  %i.is = load i32, ptr %i.bs, align 8
  %i.it = sdiv i32 %7, %i.is                      ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal29ExperimentalRegExpInterpreter11FindMatchesEPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS6_INS0_6StringEEEiPiiPNS0_4ZoneE:bb.a
bb.hg:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i
  %i.afj = load i64, ptr %i.by, align 8           ; 2 uses
  %i.afk = icmp ult i64 %i.afj, 2147483648
  br i1 %i.afk, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i29, label %bb.hh, !prof !11

bb.hh:                                            ; preds = %bb.hg
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i29:        ; preds = %bb.hg
  %i.afl = trunc nuw nsw i64 %i.afj to i32
  %i.afm = icmp eq i32 %i.afe, %i.afl
  br i1 %i.afm, label %.thread135.i, label %bb.hi

.thread135.i:                                     ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE11FindMatchesEPii.exit

bb.hi:                                            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i29
  %i.afn = add nsw i32 %i.afe, 1
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i
  %storemerge232.i = phi i32 [ %i.afn, %bb.hi ], [ %i.afi, %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i ]
  store i32 %storemerge232.i, ptr %i.ca, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  %.not37.i = icmp eq i32 %i.afg, %i.it
  br i1 %.not37.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE11FindMatchesEPii.exit, label %bb.cn

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE11FindMatchesEPii.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13FindNextMatchEv.exit.i, %bb.fb, %bb.hj, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE19FillLookaroundTableEv.exit.i, %bb.cm, %.thread130.i, %.thread135.i
  %.6.i = phi i32 [ %i.oy, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE19FillLookaroundTableEv.exit.i ], [ %i.abn, %.thread130.i ], [ %i.afg, %.thread135.i ], [ 0, %bb.cm ], [ %.0147.i, %bb.fb ], [ %i.it, %bb.hj ], [ %i.xt, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13FindNextMatchEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  br label %bb.pf

bb.hk:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #8
  store ptr %0, ptr %25, align 8
  %i.afo = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 %1, ptr %i.afo, align 8
  %i.afp = getelementptr inbounds nuw i8, ptr %25, i64 12
  %i.afq = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i64 %2, ptr %i.afq, align 8
  %i.afr = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 3 uses
  %i.afs = load i64, ptr %i.bh, align 8
  %i.aft = lshr i64 %i.afs, 32
  %i.afu = trunc nuw i64 %i.aft to i32
  %i.afv = ashr i32 %i.afu, 3
  %i.afw = sext i32 %i.afv to i64
  store ptr %i.bg, ptr %i.afr, align 8
  %i.afx = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 4 uses
  store i64 %i.afw, ptr %i.afx, align 8
  %i.afy = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 21 uses
  store i32 %3, ptr %i.afy, align 8
  %i.afz = getelementptr inbounds nuw i8, ptr %25, i64 44 ; 11 uses
  store i32 0, ptr %i.afz, align 4
  %i.aga = getelementptr inbounds nuw i8, ptr %25, i64 48
  store i64 %4, ptr %i.aga, align 8
  %i.agb = getelementptr inbounds nuw i8, ptr %25, i64 56
  %i.agc = call fastcc { ptr, i64 } @_ZN2v88internal12_GLOBAL__N_117ToCharacterVectorItEENS_4base6VectorIKT_EENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %i.afp) ; 2 uses
  %i.agd = extractvalue { ptr, i64 } %i.agc, 0
  store ptr %i.agd, ptr %i.agb, align 8
  %i.age = getelementptr inbounds nuw i8, ptr %25, i64 64 ; 4 uses
  %i.agf = extractvalue { ptr, i64 } %i.agc, 1
  store i64 %i.agf, ptr %i.age, align 8
  %i.agg = getelementptr inbounds nuw i8, ptr %25, i64 72 ; 6 uses
  store i32 %5, ptr %i.agg, align 8
  %i.agh = getelementptr inbounds nuw i8, ptr %25, i64 80
  store i64 0, ptr %i.agh, align 8
  %i.agi = getelementptr inbounds nuw i8, ptr %25, i64 88 ; 5 uses
  %i.agj = load i64, ptr %i.bh, align 8
  %i.agk = ashr i64 %i.agj, 32                    ; 2 uses
  %i.agl = icmp ult i64 %i.agk, 2305843009213693951
  br i1 %i.agl, label %bb.hm, label %bb.hl, !prof !11

bb.hl:                                            ; preds = %bb.hk
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.hm:                                            ; preds = %bb.hk
  %i.agm = shl nuw nsw i64 %i.agk, 3              ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ago = load i64, ptr %i.agn, align 8
  %i.agp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.agq = load i64, ptr %i.agp, align 8          ; 2 uses
  %i.agr = sub i64 %i.ago, %i.agq
  %i.ags = icmp ugt i64 %i.agm, %i.agr
  br i1 %i.ags, label %bb.hn, label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE14LastInputIndexEA_S6_EEPT_m.exit.i, !prof !12

bb.hn:                                            ; preds = %bb.hm
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %8, i64 noundef %i.agm) #8
  %.pre.i.i.i97 = load i64, ptr %i.agp, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE14LastInputIndexEA_S6_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE14LastInputIndexEA_S6_EEPT_m.exit.i: ; preds = %bb.hn, %bb.hm
  %i.agt = phi i64 [ %.pre.i.i.i97, %bb.hn ], [ %i.agq, %bb.hm ] ; 2 uses
  %i.agu = inttoptr i64 %i.agt to ptr
  %i.agv = add i64 %i.agt, %i.agm
  store i64 %i.agv, ptr %i.agp, align 8
  %i.agw = load i64, ptr %i.bh, align 8
  %i.agx = ashr i64 %i.agw, 32
  store ptr %i.agu, ptr %i.agi, align 8
  %i.agy = getelementptr inbounds nuw i8, ptr %25, i64 96 ; 5 uses
  store i64 %i.agx, ptr %i.agy, align 8
  %i.agz = getelementptr inbounds nuw i8, ptr %25, i64 104 ; 16 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %25, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.agz, i8 0, i64 32, i1 false)
  store ptr %8, ptr %i.aha, align 8
  %i.ahb = getelementptr inbounds nuw i8, ptr %25, i64 144 ; 24 uses
  store ptr null, ptr %i.ahb, align 8
  %i.ahc = getelementptr inbounds nuw i8, ptr %25, i64 152
  %i.ahd = getelementptr inbounds nuw i8, ptr %25, i64 168 ; 2 uses
  store i8 0, ptr %i.ahd, align 8
  %i.ahe = getelementptr inbounds nuw i8, ptr %25, i64 176
  %i.ahf = getelementptr inbounds nuw i8, ptr %25, i64 192 ; 2 uses
  store i8 0, ptr %i.ahf, align 8
  %i.ahg = getelementptr inbounds nuw i8, ptr %25, i64 200
  %i.ahh = getelementptr inbounds nuw i8, ptr %25, i64 216 ; 2 uses
  store i8 0, ptr %i.ahh, align 8
  %i.ahi = getelementptr inbounds nuw i8, ptr %25, i64 224
  %i.ahj = getelementptr inbounds nuw i8, ptr %25, i64 240 ; 2 uses
  store i8 0, ptr %i.ahj, align 8
  %i.ahk = getelementptr inbounds nuw i8, ptr %25, i64 304 ; 5 uses
  store i8 0, ptr %i.ahk, align 8
  %i.ahl = getelementptr inbounds nuw i8, ptr %25, i64 312 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahl, i8 0, i64 16, i1 false)
  %i.ahm = getelementptr inbounds nuw i8, ptr %25, i64 328 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %25, i64 360 ; 2 uses
  store i8 0, ptr %i.ahn, align 8
  %i.aho = getelementptr inbounds nuw i8, ptr %25, i64 368 ; 4 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %25, i64 384 ; 4 uses
  store i8 0, ptr %i.ahp, align 8
  %i.ahq = getelementptr inbounds nuw i8, ptr %25, i64 392 ; 15 uses
  store i8 1, ptr %i.ahq, align 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %25, i64 393 ; 4 uses
  store i8 0, ptr %i.ahr, align 1
  %i.ahs = getelementptr inbounds nuw i8, ptr %25, i64 396 ; 3 uses
  store i32 -1, ptr %i.ahs, align 4
  %i.aht = getelementptr inbounds nuw i8, ptr %25, i64 400 ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %25, i64 404 ; 3 uses
  store i8 0, ptr %i.ahu, align 4
  %i.ahv = getelementptr inbounds nuw i8, ptr %25, i64 416 ; 12 uses
  store ptr %8, ptr %i.ahv, align 8
  %i.ahw = load i64, ptr %i.afx, align 8          ; 2 uses
  %i.ahx = icmp ult i64 %i.ahw, 2147483648
  br i1 %i.ahx, label %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i34, label %._crit_edge82.i33, !prof !13

_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i34: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE14LastInputIndexEA_S6_EEPT_m.exit.i
  %i.ahy = getelementptr inbounds nuw i8, ptr %25, i64 324 ; 15 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %25, i64 320 ; 2 uses
  br label %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.i35

._crit_edge82.i33:                                ; preds = %bb.id, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE14LastInputIndexEA_S6_EEPT_m.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.i35: ; preds = %bb.id, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i34
  %i.aia = phi i8 [ 0, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i34 ], [ %i.akk, %bb.id ] ; 2 uses
  %indvars.iv.i36 = phi i64 [ 0, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i34 ], [ %indvars.iv.next.i77, %bb.id ] ; 6 uses
  %i.aib = phi i64 [ %i.ahw, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i34 ], [ %i.akr, %bb.id ]
  %.02981.i37 = phi i1 [ false, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i34 ], [ %spec.select.i73, %bb.id ]
  %.03080.i38 = phi i32 [ undef, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i34 ], [ %.131121129.i69, %bb.id ]
  %.sroa.7.077.i39 = phi i32 [ undef, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i34 ], [ %.sroa.7.2.i72, %bb.id ]
  %.sroa.060.076.i40 = phi i32 [ undef, %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.lr.ph.i34 ], [ %.sroa.060.2.i71, %bb.id ]
  %i.aic = shl nuw nsw i64 %i.aib, 32
  %sext.i41 = add nsw i64 %i.aic, -4294967296
  %i.aid = ashr exact i64 %sext.i41, 32
  %i.aie = icmp slt i64 %indvars.iv.i36, %i.aid
  br i1 %i.aie, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.i35
  %i.aif = load i8, ptr %i.ahq, align 8, !range !9, !noundef !10
  %i.aig = trunc nuw i8 %i.aif to i1
  br i1 %i.aig, label %bb.ie, label %bb.ii

bb.hp:                                            ; preds = %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.i35
  %i.aih = load ptr, ptr %i.afr, align 8
  %i.aii = getelementptr inbounds nuw [8 x i8], ptr %i.aih, i64 %indvars.iv.i36 ; 7 uses
  %i.aij = load i32, ptr %i.aii, align 4          ; 2 uses
  %i.aik = icmp eq i32 %i.aij, 15
  br i1 %i.aik, label %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i, label %bb.hr

_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i: ; preds = %bb.hp
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aii, i64 4
  %i.aim = load i32, ptr %i.ail, align 4          ; 2 uses
  %i.ain = lshr i32 %i.aim, 2                     ; 2 uses
  %i.aio = and i32 %i.aim, 2
  %i.aip = icmp eq i32 %i.aio, 0
  %i.aiq = trunc nuw nsw i64 %indvars.iv.i36 to i32 ; 2 uses
  br i1 %i.aip, label %bb.hq, label %.thread123.i68

bb.hq:                                            ; preds = %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i
  store i8 0, ptr %i.ahq, align 8
  %.pre88.i96 = load i32, ptr %i.aii, align 4
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.air = phi i32 [ %.pre88.i96, %bb.hq ], [ %i.aij, %bb.hp ] ; 2 uses
  %.sroa.060.1.i63 = phi i32 [ %i.aiq, %bb.hq ], [ %.sroa.060.076.i40, %bb.hp ] ; 2 uses
  %.sroa.7.1.i64 = phi i32 [ 0, %bb.hq ], [ %.sroa.7.077.i39, %bb.hp ] ; 2 uses
  %.131.i65 = phi i32 [ %i.ain, %bb.hq ], [ %.03080.i38, %bb.hp ] ; 5 uses
  %.1.i66 = phi i1 [ true, %bb.hq ], [ %.02981.i37, %bb.hp ] ; 3 uses
  %i.ais = icmp eq i32 %i.air, 7
  %or.cond.i67 = select i1 %i.ais, i1 %.1.i66, i1 false
  br i1 %or.cond.i67, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  store i8 0, ptr %i.ahq, align 8
  %.pr.i95 = load i32, ptr %i.aii, align 4
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.ait = phi i32 [ %.pr.i95, %bb.hs ], [ %i.air, %bb.hr ] ; 2 uses
  %i.aiu = icmp eq i32 %i.ait, 17
  br i1 %i.aiu, label %bb.hu, label %.thread123.i68

bb.hu:                                            ; preds = %bb.ht
  %i.aiv = load i32, ptr %i.ahy, align 4          ; 2 uses
  %.not75.i79 = icmp sgt i32 %i.aiv, %.131.i65
  br i1 %.not75.i79, label %._crit_edge.i86, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %bb.hu, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEE3AddERKS5_PNS0_4ZoneE.exit.i
  %i.aiw = phi i32 [ %i.ajz, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEE3AddERKS5_PNS0_4ZoneE.exit.i ], [ %i.aiv, %bb.hu ] ; 2 uses
  %i.aix = load ptr, ptr %i.ahv, align 8          ; 3 uses
  %i.aiy = load i32, ptr %i.ahz, align 8          ; 3 uses
  %i.aiz = icmp slt i32 %i.aiw, %i.aiy
  br i1 %i.aiz, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %.lr.ph.i80
  %i.aja = load ptr, ptr %i.ahl, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEE3AddERKS5_PNS0_4ZoneE.exit.i

bb.hw:                                            ; preds = %.lr.ph.i80
  %i.ajb = shl nsw i32 %i.aiy, 1
  %i.ajc = or disjoint i32 %i.ajb, 1              ; 2 uses
  %i.ajd = icmp sgt i32 %i.aiy, -1
  br i1 %i.ajd, label %bb.hy, label %bb.hx, !prof !11

bb.hx:                                            ; preds = %bb.hw
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.hy:                                            ; preds = %bb.hw
  %i.aje = zext nneg i32 %i.ajc to i64
  %i.ajf = mul nuw nsw i64 %i.aje, 12
  %i.ajg = add nuw nsw i64 %i.ajf, 4              ; 3 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aix, i64 24
  %i.aji = load i64, ptr %i.ajh, align 8
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aix, i64 16 ; 3 uses
  %i.ajk = load i64, ptr %i.ajj, align 8          ; 2 uses
  %i.ajl = sub i64 %i.aji, %i.ajk
  %i.ajm = icmp ugt i64 %i.ajg, %i.ajl
  br i1 %i.ajm, label %bb.hz, label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEA_S6_EEPT_m.exit.i.i.i.i.i, !prof !12

bb.hz:                                            ; preds = %bb.hy
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.aix, i64 noundef %i.ajg) #8
  %.pre.i.i.i.i.i.i.i94 = load i64, ptr %i.ajj, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEA_S6_EEPT_m.exit.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEA_S6_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.hz, %bb.hy
  %i.ajn = phi i64 [ %.pre.i.i.i.i.i.i.i94, %bb.hz ], [ %i.ajk, %bb.hy ] ; 2 uses
  %i.ajo = inttoptr i64 %i.ajn to ptr             ; 3 uses
  %i.ajp = add i64 %i.ajn, %i.ajg
  store i64 %i.ajp, ptr %i.ajj, align 8
  %i.ajq = load i32, ptr %i.ahy, align 4          ; 3 uses
  %i.ajr = icmp sgt i32 %i.ajq, 0
  br i1 %i.ajr, label %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i.i92, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i.i92: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.ajs = load ptr, ptr %i.ahl, align 8
  %i.ajt = zext nneg i32 %i.ajq to i64
  %i.aju = mul nuw nsw i64 %i.ajt, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ajo, ptr align 1 %i.ajs, i64 %i.aju, i1 false)
  %.pre.i.i.i.i93 = load i32, ptr %i.ahy, align 4
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i: ; preds = %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i.i92, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.ajv = phi i32 [ %i.ajq, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEA_S6_EEPT_m.exit.i.i.i.i.i ], [ %.pre.i.i.i.i93, %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i.i92 ]
  store ptr %i.ajo, ptr %i.ahl, align 8
  store i32 %i.ajc, ptr %i.ahz, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEE3AddERKS5_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEE3AddERKS5_PNS0_4ZoneE.exit.i: ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i, %bb.hv
  %.sink137.i81 = phi i32 [ %i.aiw, %bb.hv ], [ %i.ajv, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i ] ; 2 uses
  %.sink134.i82 = phi ptr [ %i.aja, %bb.hv ], [ %i.ajo, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i ]
  %i.ajw = add nsw i32 %.sink137.i81, 1
  store i32 %i.ajw, ptr %i.ahy, align 4
  %i.ajx = sext i32 %.sink137.i81 to i64
  %i.ajy = getelementptr inbounds [12 x i8], ptr %.sink134.i82, i64 %i.ajx ; 3 uses
  store i32 -1, ptr %i.ajy, align 4
  %.sroa.5.0..sroa_idx48.i83 = getelementptr inbounds nuw i8, ptr %i.ajy, i64 4
  store i32 -1, ptr %.sroa.5.0..sroa_idx48.i83, align 4
  %.sroa.6.0..sroa_idx50.i84 = getelementptr inbounds nuw i8, ptr %i.ajy, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx50.i84, align 4
  %i.ajz = load i32, ptr %i.ahy, align 4          ; 2 uses
  %.not.i85 = icmp sgt i32 %i.ajz, %.131.i65
  br i1 %.not.i85, label %._crit_edge.i86, label %.lr.ph.i80, !llvm.loop !38

._crit_edge.i86:                                  ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE10LookaroundEE3AddERKS5_PNS0_4ZoneE.exit.i, %bb.hu
  %.val.i87 = load ptr, ptr %i.ahl, align 8
  %i.aka = sext i32 %.131.i65 to i64
  %i.akb = getelementptr inbounds [12 x i8], ptr %.val.i87, i64 %i.aka ; 3 uses
  store i32 %.sroa.060.1.i63, ptr %i.akb, align 4
  %.sroa.562.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.akb, i64 4
  %i.akc = trunc i64 %indvars.iv.i36 to i32
  %i.akd = add i32 %i.akc, 1
  store i32 %i.akd, ptr %.sroa.562.0..sroa_idx.i88, align 4
  %.sroa.7.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  store i32 %.sroa.7.1.i64, ptr %.sroa.7.0..sroa_idx.i89, align 4
  %.pre89.i90 = load i32, ptr %i.aii, align 4
  %.pre90.i91 = load i8, ptr %i.ahu, align 4, !range !9
  br label %.thread123.i68

.thread123.i68:                                   ; preds = %._crit_edge.i86, %bb.ht, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i
  %.131121129.i69 = phi i32 [ %.131.i65, %._crit_edge.i86 ], [ %.131.i65, %bb.ht ], [ %i.ain, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i ]
  %.1122128.i70 = phi i1 [ %.1.i66, %._crit_edge.i86 ], [ %.1.i66, %bb.ht ], [ true, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i ]
  %i.ake = phi i8 [ %.pre90.i91, %._crit_edge.i86 ], [ %i.aia, %bb.ht ], [ %i.aia, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i ]
  %i.akf = phi i32 [ %.pre89.i90, %._crit_edge.i86 ], [ %i.ait, %bb.ht ], [ 15, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i ] ; 4 uses
  %.sroa.060.2.i71 = phi i32 [ undef, %._crit_edge.i86 ], [ %.sroa.060.1.i63, %bb.ht ], [ %i.aiq, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i ]
  %.sroa.7.2.i72 = phi i32 [ undef, %._crit_edge.i86 ], [ %.sroa.7.1.i64, %bb.ht ], [ 1, %_ZNSt8optionalIN2v88internal12_GLOBAL__N_114NfaInterpreterItE10LookaroundEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i ]
  %i.akg = icmp ne i32 %i.akf, 16
  %spec.select.i73 = select i1 %i.akg, i1 %.1122128.i70, i1 false
  %i.akh = trunc nuw i8 %i.ake to i1
  br i1 %i.akh, label %_ZN2v88internal17RegExpInstruction8IsFilterERKS1_.exit.i76, label %bb.ia

bb.ia:                                            ; preds = %.thread123.i68
  switch i32 %i.akf, label %_ZN2v88internal17RegExpInstruction8IsFilterERKS1_.exit.i76 [
    i32 10, label %bb.ib
    i32 9, label %bb.ib
    i32 12, label %bb.ib
  ]

bb.ib:                                            ; preds = %bb.ia, %bb.ia, %bb.ia
  %.sroa.042.0.insert.insert.i74 = or disjoint i64 %indvars.iv.i36, 4294967296 ; 2 uses
  store i64 %.sroa.042.0.insert.insert.i74, ptr %i.aht, align 8
  %i.aki = lshr i64 %.sroa.042.0.insert.insert.i74, 32
  %i.akj = trunc i64 %i.aki to i8
  %.pr73.pre.i75 = load i32, ptr %i.aii, align 4
  br label %_ZN2v88internal17RegExpInstruction8IsFilterERKS1_.exit.i76

_ZN2v88internal17RegExpInstruction8IsFilterERKS1_.exit.i76: ; preds = %bb.ib, %bb.ia, %.thread123.i68
  %i.akk = phi i8 [ 1, %.thread123.i68 ], [ %i.akj, %bb.ib ], [ 0, %bb.ia ]
  %i.akl = phi i32 [ %i.akf, %.thread123.i68 ], [ %.pr73.pre.i75, %bb.ib ], [ %i.akf, %bb.ia ]
  %i.akm = icmp eq i32 %i.akl, 8
  br i1 %i.akm, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %_ZN2v88internal17RegExpInstruction8IsFilterERKS1_.exit.i76
  %i.akn = getelementptr inbounds nuw i8, ptr %i.aii, i64 4
  %i.ako = load i32, ptr %i.akn, align 4
  %i.akp = add nsw i32 %i.ako, 1
  %i.akq = load i32, ptr %i.afz, align 4
  %.sroa.speculated.i78 = call i32 @llvm.smax.i32(i32 %i.akq, i32 %i.akp)
  store i32 %.sroa.speculated.i78, ptr %i.afz, align 4
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %_ZN2v88internal17RegExpInstruction8IsFilterERKS1_.exit.i76
  %indvars.iv.next.i77 = add nuw nsw i64 %indvars.iv.i36, 1
  %i.akr = load i64, ptr %i.afx, align 8          ; 2 uses
  %i.aks = icmp ult i64 %i.akr, 2147483648
  br i1 %i.aks, label %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.i35, label %._crit_edge82.i33, !prof !15, !llvm.loop !39

bb.ie:                                            ; preds = %bb.ho
  %i.akt = load i32, ptr %i.ahy, align 4          ; 3 uses
  store i8 0, ptr %i.ahp, align 8
  %i.aku = load ptr, ptr %i.ahv, align 8          ; 3 uses
  store ptr null, ptr %i.aho, align 8
  %i.akv = getelementptr inbounds nuw i8, ptr %25, i64 376 ; 2 uses
  store i32 %i.akt, ptr %i.akv, align 8
  %i.akw = getelementptr inbounds nuw i8, ptr %25, i64 380 ; 4 uses
  store i32 0, ptr %i.akw, align 4
  %i.akx = icmp sgt i32 %i.akt, 0
  br i1 %i.akx, label %bb.if, label %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.thread.i51

_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.thread.i51: ; preds = %bb.ie
  store i8 1, ptr %i.ahp, align 8
  br label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42

bb.if:                                            ; preds = %bb.ie
  %narrow.i.i.i.i.i.i52 = add nuw i32 %i.akt, 7
  %i.aky = and i32 %narrow.i.i.i.i.i.i52, -8
  %i.akz = zext i32 %i.aky to i64                 ; 3 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.aku, i64 24
  %i.alb = load i64, ptr %i.ala, align 8
  %i.alc = getelementptr inbounds nuw i8, ptr %i.aku, i64 16 ; 3 uses
  %i.ald = load i64, ptr %i.alc, align 8          ; 2 uses
  %i.ale = sub i64 %i.alb, %i.ald
  %i.alf = icmp ult i64 %i.ale, %i.akz
  br i1 %i.alf, label %bb.ig, label %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i53, !prof !12

bb.ig:                                            ; preds = %bb.if
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.aku, i64 noundef %i.akz) #8
  %.pre.i.i.i.i.i.i.i.i62 = load i64, ptr %i.alc, align 8
  br label %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i53

_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i53: ; preds = %bb.ig, %bb.if
  %i.alg = phi i64 [ %.pre.i.i.i.i.i.i.i.i62, %bb.ig ], [ %i.ald, %bb.if ] ; 2 uses
  %i.alh = inttoptr i64 %i.alg to ptr
  %i.ali = add i64 %i.alg, %i.akz
  store i64 %i.ali, ptr %i.alc, align 8
  %.pre.i54 = load i32, ptr %i.ahy, align 4       ; 2 uses
  %.pre87.i55 = load ptr, ptr %i.ahv, align 8
  store ptr %i.alh, ptr %i.aho, align 8
  store i8 1, ptr %i.ahp, align 8
  %i.alj = icmp sgt i32 %.pre.i54, 0
  br i1 %i.alj, label %.lr.ph.i.i56, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42

.lr.ph.i.i56:                                     ; preds = %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i53, %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i58
  %.08.i.i57 = phi i32 [ %i.alt, %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i58 ], [ 0, %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i53 ]
  %i.alk = load i32, ptr %i.akw, align 4          ; 2 uses
  %i.all = load i32, ptr %i.akv, align 8          ; 2 uses
  %i.alm = icmp slt i32 %i.alk, %i.all
  br i1 %i.alm, label %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i58, label %bb.ih

bb.ih:                                            ; preds = %.lr.ph.i.i56
  %i.aln = shl nsw i32 %i.all, 1
  %i.alo = or disjoint i32 %i.aln, 1
  call void @_ZN2v88internal8ZoneListIbE6ResizeEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.aho, i32 noundef %i.alo, ptr noundef %.pre87.i55)
  %i.alp = load i32, ptr %i.akw, align 4
  br label %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i58

_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i58: ; preds = %bb.ih, %.lr.ph.i.i56
  %.sink10.i.i.i59 = phi i32 [ %i.alp, %bb.ih ], [ %i.alk, %.lr.ph.i.i56 ] ; 2 uses
  %.sink6.i.i.i60 = load ptr, ptr %i.aho, align 8
  %i.alq = add nsw i32 %.sink10.i.i.i59, 1
  store i32 %i.alq, ptr %i.akw, align 4
  %i.alr = sext i32 %.sink10.i.i.i59 to i64
  %i.als = getelementptr inbounds i8, ptr %.sink6.i.i.i60, i64 %i.alr
  store i8 0, ptr %i.als, align 1
  %i.alt = add nuw nsw i32 %.08.i.i57, 1          ; 2 uses
  %exitcond.not.i.i61 = icmp eq i32 %i.alt, %.pre.i54
  br i1 %exitcond.not.i.i61, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42, label %.lr.ph.i.i56, !llvm.loop !33

bb.ii:                                            ; preds = %bb.ho
  %i.alu = load ptr, ptr %i.ahv, align 8          ; 3 uses
  store ptr %i.alu, ptr %i.ahe, align 8
  %i.alv = getelementptr inbounds nuw i8, ptr %25, i64 184
  store ptr null, ptr %i.alv, align 8
  store i8 1, ptr %i.ahf, align 8
  store ptr %i.alu, ptr %i.ahc, align 8
  %i.alw = getelementptr inbounds nuw i8, ptr %25, i64 160
  store ptr null, ptr %i.alw, align 8
  store i8 1, ptr %i.ahd, align 8
  store ptr %i.alu, ptr %i.ahm, align 8
  %i.alx = getelementptr inbounds nuw i8, ptr %25, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.alx, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ahn, align 8
  %i.aly = load i32, ptr %i.ahy, align 4          ; 2 uses
  %i.alz = icmp sgt i32 %i.aly, 0
  br i1 %i.alz, label %.lr.ph85.i48, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42

.lr.ph85.i48:                                     ; preds = %bb.ii, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %.0.in83.i49 = phi i32 [ %.0.i50, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i ], [ %i.aly, %bb.ii ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ama = load i64, ptr %i.age, align 8          ; 2 uses
  %i.amb = icmp ult i64 %i.ama, 2147483648
  br i1 %i.amb, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.ij, !prof !11

bb.ij:                                            ; preds = %.lr.ph85.i48
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %.lr.ph85.i48
  %.0.i50 = add nsw i32 %.0.in83.i49, -1
  %i.amc = trunc nuw nsw i64 %i.ama to i32
  %i.amd = add nuw nsw i32 %i.amc, 1
  store i32 %i.amd, ptr %i.a, align 4
  %i.ame = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorINS1_IbEEE12emplace_backIJiRPNS0_4ZoneEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %i.ahm, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.ahv) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.amf = icmp sgt i32 %.0.in83.i49, 1
  br i1 %i.amf, label %.lr.ph85.i48, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42, !llvm.loop !40

_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i58, %bb.ii, %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i53, %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.thread.i51
  %i.amg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !9, !noundef !10
  %i.amh = trunc nuw i8 %i.amg to i1
  br i1 %i.amh, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42
  %i.ami = load ptr, ptr %i.ahv, align 8          ; 2 uses
  store ptr %i.ami, ptr %i.ahg, align 8
  %i.amj = getelementptr inbounds nuw i8, ptr %25, i64 208
  store ptr null, ptr %i.amj, align 8
  store i8 1, ptr %i.ahh, align 8
  store ptr %i.ami, ptr %i.ahi, align 8
  %i.amk = getelementptr inbounds nuw i8, ptr %25, i64 232
  store ptr null, ptr %i.amk, align 8
  store i8 1, ptr %i.ahj, align 8
  %i.aml = load i32, ptr %i.afy, align 8
  %i.amm = sext i32 %i.aml to i64
  %i.amn = load i32, ptr %i.afz, align 4
  %i.amo = sext i32 %i.amn to i64
  %i.amp = load i32, ptr %i.ahy, align 4
  %i.amq = sext i32 %i.amp to i64
  %i.amr = add nsw i64 %i.amq, %i.amm             ; 2 uses
  %i.ams = add nsw i64 %i.amr, %i.amo
  %i.amt = shl nsw i64 %i.ams, 3
  %i.amu = shl nsw i64 %i.amr, 2
  %i.amv = add nsw i64 %i.amu, 56
  %i.amw = add nsw i64 %i.amv, %i.amt
  %i.amx = getelementptr inbounds nuw i8, ptr %25, i64 408
  store i64 %i.amw, ptr %i.amx, align 8
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42
  %.val34.i43 = load i64, ptr %i.agy, align 8     ; 2 uses
  %.not5.i.i.i.i44 = icmp eq i64 %.val34.i43, 0
  br i1 %.not5.i.i.i.i44, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItEC2EPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS8_INS0_6StringEEEiPNS0_4ZoneE.exit, label %.lr.ph.i.i.i.preheader.i45

.lr.ph.i.i.i.preheader.i45:                       ; preds = %bb.il
  %.idx.i46 = shl i64 %.val34.i43, 3
  %.val32.i47 = load ptr, ptr %i.agi, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %.val32.i47, i8 -1, i64 %.idx.i46, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItEC2EPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS8_INS0_6StringEEEiPNS0_4ZoneE.exit

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItEC2EPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS8_INS0_6StringEEEiPNS0_4ZoneE.exit: ; preds = %bb.il, %.lr.ph.i.i.i.preheader.i45
  %i.amy = load i32, ptr %i.afy, align 8
  %i.amz = sdiv i32 %7, %i.amy                    ; 3 uses
end_hunk_1
