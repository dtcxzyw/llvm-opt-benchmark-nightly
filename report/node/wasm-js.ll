Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-js?download=true
inline.NumInlined: 4642
inline.NumDeleted: 1995
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2v88internal4wasm20WebAssemblyExceptionERKNS_20FunctionCallbackInfoINS_5ValueEEE:bb.a

_ZN2v812_GLOBAL__N_112_GLOBAL__N_117GetIterableLengthEPNS_8internal7IsolateENS_5LocalINS_7ContextEEENS5_INS_6ObjectEEE.exit.thread.i.i: ; preds = %_ZN2v812_GLOBAL__N_112_GLOBAL__N_117GetIterableLengthEPNS_8internal7IsolateENS_5LocalINS_7ContextEEENS5_INS_6ObjectEEE.exit.i.i, %_ZN2v810MaybeLocalINS_5ValueEE14ToLocalCheckedEv.exit.i.i.i, %bb.u
  call void (ptr, ptr, ...) @_ZN2v88internal4wasm12ErrorThrower9TypeErrorEPKcz(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull @.str.92) #20
  br label %.loopexit.i

bb.v:                                             ; preds = %_ZN2v812_GLOBAL__N_112_GLOBAL__N_117GetIterableLengthEPNS_8internal7IsolateENS_5LocalINS_7ContextEEENS5_INS_6ObjectEEE.exit.i.i
  %i.ep = load i64, ptr %.0.i.i86.i, align 8
  %i.eq = add i64 %i.ep, -1
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = lshr i64 %i.et, 32
  %i.ev = trunc nuw i64 %i.eu to i32              ; 2 uses
  %i.ew = ashr i32 %i.ev, 2
  %.not.i94.i = icmp eq i32 %i.en, %i.ew
  br i1 %.not.i94.i, label %.preheader.i.i, label %bb.w

.preheader.i.i:                                   ; preds = %bb.v
  %.not6871.i.i = icmp slt i32 %i.ev, 4
  br i1 %.not6871.i.i, label %.loopexit244.i, label %.lr.ph.i.i

bb.w:                                             ; preds = %bb.v
  call void (ptr, ptr, ...) @_ZN2v88internal4wasm12ErrorThrower9TypeErrorEPKcz(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull @.str.93) #20
  br label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.critedge78.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.critedge78.i.i ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.ey = call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEEj(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0145.0.i, ptr %i.eg, i32 noundef %i.ex) #20 ; 10 uses
  %.not69.i.i = icmp eq ptr %i.ey, null
  br i1 %.not69.i.i, label %.loopexit.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.ez = load i64, ptr %.0.i.i86.i, align 8
  %i.fa = add i64 %i.ez, -1
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = shl nuw nsw i64 %indvars.iv.i.i, 2
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 1            ; 6 uses
  %i.fg = and i32 %i.ff, 3                        ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.fi = and i32 %i.ff, 268435440
  %i.fj = add nsw i32 %i.fi, -5648                ; 2 uses
  %i.fk = call i32 @llvm.fshl.i32(i32 %i.fj, i32 %i.fj, i32 24) ; 2 uses
  %i.fl = icmp ult i32 %i.fk, 8
  br i1 %i.fl, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.82) #23
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.fm = and i32 %i.ff, 268435427
  switch i32 %i.fm, label %select.unfold.i.i [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i.i
    i32 514, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i.i
    i32 2, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i.i
  ]

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i.i: ; preds = %bb.y
  %switch.idx.cast.i.i.i = trunc nuw nsw i32 %i.fk to i8
  switch i8 %switch.idx.cast.i.i.i, label %default.unreachable [
    i8 0, label %bb.ab
    i8 1, label %bb.af
    i8 2, label %bb.aj
    i8 3, label %bb.as
    i8 7, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i.i
    i8 6, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i.i
    i8 4, label %bb.be
    i8 5, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i.i
  ]

bb.ab:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i.i
  %i.fn = load i64, ptr %i.ey, align 8            ; 3 uses
  %i.fo = and i64 %i.fn, 3
  %i.fp = icmp eq i64 %i.fo, 1
  br i1 %i.fp, label %bb.ac, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.fq = add nsw i64 %i.fn, -1
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = add i64 %i.fs, 11
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = load i16, ptr %i.fu, align 2
  %.not.i.i.i.i = icmp eq i16 %i.fv, 131
  br i1 %.not.i.i.i.i, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.i.i.i, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i.i.i

