Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFAsmParser?download=true
inline.NumInlined: 1051
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN12_GLOBAL__N_112ELFAsmParser21parseSectionArgumentsEbN4llvm5SMLocE:bb.a
  %.sroa.29.1.ph = phi i64 [ %i.ag, %_ZNK4llvm8AsmToken13getIdentifierEv.exit35.i.peel ], [ %i.ag, %.preheader.i.peel ], [ %i.cn, %.preheader.i ], [ %.sroa.29.0543, %.lr.ph ], [ %i.cn, %bb.m ], [ %.sroa.29.0543, %.lr.ph ]
  %.2.i.ph = phi i32 [ %.0.i.peel, %_ZNK4llvm8AsmToken13getIdentifierEv.exit35.i.peel ], [ %.0.i.peel, %.preheader.i.peel ], [ %i.cm, %.preheader.i ], [ %.011.i545, %.lr.ph ], [ %i.cm, %bb.m ], [ %.011.i545, %.lr.ph ]
  %i.ct = icmp eq i32 %.2.i.ph, 0
  br i1 %i.ct, label %_ZN12_GLOBAL__N_112ELFAsmParser16parseSectionNameERN4llvm9StringRefE.exit.thread605, label %bb.n

_ZN12_GLOBAL__N_112ELFAsmParser16parseSectionNameERN4llvm9StringRefE.exit.thread605: ; preds = %.lr.ph.preheader, %.lr.ph.preheader, %.preheader.i.preheader, %_ZN12_GLOBAL__N_112ELFAsmParser16parseSectionNameERN4llvm9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.cv, align 1, !tbaa !56
  store ptr @.str.24, ptr %6, align 8, !tbaa !57
  store i8 3, ptr %i.cu, align 8, !tbaa !55
  %i.cw = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.cx = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8TokErrorERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.cw, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, ptr null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.dj

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_112ELFAsmParser16parseSectionNameERN4llvm9StringRefE.exit.thread, %_ZN12_GLOBAL__N_112ELFAsmParser16parseSectionNameERN4llvm9StringRefE.exit
  %.sroa.0416.2450 = phi ptr [ %.sroa.0.0.copyload.i.pn.i.i, %_ZN12_GLOBAL__N_112ELFAsmParser16parseSectionNameERN4llvm9StringRefE.exit.thread ], [ %i.n, %_ZN12_GLOBAL__N_112ELFAsmParser16parseSectionNameERN4llvm9StringRefE.exit ] ; 41 uses
  %.sroa.29.2449 = phi i64 [ %.sroa.2.0.copyload.i.pn.i.i, %_ZN12_GLOBAL__N_112ELFAsmParser16parseSectionNameERN4llvm9StringRefE.exit.thread ], [ %.sroa.29.1.ph, %_ZN12_GLOBAL__N_112ELFAsmParser16parseSectionNameERN4llvm9StringRefE.exit ] ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 0, ptr %i.e, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  store i8 0, ptr %i.f, align 1, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store ptr null, ptr %i.g, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  store ptr null, ptr %i.h, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store i64 -1, ptr %i.i, align 8, !tbaa !60
  %.not.i.i.i = icmp ult i64 %.sroa.29.2449, 7    ; 2 uses
  br i1 %.not.i.i.i, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i:    ; preds = %bb.n
  %i.cy = load i32, ptr %.sroa.0416.2450, align 1
  %i.cz = xor i32 %i.cy, 1685025326
  %i.da = getelementptr i8, ptr %.sroa.0416.2450, i64 3
  %i.db = load i32, ptr %i.da, align 1
  %i.dc = xor i32 %i.db, 1635017060
  %i.dd = or i32 %i.cz, %i.dc
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.o, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread

bb.o:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i
  %i.dh = icmp eq i64 %.sroa.29.2449, 7
  br i1 %i.dh, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit

_ZL9hasPrefixN4llvm9StringRefES0_.exit:           ; preds = %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0416.2450, i64 7
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !57
  %i.dk = icmp eq i8 %i.dj, 46
  br i1 %i.dk, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread

_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread:    ; preds = %bb.n, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i, %_ZL9hasPrefixN4llvm9StringRefES0_.exit
  switch i64 %.sroa.29.2449, label %_ZN4llvmeqENS_9StringRefES0_.exit168.thread459 [
    i64 8, label %_ZN4llvmeqENS_9StringRefES0_.exit
    i64 5, label %_ZN4llvmeqENS_9StringRefES0_.exit164
  ]

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread
  %i.dl = load i64, ptr %.sroa.0416.2450, align 1
  %i.dm = icmp ne i64 %i.dl, 3558253142245077550
  %i.dn = zext i1 %i.dm to i32
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i170.thread

_ZN4llvmeqENS_9StringRefES0_.exit164:             ; preds = %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread
  %i.dp = load i32, ptr %.sroa.0416.2450, align 1
  %i.dq = xor i32 %i.dp, 1852401198
  %i.dr = getelementptr i8, ptr %.sroa.0416.2450, i64 4
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = zext i8 %i.ds to i32
  %i.du = xor i32 %i.dt, 105
  %i.dv = or i32 %i.dq, %i.du
  %i.dw = icmp ne i32 %i.dv, 0
  %i.dx = zext i1 %i.dw to i32
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, label %_ZN4llvmeqENS_9StringRefES0_.exit168

_ZN4llvmeqENS_9StringRefES0_.exit168:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit164
  %i.dz = load i32, ptr %.sroa.0416.2450, align 1
  %i.ea = xor i32 %i.dz, 1768843566
  %i.eb = getelementptr i8, ptr %.sroa.0416.2450, i64 4
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = zext i8 %i.ec to i32
  %i.ee = xor i32 %i.ed, 116
  %i.ef = or i32 %i.ea, %i.ee
  %i.eg = icmp ne i32 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i170.thread620

_ZN4llvmeqENS_9StringRefES0_.exit168.thread459:   ; preds = %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread
  %.not.i.i.i169 = icmp ult i64 %.sroa.29.2449, 5
  br i1 %.not.i.i.i169, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit172.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i170

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i170: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit168.thread459
  %i.ej = load i32, ptr %.sroa.0416.2450, align 1
  %i.ek = xor i32 %i.ej, 2019914798
  %i.el = getelementptr i8, ptr %.sroa.0416.2450, i64 4
  %i.em = load i8, ptr %i.el, align 1
  %i.en = zext i8 %i.em to i32
  %i.eo = xor i32 %i.en, 116
  %i.ep = or i32 %i.ek, %i.eo
  %i.eq = icmp ne i32 %i.ep, 0
  %i.er = zext i1 %i.eq to i32
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.p, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit172.thread

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i170.thread620: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit168
  %i.et = load i32, ptr %.sroa.0416.2450, align 1
  %i.eu = xor i32 %i.et, 2019914798
  %i.ev = getelementptr i8, ptr %.sroa.0416.2450, i64 4
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = zext i8 %i.ew to i32
  %i.ey = xor i32 %i.ex, 116
  %i.ez = or i32 %i.eu, %i.ey
  %i.fa = icmp ne i32 %i.ez, 0
  %i.fb = zext i1 %i.fa to i32
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit172.thread

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i170.thread: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.fd = load i32, ptr %.sroa.0416.2450, align 1
  %i.fe = xor i32 %i.fd, 2019914798
  %i.ff = getelementptr i8, ptr %.sroa.0416.2450, i64 4
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = zext i8 %i.fg to i32
  %i.fi = xor i32 %i.fh, 116
  %i.fj = or i32 %i.fe, %i.fi
  %i.fk = icmp ne i32 %i.fj, 0
  %i.fl = zext i1 %i.fk to i32
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit172, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit172.thread

