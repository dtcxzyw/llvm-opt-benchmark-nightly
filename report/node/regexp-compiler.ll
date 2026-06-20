inline.NumInlined: 1535
inline.NumDeleted: 508
begin_hunk_0_@_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi:bb.a
  %i.av = icmp eq i32 %.sroa.6.0.copyload, 0
  br i1 %i.av, label %bb.h, label %bb.an

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %.sroa.0.0.copyload.i103 = load ptr, ptr %i.aw, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  br i1 %3, label %.lr.ph.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.ax, label %bb.k, label %bb.j, !prof !5

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ay = add nuw nsw i64 %.sroa.2.0.copyload.i, 4294967295
  %i.az = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.az, label %select.unfold, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h, %bb.k
  %i.ba = phi i64 [ %i.ay, %bb.k ], [ 0, %bb.h ]
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = sext i32 %.sroa.0112.0.copyload to i64
  %i.bd = sext i32 %i.au to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge98
  %indvars.iv = phi i64 [ %i.bb, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge98 ] ; 6 uses
  %i.be = or i64 %indvars.iv, %indvars.iv132
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = icmp eq i64 %i.bf, 0
  %or.cond7 = and i1 %5, %i.bg
  br i1 %or.cond7, label %.critedge98, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bh = add nsw i64 %indvars.iv, %i.bc          ; 2 uses
  %i.bi = load i32, ptr %i.k, align 8
  %i.bj = sext i32 %i.bi to i64
  %.not.i = icmp slt i64 %i.bh, %i.bj
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit, label %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread

_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit: ; preds = %bb.l
  %i.bk = getelementptr [12 x i8], ptr %i.k, i64 %i.bh
  %i.bl = getelementptr i8, ptr %i.bk, i64 12
  %i.bm = load i8, ptr %i.bl, align 4, !range !9, !noundef !10
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.critedge98, label %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread

_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread: ; preds = %bb.l, %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i103, i64 %indvars.iv
  %i.bp = load i16, ptr %i.bo, align 2            ; 6 uses
  %i.bq = load i32, ptr %6, align 4
  %i.br = add nsw i64 %indvars.iv, %i.bd          ; 6 uses
  %i.bs = sext i32 %i.bq to i64
  %i.bt = icmp sgt i64 %i.br, %i.bs
  %i.bu = load i8, ptr %i.p, align 8, !range !9
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = select i1 %i.bt, i1 true, i1 %i.bv      ; 4 uses
  switch i32 %2, label %.critedge98 [
    i32 0, label %bb.m
    i32 2, label %bb.r
    i32 1, label %bb.y
    i32 3, label %bb.aa
  ]

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread
  %.sroa.0.0.copyload.i104 = load i32, ptr %i.aj, align 4 ; 2 uses
  %i.bx = and i32 %.sroa.0.0.copyload.i104, 2
  %.not123 = icmp eq i32 %i.bx, 0
  br i1 %.not123, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %.val101 = load i8, ptr %i.f, align 8, !range !9, !noundef !10
  %i.by = call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_125GetCaseIndependentLettersEPNS0_7IsolateEtPNS0_14RegExpCompilerEPji(i16 noundef zeroext %i.bp, i32 %.sroa.0.0.copyload.i104, i8 %.val101, ptr noundef %i.c)
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bz = load ptr, ptr %i.e, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 264
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %_ZN2v88internal12_GLOBAL__N_117UpdateBoundsCheckEiPi.exit111

bb.p:                                             ; preds = %bb.m
  %i.cc = icmp ugt i16 %i.bp, 255
  br i1 %i.cc, label %bb.q, label %.critedge98

bb.q:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr %i.e, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 264
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef %i.j) #26
  br label %_ZN2v88internal12_GLOBAL__N_117UpdateBoundsCheckEiPi.exit111