_ZNK2v85Value16QuickIsUndefinedEv.exit.i.i.i:     ; preds = %bb.ac
  %i.fw = add i64 %i.fn, 39
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = load i64, ptr %i.fx, align 8
  %.mask.i.i.i = and i64 %i.fy, -4294967296
  %i.fz = icmp eq i64 %.mask.i.i.i, 17179869184
  br i1 %i.fz, label %bb.ae, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i.i.i

_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i.i.i: ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit.i.i.i, %bb.ac, %bb.ab
  %i.ga = call ptr @_ZNK2v85Value7ToInt32ENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ey, ptr %i.eg) #20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i.i.i
  %i.gb = call i64 @_ZNK2v85Value10Int32ValueENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ga, ptr %i.eg) #20 ; 2 uses
  %i.gc = trunc i64 %i.gb to i1
  br i1 %i.gc, label %_ZNK2v85MaybeIiE2ToEPi.exit.thread.i.i.i, label %.loopexit.i, !prof !11

_ZNK2v85MaybeIiE2ToEPi.exit.thread.i.i.i:         ; preds = %bb.ad
  %.sroa.56.0.extract.shift.i.i.i = lshr i64 %i.gb, 32
  %.sroa.56.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.56.0.extract.shift.i.i.i to i32
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK2v85MaybeIiE2ToEPi.exit.thread.i.i.i, %_ZNK2v85Value16QuickIsUndefinedEv.exit.i.i.i
  %.0.ph.i.i = phi i32 [ %.sroa.56.0.extract.trunc.i.i.i, %_ZNK2v85MaybeIiE2ToEPi.exit.thread.i.i.i ], [ 0, %_ZNK2v85Value16QuickIsUndefinedEv.exit.i.i.i ]
  call void @_ZN2v88internal23EncodeI32ExceptionValueENS0_12DirectHandleINS0_10FixedArrayEEEPjj(ptr %i.dj, ptr noundef nonnull %i.a, i32 noundef %.0.ph.i.i) #20
  br label %.critedge78.i.i

bb.af:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i.i
  %i.gd = load i64, ptr %i.ey, align 8            ; 3 uses
  %i.ge = and i64 %i.gd, 3
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.ag, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i85.i.i

bb.ag:                                            ; preds = %bb.af
  %i.gg = add nsw i64 %i.gd, -1
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = add i64 %i.gi, 11
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = load i16, ptr %i.gk, align 2
  %.not.i.i88.i.i = icmp eq i16 %i.gl, 131
  br i1 %.not.i.i88.i.i, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.i89.i.i, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i85.i.i

_ZNK2v85Value16QuickIsUndefinedEv.exit.i89.i.i:   ; preds = %bb.ag
  %i.gm = add i64 %i.gd, 39
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = load i64, ptr %i.gn, align 8
  %.mask.i90.i.i = and i64 %i.go, -4294967296
  %i.gp = icmp eq i64 %.mask.i90.i.i, 17179869184
  br i1 %i.gp, label %bb.ai, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i85.i.i

_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i85.i.i: ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit.i89.i.i, %bb.ag, %bb.af
  %i.gq = call ptr @_ZNK2v85Value8ToBigIntENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ey, ptr %i.eg) #20 ; 2 uses
  %.not.i86.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i86.i.i, label %.loopexit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i85.i.i
  %i.gr = call noundef i64 @_ZNK2v86BigInt10Int64ValueEPb(ptr noundef nonnull align 1 dereferenceable(1) %i.gq, ptr noundef null) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNK2v85Value16QuickIsUndefinedEv.exit.i89.i.i
  %.048.ph.i.i = phi i64 [ %i.gr, %bb.ah ], [ 0, %_ZNK2v85Value16QuickIsUndefinedEv.exit.i89.i.i ]
  call void @_ZN2v88internal23EncodeI64ExceptionValueENS0_12DirectHandleINS0_10FixedArrayEEEPjm(ptr %i.dj, ptr noundef nonnull %i.a, i64 noundef %.048.ph.i.i) #20
  br label %.critedge78.i.i