bb.p:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i170
  %i.fn = icmp eq i64 %.sroa.29.2449, 5
  br i1 %i.fn, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit172

_ZL9hasPrefixN4llvm9StringRefES0_.exit172:        ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i170.thread, %bb.p
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0416.2450, i64 5
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !57
  %i.fq = icmp eq i8 %i.fp, 46
  br i1 %i.fq, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit172.thread

_ZL9hasPrefixN4llvm9StringRefES0_.exit172.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i170.thread620, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i170.thread, %_ZN4llvmeqENS_9StringRefES0_.exit168.thread459, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i170, %_ZL9hasPrefixN4llvm9StringRefES0_.exit172
  %i.fr = tail call fastcc noundef zeroext i1 @_ZL9hasPrefixN4llvm9StringRefES0_(ptr %.sroa.0416.2450, i64 %.sroa.29.2449, ptr nonnull @.str, i64 5)
  br i1 %i.fr, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, label %bb.q

bb.q:                                             ; preds = %_ZL9hasPrefixN4llvm9StringRefES0_.exit172.thread
  %.not.i173 = icmp eq i64 %.sroa.29.2449, 6
  br i1 %.not.i173, label %_ZN4llvmeqENS_9StringRefES0_.exit176, label %_ZN4llvmeqENS_9StringRefES0_.exit176.thread463

_ZN4llvmeqENS_9StringRefES0_.exit176:             ; preds = %bb.q
  %i.fs = load i32, ptr %.sroa.0416.2450, align 1
  %i.ft = xor i32 %i.fs, 1952539694
  %i.fu = getelementptr i8, ptr %.sroa.0416.2450, i64 4
  %i.fv = load i16, ptr %i.fu, align 1
  %i.fw = zext i16 %i.fv to i32
  %i.fx = xor i32 %i.fw, 12641
  %i.fy = or i32 %i.ft, %i.fx
  %i.fz = icmp ne i32 %i.fy, 0
  %i.ga = zext i1 %i.fz to i32
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, label %_ZN4llvmeqENS_9StringRefES0_.exit176.thread463

_ZN4llvmeqENS_9StringRefES0_.exit176.thread463:   ; preds = %bb.q, %_ZN4llvmeqENS_9StringRefES0_.exit176
  %i.gc = tail call fastcc noundef zeroext i1 @_ZL9hasPrefixN4llvm9StringRefES0_(ptr %.sroa.0416.2450, i64 %.sroa.29.2449, ptr nonnull @.str.2, i64 4)
  br i1 %i.gc, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, label %bb.r

bb.r:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit176.thread463
  %i.gd = tail call fastcc noundef zeroext i1 @_ZL9hasPrefixN4llvm9StringRefES0_(ptr %.sroa.0416.2450, i64 %.sroa.29.2449, ptr nonnull @.str.29, i64 11)
  br i1 %i.gd, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ge = tail call fastcc noundef zeroext i1 @_ZL9hasPrefixN4llvm9StringRefES0_(ptr %.sroa.0416.2450, i64 %.sroa.29.2449, ptr nonnull @.str.30, i64 11)
  br i1 %i.ge, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gf = tail call fastcc noundef zeroext i1 @_ZL9hasPrefixN4llvm9StringRefES0_(ptr %.sroa.0416.2450, i64 %.sroa.29.2449, ptr nonnull @.str.31, i64 14)
  br i1 %i.gf, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gg = tail call fastcc noundef zeroext i1 @_ZL9hasPrefixN4llvm9StringRefES0_(ptr %.sroa.0416.2450, i64 %.sroa.29.2449, ptr nonnull @.str.4, i64 6)
  br i1 %i.gg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gh = tail call fastcc noundef zeroext i1 @_ZL9hasPrefixN4llvm9StringRefES0_(ptr %.sroa.0416.2450, i64 %.sroa.29.2449, ptr nonnull @.str.5, i64 5)
  br i1 %i.gh, label %bb.w, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451

bb.w:                                             ; preds = %bb.v, %bb.u
  br label %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451

_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i170.thread620, %bb.p, %bb.o, %_ZL9hasPrefixN4llvm9StringRefES0_.exit172.thread, %_ZN4llvmeqENS_9StringRefES0_.exit176, %_ZN4llvmeqENS_9StringRefES0_.exit176.thread463, %bb.r, %bb.s, %bb.t, %_ZN4llvmeqENS_9StringRefES0_.exit164, %_ZN4llvmeqENS_9StringRefES0_.exit168, %_ZL9hasPrefixN4llvm9StringRefES0_.exit172, %_ZL9hasPrefixN4llvm9StringRefES0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit, %bb.v, %bb.w
  %.0141 = phi i32 [ 0, %bb.v ], [ 2, %_ZL9hasPrefixN4llvm9StringRefES0_.exit ], [ 6, %_ZN4llvmeqENS_9StringRefES0_.exit164 ], [ 1027, %bb.w ], [ 2, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ 6, %_ZL9hasPrefixN4llvm9StringRefES0_.exit172 ], [ 6, %_ZN4llvmeqENS_9StringRefES0_.exit168 ], [ 3, %bb.t ], [ 3, %bb.s ], [ 3, %bb.r ], [ 3, %_ZN4llvmeqENS_9StringRefES0_.exit176.thread463 ], [ 3, %_ZN4llvmeqENS_9StringRefES0_.exit176 ], [ 3, %_ZL9hasPrefixN4llvm9StringRefES0_.exit172.thread ], [ 6, %bb.p ], [ 2, %bb.o ], [ 6, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i170.thread620 ] ; 4 uses
  %i.gi = load ptr, ptr %i.j, align 8, !tbaa !17  ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !21
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !28 ; 2 uses
  %i.gm = icmp eq i32 %i.gl, 26
  br i1 %i.gm, label %bb.x, label %bb.cd

bb.x:                                             ; preds = %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451
  %i.gn = load ptr, ptr %i.gi, align 8, !tbaa !12
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 152
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.gp(ptr noundef nonnull align 8 dereferenceable(243) %i.gi) #16, !inline_history !0 ; 0 uses
  %.pre580.a = load ptr, ptr %i.j, align 8, !tbaa !17 ; 4 uses
  br i1 %1, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.gr = getelementptr inbounds nuw i8, ptr %.pre580.a, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !21
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !28
  %.not531 = icmp eq i32 %i.gt, 3
  br i1 %.not531, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gu = call noundef zeroext i1 @_ZN4llvm11MCAsmParser15parseExpressionERPKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(243) %.pre580.a, ptr noundef nonnull align 8 dereferenceable(8) %i.g) #16
  br i1 %i.gu, label %.thread493, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gv = load ptr, ptr %i.j, align 8, !tbaa !17  ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !21
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !28 ; 2 uses
  %.not532 = icmp eq i32 %i.gy, 26
  br i1 %.not532, label %bb.ab, label %bb.cd

