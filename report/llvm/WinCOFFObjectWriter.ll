Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WinCOFFObjectWriter?download=true
inline.NumInlined: 2058
inline.NumDeleted: 987
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm13WinCOFFWriter16recordRelocationERKNS_10MCFragmentERKNS_7MCFixupENS_7MCValueERm:bb.a
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !262, !noalias !435 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !263, !noalias !435 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPN12_GLOBAL__N_110COFFSymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupES4_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = add i32 %i.dp, -1                       ; 2 uses
  %i.ds = ptrtoint ptr %i.c to i64
  %i.dt = mul i64 %i.ds, -4658895280553007687     ; 2 uses
  %i.du = lshr i64 %i.dt, 31
  %i.dv = xor i64 %i.du, %i.dt
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = and i32 %i.dr, %i.dw                    ; 3 uses
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = lshr i64 %i.dy, 5
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !264
  %i.ec = and i32 %i.dx, 31
  %i.ed = lshr i32 %i.eb, %i.ec
  %i.ee = trunc i32 %i.ed to i1
  br i1 %i.ee, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPN12_GLOBAL__N_110COFFSymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupES4_.exit, !prof !265

.lr.ph.i.i:                                       ; preds = %bb.n, %bb.o
  %i.ef = phi i64 [ %i.el, %bb.o ], [ %i.dy, %bb.n ]
  %.03.i.i = phi i32 [ %i.ek, %bb.o ], [ %i.dx, %bb.n ]
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.ef ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !266
  %i.ei = icmp eq ptr %i.c, %i.eh
  br i1 %i.ei, label %bb.p, label %bb.o, !prof !231

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.ej = add nuw i32 %.03.i.i, 1
  %i.ek = and i32 %i.ej, %i.dr                    ; 3 uses
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = lshr i64 %i.el, 5
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !264
  %i.ep = and i32 %i.ek, 31
  %i.eq = lshr i32 %i.eo, %i.ep
  %i.er = trunc i32 %i.eq to i1
  br i1 %i.er, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPN12_GLOBAL__N_110COFFSymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupES4_.exit, !prof !267

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !186
  %i.eu = icmp eq ptr %i.et, null
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPN12_GLOBAL__N_110COFFSymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupES4_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPN12_GLOBAL__N_110COFFSymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupES4_.exit: ; preds = %bb.o, %bb.p, %bb.n, %bb.m, %_ZN4llvm4COFF10isAnyArm64ItEEbT_.exit
  %i.ev = phi i1 [ false, %_ZN4llvm4COFF10isAnyArm64ItEEbT_.exit ], [ %i.eu, %bb.p ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.o ] ; 2 uses
  br i1 %.097, label %bb.q, label %.critedge107

bb.q:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPN12_GLOBAL__N_110COFFSymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupES4_.exit
  %i.ew = load ptr, ptr %i.c, align 8, !tbaa !283 ; 2 uses
  %.not.i.i200 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i200, label %bb.r, label %_ZNK4llvm8MCSymbol11isInSectionEv.exit

bb.r:                                             ; preds = %bb.q
  %i.ex = and i32 %i.di, 259
  %or.cond.not.i.i202 = icmp eq i32 %i.ex, 1
  br i1 %or.cond.not.i.i202, label %bb.s, label %.critedge107

bb.s:                                             ; preds = %bb.r
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !37
  %i.fa = call noundef ptr @_ZNK4llvm6MCExpr22findAssociatedFragmentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #24 ; 2 uses
  store ptr %i.fa, ptr %i.c, align 8, !tbaa !283
  br label %_ZNK4llvm8MCSymbol11isInSectionEv.exit

_ZNK4llvm8MCSymbol11isInSectionEv.exit:           ; preds = %bb.q, %bb.s
  %.0.i.i201 = phi ptr [ %i.fa, %bb.s ], [ %i.ew, %bb.q ] ; 2 uses
  %i.fb = icmp ne ptr %.0.i.i201, null
  %i.fc = load ptr, ptr @_ZN4llvm8MCSymbol22AbsolutePseudoFragmentE, align 8
  %i.fd = icmp ne ptr %.0.i.i201, %i.fc
  %i.fe = select i1 %i.fb, i1 %i.fd, i1 false
  br i1 %i.fe, label %bb.t, label %.critedge107