bb.aj:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i.i
  %i.gs = load i64, ptr %i.ey, align 8            ; 3 uses
  %i.gt = and i64 %i.gs, 3
  %i.gu = icmp eq i64 %i.gt, 1
  br i1 %i.gu, label %bb.ak, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i91.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.gv = add nsw i64 %i.gs, -1
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = add i64 %i.gx, 11
  %i.gz = inttoptr i64 %i.gy to ptr
  %i.ha = load i16, ptr %i.gz, align 2
  %.not.i.i94.i.i = icmp eq i16 %i.ha, 131
  br i1 %.not.i.i94.i.i, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.i95.i.i, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i91.i.i

_ZNK2v85Value16QuickIsUndefinedEv.exit.i95.i.i:   ; preds = %bb.ak
  %i.hb = add i64 %i.gs, 39
  %i.hc = inttoptr i64 %i.hb to ptr
  %i.hd = load i64, ptr %i.hc, align 8
  %.mask.i96.i.i = and i64 %i.hd, -4294967296
  %i.he = icmp eq i64 %.mask.i96.i.i, 17179869184
  br i1 %i.he, label %bb.ar, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i91.i.i

_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i91.i.i: ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit.i95.i.i, %bb.ak, %bb.aj
  %i.hf = call ptr @_ZNK2v85Value8ToNumberENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ey, ptr %i.eg) #20 ; 2 uses
  %.not.i92.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i92.i.i, label %.loopexit.i, label %bb.al

bb.al:                                            ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i91.i.i
  %i.hg = call { i8, double } @_ZNK2v85Value11NumberValueENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.hf, ptr %i.eg) #20 ; 2 uses
  %i.hh = extractvalue { i8, double } %i.hg, 0
  %i.hi = extractvalue { i8, double } %i.hg, 1    ; 5 uses
  %i.hj = trunc nuw i8 %i.hh to i1
  br i1 %i.hj, label %bb.am, label %.loopexit.i, !prof !11

bb.am:                                            ; preds = %bb.al
  %i.hk = fcmp ogt double %i.hi, f0x47EFFFFFE0000000
  br i1 %i.hk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hl = fcmp ugt double %i.hi, f0x47EFFFFFEFFFFFFF
  %spec.select.i.i = select i1 %i.hl, i32 2139095040, i32 2139095039
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.hm = fcmp olt double %i.hi, f0xC7EFFFFFE0000000
  br i1 %i.hm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hn = fcmp ult double %i.hi, f0xC7EFFFFFEFFFFFFF
  %spec.select71.i.i = select i1 %i.hn, i32 -8388608, i32 -8388609
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ho = fptrunc double %i.hi to float
  %i.hp = bitcast float %i.ho to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.an, %_ZNK2v85Value16QuickIsUndefinedEv.exit.i95.i.i
  %.047.ph.i.i = phi i32 [ %i.hp, %bb.aq ], [ %spec.select71.i.i, %bb.ap ], [ %spec.select.i.i, %bb.an ], [ 0, %_ZNK2v85Value16QuickIsUndefinedEv.exit.i95.i.i ]
  call void @_ZN2v88internal23EncodeI32ExceptionValueENS0_12DirectHandleINS0_10FixedArrayEEEPjj(ptr %i.dj, ptr noundef nonnull %i.a, i32 noundef %.047.ph.i.i) #20
  br label %.critedge78.i.i

bb.as:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i.i
  %i.hq = load i64, ptr %i.ey, align 8            ; 3 uses
  %i.hr = and i64 %i.hq, 3
  %i.hs = icmp eq i64 %i.hr, 1
  br i1 %i.hs, label %bb.at, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i97.i.i

bb.at:                                            ; preds = %bb.as
  %i.ht = add nsw i64 %i.hq, -1
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = load i64, ptr %i.hu, align 8
  %i.hw = add i64 %i.hv, 11
  %i.hx = inttoptr i64 %i.hw to ptr
  %i.hy = load i16, ptr %i.hx, align 2
  %.not.i.i100.i.i = icmp eq i16 %i.hy, 131
  br i1 %.not.i.i100.i.i, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.i101.i.i, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i97.i.i