bb.ab:                                            ; preds = %bb.aa
  %i.gz = load ptr, ptr %i.gv, align 8, !tbaa !12
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 152
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = call noundef nonnull align 8 dereferenceable(40) ptr %i.hb(ptr noundef nonnull align 8 dereferenceable(243) %i.gv) #16, !inline_history !0 ; 0 uses
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y, %bb.x
  %i.hd = phi ptr [ %.pre, %bb.ab ], [ %.pre580.a, %bb.y ], [ %.pre580.a, %bb.x ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !21
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !28
  switch i32 %i.hg, label %bb.ad [
    i32 3, label %bb.ai
    i32 38, label %.lr.ph.i
  ]

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.hh = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.hi, align 1, !tbaa !56
  store ptr @.str.32, ptr %9, align 8, !tbaa !57
  store i8 3, ptr %i.hh, align 8, !tbaa !55
  %i.hj = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8TokErrorERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.hd, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr null, ptr null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %.thread493

.lr.ph.i:                                         ; preds = %bb.ac, %bb.ah
  %i.hk = phi ptr [ %i.kj, %bb.ah ], [ %i.hd, %bb.ac ] ; 2 uses
  %.01757.i = phi i32 [ %i.ju, %bb.ah ], [ 0, %bb.ac ]
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !12
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 152
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = call noundef nonnull align 8 dereferenceable(40) ptr %i.hn(ptr noundef nonnull align 8 dereferenceable(243) %i.hk) #16, !inline_history !309 ; 0 uses
  %i.hp = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !21
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !28
  %i.ht = icmp eq i32 %i.hs, 2
  br i1 %i.ht, label %bb.ae, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit.thread

bb.ae:                                            ; preds = %.lr.ph.i
  %i.hu = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.hp) #16 ; 4 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !28
  %i.hw = icmp eq i32 %i.hv, 2
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  br i1 %i.hw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i.i185 = load ptr, ptr %i.hx, align 8, !tbaa !61
  %.sroa.2.0..sroa_idx.i.i.i186 = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %.sroa.2.0.copyload.i.i.i187 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i186, align 8, !tbaa !60
  br label %_ZNK4llvm8AsmToken13getIdentifierEv.exit.i182

bb.ag:                                            ; preds = %bb.ae
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !62 ; 3 uses
  %i.ia = add i64 %i.hz, -1
  %i.ib = icmp ne i64 %i.hz, 0
  %.sroa.speculated3.i.i.i.i179 = zext i1 %i.ib to i64 ; 3 uses
  %i.ic = icmp eq i64 %i.hz, 0
  %.sroa.speculate.load.false.sroa.speculated.i.i.i.i180 = call i64 @llvm.umax.i64(i64 %i.ia, i64 %.sroa.speculated3.i.i.i.i179)
  %.sroa.speculated.i.i.i.i181 = select i1 %i.ic, i64 0, i64 %.sroa.speculate.load.false.sroa.speculated.i.i.i.i180
  %i.id = load ptr, ptr %i.hx, align 8, !tbaa !63
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %.sroa.speculated3.i.i.i.i179
  %i.if = sub i64 %.sroa.speculated.i.i.i.i181, %.sroa.speculated3.i.i.i.i179
  br label %_ZNK4llvm8AsmToken13getIdentifierEv.exit.i182

_ZNK4llvm8AsmToken13getIdentifierEv.exit.i182:    ; preds = %bb.ag, %bb.af
  %.sroa.0.0.copyload.i.pn.i.i183 = phi ptr [ %.sroa.0.0.copyload.i.i.i185, %bb.af ], [ %i.ie, %bb.ag ] ; 8 uses
  %.sroa.2.0.copyload.i.pn.i.i184 = phi i64 [ %.sroa.2.0.copyload.i.i.i187, %bb.af ], [ %i.if, %bb.ag ]
  switch i64 %.sroa.2.0.copyload.i.pn.i.i184, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit.thread [
    i64 5, label %_ZN4llvmeqENS_9StringRefES0_.exit.i
    i64 9, label %_ZN4llvmeqENS_9StringRefES0_.exit24.i
    i64 3, label %_ZN4llvmeqENS_9StringRefES0_.exit32.i
  ]

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %_ZNK4llvm8AsmToken13getIdentifierEv.exit.i182
  %i.ig = load i32, ptr %.sroa.0.0.copyload.i.pn.i.i183, align 1
  %i.ih = xor i32 %i.ig, 1869376609
  %i.ii = getelementptr i8, ptr %.sroa.0.0.copyload.i.pn.i.i183, i64 4
  %i.ij = load i8, ptr %i.ii, align 1
  %i.ik = zext i8 %i.ij to i32
  %i.il = xor i32 %i.ik, 99
  %i.im = or i32 %i.ih, %i.il
  %i.in = icmp ne i32 %i.im, 0
  %i.io = zext i1 %i.in to i32
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN4llvmeqENS_9StringRefES0_.exit28.i

_ZN4llvmeqENS_9StringRefES0_.exit24.i:            ; preds = %_ZNK4llvm8AsmToken13getIdentifierEv.exit.i182
  %i.iq = load i64, ptr %.sroa.0.0.copyload.i.pn.i.i183, align 1
  %i.ir = xor i64 %i.iq, 8391171929639581797
  %i.is = getelementptr i8, ptr %.sroa.0.0.copyload.i.pn.i.i183, i64 8
  %i.it = load i8, ptr %i.is, align 1
  %i.iu = zext i8 %i.it to i64
  %i.iv = xor i64 %i.iu, 114
  %i.iw = or i64 %i.ir, %i.iv
  %i.ix = icmp ne i64 %i.iw, 0
  %i.iy = zext i1 %i.ix to i32
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit28.i:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.ja = load i32, ptr %.sroa.0.0.copyload.i.pn.i.i183, align 1
  %i.jb = xor i32 %i.ja, 1953067639
  %i.jc = getelementptr i8, ptr %.sroa.0.0.copyload.i.pn.i.i183, i64 4
  %i.jd = load i8, ptr %i.jc, align 1
  %i.je = zext i8 %i.jd to i32
  %i.jf = xor i32 %i.je, 101
  %i.jg = or i32 %i.jb, %i.jf
  %i.jh = icmp ne i32 %i.jg, 0
  %i.ji = zext i1 %i.jh to i32
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit32.i:            ; preds = %_ZNK4llvm8AsmToken13getIdentifierEv.exit.i182
  %i.jk = load i16, ptr %.sroa.0.0.copyload.i.pn.i.i183, align 1
  %i.jl = xor i16 %i.jk, 27764
  %i.jm = getelementptr i8, ptr %.sroa.0.0.copyload.i.pn.i.i183, i64 2
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = zext i8 %i.jn to i16
  %i.jp = xor i16 %i.jo, 115
  %i.jq = or i16 %i.jl, %i.jp
  %i.jr = icmp ne i16 %i.jq, 0
  %i.js = zext i1 %i.jr to i32
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit32.i, %_ZN4llvmeqENS_9StringRefES0_.exit28.i, %_ZN4llvmeqENS_9StringRefES0_.exit24.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %.sink.i = phi i32 [ 2, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit28.i ], [ 4, %_ZN4llvmeqENS_9StringRefES0_.exit24.i ], [ 1024, %_ZN4llvmeqENS_9StringRefES0_.exit32.i ]
  %i.ju = or i32 %.sink.i, %.01757.i              ; 3 uses
  %i.jv = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !12
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 152
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = call noundef nonnull align 8 dereferenceable(40) ptr %i.jy(ptr noundef nonnull align 8 dereferenceable(243) %i.jv) #16, !inline_history !309 ; 0 uses
  %i.ka = load ptr, ptr %i.j, align 8, !tbaa !17  ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 48
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !21
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !28
  %i.ke = icmp eq i32 %i.kd, 26
  br i1 %i.ke, label %bb.ah, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit

bb.ah:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %i.kf = load ptr, ptr %i.ka, align 8, !tbaa !12
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 152
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = call noundef nonnull align 8 dereferenceable(40) ptr %i.kh(ptr noundef nonnull align 8 dereferenceable(243) %i.ka) #16, !inline_history !309 ; 0 uses
  %i.kj = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 48
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !21
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !28
  %i.kn = icmp eq i32 %i.km, 38
  br i1 %i.kn, label %.lr.ph.i, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit

bb.ai:                                            ; preds = %bb.ac
  %i.ko = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.hd) #16 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !62 ; 3 uses
  %i.ks = add i64 %i.kr, -1
  %i.kt = icmp ne i64 %i.kr, 0
  %.sroa.speculated3.i.i = zext i1 %i.kt to i64   ; 4 uses
  %i.ku = icmp eq i64 %i.kr, 0
  %.sroa.speculate.load.false.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ks, i64 %.sroa.speculated3.i.i)
  %.sroa.speculated.i.i = select i1 %i.ku, i64 0, i64 %.sroa.speculate.load.false.sroa.speculated.i.i ; 3 uses
  %i.kv = load ptr, ptr %i.kp, align 8, !tbaa !63 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %.sroa.speculated3.i.i ; 2 uses
  %i.kx = sub i64 %.sroa.speculated.i.i, %.sroa.speculated3.i.i
  %i.ky = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !12
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 152
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = call noundef nonnull align 8 dereferenceable(40) ptr %i.lb(ptr noundef nonnull align 8 dereferenceable(243) %i.ky) #16, !inline_history !0 ; 0 uses
  %i.ld = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !52, !nonnull !50, !align !51 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.lg = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %i.kw, i64 %i.kx, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #16
  br i1 %i.lg, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lh = load i64, ptr %i.d, align 8, !tbaa !339 ; 2 uses
  %.not.i.i = icmp ult i64 %i.lh, 4294967296
  br i1 %.not.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.li = trunc nuw i64 %i.lh to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit

bb.al:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kv, i64 %.sroa.speculated.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 56 ; 5 uses
  %.not51.i = icmp eq i64 %.sroa.speculated.i.i, %.sroa.speculated3.i.i
  br i1 %.not51.i, label %..thread_crit_edge, label %.lr.ph.i188

..thread_crit_edge:                               ; preds = %bb.al
  %.pre581.a = load ptr, ptr %i.j, align 8, !tbaa !17
  br label %.thread.a

.lr.ph.i188:                                      ; preds = %bb.al
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 68
  br label %bb.am

bb.am:                                            ; preds = %bb.bl, %.lr.ph.i188
  %.2441 = phi i8 [ 0, %.lr.ph.i188 ], [ %.3442, %bb.bl ] ; 17 uses
  %.053.i = phi ptr [ %i.kw, %.lr.ph.i188 ], [ %i.ml, %bb.bl ] ; 2 uses
  %.04752.i = phi i32 [ 0, %.lr.ph.i188 ], [ %.1.i, %bb.bl ] ; 18 uses
  %i.lm = load i8, ptr %.053.i, align 1, !tbaa !57
  switch i8 %i.lm, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit.thread [
    i8 97, label %bb.an
    i8 101, label %bb.ao
    i8 120, label %bb.ap
    i8 119, label %bb.aq
    i8 111, label %bb.ar
    i8 77, label %bb.as
    i8 83, label %bb.at
    i8 84, label %bb.au
    i8 99, label %bb.av
    i8 100, label %bb.ax
    i8 121, label %bb.az
    i8 115, label %bb.bd
    i8 71, label %bb.bf
    i8 108, label %bb.bg
    i8 82, label %bb.bi
    i8 63, label %bb.bl
  ]

bb.an:                                            ; preds = %bb.am
  %i.ln = or i32 %.04752.i, 2
  br label %bb.bl

bb.ao:                                            ; preds = %bb.am
  %i.lo = or i32 %.04752.i, -2147483648
  br label %bb.bl

bb.ap:                                            ; preds = %bb.am
  %i.lp = or i32 %.04752.i, 4
  br label %bb.bl

bb.aq:                                            ; preds = %bb.am
  %i.lq = or i32 %.04752.i, 1
  br label %bb.bl

bb.ar:                                            ; preds = %bb.am
  %i.lr = or i32 %.04752.i, 128
  br label %bb.bl

bb.as:                                            ; preds = %bb.am
  %i.ls = or i32 %.04752.i, 16
  br label %bb.bl

bb.at:                                            ; preds = %bb.am
  %i.lt = or i32 %.04752.i, 32
  br label %bb.bl

bb.au:                                            ; preds = %bb.am
  %i.lu = or i32 %.04752.i, 1024
  br label %bb.bl

bb.av:                                            ; preds = %bb.am
  %i.lv = load i32, ptr %i.lk, align 8, !tbaa !340
  %.not25.i = icmp eq i32 %i.lv, 42
  br i1 %.not25.i, label %bb.aw, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.lw = or i32 %.04752.i, 536870912
  br label %bb.bl

bb.ax:                                            ; preds = %bb.am
  %i.lx = load i32, ptr %i.lk, align 8, !tbaa !340
  %.not24.i = icmp eq i32 %i.lx, 42
  br i1 %.not24.i, label %bb.ay, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.ly = or i32 %.04752.i, 268435456
  br label %bb.bl