bb.t:                                             ; preds = %_ZNK4llvm8MCSymbol11isInSectionEv.exit
  %i.ff = load i64, ptr %4, align 8, !tbaa !117   ; 2 uses
  br i1 %i.ev, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fg = load ptr, ptr %i.cj, align 8, !tbaa !75
  %i.fh = call noundef i64 @_ZNK4llvm11MCAssembler15getSymbolOffsetERKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(400) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #24
  %i.fi = add i64 %i.fh, %i.ff
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0 = phi i64 [ %i.fi, %bb.u ], [ %i.ff, %bb.t ]
  %i.fj = icmp ugt i64 %.0, 4095
  %i.fk = load ptr, ptr %i.cj, align 8, !tbaa !75
  %i.fl = call noundef i64 @_ZNK4llvm11MCAssembler15getSymbolOffsetERKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(400) %i.fk, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #24
  %i.fm = load i64, ptr %4, align 8, !tbaa !117
  %i.fn = add i64 %i.fm, %i.fl                    ; 2 uses
  br i1 %i.fj, label %bb.w, label %.critedge107

bb.w:                                             ; preds = %bb.v
  %i.fo = icmp ult i64 %i.fn, 4294967296
  br i1 %i.fo, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fp = load ptr, ptr %0, align 8, !tbaa !363, !nonnull !212, !align !325
  %i.fq = call noundef nonnull align 8 dereferenceable(2208) ptr @_ZNK4llvm14MCObjectWriter10getContextEv(ptr noundef nonnull align 8 dereferenceable(112) %i.fp) #24
  %i.fr = call ptr @_ZNK4llvm7MCFixup6getLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.ft, align 1, !tbaa !219
  store ptr @.str.12, ptr %11, align 8, !tbaa !37
  store i8 3, ptr %i.fs, align 8, !tbaa !213
  call void @_ZN4llvm9MCContext11reportErrorENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.fq, ptr %i.fr, ptr noundef nonnull align 8 dereferenceable(34) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE9push_backERKS1_.exit222

bb.y:                                             ; preds = %bb.w
  %i.fu = call fastcc noundef ptr @_ZN4llvm13WinCOFFWriter23getOrCreateSecRelSymbolERKNS_8MCSymbolEm(ptr noundef nonnull align 8 dereferenceable(276) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.fn)
  store i64 0, ptr %4, align 8, !tbaa !117
  br label %bb.ag

.critedge107:                                     ; preds = %bb.r, %_ZNK4llvm8MCSymbol11isInSectionEv.exit, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPN12_GLOBAL__N_110COFFSymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupES4_.exit, %bb.v
  br i1 %i.ev, label %bb.z, label %bb.af

bb.z:                                             ; preds = %.critedge107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.fv = load ptr, ptr %i.c, align 8, !tbaa !283 ; 2 uses
  %.not.i.i203 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i203, label %bb.aa, label %_ZNK4llvm8MCSymbol10getSectionEv.exit

bb.aa:                                            ; preds = %bb.z
  %i.fw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !37
  %i.fy = call noundef ptr @_ZNK4llvm6MCExpr22findAssociatedFragmentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fx) #24 ; 2 uses
  store ptr %i.fy, ptr %i.c, align 8, !tbaa !283
  br label %_ZNK4llvm8MCSymbol10getSectionEv.exit

