Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMWinEHPrinter?download=true
inline.NumInlined: 1911
inline.NumDeleted: 1008
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm3ARM5WinEH7Decoder15dumpXDataRecordERKNS_6object14COFFObjectFileERKNS3_10SectionRefEmm:bb.a
  call void @_ZN4llvm3ARM5WinEH7Decoder13decodeOpcodesENS_8ArrayRefIhEEjb(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr %i.df, i64 %i.dh, i32 noundef 0, i1 noundef zeroext true)
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !43
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 280
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(44) %i.di) #13, !inline_history !11
  %.0.copyload.i.i.i.i.i68 = load i32, ptr %i.u, align 1 ; 3 uses
  %.not.i.not.i70 = icmp ult i32 %.0.copyload.i.i.i.i.i68, %..i.i
  br i1 %.not.i.not.i70, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm9ListScopeD2Ev.exit
  br i1 %i.bm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dp = lshr i32 %.0.copyload.i.i.i.i.i68, 22
  %i.dq = trunc nuw nsw i32 %i.dp to i16
  %i.dr = and i16 %i.dq, 31
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit73

bb.ad:                                            ; preds = %bb.ab
  %i.ds = lshr i32 %.0.copyload.i.i.i.i.i68, 23
  %i.dt = trunc nuw nsw i32 %i.ds to i16
  %i.du = and i16 %i.dt, 31
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit73

bb.ae:                                            ; preds = %_ZN4llvm9ListScopeD2Ev.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.0.copyload.i.i.i2.i72 = load i32, ptr %i.dv, align 1
  %i.dw = trunc i32 %.0.copyload.i.i.i2.i72 to i16
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit73

_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit73: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.0.i71 = phi i16 [ %i.dr, %bb.ac ], [ %i.du, %bb.ad ], [ %i.dw, %bb.ae ]
  %.not42 = icmp eq i16 %.0.i71, 0
  br i1 %.not42, label %bb.bo, label %bb.af

bb.af:                                            ; preds = %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit73
  %i.dx = load ptr, ptr %0, align 8, !tbaa !39, !nonnull !40, !align !41 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !43
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 272
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(44) %i.dx, ptr nonnull @.str.102, i64 8) #13, !inline_history !10
  %.0.copyload.i.i.i.i.i74 = load i32, ptr %i.u, align 1 ; 3 uses
  %.not.i.not.i76 = icmp ult i32 %.0.copyload.i.i.i.i.i74, %..i.i
  br i1 %.not.i.not.i76, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %i.bm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.eb = lshr i32 %.0.copyload.i.i.i.i.i74, 22
  %i.ec = and i32 %i.eb, 31
  br label %_ZN4llvm9ListScopeD2Ev.exit81

bb.ai:                                            ; preds = %bb.ag
  %i.ed = lshr i32 %.0.copyload.i.i.i.i.i74, 23
  %i.ee = and i32 %i.ed, 31
  br label %_ZN4llvm9ListScopeD2Ev.exit81

bb.aj:                                            ; preds = %bb.af
  %i.ef = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.0.copyload.i.i.i2.i78 = load i32, ptr %i.ef, align 1
  %i.eg = and i32 %.0.copyload.i.i.i2.i78, 65535
  br label %_ZN4llvm9ListScopeD2Ev.exit81

_ZN4llvm9ListScopeD2Ev.exit81:                    ; preds = %bb.ah, %bb.ai, %bb.aj
  %.0.i77 = phi i32 [ %i.ec, %bb.ah ], [ %i.ee, %bb.ai ], [ %i.eg, %bb.aj ]
  call void @_ZN4llvm3ARM5WinEH7Decoder13decodeOpcodesENS_8ArrayRefIhEEjb(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr %i.df, i64 %i.dh, i32 noundef %.0.i77, i1 noundef zeroext false)
  br label %.sink.split

bb.ak:                                            ; preds = %bb.v
  %i.eh = load ptr, ptr %0, align 8, !tbaa !39, !nonnull !40, !align !41 ; 4 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !43
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 272
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(44) %i.eh, ptr nonnull @.str.101, i64 8) #13, !inline_history !10
  %.0.copyload.i.i.i.i.i82 = load i32, ptr %i.u, align 1 ; 6 uses
  %.not.i.i84 = icmp ult i32 %.0.copyload.i.i.i.i.i82, %..i.i ; 2 uses
  %i.el = and i32 %.0.copyload.i.i.i.i.i82, 2097152
  %.not.i85 = icmp eq i32 %i.el, 0
  br i1 %.not.i85, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  br i1 %.not.i.i84, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %i.bm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.em = lshr i32 %.0.copyload.i.i.i.i.i82, 22
  %i.en = and i32 %i.em, 31
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit.i90