bb.az:                                            ; preds = %bb.am
  %i.lz = load i32, ptr %i.lk, align 8, !tbaa !340 ; 2 uses
  switch i32 %i.lz, label %bb.bb [
    i32 39, label %bb.ba
    i32 38, label %bb.ba
    i32 2, label %bb.ba
    i32 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az, %bb.az, %bb.az
  %i.ma = or i32 %.04752.i, 536870912
  br label %bb.bl

bb.bb:                                            ; preds = %bb.az
  %.off.i.i = add i32 %i.lz, -3
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  br i1 %switch.i.i, label %bb.bc, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit.thread

bb.bc:                                            ; preds = %bb.bb
  %i.mb = or i32 %.04752.i, 536870912
  br label %bb.bl

bb.bd:                                            ; preds = %bb.am
  %i.mc = load i32, ptr %i.lk, align 8, !tbaa !340
  %.not23.i = icmp eq i32 %i.mc, 12
  br i1 %.not23.i, label %bb.be, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit.thread

bb.be:                                            ; preds = %bb.bd
  %i.md = or i32 %.04752.i, 268435456
  br label %bb.bl

bb.bf:                                            ; preds = %bb.am
  %i.me = or i32 %.04752.i, 512
  br label %bb.bl

bb.bg:                                            ; preds = %bb.am
  %i.mf = load i32, ptr %i.lk, align 8, !tbaa !340
  %.not22.i = icmp eq i32 %i.mf, 41
  br i1 %.not22.i, label %bb.bh, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit.thread

bb.bh:                                            ; preds = %bb.bg
  %i.mg = or i32 %.04752.i, 268435456
  br label %bb.bl

bb.bi:                                            ; preds = %bb.am
  %i.mh = load i32, ptr %i.ll, align 4, !tbaa !341
  %i.mi = icmp eq i32 %i.mh, 13
  br i1 %i.mi, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.mj = or i32 %.04752.i, 1048576
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.mk = or i32 %.04752.i, 2097152
  br label %bb.bl

bb.bl:                                            ; preds = %bb.am, %bb.bk, %bb.bj, %bb.bh, %bb.bf, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.3442 = phi i8 [ %.2441, %bb.an ], [ %.2441, %bb.ao ], [ %.2441, %bb.ap ], [ %.2441, %bb.aq ], [ %.2441, %bb.ar ], [ %.2441, %bb.as ], [ %.2441, %bb.at ], [ %.2441, %bb.au ], [ %.2441, %bb.aw ], [ %.2441, %bb.ay ], [ %.2441, %bb.bc ], [ %.2441, %bb.ba ], [ %.2441, %bb.be ], [ %.2441, %bb.bf ], [ %.2441, %bb.bh ], [ %.2441, %bb.bj ], [ %.2441, %bb.bk ], [ 1, %bb.am ] ; 2 uses
  %.1.i = phi i32 [ %i.ln, %bb.an ], [ %i.lo, %bb.ao ], [ %i.lp, %bb.ap ], [ %i.lq, %bb.aq ], [ %i.lr, %bb.ar ], [ %i.ls, %bb.as ], [ %i.lt, %bb.at ], [ %i.lu, %bb.au ], [ %i.lw, %bb.aw ], [ %i.ly, %bb.ay ], [ %i.mb, %bb.bc ], [ %i.ma, %bb.ba ], [ %i.md, %bb.be ], [ %i.me, %bb.bf ], [ %i.mg, %bb.bh ], [ %i.mj, %bb.bj ], [ %i.mk, %bb.bk ], [ %.04752.i, %bb.am ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.053.i, i64 1 ; 2 uses
  %.not.i189 = icmp eq ptr %i.ml, %i.lj
  br i1 %.not.i189, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit, label %bb.am

_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit: ; preds = %bb.ah, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, %bb.bl, %bb.ak
  %.0 = phi i8 [ %.3442, %bb.bl ], [ 0, %bb.ak ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ], [ 0, %bb.ah ] ; 2 uses
  %.0146 = phi i32 [ %.1.i, %bb.bl ], [ %i.li, %bb.ak ], [ %i.ju, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ], [ %i.ju, %bb.ah ] ; 5 uses
  %i.mm = icmp eq i32 %.0146, -1
  br i1 %i.mm, label %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit.thread, label %bb.bm

_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit.thread: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit32.i, %_ZN4llvmeqENS_9StringRefES0_.exit24.i, %_ZN4llvmeqENS_9StringRefES0_.exit28.i, %.lr.ph.i, %_ZNK4llvm8AsmToken13getIdentifierEv.exit.i182, %bb.bg, %bb.am, %bb.bd, %bb.av, %bb.ax, %bb.bb, %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.mn = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.mo = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.mo, align 1, !tbaa !56
  store ptr @.str.33, ptr %10, align 8, !tbaa !57
  store i8 3, ptr %i.mn, align 8, !tbaa !55
  %i.mp = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.mq = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8TokErrorERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.mp, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr null, ptr null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %.thread493

bb.bm:                                            ; preds = %_ZN12_GLOBAL__N_112ELFAsmParser25parseSunStyleSectionFlagsEv.exit
  %33 = or i32 %.0146, %.0141
  %34 = and i32 %.0146, 16
  %.not = icmp eq i32 %34, 0
  %i.mr = and i32 %.0146, 512
  %i.ms = icmp ne i32 %i.mr, 0                    ; 2 uses
  %i.mt = trunc nuw i8 %.0 to i1
  %or.cond = select i1 %i.ms, i1 %i.mt, i1 false
  %.pre582.a = load ptr, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  br i1 %or.cond, label %bb.bn, label %.thread.a

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.mu = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.mv = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.mv, align 1, !tbaa !56
  store ptr @.str.34, ptr %11, align 8, !tbaa !57
  store i8 3, ptr %i.mu, align 8, !tbaa !55
  %i.mw = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8TokErrorERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.pre582.a, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr null, ptr null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %.thread493

.thread.a:                                        ; preds = %..thread_crit_edge, %bb.bm
  %i.mx = phi ptr [ %.pre582.a, %bb.bm ], [ %.pre581.a, %..thread_crit_edge ] ; 3 uses
  %i.my = phi i1 [ %i.ms, %bb.bm ], [ false, %..thread_crit_edge ] ; 2 uses
  %.not480 = phi i1 [ %.not, %bb.bm ], [ true, %..thread_crit_edge ] ; 2 uses
  %i.mz = phi i32 [ %33, %bb.bm ], [ %.0141, %..thread_crit_edge ]
  %.0470479 = phi i8 [ %.0, %bb.bm ], [ 0, %..thread_crit_edge ]
  %.0146471477 = phi i32 [ %.0146, %bb.bm ], [ 0, %..thread_crit_edge ] ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 48 ; 3 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !21
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !28
  %.not.i190 = icmp eq i32 %i.nc, 26
  br i1 %.not.i190, label %bb.bo, label %_ZN12_GLOBAL__N_112ELFAsmParser21maybeParseSectionTypeERN4llvm9StringRefE.exit.thread

bb.bo:                                            ; preds = %.thread.a
  %i.nd = load ptr, ptr %i.mx, align 8, !tbaa !12
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 152
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = call noundef nonnull align 8 dereferenceable(40) ptr %i.nf(ptr noundef nonnull align 8 dereferenceable(243) %i.mx) #16, !inline_history !310 ; 0 uses
  %i.nh = load ptr, ptr %i.na, align 8, !tbaa !21
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !28
  switch i32 %i.ni, label %bb.bp [
    i32 46, label %bb.bq
    i32 37, label %bb.bq
    i32 3, label %.thread.i192
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.nj = load ptr, ptr %i.j, align 8, !tbaa !17  ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !52, !nonnull !50, !align !51
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 152
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !217, !nonnull !50, !align !51 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i194 = getelementptr inbounds nuw i8, ptr %i.nn, i64 56
  %.sroa.2.0.copyload.i.i195 = load i64, ptr %.sroa.2.0..sroa_idx.i.i194, align 8, !tbaa !60
  %i.no = icmp eq i64 %.sroa.2.0.copyload.i.i195, 0
  br i1 %i.no, label %_ZNK4llvm9StringRef11starts_withEc.exit.thread.i, label %_ZNK4llvm9StringRef11starts_withEc.exit.i

_ZNK4llvm9StringRef11starts_withEc.exit.i:        ; preds = %bb.bp
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.np, align 8, !tbaa !61
  %i.nq = load i8, ptr %.sroa.0.0.copyload.i.i, align 1, !tbaa !57
  %i.nr = icmp eq i8 %i.nq, 64
  br i1 %i.nr, label %_ZN12_GLOBAL__N_112ELFAsmParser21maybeParseSectionTypeERN4llvm9StringRefE.exit, label %_ZNK4llvm9StringRef11starts_withEc.exit.thread.i

_ZNK4llvm9StringRef11starts_withEc.exit.thread.i: ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ns = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.nt = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.nt, align 1, !tbaa !56
  store ptr @.str.69, ptr %4, align 8, !tbaa !57
  store i8 3, ptr %i.ns, align 8, !tbaa !55
  %i.nu = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8TokErrorERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.nj, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr null, ptr null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br i1 %i.nu, label %.thread493, label %_ZN12_GLOBAL__N_112ELFAsmParser21maybeParseSectionTypeERN4llvm9StringRefE.exit.thread

bb.bq:                                            ; preds = %bb.bo, %bb.bo
  %i.nv = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !12
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 152
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = call noundef nonnull align 8 dereferenceable(40) ptr %i.ny(ptr noundef nonnull align 8 dereferenceable(243) %i.nv) #16, !inline_history !310 ; 0 uses
  %.pre.i = load ptr, ptr %i.na, align 8, !tbaa !21
  %.pre15.i = load i32, ptr %.pre.i, align 8, !tbaa !28
  %i.oa = icmp eq i32 %.pre15.i, 4
  br i1 %i.oa, label %bb.br, label %.thread.i192

bb.br:                                            ; preds = %bb.bq
  %i.ob = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.oc = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.ob) #16 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %.sroa.0.0.copyload.i10.i = load ptr, ptr %i.od, align 8, !tbaa !61
  %.sroa.2.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %.sroa.2.0.copyload.i12.i = load i64, ptr %.sroa.2.0..sroa_idx.i11.i, align 8, !tbaa !60
  store ptr %.sroa.0.0.copyload.i10.i, ptr %7, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx.i193 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.2.0.copyload.i12.i, ptr %.sroa.4.0..sroa_idx.i193, align 8, !tbaa !60
  %i.oe = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !12
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 152
  %i.oh = load ptr, ptr %i.og, align 8
  %i.oi = call noundef nonnull align 8 dereferenceable(40) ptr %i.oh(ptr noundef nonnull align 8 dereferenceable(243) %i.oe) #16, !inline_history !310 ; 0 uses
  br label %_ZN12_GLOBAL__N_112ELFAsmParser21maybeParseSectionTypeERN4llvm9StringRefE.exit.thread

.thread.i192:                                     ; preds = %bb.bq, %bb.bo
  %i.oj = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !12
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 160
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = call noundef zeroext i1 %i.om(ptr noundef nonnull align 8 dereferenceable(243) %i.oj, ptr noundef nonnull align 8 dereferenceable(16) %7) #16, !inline_history !311
  br i1 %i.on, label %.split, label %_ZN12_GLOBAL__N_112ELFAsmParser21maybeParseSectionTypeERN4llvm9StringRefE.exit.thread

.split:                                           ; preds = %.thread.i192
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.oo = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.op = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.op, align 1, !tbaa !56
  store ptr @.str.24, ptr %5, align 8, !tbaa !57
  store i8 3, ptr %i.oo, align 8, !tbaa !55
  %i.oq = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.or = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8TokErrorERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.oq, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, ptr null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %i.or, label %.thread493, label %_ZN12_GLOBAL__N_112ELFAsmParser21maybeParseSectionTypeERN4llvm9StringRefE.exit.thread

_ZN12_GLOBAL__N_112ELFAsmParser21maybeParseSectionTypeERN4llvm9StringRefE.exit: ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.os = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ot = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.ot, align 1, !tbaa !56
  store ptr @.str.68, ptr %3, align 8, !tbaa !57
  store i8 3, ptr %i.os, align 8, !tbaa !55
  %i.ou = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8TokErrorERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.nj, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr null, ptr null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %i.ou, label %.thread493, label %_ZN12_GLOBAL__N_112ELFAsmParser21maybeParseSectionTypeERN4llvm9StringRefE.exit.thread

_ZN12_GLOBAL__N_112ELFAsmParser21maybeParseSectionTypeERN4llvm9StringRefE.exit.thread: ; preds = %bb.br, %.thread.i192, %.thread.a, %_ZNK4llvm9StringRef11starts_withEc.exit.thread.i, %.split, %_ZN12_GLOBAL__N_112ELFAsmParser21maybeParseSectionTypeERN4llvm9StringRefE.exit
  %i.ov = load ptr, ptr %i.j, align 8, !tbaa !17  ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 48
  %i.ox = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !62 ; 2 uses
  %i.oz = icmp eq i64 %i.oy, 0
  br i1 %i.oz, label %bb.bs, label %bb.by

bb.bs:                                            ; preds = %_ZN12_GLOBAL__N_112ELFAsmParser21maybeParseSectionTypeERN4llvm9StringRefE.exit.thread
  br i1 %.not480, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.pa = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.pb = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.pb, align 1, !tbaa !56
  store ptr @.str.35, ptr %12, align 8, !tbaa !57
  store i8 3, ptr %i.pa, align 8, !tbaa !55
  %i.pc = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8TokErrorERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.ov, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr null, ptr null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %.thread493

bb.bu:                                            ; preds = %bb.bs
  br i1 %i.my, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.pd = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.pe = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.pe, align 1, !tbaa !56
  store ptr @.str.36, ptr %13, align 8, !tbaa !57
  store i8 3, ptr %i.pd, align 8, !tbaa !55
  %i.pf = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8TokErrorERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.ov, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr null, ptr null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %.thread493

bb.bw:                                            ; preds = %bb.bu
  %i.pg = load ptr, ptr %i.ow, align 8, !tbaa !21
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !28
  %.not533 = icmp eq i32 %i.ph, 9
  br i1 %.not533, label %_ZN4llvmeqENS_9StringRefES0_.exit199.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.pi = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.pj = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.pj, align 1, !tbaa !56
  store ptr @.str.37, ptr %14, align 8, !tbaa !57
  store i8 3, ptr %i.pi, align 8, !tbaa !55
  %i.pk = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8TokErrorERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.ov, ptr noundef nonnull align 8 dereferenceable(34) %14, ptr null, ptr null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %.thread493

bb.by:                                            ; preds = %_ZN12_GLOBAL__N_112ELFAsmParser21maybeParseSectionTypeERN4llvm9StringRefE.exit.thread
  br i1 %.not480, label %.thread483, label %_ZN4llvmeqENS_9StringRefES0_.exit199.thread491

.thread483:                                       ; preds = %bb.by
  %.not.i196485 = icmp eq i64 %i.oy, 19
  br i1 %.not.i196485, label %_ZN4llvmeqENS_9StringRefES0_.exit199, label %_ZN4llvmeqENS_9StringRefES0_.exit199.thread

_ZN4llvmeqENS_9StringRefES0_.exit199:             ; preds = %.thread483
  %.sroa.081.0.copyload484 = load ptr, ptr %7, align 8, !tbaa !61 ; 2 uses
  %i.pl = load i128, ptr %.sroa.081.0.copyload484, align 1
  %i.pm = xor i128 %i.pl, 129539357763069240905179170259535817836
  %i.pn = getelementptr i8, ptr %.sroa.081.0.copyload484, i64 3
  %i.po = load i128, ptr %i.pn, align 1
  %i.pp = xor i128 %i.po, 134814791032286826310849383030799425389
  %i.pq = or i128 %i.pm, %i.pp
  %i.pr = icmp ne i128 %i.pq, 0
  %i.ps = zext i1 %i.pr to i32
  %i.pt = icmp eq i32 %i.ps, 0
  br i1 %i.pt, label %_ZN4llvmeqENS_9StringRefES0_.exit199.thread491, label %_ZN4llvmeqENS_9StringRefES0_.exit199.thread

_ZN4llvmeqENS_9StringRefES0_.exit199.thread491:   ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit199, %bb.by
  %i.pu = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112ELFAsmParser14parseMergeSizeERl(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %i.pu, label %.thread493, label %_ZN4llvmeqENS_9StringRefES0_.exit199.thread

_ZN4llvmeqENS_9StringRefES0_.exit199.thread:      ; preds = %bb.bw, %.thread483, %_ZN4llvmeqENS_9StringRefES0_.exit199.thread491, %_ZN4llvmeqENS_9StringRefES0_.exit199
  %i.pv = and i32 %.0146471477, 128
  %.not150 = icmp eq i32 %i.pv, 0
  br i1 %.not150, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit199.thread
  %i.pw = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112ELFAsmParser16parseLinkedToSymERPN4llvm11MCSymbolELFE(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br i1 %i.pw, label %.thread493, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN4llvmeqENS_9StringRefES0_.exit199.thread
  br i1 %i.my, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.px = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112ELFAsmParser10parseGroupERN4llvm9StringRefERb(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
  br i1 %i.px, label %.thread493, label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %i.py = call noundef zeroext i1 @_ZN4llvm20MCAsmParserExtension18maybeParseUniqueIDERl(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.i) #16
  br i1 %i.py, label %.thread493, label %._crit_edge

._crit_edge:                                      ; preds = %bb.cc
  %.pre583.a = load ptr, ptr %i.j, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre583.a, i64 48
  %.pre584.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21
  %.pre585.a = load i32, ptr %.pre584.a, align 8, !tbaa !28
  %i.pz = trunc nuw i8 %.0470479 to i1
  %i.qa = icmp eq i32 %.0146471477, 0
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge, %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451, %bb.aa
  %i.qb = phi i32 [ %i.gy, %bb.aa ], [ %.pre585.a, %._crit_edge ], [ %i.gl, %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451 ]
  %i.qc = phi ptr [ %i.gv, %bb.aa ], [ %.pre583.a, %._crit_edge ], [ %i.gi, %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451 ] ; 3 uses
  %.1440 = phi i1 [ false, %bb.aa ], [ %i.pz, %._crit_edge ], [ false, %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451 ]
  %.1147 = phi i1 [ true, %bb.aa ], [ %i.qa, %._crit_edge ], [ true, %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451 ] ; 2 uses
  %.1142 = phi i32 [ %.0141, %bb.aa ], [ %i.mz, %._crit_edge ], [ %.0141, %_ZL9hasPrefixN4llvm9StringRefES0_.exit.thread451 ] ; 4 uses
  %.not534 = icmp eq i32 %i.qb, 9
  br i1 %.not534, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  %i.qd = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.qe = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.qe, align 1, !tbaa !56
  store ptr @.str.37, ptr %15, align 8, !tbaa !57
  store i8 3, ptr %i.qd, align 8, !tbaa !55
  %i.qf = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8TokErrorERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.qc, ptr noundef nonnull align 8 dereferenceable(34) %15, ptr null, ptr null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %.thread493

bb.cf:                                            ; preds = %bb.cd
  %i.qg = load ptr, ptr %i.qc, align 8, !tbaa !12
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 152
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = call noundef nonnull align 8 dereferenceable(40) ptr %i.qi(ptr noundef nonnull align 8 dereferenceable(243) %i.qc) #16, !inline_history !0 ; 0 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !62 ; 19 uses
  %i.qm = icmp eq i64 %i.ql, 0
  br i1 %i.qm, label %bb.cg, label %bb.cl

bb.cg:                                            ; preds = %bb.cf
  %.not.i200 = icmp ult i64 %.sroa.29.2449, 5
  br i1 %.not.i200, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit205.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.cg
  %i.qn = load i32, ptr %.sroa.0416.2450, align 1
  %i.qo = xor i32 %i.qn, 1953459758
  %i.qp = getelementptr i8, ptr %.sroa.0416.2450, i64 4
  %i.qq = load i8, ptr %i.qp, align 1
  %i.qr = zext i8 %i.qq to i32
  %i.qs = xor i32 %i.qr, 101
  %i.qt = or i32 %i.qo, %i.qs
  %i.qu = icmp ne i32 %i.qt, 0
  %i.qv = zext i1 %i.qu to i32
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread498

_ZNK4llvm9StringRef11starts_withES0_.exit.thread498: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  %.not.i.i.i202 = icmp ult i64 %.sroa.29.2449, 11
  br i1 %.not.i.i.i202, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit205.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i203

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i203: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread498
  %i.qx = load i64, ptr %.sroa.0416.2450, align 1
  %i.qy = xor i64 %i.qx, 8241973746654406958
  %i.qz = getelementptr i8, ptr %.sroa.0416.2450, i64 3
  %i.ra = load i64, ptr %i.qz, align 1
  %i.rb = xor i64 %i.ra, 8746397786915697769
  %i.rc = or i64 %i.qy, %i.rb
  %i.rd = icmp ne i64 %i.rc, 0
  %i.re = zext i1 %i.rd to i32
  %i.rf = icmp eq i32 %i.re, 0
  br i1 %i.rf, label %bb.ch, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit205.thread

bb.ch:                                            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i203
  %i.rg = icmp eq i64 %.sroa.29.2449, 11
  br i1 %i.rg, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit205

_ZL9hasPrefixN4llvm9StringRefES0_.exit205:        ; preds = %bb.ch
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.0416.2450, i64 11
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !57
  %i.rj = icmp eq i8 %i.ri, 46
  br i1 %i.rj, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZL9hasPrefixN4llvm9StringRefES0_.exit205.thread

_ZL9hasPrefixN4llvm9StringRefES0_.exit205.thread: ; preds = %bb.cg, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread498, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i203, %_ZL9hasPrefixN4llvm9StringRefES0_.exit205
  %i.rk = call fastcc noundef zeroext i1 @_ZL9hasPrefixN4llvm9StringRefES0_(ptr %.sroa.0416.2450, i64 %.sroa.29.2449, ptr nonnull @.str.2, i64 4)
  br i1 %i.rk, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %_ZL9hasPrefixN4llvm9StringRefES0_.exit205.thread
  %i.rl = call fastcc noundef zeroext i1 @_ZL9hasPrefixN4llvm9StringRefES0_(ptr %.sroa.0416.2450, i64 %.sroa.29.2449, ptr nonnull @.str.5, i64 5)
  br i1 %i.rl, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.rm = call fastcc noundef zeroext i1 @_ZL9hasPrefixN4llvm9StringRefES0_(ptr %.sroa.0416.2450, i64 %.sroa.29.2449, ptr nonnull @.str.30, i64 11)
  br i1 %i.rm, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rn = call fastcc noundef zeroext i1 @_ZL9hasPrefixN4llvm9StringRefES0_(ptr %.sroa.0416.2450, i64 %.sroa.29.2449, ptr nonnull @.str.31, i64 14)
  %spec.select = select i1 %i.rn, i32 16, i32 1
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread

bb.cl:                                            ; preds = %bb.cf
  %.sroa.069.0.copyload = load ptr, ptr %7, align 8, !tbaa !61 ; 21 uses
  switch i64 %i.ql, label %_ZN4llvmeqENS_9StringRefES0_.exit277.thread [
    i64 10, label %_ZN4llvmeqENS_9StringRefES0_.exit209
    i64 13, label %_ZN4llvmeqENS_9StringRefES0_.exit217
    i64 6, label %_ZN4llvmeqENS_9StringRefES0_.exit221
    i64 8, label %_ZN4llvmeqENS_9StringRefES0_.exit225
    i64 4, label %_ZN4llvmeqENS_9StringRefES0_.exit229
    i64 11, label %_ZN4llvmeqENS_9StringRefES0_.exit237
    i64 19, label %_ZN4llvmeqENS_9StringRefES0_.exit241
    i64 23, label %_ZN4llvmeqENS_9StringRefES0_.exit245
    i64 24, label %_ZN4llvmeqENS_9StringRefES0_.exit249
    i64 12, label %_ZN4llvmeqENS_9StringRefES0_.exit253
    i64 16, label %_ZN4llvmeqENS_9StringRefES0_.exit257
    i64 15, label %_ZN4llvmeqENS_9StringRefES0_.exit261
  ]

_ZN4llvmeqENS_9StringRefES0_.exit209:             ; preds = %bb.cl
  %i.ro = load i64, ptr %.sroa.069.0.copyload, align 1
  %i.rp = xor i64 %i.ro, 8246760930271653481
  %i.rq = getelementptr i8, ptr %.sroa.069.0.copyload, i64 8
  %i.rr = load i16, ptr %i.rq, align 1
  %i.rs = zext i16 %i.rr to i64
  %i.rt = xor i64 %i.rs, 31073
  %i.ru = or i64 %i.rp, %i.rt
  %i.rv = icmp ne i64 %i.ru, 0
  %i.rw = zext i1 %i.rv to i32
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit213

_ZN4llvmeqENS_9StringRefES0_.exit213:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit209
  %i.ry = load i64, ptr %.sroa.069.0.copyload, align 1
  %i.rz = xor i64 %i.ry, 8246760930087430502
  %i.sa = getelementptr i8, ptr %.sroa.069.0.copyload, i64 8
  %i.sb = load i16, ptr %i.sa, align 1
  %i.sc = zext i16 %i.sb to i64
  %i.sd = xor i64 %i.sc, 31073
  %i.se = or i64 %i.rz, %i.sd
  %i.sf = icmp ne i64 %i.se, 0
  %i.sg = zext i1 %i.sf to i32
  %i.sh = icmp eq i32 %i.sg, 0
  br i1 %i.sh, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit277.thread

_ZN4llvmeqENS_9StringRefES0_.exit217:             ; preds = %bb.cl
  %bcmp.i216 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.42, i64 %i.ql)
  %i.si = icmp eq i32 %bcmp.i216, 0
  br i1 %i.si, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit269

_ZN4llvmeqENS_9StringRefES0_.exit221:             ; preds = %bb.cl
  %bcmp.i220 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.43, i64 %i.ql)
  %i.sj = icmp eq i32 %bcmp.i220, 0
  br i1 %i.sj, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit233

_ZN4llvmeqENS_9StringRefES0_.exit225:             ; preds = %bb.cl
  %bcmp.i224 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.44, i64 %i.ql)
  %i.sk = icmp eq i32 %bcmp.i224, 0
  br i1 %i.sk, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit265

_ZN4llvmeqENS_9StringRefES0_.exit229:             ; preds = %bb.cl
  %bcmp.i228 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.45, i64 %i.ql)
  %i.sl = icmp eq i32 %bcmp.i228, 0
  br i1 %i.sl, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit277.thread

_ZN4llvmeqENS_9StringRefES0_.exit233:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit221
  %bcmp.i232 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.46, i64 %i.ql)
  %i.sm = icmp eq i32 %bcmp.i232, 0
  br i1 %i.sm, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit277.thread