_ZNK4llvm8MCSymbol10getSectionEv.exit:            ; preds = %bb.z, %bb.aa
  %.0.i.i204 = phi ptr [ %i.fy, %bb.aa ], [ %i.fv, %bb.z ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i.i204, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !285
  store ptr %i.ga, ptr %i.b, align 8, !tbaa !279
  %i.gb = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9MCSectionEPN12_GLOBAL__N_111COFFSectionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_EixERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !139 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 88
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !157 ; 3 uses
  %i.gf = load ptr, ptr %i.cj, align 8, !tbaa !75
  %i.gg = call noundef i64 @_ZNK4llvm11MCAssembler15getSymbolOffsetERKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(400) %i.gf, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #24
  %i.gh = load i64, ptr %4, align 8, !tbaa !117
  %i.gi = add i64 %i.gh, %i.gg                    ; 3 uses
  store i64 %i.gi, ptr %4, align 8, !tbaa !117
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !115, !range !211, !noundef !212
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK4llvm8MCSymbol10getSectionEv.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 120
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !33 ; 2 uses
  %.not.i206 = icmp eq i32 %i.go, 0
  br i1 %.not.i206, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gp = lshr i64 %i.gi, 20                      ; 2 uses
  %.not103 = icmp eq i64 %i.gp, 0
  br i1 %.not103, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gq = zext i32 %i.go to i64
  %.val108 = load ptr, ptr %i.gm, align 8, !tbaa !32
  %. = call i64 @llvm.umin.i64(i64 %i.gp, i64 %i.gq)
  %i.gr = getelementptr [8 x i8], ptr %.val108, i64 %.
  %storemerge105.in = getelementptr i8, ptr %i.gr, i64 -8
  %storemerge105 = load ptr, ptr %storemerge105.in, align 8, !tbaa !186 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %storemerge105, i64 8
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !230
  %i.gu = zext i32 %i.gt to i64
  %i.gv = sub i64 %i.gi, %i.gu
  store i64 %i.gv, ptr %4, align 8, !tbaa !117
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab, %_ZNK4llvm8MCSymbol10getSectionEv.exit
  %.sroa.17.0 = phi ptr [ %i.ge, %bb.ab ], [ %i.ge, %bb.ac ], [ %storemerge105, %bb.ad ], [ %i.ge, %_ZNK4llvm8MCSymbol10getSectionEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.ag

bb.af:                                            ; preds = %.critedge107
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gx = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPN12_GLOBAL__N_110COFFSymbolENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_EixEOS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.gw, ptr %i.c)
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !186
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.y
  %.sroa.17.1 = phi ptr [ %i.fu, %bb.y ], [ %.sroa.17.0, %bb.ae ], [ %i.gy, %bb.af ] ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.17.1, i64 120 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !440
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gz, align 8, !tbaa !440
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !429
  %i.he = add i32 %i.hd, %i.cm                    ; 3 uses
  %i.hf = load i16, ptr %i.db, align 8, !tbaa !114 ; 7 uses
  %i.hg = icmp eq i16 %i.hf, -31132
  %i.hh = icmp eq i16 %i.da, 4
  %or.cond = and i1 %i.hh, %i.hg
  br i1 %or.cond, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hi = icmp eq i16 %i.hf, 332
  %i.hj = icmp eq i16 %i.da, 20
  %or.cond9 = and i1 %i.hj, %i.hi
  br i1 %or.cond9, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hk = icmp eq i16 %i.hf, 452
  %i.hl = icmp eq i16 %i.da, 10
  %or.cond14 = and i1 %i.hl, %i.hk
  br i1 %or.cond14, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hm = icmp eq i16 %i.hf, -21916
  br i1 %i.hm, label %_ZN4llvm4COFF10isAnyArm64ItEEbT_.exit207, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hn = icmp eq i16 %i.hf, -22975
  %i.ho = icmp eq i16 %i.hf, -22962
  %i.hp = or i1 %i.hn, %i.ho
  br label %_ZN4llvm4COFF10isAnyArm64ItEEbT_.exit207

_ZN4llvm4COFF10isAnyArm64ItEEbT_.exit207:         ; preds = %bb.aj, %bb.ak
  %i.hq = phi i1 [ true, %bb.aj ], [ %i.hp, %bb.ak ]
  %i.hr = icmp eq i16 %i.da, 17
  %or.cond19 = and i1 %i.hr, %i.hq
  br i1 %or.cond19, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN4llvm4COFF10isAnyArm64ItEEbT_.exit207, %bb.ai, %bb.ah, %bb.ag
  %i.hs = load i64, ptr %4, align 8, !tbaa !117
  %i.ht = add i64 %i.hs, 4
  store i64 %i.ht, ptr %4, align 8, !tbaa !117
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN4llvm4COFF10isAnyArm64ItEEbT_.exit207
  %i.hu = icmp eq i16 %i.hf, 452
  br i1 %i.hu, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  switch i16 %i.da, label %bb.ap [
    i16 21, label %bb.ao
    i16 18, label %bb.ao
    i16 20, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an, %bb.an
  %i.hv = load i64, ptr %4, align 8, !tbaa !117
  %i.hw = add i64 %i.hv, 4
  store i64 %i.hw, ptr %4, align 8, !tbaa !117
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.am
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.hy = load i16, ptr %i.hx, align 4, !tbaa !441
  %i.hz = icmp eq i16 %i.hy, 4007
  br i1 %i.hz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i64 0, ptr %4, align 8, !tbaa !117
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ia = load ptr, ptr %0, align 8, !tbaa !363, !nonnull !212, !align !325
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 112
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !40 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !38
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 40
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = call noundef zeroext i1 %i.if(ptr noundef nonnull align 8 dereferenceable(20) %i.ic, ptr noundef nonnull align 8 dereferenceable(16) %2) #24
  br i1 %i.ig, label %bb.as, label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE9push_backERKS1_.exit222

bb.as:                                            ; preds = %bb.ar
  %i.ih = getelementptr inbounds nuw i8, ptr %i.av, i64 96 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.av, i64 104 ; 7 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !339 ; 7 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.av, i64 112 ; 6 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !387
  %.not.i208 = icmp eq ptr %i.ij, %i.il
  br i1 %.not.i208, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.0231.sroa.0.0.insert.ext243 = zext i32 %i.he to i64
  store i64 %.sroa.0231.sroa.0.0.insert.ext243, ptr %i.ij, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i16 %i.da, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !326
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store ptr %.sroa.17.1, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !186
  %12 = load ptr, ptr %i.ii, align 8, !tbaa !339
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr %i.im, ptr %i.ii, align 8, !tbaa !339
  br label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE9push_backERKS1_.exit

bb.au:                                            ; preds = %bb.as
  %.val16.i.i = load ptr, ptr %i.ih, align 8, !tbaa !338 ; 5 uses
  %i.in = ptrtoint ptr %i.ij to i64
  %i.io = ptrtoint ptr %.val16.i.i to i64         ; 2 uses
  %i.ip = sub i64 %i.in, %i.io                    ; 3 uses
  %i.iq = icmp eq i64 %i.ip, 9223372036854775800
  br i1 %i.iq, label %bb.av, label %_ZNKSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.av:                                            ; preds = %bb.au
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #25
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.au
  %i.ir = sdiv exact i64 %i.ip, 24                ; 3 uses
  %i.is = icmp eq ptr %i.ij, %.val16.i.i          ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.is, i64 1, i64 %i.ir
  %i.it = add nsw i64 %.sroa.speculated.i.i.i, %i.ir ; 2 uses
  %i.iu = icmp ult i64 %i.it, %i.ir
  %i.iv = call i64 @llvm.umin.i64(i64 %i.it, i64 384307168202282325)
  %i.iw = select i1 %i.iu, i64 384307168202282325, i64 %i.iv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.iw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ix = mul nuw nsw i64 %i.iw, 24
  %i.iy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ix) #23 ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.ip ; 3 uses
  %.sroa.0231.sroa.0.0.insert.ext246 = zext i32 %i.he to i64
  store i64 %.sroa.0231.sroa.0.0.insert.ext246, ptr %i.iz, align 8
  %.sroa.9.0..sroa_idx235 = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i16 %i.da, ptr %.sroa.9.0..sroa_idx235, align 8, !tbaa !326
  %.sroa.17.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store ptr %.sroa.17.1, ptr %.sroa.17.0..sroa_idx242, align 8, !tbaa !186
  br i1 %i.is, label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i ], [ %i.iy, %_ZNKSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.ja, %.lr.ph.i.i.i.i.i ], [ %.val16.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !442, !alias.scope !443
  %i.ja = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ja, %i.ij
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !447

_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.iy, %_ZNKSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.jb, %.lr.ph.i.i.i.i.i ]
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i27.i.i = icmp eq ptr %.val16.i.i, null
  br i1 %.not.i27.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i
  %i.jd = load ptr, ptr %i.ik, align 8, !tbaa !387
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = sub i64 %i.je, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %.val16.i.i, i64 noundef %i.jf) #26
  br label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.aw, %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i
  store ptr %i.iy, ptr %i.ih, align 8, !tbaa !338
  store ptr %i.jc, ptr %i.ii, align 8, !tbaa !339
  %i.jg = getelementptr inbounds nuw [24 x i8], ptr %i.iy, i64 %i.iw
  store ptr %i.jg, ptr %i.ik, align 8, !tbaa !387
  br label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.at, %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.jh = phi ptr [ %i.im, %bb.at ], [ %i.jc, %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 7 uses
  %i.ji = load i16, ptr %i.db, align 8, !tbaa !114
  %i.jj = icmp eq i16 %i.ji, 358
  br i1 %i.jj, label %bb.ax, label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE9push_backERKS1_.exit222

bb.ax:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE9push_backERKS1_.exit
  switch i16 %i.da, label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE9push_backERKS1_.exit222 [
    i16 13, label %bb.ay
    i16 4, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax, %bb.ax
  %.sroa.0231.sroa.0.0.insert.ext = zext i32 %i.he to i64 ; 2 uses
  %13 = load ptr, ptr %i.ik, align 8, !tbaa !387
  %.not.i209 = icmp eq ptr %i.jh, %13
  br i1 %.not.i209, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i64 %.sroa.0231.sroa.0.0.insert.ext, ptr %i.jh, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store i16 37, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !tbaa !326
  %.sroa.5.0..sroa_idx223 = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store ptr %.sroa.17.1, ptr %.sroa.5.0..sroa_idx223, align 8, !tbaa !186
  %14 = load ptr, ptr %i.ii, align 8, !tbaa !339
  %i.jk = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %i.jk, ptr %i.ii, align 8, !tbaa !339
  br label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE9push_backERKS1_.exit222

bb.ba:                                            ; preds = %bb.ay
  %.val16.i.i210 = load ptr, ptr %i.ih, align 8, !tbaa !338 ; 5 uses
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = ptrtoint ptr %.val16.i.i210 to i64      ; 2 uses
  %i.jn = sub i64 %i.jl, %i.jm                    ; 3 uses
  %i.jo = icmp eq i64 %i.jn, 9223372036854775800
  br i1 %i.jo, label %bb.bb, label %_ZNKSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_M_check_lenEmPKc.exit.i.i211

bb.bb:                                            ; preds = %bb.ba
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #25
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_M_check_lenEmPKc.exit.i.i211: ; preds = %bb.ba
  %i.jp = sdiv exact i64 %i.jn, 24                ; 3 uses
  %i.jq = icmp eq ptr %i.jh, %.val16.i.i210       ; 2 uses
  %.sroa.speculated.i.i.i212 = select i1 %i.jq, i64 1, i64 %i.jp
  %i.jr = add nsw i64 %.sroa.speculated.i.i.i212, %i.jp ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.jp
  %i.jt = call i64 @llvm.umin.i64(i64 %i.jr, i64 384307168202282325)
  %i.ju = select i1 %i.js, i64 384307168202282325, i64 %i.jt ; 3 uses
  %.not.i.i.i213 = icmp ne i64 %i.ju, 0
  call void @llvm.assume(i1 %.not.i.i.i213)
  %i.jv = mul nuw nsw i64 %i.ju, 24
  %i.jw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jv) #23 ; 5 uses
  %.sroa.0.sroa.5.0..sroa_idx246 = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jn ; 3 uses
  store i64 %.sroa.0231.sroa.0.0.insert.ext, ptr %.sroa.0.sroa.5.0..sroa_idx246, align 8
  %.sroa.5.0..sroa_idx225 = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.5.0..sroa_idx246, i64 8
  store i16 37, ptr %.sroa.5.0..sroa_idx225, align 8, !tbaa !326
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx228.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.5.0..sroa_idx246, i64 16
  store ptr %.sroa.17.1, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx228.sroa_idx, align 8, !tbaa !186
  br i1 %i.jq, label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i218, label %.lr.ph.i.i.i.i.i214

.lr.ph.i.i.i.i.i214:                              ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_M_check_lenEmPKc.exit.i.i211, %.lr.ph.i.i.i.i.i214
  %.03.i.i.i.i.i215 = phi ptr [ %i.jy, %.lr.ph.i.i.i.i.i214 ], [ %i.jw, %_ZNKSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_M_check_lenEmPKc.exit.i.i211 ] ; 2 uses
  %.092.i.i.i.i.i216 = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i214 ], [ %.val16.i.i210, %_ZNKSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_M_check_lenEmPKc.exit.i.i211 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i215, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i216, i64 24, i1 false), !tbaa.struct !442, !alias.scope !448
  %i.jx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i216, i64 24 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i215, i64 24 ; 2 uses
  %.not.i.i.i.i.i217 = icmp eq ptr %i.jx, %i.jh
  br i1 %.not.i.i.i.i.i217, label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i218, label %.lr.ph.i.i.i.i.i214, !llvm.loop !447