bb.ao:                                            ; preds = %bb.am
  %i.eo = lshr i32 %.0.copyload.i.i.i.i.i82, 23
  %i.ep = and i32 %i.eo, 31
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit.i90

bb.ap:                                            ; preds = %bb.al
  %i.eq = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.0.copyload.i.i.i2.i.i92 = load i32, ptr %i.eq, align 1
  %i.er = and i32 %.0.copyload.i.i.i2.i.i92, 65535
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit.i90

_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit.i90: ; preds = %bb.ap, %bb.ao, %bb.an
  %.0.i.in.i91 = phi i32 [ %i.en, %bb.an ], [ %i.ep, %bb.ao ], [ %i.er, %bb.ap ]
  %i.es = zext nneg i32 %.0.i.in.i91 to i64
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit.i90, %bb.ak
  %i.et = phi i64 [ %i.es, %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit.i90 ], [ 0, %bb.ak ]
  br i1 %.not.i.i84, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.bm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.eu = lshr i32 %.0.copyload.i.i.i.i.i82, 27
  br label %_ZN4llvm9ListScopeD2Ev.exit95

bb.at:                                            ; preds = %bb.ar
  %i.ev = lshr i32 %.0.copyload.i.i.i.i.i82, 28
  br label %_ZN4llvm9ListScopeD2Ev.exit95

bb.au:                                            ; preds = %bb.aq
  %i.ew = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.0.copyload.i.i.i2.i7.i89 = load i32, ptr %i.ew, align 1
  %i.ex = lshr i32 %.0.copyload.i.i.i2.i7.i89, 16
  %i.ey = and i32 %i.ex, 255
  br label %_ZN4llvm9ListScopeD2Ev.exit95

_ZN4llvm9ListScopeD2Ev.exit95:                    ; preds = %bb.as, %bb.at, %bb.au
  %i.ez = phi i64 [ 1, %bb.as ], [ 1, %bb.at ], [ 2, %bb.au ]
  %.0.in.i.i86 = phi i32 [ %i.eu, %bb.as ], [ %i.ev, %bb.at ], [ %i.ey, %bb.au ]
  %i.fa = getelementptr [4 x i8], ptr %i.u, i64 %i.ez
  %i.fb = getelementptr [4 x i8], ptr %i.fa, i64 %i.et
  %i.fc = shl nuw nsw i32 %.0.in.i.i86, 2
  %i.fd = zext nneg i32 %i.fc to i64
  call void @_ZN4llvm3ARM5WinEH7Decoder13decodeOpcodesENS_8ArrayRefIhEEjb(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr %i.fb, i64 %i.fd, i32 noundef 0, i1 noundef zeroext true)
  %i.fe = load ptr, ptr %i.eh, align 8, !tbaa !43
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 280
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(44) %i.eh) #13, !inline_history !11
  %.0.copyload.i.i.i.i.i96 = load i32, ptr %i.u, align 1 ; 3 uses
  %.not.i.i98 = icmp ult i32 %.0.copyload.i.i.i.i.i96, %..i.i
  br i1 %.not.i.i98, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %_ZN4llvm9ListScopeD2Ev.exit95
  br i1 %i.bm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fh = lshr i32 %.0.copyload.i.i.i.i.i96, 22
  %i.fi = and i32 %i.fh, 31
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14EpilogueScopesEv.exit

bb.ax:                                            ; preds = %bb.av
  %i.fj = lshr i32 %.0.copyload.i.i.i.i.i96, 23
  %i.fk = and i32 %i.fj, 31
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14EpilogueScopesEv.exit

bb.ay:                                            ; preds = %_ZN4llvm9ListScopeD2Ev.exit95
  %i.fl = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.0.copyload.i.i.i2.i.i103 = load i32, ptr %i.fl, align 1
  %i.fm = and i32 %.0.copyload.i.i.i2.i.i103, 65535
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14EpilogueScopesEv.exit