_ZN4llvmeqENS_9StringRefES0_.exit237:             ; preds = %bb.cl
  %bcmp.i236 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.47, i64 %i.ql)
  %i.sn = icmp eq i32 %bcmp.i236, 0
  br i1 %i.sn, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit277.thread

_ZN4llvmeqENS_9StringRefES0_.exit241:             ; preds = %bb.cl
  %bcmp.i240 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.48, i64 %i.ql)
  %i.so = icmp eq i32 %bcmp.i240, 0
  br i1 %i.so, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit273

_ZN4llvmeqENS_9StringRefES0_.exit245:             ; preds = %bb.cl
  %bcmp.i244 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.49, i64 %i.ql)
  %i.sp = icmp eq i32 %bcmp.i244, 0
  br i1 %i.sp, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit277.thread

_ZN4llvmeqENS_9StringRefES0_.exit249:             ; preds = %bb.cl
  %bcmp.i248 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.50, i64 %i.ql)
  %i.sq = icmp eq i32 %bcmp.i248, 0
  br i1 %i.sq, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit277.thread

_ZN4llvmeqENS_9StringRefES0_.exit253:             ; preds = %bb.cl
  %bcmp.i252 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.51, i64 %i.ql)
  %i.sr = icmp eq i32 %bcmp.i252, 0
  br i1 %i.sr, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit277.thread