_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i218: ; preds = %.lr.ph.i.i.i.i.i214, %_ZNKSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_M_check_lenEmPKc.exit.i.i211
  %.0.lcssa.i.i.i.i.i219 = phi ptr [ %i.jw, %_ZNKSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_M_check_lenEmPKc.exit.i.i211 ], [ %i.jy, %.lr.ph.i.i.i.i.i214 ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i219, i64 24
  %.not.i27.i.i220 = icmp eq ptr %.val16.i.i210, null
  br i1 %.not.i27.i.i220, label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i221, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i218
  %i.ka = load ptr, ptr %i.ik, align 8, !tbaa !387
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = sub i64 %i.kb, %i.jm
  call void @_ZdlPvm(ptr noundef nonnull %.val16.i.i210, i64 noundef %i.kc) #26
  br label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i221

_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i221: ; preds = %bb.bc, %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i218
  store ptr %i.jw, ptr %i.ih, align 8, !tbaa !338
  store ptr %i.jz, ptr %i.ii, align 8, !tbaa !339
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.jw, i64 %i.ju
  store ptr %i.kd, ptr %i.ik, align 8, !tbaa !387
  br label %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE9push_backERKS1_.exit222

_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE9push_backERKS1_.exit222: ; preds = %bb.x, %bb.ax, %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE9push_backERKS1_.exit, %bb.ar, %bb.az, %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i221, %_ZN4llvmplERKNS_5TwineES2_.exit199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE9push_backERKS1_.exit222, %_ZN4llvmplERKNS_5TwineES2_.exit162, %_ZN4llvmplERKNS_5TwineES2_.exit125
  ret void
}