bb.r:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread
  %i.cg = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.ch = load i8, ptr %i.f, align 8, !range !9, !noundef !10 ; 2 uses
  %i.ci = trunc nuw i8 %i.ch to i1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %.val.i = load i32, ptr %i.aj, align 4
  %i.cj = call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_125GetCaseIndependentLettersEPNS0_7IsolateEtPNS0_14RegExpCompilerEPji(i16 noundef zeroext %i.bp, i32 %.val.i, i8 %i.ch, ptr noundef %i.b) ; 2 uses
  %i.ck = icmp slt i32 %i.cj, 1
  br i1 %i.ck, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  br i1 %i.ci, label %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread, label %bb.t, !prof !5

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #25
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.cl = icmp eq i32 %i.cj, 1
  br i1 %i.cl, label %bb.v, label %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cm = load i32, ptr %i.b, align 16            ; 3 uses
  %i.cn = icmp ugt i32 %i.cm, 255
  %.not20.i = select i1 %i.ci, i1 %i.cn, i1 false
  br i1 %.not20.i, label %bb.w, label %bb.x, !prof !6

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #25
  unreachable

bb.x:                                             ; preds = %bb.v
  br i1 %3, label %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread121, label %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit

_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread121: ; preds = %bb.x
  %i.co = load ptr, ptr %i.cg, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 152
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i32 noundef %i.cm, ptr noundef %i.j) #26, !inline_history !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.critedge98

_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread: ; preds = %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.critedge98

_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit: ; preds = %bb.x
  %i.cr = trunc nsw i64 %i.br to i32
  call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i32 noundef %i.cr, ptr noundef %i.j, i1 noundef zeroext %i.bw, i32 noundef 1, i32 noundef -1) #26
  %i.cs = load ptr, ptr %i.cg, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 152
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i32 noundef %i.cm, ptr noundef %i.j) #26, !inline_history !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br i1 %i.bw, label %bb.al, label %.critedge98

bb.y:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread
  %.val102 = load ptr, ptr %i.d, align 8          ; 5 uses
  br i1 %3, label %.critedge98.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = trunc nsw i64 %i.br to i32
  call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %.val102, i32 noundef %i.cv, ptr noundef %i.j, i1 noundef zeroext %i.bw, i32 noundef 1, i32 noundef -1) #26
  %i.cw = zext i16 %i.bp to i32
  %i.cx = load ptr, ptr %.val102, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 152
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(40) %.val102, i32 noundef %i.cw, ptr noundef %i.j) #26, !inline_history !51
  br label %bb.al

bb.aa:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread
  %i.da = load ptr, ptr %i.d, align 8             ; 21 uses
  %i.db = load i8, ptr %i.f, align 8, !range !9, !noundef !10 ; 2 uses
  %i.dc = trunc nuw i8 %i.db to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.val.i107 = load i32, ptr %i.aj, align 4
  %i.dd = call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_125GetCaseIndependentLettersEPNS0_7IsolateEtPNS0_14RegExpCompilerEPji(i16 noundef zeroext %i.bp, i32 %.val.i107, i8 %i.db, ptr noundef %i.a) ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.ab, label %_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit

bb.ab:                                            ; preds = %bb.aa
  br i1 %3, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = trunc nsw i64 %i.br to i32
  call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.df, ptr noundef %i.j, i1 noundef zeroext %i.bw, i32 noundef 1, i32 noundef -1) #26
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 0, ptr %8, align 4
  store i32 0, ptr %i.ak, align 4
  switch i32 %i.dd, label %bb.ak [
    i32 2, label %bb.ae
    i32 4, label %bb.ai
    i32 3, label %bb.aj
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.dg = load i32, ptr %i.a, align 16            ; 4 uses
  %i.dh = trunc i32 %i.dg to i16                  ; 3 uses
  %i.di = load i32, ptr %i.am, align 4            ; 3 uses
  %9 = select i1 %i.dc, i32 255, i32 65535        ; 2 uses
  %10 = xor i32 %i.di, %i.dg                      ; 2 uses
  %11 = and i32 %10, 65535                        ; 2 uses
  %12 = add i32 %10, 65535
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dj = and i32 %i.dg, 65535
  %15 = xor i32 %11, %9
  %i.dk = load ptr, ptr %i.da, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 160
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.dj, i32 noundef %15, ptr noundef %i.j) #26, !inline_history !52
  br label %_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread

bb.ag:                                            ; preds = %bb.ae
  %16 = trunc i32 %i.di to i16
  %i.dn = sub i16 %16, %i.dh                      ; 5 uses
  %i.do = call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.dn)
  %i.dp = icmp samesign ugt i16 %i.do, 1
  %.not.i.i = icmp ugt i16 %i.dn, %i.dh
  %or.cond.i.i = or i1 %.not.i.i, %i.dp
  br i1 %or.cond.i.i, label %_ZN2v88internal12_GLOBAL__N_125ShortCutEmitCharacterPairEPNS0_20RegExpMacroAssemblerEbttPNS0_5LabelE.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dq = trunc nuw i32 %9 to i16
  %i.dr = xor i16 %i.dn, %i.dq
  %i.ds = sub nuw i16 %i.dh, %i.dn
  %i.dt = load ptr, ptr %i.da, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 168
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i16 noundef zeroext %i.ds, i16 noundef zeroext %i.dn, i16 noundef zeroext %i.dr, ptr noundef %i.j) #26, !inline_history !52
  br label %_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread

_ZN2v88internal12_GLOBAL__N_125ShortCutEmitCharacterPairEPNS0_20RegExpMacroAssemblerEbttPNS0_5LabelE.exit.i: ; preds = %bb.ag
  %i.dw = load ptr, ptr %i.da, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.dg, ptr noundef nonnull %8) #26, !inline_history !53
  %i.dz = load ptr, ptr %i.da, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 152
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.di, ptr noundef %i.j) #26, !inline_history !53
  %i.ec = load ptr, ptr %i.da, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 72
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef nonnull %8) #26, !inline_history !53
  br label %_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread

bb.ai:                                            ; preds = %bb.ad
  %i.ef = load i32, ptr %i.al, align 4
  %i.eg = load ptr, ptr %i.da, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 80
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.ef, ptr noundef nonnull %8) #26, !inline_history !53
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad
  %i.ej = load i32, ptr %i.a, align 16
  %i.ek = load ptr, ptr %i.da, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 80
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.ej, ptr noundef nonnull %8) #26, !inline_history !53
  %i.en = load i32, ptr %i.am, align 4
  %i.eo = load ptr, ptr %i.da, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.en, ptr noundef nonnull %8) #26, !inline_history !53
  %i.er = load i32, ptr %i.an, align 8
  %i.es = load ptr, ptr %i.da, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 152
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef %i.er, ptr noundef %i.j) #26, !inline_history !53
  %i.ev = load ptr, ptr %i.da, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef nonnull %8) #26, !inline_history !53
  br label %_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread

bb.ak:                                            ; preds = %bb.ad
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread: ; preds = %bb.af, %bb.ah, %_ZN2v88internal12_GLOBAL__N_125ShortCutEmitCharacterPairEPNS0_20RegExpMacroAssemblerEbttPNS0_5LabelE.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.al

_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.critedge98

.critedge:                                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.critedge98

bb.al:                                            ; preds = %bb.z, %_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread, %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit
  %i.ey = load i32, ptr %6, align 4
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp sgt i64 %i.br, %i.ez
  br i1 %i.fa, label %bb.am, label %.critedge98

bb.am:                                            ; preds = %bb.al
  %i.fb = trunc nsw i64 %i.br to i32
  store i32 %i.fb, ptr %6, align 4
  br label %.critedge98

.critedge98.critedge:                             ; preds = %bb.y
  %i.fc = zext i16 %i.bp to i32
  %i.fd = load ptr, ptr %.val102, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 152
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(40) %.val102, i32 noundef %i.fc, ptr noundef %i.j) #26, !inline_history !51
  br label %.critedge98

.critedge98:                                      ; preds = %.critedge98.critedge, %_ZN2v88internal12_GLOBAL__N_114EmitAtomLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit, %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread121, %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit.thread, %bb.am, %bb.al, %_ZN2v88internal12_GLOBAL__N_117EmitAtomNonLetterEPNS0_7IsolateEPNS0_14RegExpCompilerEtPNS0_5LabelEibb.exit, %.critedge, %bb.p, %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit.thread, %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit, %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fg = icmp slt i64 %indvars.iv, 1
  br i1 %i.fg, label %select.unfold, label %.lr.ph, !llvm.loop !54