_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14EpilogueScopesEv.exit: ; preds = %bb.aw, %bb.ax, %bb.ay
  %i.fn = phi i64 [ 1, %bb.aw ], [ 1, %bb.ax ], [ 2, %bb.ay ]
  %.0.i.in.i100 = phi i32 [ %i.fi, %bb.aw ], [ %i.fk, %bb.ax ], [ %i.fm, %bb.ay ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.fn ; 2 uses
  %i.fp = load ptr, ptr %0, align 8, !tbaa !39, !nonnull !40, !align !41 ; 4 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !43
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 272
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(44) %i.fp, ptr nonnull @.str.98, i64 14) #13, !inline_history !10
  %i.ft = shl nuw nsw i32 %.0.i.in.i100, 2
  %.idx = zext nneg i32 %i.ft to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.idx
  %.not333 = icmp eq i32 %.0.i.in.i100, 0
  br i1 %.not333, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14EpilogueScopesEv.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph, %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14UnwindByteCodeEv.exit122
  %.040334 = phi ptr [ %i.fo, %.lr.ph ], [ %i.ig, %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14UnwindByteCodeEv.exit122 ] ; 2 uses
  %.sroa.07.0.copyload = load i32, ptr %.040334, align 1, !tbaa !35 ; 5 uses
  %i.fw = load ptr, ptr %0, align 8, !tbaa !39, !nonnull !40, !align !41 ; 4 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !43
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 248
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(44) %i.fw, ptr nonnull @.str.103, i64 13) #13, !inline_history !9
  %i.ga = load ptr, ptr %0, align 8, !tbaa !39, !nonnull !40, !align !41 ; 2 uses
  %i.gb = and i32 %.sroa.07.0.copyload, 262143
  %i.gc = load ptr, ptr %i.ga, align 8, !tbaa !43
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 64
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(44) %i.ga, ptr nonnull @.str.104, i64 11, i32 noundef %i.gb) #13
  %i.gf = load i8, ptr %i.v, align 8, !tbaa !303, !range !243, !noundef !40
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %15 = load ptr, ptr %0, align 8, !tbaa !39, !nonnull !40, !align !41 ; 2 uses
  %i.gh = lshr i32 %.sroa.07.0.copyload, 20
  %i.gi = trunc i32 %i.gh to i8
  %i.gj = and i8 %i.gi, 15
  %i.gk = load ptr, ptr %15, align 8, !tbaa !43
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(44) %15, ptr nonnull @.str.105, i64 9, i8 noundef zeroext %i.gj) #13
  %.pre = load i8, ptr %i.v, align 8, !tbaa !303, !range !243
  %i.gn = trunc nuw i8 %.pre to i1
  %i.go = select i1 %i.gn, i32 22, i32 24
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.v.a = phi i32 [ %i.go, %bb.ba ], [ 22, %bb.az ]
  %16 = load ptr, ptr %0, align 8, !tbaa !39, !nonnull !40, !align !41 ; 2 uses
  %i.gp = lshr i32 %.sroa.07.0.copyload, %.v.a
  %i.gq = load ptr, ptr %16, align 8, !tbaa !43
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(44) %16, ptr nonnull @.str.106, i64 18, i32 noundef %i.gp) #13
  %i.gt = load i8, ptr %i.v, align 8, !tbaa !303, !range !243, !noundef !40
  %i.gu = trunc nuw i8 %i.gt to i1
  %i.gv = select i1 %i.gu, i32 15, i32 3
  %i.gw = lshr i32 %.sroa.07.0.copyload, 18
  %i.gx = and i32 %i.gv, %i.gw                    ; 2 uses
  %.not41 = icmp eq i32 %i.gx, 0
  br i1 %.not41, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gy = load ptr, ptr %0, align 8, !tbaa !39, !nonnull !40, !align !41 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !43
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(44) %i.gy, ptr nonnull @.str.107, i64 12, i32 noundef %i.gx) #13
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hc = load ptr, ptr %0, align 8, !tbaa !39, !nonnull !40, !align !41 ; 4 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !43
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 272
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(44) %i.hc, ptr nonnull @.str.108, i64 7) #13, !inline_history !10
  %.0.copyload.i.i.i.i.i111 = load i32, ptr %i.u, align 1 ; 6 uses
  %.not.i.i113 = icmp ult i32 %.0.copyload.i.i.i.i.i111, %..i.i ; 2 uses
  %i.hg = and i32 %.0.copyload.i.i.i.i.i111, 2097152
  %.not.i114 = icmp eq i32 %i.hg, 0
  br i1 %.not.i114, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  br i1 %.not.i.i113, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.bm, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hh = lshr i32 %.0.copyload.i.i.i.i.i111, 22
  %i.hi = and i32 %i.hh, 31
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit.i119

bb.bh:                                            ; preds = %bb.bf
  %i.hj = lshr i32 %.0.copyload.i.i.i.i.i111, 23
  %i.hk = and i32 %i.hj, 31
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit.i119

bb.bi:                                            ; preds = %bb.be
  %.0.copyload.i.i.i2.i.i121 = load i32, ptr %i.fv, align 1
  %i.hl = and i32 %.0.copyload.i.i.i2.i.i121, 65535
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit.i119