declare void @_ZN4llvm9MCContext11reportErrorENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208), ptr, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare ptr @_ZNK4llvm7MCFixup6getLocEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9MCSectionEPN12_GLOBAL__N_111COFFSectionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_EixERKS4_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.val.i = load ptr, ptr %1, align 8             ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !271, !noalias !452 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !277, !noalias !452 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !278, !noalias !452 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = ptrtoint ptr %.val.i to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !264
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i, !prof !265

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.05.i.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !279
  %i.y = icmp eq ptr %.val.i, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9MCSectionEPN12_GLOBAL__N_111COFFSectionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_.exit, label %bb.c, !prof !231

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.z = add nuw i32 %.05.i.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !264
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i, label %.loopexit.i, !prof !267, !llvm.loop !280

.loopexit.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa9.sink.i.ph.i = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa9.sink.i.ph.i, ptr %i.a, align 8, !tbaa !281
  %i.aj = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %.val6.i.i = load i32, ptr %i.aj, align 8, !tbaa !282
  %i.ak = shl i32 %.val6.i.i, 2
  %i.al = add i32 %i.ak, 4
  %i.am = mul i32 %i.f, 3
  %.not.i.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9MCSectionEPN12_GLOBAL__N_111COFFSectionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i, label %bb.d, !prof !231