_ZN4llvmeqENS_9StringRefES0_.exit257:             ; preds = %bb.cl
  %bcmp.i256 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.52, i64 %i.ql)
  %i.ss = icmp eq i32 %bcmp.i256, 0
  br i1 %i.ss, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit277.thread

_ZN4llvmeqENS_9StringRefES0_.exit261:             ; preds = %bb.cl
  %bcmp.i260 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.53, i64 %i.ql)
  %i.st = icmp eq i32 %bcmp.i260, 0
  br i1 %i.st, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit277

_ZN4llvmeqENS_9StringRefES0_.exit265:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit225
  %bcmp.i264 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.54, i64 %i.ql)
  %i.su = icmp eq i32 %bcmp.i264, 0
  br i1 %i.su, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit277.thread

_ZN4llvmeqENS_9StringRefES0_.exit269:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit217
  %bcmp.i268 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.55, i64 %i.ql)
  %i.sv = icmp eq i32 %bcmp.i268, 0
  br i1 %i.sv, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit277.thread

_ZN4llvmeqENS_9StringRefES0_.exit273:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit241
  %bcmp.i272 = call i32 @bcmp(ptr %.sroa.069.0.copyload, ptr nonnull @.str.38, i64 %i.ql)
  %i.sw = icmp eq i32 %bcmp.i272, 0
end_hunk_0