_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit.i119: ; preds = %bb.bi, %bb.bh, %bb.bg
  %.0.i.in.i120 = phi i32 [ %i.hi, %bb.bg ], [ %i.hk, %bb.bh ], [ %i.hl, %bb.bi ]
  %i.hm = zext nneg i32 %.0.i.in.i120 to i64
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit.i119, %bb.bd
  %i.hn = phi i64 [ %i.hm, %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit.i119 ], [ 0, %bb.bd ]
  br i1 %.not.i.i113, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.bm, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ho = lshr i32 %.0.copyload.i.i.i.i.i111, 27
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14UnwindByteCodeEv.exit122

bb.bm:                                            ; preds = %bb.bk
  %i.hp = lshr i32 %.0.copyload.i.i.i.i.i111, 28
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14UnwindByteCodeEv.exit122

bb.bn:                                            ; preds = %bb.bj
  %.0.copyload.i.i.i2.i7.i118 = load i32, ptr %i.fv, align 1
  %i.hq = lshr i32 %.0.copyload.i.i.i2.i7.i118, 16
  %i.hr = and i32 %i.hq, 255
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14UnwindByteCodeEv.exit122

_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14UnwindByteCodeEv.exit122: ; preds = %bb.bl, %bb.bm, %bb.bn
  %i.hs = phi i64 [ 1, %bb.bl ], [ 1, %bb.bm ], [ 2, %bb.bn ]
  %.0.in.i.i115 = phi i32 [ %i.ho, %bb.bl ], [ %i.hp, %bb.bm ], [ %i.hr, %bb.bn ]
  %i.ht = getelementptr [4 x i8], ptr %i.u, i64 %i.hs
  %i.hu = getelementptr [4 x i8], ptr %i.ht, i64 %i.hn
  %i.hv = shl nuw nsw i32 %.0.in.i.i115, 2
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = load i8, ptr %i.v, align 8, !tbaa !303, !range !243, !noundef !40
  %i.hy = trunc nuw i8 %i.hx to i1
  %.v336 = select i1 %i.hy, i32 22, i32 24
  %i.hz = lshr i32 %.sroa.07.0.copyload, %.v336
  call void @_ZN4llvm3ARM5WinEH7Decoder13decodeOpcodesENS_8ArrayRefIhEEjb(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr %i.hu, i64 %i.hw, i32 noundef %i.hz, i1 noundef zeroext false)
  %i.ia = load ptr, ptr %i.hc, align 8, !tbaa !43
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 280
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(44) %i.hc) #13, !inline_history !11
  %i.id = load ptr, ptr %i.fw, align 8, !tbaa !43
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 256
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(44) %i.fw) #13, !inline_history !12
  %i.ig = getelementptr inbounds nuw i8, ptr %.040334, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ig, %i.fu
  br i1 %.not, label %.sink.split, label %bb.az

.sink.split:                                      ; preds = %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14UnwindByteCodeEv.exit122, %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14EpilogueScopesEv.exit, %_ZN4llvm9ListScopeD2Ev.exit81
  %.sink386 = phi ptr [ %i.dx, %_ZN4llvm9ListScopeD2Ev.exit81 ], [ %i.fp, %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14EpilogueScopesEv.exit ], [ %i.fp, %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord14UnwindByteCodeEv.exit122 ] ; 2 uses
  %i.ih = load ptr, ptr %.sink386, align 8, !tbaa !43
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 280
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(44) %.sink386) #13
  br label %bb.bo

bb.bo:                                            ; preds = %.sink.split, %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord13EpilogueCountEv.exit73
  %.0.copyload.i.i.i.i128 = load i32, ptr %i.u, align 1 ; 12 uses
  %i.ik = and i32 %.0.copyload.i.i.i.i128, 1048576
  %.not326 = icmp eq i32 %i.ik, 0
  br i1 %.not326, label %_ZN4llvm9DictScopeD2Ev.exit173, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not.i.i131 = icmp ult i32 %.0.copyload.i.i.i.i128, %..i.i ; 2 uses
  %i.il = and i32 %.0.copyload.i.i.i.i128, 2097152
  %.not.i132 = icmp eq i32 %i.il, 0
  br i1 %.not.i132, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  br i1 %.not.i.i131, label %..thread309_crit_edge, label %.thread378

bb.br:                                            ; preds = %bb.bp
  br i1 %.not.i.i131, label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord9CodeWordsEv.exit154.thread.thread, label %.thread374