bb.d:                                             ; preds = %.loopexit.i
  %i.an = shl i32 %i.f, 1
  tail call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9MCSectionEPN12_GLOBAL__N_111COFFSectionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.an)
  %.val5.i.i = load ptr, ptr %1, align 8
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9MCSectionEPN12_GLOBAL__N_111COFFSectionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.val5.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !281
  %.val4.i.pre.i = load ptr, ptr %i.c, align 8, !tbaa !277
  %.val7.i.pre.i = load ptr, ptr %0, align 8, !tbaa !271
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !279
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9MCSectionEPN12_GLOBAL__N_111COFFSectionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9MCSectionEPN12_GLOBAL__N_111COFFSectionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i: ; preds = %bb.d, %.loopexit.i
  %i.ao = phi ptr [ %.pre.i, %bb.d ], [ %.val.i, %.loopexit.i ]
  %.val7.i.i = phi ptr [ %.val7.i.pre.i, %bb.d ], [ %i.b, %.loopexit.i ]
  %.val4.i.i = phi ptr [ %.val4.i.pre.i, %bb.d ], [ %i.d, %.loopexit.i ]
  %i.ap = phi ptr [ %.pre.i.i, %bb.d ], [ %.lcssa9.sink.i.ph.i, %.loopexit.i ] ; 4 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.val7.i.i to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 4                 ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = lshr i64 %i.at, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !264
  %i.ba = or i32 %i.aw, %i.az
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !264
  %.val.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !282
  %i.bb = add i32 %.val.i.i.i, 1
  store i32 %i.bb, ptr %i.aj, align 8, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !279
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !139
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9MCSectionEPN12_GLOBAL__N_111COFFSectionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9MCSectionEPN12_GLOBAL__N_111COFFSectionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9MCSectionEPN12_GLOBAL__N_111COFFSectionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i
  %.sroa.0.0.i = phi ptr [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9MCSectionEPN12_GLOBAL__N_111COFFSectionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit.i ], [ %i.w, %.lr.ph.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  ret ptr %i.bd
}