_ZNK2v85Value16QuickIsUndefinedEv.exit.i101.i.i:  ; preds = %bb.at
  %i.hz = add i64 %i.hq, 39
  %i.ia = inttoptr i64 %i.hz to ptr
  %i.ib = load i64, ptr %i.ia, align 8
  %.mask.i102.i.i = and i64 %i.ib, -4294967296
  %i.ic = icmp eq i64 %.mask.i102.i.i, 17179869184
  br i1 %i.ic, label %bb.av, label %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i97.i.i

_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i97.i.i: ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit.i101.i.i, %bb.at, %bb.as
  %i.id = call ptr @_ZNK2v85Value8ToNumberENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ey, ptr %i.eg) #20 ; 2 uses
  %.not.i98.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i98.i.i, label %.loopexit.i, label %bb.au

bb.au:                                            ; preds = %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i97.i.i
  %i.ie = call { i8, double } @_ZNK2v85Value11NumberValueENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.id, ptr %i.eg) #20 ; 2 uses
  %i.if = extractvalue { i8, double } %i.ie, 0
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %_ZNK2v85MaybeIdE2ToEPd.exit.thread.i.i.i, label %.loopexit.i, !prof !11

_ZNK2v85MaybeIdE2ToEPd.exit.thread.i.i.i:         ; preds = %bb.au
  %i.ih = extractvalue { i8, double } %i.ie, 1
  %i.ii = bitcast double %i.ih to i64
  br label %bb.av

bb.av:                                            ; preds = %_ZNK2v85MaybeIdE2ToEPd.exit.thread.i.i.i, %_ZNK2v85Value16QuickIsUndefinedEv.exit.i101.i.i
  %.046.ph.i.i = phi i64 [ %i.ii, %_ZNK2v85MaybeIdE2ToEPd.exit.thread.i.i.i ], [ 0, %_ZNK2v85Value16QuickIsUndefinedEv.exit.i101.i.i ]
  call void @_ZN2v88internal23EncodeI64ExceptionValueENS0_12DirectHandleINS0_10FixedArrayEEEPjm(ptr %i.dj, ptr noundef nonnull %i.a, i64 noundef %.046.ph.i.i) #20
  br label %.critedge78.i.i

select.unfold.i.i:                                ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ij = icmp eq i32 %i.fg, 3
  br i1 %i.ij, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %select.unfold.i.i
  %i.ik = load i64, ptr %.sroa.0146.0.i, align 8
  %i.il = add i64 %i.ik, 47
  %i.im = inttoptr i64 %i.il to ptr
  %i.in = load atomic volatile i64, ptr %i.im acquire, align 8
  %i.io = add i64 %i.in, 263
  %i.ip = inttoptr i64 %i.io to ptr
  %i.iq = load i64, ptr %i.ip, align 8
  %i.ir = add i64 %i.iq, 7
  %i.is = inttoptr i64 %i.ir to ptr
  %i.it = load i64, ptr %i.is, align 8
  %i.iu = inttoptr i64 %i.it to ptr
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 216
  %i.iz = load ptr, ptr %i.iy, align 8            ; 2 uses
  %i.ja = lshr i32 %i.ff, 8
  %i.jb = and i32 %i.ja, 1048575
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 176
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 184
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = load ptr, ptr %i.jc, align 8            ; 2 uses
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = ashr exact i64 %i.ji, 2
  %i.jk = zext nneg i32 %i.jb to i64              ; 2 uses
  %i.jl = icmp ugt i64 %i.jj, %i.jk
  call void @llvm.assume(i1 %i.jl)
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.jk
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.jm, align 4
  %i.jn = and i32 %i.ff, -268435201
  %i.jo = shl i32 %.sroa.02.0.copyload.i.i.i, 8
  %i.jp = or i32 %i.jo, %i.jn
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %select.unfold.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.jp, %bb.aw ], [ %i.ff, %select.unfold.i.i ]
  %i.jq = call ptr @_ZN2v88internal4wasm14JSToWasmObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS1_18CanonicalValueTypeEPPKc(ptr noundef nonnull %i.f, ptr nonnull %i.ey, i32 %.sroa.014.0.i.i, ptr noundef nonnull %i.b) #20 ; 2 uses
  %.not70.i.i = icmp eq ptr %i.jq, null
  br i1 %.not70.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jr = load i64, ptr %i.dj, align 8
  %i.js = add i64 %i.jr, -1                       ; 3 uses
  %i.jt = inttoptr i64 %i.js to ptr
  %i.ju = load i32, ptr %i.a, align 4             ; 2 uses
  %i.jv = add i32 %i.ju, 1
  store i32 %i.jv, ptr %i.a, align 4
  %i.jw = load i64, ptr %i.jq, align 8            ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jy = sext i32 %i.ju to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.jy ; 2 uses
  store atomic volatile i64 %i.jw, ptr %i.jz monotonic, align 8
  %i.ka = trunc i64 %i.jw to i1
  br i1 %i.ka, label %bb.az, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread.i.i