_ZNK4llvm3ARM5WinEH19ExceptionDataRecord9CodeWordsEv.exit154.thread.thread: ; preds = %bb.br
  %i.im = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.0.copyload.i.i.i2.i6.i = load i32, ptr %i.im, align 1 ; 2 uses
  %i.in = lshr i32 %.0.copyload.i.i.i2.i6.i, 16
  %i.io = and i32 %i.in, 255                      ; 2 uses
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = getelementptr [4 x i8], ptr %i.u, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.iq, i64 12
  %.0.copyload.i.i.i.i134290 = load i32, ptr %i.ir, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.is = lshr i32 %.0.copyload.i.i.i2.i6.i, 14
  %narrow = and i32 %i.is, 1020
  %i.it = add nuw nsw i32 %narrow, 8
  br label %_ZNK4llvm3ARM5WinEH19ExceptionDataRecord19ExceptionHandlerRVAEv.exit

.thread378:                                       ; preds = %bb.bq
  %.0.i.in.i136.ph.v.v = select i1 %i.bm, i32 22, i32 23
  %.0.i.in.i136.ph.v = lshr i32 %.0.copyload.i.i.i.i128, %.0.i.in.i136.ph.v.v
  %.0.i.in.i136.ph = and i32 %.0.i.in.i136.ph.v, 31
  %i.iu = zext nneg i32 %.0.i.in.i136.ph to i64
  %.0.in.i.i133.v351 = select i1 %i.bm, i32 27, i32 28
  %.0.in.i.i133352 = lshr i32 %.0.copyload.i.i.i.i128, %.0.in.i.i133.v351
  %i.iv = zext nneg i32 %.0.in.i.i133352 to i64
  %i.iw = getelementptr [4 x i8], ptr %i.u, i64 %i.iu
  %i.ix = getelementptr [4 x i8], ptr %i.iw, i64 %i.iv
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  %.0.copyload.i.i.i.i134353 = load i32, ptr %i.iy, align 1
  %.400 = select i1 %i.bm, i32 22, i32 23         ; 2 uses
  %.401 = select i1 %i.bm, i32 27, i32 28
  %i.iz = lshr i32 %.0.copyload.i.i.i.i128, %.400
  %.sink391.in.in = and i32 %i.iz, 31
  %.sink391.in = add nuw nsw i32 %.sink391.in.in, 1
  %.0.in.i151366372 = lshr i32 %.0.copyload.i.i.i.i128, %.401
  %narrow397 = add nuw nsw i32 %.sink391.in, %.0.in.i151366372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ja = shl nuw nsw i32 %narrow397, 2
  %i.jb = lshr i32 %.0.copyload.i.i.i.i128, %.400
  %i.jc = and i32 %i.jb, 31
  %i.jd = zext nneg i32 %i.jc to i64
  br label %bb.bs

.thread374:                                       ; preds = %bb.br
  %.0.in.i.i133.v = select i1 %i.bm, i32 27, i32 28
  %.0.in.i.i133 = lshr i32 %.0.copyload.i.i.i.i128, %.0.in.i.i133.v
  %i.je = zext nneg i32 %.0.in.i.i133 to i64
  %i.jf = getelementptr [4 x i8], ptr %i.u, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.jf, i64 8
  %.0.copyload.i.i.i.i134 = load i32, ptr %i.jg, align 1
  %.0.in.i151.v = select i1 %i.bm, i32 27, i32 28
  %.0.in.i151 = lshr i32 %.0.copyload.i.i.i.i128, %.0.in.i151.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %narrow394 = shl nuw nsw i32 %.0.in.i151, 2
  %i.jh = add nuw nsw i32 %narrow394, 4
  br label %bb.bs

..thread309_crit_edge:                            ; preds = %bb.bq
  %i.ji = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.0.copyload.i.i.i2.i.i137 = load i32, ptr %i.ji, align 1 ; 2 uses
  %i.jj = and i32 %.0.copyload.i.i.i2.i.i137, 65535 ; 2 uses
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = lshr i32 %.0.copyload.i.i.i2.i.i137, 16
  %i.jm = and i32 %i.jl, 255
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr [4 x i8], ptr %i.u, i64 %i.jk
  %i.jp = getelementptr [4 x i8], ptr %i.jo, i64 %i.jn
  %i.jq = getelementptr i8, ptr %i.jp, i64 12
  %.0.copyload.i.i.i.i134290315 = load i32, ptr %i.jq, align 1
  %narrow398 = add nuw nsw i32 %i.jj, 2
  %i.jr = getelementptr inbounds nuw i8, ptr %i.u, i64 4
end_hunk_0