declare noundef i64 @_ZNK4llvm11MCAssembler15getSymbolOffsetERKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(400), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvm13WinCOFFWriter23getOrCreateSecRelSymbolERKNS_8MCSymbolEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(276) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.295", align 8    ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = load ptr, ptr %1, align 8, !tbaa !283    ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %_ZNK4llvm8MCSymbol10getSectionEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = tail call noundef ptr @_ZNK4llvm6MCExpr22findAssociatedFragmentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #24 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !283
  br label %_ZNK4llvm8MCSymbol10getSectionEv.exit

_ZNK4llvm8MCSymbol10getSectionEv.exit:            ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !285  ; 4 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !279
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.i, ptr %3, align 8, !tbaa !457
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.k, align 8, !tbaa !459
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !393, !noalias !460 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !392, !noalias !460 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.p = load i32, ptr %i.o, align 4, !tbaa !391, !noalias !460 ; 4 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm8MCSymbol10getSectionEv.exit
  %i.r = add i32 %i.p, -1                         ; 2 uses
  %i.s = ptrtoint ptr %i.i to i64
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %2, -4658895280553007687         ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = shl i64 %i.v, 32
  %i.aa = and i64 %i.y, 4294967295
  %i.ab = or disjoint i64 %i.z, %i.aa
  %i.ac = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
end_hunk_0