bb.an:                                            ; preds = %bb.g
  %i.fh = icmp eq i64 %indvars.iv132, 0
  %or.cond9 = and i1 %5, %i.fh
  %or.cond = or i1 %i.af, %or.cond9
  br i1 %or.cond, label %select.unfold, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fi = load i32, ptr %i.k, align 8
  %.not.i108 = icmp slt i32 %.sroa.0112.0.copyload, %i.fi
  br i1 %.not.i108, label %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110, label %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110.thread

_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110: ; preds = %bb.ao
  %i.fj = sext i32 %.sroa.0112.0.copyload to i64
  %i.fk = getelementptr [12 x i8], ptr %i.k, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 12
  %i.fm = load i8, ptr %i.fl, align 4, !range !9, !noundef !10
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %select.unfold, label %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110.thread

_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110.thread: ; preds = %bb.ao, %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110
  %i.fo = load i32, ptr %6, align 4
  %i.fp = icmp slt i32 %i.fo, %i.au
  %i.fq = load i8, ptr %i.p, align 8, !range !9
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = select i1 %i.fp, i1 true, i1 %i.fr      ; 3 uses
  %i.ft = load ptr, ptr %i.ag, align 8            ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.fv = call noundef ptr @_ZN2v88internal12CharacterSet6rangesEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef %i.ft) #26 ; 7 uses
  call void @_ZN2v88internal14CharacterRange12CanonicalizeEPNS0_8ZoneListIS1_EE(ptr noundef %i.fv) #26
  br i1 %i.h, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110.thread
  call void @_ZN2v88internal14CharacterRange14ClampToOneByteEPNS0_8ZoneListIS1_EE(ptr noundef %i.fv) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN2v88internal12_GLOBAL__N_117DeterminedAlreadyEPKNS0_17QuickCheckDetailsEi.exit110.thread
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.fx = load i32, ptr %i.fw, align 4            ; 5 uses
  switch i32 %i.fx, label %bb.ba [
    i32 0, label %bb.ar
    i32 1, label %bb.av
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 24
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = trunc i32 %i.fz to i1
  br i1 %i.ga, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gb = load ptr, ptr %i.e, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 264
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef %i.j) #26, !inline_history !55
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %i.fs, label %bb.au, label %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit

bb.au:                                            ; preds = %bb.at
  %i.ge = load ptr, ptr %i.e, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 232
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i32 noundef %i.au, ptr noundef %i.j) #26, !inline_history !55
  br label %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit

bb.av:                                            ; preds = %bb.aq
  %i.gh = load ptr, ptr %i.fv, align 8            ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4
  %i.gj = icmp eq i32 %i.gi, 0
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = icmp uge i32 %i.gl, %i.ah
  %i.gn = select i1 %i.gj, i1 %i.gm, i1 false
  br i1 %i.gn, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 24
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = trunc i32 %i.gp to i1
  br i1 %i.gq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gr = load ptr, ptr %i.e, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 264
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef %i.j) #26, !inline_history !55
  br label %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.fs, label %bb.az, label %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit

bb.az:                                            ; preds = %bb.ay
  %i.gu = load ptr, ptr %i.e, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 232
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i32 noundef %i.au, ptr noundef %i.j) #26, !inline_history !55
  br label %_ZN2v88internal12_GLOBAL__N_115EmitClassRangesEPNS0_20RegExpMacroAssemblerEPNS0_17RegExpClassRangesEbPNS0_5LabelEibbPNS0_4ZoneE.exit

bb.ba:                                            ; preds = %bb.aq, %bb.av
  br i1 %3, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i32 noundef %i.au, ptr noundef %i.j, i1 noundef zeroext %i.fs, i32 noundef 1, i32 noundef -1) #26
  br label %bb.bc

end_hunk_0