bb.az:                                            ; preds = %bb.ay
  %i.kb = or disjoint i64 %i.js, 1                ; 2 uses
  %i.kc = ptrtoint ptr %i.jz to i64               ; 2 uses
  %i.kd = and i64 %i.js, -262144
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = load i64, ptr %i.ke, align 262144       ; 2 uses
  %i.kg = and i64 %i.kf, 32
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.kg, 0
  %i.kh = and i64 %i.kf, 25
  %.not38.i.i.i.i.i.i.i = icmp eq i64 %i.kh, 0
  br i1 %.not38.i.i.i.i.i.i.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.ki = and i64 %i.jw, -262144
  %i.kj = inttoptr i64 %i.ki to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i.i = load i64, ptr %i.kj, align 262144
  %i.kk = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i.i = icmp eq i64 %i.kk, 0
  br i1 %.not39.i.i.i.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.kb, i64 noundef %i.kc, i64 %i.jw) #20
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread.i.i, label %bb.bd, !prof !11

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.kb, i64 %i.kc, i64 %i.jw) #20
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread.i.i: ; preds = %bb.bd, %bb.bc, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.critedge78.i.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.ax
  %i.kl = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal4wasm12ErrorThrower9TypeErrorEPKcz(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull @.str.71, ptr noundef %i.kl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.loopexit.i

bb.be:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i.i
  call void (ptr, ptr, ...) @_ZN2v88internal4wasm12ErrorThrower9TypeErrorEPKcz(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull @.str.94) #20
  br label %.loopexit.i

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i.i: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i.i, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i.i, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i.i, %bb.aa, %bb.aa, %bb.aa
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.82) #23
  unreachable

default.unreachable:                              ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i.i
  unreachable

.critedge78.i.i:                                  ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.thread.i.i, %bb.av, %bb.ar, %bb.ai, %bb.ae
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.km = load i64, ptr %.0.i.i86.i, align 8
  %i.kn = add i64 %i.km, -1
  %i.ko = inttoptr i64 %i.kn to ptr
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load i64, ptr %i.kp, align 8
  %i.kr = lshr i64 %i.kq, 32
  %i.ks = trunc nuw i64 %i.kr to i32
  %i.kt = ashr i32 %i.ks, 2
  %i.ku = sext i32 %i.kt to i64
  %.not68.not.i.i = icmp slt i64 %indvars.iv.next.i.i, %i.ku
  br i1 %.not68.not.i.i, label %.lr.ph.i.i, label %.loopexit244.i, !llvm.loop !20

.loopexit.i:                                      ; preds = %bb.au, %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i97.i.i, %bb.al, %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i91.i.i, %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i85.i.i, %bb.ad, %_ZNK2v85Value16QuickIsUndefinedEv.exit.thread.i.i.i, %.lr.ph.i.i, %bb.be, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i.i, %bb.w, %_ZN2v812_GLOBAL__N_112_GLOBAL__N_117GetIterableLengthEPNS_8internal7IsolateENS_5LocalINS_7ContextEEENS5_INS_6ObjectEEE.exit.thread.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit.i

.loopexit244.i:                                   ; preds = %.critedge78.i.i, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.kv = load i64, ptr %i.am, align 8
  %i.kw = trunc i64 %i.kv to i32                  ; 2 uses
  %.not.i77.i = icmp sgt i32 %i.kw, 2             ; 2 uses
  br i1 %.not.i77.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.loopexit244.i
  %i.kx = load ptr, ptr %0, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = add i64 %i.la, 648
  %i.lc = inttoptr i64 %i.lb to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit78.i

bb.bg:                                            ; preds = %.loopexit244.i
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
end_hunk_0
